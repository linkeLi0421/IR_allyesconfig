; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.komeda_component = type { %struct.drm_private_obj, ptr, [32 x i8], ptr, i32, i32, i8, i8, i32, i32, ptr }
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
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.komeda_data_flow_cfg = type { %struct.komeda_component_output, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i8, i8, i8 }
%struct.komeda_component_output = type { ptr, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.komeda_scaler = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range, i32, i32, i8, i8 }
%struct.malidp_range = type { i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.komeda_layer_state = type { %struct.komeda_component_state, i16, i16, i32, i16, i16, i16, i16, [3 x i32] }
%struct.komeda_component_state = type { %struct.drm_private_state, ptr, %union.anon.86, i16, i16, i16, [5 x %struct.komeda_component_output] }
%struct.drm_private_state = type { ptr }
%union.anon.86 = type { ptr }
%struct.komeda_fb = type { %struct.drm_framebuffer, ptr, i8, i32, i32, i32, i32 }
%struct.komeda_pipeline_state = type { %struct.drm_private_state, ptr, ptr, i32 }
%struct.komeda_scaler_state = type { %struct.komeda_component_state, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.komeda_compiz_state = type { %struct.komeda_component_state, i16, i16, [5 x %struct.komeda_compiz_input_cfg] }
%struct.komeda_compiz_input_cfg = type { i16, i16, i16, i16, i8, i8 }
%struct.komeda_layer = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range, i32, i32, i32, i32, ptr }
%struct.komeda_merger = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range }
%struct.komeda_merger_state = type { %struct.komeda_component_state, i16, i16 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.komeda_splitter = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range }
%struct.komeda_splitter_state = type { %struct.komeda_component_state, i16, i16, i16 }
%struct.komeda_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.komeda_crtc_state = type { %struct.drm_crtc_state, i32, i32, i64, i32 }
%struct.komeda_improc_state = type { %struct.komeda_component_state, i8, i8, i16, i16, [65 x i32], [9 x i32] }
%struct.komeda_improc = type { %struct.komeda_component, i32, i32, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.komeda_component_funcs = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s handling [PLANE:%d:%s]: src[x/y:%d/%d, w/h:%d/%d] disp[x/y:%d/%d, w/h:%d/%d]\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Assign %s + %s to [PLANE:%d:%s]: src[x/y:%d/%d, w/h:%d/%d] disp[x/y:%d/%d, w/h:%d/%d]\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PIPE%d: active_comps: 0x%x, disabling_comps: 0x%lx.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PIPE%d: active_comps: 0x%x, changed: 0x%lx.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalidate src_w %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalidate src_h %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Required line_sz: %d exceeds the max size %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"required %s is busy.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s validate private failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No scaler available\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid horizontal sizes\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid vertical sizes\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid horizontal scaling ratio\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid vertical scaling ratio\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"aclk can't satisfy the clock requirement of the downscaling\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid disp rect [x=%d, y=%d, w=%d, h=%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s required an invalid %s-input[%d].\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s required %s-input[%d] has been occupied already.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No merger is available\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"merged_w: %d is out of the accepted range.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"merged_h: %d is out of the accepted range.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Current HW doesn't support splitter.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"split in_w:%d is out of the acceptable range.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"split in_h: %d exceeds the acceptable range.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"No available color depths, conn depths: 0x%x & display: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"No available color_formats, conn formats 0x%x & display: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CRTC%d required pipeline%d is busy.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Disabling a busy pipeline:%d.\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 891, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1098, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1266, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1301, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1342, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 309, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 314, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 329, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 171, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 248, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 520, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 457, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 463, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 477, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 483, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 495, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 683, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 214, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 220, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 623, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 628, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 634, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 573, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 578, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 584, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 786, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 795, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 73, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [62 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 80, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_pipeline_get_old_state(ptr noundef %pipe, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_atomic_get_old_private_obj_state(ptr noundef %state, ptr noundef %pipe) #7
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_old_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pipeline_composition_size(ptr nocapture noundef readonly %kcrtc_st, ptr noundef writeonly %hsize, ptr noundef writeonly %vsize) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hsize, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  %2 = ptrtoint ptr %hsize to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %hsize, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %vsize, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 6
  %3 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vdisplay, align 2
  %5 = ptrtoint ptr %vsize to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %vsize, align 2
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @komeda_complete_data_flow_cfg(ptr nocapture noundef readonly %layer, ptr nocapture noundef %dflow, ptr nocapture noundef readonly %fb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %layer, i32 0, i32 1
  %0 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipeline, align 4
  %scalers = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %scalers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scalers, align 4
  %in_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %4 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in_w, align 4
  %conv = zext i16 %5 to i32
  %in_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %6 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %in_h, align 2
  %conv1 = zext i16 %7 to i32
  %total_in_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 10
  %8 = ptrtoint ptr %total_in_w to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %5, ptr %total_in_w, align 2
  %total_in_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 9
  %9 = ptrtoint ptr %total_in_h to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %7, ptr %total_in_h, align 4
  %out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %10 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_w, align 4
  %conv4 = trunc i32 %11 to i16
  %total_out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 11
  %12 = ptrtoint ptr %total_out_w to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv4, ptr %total_out_w, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %format, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_alpha, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pixel_blend_mode = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 17
  %17 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %pixel_blend_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rot = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 15
  %18 = ptrtoint ptr %rot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rot, align 4
  %and.i = and i32 %19, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i32 %conv, i32 %conv1
  %spec.select88 = select i1 %tobool.i.not, i32 %conv1, i32 %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %11)
  %cmp.not = icmp eq i32 %spec.select, %11
  br i1 %cmp.not, label %lor.rhs, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %out_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %20 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select88, i32 %21)
  %cmp9.not = icmp eq i32 %spec.select88, %21
  %phi.sel = select i1 %cmp9.not, i8 0, i8 -128
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %22 = phi i8 [ -128, %if.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %en_scaling = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 19
  %23 = ptrtoint ptr %en_scaling to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %en_scaling, align 2
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %22
  store i8 %bf.set, ptr %en_scaling, align 2
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %format, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_yuv, align 1, !range !67
  %bf.shl18 = shl nuw nsw i8 %27, 4
  %bf.clear19 = and i8 %bf.set, -17
  %bf.set20 = or i8 %bf.shl18, %bf.clear19
  %mul = shl nuw nsw i32 %spec.select, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul)
  %cmp22.not = icmp ult i32 %11, %mul
  br i1 %cmp22.not, label %lor.rhs24, label %lor.end.lor.end29_crit_edge

lor.end.lor.end29_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end29

lor.rhs24:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %out_h25 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %28 = ptrtoint ptr %out_h25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out_h25, align 4
  %mul26 = shl nuw nsw i32 %spec.select88, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %mul26)
  %cmp27.not = icmp ult i32 %29, %mul26
  %phi.sel86 = select i1 %cmp27.not, i8 0, i8 64
  br label %lor.end29

lor.end29:                                        ; preds = %lor.rhs24, %lor.end.lor.end29_crit_edge
  %30 = phi i8 [ 64, %lor.end.lor.end29_crit_edge ], [ %phi.sel86, %lor.rhs24 ]
  %bf.clear35 = and i8 %bf.set20, -65
  %bf.set36 = or i8 %30, %bf.clear35
  %31 = ptrtoint ptr %en_scaling to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.set36, ptr %en_scaling, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set20)
  %tobool40.not = icmp sgt i8 %bf.set20, -1
  %tobool41.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool40.not, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %lor.end29.if.end58_crit_edge, label %if.then42

lor.end29.if.end58_crit_edge:                     ; preds = %lor.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then42:                                        ; preds = %lor.end29
  %hsize = getelementptr inbounds %struct.komeda_scaler, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %hsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv)
  %cmp.not.i = icmp ugt i32 %33, %conv
  br i1 %cmp.not.i, label %if.then42.lor.end50_crit_edge, label %in_range.exit

if.then42.lor.end50_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end50

in_range.exit:                                    ; preds = %if.then42
  %end.i = getelementptr inbounds %struct.komeda_scaler, ptr %3, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv)
  %cmp1.i = icmp ult i32 %35, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %11)
  %cmp.not.i89 = icmp ugt i32 %33, %11
  %or.cond94 = select i1 %cmp1.i, i1 true, i1 %cmp.not.i89
  br i1 %or.cond94, label %in_range.exit.lor.end50_crit_edge, label %in_range.exit93

in_range.exit.lor.end50_crit_edge:                ; preds = %in_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end50

in_range.exit93:                                  ; preds = %in_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %11)
  %cmp1.i91.not = icmp ult i32 %37, %11
  %spec.select95 = select i1 %cmp1.i91.not, i8 32, i8 0
  br label %lor.end50

lor.end50:                                        ; preds = %in_range.exit93, %in_range.exit.lor.end50_crit_edge, %if.then42.lor.end50_crit_edge
  %38 = phi i8 [ 32, %in_range.exit.lor.end50_crit_edge ], [ 32, %if.then42.lor.end50_crit_edge ], [ %spec.select95, %in_range.exit93 ]
  %bf.clear56 = and i8 %bf.set36, -33
  %bf.set57 = or i8 %38, %bf.clear56
  %39 = ptrtoint ptr %en_scaling to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %bf.set57, ptr %en_scaling, align 2
  br label %if.end58

if.end58:                                         ; preds = %lor.end50, %lor.end29.if.end58_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_build_layer_data_flow(ptr noundef %layer, ptr nocapture noundef readonly %kplane_st, ptr noundef %kcrtc_st, ptr noundef %dflow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kplane_st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kplane_st, align 4
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %layer, i32 0, i32 1
  %2 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipeline, align 4
  %name = getelementptr inbounds %struct.komeda_component, ptr %layer, i32 0, i32 2
  %base4 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base4, align 4
  %name5 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name5, align 4
  %in_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 1
  %8 = ptrtoint ptr %in_x to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %in_x, align 4
  %conv = zext i16 %9 to i32
  %in_y = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 2
  %10 = ptrtoint ptr %in_y to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %in_y, align 2
  %conv6 = zext i16 %11 to i32
  %in_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %12 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %in_w, align 4
  %conv7 = zext i16 %13 to i32
  %in_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %14 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %in_h, align 2
  %conv8 = zext i16 %15 to i32
  %out_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 5
  %16 = ptrtoint ptr %out_x to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out_x, align 4
  %out_y = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 6
  %18 = ptrtoint ptr %out_y to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_y, align 4
  %out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %20 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_w, align 4
  %out_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %22 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_h, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %5, ptr noundef %7, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #7
  %fb1.i = getelementptr inbounds %struct.drm_plane_state, ptr %kplane_st, i32 0, i32 2
  %24 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fb1.i, align 4
  %call.i = tail call fastcc i32 @komeda_layer_check_cfg(ptr noundef %layer, ptr noundef %25, ptr noundef %dflow) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.drm_plane_state, ptr %kplane_st, i32 0, i32 25
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state.i, align 4
  %28 = ptrtoint ptr %kplane_st to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kplane_st, align 4
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %kplane_st, i32 0, i32 1
  %30 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crtc.i, align 4
  %call3.i = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef %layer, ptr noundef %27, ptr noundef %29, ptr noundef %31) #7
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %komeda_layer_validate.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %rot.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 15
  %32 = ptrtoint ptr %rot.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rot.i, align 4
  %rot11.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 3
  %34 = ptrtoint ptr %rot11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rot11.i, align 4
  %modifier.i = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 8
  %35 = ptrtoint ptr %modifier.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %modifier.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool12.not.i = icmp eq i64 %36, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %aligned_w.i = getelementptr inbounds %struct.komeda_fb, ptr %25, i32 0, i32 3
  %37 = ptrtoint ptr %aligned_w.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aligned_w.i, align 8
  %conv.i = trunc i32 %38 to i16
  %hsize.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 1
  %39 = ptrtoint ptr %hsize.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %hsize.i, align 4
  %aligned_h.i = getelementptr inbounds %struct.komeda_fb, ptr %25, i32 0, i32 4
  %40 = ptrtoint ptr %aligned_h.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aligned_h.i, align 4
  %conv14.i = trunc i32 %41 to i16
  %vsize.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 2
  %42 = ptrtoint ptr %vsize.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv14.i, ptr %vsize.i, align 2
  %43 = ptrtoint ptr %in_x to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %in_x, align 4
  %afbc_crop_l.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 4
  %45 = ptrtoint ptr %afbc_crop_l.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %afbc_crop_l.i, align 4
  %46 = load i32, ptr %aligned_w.i, align 8
  %47 = load i16, ptr %in_x, align 4
  %conv17.i = zext i16 %47 to i32
  %48 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %in_w, align 4
  %conv18.i = zext i16 %49 to i32
  %50 = add nuw nsw i32 %conv17.i, %conv18.i
  %sub19.i = sub i32 %46, %50
  %conv20.i = trunc i32 %sub19.i to i16
  %afbc_crop_r.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 5
  %51 = ptrtoint ptr %afbc_crop_r.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv20.i, ptr %afbc_crop_r.i, align 2
  %52 = ptrtoint ptr %in_y to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %in_y, align 2
  %afbc_crop_t.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 6
  %54 = ptrtoint ptr %afbc_crop_t.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %afbc_crop_t.i, align 4
  %55 = load i32, ptr %aligned_h.i, align 4
  %56 = load i16, ptr %in_y, align 2
  %conv23.i = zext i16 %56 to i32
  %57 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %in_h, align 2
  %conv25.i = zext i16 %58 to i32
  %59 = add nuw nsw i32 %conv23.i, %conv25.i
  %sub26.i = sub i32 %55, %59
  %conv27.i = trunc i32 %sub26.i to i16
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %in_w, align 4
  %hsize29.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 1
  %62 = ptrtoint ptr %hsize29.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %hsize29.i, align 4
  %63 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %in_h, align 2
  %vsize31.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 2
  %65 = ptrtoint ptr %vsize31.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %vsize31.i, align 2
  %afbc_crop_l32.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 4
  %66 = ptrtoint ptr %afbc_crop_l32.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %afbc_crop_l32.i, align 4
  %afbc_crop_r33.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 5
  %67 = ptrtoint ptr %afbc_crop_r33.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %afbc_crop_r33.i, align 2
  %afbc_crop_t34.i = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 6
  %68 = ptrtoint ptr %afbc_crop_t34.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %afbc_crop_t34.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.then13.i
  %conv27.sink.i = phi i16 [ 0, %if.else.i ], [ %conv27.i, %if.then13.i ]
  %69 = getelementptr inbounds %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 7
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv27.sink.i, ptr %69, align 2
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 4
  %71 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %format.i, align 8
  %num_planes110.i = getelementptr inbounds %struct.drm_format_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %num_planes110.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_planes110.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp112.not.i = icmp eq i8 %74, 0
  br i1 %cmp112.not.i, label %if.end36.i.for.end.i_crit_edge, label %if.end36.i.for.body.i_crit_edge

if.end36.i.for.body.i_crit_edge:                  ; preds = %if.end36.i
  br label %for.body.i

if.end36.i.for.end.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end36.i.for.body.i_crit_edge
  %i.0113.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end36.i.for.body.i_crit_edge ]
  %75 = ptrtoint ptr %in_x to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %in_x, align 4
  %conv40.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %in_y to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %in_y, align 2
  %conv42.i = zext i16 %78 to i32
  %call43.i = tail call i32 @komeda_fb_get_pixel_addr(ptr noundef %25, i32 noundef %conv40.i, i32 noundef %conv42.i, i32 noundef %i.0113.i) #7
  %arrayidx.i = getelementptr %struct.komeda_layer_state, ptr %call3.i, i32 0, i32 8, i32 %i.0113.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call43.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0113.i, 1
  %80 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %format.i, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_planes.i, align 1
  %conv37.i = zext i8 %83 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv37.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end36.i.for.end.i_crit_edge
  %funcs.i.i = getelementptr inbounds %struct.komeda_component, ptr %layer, i32 0, i32 10
  %84 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %funcs.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %tobool.not.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i, label %for.end.i.if.end48.i_crit_edge, label %if.end.i.i

for.end.i.if.end48.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.end.i.i:                                       ; preds = %for.end.i
  %call.i.i = tail call i32 %87(ptr noundef %layer, ptr noundef %call3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end48.i_crit_edge, label %komeda_component_validate_private.exit.i

if.end.i.i.if.end48.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

komeda_component_validate_private.exit.i:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.9, ptr noundef %name) #7
  br label %cleanup

if.end48.i:                                       ; preds = %if.end.i.i.if.end48.i_crit_edge, %for.end.i.if.end48.i_crit_edge
  %88 = ptrtoint ptr %dflow to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %layer, ptr %dflow, align 4
  %output_port1.i.i = getelementptr inbounds %struct.komeda_component_output, ptr %dflow, i32 0, i32 1
  %89 = ptrtoint ptr %output_port1.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %output_port1.i.i, align 4
  %90 = ptrtoint ptr %rot11.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rot11.i, align 4
  %and.i.i.i = and i32 %91, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end48.i.if.end_crit_edge, label %do.body.i.i

if.end48.i.if.end_crit_edge:                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %in_h, align 2
  %94 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %in_w, align 4
  store i16 %95, ptr %in_h, align 2
  store i16 %93, ptr %in_w, align 4
  %total_in_h.i.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 9
  %96 = ptrtoint ptr %total_in_h.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %total_in_h.i.i, align 4
  %total_in_w.i.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 10
  %98 = ptrtoint ptr %total_in_w.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %total_in_w.i.i, align 2
  store i16 %99, ptr %total_in_h.i.i, align 4
  store i16 %97, ptr %total_in_w.i.i, align 2
  br label %if.end

komeda_layer_validate.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %call3.i to i32
  br label %cleanup

if.end:                                           ; preds = %do.body.i.i, %if.end48.i.if.end_crit_edge
  %call9 = tail call fastcc i32 @komeda_scaler_validate(ptr noundef %1, ptr noundef %kcrtc_st, ptr noundef %dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %en_split = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 19
  %101 = ptrtoint ptr %en_split to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load = load i8, ptr %en_split, align 2
  %102 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool14.not = icmp eq i8 %102, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %land.lhs.true

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end12
  %merger.i = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 12
  %103 = ptrtoint ptr %merger.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %merger.i, align 4
  %tobool.not.i45 = icmp eq ptr %104, null
  br i1 %tobool.not.i45, label %land.lhs.true.merger_is_available.exit_crit_edge, label %cond.true.i

land.lhs.true.merger_is_available.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %merger_is_available.exit

cond.true.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %supported_inputs.i = getelementptr inbounds %struct.komeda_component, ptr %104, i32 0, i32 8
  %105 = ptrtoint ptr %supported_inputs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %supported_inputs.i, align 4
  br label %merger_is_available.exit

merger_is_available.exit:                         ; preds = %cond.true.i, %land.lhs.true.merger_is_available.exit_crit_edge
  %cond.i = phi i32 [ %106, %cond.true.i ], [ 0, %land.lhs.true.merger_is_available.exit_crit_edge ]
  %107 = ptrtoint ptr %dflow to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dflow, align 4
  %id.i = getelementptr inbounds %struct.komeda_component, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %110
  %and.i = and i32 %shl.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.i.not, label %merger_is_available.exit.if.end18_crit_edge, label %merger_is_available.exit.cleanup_crit_edge

merger_is_available.exit.cleanup_crit_edge:       ; preds = %merger_is_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

merger_is_available.exit.if.end18_crit_edge:      ; preds = %merger_is_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %merger_is_available.exit.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  %compiz = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 10
  %111 = ptrtoint ptr %compiz to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %compiz, align 4
  %call19 = tail call fastcc i32 @komeda_compiz_set_input(ptr noundef %112, ptr noundef %kcrtc_st, ptr noundef %dflow)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %merger_is_available.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %komeda_layer_validate.exit, %komeda_component_validate_private.exit.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ %100, %komeda_layer_validate.exit ], [ %call9, %if.end.cleanup_crit_edge ], [ 0, %merger_is_available.exit.cleanup_crit_edge ], [ %call.i.i, %komeda_component_validate_private.exit.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @komeda_scaler_validate(ptr noundef %user, ptr noundef %kcrtc_st, ptr noundef %dflow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %en_scaling = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 19
  %2 = ptrtoint ptr %en_scaling to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %en_scaling, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %3 = icmp ult i8 %bf.load, 64
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dflow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dflow, align 4
  %pipeline.i = getelementptr inbounds %struct.komeda_component, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipeline.i, align 4
  %call.i.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef %7) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %komeda_component_get_avail_scaler.exit

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

komeda_component_get_avail_scaler.exit:           ; preds = %if.end
  %active_comps.i = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %active_comps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_comps.i, align 4
  %and.i = and i32 %9, 768
  %xor.i = xor i32 %and.i, 768
  %supported_outputs.i.i = getelementptr inbounds %struct.komeda_component, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %supported_outputs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %supported_outputs.i.i, align 4
  %and.i.i = and i32 %xor.i, %11
  %12 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipeline.i, align 4
  %call.i6.i = tail call ptr @komeda_pipeline_get_first_component(ptr noundef %13, i32 noundef %and.i.i) #7
  %tobool5.not = icmp eq ptr %call.i6.i, null
  br i1 %tobool5.not, label %komeda_component_get_avail_scaler.exit.if.then6_crit_edge, label %if.end7

komeda_component_get_avail_scaler.exit.if.then6_crit_edge: ; preds = %komeda_component_get_avail_scaler.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %komeda_component_get_avail_scaler.exit.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end7:                                          ; preds = %komeda_component_get_avail_scaler.exit
  %in_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %14 = ptrtoint ptr %in_w.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %in_w.i, align 4
  %conv.i = zext i16 %15 to i32
  %in_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %16 = ptrtoint ptr %in_h.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %in_h.i, align 2
  %conv1.i = zext i16 %17 to i32
  %out_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %18 = ptrtoint ptr %out_w.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_w.i, align 4
  %out_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %20 = ptrtoint ptr %out_h.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_h.i, align 4
  %hsize.i = getelementptr inbounds %struct.komeda_scaler, ptr %call.i6.i, i32 0, i32 1
  %22 = ptrtoint ptr %hsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv.i)
  %cmp.not.i.i = icmp ugt i32 %23, %conv.i
  br i1 %cmp.not.i.i, label %if.end7.komeda_scaler_check_cfg.exit_crit_edge, label %in_range.exit.i

if.end7.komeda_scaler_check_cfg.exit_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_scaler_check_cfg.exit

in_range.exit.i:                                  ; preds = %if.end7
  %end.i.i = getelementptr inbounds %struct.komeda_scaler, ptr %call.i6.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv.i)
  %cmp1.i.i = icmp ult i32 %25, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp.not.i62.i = icmp ugt i32 %23, %19
  %or.cond82.i = select i1 %cmp1.i.i, i1 true, i1 %cmp.not.i62.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp1.i64.not.i = icmp ult i32 %25, %19
  %or.cond129 = select i1 %or.cond82.i, i1 true, i1 %cmp1.i64.not.i
  br i1 %or.cond129, label %in_range.exit.i.komeda_scaler_check_cfg.exit_crit_edge, label %if.end.i116

in_range.exit.i.komeda_scaler_check_cfg.exit_crit_edge: ; preds = %in_range.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_scaler_check_cfg.exit

if.end.i116:                                      ; preds = %in_range.exit.i
  %vsize.i = getelementptr inbounds %struct.komeda_scaler, ptr %call.i6.i, i32 0, i32 2
  %26 = ptrtoint ptr %vsize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv1.i)
  %cmp.not.i67.i = icmp ugt i32 %27, %conv1.i
  br i1 %cmp.not.i67.i, label %if.end.i116.komeda_scaler_check_cfg.exit_crit_edge, label %in_range.exit71.i

if.end.i116.komeda_scaler_check_cfg.exit_crit_edge: ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_scaler_check_cfg.exit

in_range.exit71.i:                                ; preds = %if.end.i116
  %end.i68.i = getelementptr inbounds %struct.komeda_scaler, ptr %call.i6.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %end.i68.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i68.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv1.i)
  %cmp1.i69.i = icmp ult i32 %29, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp.not.i72.i = icmp ugt i32 %27, %21
  %or.cond83.i = select i1 %cmp1.i69.i, i1 true, i1 %cmp.not.i72.i
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %21)
  %cmp1.i74.not.i = icmp ult i32 %29, %21
  %or.cond130 = select i1 %or.cond83.i, i1 true, i1 %cmp1.i74.not.i
  br i1 %or.cond130, label %in_range.exit71.i.komeda_scaler_check_cfg.exit_crit_edge, label %if.end9.i

in_range.exit71.i.komeda_scaler_check_cfg.exit_crit_edge: ; preds = %in_range.exit71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_scaler_check_cfg.exit

if.end9.i:                                        ; preds = %in_range.exit71.i
  %30 = ptrtoint ptr %dflow to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dflow, align 4
  %id.i = getelementptr inbounds %struct.komeda_component, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %33
  %and.i117 = and i32 %shl.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool.not.i118 = icmp eq i32 %and.i117, 0
  br i1 %tobool.not.i118, label %if.else.i, label %if.end9.i.if.end12.i_crit_edge

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_upscaling11.i = getelementptr inbounds %struct.komeda_scaler, ptr %call.i6.i, i32 0, i32 3
  %34 = ptrtoint ptr %max_upscaling11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_upscaling11.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.end9.i.if.end12.i_crit_edge
  %max_upscaling.0.i = phi i32 [ %35, %if.else.i ], [ 1, %if.end9.i.if.end12.i_crit_edge ]
  %max_downscaling.i = getelementptr inbounds %struct.komeda_scaler, ptr %call.i6.i, i32 0, i32 4
  %36 = ptrtoint ptr %max_downscaling.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_downscaling.i, align 4
  %mul.i.i = mul i32 %max_upscaling.0.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %19)
  %cmp.i.i = icmp uge i32 %mul.i.i, %19
  %mul1.i.i = mul i32 %37, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i.i, i32 %conv.i)
  %cmp2.i.i = icmp uge i32 %mul1.i.i, %conv.i
  %retval.0.i.i = and i1 %cmp.i.i, %cmp2.i.i
  br i1 %retval.0.i.i, label %if.end15.i, label %if.end12.i.komeda_scaler_check_cfg.exit_crit_edge

if.end12.i.komeda_scaler_check_cfg.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_scaler_check_cfg.exit

if.end15.i:                                       ; preds = %if.end12.i
  %mul.i77.i = mul i32 %max_upscaling.0.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i77.i, i32 %21)
  %cmp.i78.i = icmp uge i32 %mul.i77.i, %21
  %mul1.i79.i = mul i32 %37, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i79.i, i32 %conv1.i)
  %cmp2.i80.i = icmp uge i32 %mul1.i79.i, %conv1.i
  %retval.0.i81.i = and i1 %cmp.i78.i, %cmp2.i80.i
  br i1 %retval.0.i81.i, label %if.end19.i, label %if.end15.i.komeda_scaler_check_cfg.exit_crit_edge

if.end15.i.komeda_scaler_check_cfg.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_scaler_check_cfg.exit

if.end19.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i)
  %cmp.i = icmp ult i32 %19, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv1.i)
  %cmp22.i = icmp ult i32 %21, %conv1.i
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp22.i
  br i1 %or.cond.i, label %if.then24.i, label %if.end19.i.if.end11_crit_edge

if.end19.i.if.end11_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then24.i:                                      ; preds = %if.end19.i
  %pipeline.i119 = getelementptr inbounds %struct.komeda_component, ptr %call.i6.i, i32 0, i32 1
  %38 = ptrtoint ptr %pipeline.i119 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pipeline.i119, align 4
  %funcs.i = getelementptr inbounds %struct.komeda_pipeline, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7
  %call26.i = tail call i32 @komeda_crtc_get_aclk(ptr noundef %kcrtc_st) #7
  %call27.i = tail call i32 %43(ptr noundef %39, ptr noundef %adjusted_mode.i, i32 noundef %call26.i, ptr noundef %dflow) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then24.i.if.end11_crit_edge, label %if.then24.i.komeda_scaler_check_cfg.exit_crit_edge

if.then24.i.komeda_scaler_check_cfg.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_scaler_check_cfg.exit

if.then24.i.if.end11_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

komeda_scaler_check_cfg.exit:                     ; preds = %if.then24.i.komeda_scaler_check_cfg.exit_crit_edge, %if.end15.i.komeda_scaler_check_cfg.exit_crit_edge, %if.end12.i.komeda_scaler_check_cfg.exit_crit_edge, %in_range.exit71.i.komeda_scaler_check_cfg.exit_crit_edge, %if.end.i116.komeda_scaler_check_cfg.exit_crit_edge, %in_range.exit.i.komeda_scaler_check_cfg.exit_crit_edge, %if.end7.komeda_scaler_check_cfg.exit_crit_edge
  %.str.15.sink.i = phi ptr [ @.str.11, %if.end7.komeda_scaler_check_cfg.exit_crit_edge ], [ @.str.11, %in_range.exit.i.komeda_scaler_check_cfg.exit_crit_edge ], [ @.str.12, %if.end.i116.komeda_scaler_check_cfg.exit_crit_edge ], [ @.str.12, %in_range.exit71.i.komeda_scaler_check_cfg.exit_crit_edge ], [ @.str.13, %if.end12.i.komeda_scaler_check_cfg.exit_crit_edge ], [ @.str.14, %if.end15.i.komeda_scaler_check_cfg.exit_crit_edge ], [ @.str.15, %if.then24.i.komeda_scaler_check_cfg.exit_crit_edge ]
  %retval.1.ph.i = phi i32 [ -22, %if.end7.komeda_scaler_check_cfg.exit_crit_edge ], [ -22, %in_range.exit.i.komeda_scaler_check_cfg.exit_crit_edge ], [ -22, %if.end.i116.komeda_scaler_check_cfg.exit_crit_edge ], [ -22, %in_range.exit71.i.komeda_scaler_check_cfg.exit_crit_edge ], [ -22, %if.end12.i.komeda_scaler_check_cfg.exit_crit_edge ], [ -22, %if.end15.i.komeda_scaler_check_cfg.exit_crit_edge ], [ %call27.i, %if.then24.i.komeda_scaler_check_cfg.exit_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull %.str.15.sink.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then24.i.if.end11_crit_edge, %if.end19.i.if.end11_crit_edge
  %44 = ptrtoint ptr %kcrtc_st to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %kcrtc_st, align 8
  %call14 = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef nonnull %call.i6.i, ptr noundef %1, ptr noundef %user, ptr noundef %45)
  %cmp.i120 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %47 = ptrtoint ptr %in_w.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %in_w.i, align 4
  %hsize_in = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 1
  %49 = ptrtoint ptr %hsize_in to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %hsize_in, align 4
  %50 = ptrtoint ptr %in_h.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %in_h.i, align 2
  %vsize_in = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 2
  %52 = ptrtoint ptr %vsize_in to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %vsize_in, align 2
  %53 = ptrtoint ptr %out_w.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %out_w.i, align 4
  %conv19 = trunc i32 %54 to i16
  %hsize_out = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 3
  %55 = ptrtoint ptr %hsize_out to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv19, ptr %hsize_out, align 4
  %56 = ptrtoint ptr %out_h.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %out_h.i, align 4
  %conv20 = trunc i32 %57 to i16
  %vsize_out = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 4
  %58 = ptrtoint ptr %vsize_out to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv20, ptr %vsize_out, align 2
  %right_crop = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 13
  %59 = ptrtoint ptr %right_crop to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %right_crop, align 4
  %right_crop21 = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 9
  %61 = ptrtoint ptr %right_crop21 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %right_crop21, align 4
  %left_crop = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 12
  %62 = ptrtoint ptr %left_crop to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %left_crop, align 2
  %left_crop22 = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 8
  %64 = ptrtoint ptr %left_crop22 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %left_crop22, align 2
  %total_in_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 9
  %65 = ptrtoint ptr %total_in_h to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %total_in_h, align 4
  %total_vsize_in = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 6
  %67 = ptrtoint ptr %total_vsize_in to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %total_vsize_in, align 2
  %total_in_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 10
  %68 = ptrtoint ptr %total_in_w to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %total_in_w, align 2
  %total_hsize_in = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 5
  %70 = ptrtoint ptr %total_hsize_in to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %total_hsize_in, align 4
  %total_out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 11
  %71 = ptrtoint ptr %total_out_w to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %total_out_w, align 4
  %total_hsize_out = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 7
  %73 = ptrtoint ptr %total_hsize_out to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %total_hsize_out, align 4
  %pixel_blend_mode = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 17
  %74 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %pixel_blend_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp.not = icmp eq i8 %75, 2
  %en_alpha = getelementptr inbounds %struct.komeda_scaler_state, ptr %call14, i32 0, i32 10
  %76 = ptrtoint ptr %en_alpha to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load26 = load i8, ptr %en_alpha, align 2
  %bf.shl = select i1 %cmp.not, i8 0, i8 64
  %bf.clear27 = and i8 %bf.load26, -65
  %bf.set = or i8 %bf.clear27, %bf.shl
  store i8 %bf.set, ptr %en_alpha, align 2
  %77 = ptrtoint ptr %en_scaling to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load29 = load i8, ptr %en_scaling, align 2
  %bf.lshr30 = and i8 %bf.load29, -128
  %bf.clear35 = and i8 %bf.set, 127
  %bf.set36 = or i8 %bf.clear35, %bf.lshr30
  store i8 %bf.set36, ptr %en_alpha, align 2
  %bf.load38 = load i8, ptr %en_scaling, align 2
  %78 = lshr i8 %bf.load38, 1
  %bf.shl44 = and i8 %78, 32
  %bf.clear45 = and i8 %bf.set36, -33
  %bf.set46 = or i8 %bf.shl44, %bf.clear45
  store i8 %bf.set46, ptr %en_alpha, align 2
  %bf.load47 = load i8, ptr %en_scaling, align 2
  %79 = lshr i8 %bf.load47, 1
  %bf.shl53 = and i8 %79, 16
  %bf.clear54 = and i8 %bf.set46, -17
  %bf.set55 = or i8 %bf.clear54, %bf.shl53
  store i8 %bf.set55, ptr %en_alpha, align 2
  %bf.load56 = load i8, ptr %en_scaling, align 2
  %bf.clear58 = and i8 %bf.load56, 8
  %bf.clear63 = and i8 %bf.set55, -9
  %bf.set64 = or i8 %bf.clear63, %bf.clear58
  store i8 %bf.set64, ptr %en_alpha, align 2
  %component.i = getelementptr inbounds %struct.komeda_component_state, ptr %call14, i32 0, i32 1
  %80 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %component.i, align 4
  %max_active_inputs.i = getelementptr inbounds %struct.komeda_component, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %max_active_inputs.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %max_active_inputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp1.not.i.not = icmp eq i8 %83, 0
  br i1 %cmp1.not.i.not, label %do.end.i, label %if.end18.if.end.i123_crit_edge, !prof !68

if.end18.if.end.i123_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i123

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i123

if.end.i123:                                      ; preds = %do.end.i, %if.end18.if.end.i123_crit_edge
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call14, i32 0, i32 5
  %84 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %affected_inputs.i, align 4
  %86 = and i16 %85, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool22.not.i = icmp eq i16 %86, 0
  br i1 %tobool22.not.i, label %if.end.i123.if.then24.i124_crit_edge, label %lor.lhs.false.i

if.end.i123.if.then24.i124_crit_edge:             ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i124

lor.lhs.false.i:                                  ; preds = %if.end.i123
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %call14, i32 0, i32 6, i32 0
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i, ptr noundef dereferenceable(8) %dflow, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool23.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.komeda_component_add_input.exit_crit_edge, label %lor.lhs.false.i.if.then24.i124_crit_edge

lor.lhs.false.i.if.then24.i124_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i124

lor.lhs.false.i.komeda_component_add_input.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_add_input.exit

if.then24.i124:                                   ; preds = %lor.lhs.false.i.if.then24.i124_crit_edge, %if.end.i123.if.then24.i124_crit_edge
  %arrayidx26.i = getelementptr %struct.komeda_component_state, ptr %call14, i32 0, i32 6, i32 0
  %87 = ptrtoint ptr %dflow to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %dflow, align 4
  %89 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %88, ptr %arrayidx26.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call14, i32 0, i32 4
  %90 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %changed_active_inputs.i, align 2
  %conv29.i = or i16 %91, 1
  store i16 %conv29.i, ptr %changed_active_inputs.i, align 2
  br label %komeda_component_add_input.exit

komeda_component_add_input.exit:                  ; preds = %if.then24.i124, %lor.lhs.false.i.komeda_component_add_input.exit_crit_edge
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call14, i32 0, i32 3
  %92 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %active_inputs.i, align 4
  %conv34.i = or i16 %93, 1
  store i16 %conv34.i, ptr %active_inputs.i, align 4
  %94 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %affected_inputs.i, align 4
  %conv39.i = or i16 %95, 1
  store i16 %conv39.i, ptr %affected_inputs.i, align 4
  %96 = ptrtoint ptr %dflow to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i6.i, ptr %dflow, align 4
  %output_port1.i = getelementptr inbounds %struct.komeda_component_output, ptr %dflow, i32 0, i32 1
  %97 = ptrtoint ptr %output_port1.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %output_port1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %komeda_component_add_input.exit, %if.then16, %komeda_scaler_check_cfg.exit, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.then16 ], [ 0, %komeda_component_add_input.exit ], [ -22, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.1.ph.i, %komeda_scaler_check_cfg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @komeda_compiz_set_input(ptr noundef %compiz, ptr nocapture noundef readonly %kcrtc_st, ptr nocapture noundef %dflow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %blending_zorder = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 16
  %2 = ptrtoint ptr %blending_zorder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blending_zorder, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay.i, align 4
  %out_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 5
  %6 = ptrtoint ptr %out_x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_x, align 4
  %out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %8 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_w, align 4
  %add = add i32 %9, %7
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 6
  %10 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay.i, align 2
  %out_y = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 6
  %12 = ptrtoint ptr %out_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_y, align 4
  %out_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %14 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out_h, align 4
  %add2 = add i32 %15, %13
  %conv3 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %conv3)
  %cmp4 = icmp ugt i32 %add2, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12 = icmp eq i32 %15, 0
  %or.cond129 = select i1 %or.cond, i1 true, i1 %cmp12
  br i1 %or.cond129, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %out_y15 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 6
  %16 = ptrtoint ptr %out_y15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out_y15, align 4
  %out_h17 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %18 = ptrtoint ptr %out_h17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_h17, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %7, i32 noundef %17, i32 noundef %9, i32 noundef %19) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %kcrtc_st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kcrtc_st, align 8
  %call = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef %compiz, ptr noundef %1, ptr noundef %21, ptr noundef %21)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %component.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %component.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i130 = icmp slt i32 %3, 0
  br i1 %cmp.i130, label %if.end25.komeda_component_check_input.exit_crit_edge, label %lor.lhs.false.i

if.end25.komeda_component_check_input.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_check_input.exit

lor.lhs.false.i:                                  ; preds = %if.end25
  %max_active_inputs.i = getelementptr inbounds %struct.komeda_component, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %max_active_inputs.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_active_inputs.i, align 4
  %conv.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp1.not.i = icmp ult i32 %3, %conv.i
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.komeda_component_check_input.exit_crit_edge

lor.lhs.false.i.komeda_component_check_input.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_check_input.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %shl.i = shl nuw i32 1, %3
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 3
  %27 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %active_inputs.i, align 4
  %conv6.i = zext i16 %28 to i32
  %and.i = and i32 %shl.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end28, label %if.end.i.komeda_component_check_input.exit_crit_edge

if.end.i.komeda_component_check_input.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_check_input.exit

komeda_component_check_input.exit:                ; preds = %if.end.i.komeda_component_check_input.exit_crit_edge, %lor.lhs.false.i.komeda_component_check_input.exit_crit_edge, %if.end25.komeda_component_check_input.exit_crit_edge
  %.str.18.sink.i = phi ptr [ @.str.17, %lor.lhs.false.i.komeda_component_check_input.exit_crit_edge ], [ @.str.17, %if.end25.komeda_component_check_input.exit_crit_edge ], [ @.str.18, %if.end.i.komeda_component_check_input.exit_crit_edge ]
  %29 = ptrtoint ptr %dflow to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dflow, align 4
  %name9.i = getelementptr inbounds %struct.komeda_component, ptr %30, i32 0, i32 2
  %name11.i = getelementptr inbounds %struct.komeda_component, ptr %24, i32 0, i32 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull %.str.18.sink.i, ptr noundef %name9.i, ptr noundef %name11.i, i32 noundef %3) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end.i
  %arrayidx = getelementptr %struct.komeda_compiz_state, ptr %call, i32 0, i32 3, i32 %3
  %31 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out_w, align 4
  %conv30 = trunc i32 %32 to i16
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv30, ptr %arrayidx, align 2
  %34 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out_h, align 4
  %conv32 = trunc i32 %35 to i16
  %vsize = getelementptr %struct.komeda_compiz_state, ptr %call, i32 0, i32 3, i32 %3, i32 1
  %36 = ptrtoint ptr %vsize to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv32, ptr %vsize, align 2
  %37 = ptrtoint ptr %out_x to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out_x, align 4
  %conv34 = trunc i32 %38 to i16
  %hoffset = getelementptr %struct.komeda_compiz_state, ptr %call, i32 0, i32 3, i32 %3, i32 2
  %39 = ptrtoint ptr %hoffset to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv34, ptr %hoffset, align 2
  %40 = ptrtoint ptr %out_y to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out_y, align 4
  %conv36 = trunc i32 %41 to i16
  %voffset = getelementptr %struct.komeda_compiz_state, ptr %call, i32 0, i32 3, i32 %3, i32 3
  %42 = ptrtoint ptr %voffset to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv36, ptr %voffset, align 2
  %pixel_blend_mode = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 17
  %43 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pixel_blend_mode, align 4
  %pixel_blend_mode37 = getelementptr %struct.komeda_compiz_state, ptr %call, i32 0, i32 3, i32 %3, i32 4
  %45 = ptrtoint ptr %pixel_blend_mode37 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %pixel_blend_mode37, align 2
  %layer_alpha = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 18
  %46 = ptrtoint ptr %layer_alpha to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %layer_alpha, align 1
  %layer_alpha38 = getelementptr %struct.komeda_compiz_state, ptr %call, i32 0, i32 3, i32 %3, i32 5
  %48 = ptrtoint ptr %layer_alpha38 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %layer_alpha38, align 1
  %call.i = tail call ptr @drm_atomic_get_old_private_obj_state(ptr noundef %1, ptr noundef %compiz) #7
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %do.end, label %lor.lhs.false66.critedge, !prof !68

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 709, i32 noundef 9, ptr noundef null) #7
  br label %if.then74

lor.lhs.false66.critedge:                         ; preds = %if.end28
  %arrayidx71 = getelementptr %struct.komeda_compiz_state, ptr %call.i, i32 0, i32 3, i32 %3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(10) %arrayidx71, ptr noundef dereferenceable(10) %arrayidx, i32 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool73.not = icmp eq i32 %bcmp, 0
  br i1 %tobool73.not, label %lor.lhs.false66.critedge.lor.rhs.i_crit_edge, label %lor.lhs.false66.critedge.if.then74_crit_edge

lor.lhs.false66.critedge.if.then74_crit_edge:     ; preds = %lor.lhs.false66.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then74

lor.lhs.false66.critedge.lor.rhs.i_crit_edge:     ; preds = %lor.lhs.false66.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

if.then74:                                        ; preds = %lor.lhs.false66.critedge.if.then74_crit_edge, %do.end
  %changed_active_inputs = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %49 = ptrtoint ptr %changed_active_inputs to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %changed_active_inputs, align 2
  %51 = trunc i32 %shl.i to i16
  %conv76 = or i16 %50, %51
  store i16 %conv76, ptr %changed_active_inputs, align 2
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.then74, %lor.lhs.false66.critedge.lor.rhs.i_crit_edge
  %52 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %component.i, align 4
  %max_active_inputs.i133 = getelementptr inbounds %struct.komeda_component, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %max_active_inputs.i133 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_active_inputs.i133, align 4
  %conv.i134 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i134)
  %cmp1.not.i135 = icmp ult i32 %3, %conv.i134
  br i1 %cmp1.not.i135, label %lor.rhs.i.if.end.i138_crit_edge, label %do.end.i, !prof !69

lor.rhs.i.if.end.i138_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i138

do.end.i:                                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i138

if.end.i138:                                      ; preds = %do.end.i, %lor.rhs.i.if.end.i138_crit_edge
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 5
  %56 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %affected_inputs.i, align 4
  %conv21.i = zext i16 %57 to i32
  %and.i137 = and i32 %shl.i, %conv21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137)
  %tobool22.not.i = icmp eq i32 %and.i137, 0
  br i1 %tobool22.not.i, label %if.end.i138.if.then24.i_crit_edge, label %lor.lhs.false.i139

if.end.i138.if.then24.i_crit_edge:                ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.i139:                               ; preds = %if.end.i138
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %call, i32 0, i32 6, i32 %3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i, ptr noundef dereferenceable(8) %dflow, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool23.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.if.end30_crit_edge.i, label %lor.lhs.false.i139.if.then24.i_crit_edge

lor.lhs.false.i139.if.then24.i_crit_edge:         ; preds = %lor.lhs.false.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.if.end30_crit_edge.i:               ; preds = %lor.lhs.false.i139
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = trunc i32 %shl.i to i16
  br label %komeda_component_add_input.exit

if.then24.i:                                      ; preds = %lor.lhs.false.i139.if.then24.i_crit_edge, %if.end.i138.if.then24.i_crit_edge
  %arrayidx26.i = getelementptr %struct.komeda_component_state, ptr %call, i32 0, i32 6, i32 %3
  %58 = ptrtoint ptr %dflow to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %dflow, align 4
  %60 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %arrayidx26.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call, i32 0, i32 4
  %61 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %changed_active_inputs.i, align 2
  %63 = trunc i32 %shl.i to i16
  %conv29.i = or i16 %62, %63
  store i16 %conv29.i, ptr %changed_active_inputs.i, align 2
  br label %komeda_component_add_input.exit

komeda_component_add_input.exit:                  ; preds = %if.then24.i, %lor.lhs.false.if.end30_crit_edge.i
  %.pre-phi.i = phi i16 [ %.pre.i, %lor.lhs.false.if.end30_crit_edge.i ], [ %63, %if.then24.i ]
  %64 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %active_inputs.i, align 4
  %conv34.i = or i16 %65, %.pre-phi.i
  store i16 %conv34.i, ptr %active_inputs.i, align 4
  %66 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %affected_inputs.i, align 4
  %conv39.i = or i16 %67, %.pre-phi.i
  store i16 %conv39.i, ptr %affected_inputs.i, align 4
  %68 = ptrtoint ptr %dflow to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %compiz, ptr %dflow, align 4
  %output_port1.i = getelementptr inbounds %struct.komeda_component_output, ptr %dflow, i32 0, i32 1
  %69 = ptrtoint ptr %output_port1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %output_port1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %komeda_component_add_input.exit, %komeda_component_check_input.exit, %if.then23, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %22, %if.then23 ], [ 0, %komeda_component_add_input.exit ], [ -22, %komeda_component_check_input.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_build_layer_split_data_flow(ptr noundef %left, ptr nocapture noundef readonly %kplane_st, ptr noundef %kcrtc_st, ptr noundef %dflow) local_unnamed_addr #0 align 64 {
entry:
  %l_dflow = alloca %struct.komeda_data_flow_cfg, align 4
  %r_dflow = alloca %struct.komeda_data_flow_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kplane_st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kplane_st, align 4
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %left, i32 0, i32 1
  %2 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipeline, align 4
  %right3 = getelementptr inbounds %struct.komeda_layer, ptr %left, i32 0, i32 7
  %4 = ptrtoint ptr %right3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %right3, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %l_dflow) #7
  %6 = call ptr @memset(ptr %l_dflow, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %r_dflow) #7
  %7 = call ptr @memset(ptr %r_dflow, i32 255, i32 56)
  %scalers = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %scalers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scalers, align 4
  call fastcc void @komeda_split_data_flow(ptr noundef %9, ptr noundef %dflow, ptr noundef nonnull %l_dflow, ptr noundef nonnull %r_dflow)
  %name = getelementptr inbounds %struct.komeda_component, ptr %left, i32 0, i32 2
  %name6 = getelementptr inbounds %struct.komeda_component, ptr %5, i32 0, i32 2
  %base8 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base8, align 4
  %name9 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name9, align 4
  %in_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 1
  %14 = ptrtoint ptr %in_x to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %in_x, align 4
  %conv = zext i16 %15 to i32
  %in_y = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 2
  %16 = ptrtoint ptr %in_y to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %in_y, align 2
  %conv10 = zext i16 %17 to i32
  %in_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %18 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %in_w, align 4
  %conv11 = zext i16 %19 to i32
  %in_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %20 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %in_h, align 2
  %conv12 = zext i16 %21 to i32
  %out_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 5
  %22 = ptrtoint ptr %out_x to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_x, align 4
  %out_y = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 6
  %24 = ptrtoint ptr %out_y to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out_y, align 4
  %out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %26 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out_w, align 4
  %out_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %28 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out_h, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef %name6, i32 noundef %11, ptr noundef %13, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #7
  %call = call i32 @komeda_build_layer_data_flow(ptr noundef %left, ptr noundef %kplane_st, ptr noundef %kcrtc_st, ptr noundef nonnull %l_dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call13 = call i32 @komeda_build_layer_data_flow(ptr noundef %5, ptr noundef %kplane_st, ptr noundef %kcrtc_st, ptr noundef nonnull %r_dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %rot = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 15
  %30 = ptrtoint ptr %rot to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rot, align 4
  %and.i.i = and i32 %31, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end16.komeda_rotate_data_flow.exit_crit_edge, label %do.body.i

if.end16.komeda_rotate_data_flow.exit_crit_edge:  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_rotate_data_flow.exit

do.body.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %in_h, align 2
  %34 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %in_w, align 4
  store i16 %35, ptr %in_h, align 2
  store i16 %33, ptr %in_w, align 4
  %total_in_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 9
  %36 = ptrtoint ptr %total_in_h.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %total_in_h.i, align 4
  %total_in_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 10
  %38 = ptrtoint ptr %total_in_w.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %total_in_w.i, align 2
  store i16 %39, ptr %total_in_h.i, align 4
  store i16 %37, ptr %total_in_w.i, align 2
  br label %komeda_rotate_data_flow.exit

komeda_rotate_data_flow.exit:                     ; preds = %do.body.i, %if.end16.komeda_rotate_data_flow.exit_crit_edge
  %40 = ptrtoint ptr %r_dflow to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %r_dflow, align 4
  %42 = ptrtoint ptr %l_dflow to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %l_dflow, align 4
  %cmp = icmp eq ptr %41, %43
  br i1 %cmp, label %komeda_rotate_data_flow.exit.cleanup_crit_edge, label %if.end21

komeda_rotate_data_flow.exit.cleanup_crit_edge:   ; preds = %komeda_rotate_data_flow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %komeda_rotate_data_flow.exit
  %merger = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 12
  %44 = ptrtoint ptr %merger to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %merger, align 4
  %call22 = call fastcc i32 @komeda_merger_validate(ptr noundef %45, ptr noundef %kcrtc_st, ptr noundef nonnull %l_dflow, ptr noundef nonnull %r_dflow, ptr noundef %dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %compiz = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %compiz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %compiz, align 4
  %call26 = call fastcc i32 @komeda_compiz_set_input(ptr noundef %47, ptr noundef %kcrtc_st, ptr noundef %dflow)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %komeda_rotate_data_flow.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end25 ], [ %call, %entry.cleanup_crit_edge ], [ %call13, %if.end.cleanup_crit_edge ], [ 0, %komeda_rotate_data_flow.exit.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %r_dflow) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %l_dflow) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @komeda_split_data_flow(ptr noundef readonly %scaler, ptr noundef %dflow, ptr noundef %l_dflow, ptr noundef %r_dflow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rot = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 15
  %0 = ptrtoint ptr %rot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rot, align 4
  %and.i = and i32 %1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %call.i = tail call i32 @drm_rotation_simplify(i32 noundef %1, i32 noundef 51) #7
  %and.i451 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i451)
  %tobool.not.i = icmp eq i32 %and.i451, 0
  %retval.0.in.v.i = select i1 %tobool.not.i, i32 16, i32 32
  %retval.0.in.i = and i32 %retval.0.in.v.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i)
  %retval.0.i.not = icmp eq i32 %retval.0.in.i, 0
  %2 = call ptr @memcpy(ptr %l_dflow, ptr %dflow, i32 56)
  %3 = call ptr @memcpy(ptr %r_dflow, ptr %dflow, i32 56)
  %right_part = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 19
  %4 = ptrtoint ptr %right_part to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %right_part, align 2
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, ptr %right_part, align 2
  %right_part4 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 19
  %5 = ptrtoint ptr %right_part4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load5 = load i8, ptr %right_part4, align 2
  %bf.set7 = or i8 %bf.load5, 8
  store i8 %bf.set7, ptr %right_part4, align 2
  %blending_zorder = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 16
  %6 = ptrtoint ptr %blending_zorder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blending_zorder, align 4
  %add = add i32 %7, 1
  %blending_zorder8 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 16
  %8 = ptrtoint ptr %blending_zorder8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %blending_zorder8, align 4
  %en_scaling = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 19
  %9 = ptrtoint ptr %en_scaling to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load9 = load i8, ptr %en_scaling, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9)
  %tobool.not = icmp sgt i8 %bf.load9, -1
  %tobool10.not = icmp eq ptr %scaler, null
  %or.cond = or i1 %tobool10.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %scaling_split_overlap = getelementptr inbounds %struct.komeda_scaler, ptr %scaler, i32 0, i32 5
  %10 = ptrtoint ptr %scaling_split_overlap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scaling_split_overlap, align 4
  %conv11 = zext i8 %11 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %overlap.0 = phi i32 [ %conv11, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %conv13 = trunc i32 %overlap.0 to i16
  %overlap14 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 14
  %12 = ptrtoint ptr %overlap14 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv13, ptr %overlap14, align 2
  %13 = and i8 %bf.load9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  %or.cond449 = or i1 %tobool10.not, %tobool19.not
  br i1 %or.cond449, label %if.end.if.end25_crit_edge, label %if.then22

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %enh_split_overlap = getelementptr inbounds %struct.komeda_scaler, ptr %scaler, i32 0, i32 6
  %14 = ptrtoint ptr %enh_split_overlap to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enh_split_overlap, align 1
  %conv23 = zext i8 %15 to i32
  %add24 = add nuw nsw i32 %overlap.0, %conv23
  %.pre = trunc i32 %add24 to i16
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end.if.end25_crit_edge
  %conv26.pre-phi = phi i16 [ %.pre, %if.then22 ], [ %conv13, %if.end.if.end25_crit_edge ]
  %overlap.1 = phi i32 [ %add24, %if.then22 ], [ %overlap.0, %if.end.if.end25_crit_edge ]
  %overlap27 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 14
  %16 = ptrtoint ptr %overlap27 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv26.pre-phi, ptr %overlap27, align 2
  %overlap29 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 14
  %17 = ptrtoint ptr %overlap29 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv26.pre-phi, ptr %overlap29, align 2
  %18 = ptrtoint ptr %en_scaling to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load132 = load i8, ptr %en_scaling, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load132)
  %tobool134.not = icmp sgt i8 %bf.load132, -1
  br i1 %tobool.i.not, label %if.else130, label %if.then31

if.then31:                                        ; preds = %if.end25
  br i1 %tobool134.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %in_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %19 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %in_h, align 2
  %conv37 = zext i16 %20 to i32
  %add38 = add nuw nsw i32 %conv37, 1
  %div448 = lshr i32 %add38, 1
  %21 = ptrtoint ptr %overlap27 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %overlap27, align 2
  %23 = trunc i32 %div448 to i16
  %conv42 = add i16 %22, %23
  %in_h43 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 4
  %24 = ptrtoint ptr %in_h43 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv42, ptr %in_h43, align 2
  br label %if.end85

if.else:                                          ; preds = %if.then31
  %25 = and i8 %bf.load132, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool50.not = icmp eq i8 %25, 0
  %in_h71 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %26 = ptrtoint ptr %in_h71 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %in_h71, align 2
  %conv72 = zext i16 %27 to i32
  %add73 = add nuw nsw i32 %conv72, 1
  %28 = lshr i32 %add73, 1
  br i1 %tobool50.not, label %if.else70, label %if.then51

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %overlap27 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %overlap27, align 2
  %31 = trunc i32 %28 to i16
  %conv60 = add i16 %30, %31
  %in_h61 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 4
  %32 = ptrtoint ptr %in_h61 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv60, ptr %in_h61, align 2
  %33 = ptrtoint ptr %in_h71 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %in_h71, align 2
  %35 = lshr i16 %34, 1
  %36 = ptrtoint ptr %overlap29 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %overlap29, align 2
  %add67 = add i16 %35, %37
  br label %if.end85

if.else70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %38 = trunc i32 %28 to i16
  %39 = add nuw i16 %38, 1
  %conv76 = and i16 %39, -2
  %in_h77 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 4
  %40 = ptrtoint ptr %in_h77 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv76, ptr %in_h77, align 2
  %41 = ptrtoint ptr %in_h71 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %in_h71, align 2
  %sub = sub i16 %42, %conv76
  br label %if.end85

if.end85:                                         ; preds = %if.else70, %if.then51, %if.then36
  %add67.sink = phi i16 [ %add67, %if.then51 ], [ %sub, %if.else70 ], [ %conv42, %if.then36 ]
  %in_h69 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 4
  %43 = ptrtoint ptr %in_h69 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %add67.sink, ptr %in_h69, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overlap.1)
  %cmp.not = icmp eq i32 %overlap.1, 0
  br i1 %cmp.not, label %if.end85.if.end106_crit_edge, label %land.lhs.true87

if.end85.if.end106_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

land.lhs.true87:                                  ; preds = %if.end85
  %44 = ptrtoint ptr %en_scaling to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load88 = load i8, ptr %en_scaling, align 2
  %45 = and i8 %bf.load88, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool92.not = icmp eq i8 %45, 0
  br i1 %tobool92.not, label %land.lhs.true87.if.end106_crit_edge, label %if.then93

land.lhs.true87.if.end106_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then93:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  %in_h94 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 4
  %46 = ptrtoint ptr %in_h94 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %in_h94, align 2
  %add96 = add i16 %47, 1
  %and97 = and i16 %add96, -2
  store i16 %and97, ptr %in_h94, align 2
  %in_h100 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 4
  %48 = ptrtoint ptr %in_h100 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %in_h100, align 2
  %add102 = add i16 %49, 1
  %and103 = and i16 %add102, -2
  store i16 %and103, ptr %in_h100, align 2
  br label %if.end106

if.end106:                                        ; preds = %if.then93, %land.lhs.true87.if.end106_crit_edge, %if.end85.if.end106_crit_edge
  %in_y119 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 2
  %50 = ptrtoint ptr %in_y119 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %in_y119, align 2
  %in_h121 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %52 = ptrtoint ptr %in_h121 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %in_h121, align 2
  %add123 = add i16 %53, %51
  br i1 %retval.0.i.not, label %if.else118, label %if.then108

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %in_h113 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 4
  %54 = ptrtoint ptr %in_h113 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %in_h113, align 2
  %sub115 = sub i16 %add123, %55
  %in_y117 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 2
  %56 = ptrtoint ptr %in_y117 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %sub115, ptr %in_y117, align 2
  br label %if.end236

if.else118:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %in_h124 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 4
  %57 = ptrtoint ptr %in_h124 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %in_h124, align 2
  %sub126 = sub i16 %add123, %58
  %in_y128 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 2
  %59 = ptrtoint ptr %in_y128 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %sub126, ptr %in_y128, align 2
  br label %if.end236

if.else130:                                       ; preds = %if.end25
  br i1 %tobool134.not, label %if.else147, label %if.then135

if.then135:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #9
  %in_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %60 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %in_w, align 4
  %conv136 = zext i16 %61 to i32
  %add137 = add nuw nsw i32 %conv136, 1
  %div139446 = lshr i32 %add137, 1
  %62 = ptrtoint ptr %overlap27 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %overlap27, align 2
  %64 = trunc i32 %div139446 to i16
  %conv143 = add i16 %63, %64
  %in_w144 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 3
  %65 = ptrtoint ptr %in_w144 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv143, ptr %in_w144, align 4
  br label %if.end189

if.else147:                                       ; preds = %if.else130
  %66 = and i8 %bf.load132, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool152.not = icmp eq i8 %66, 0
  %in_w173 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %67 = ptrtoint ptr %in_w173 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %in_w173, align 4
  %conv174 = zext i16 %68 to i32
  %add175 = add nuw nsw i32 %conv174, 1
  %69 = lshr i32 %add175, 1
  br i1 %tobool152.not, label %if.else172, label %if.then153

if.then153:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %overlap27 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %overlap27, align 2
  %72 = trunc i32 %69 to i16
  %conv162 = add i16 %71, %72
  %in_w163 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 3
  %73 = ptrtoint ptr %in_w163 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv162, ptr %in_w163, align 4
  %74 = ptrtoint ptr %in_w173 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %in_w173, align 4
  %76 = lshr i16 %75, 1
  %77 = ptrtoint ptr %overlap29 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %overlap29, align 2
  %add169 = add i16 %76, %78
  br label %if.end189

if.else172:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #9
  %79 = trunc i32 %69 to i16
  %80 = add nuw i16 %79, 1
  %conv179 = and i16 %80, -2
  %in_w180 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 3
  %81 = ptrtoint ptr %in_w180 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv179, ptr %in_w180, align 4
  %82 = ptrtoint ptr %in_w173 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %in_w173, align 4
  %sub185 = sub i16 %83, %conv179
  br label %if.end189

if.end189:                                        ; preds = %if.else172, %if.then153, %if.then135
  %add169.sink = phi i16 [ %add169, %if.then153 ], [ %sub185, %if.else172 ], [ %conv143, %if.then135 ]
  %in_w171 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 3
  %84 = ptrtoint ptr %in_w171 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %add169.sink, ptr %in_w171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overlap.1)
  %cmp190.not = icmp eq i32 %overlap.1, 0
  br i1 %cmp190.not, label %if.end189.if.end212_crit_edge, label %land.lhs.true192

if.end189.if.end212_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

land.lhs.true192:                                 ; preds = %if.end189
  %85 = ptrtoint ptr %en_scaling to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load194 = load i8, ptr %en_scaling, align 2
  %86 = and i8 %bf.load194, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool198.not = icmp eq i8 %86, 0
  br i1 %tobool198.not, label %land.lhs.true192.if.end212_crit_edge, label %if.then199

land.lhs.true192.if.end212_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

if.then199:                                       ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #9
  %in_w200 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 3
  %87 = ptrtoint ptr %in_w200 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %in_w200, align 4
  %add202 = add i16 %88, 1
  %and203 = and i16 %add202, -2
  store i16 %and203, ptr %in_w200, align 4
  %in_w206 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 3
  %89 = ptrtoint ptr %in_w206 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %in_w206, align 4
  %add208 = add i16 %90, 1
  %and209 = and i16 %add208, -2
  store i16 %and209, ptr %in_w206, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then199, %land.lhs.true192.if.end212_crit_edge, %if.end189.if.end212_crit_edge
  %in_w225 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %91 = ptrtoint ptr %in_w225 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %in_w225, align 4
  %in_x227 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 1
  %93 = ptrtoint ptr %in_x227 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %in_x227, align 4
  %add229 = add i16 %94, %92
  br i1 %retval.0.i.not, label %if.else224, label %if.then214

if.then214:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  %in_w219 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 3
  %95 = ptrtoint ptr %in_w219 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %in_w219, align 4
  %sub221 = sub i16 %add229, %96
  %in_x223 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 1
  %97 = ptrtoint ptr %in_x223 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %sub221, ptr %in_x223, align 4
  br label %if.end236

if.else224:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  %in_w230 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 3
  %98 = ptrtoint ptr %in_w230 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %in_w230, align 4
  %sub232 = sub i16 %add229, %99
  %in_x234 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 1
  %100 = ptrtoint ptr %in_x234 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %sub232, ptr %in_x234, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.else224, %if.then214, %if.else118, %if.then108
  %101 = ptrtoint ptr %en_scaling to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load238 = load i8, ptr %en_scaling, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load238)
  %102 = icmp ult i8 %bf.load238, 64
  %out_w253 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %103 = ptrtoint ptr %out_w253 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %out_w253, align 4
  %add254 = add i32 %104, 1
  %shr255 = lshr i32 %add254, 1
  %add256 = add nuw i32 %shr255, 1
  %and257 = and i32 %add256, -2
  %shr250.sink = select i1 %102, i32 %and257, i32 %shr255
  %105 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 7
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %shr250.sink, ptr %105, align 4
  %out_w260 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %107 = ptrtoint ptr %out_w260 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %out_w260, align 4
  %sub262 = sub i32 %108, %shr250.sink
  %out_w263 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 7
  %109 = ptrtoint ptr %out_w263 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %sub262, ptr %out_w263, align 4
  %out_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 5
  %110 = ptrtoint ptr %out_x to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %out_x, align 4
  %out_x264 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 5
  %112 = ptrtoint ptr %out_x264 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %out_x264, align 4
  %113 = load i32, ptr %105, align 4
  %add267 = add i32 %113, %111
  %out_x268 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 5
  %114 = ptrtoint ptr %out_x268 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add267, ptr %out_x268, align 4
  %115 = load i32, ptr %out_w260, align 4
  br i1 %tobool.i.not, label %if.else284, label %if.then270

if.then270:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #9
  %in_h272 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 4
  %116 = ptrtoint ptr %in_h272 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %in_h272, align 2
  %conv273 = zext i16 %117 to i32
  %mul = mul i32 %115, %conv273
  %in_h274 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %118 = ptrtoint ptr %in_h274 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %in_h274, align 2
  %conv275 = zext i16 %119 to i32
  %div276 = udiv i32 %mul, %conv275
  %in_h278 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 4
  br label %if.end299

if.else284:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #9
  %in_w286 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 3
  %120 = ptrtoint ptr %in_w286 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %in_w286, align 4
  %conv287 = zext i16 %121 to i32
  %mul288 = mul i32 %115, %conv287
  %in_w289 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %122 = ptrtoint ptr %in_w289 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %in_w289, align 4
  %conv290 = zext i16 %123 to i32
  %div291 = udiv i32 %mul288, %conv290
  %in_w293 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 3
  br label %if.end299

if.end299:                                        ; preds = %if.else284, %if.then270
  %.sink455.in = phi ptr [ %in_w293, %if.else284 ], [ %in_h278, %if.then270 ]
  %conv290.sink = phi i32 [ %conv290, %if.else284 ], [ %conv275, %if.then270 ]
  %l_out.0 = phi i32 [ %div291, %if.else284 ], [ %div276, %if.then270 ]
  %124 = ptrtoint ptr %.sink455.in to i32
  call void @__asan_load2_noabort(i32 %124)
  %.sink455 = load i16, ptr %.sink455.in, align 2
  %conv294 = zext i16 %.sink455 to i32
  %mul295 = mul i32 %115, %conv294
  %div298 = udiv i32 %mul295, %conv290.sink
  %left_crop = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 12
  %125 = ptrtoint ptr %left_crop to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %left_crop, align 2
  %126 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %105, align 4
  %sub301 = sub i32 %l_out.0, %127
  %conv302 = trunc i32 %sub301 to i16
  %right_crop = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %l_dflow, i32 0, i32 13
  %128 = ptrtoint ptr %right_crop to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv302, ptr %right_crop, align 4
  %129 = ptrtoint ptr %out_w263 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %out_w263, align 4
  %sub304 = sub i32 %div298, %130
  %conv305 = trunc i32 %sub304 to i16
  %left_crop306 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 12
  %131 = ptrtoint ptr %left_crop306 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv305, ptr %left_crop306, align 2
  %right_crop307 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %r_dflow, i32 0, i32 13
  %132 = ptrtoint ptr %right_crop307 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %right_crop307, align 4
  %133 = load i16, ptr %right_crop, align 4
  %conv309 = zext i16 %133 to i32
  %134 = load i16, ptr %left_crop, align 2
  %conv311 = zext i16 %134 to i32
  %add312 = add nuw nsw i32 %conv311, %conv309
  %135 = load i32, ptr %105, align 4
  %add314 = add i32 %add312, %135
  store i32 %add314, ptr %105, align 4
  %136 = load i16, ptr %right_crop307, align 4
  %conv316 = zext i16 %136 to i32
  %137 = load i16, ptr %left_crop306, align 2
  %conv318 = zext i16 %137 to i32
  %add319 = add nuw nsw i32 %conv318, %conv316
  %138 = load i32, ptr %out_w263, align 4
  %add321 = add i32 %add319, %138
  store i32 %add321, ptr %out_w263, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @komeda_merger_validate(ptr noundef %merger, ptr nocapture noundef readonly %kcrtc_st, ptr nocapture noundef readonly %left_input, ptr nocapture noundef readonly %right_input, ptr nocapture noundef %output) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %merger, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hsize_merged = getelementptr inbounds %struct.komeda_merger, ptr %merger, i32 0, i32 1
  %out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %output, i32 0, i32 7
  %0 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_w, align 4
  %2 = ptrtoint ptr %hsize_merged to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hsize_merged, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp ugt i32 %3, %1
  br i1 %cmp.not.i, label %if.end.if.then1_crit_edge, label %in_range.exit

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1

in_range.exit:                                    ; preds = %if.end
  %end.i = getelementptr inbounds %struct.komeda_merger, ptr %merger, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp1.i.not = icmp ult i32 %5, %1
  br i1 %cmp1.i.not, label %in_range.exit.if.then1_crit_edge, label %if.end3

in_range.exit.if.then1_crit_edge:                 ; preds = %in_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1

if.then1:                                         ; preds = %in_range.exit.if.then1_crit_edge, %if.end.if.then1_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %1) #7
  br label %cleanup

if.end3:                                          ; preds = %in_range.exit
  %vsize_merged = getelementptr inbounds %struct.komeda_merger, ptr %merger, i32 0, i32 2
  %out_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %output, i32 0, i32 8
  %6 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_h, align 4
  %8 = ptrtoint ptr %vsize_merged to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsize_merged, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i1 = icmp ugt i32 %9, %7
  br i1 %cmp.not.i1, label %if.end3.if.then5_crit_edge, label %in_range.exit5

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

in_range.exit5:                                   ; preds = %if.end3
  %end.i2 = getelementptr inbounds %struct.komeda_merger, ptr %merger, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %end.i2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp1.i3.not = icmp ult i32 %11, %7
  br i1 %cmp1.i3.not, label %in_range.exit5.if.then5_crit_edge, label %if.end7

in_range.exit5.if.then5_crit_edge:                ; preds = %in_range.exit5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %in_range.exit5.if.then5_crit_edge, %if.end3.if.then5_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %7) #7
  br label %cleanup

if.end7:                                          ; preds = %in_range.exit5
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 20
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 8
  %14 = ptrtoint ptr %kcrtc_st to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kcrtc_st, align 8
  %call12 = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef nonnull %merger, ptr noundef %13, ptr noundef %15, ptr noundef %15)
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_w, align 4
  %conv = trunc i32 %18 to i16
  %hsize_merged18 = getelementptr inbounds %struct.komeda_merger_state, ptr %call12, i32 0, i32 1
  %19 = ptrtoint ptr %hsize_merged18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %hsize_merged18, align 4
  %20 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_h, align 4
  %conv20 = trunc i32 %21 to i16
  %vsize_merged21 = getelementptr inbounds %struct.komeda_merger_state, ptr %call12, i32 0, i32 2
  %22 = ptrtoint ptr %vsize_merged21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv20, ptr %vsize_merged21, align 2
  %component.i = getelementptr inbounds %struct.komeda_component_state, ptr %call12, i32 0, i32 1
  %23 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %component.i, align 4
  %max_active_inputs.i = getelementptr inbounds %struct.komeda_component, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %max_active_inputs.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_active_inputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp1.not.i.not = icmp eq i8 %26, 0
  br i1 %cmp1.not.i.not, label %do.end.i, label %if.end16.if.end.i_crit_edge, !prof !68

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end16.if.end.i_crit_edge
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call12, i32 0, i32 5
  %27 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %affected_inputs.i, align 4
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool22.not.i = icmp eq i16 %29, 0
  br i1 %tobool22.not.i, label %if.end.i.if.then24.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then24.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %call12, i32 0, i32 6, i32 0
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i, ptr noundef dereferenceable(8) %left_input, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool23.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.komeda_component_add_input.exit_crit_edge, label %lor.lhs.false.i.if.then24.i_crit_edge

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.i.komeda_component_add_input.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_add_input.exit

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %if.end.i.if.then24.i_crit_edge
  %arrayidx26.i = getelementptr %struct.komeda_component_state, ptr %call12, i32 0, i32 6, i32 0
  %30 = ptrtoint ptr %left_input to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %left_input, align 4
  %32 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %arrayidx26.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call12, i32 0, i32 4
  %33 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %changed_active_inputs.i, align 2
  %conv29.i = or i16 %34, 1
  store i16 %conv29.i, ptr %changed_active_inputs.i, align 2
  br label %komeda_component_add_input.exit

komeda_component_add_input.exit:                  ; preds = %if.then24.i, %lor.lhs.false.i.komeda_component_add_input.exit_crit_edge
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call12, i32 0, i32 3
  %35 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %active_inputs.i, align 4
  %conv34.i = or i16 %36, 1
  store i16 %conv34.i, ptr %active_inputs.i, align 4
  %37 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %affected_inputs.i, align 4
  %conv39.i = or i16 %38, 1
  store i16 %conv39.i, ptr %affected_inputs.i, align 4
  %39 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %component.i, align 4
  %max_active_inputs.i7 = getelementptr inbounds %struct.komeda_component, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %max_active_inputs.i7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %max_active_inputs.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp1.not.i9 = icmp ugt i8 %42, 1
  br i1 %cmp1.not.i9, label %komeda_component_add_input.exit.if.end.i15_crit_edge, label %do.end.i10, !prof !69

komeda_component_add_input.exit.if.end.i15_crit_edge: ; preds = %komeda_component_add_input.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i15

do.end.i10:                                       ; preds = %komeda_component_add_input.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i15

if.end.i15:                                       ; preds = %do.end.i10, %komeda_component_add_input.exit.if.end.i15_crit_edge
  %43 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %affected_inputs.i, align 4
  %45 = and i16 %44, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool22.not.i14 = icmp eq i16 %45, 0
  br i1 %tobool22.not.i14, label %if.end.i15.if.then24.i24_crit_edge, label %lor.lhs.false.i19

if.end.i15.if.then24.i24_crit_edge:               ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i24

lor.lhs.false.i19:                                ; preds = %if.end.i15
  %arrayidx.i16 = getelementptr %struct.komeda_component_state, ptr %call12, i32 0, i32 6, i32 1
  %bcmp.i17 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i16, ptr noundef dereferenceable(8) %right_input, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i17)
  %tobool23.not.i18 = icmp eq i32 %bcmp.i17, 0
  br i1 %tobool23.not.i18, label %lor.lhs.false.i19.komeda_component_add_input.exit28_crit_edge, label %lor.lhs.false.i19.if.then24.i24_crit_edge

lor.lhs.false.i19.if.then24.i24_crit_edge:        ; preds = %lor.lhs.false.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i24

lor.lhs.false.i19.komeda_component_add_input.exit28_crit_edge: ; preds = %lor.lhs.false.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_add_input.exit28

if.then24.i24:                                    ; preds = %lor.lhs.false.i19.if.then24.i24_crit_edge, %if.end.i15.if.then24.i24_crit_edge
  %arrayidx26.i21 = getelementptr %struct.komeda_component_state, ptr %call12, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %right_input to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %right_input, align 4
  %48 = ptrtoint ptr %arrayidx26.i21 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %47, ptr %arrayidx26.i21, align 4
  %changed_active_inputs.i22 = getelementptr inbounds %struct.komeda_component_state, ptr %call12, i32 0, i32 4
  %49 = ptrtoint ptr %changed_active_inputs.i22 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %changed_active_inputs.i22, align 2
  %conv29.i23 = or i16 %50, 2
  store i16 %conv29.i23, ptr %changed_active_inputs.i22, align 2
  br label %komeda_component_add_input.exit28

komeda_component_add_input.exit28:                ; preds = %if.then24.i24, %lor.lhs.false.i19.komeda_component_add_input.exit28_crit_edge
  %51 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %active_inputs.i, align 4
  %conv34.i26 = or i16 %52, 2
  store i16 %conv34.i26, ptr %active_inputs.i, align 4
  %53 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %affected_inputs.i, align 4
  %conv39.i27 = or i16 %54, 2
  store i16 %conv39.i27, ptr %affected_inputs.i, align 4
  %55 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %merger, ptr %output, align 4
  %output_port1.i = getelementptr inbounds %struct.komeda_component_output, ptr %output, i32 0, i32 1
  %56 = ptrtoint ptr %output_port1.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %output_port1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %komeda_component_add_input.exit28, %if.then14, %if.then5, %if.then1, %if.then
  %retval.0 = phi i32 [ %16, %if.then14 ], [ 0, %komeda_component_add_input.exit28 ], [ -22, %if.then5 ], [ -22, %if.then1 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_build_wb_data_flow(ptr noundef %wb_layer, ptr nocapture noundef readonly %conn_st, ptr noundef %kcrtc_st, ptr noundef %dflow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_st, align 4
  %call = tail call fastcc i32 @komeda_scaler_validate(ptr noundef %1, ptr noundef %kcrtc_st, ptr noundef %dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @komeda_wb_layer_validate(ptr noundef %wb_layer, ptr noundef %conn_st, ptr noundef %dflow)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @komeda_wb_layer_validate(ptr noundef %wb_layer, ptr nocapture noundef readonly %conn_st, ptr nocapture noundef %dflow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %conn_st, i32 0, i32 14
  %0 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %writeback_job, align 4
  %fb = getelementptr inbounds %struct.drm_writeback_job, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %call = tail call fastcc i32 @komeda_layer_check_cfg(ptr noundef %wb_layer, ptr noundef %3, ptr noundef %dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.drm_connector_state, ptr %conn_st, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %6 = ptrtoint ptr %conn_st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn_st, align 4
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %conn_st, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %call1 = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef %wb_layer, ptr noundef %5, ptr noundef %7, ptr noundef %9)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %11 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out_w, align 4
  %conv = trunc i32 %12 to i16
  %hsize = getelementptr inbounds %struct.komeda_layer_state, ptr %call1, i32 0, i32 1
  %13 = ptrtoint ptr %hsize to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %hsize, align 4
  %out_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %14 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out_h, align 4
  %conv9 = trunc i32 %15 to i16
  %vsize = getelementptr inbounds %struct.komeda_layer_state, ptr %call1, i32 0, i32 2
  %16 = ptrtoint ptr %vsize to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv9, ptr %vsize, align 2
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %format, align 8
  %num_planes43 = getelementptr inbounds %struct.drm_format_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %num_planes43 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_planes43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp45.not = icmp eq i8 %20, 0
  br i1 %cmp45.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %out_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 5
  %out_y = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %out_x to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_x, align 4
  %23 = ptrtoint ptr %out_y to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_y, align 4
  %call13 = tail call i32 @komeda_fb_get_pixel_addr(ptr noundef %3, i32 noundef %22, i32 noundef %24, i32 noundef %i.046) #7
  %arrayidx = getelementptr %struct.komeda_layer_state, ptr %call1, i32 0, i32 8, i32 %i.046
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call13, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.046, 1
  %26 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_planes, align 1
  %conv11 = zext i8 %29 to i32
  %cmp = icmp ult i32 %inc, %conv11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %component.i = getelementptr inbounds %struct.komeda_component_state, ptr %call1, i32 0, i32 1
  %30 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %component.i, align 4
  %max_active_inputs.i = getelementptr inbounds %struct.komeda_component, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %max_active_inputs.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %max_active_inputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp1.not.i.not = icmp eq i8 %33, 0
  br i1 %cmp1.not.i.not, label %do.end.i, label %for.end.if.end.i_crit_edge, !prof !68

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.end.if.end.i_crit_edge
  %affected_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call1, i32 0, i32 5
  %34 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %affected_inputs.i, align 4
  %36 = and i16 %35, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool22.not.i = icmp eq i16 %36, 0
  br i1 %tobool22.not.i, label %if.end.i.if.then24.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then24.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %call1, i32 0, i32 6, i32 0
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i, ptr noundef dereferenceable(8) %dflow, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool23.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.komeda_component_add_input.exit_crit_edge, label %lor.lhs.false.i.if.then24.i_crit_edge

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

lor.lhs.false.i.komeda_component_add_input.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_add_input.exit

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %if.end.i.if.then24.i_crit_edge
  %arrayidx26.i = getelementptr %struct.komeda_component_state, ptr %call1, i32 0, i32 6, i32 0
  %37 = ptrtoint ptr %dflow to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %dflow, align 4
  %39 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %arrayidx26.i, align 4
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call1, i32 0, i32 4
  %40 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %changed_active_inputs.i, align 2
  %conv29.i = or i16 %41, 1
  store i16 %conv29.i, ptr %changed_active_inputs.i, align 2
  br label %komeda_component_add_input.exit

komeda_component_add_input.exit:                  ; preds = %if.then24.i, %lor.lhs.false.i.komeda_component_add_input.exit_crit_edge
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %call1, i32 0, i32 3
  %42 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %active_inputs.i, align 4
  %conv34.i = or i16 %43, 1
  store i16 %conv34.i, ptr %active_inputs.i, align 4
  %44 = ptrtoint ptr %affected_inputs.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %affected_inputs.i, align 4
  %conv39.i = or i16 %45, 1
  store i16 %conv39.i, ptr %affected_inputs.i, align 4
  %46 = ptrtoint ptr %dflow to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %wb_layer, ptr %dflow, align 4
  %output_port1.i = getelementptr inbounds %struct.komeda_component_output, ptr %dflow, i32 0, i32 1
  %47 = ptrtoint ptr %output_port1.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %output_port1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %komeda_component_add_input.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then3 ], [ 0, %komeda_component_add_input.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_build_wb_split_data_flow(ptr noundef %wb_layer, ptr nocapture noundef readonly %conn_st, ptr noundef %kcrtc_st, ptr noundef %dflow) local_unnamed_addr #0 align 64 {
entry:
  %l_dflow = alloca %struct.komeda_data_flow_cfg, align 4
  %r_dflow = alloca %struct.komeda_data_flow_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %wb_layer, i32 0, i32 1
  %0 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipeline, align 4
  %2 = ptrtoint ptr %conn_st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_st, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %l_dflow) #7
  %4 = call ptr @memset(ptr %l_dflow, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %r_dflow) #7
  %5 = call ptr @memset(ptr %r_dflow, i32 255, i32 56)
  %splitter = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %splitter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %splitter, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %hsize.i = getelementptr inbounds %struct.komeda_splitter, ptr %7, i32 0, i32 1
  %in_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %8 = ptrtoint ptr %in_w.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %in_w.i, align 4
  %conv.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %hsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp.not.i.i = icmp ugt i32 %11, %conv.i
  br i1 %cmp.not.i.i, label %if.end.i.if.then1.i_crit_edge, label %in_range.exit.i

if.end.i.if.then1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

in_range.exit.i:                                  ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.komeda_splitter, ptr %7, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp1.i.not.i = icmp ult i32 %13, %conv.i
  br i1 %cmp1.i.not.i, label %in_range.exit.i.if.then1.i_crit_edge, label %if.end4.i

in_range.exit.i.if.then1.i_crit_edge:             ; preds = %in_range.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then1.i

if.then1.i:                                       ; preds = %in_range.exit.i.if.then1.i_crit_edge, %if.end.i.if.then1.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %conv.i) #7
  br label %cleanup

if.end4.i:                                        ; preds = %in_range.exit.i
  %vsize.i = getelementptr inbounds %struct.komeda_splitter, ptr %7, i32 0, i32 2
  %in_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %14 = ptrtoint ptr %in_h.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %in_h.i, align 2
  %conv5.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %vsize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv5.i)
  %cmp.not.i51.i = icmp ugt i32 %17, %conv5.i
  br i1 %cmp.not.i51.i, label %if.end4.i.if.then7.i_crit_edge, label %in_range.exit55.i

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

in_range.exit55.i:                                ; preds = %if.end4.i
  %end.i52.i = getelementptr inbounds %struct.komeda_splitter, ptr %7, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %end.i52.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i52.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv5.i)
  %cmp1.i53.not.i = icmp ult i32 %19, %conv5.i
  br i1 %cmp1.i53.not.i, label %in_range.exit55.i.if.then7.i_crit_edge, label %if.end10.i

in_range.exit55.i.if.then7.i_crit_edge:           ; preds = %in_range.exit55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %in_range.exit55.i.if.then7.i_crit_edge, %if.end4.i.if.then7.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %conv5.i) #7
  br label %cleanup

if.end10.i:                                       ; preds = %in_range.exit55.i
  %state.i = getelementptr inbounds %struct.drm_connector_state, ptr %conn_st, i32 0, i32 4
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_connector_state, ptr %conn_st, i32 0, i32 1
  %22 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc.i, align 4
  %call11.i = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef nonnull %7, ptr noundef %21, ptr noundef %3, ptr noundef %23) #7
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %komeda_splitter_validate.exit, label %if.end15.i

if.end15.i:                                       ; preds = %if.end10.i
  %pipeline.i = getelementptr inbounds %struct.komeda_component, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %pipeline.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipeline.i, align 4
  %scalers.i = getelementptr inbounds %struct.komeda_pipeline, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %scalers.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scalers.i, align 4
  call fastcc void @komeda_split_data_flow(ptr noundef %27, ptr noundef %dflow, ptr noundef nonnull %l_dflow, ptr noundef nonnull %r_dflow) #7
  %28 = ptrtoint ptr %in_w.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %in_w.i, align 4
  %hsize18.i = getelementptr inbounds %struct.komeda_splitter_state, ptr %call11.i, i32 0, i32 1
  %30 = ptrtoint ptr %hsize18.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %hsize18.i, align 4
  %31 = ptrtoint ptr %in_h.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %in_h.i, align 2
  %vsize20.i = getelementptr inbounds %struct.komeda_splitter_state, ptr %call11.i, i32 0, i32 2
  %33 = ptrtoint ptr %vsize20.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vsize20.i, align 2
  %overlap.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 14
  %34 = ptrtoint ptr %overlap.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %overlap.i, align 2
  %overlap21.i = getelementptr inbounds %struct.komeda_splitter_state, ptr %call11.i, i32 0, i32 3
  %36 = ptrtoint ptr %overlap21.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %overlap21.i, align 4
  %component.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %call11.i, i32 0, i32 1
  %37 = ptrtoint ptr %component.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %component.i.i, align 4
  %max_active_inputs.i.i = getelementptr inbounds %struct.komeda_component, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %max_active_inputs.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_active_inputs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp1.not.i.not.i = icmp eq i8 %40, 0
  br i1 %cmp1.not.i.not.i, label %do.end.i.i, label %if.end15.i.if.end.i.i_crit_edge, !prof !68

if.end15.i.if.end.i.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end15.i.if.end.i.i_crit_edge
  %affected_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %call11.i, i32 0, i32 5
  %41 = ptrtoint ptr %affected_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %affected_inputs.i.i, align 4
  %43 = and i16 %42, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool22.not.i.i = icmp eq i16 %43, 0
  br i1 %tobool22.not.i.i, label %if.end.i.i.if.then24.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then24.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.komeda_component_state, ptr %call11.i, i32 0, i32 6, i32 0
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i.i, ptr noundef dereferenceable(8) %dflow, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool23.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false.i.i.komeda_splitter_validate.exit.thread37_crit_edge, label %lor.lhs.false.i.i.if.then24.i.i_crit_edge

lor.lhs.false.i.i.if.then24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i.i

lor.lhs.false.i.i.komeda_splitter_validate.exit.thread37_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_splitter_validate.exit.thread37

if.then24.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then24.i.i_crit_edge, %if.end.i.i.if.then24.i.i_crit_edge
  %arrayidx26.i.i = getelementptr %struct.komeda_component_state, ptr %call11.i, i32 0, i32 6, i32 0
  %44 = ptrtoint ptr %dflow to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %dflow, align 4
  %46 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %arrayidx26.i.i, align 4
  %changed_active_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %call11.i, i32 0, i32 4
  %47 = ptrtoint ptr %changed_active_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %changed_active_inputs.i.i, align 2
  %conv29.i.i = or i16 %48, 1
  store i16 %conv29.i.i, ptr %changed_active_inputs.i.i, align 2
  br label %komeda_splitter_validate.exit.thread37

komeda_splitter_validate.exit.thread37:           ; preds = %if.then24.i.i, %lor.lhs.false.i.i.komeda_splitter_validate.exit.thread37_crit_edge
  %active_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %call11.i, i32 0, i32 3
  %49 = ptrtoint ptr %active_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %active_inputs.i.i, align 4
  %conv34.i.i = or i16 %50, 1
  store i16 %conv34.i.i, ptr %active_inputs.i.i, align 4
  %51 = ptrtoint ptr %affected_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %affected_inputs.i.i, align 4
  %conv39.i.i = or i16 %52, 1
  store i16 %conv39.i.i, ptr %affected_inputs.i.i, align 4
  %53 = ptrtoint ptr %l_dflow to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %7, ptr %l_dflow, align 4
  %output_port1.i.i = getelementptr inbounds %struct.komeda_component_output, ptr %l_dflow, i32 0, i32 1
  %54 = ptrtoint ptr %output_port1.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %output_port1.i.i, align 4
  %55 = ptrtoint ptr %r_dflow to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %7, ptr %r_dflow, align 4
  %output_port1.i56.i = getelementptr inbounds %struct.komeda_component_output, ptr %r_dflow, i32 0, i32 1
  %56 = ptrtoint ptr %output_port1.i56.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %output_port1.i56.i, align 4
  %call1 = call fastcc i32 @komeda_scaler_validate(ptr noundef %3, ptr noundef %kcrtc_st, ptr noundef nonnull %l_dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %komeda_splitter_validate.exit.thread37.cleanup_crit_edge

komeda_splitter_validate.exit.thread37.cleanup_crit_edge: ; preds = %komeda_splitter_validate.exit.thread37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

komeda_splitter_validate.exit:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %call11.i to i32
  br label %cleanup

if.end4:                                          ; preds = %komeda_splitter_validate.exit.thread37
  %call5 = call fastcc i32 @komeda_scaler_validate(ptr noundef %3, ptr noundef %kcrtc_st, ptr noundef nonnull %r_dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %merger = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 12
  %58 = ptrtoint ptr %merger to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %merger, align 4
  %call9 = call fastcc i32 @komeda_merger_validate(ptr noundef %59, ptr noundef %kcrtc_st, ptr noundef nonnull %l_dflow, ptr noundef nonnull %r_dflow, ptr noundef %dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call fastcc i32 @komeda_wb_layer_validate(ptr noundef %wb_layer, ptr noundef %conn_st, ptr noundef %dflow)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %komeda_splitter_validate.exit, %komeda_splitter_validate.exit.thread37.cleanup_crit_edge, %if.then7.i, %if.then1.i, %if.then.i
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %57, %komeda_splitter_validate.exit ], [ %call1, %komeda_splitter_validate.exit.thread37.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ -22, %if.then7.i ], [ -22, %if.then1.i ], [ -22, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %r_dflow) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %l_dflow) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_build_display_data_flow(ptr nocapture noundef readonly %kcrtc, ptr noundef %kcrtc_st) local_unnamed_addr #0 align 64 {
entry:
  %output_depths.i = alloca i32, align 4
  %output_formats.i = alloca i32, align 4
  %m_dflow = alloca %struct.komeda_data_flow_cfg, align 8
  %s_dflow = alloca %struct.komeda_data_flow_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.komeda_crtc, ptr %kcrtc, i32 0, i32 1
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 8
  %slave2 = getelementptr inbounds %struct.komeda_crtc, ptr %kcrtc, i32 0, i32 2
  %2 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m_dflow) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %s_dflow) #7
  %4 = call ptr @memset(ptr %m_dflow, i32 0, i32 56)
  %5 = getelementptr inbounds i8, ptr %s_dflow, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 52)
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %8
  %active_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %kcrtc_st, i32 0, i32 2
  %9 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_pipes, align 8
  %and = and i32 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %compiz = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %compiz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %compiz, align 4
  %state2.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 20
  %13 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state2.i, align 8
  %15 = ptrtoint ptr %kcrtc_st to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kcrtc_st, align 8
  %call.i = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef %12, ptr noundef %14, ptr noundef %16, ptr noundef %16) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %komeda_compiz_validate.exit, label %komeda_compiz_validate.exit.thread

komeda_compiz_validate.exit.thread:               ; preds = %if.then
  %hsize.i = getelementptr inbounds %struct.komeda_compiz_state, ptr %call.i, i32 0, i32 1
  %vsize.i = getelementptr inbounds %struct.komeda_compiz_state, ptr %call.i, i32 0, i32 2
  %hdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hdisplay.i.i, align 4
  %19 = ptrtoint ptr %hsize.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %hsize.i, align 2
  %vdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdisplay.i.i, align 2
  %22 = ptrtoint ptr %vsize.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %vsize.i, align 2
  %23 = ptrtoint ptr %s_dflow to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %12, ptr %s_dflow, align 4
  %output_port1.i.i = getelementptr inbounds %struct.komeda_component_output, ptr %s_dflow, i32 0, i32 1
  %24 = ptrtoint ptr %output_port1.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %output_port1.i.i, align 4
  %in_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %s_dflow, i32 0, i32 3
  %25 = ptrtoint ptr %in_w.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %18, ptr %in_w.i, align 4
  %in_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %s_dflow, i32 0, i32 4
  %26 = ptrtoint ptr %in_h.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %21, ptr %in_h.i, align 2
  %conv.i = zext i16 %18 to i32
  %out_w.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %s_dflow, i32 0, i32 7
  %27 = ptrtoint ptr %out_w.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %out_w.i, align 4
  %conv14.i = zext i16 %21 to i32
  %out_h.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %s_dflow, i32 0, i32 8
  %28 = ptrtoint ptr %out_h.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv14.i, ptr %out_h.i, align 4
  %pixel_blend_mode.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %s_dflow, i32 0, i32 17
  %29 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %pixel_blend_mode.i, align 4
  %layer_alpha.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %s_dflow, i32 0, i32 18
  %30 = ptrtoint ptr %layer_alpha.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %layer_alpha.i, align 1
  %blending_zorder.i = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %s_dflow, i32 0, i32 16
  %31 = ptrtoint ptr %blending_zorder.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %blending_zorder.i, align 4
  %compiz6 = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %compiz6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %compiz6, align 4
  %call7 = call fastcc i32 @komeda_compiz_set_input(ptr noundef %33, ptr noundef %kcrtc_st, ptr noundef nonnull %s_dflow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %komeda_compiz_validate.exit.thread.if.end11_crit_edge, label %komeda_compiz_validate.exit.thread.cleanup_crit_edge

komeda_compiz_validate.exit.thread.cleanup_crit_edge: ; preds = %komeda_compiz_validate.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

komeda_compiz_validate.exit.thread.if.end11_crit_edge: ; preds = %komeda_compiz_validate.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

komeda_compiz_validate.exit:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end11:                                         ; preds = %komeda_compiz_validate.exit.thread.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %compiz12 = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %compiz12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %compiz12, align 4
  %state2.i49 = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 20
  %37 = ptrtoint ptr %state2.i49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state2.i49, align 8
  %39 = ptrtoint ptr %kcrtc_st to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %kcrtc_st, align 8
  %call.i50 = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef %36, ptr noundef %38, ptr noundef %40, ptr noundef %40) #7
  %cmp.i.i51 = icmp ugt ptr %call.i50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i51, label %komeda_compiz_validate.exit69, label %komeda_compiz_validate.exit69.thread

komeda_compiz_validate.exit69.thread:             ; preds = %if.end11
  %hsize.i53 = getelementptr inbounds %struct.komeda_compiz_state, ptr %call.i50, i32 0, i32 1
  %vsize.i54 = getelementptr inbounds %struct.komeda_compiz_state, ptr %call.i50, i32 0, i32 2
  %hdisplay.i.i56 = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %hdisplay.i.i56 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hdisplay.i.i56, align 4
  %43 = ptrtoint ptr %hsize.i53 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %hsize.i53, align 2
  %vdisplay.i.i57 = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 6
  %44 = ptrtoint ptr %vdisplay.i.i57 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vdisplay.i.i57, align 2
  %46 = ptrtoint ptr %vsize.i54 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %vsize.i54, align 2
  %47 = ptrtoint ptr %m_dflow to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %36, ptr %m_dflow, align 8
  %output_port1.i.i58 = getelementptr inbounds %struct.komeda_component_output, ptr %m_dflow, i32 0, i32 1
  %48 = ptrtoint ptr %output_port1.i.i58 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %output_port1.i.i58, align 4
  %in_w.i59 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %m_dflow, i32 0, i32 3
  %49 = ptrtoint ptr %in_w.i59 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %42, ptr %in_w.i59, align 4
  %in_h.i60 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %m_dflow, i32 0, i32 4
  %50 = ptrtoint ptr %in_h.i60 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %45, ptr %in_h.i60, align 2
  %conv.i61 = zext i16 %42 to i32
  %out_w.i62 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %m_dflow, i32 0, i32 7
  %51 = ptrtoint ptr %out_w.i62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv.i61, ptr %out_w.i62, align 8
  %conv14.i63 = zext i16 %45 to i32
  %out_h.i64 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %m_dflow, i32 0, i32 8
  %52 = ptrtoint ptr %out_h.i64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv14.i63, ptr %out_h.i64, align 4
  %pixel_blend_mode.i65 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %m_dflow, i32 0, i32 17
  %53 = ptrtoint ptr %pixel_blend_mode.i65 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %pixel_blend_mode.i65, align 4
  %layer_alpha.i66 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %m_dflow, i32 0, i32 18
  %54 = ptrtoint ptr %layer_alpha.i66 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %layer_alpha.i66, align 1
  %improc = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 14
  %55 = ptrtoint ptr %improc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %improc, align 4
  %57 = ptrtoint ptr %kcrtc_st to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %kcrtc_st, align 8
  %59 = ptrtoint ptr %state2.i49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %state2.i49, align 8
  %call.i70 = tail call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef %56, ptr noundef %60, ptr noundef %58, ptr noundef %58) #7
  %cmp.i.i71 = icmp ugt ptr %call.i70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i71, label %komeda_improc_validate.exit, label %if.end.i77

komeda_compiz_validate.exit69:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %call.i50 to i32
  br label %cleanup

if.end.i77:                                       ; preds = %komeda_compiz_validate.exit69.thread
  %62 = ptrtoint ptr %in_w.i59 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %in_w.i59, align 4
  %hsize.i74 = getelementptr inbounds %struct.komeda_improc_state, ptr %call.i70, i32 0, i32 3
  %64 = ptrtoint ptr %hsize.i74 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %hsize.i74, align 2
  %65 = ptrtoint ptr %in_h.i60 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %in_h.i60, align 2
  %vsize.i76 = getelementptr inbounds %struct.komeda_improc_state, ptr %call.i70, i32 0, i32 4
  %67 = ptrtoint ptr %vsize.i76 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %vsize.i76, align 4
  %mode_changed.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 3
  %68 = ptrtoint ptr %mode_changed.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i.i = load i8, ptr %mode_changed.i.i, align 2
  %69 = and i8 %bf.load.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %.not.i = icmp eq i8 %69, 0
  br i1 %.not.i, label %if.end.i77.if.end22.i_crit_edge, label %if.then8.i

if.end.i77.if.end22.i_crit_edge:                  ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then8.i:                                       ; preds = %if.end.i77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_depths.i) #7
  %70 = ptrtoint ptr %output_depths.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %output_depths.i, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_formats.i) #7
  %71 = ptrtoint ptr %output_formats.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %output_formats.i, align 4, !annotation !70
  call void @komeda_crtc_get_color_config(ptr noundef %kcrtc_st, ptr noundef nonnull %output_depths.i, ptr noundef nonnull %output_formats.i) #7
  %72 = ptrtoint ptr %output_depths.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %output_depths.i, align 4
  %supported_color_depths.i = getelementptr inbounds %struct.komeda_improc, ptr %56, i32 0, i32 2
  %74 = ptrtoint ptr %supported_color_depths.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %supported_color_depths.i, align 4
  %and.i = and i32 %75, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.25, i32 noundef %73, i32 noundef %75) #7
  br label %komeda_improc_validate.exit.thread113

if.end11.i:                                       ; preds = %if.then8.i
  %76 = ptrtoint ptr %output_formats.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %output_formats.i, align 4
  %supported_color_formats.i = getelementptr inbounds %struct.komeda_improc, ptr %56, i32 0, i32 1
  %78 = ptrtoint ptr %supported_color_formats.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %supported_color_formats.i, align 4
  %and12.i = and i32 %79, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.26, i32 noundef %77, i32 noundef %79) #7
  br label %komeda_improc_validate.exit.thread113

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = call i32 @llvm.ctlz.i32(i32 %and.i, i1 true) #7, !range !71
  %81 = trunc i32 %80 to i8
  %conv.i78 = xor i8 %81, 31
  %color_depth.i = getelementptr inbounds %struct.komeda_improc_state, ptr %call.i70, i32 0, i32 2
  %82 = ptrtoint ptr %color_depth.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i78, ptr %color_depth.i, align 1
  %83 = call i32 @llvm.cttz.i32(i32 %and12.i, i1 true) #7, !range !71
  %shl.i = shl nuw i32 1, %83
  %conv18.i = trunc i32 %shl.i to i8
  %color_format.i = getelementptr inbounds %struct.komeda_improc_state, ptr %call.i70, i32 0, i32 1
  %84 = ptrtoint ptr %color_format.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv18.i, ptr %color_format.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_formats.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_depths.i) #7
  br label %if.end22.i

komeda_improc_validate.exit.thread113:            ; preds = %if.then13.i, %if.then9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_formats.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_depths.i) #7
  br label %cleanup

if.end22.i:                                       ; preds = %if.end15.i, %if.end.i77.if.end22.i_crit_edge
  %85 = ptrtoint ptr %mode_changed.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i = load i8, ptr %mode_changed.i.i, align 2
  %86 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %bf.cast.not.i = icmp eq i8 %86, 0
  br i1 %bf.cast.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then24.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 12
  %87 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %gamma_lut.i, align 8
  %fgamma_coeffs.i = getelementptr inbounds %struct.komeda_improc_state, ptr %call.i70, i32 0, i32 5
  call void @drm_lut_to_fgamma_coeffs(ptr noundef %88, ptr noundef %fgamma_coeffs.i) #7
  %ctm.i = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 11
  %89 = ptrtoint ptr %ctm.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctm.i, align 4
  %ctm_coeffs.i = getelementptr inbounds %struct.komeda_improc_state, ptr %call.i70, i32 0, i32 6
  call void @drm_ctm_to_coeffs(ptr noundef %90, ptr noundef %ctm_coeffs.i) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end28.i_crit_edge
  %component.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %call.i70, i32 0, i32 1
  %91 = ptrtoint ptr %component.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %component.i.i, align 4
  %max_active_inputs.i.i = getelementptr inbounds %struct.komeda_component, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %max_active_inputs.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %max_active_inputs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp1.not.i.not.i = icmp eq i8 %94, 0
  br i1 %cmp1.not.i.not.i, label %do.end.i.i, label %if.end28.i.if.end.i.i_crit_edge, !prof !68

if.end28.i.if.end.i.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end28.i.if.end.i.i_crit_edge
  %affected_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %call.i70, i32 0, i32 5
  %95 = ptrtoint ptr %affected_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %affected_inputs.i.i, align 4
  %97 = and i16 %96, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool22.not.i.i = icmp eq i16 %97, 0
  br i1 %tobool22.not.i.i, label %if.end.i.i.if.then24.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then24.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.komeda_component_state, ptr %call.i70, i32 0, i32 6, i32 0
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i.i, ptr noundef nonnull dereferenceable(8) %m_dflow, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool23.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool23.not.i.i, label %lor.lhs.false.i.i.komeda_improc_validate.exit.thread_crit_edge, label %lor.lhs.false.i.i.if.then24.i.i_crit_edge

lor.lhs.false.i.i.if.then24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i.i

lor.lhs.false.i.i.komeda_improc_validate.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_improc_validate.exit.thread

if.then24.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then24.i.i_crit_edge, %if.end.i.i.if.then24.i.i_crit_edge
  %arrayidx26.i.i = getelementptr %struct.komeda_component_state, ptr %call.i70, i32 0, i32 6, i32 0
  %98 = ptrtoint ptr %m_dflow to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %m_dflow, align 8
  %100 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %99, ptr %arrayidx26.i.i, align 4
  %changed_active_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %call.i70, i32 0, i32 4
  %101 = ptrtoint ptr %changed_active_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %changed_active_inputs.i.i, align 2
  %conv29.i.i = or i16 %102, 1
  store i16 %conv29.i.i, ptr %changed_active_inputs.i.i, align 2
  br label %komeda_improc_validate.exit.thread

komeda_improc_validate.exit.thread:               ; preds = %if.then24.i.i, %lor.lhs.false.i.i.komeda_improc_validate.exit.thread_crit_edge
  %active_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %call.i70, i32 0, i32 3
  %103 = ptrtoint ptr %active_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %active_inputs.i.i, align 4
  %conv34.i.i = or i16 %104, 1
  store i16 %conv34.i.i, ptr %active_inputs.i.i, align 4
  %105 = ptrtoint ptr %affected_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %affected_inputs.i.i, align 4
  %conv39.i.i = or i16 %106, 1
  store i16 %conv39.i.i, ptr %affected_inputs.i.i, align 4
  %107 = ptrtoint ptr %m_dflow to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %56, ptr %m_dflow, align 8
  %108 = ptrtoint ptr %output_port1.i.i58 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %output_port1.i.i58, align 4
  %ctrlr = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 15
  %109 = ptrtoint ptr %ctrlr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ctrlr, align 4
  %111 = ptrtoint ptr %kcrtc_st to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %kcrtc_st, align 8
  %113 = ptrtoint ptr %state2.i49 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %state2.i49, align 8
  %call.i81 = call fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef %110, ptr noundef %114, ptr noundef %112, ptr noundef %112) #7
  %cmp.i.i82 = icmp ugt ptr %call.i81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i82, label %if.then.i83, label %if.end.i87

komeda_improc_validate.exit:                      ; preds = %komeda_compiz_validate.exit69.thread
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %call.i70 to i32
  br label %cleanup

if.then.i83:                                      ; preds = %komeda_improc_validate.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %call.i81 to i32
  br label %cleanup

if.end.i87:                                       ; preds = %komeda_improc_validate.exit.thread
  %component.i.i84 = getelementptr inbounds %struct.komeda_component_state, ptr %call.i81, i32 0, i32 1
  %117 = ptrtoint ptr %component.i.i84 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %component.i.i84, align 4
  %max_active_inputs.i.i85 = getelementptr inbounds %struct.komeda_component, ptr %118, i32 0, i32 6
  %119 = ptrtoint ptr %max_active_inputs.i.i85 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %max_active_inputs.i.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp1.not.i.not.i86 = icmp eq i8 %120, 0
  br i1 %cmp1.not.i.not.i86, label %do.end.i.i88, label %if.end.i87.if.end.i.i91_crit_edge, !prof !68

if.end.i87.if.end.i.i91_crit_edge:                ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i91

do.end.i.i88:                                     ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 190, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i91

if.end.i.i91:                                     ; preds = %do.end.i.i88, %if.end.i87.if.end.i.i91_crit_edge
  %affected_inputs.i.i89 = getelementptr inbounds %struct.komeda_component_state, ptr %call.i81, i32 0, i32 5
  %121 = ptrtoint ptr %affected_inputs.i.i89 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %affected_inputs.i.i89, align 4
  %123 = and i16 %122, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool22.not.i.i90 = icmp eq i16 %123, 0
  br i1 %tobool22.not.i.i90, label %if.end.i.i91.if.then24.i.i99_crit_edge, label %lor.lhs.false.i.i95

if.end.i.i91.if.then24.i.i99_crit_edge:           ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i.i99

lor.lhs.false.i.i95:                              ; preds = %if.end.i.i91
  %arrayidx.i.i92 = getelementptr %struct.komeda_component_state, ptr %call.i81, i32 0, i32 6, i32 0
  %bcmp.i.i93 = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i.i92, ptr noundef nonnull dereferenceable(8) %m_dflow, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i93)
  %tobool23.not.i.i94 = icmp eq i32 %bcmp.i.i93, 0
  br i1 %tobool23.not.i.i94, label %lor.lhs.false.i.i95.komeda_component_add_input.exit.i104_crit_edge, label %lor.lhs.false.i.i95.if.then24.i.i99_crit_edge

lor.lhs.false.i.i95.if.then24.i.i99_crit_edge:    ; preds = %lor.lhs.false.i.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i.i99

lor.lhs.false.i.i95.komeda_component_add_input.exit.i104_crit_edge: ; preds = %lor.lhs.false.i.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_add_input.exit.i104

if.then24.i.i99:                                  ; preds = %lor.lhs.false.i.i95.if.then24.i.i99_crit_edge, %if.end.i.i91.if.then24.i.i99_crit_edge
  %arrayidx26.i.i96 = getelementptr %struct.komeda_component_state, ptr %call.i81, i32 0, i32 6, i32 0
  %124 = ptrtoint ptr %m_dflow to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %m_dflow, align 8
  %126 = ptrtoint ptr %arrayidx26.i.i96 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 %125, ptr %arrayidx26.i.i96, align 4
  %changed_active_inputs.i.i97 = getelementptr inbounds %struct.komeda_component_state, ptr %call.i81, i32 0, i32 4
  %127 = ptrtoint ptr %changed_active_inputs.i.i97 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %changed_active_inputs.i.i97, align 2
  %conv29.i.i98 = or i16 %128, 1
  store i16 %conv29.i.i98, ptr %changed_active_inputs.i.i97, align 2
  br label %komeda_component_add_input.exit.i104

komeda_component_add_input.exit.i104:             ; preds = %if.then24.i.i99, %lor.lhs.false.i.i95.komeda_component_add_input.exit.i104_crit_edge
  %active_inputs.i.i100 = getelementptr inbounds %struct.komeda_component_state, ptr %call.i81, i32 0, i32 3
  %129 = ptrtoint ptr %active_inputs.i.i100 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %active_inputs.i.i100, align 4
  %conv34.i.i101 = or i16 %130, 1
  store i16 %conv34.i.i101, ptr %active_inputs.i.i100, align 4
  %131 = ptrtoint ptr %affected_inputs.i.i89 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %affected_inputs.i.i89, align 4
  %conv39.i.i102 = or i16 %132, 1
  store i16 %conv39.i.i102, ptr %affected_inputs.i.i89, align 4
  %133 = ptrtoint ptr %m_dflow to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %110, ptr %m_dflow, align 8
  br label %cleanup

cleanup:                                          ; preds = %komeda_component_add_input.exit.i104, %if.then.i83, %komeda_improc_validate.exit, %komeda_improc_validate.exit.thread113, %komeda_compiz_validate.exit69, %komeda_compiz_validate.exit, %komeda_compiz_validate.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %komeda_compiz_validate.exit ], [ %call7, %komeda_compiz_validate.exit.thread.cleanup_crit_edge ], [ %61, %komeda_compiz_validate.exit69 ], [ %115, %komeda_improc_validate.exit ], [ -22, %komeda_improc_validate.exit.thread113 ], [ %116, %if.then.i83 ], [ 0, %komeda_component_add_input.exit.i104 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %s_dflow) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m_dflow) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_release_unclaimed_resources(ptr noundef %pipe, ptr nocapture noundef readonly %kcrtc_st) local_unnamed_addr #0 align 64 {
entry:
  %disabling_comps.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %tobool.not = icmp eq ptr %pipe, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %3
  %affected_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %kcrtc_st, i32 0, i32 1
  %4 = ptrtoint ptr %affected_pipes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %affected_pipes, align 4
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %active_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %kcrtc_st, i32 0, i32 2
  %6 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_pipes, align 8
  %and4 = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @drm_atomic_get_new_private_obj_state(ptr noundef %1, ptr noundef nonnull %pipe) #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call.i.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef nonnull %pipe) #7
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else.if.end8_crit_edge, label %if.end.i

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i:                                         ; preds = %if.else
  %active_comps.i = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %active_comps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_comps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not.i = icmp eq i32 %9, 0
  br i1 %tobool8.not.i, label %if.end21.critedge.i, label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %11) #7
  br label %do.end

if.end21.critedge.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %crtc2.i = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %crtc2.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end21.critedge.i, %if.else.if.end8_crit_edge, %if.then6
  %st.0 = phi ptr [ %call.i, %if.then6 ], [ %call.i.i, %if.else.if.end8_crit_edge ], [ %call.i.i, %if.end21.critedge.i ]
  %tobool.not.i = icmp eq ptr %st.0, null
  %cmp.i = icmp ugt ptr %st.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end8.do.end_crit_edge, label %if.end33, !prof !68

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %if.end8.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1266, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %st.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %st.0, align 4
  %state2.i = getelementptr inbounds %struct.drm_private_obj, ptr %pipe, i32 0, i32 2
  %15 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %disabling_comps.i) #7
  %tobool.not.i45 = icmp eq ptr %16, null
  br i1 %tobool.not.i45, label %do.end.i, label %if.end33.if.end.i48_crit_edge, !prof !68

if.end33.if.end.i48_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i48

do.end.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1237, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i48

if.end.i48:                                       ; preds = %do.end.i, %if.end33.if.end.i48_crit_edge
  %active_comps.i46 = getelementptr inbounds %struct.komeda_pipeline_state, ptr %st.0, i32 0, i32 3
  %17 = ptrtoint ptr %active_comps.i46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_comps.i46, align 4
  %neg.i = xor i32 %18, -1
  %active_comps24.i = getelementptr inbounds %struct.komeda_pipeline_state, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %active_comps24.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_comps24.i, align 4
  %and.i = and i32 %20, %neg.i
  %21 = ptrtoint ptr %disabling_comps.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %disabling_comps.i, align 4
  %call.i47 = call i32 @_find_next_bit_be(ptr noundef nonnull %disabling_comps.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i47)
  %cmp67.i = icmp ult i32 %call.i47, 32
  br i1 %cmp67.i, label %for.body.lr.ph.i, label %if.end.i48.komeda_pipeline_unbound_components.exit_crit_edge

if.end.i48.komeda_pipeline_unbound_components.exit_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_pipeline_unbound_components.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i48
  %crtc.i = getelementptr inbounds %struct.komeda_pipeline_state, ptr %st.0, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end50.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.068.i = phi i32 [ %call.i47, %for.body.lr.ph.i ], [ %call58.i, %if.end50.i.for.body.i_crit_edge ]
  %call25.i = call ptr @komeda_pipeline_get_component(ptr noundef nonnull %pipe, i32 noundef %id.068.i) #7
  %22 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc.i, align 4
  %pipeline.i.i = getelementptr inbounds %struct.komeda_component, ptr %call25.i, i32 0, i32 1
  %24 = ptrtoint ptr %pipeline.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipeline.i.i, align 4
  %call.i.i49 = call fastcc ptr @komeda_pipeline_get_state_and_set_crtc(ptr noundef %25, ptr noundef %14, ptr noundef %23) #7
  %cmp.i.i.i = icmp ugt ptr %call.i.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %for.body.i.komeda_component_get_state_and_set_user.exit.i_crit_edge, label %if.end.i.i

for.body.i.komeda_component_get_state_and_set_user.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_get_state_and_set_user.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %26 = ptrtoint ptr %pipeline.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pipeline.i.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.drm_private_obj, ptr %27, i32 0, i32 1
  %call.i.i.i.i.i = call zeroext i1 @mutex_is_locked(ptr noundef %lock.i.i.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.komeda_component_get_state.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !69

if.end.i.i.komeda_component_get_state.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_get_state.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 104, i32 noundef 9, ptr noundef null) #7
  br label %komeda_component_get_state.exit.i.i

komeda_component_get_state.exit.i.i:              ; preds = %do.end.i.i.i, %if.end.i.i.komeda_component_get_state.exit.i.i_crit_edge
  %call21.i.i.i = call ptr @drm_atomic_get_private_obj_state(ptr noundef %14, ptr noundef %call25.i) #7
  %cmp.i26.i.i = icmp ugt ptr %call21.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i.i, label %komeda_component_get_state.exit.i.i.komeda_component_get_state_and_set_user.exit.i_crit_edge, label %if.end6.i.i

komeda_component_get_state.exit.i.i.komeda_component_get_state_and_set_user.exit.i_crit_edge: ; preds = %komeda_component_get_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_get_state_and_set_user.exit.i

if.end6.i.i:                                      ; preds = %komeda_component_get_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = getelementptr inbounds %struct.komeda_component_state, ptr %call21.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 4
  br label %komeda_component_get_state_and_set_user.exit.i

komeda_component_get_state_and_set_user.exit.i:   ; preds = %if.end6.i.i, %komeda_component_get_state.exit.i.i.komeda_component_get_state_and_set_user.exit.i_crit_edge, %for.body.i.komeda_component_get_state_and_set_user.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call21.i.i.i, %komeda_component_get_state.exit.i.i.komeda_component_get_state_and_set_user.exit.i_crit_edge ], [ %call21.i.i.i, %if.end6.i.i ], [ %call.i.i49, %for.body.i.komeda_component_get_state_and_set_user.exit.i_crit_edge ]
  %cmp.i.i50 = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i50, label %do.end44.i, label %komeda_component_get_state_and_set_user.exit.i.if.end50.i_crit_edge, !prof !68

komeda_component_get_state_and_set_user.exit.i.if.end50.i_crit_edge: ; preds = %komeda_component_get_state_and_set_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

do.end44.i:                                       ; preds = %komeda_component_get_state_and_set_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1246, i32 noundef 9, ptr noundef null) #7
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %komeda_component_get_state_and_set_user.exit.i.if.end50.i_crit_edge
  %add.i = add nuw nsw i32 %id.068.i, 1
  %call58.i = call i32 @_find_next_bit_be(ptr noundef nonnull %disabling_comps.i, i32 noundef 32, i32 noundef %add.i) #7
  %cmp.i51 = icmp ult i32 %call58.i, 32
  br i1 %cmp.i51, label %if.end50.i.for.body.i_crit_edge, label %if.end50.i.komeda_pipeline_unbound_components.exit_crit_edge

if.end50.i.komeda_pipeline_unbound_components.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_pipeline_unbound_components.exit

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

komeda_pipeline_unbound_components.exit:          ; preds = %if.end50.i.komeda_pipeline_unbound_components.exit_crit_edge, %if.end.i48.komeda_pipeline_unbound_components.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disabling_comps.i) #7
  br label %cleanup

cleanup:                                          ; preds = %komeda_pipeline_unbound_components.exit, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %komeda_pipeline_unbound_components.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @komeda_pipeline_get_state_and_set_crtc(ptr noundef %pipe, ptr noundef %state, ptr noundef %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %pipe) #7
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc2 = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc2, align 4
  %tobool.not.i = icmp ne ptr %crtc, null
  %tobool1.not.i = icmp ne ptr %1, null
  %cmp.i38 = icmp ne ptr %1, %crtc
  %not.or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  %spec.select.i = and i1 %cmp.i38, %not.or.cond.i
  br i1 %spec.select.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %5) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then15.critedge

land.lhs.true:                                    ; preds = %if.end7
  %active_comps = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %active_comps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_comps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end21.critedge, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %id10 = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 3
  %8 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id10, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %9) #7
  br label %cleanup

if.then15.critedge:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %crtc2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %crtc, ptr %crtc2, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %11 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %13 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %14, i32 3
  %15 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new_state.i, align 4
  %id17 = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 3
  %17 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id17, align 4
  %shl = shl nuw i32 1, %18
  %active_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_pipes, align 8
  %or = or i32 %20, %shl
  store i32 %or, ptr %active_pipes, align 8
  %21 = load i32, ptr %id17, align 4
  %shl19 = shl nuw i32 1, %21
  %affected_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %affected_pipes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %affected_pipes, align 4
  %or20 = or i32 %23, %shl19
  store i32 %or20, ptr %affected_pipes, align 4
  br label %cleanup

if.end21.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %crtc2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %crtc2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21.critedge, %if.then15.critedge, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then4 ], [ inttoptr (i32 -16 to ptr), %if.then9 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end21.critedge ], [ %call.i, %if.then15.critedge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @komeda_pipeline_disable(ptr noundef %pipe, ptr noundef %old_state) local_unnamed_addr #0 align 64 {
entry:
  %disabling_comps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %disabling_comps) #7
  %call.i = tail call ptr @drm_atomic_get_old_private_obj_state(ptr noundef %old_state, ptr noundef %pipe) #7
  %active_comps = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %active_comps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_comps, align 4
  %standalone_disabled_comps = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 5
  %2 = ptrtoint ptr %standalone_disabled_comps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %standalone_disabled_comps, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %3, %1
  %spec.select = select i1 %tobool.not, i32 %and3, i32 %and
  %4 = ptrtoint ptr %disabling_comps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %disabling_comps, align 4
  %id4 = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 3
  %5 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %1, i32 noundef %spec.select) #7
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %disabling_comps, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call6)
  %cmp31 = icmp ult i32 %call6, 32
  br i1 %cmp31, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %id.032 = phi i32 [ %call10, %for.body.for.body_crit_edge ], [ %call6, %entry.for.body_crit_edge ]
  %call7 = call ptr @komeda_pipeline_get_component(ptr noundef %pipe, i32 noundef %id.032) #7
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %call7, i32 0, i32 2
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %active_inputs = getelementptr inbounds %struct.komeda_component_state, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %active_inputs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %active_inputs, align 4
  %changed_active_inputs = getelementptr inbounds %struct.komeda_component_state, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %changed_active_inputs to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %changed_active_inputs, align 2
  %or30 = or i16 %12, %10
  store i16 %or30, ptr %changed_active_inputs, align 2
  %funcs = getelementptr inbounds %struct.komeda_component, ptr %call7, i32 0, i32 10
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %disable = getelementptr inbounds %struct.komeda_component_funcs, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disable, align 4
  call void %16(ptr noundef %call7) #7
  %add = add nuw nsw i32 %id.032, 1
  %call10 = call i32 @_find_next_bit_be(ptr noundef nonnull %disabling_comps, i32 noundef 32, i32 noundef %add) #7
  %cmp = icmp ult i32 %call10, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %17 = ptrtoint ptr %disabling_comps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %disabling_comps, align 4
  %neg11 = xor i32 %18, -1
  %19 = ptrtoint ptr %active_comps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_comps, align 4
  %and13 = and i32 %20, %neg11
  store i32 %and13, ptr %active_comps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool15 = icmp ne i32 %and13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %disabling_comps) #7
  ret i1 %tobool15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_pipeline_get_component(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_pipeline_update(ptr noundef %pipe, ptr noundef %old_state) local_unnamed_addr #0 align 64 {
entry:
  %changed_comps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_private_obj, ptr %pipe, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changed_comps) #7
  %call.i = tail call ptr @drm_atomic_get_old_private_obj_state(ptr noundef %old_state, ptr noundef %pipe) #7
  %active_comps = getelementptr inbounds %struct.komeda_pipeline_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %active_comps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_comps, align 4
  %active_comps1 = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %active_comps1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_comps1, align 4
  %or = or i32 %5, %3
  %6 = ptrtoint ptr %changed_comps to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %changed_comps, align 4
  %id2 = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 3
  %7 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %8, i32 noundef %3, i32 noundef %or) #7
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %changed_comps, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call4)
  %cmp27 = icmp ult i32 %call4, 32
  br i1 %cmp27, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %id.028 = phi i32 [ %call14, %for.inc.for.body_crit_edge ], [ %call4, %entry.for.body_crit_edge ]
  %call5 = call ptr @komeda_pipeline_get_component(ptr noundef %pipe, i32 noundef %id.028) #7
  %9 = ptrtoint ptr %active_comps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_comps, align 4
  %id7 = getelementptr inbounds %struct.komeda_component, ptr %call5, i32 0, i32 4
  %11 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id7, align 4
  %shl = shl nuw i32 1, %12
  %and = and i32 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %funcs13 = getelementptr inbounds %struct.komeda_component, ptr %call5, i32 0, i32 10
  %13 = ptrtoint ptr %funcs13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs13, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %update = getelementptr inbounds %struct.komeda_component_funcs, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %update, align 4
  %state10 = getelementptr inbounds %struct.drm_private_obj, ptr %call5, i32 0, i32 2
  %17 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state10, align 4
  call void %16(ptr noundef %call5, ptr noundef %18) #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %disable = getelementptr inbounds %struct.komeda_component_funcs, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disable, align 4
  call void %20(ptr noundef %call5) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %add = add nuw nsw i32 %id.028, 1
  %call14 = call i32 @_find_next_bit_be(ptr noundef nonnull %changed_comps, i32 noundef 32, i32 noundef %add) #7
  %cmp = icmp ult i32 %call14, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changed_comps) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @komeda_layer_check_cfg(ptr nocapture noundef readonly %layer, ptr noundef %kfb, ptr nocapture noundef readonly %dflow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %layer_type = getelementptr inbounds %struct.komeda_layer, ptr %layer, i32 0, i32 3
  %0 = ptrtoint ptr %layer_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %layer_type, align 4
  %rot = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 15
  %2 = ptrtoint ptr %rot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rot, align 4
  %call = tail call zeroext i1 @komeda_fb_is_layer_supported(ptr noundef %kfb, i32 noundef %1, i32 noundef %3) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.komeda_component, ptr %layer, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp eq i32 %5, 7
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %out_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 5
  %6 = ptrtoint ptr %out_x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_x, align 4
  %out_y = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 6
  %8 = ptrtoint ptr %out_y to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_y, align 4
  %out_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 7
  %10 = ptrtoint ptr %out_w to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_w, align 4
  %out_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %12 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_h, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %in_x = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 1
  %14 = ptrtoint ptr %in_x to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %in_x, align 4
  %conv = zext i16 %15 to i32
  %in_y = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 2
  %16 = ptrtoint ptr %in_y to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %in_y, align 2
  %conv2 = zext i16 %17 to i32
  %in_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %18 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %in_w, align 4
  %conv3 = zext i16 %19 to i32
  %in_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %20 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %in_h, align 2
  %conv4 = zext i16 %21 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %src_x.0 = phi i32 [ %7, %if.then1 ], [ %conv, %if.else ]
  %src_y.0 = phi i32 [ %9, %if.then1 ], [ %conv2, %if.else ]
  %src_w.0 = phi i32 [ %11, %if.then1 ], [ %conv3, %if.else ]
  %src_h.0 = phi i32 [ %13, %if.then1 ], [ %conv4, %if.else ]
  %call6 = tail call i32 @komeda_fb_check_src_coords(ptr noundef %kfb, i32 noundef %src_x.0, i32 noundef %src_y.0, i32 noundef %src_w.0, i32 noundef %src_h.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %hsize_in = getelementptr inbounds %struct.komeda_layer, ptr %layer, i32 0, i32 1
  %22 = ptrtoint ptr %hsize_in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hsize_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %src_w.0)
  %cmp.not.i = icmp ugt i32 %23, %src_w.0
  br i1 %cmp.not.i, label %if.end8.if.then10_crit_edge, label %in_range.exit

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

in_range.exit:                                    ; preds = %if.end8
  %end.i = getelementptr inbounds %struct.komeda_layer, ptr %layer, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %src_w.0)
  %cmp1.i.not = icmp ult i32 %25, %src_w.0
  br i1 %cmp1.i.not, label %in_range.exit.if.then10_crit_edge, label %if.end11

in_range.exit.if.then10_crit_edge:                ; preds = %in_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %in_range.exit.if.then10_crit_edge, %if.end8.if.then10_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %src_w.0) #7
  br label %cleanup

if.end11:                                         ; preds = %in_range.exit
  %vsize_in = getelementptr inbounds %struct.komeda_layer, ptr %layer, i32 0, i32 2
  %26 = ptrtoint ptr %vsize_in to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vsize_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %src_h.0)
  %cmp.not.i65 = icmp ugt i32 %27, %src_h.0
  br i1 %cmp.not.i65, label %if.end11.if.then13_crit_edge, label %in_range.exit69

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

in_range.exit69:                                  ; preds = %if.end11
  %end.i66 = getelementptr inbounds %struct.komeda_layer, ptr %layer, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %end.i66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %src_h.0)
  %cmp1.i67.not = icmp ult i32 %29, %src_h.0
  br i1 %cmp1.i67.not, label %in_range.exit69.if.then13_crit_edge, label %if.end14

in_range.exit69.if.then13_crit_edge:              ; preds = %in_range.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %in_range.exit69.if.then13_crit_edge, %if.end11.if.then13_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %src_h.0) #7
  br label %cleanup

if.end14:                                         ; preds = %in_range.exit69
  %30 = ptrtoint ptr %rot to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rot, align 4
  %and.i = and i32 %31, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %in_h18 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %in_w21 = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %line_sz.0.in.in = select i1 %tobool.i.not, ptr %in_w21, ptr %in_h18
  %32 = ptrtoint ptr %line_sz.0.in.in to i32
  call void @__asan_load2_noabort(i32 %32)
  %line_sz.0.in = load i16, ptr %line_sz.0.in.in, align 2
  %line_sz.0 = zext i16 %line_sz.0.in to i32
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 4
  %33 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %format, align 8
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hsub, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp26 = icmp ugt i8 %36, 1
  %yuv_line_sz = getelementptr inbounds %struct.komeda_layer, ptr %layer, i32 0, i32 5
  %line_sz30 = getelementptr inbounds %struct.komeda_layer, ptr %layer, i32 0, i32 4
  %max_line_sz.0.in = select i1 %cmp26, ptr %yuv_line_sz, ptr %line_sz30
  %37 = ptrtoint ptr %max_line_sz.0.in to i32
  call void @__asan_load4_noabort(i32 %37)
  %max_line_sz.0 = load i32, ptr %max_line_sz.0.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_line_sz.0, i32 %line_sz.0)
  %cmp32 = icmp ult i32 %max_line_sz.0, %line_sz.0
  br i1 %cmp32, label %if.then34, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %line_sz.0, i32 noundef %max_line_sz.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end14.cleanup_crit_edge, %if.then13, %if.then10, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then34 ], [ -22, %if.then13 ], [ -22, %if.then10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @komeda_component_get_state_and_set_user(ptr noundef %c, ptr noundef %state, ptr noundef %user, ptr noundef %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipeline, align 4
  %call = tail call fastcc ptr @komeda_pipeline_get_state_and_set_crtc(ptr noundef %1, ptr noundef %state, ptr noundef %crtc)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipeline, align 4
  %lock.i = getelementptr inbounds %struct.drm_private_obj, ptr %3, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock.i) #7
  br i1 %call.i.i.i, label %if.end.komeda_component_get_state.exit_crit_edge, label %do.end.i, !prof !69

if.end.komeda_component_get_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %komeda_component_get_state.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 104, i32 noundef 9, ptr noundef null) #7
  br label %komeda_component_get_state.exit

komeda_component_get_state.exit:                  ; preds = %do.end.i, %if.end.komeda_component_get_state.exit_crit_edge
  %call21.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %c) #7
  %cmp.i26 = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %komeda_component_get_state.exit.cleanup_crit_edge, label %if.end6

komeda_component_get_state.exit.cleanup_crit_edge: ; preds = %komeda_component_get_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %komeda_component_get_state.exit
  %4 = getelementptr inbounds %struct.komeda_component_state, ptr %call21.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp ne ptr %user, null
  %tobool1.not.i = icmp ne ptr %6, null
  %cmp.i27 = icmp ne ptr %6, %user
  %not.or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  %spec.select.i = and i1 %cmp.i27, %not.or.cond.i
  br i1 %spec.select.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.8, ptr noundef %name) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %user, ptr %4, align 4
  %tobool.not = icmp eq ptr %user, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.then11

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %9
  %active_comps = getelementptr inbounds %struct.komeda_pipeline_state, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %active_comps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_comps, align 4
  %or = or i32 %11, %shl
  store i32 %or, ptr %active_comps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end10.cleanup_crit_edge, %if.then8, %komeda_component_get_state.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then8 ], [ %call21.i, %komeda_component_get_state.exit.cleanup_crit_edge ], [ %call21.i, %if.then11 ], [ %call21.i, %if.end10.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_fb_get_pixel_addr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @komeda_fb_is_layer_supported(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_fb_check_src_coords(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_pipeline_get_first_component(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_crtc_get_aclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_crtc_get_color_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_lut_to_fgamma_coeffs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_ctm_to_coeffs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 891, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 1098, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 1266, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 1301, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 1342, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 309, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 314, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 329, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 171, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 248, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 520, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 457, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 463, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 477, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 483, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 495, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 683, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 214, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 220, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 623, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 628, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 634, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 573, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 578, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 584, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 786, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 795, i32 4}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 73, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_pipeline_state.c", i32 80, i32 3}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{!"auto-init"}
!71 = !{i32 0, i32 33}
