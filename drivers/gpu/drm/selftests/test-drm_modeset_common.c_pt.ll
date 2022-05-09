; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/selftests/test-drm_modeset_common.c_pt.bc'
source_filename = "../drivers/gpu/drm/selftests/test-drm_modeset_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.drm_selftest = type { i8, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.atomic_t = type { i32 }

@__param_str_igt__9__drm_rect_clip_scaled_div_by_zero = internal constant [58 x i8] c"test_drm_modeset.igt__9__drm_rect_clip_scaled_div_by_zero\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@selftests = internal global { [32 x %struct.drm_selftest], [96 x i8] } { [32 x %struct.drm_selftest] [%struct.drm_selftest { i8 0, ptr @.str, ptr @igt_drm_rect_clip_scaled_div_by_zero }, %struct.drm_selftest { i8 0, ptr @.str.1, ptr @igt_drm_rect_clip_scaled_not_clipped }, %struct.drm_selftest { i8 0, ptr @.str.2, ptr @igt_drm_rect_clip_scaled_clipped }, %struct.drm_selftest { i8 0, ptr @.str.3, ptr @igt_drm_rect_clip_scaled_signed_vs_unsigned }, %struct.drm_selftest { i8 0, ptr @.str.4, ptr @igt_check_plane_state }, %struct.drm_selftest { i8 0, ptr @.str.5, ptr @igt_check_drm_format_block_width }, %struct.drm_selftest { i8 0, ptr @.str.6, ptr @igt_check_drm_format_block_height }, %struct.drm_selftest { i8 0, ptr @.str.7, ptr @igt_check_drm_format_min_pitch }, %struct.drm_selftest { i8 0, ptr @.str.8, ptr @igt_check_drm_framebuffer_create }, %struct.drm_selftest { i8 0, ptr @.str.9, ptr @igt_damage_iter_no_damage }, %struct.drm_selftest { i8 0, ptr @.str.10, ptr @igt_damage_iter_no_damage_fractional_src }, %struct.drm_selftest { i8 0, ptr @.str.11, ptr @igt_damage_iter_no_damage_src_moved }, %struct.drm_selftest { i8 0, ptr @.str.12, ptr @igt_damage_iter_no_damage_fractional_src_moved }, %struct.drm_selftest { i8 0, ptr @.str.13, ptr @igt_damage_iter_no_damage_not_visible }, %struct.drm_selftest { i8 0, ptr @.str.14, ptr @igt_damage_iter_no_damage_no_crtc }, %struct.drm_selftest { i8 0, ptr @.str.15, ptr @igt_damage_iter_no_damage_no_fb }, %struct.drm_selftest { i8 0, ptr @.str.16, ptr @igt_damage_iter_simple_damage }, %struct.drm_selftest { i8 0, ptr @.str.17, ptr @igt_damage_iter_single_damage }, %struct.drm_selftest { i8 0, ptr @.str.18, ptr @igt_damage_iter_single_damage_intersect_src }, %struct.drm_selftest { i8 0, ptr @.str.19, ptr @igt_damage_iter_single_damage_outside_src }, %struct.drm_selftest { i8 0, ptr @.str.20, ptr @igt_damage_iter_single_damage_fractional_src }, %struct.drm_selftest { i8 0, ptr @.str.21, ptr @igt_damage_iter_single_damage_intersect_fractional_src }, %struct.drm_selftest { i8 0, ptr @.str.22, ptr @igt_damage_iter_single_damage_outside_fractional_src }, %struct.drm_selftest { i8 0, ptr @.str.23, ptr @igt_damage_iter_single_damage_src_moved }, %struct.drm_selftest { i8 0, ptr @.str.24, ptr @igt_damage_iter_single_damage_fractional_src_moved }, %struct.drm_selftest { i8 0, ptr @.str.25, ptr @igt_damage_iter_damage }, %struct.drm_selftest { i8 0, ptr @.str.26, ptr @igt_damage_iter_damage_one_intersect }, %struct.drm_selftest { i8 0, ptr @.str.27, ptr @igt_damage_iter_damage_one_outside }, %struct.drm_selftest { i8 0, ptr @.str.28, ptr @igt_damage_iter_damage_src_moved }, %struct.drm_selftest { i8 0, ptr @.str.29, ptr @igt_damage_iter_damage_not_visible }, %struct.drm_selftest { i8 0, ptr @.str.30, ptr @igt_dp_mst_calc_pbn_mode }, %struct.drm_selftest { i8 0, ptr @.str.31, ptr @igt_dp_mst_sideband_msg_req_decode }], [96 x i8] zeroinitializer }, align 32
@__param_igt__9__drm_rect_clip_scaled_div_by_zero = internal constant %struct.kernel_param { ptr @__param_str_igt__9__drm_rect_clip_scaled_div_by_zero, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr @selftests } }, section "__param", align 4
@__UNIQUE_ID_igt__9__drm_rect_clip_scaled_div_by_zerotype106 = internal constant [72 x i8] c"test_drm_modeset.parmtype=igt__9__drm_rect_clip_scaled_div_by_zero:bool\00", section ".modinfo", align 1
@__param_str_igt__10__drm_rect_clip_scaled_not_clipped = internal constant [59 x i8] c"test_drm_modeset.igt__10__drm_rect_clip_scaled_not_clipped\00", align 1
@__param_igt__10__drm_rect_clip_scaled_not_clipped = internal constant %struct.kernel_param { ptr @__param_str_igt__10__drm_rect_clip_scaled_not_clipped, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_igt__10__drm_rect_clip_scaled_not_clippedtype107 = internal constant [73 x i8] c"test_drm_modeset.parmtype=igt__10__drm_rect_clip_scaled_not_clipped:bool\00", section ".modinfo", align 1
@__param_str_igt__11__drm_rect_clip_scaled_clipped = internal constant [55 x i8] c"test_drm_modeset.igt__11__drm_rect_clip_scaled_clipped\00", align 1
@__param_igt__11__drm_rect_clip_scaled_clipped = internal constant %struct.kernel_param { ptr @__param_str_igt__11__drm_rect_clip_scaled_clipped, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_igt__11__drm_rect_clip_scaled_clippedtype108 = internal constant [69 x i8] c"test_drm_modeset.parmtype=igt__11__drm_rect_clip_scaled_clipped:bool\00", section ".modinfo", align 1
@__param_str_igt__12__drm_rect_clip_scaled_signed_vs_unsigned = internal constant [66 x i8] c"test_drm_modeset.igt__12__drm_rect_clip_scaled_signed_vs_unsigned\00", align 1
@__param_igt__12__drm_rect_clip_scaled_signed_vs_unsigned = internal constant %struct.kernel_param { ptr @__param_str_igt__12__drm_rect_clip_scaled_signed_vs_unsigned, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 36) } }, section "__param", align 4
@__UNIQUE_ID_igt__12__drm_rect_clip_scaled_signed_vs_unsignedtype109 = internal constant [80 x i8] c"test_drm_modeset.parmtype=igt__12__drm_rect_clip_scaled_signed_vs_unsigned:bool\00", section ".modinfo", align 1
@__param_str_igt__13__check_plane_state = internal constant [44 x i8] c"test_drm_modeset.igt__13__check_plane_state\00", align 1
@__param_igt__13__check_plane_state = internal constant %struct.kernel_param { ptr @__param_str_igt__13__check_plane_state, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 48) } }, section "__param", align 4
@__UNIQUE_ID_igt__13__check_plane_statetype110 = internal constant [58 x i8] c"test_drm_modeset.parmtype=igt__13__check_plane_state:bool\00", section ".modinfo", align 1
@__param_str_igt__14__check_drm_format_block_width = internal constant [55 x i8] c"test_drm_modeset.igt__14__check_drm_format_block_width\00", align 1
@__param_igt__14__check_drm_format_block_width = internal constant %struct.kernel_param { ptr @__param_str_igt__14__check_drm_format_block_width, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 60) } }, section "__param", align 4
@__UNIQUE_ID_igt__14__check_drm_format_block_widthtype111 = internal constant [69 x i8] c"test_drm_modeset.parmtype=igt__14__check_drm_format_block_width:bool\00", section ".modinfo", align 1
@__param_str_igt__15__check_drm_format_block_height = internal constant [56 x i8] c"test_drm_modeset.igt__15__check_drm_format_block_height\00", align 1
@__param_igt__15__check_drm_format_block_height = internal constant %struct.kernel_param { ptr @__param_str_igt__15__check_drm_format_block_height, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 72) } }, section "__param", align 4
@__UNIQUE_ID_igt__15__check_drm_format_block_heighttype112 = internal constant [70 x i8] c"test_drm_modeset.parmtype=igt__15__check_drm_format_block_height:bool\00", section ".modinfo", align 1
@__param_str_igt__16__check_drm_format_min_pitch = internal constant [53 x i8] c"test_drm_modeset.igt__16__check_drm_format_min_pitch\00", align 1
@__param_igt__16__check_drm_format_min_pitch = internal constant %struct.kernel_param { ptr @__param_str_igt__16__check_drm_format_min_pitch, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 84) } }, section "__param", align 4
@__UNIQUE_ID_igt__16__check_drm_format_min_pitchtype113 = internal constant [67 x i8] c"test_drm_modeset.parmtype=igt__16__check_drm_format_min_pitch:bool\00", section ".modinfo", align 1
@__param_str_igt__17__check_drm_framebuffer_create = internal constant [55 x i8] c"test_drm_modeset.igt__17__check_drm_framebuffer_create\00", align 1
@__param_igt__17__check_drm_framebuffer_create = internal constant %struct.kernel_param { ptr @__param_str_igt__17__check_drm_framebuffer_create, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 96) } }, section "__param", align 4
@__UNIQUE_ID_igt__17__check_drm_framebuffer_createtype114 = internal constant [69 x i8] c"test_drm_modeset.parmtype=igt__17__check_drm_framebuffer_create:bool\00", section ".modinfo", align 1
@__param_str_igt__18__damage_iter_no_damage = internal constant [48 x i8] c"test_drm_modeset.igt__18__damage_iter_no_damage\00", align 1
@__param_igt__18__damage_iter_no_damage = internal constant %struct.kernel_param { ptr @__param_str_igt__18__damage_iter_no_damage, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 108) } }, section "__param", align 4
@__UNIQUE_ID_igt__18__damage_iter_no_damagetype115 = internal constant [62 x i8] c"test_drm_modeset.parmtype=igt__18__damage_iter_no_damage:bool\00", section ".modinfo", align 1
@__param_str_igt__19__damage_iter_no_damage_fractional_src = internal constant [63 x i8] c"test_drm_modeset.igt__19__damage_iter_no_damage_fractional_src\00", align 1
@__param_igt__19__damage_iter_no_damage_fractional_src = internal constant %struct.kernel_param { ptr @__param_str_igt__19__damage_iter_no_damage_fractional_src, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 120) } }, section "__param", align 4
@__UNIQUE_ID_igt__19__damage_iter_no_damage_fractional_srctype116 = internal constant [77 x i8] c"test_drm_modeset.parmtype=igt__19__damage_iter_no_damage_fractional_src:bool\00", section ".modinfo", align 1
@__param_str_igt__20__damage_iter_no_damage_src_moved = internal constant [58 x i8] c"test_drm_modeset.igt__20__damage_iter_no_damage_src_moved\00", align 1
@__param_igt__20__damage_iter_no_damage_src_moved = internal constant %struct.kernel_param { ptr @__param_str_igt__20__damage_iter_no_damage_src_moved, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 132) } }, section "__param", align 4
@__UNIQUE_ID_igt__20__damage_iter_no_damage_src_movedtype117 = internal constant [72 x i8] c"test_drm_modeset.parmtype=igt__20__damage_iter_no_damage_src_moved:bool\00", section ".modinfo", align 1
@__param_str_igt__21__damage_iter_no_damage_fractional_src_moved = internal constant [69 x i8] c"test_drm_modeset.igt__21__damage_iter_no_damage_fractional_src_moved\00", align 1
@__param_igt__21__damage_iter_no_damage_fractional_src_moved = internal constant %struct.kernel_param { ptr @__param_str_igt__21__damage_iter_no_damage_fractional_src_moved, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 144) } }, section "__param", align 4
@__UNIQUE_ID_igt__21__damage_iter_no_damage_fractional_src_movedtype118 = internal constant [83 x i8] c"test_drm_modeset.parmtype=igt__21__damage_iter_no_damage_fractional_src_moved:bool\00", section ".modinfo", align 1
@__param_str_igt__22__damage_iter_no_damage_not_visible = internal constant [60 x i8] c"test_drm_modeset.igt__22__damage_iter_no_damage_not_visible\00", align 1
@__param_igt__22__damage_iter_no_damage_not_visible = internal constant %struct.kernel_param { ptr @__param_str_igt__22__damage_iter_no_damage_not_visible, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 156) } }, section "__param", align 4
@__UNIQUE_ID_igt__22__damage_iter_no_damage_not_visibletype119 = internal constant [74 x i8] c"test_drm_modeset.parmtype=igt__22__damage_iter_no_damage_not_visible:bool\00", section ".modinfo", align 1
@__param_str_igt__23__damage_iter_no_damage_no_crtc = internal constant [56 x i8] c"test_drm_modeset.igt__23__damage_iter_no_damage_no_crtc\00", align 1
@__param_igt__23__damage_iter_no_damage_no_crtc = internal constant %struct.kernel_param { ptr @__param_str_igt__23__damage_iter_no_damage_no_crtc, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 168) } }, section "__param", align 4
@__UNIQUE_ID_igt__23__damage_iter_no_damage_no_crtctype120 = internal constant [70 x i8] c"test_drm_modeset.parmtype=igt__23__damage_iter_no_damage_no_crtc:bool\00", section ".modinfo", align 1
@__param_str_igt__24__damage_iter_no_damage_no_fb = internal constant [54 x i8] c"test_drm_modeset.igt__24__damage_iter_no_damage_no_fb\00", align 1
@__param_igt__24__damage_iter_no_damage_no_fb = internal constant %struct.kernel_param { ptr @__param_str_igt__24__damage_iter_no_damage_no_fb, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 180) } }, section "__param", align 4
@__UNIQUE_ID_igt__24__damage_iter_no_damage_no_fbtype121 = internal constant [68 x i8] c"test_drm_modeset.parmtype=igt__24__damage_iter_no_damage_no_fb:bool\00", section ".modinfo", align 1
@__param_str_igt__25__damage_iter_simple_damage = internal constant [52 x i8] c"test_drm_modeset.igt__25__damage_iter_simple_damage\00", align 1
@__param_igt__25__damage_iter_simple_damage = internal constant %struct.kernel_param { ptr @__param_str_igt__25__damage_iter_simple_damage, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 192) } }, section "__param", align 4
@__UNIQUE_ID_igt__25__damage_iter_simple_damagetype122 = internal constant [66 x i8] c"test_drm_modeset.parmtype=igt__25__damage_iter_simple_damage:bool\00", section ".modinfo", align 1
@__param_str_igt__26__damage_iter_single_damage = internal constant [52 x i8] c"test_drm_modeset.igt__26__damage_iter_single_damage\00", align 1
@__param_igt__26__damage_iter_single_damage = internal constant %struct.kernel_param { ptr @__param_str_igt__26__damage_iter_single_damage, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 204) } }, section "__param", align 4
@__UNIQUE_ID_igt__26__damage_iter_single_damagetype123 = internal constant [66 x i8] c"test_drm_modeset.parmtype=igt__26__damage_iter_single_damage:bool\00", section ".modinfo", align 1
@__param_str_igt__27__damage_iter_single_damage_intersect_src = internal constant [66 x i8] c"test_drm_modeset.igt__27__damage_iter_single_damage_intersect_src\00", align 1
@__param_igt__27__damage_iter_single_damage_intersect_src = internal constant %struct.kernel_param { ptr @__param_str_igt__27__damage_iter_single_damage_intersect_src, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 216) } }, section "__param", align 4
@__UNIQUE_ID_igt__27__damage_iter_single_damage_intersect_srctype124 = internal constant [80 x i8] c"test_drm_modeset.parmtype=igt__27__damage_iter_single_damage_intersect_src:bool\00", section ".modinfo", align 1
@__param_str_igt__28__damage_iter_single_damage_outside_src = internal constant [64 x i8] c"test_drm_modeset.igt__28__damage_iter_single_damage_outside_src\00", align 1
@__param_igt__28__damage_iter_single_damage_outside_src = internal constant %struct.kernel_param { ptr @__param_str_igt__28__damage_iter_single_damage_outside_src, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 228) } }, section "__param", align 4
@__UNIQUE_ID_igt__28__damage_iter_single_damage_outside_srctype125 = internal constant [78 x i8] c"test_drm_modeset.parmtype=igt__28__damage_iter_single_damage_outside_src:bool\00", section ".modinfo", align 1
@__param_str_igt__29__damage_iter_single_damage_fractional_src = internal constant [67 x i8] c"test_drm_modeset.igt__29__damage_iter_single_damage_fractional_src\00", align 1
@__param_igt__29__damage_iter_single_damage_fractional_src = internal constant %struct.kernel_param { ptr @__param_str_igt__29__damage_iter_single_damage_fractional_src, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 240) } }, section "__param", align 4
@__UNIQUE_ID_igt__29__damage_iter_single_damage_fractional_srctype126 = internal constant [81 x i8] c"test_drm_modeset.parmtype=igt__29__damage_iter_single_damage_fractional_src:bool\00", section ".modinfo", align 1
@__param_str_igt__30__damage_iter_single_damage_intersect_fractional_src = internal constant [77 x i8] c"test_drm_modeset.igt__30__damage_iter_single_damage_intersect_fractional_src\00", align 1
@__param_igt__30__damage_iter_single_damage_intersect_fractional_src = internal constant %struct.kernel_param { ptr @__param_str_igt__30__damage_iter_single_damage_intersect_fractional_src, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 252) } }, section "__param", align 4
@__UNIQUE_ID_igt__30__damage_iter_single_damage_intersect_fractional_srctype127 = internal constant [91 x i8] c"test_drm_modeset.parmtype=igt__30__damage_iter_single_damage_intersect_fractional_src:bool\00", section ".modinfo", align 1
@__param_str_igt__31__damage_iter_single_damage_outside_fractional_src = internal constant [75 x i8] c"test_drm_modeset.igt__31__damage_iter_single_damage_outside_fractional_src\00", align 1
@__param_igt__31__damage_iter_single_damage_outside_fractional_src = internal constant %struct.kernel_param { ptr @__param_str_igt__31__damage_iter_single_damage_outside_fractional_src, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 264) } }, section "__param", align 4
@__UNIQUE_ID_igt__31__damage_iter_single_damage_outside_fractional_srctype128 = internal constant [89 x i8] c"test_drm_modeset.parmtype=igt__31__damage_iter_single_damage_outside_fractional_src:bool\00", section ".modinfo", align 1
@__param_str_igt__32__damage_iter_single_damage_src_moved = internal constant [62 x i8] c"test_drm_modeset.igt__32__damage_iter_single_damage_src_moved\00", align 1
@__param_igt__32__damage_iter_single_damage_src_moved = internal constant %struct.kernel_param { ptr @__param_str_igt__32__damage_iter_single_damage_src_moved, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 276) } }, section "__param", align 4
@__UNIQUE_ID_igt__32__damage_iter_single_damage_src_movedtype129 = internal constant [76 x i8] c"test_drm_modeset.parmtype=igt__32__damage_iter_single_damage_src_moved:bool\00", section ".modinfo", align 1
@__param_str_igt__33__damage_iter_single_damage_fractional_src_moved = internal constant [73 x i8] c"test_drm_modeset.igt__33__damage_iter_single_damage_fractional_src_moved\00", align 1
@__param_igt__33__damage_iter_single_damage_fractional_src_moved = internal constant %struct.kernel_param { ptr @__param_str_igt__33__damage_iter_single_damage_fractional_src_moved, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 288) } }, section "__param", align 4
@__UNIQUE_ID_igt__33__damage_iter_single_damage_fractional_src_movedtype130 = internal constant [87 x i8] c"test_drm_modeset.parmtype=igt__33__damage_iter_single_damage_fractional_src_moved:bool\00", section ".modinfo", align 1
@__param_str_igt__34__damage_iter_damage = internal constant [45 x i8] c"test_drm_modeset.igt__34__damage_iter_damage\00", align 1
@__param_igt__34__damage_iter_damage = internal constant %struct.kernel_param { ptr @__param_str_igt__34__damage_iter_damage, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 300) } }, section "__param", align 4
@__UNIQUE_ID_igt__34__damage_iter_damagetype131 = internal constant [59 x i8] c"test_drm_modeset.parmtype=igt__34__damage_iter_damage:bool\00", section ".modinfo", align 1
@__param_str_igt__35__damage_iter_damage_one_intersect = internal constant [59 x i8] c"test_drm_modeset.igt__35__damage_iter_damage_one_intersect\00", align 1
@__param_igt__35__damage_iter_damage_one_intersect = internal constant %struct.kernel_param { ptr @__param_str_igt__35__damage_iter_damage_one_intersect, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 312) } }, section "__param", align 4
@__UNIQUE_ID_igt__35__damage_iter_damage_one_intersecttype132 = internal constant [73 x i8] c"test_drm_modeset.parmtype=igt__35__damage_iter_damage_one_intersect:bool\00", section ".modinfo", align 1
@__param_str_igt__36__damage_iter_damage_one_outside = internal constant [57 x i8] c"test_drm_modeset.igt__36__damage_iter_damage_one_outside\00", align 1
@__param_igt__36__damage_iter_damage_one_outside = internal constant %struct.kernel_param { ptr @__param_str_igt__36__damage_iter_damage_one_outside, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 324) } }, section "__param", align 4
@__UNIQUE_ID_igt__36__damage_iter_damage_one_outsidetype133 = internal constant [71 x i8] c"test_drm_modeset.parmtype=igt__36__damage_iter_damage_one_outside:bool\00", section ".modinfo", align 1
@__param_str_igt__37__damage_iter_damage_src_moved = internal constant [55 x i8] c"test_drm_modeset.igt__37__damage_iter_damage_src_moved\00", align 1
@__param_igt__37__damage_iter_damage_src_moved = internal constant %struct.kernel_param { ptr @__param_str_igt__37__damage_iter_damage_src_moved, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 336) } }, section "__param", align 4
@__UNIQUE_ID_igt__37__damage_iter_damage_src_movedtype134 = internal constant [69 x i8] c"test_drm_modeset.parmtype=igt__37__damage_iter_damage_src_moved:bool\00", section ".modinfo", align 1
@__param_str_igt__38__damage_iter_damage_not_visible = internal constant [57 x i8] c"test_drm_modeset.igt__38__damage_iter_damage_not_visible\00", align 1
@__param_igt__38__damage_iter_damage_not_visible = internal constant %struct.kernel_param { ptr @__param_str_igt__38__damage_iter_damage_not_visible, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 348) } }, section "__param", align 4
@__UNIQUE_ID_igt__38__damage_iter_damage_not_visibletype135 = internal constant [71 x i8] c"test_drm_modeset.parmtype=igt__38__damage_iter_damage_not_visible:bool\00", section ".modinfo", align 1
@__param_str_igt__39__dp_mst_calc_pbn_mode = internal constant [47 x i8] c"test_drm_modeset.igt__39__dp_mst_calc_pbn_mode\00", align 1
@__param_igt__39__dp_mst_calc_pbn_mode = internal constant %struct.kernel_param { ptr @__param_str_igt__39__dp_mst_calc_pbn_mode, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 360) } }, section "__param", align 4
@__UNIQUE_ID_igt__39__dp_mst_calc_pbn_modetype136 = internal constant [61 x i8] c"test_drm_modeset.parmtype=igt__39__dp_mst_calc_pbn_mode:bool\00", section ".modinfo", align 1
@__param_str_igt__40__dp_mst_sideband_msg_req_decode = internal constant [57 x i8] c"test_drm_modeset.igt__40__dp_mst_sideband_msg_req_decode\00", align 1
@__param_igt__40__dp_mst_sideband_msg_req_decode = internal constant %struct.kernel_param { ptr @__param_str_igt__40__dp_mst_sideband_msg_req_decode, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.6 { ptr getelementptr (i8, ptr @selftests, i64 372) } }, section "__param", align 4
@__UNIQUE_ID_igt__40__dp_mst_sideband_msg_req_decodetype137 = internal constant [71 x i8] c"test_drm_modeset.parmtype=igt__40__dp_mst_sideband_msg_req_decode:bool\00", section ".modinfo", align 1
@__initcall__kmod_test_drm_modeset__140_28_test_drm_modeset_init6 = internal global ptr @test_drm_modeset_init, section ".initcall6.init", align 4
@__exitcall_test_drm_modeset_exit = internal global ptr @test_drm_modeset_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author141 = internal constant [42 x i8] c"test_drm_modeset.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file142 = internal constant [65 x i8] c"test_drm_modeset.file=drivers/gpu/drm/selftests/test-drm_modeset\00", section ".modinfo", align 1
@__UNIQUE_ID_license143 = internal constant [29 x i8] c"test_drm_modeset.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drm_rect_clip_scaled_div_by_zero\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drm_rect_clip_scaled_not_clipped\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drm_rect_clip_scaled_clipped\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drm_rect_clip_scaled_signed_vs_unsigned\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_plane_state\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"check_drm_format_block_width\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"check_drm_format_block_height\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"check_drm_format_min_pitch\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"check_drm_framebuffer_create\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"damage_iter_no_damage\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"damage_iter_no_damage_fractional_src\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"damage_iter_no_damage_src_moved\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"damage_iter_no_damage_fractional_src_moved\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"damage_iter_no_damage_not_visible\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"damage_iter_no_damage_no_crtc\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"damage_iter_no_damage_no_fb\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"damage_iter_simple_damage\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"damage_iter_single_damage\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"damage_iter_single_damage_intersect_src\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"damage_iter_single_damage_outside_src\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"damage_iter_single_damage_fractional_src\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"damage_iter_single_damage_intersect_fractional_src\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"damage_iter_single_damage_outside_fractional_src\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"damage_iter_single_damage_src_moved\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"damage_iter_single_damage_fractional_src_moved\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"damage_iter_damage\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"damage_iter_damage_one_intersect\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"damage_iter_damage_one_outside\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"damage_iter_damage_src_moved\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"damage_iter_damage_not_visible\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dp_mst_calc_pbn_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dp_mst_sideband_msg_req_decode\00", [33 x i8] zeroinitializer }, align 32
@run_selftests.__UNIQUE_ID_ddebug138 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_drm_modeset\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"run_selftests\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/selftests/drm_selftest.c\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drm: Running %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s returned %d, conflicting with selftest's magic values!\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [55 x i8] c"../drivers/gpu/drm/selftests/test-drm_modeset_common.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"selftests\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 37, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 9, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 10, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 11, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 12, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 13, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 14, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 15, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 16, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 17, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 18, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 19, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 20, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 21, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 22, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 23, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 24, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 25, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 26, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 27, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 28, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 29, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 30, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 31, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 32, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 33, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 34, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 35, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 36, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 37, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 38, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 39, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/selftests/drm_modeset_selftests.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 40, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 75, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/selftests/drm_selftest.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 81, i32 6 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author141, ptr @__UNIQUE_ID_file142, ptr @__UNIQUE_ID_igt__10__drm_rect_clip_scaled_not_clippedtype107, ptr @__UNIQUE_ID_igt__11__drm_rect_clip_scaled_clippedtype108, ptr @__UNIQUE_ID_igt__12__drm_rect_clip_scaled_signed_vs_unsignedtype109, ptr @__UNIQUE_ID_igt__13__check_plane_statetype110, ptr @__UNIQUE_ID_igt__14__check_drm_format_block_widthtype111, ptr @__UNIQUE_ID_igt__15__check_drm_format_block_heighttype112, ptr @__UNIQUE_ID_igt__16__check_drm_format_min_pitchtype113, ptr @__UNIQUE_ID_igt__17__check_drm_framebuffer_createtype114, ptr @__UNIQUE_ID_igt__18__damage_iter_no_damagetype115, ptr @__UNIQUE_ID_igt__19__damage_iter_no_damage_fractional_srctype116, ptr @__UNIQUE_ID_igt__20__damage_iter_no_damage_src_movedtype117, ptr @__UNIQUE_ID_igt__21__damage_iter_no_damage_fractional_src_movedtype118, ptr @__UNIQUE_ID_igt__22__damage_iter_no_damage_not_visibletype119, ptr @__UNIQUE_ID_igt__23__damage_iter_no_damage_no_crtctype120, ptr @__UNIQUE_ID_igt__24__damage_iter_no_damage_no_fbtype121, ptr @__UNIQUE_ID_igt__25__damage_iter_simple_damagetype122, ptr @__UNIQUE_ID_igt__26__damage_iter_single_damagetype123, ptr @__UNIQUE_ID_igt__27__damage_iter_single_damage_intersect_srctype124, ptr @__UNIQUE_ID_igt__28__damage_iter_single_damage_outside_srctype125, ptr @__UNIQUE_ID_igt__29__damage_iter_single_damage_fractional_srctype126, ptr @__UNIQUE_ID_igt__30__damage_iter_single_damage_intersect_fractional_srctype127, ptr @__UNIQUE_ID_igt__31__damage_iter_single_damage_outside_fractional_srctype128, ptr @__UNIQUE_ID_igt__32__damage_iter_single_damage_src_movedtype129, ptr @__UNIQUE_ID_igt__33__damage_iter_single_damage_fractional_src_movedtype130, ptr @__UNIQUE_ID_igt__34__damage_iter_damagetype131, ptr @__UNIQUE_ID_igt__35__damage_iter_damage_one_intersecttype132, ptr @__UNIQUE_ID_igt__36__damage_iter_damage_one_outsidetype133, ptr @__UNIQUE_ID_igt__37__damage_iter_damage_src_movedtype134, ptr @__UNIQUE_ID_igt__38__damage_iter_damage_not_visibletype135, ptr @__UNIQUE_ID_igt__39__dp_mst_calc_pbn_modetype136, ptr @__UNIQUE_ID_igt__40__dp_mst_sideband_msg_req_decodetype137, ptr @__UNIQUE_ID_igt__9__drm_rect_clip_scaled_div_by_zerotype106, ptr @__UNIQUE_ID_license143, ptr @__exitcall_test_drm_modeset_exit, ptr @__initcall__kmod_test_drm_modeset__140_28_test_drm_modeset_init6, ptr @__param_igt__10__drm_rect_clip_scaled_not_clipped, ptr @__param_igt__11__drm_rect_clip_scaled_clipped, ptr @__param_igt__12__drm_rect_clip_scaled_signed_vs_unsigned, ptr @__param_igt__13__check_plane_state, ptr @__param_igt__14__check_drm_format_block_width, ptr @__param_igt__15__check_drm_format_block_height, ptr @__param_igt__16__check_drm_format_min_pitch, ptr @__param_igt__17__check_drm_framebuffer_create, ptr @__param_igt__18__damage_iter_no_damage, ptr @__param_igt__19__damage_iter_no_damage_fractional_src, ptr @__param_igt__20__damage_iter_no_damage_src_moved, ptr @__param_igt__21__damage_iter_no_damage_fractional_src_moved, ptr @__param_igt__22__damage_iter_no_damage_not_visible, ptr @__param_igt__23__damage_iter_no_damage_no_crtc, ptr @__param_igt__24__damage_iter_no_damage_no_fb, ptr @__param_igt__25__damage_iter_simple_damage, ptr @__param_igt__26__damage_iter_single_damage, ptr @__param_igt__27__damage_iter_single_damage_intersect_src, ptr @__param_igt__28__damage_iter_single_damage_outside_src, ptr @__param_igt__29__damage_iter_single_damage_fractional_src, ptr @__param_igt__30__damage_iter_single_damage_intersect_fractional_src, ptr @__param_igt__31__damage_iter_single_damage_outside_fractional_src, ptr @__param_igt__32__damage_iter_single_damage_src_moved, ptr @__param_igt__33__damage_iter_single_damage_fractional_src_moved, ptr @__param_igt__34__damage_iter_damage, ptr @__param_igt__35__damage_iter_damage_one_intersect, ptr @__param_igt__36__damage_iter_damage_one_outside, ptr @__param_igt__37__damage_iter_damage_src_moved, ptr @__param_igt__38__damage_iter_damage_not_visible, ptr @__param_igt__39__dp_mst_calc_pbn_mode, ptr @__param_igt__40__dp_mst_sideband_msg_req_decode, ptr @__param_igt__9__drm_rect_clip_scaled_div_by_zero, ptr @test_drm_modeset_exit, ptr @selftests, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftests to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_drm_modeset_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_drm_modeset_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @run_selftests()
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_drm_rect_clip_scaled_div_by_zero(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_drm_rect_clip_scaled_not_clipped(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_drm_rect_clip_scaled_clipped(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_drm_rect_clip_scaled_signed_vs_unsigned(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_check_plane_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_check_drm_format_block_width(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_check_drm_format_block_height(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_check_drm_format_min_pitch(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_check_drm_framebuffer_create(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_no_damage(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_no_damage_fractional_src(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_no_damage_src_moved(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_no_damage_fractional_src_moved(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_no_damage_not_visible(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_no_damage_no_crtc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_no_damage_no_fb(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_simple_damage(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_single_damage(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_single_damage_intersect_src(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_single_damage_outside_src(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_single_damage_fractional_src(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_single_damage_intersect_fractional_src(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_single_damage_outside_fractional_src(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_single_damage_src_moved(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_single_damage_fractional_src_moved(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_damage(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_damage_one_intersect(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_damage_one_outside(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_damage_src_moved(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_damage_iter_damage_not_visible(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_dp_mst_calc_pbn_mode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igt_dp_mst_sideband_msg_req_decode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_selftests() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body3.preheader.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body3.preheader.i:                            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr @selftests, align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 1), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 2), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 3), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 4), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 5), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 6), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 7), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 8), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 9), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 10), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 11), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 12), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 13), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 14), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 15), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 16), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 17), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 18), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 19), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 20), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 21), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 22), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 23), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 24), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 25), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 26), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 27), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 28), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 29), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 30), align 4
  store i8 1, ptr getelementptr inbounds ([32 x %struct.drm_selftest], ptr @selftests, i32 0, i32 31), align 4
  br label %for.body.preheader

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.02.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_selftest, ptr @selftests, i32 %i.02.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.for.body.preheader_crit_edge

for.body.i.for.body.preheader_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.i.for.body.preheader_crit_edge, %for.body3.preheader.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %dec5 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 31, %for.body.preheader ]
  %st.addr.03 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @selftests, %for.body.preheader ]
  %2 = ptrtoint ptr %st.addr.03 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %st.addr.03, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_selftests.__UNIQUE_ID_ddebug138, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_selftests, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !189

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.drm_selftest, ptr %st.addr.03, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_selftests.__UNIQUE_ID_ddebug138, ptr noundef nonnull @.str.35, ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %func = getelementptr inbounds %struct.drm_selftest, ptr %st.addr.03, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %call7 = tail call i32 %7(ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end.for.inc_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %do.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.drm_selftest, ptr %st.addr.03, i32 1
  %dec = add nsw i32 %dec5, -1
  %tobool.not = icmp eq i32 %dec5, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %st.addr.0.lcssa = phi ptr [ %st.addr.03, %do.end.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %err.2 = phi i32 [ %call7, %do.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp = icmp sgt i32 %err.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.2)
  %cmp11 = icmp eq i32 %err.2, -25
  %spec.select = or i1 %cmp, %cmp11
  br i1 %spec.select, label %do.end27, label %for.end.if.end34_crit_edge, !prof !190

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %name28 = getelementptr inbounds %struct.drm_selftest, ptr %st.addr.0.lcssa, i32 0, i32 1
  %8 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name28, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 83, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %9, i32 noundef %err.2) #5
  br label %if.end34

if.end34:                                         ; preds = %do.end27, %for.end.if.end34_crit_edge
  %spec.select1 = phi i32 [ -1, %do.end27 ], [ %err.2, %for.end.if.end34_crit_edge ]
  tail call void @rcu_barrier() #5
  ret i32 %spec.select1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !100, !102, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !173, !174, !175, !176, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__param_igt__9__drm_rect_clip_scaled_div_by_zero, !1, !"__param_igt__9__drm_rect_clip_scaled_div_by_zero", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 9, i32 1}
!2 = !{ptr @__UNIQUE_ID_igt__9__drm_rect_clip_scaled_div_by_zerotype106, !1, !"__UNIQUE_ID_igt__9__drm_rect_clip_scaled_div_by_zerotype106", i1 false, i1 false}
!3 = !{ptr @__param_igt__10__drm_rect_clip_scaled_not_clipped, !4, !"__param_igt__10__drm_rect_clip_scaled_not_clipped", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 10, i32 1}
!5 = !{ptr @__UNIQUE_ID_igt__10__drm_rect_clip_scaled_not_clippedtype107, !4, !"__UNIQUE_ID_igt__10__drm_rect_clip_scaled_not_clippedtype107", i1 false, i1 false}
!6 = !{ptr @__param_igt__11__drm_rect_clip_scaled_clipped, !7, !"__param_igt__11__drm_rect_clip_scaled_clipped", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 11, i32 1}
!8 = !{ptr @__UNIQUE_ID_igt__11__drm_rect_clip_scaled_clippedtype108, !7, !"__UNIQUE_ID_igt__11__drm_rect_clip_scaled_clippedtype108", i1 false, i1 false}
!9 = !{ptr @__param_igt__12__drm_rect_clip_scaled_signed_vs_unsigned, !10, !"__param_igt__12__drm_rect_clip_scaled_signed_vs_unsigned", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 12, i32 1}
!11 = !{ptr @__UNIQUE_ID_igt__12__drm_rect_clip_scaled_signed_vs_unsignedtype109, !10, !"__UNIQUE_ID_igt__12__drm_rect_clip_scaled_signed_vs_unsignedtype109", i1 false, i1 false}
!12 = !{ptr @__param_igt__13__check_plane_state, !13, !"__param_igt__13__check_plane_state", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 13, i32 1}
!14 = !{ptr @__UNIQUE_ID_igt__13__check_plane_statetype110, !13, !"__UNIQUE_ID_igt__13__check_plane_statetype110", i1 false, i1 false}
!15 = !{ptr @__param_igt__14__check_drm_format_block_width, !16, !"__param_igt__14__check_drm_format_block_width", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 14, i32 1}
!17 = !{ptr @__UNIQUE_ID_igt__14__check_drm_format_block_widthtype111, !16, !"__UNIQUE_ID_igt__14__check_drm_format_block_widthtype111", i1 false, i1 false}
!18 = !{ptr @__param_igt__15__check_drm_format_block_height, !19, !"__param_igt__15__check_drm_format_block_height", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 15, i32 1}
!20 = !{ptr @__UNIQUE_ID_igt__15__check_drm_format_block_heighttype112, !19, !"__UNIQUE_ID_igt__15__check_drm_format_block_heighttype112", i1 false, i1 false}
!21 = !{ptr @__param_igt__16__check_drm_format_min_pitch, !22, !"__param_igt__16__check_drm_format_min_pitch", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 16, i32 1}
!23 = !{ptr @__UNIQUE_ID_igt__16__check_drm_format_min_pitchtype113, !22, !"__UNIQUE_ID_igt__16__check_drm_format_min_pitchtype113", i1 false, i1 false}
!24 = !{ptr @__param_igt__17__check_drm_framebuffer_create, !25, !"__param_igt__17__check_drm_framebuffer_create", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 17, i32 1}
!26 = !{ptr @__UNIQUE_ID_igt__17__check_drm_framebuffer_createtype114, !25, !"__UNIQUE_ID_igt__17__check_drm_framebuffer_createtype114", i1 false, i1 false}
!27 = !{ptr @__param_igt__18__damage_iter_no_damage, !28, !"__param_igt__18__damage_iter_no_damage", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 18, i32 1}
!29 = !{ptr @__UNIQUE_ID_igt__18__damage_iter_no_damagetype115, !28, !"__UNIQUE_ID_igt__18__damage_iter_no_damagetype115", i1 false, i1 false}
!30 = !{ptr @__param_igt__19__damage_iter_no_damage_fractional_src, !31, !"__param_igt__19__damage_iter_no_damage_fractional_src", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 19, i32 1}
!32 = !{ptr @__UNIQUE_ID_igt__19__damage_iter_no_damage_fractional_srctype116, !31, !"__UNIQUE_ID_igt__19__damage_iter_no_damage_fractional_srctype116", i1 false, i1 false}
!33 = !{ptr @__param_igt__20__damage_iter_no_damage_src_moved, !34, !"__param_igt__20__damage_iter_no_damage_src_moved", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 20, i32 1}
!35 = !{ptr @__UNIQUE_ID_igt__20__damage_iter_no_damage_src_movedtype117, !34, !"__UNIQUE_ID_igt__20__damage_iter_no_damage_src_movedtype117", i1 false, i1 false}
!36 = !{ptr @__param_igt__21__damage_iter_no_damage_fractional_src_moved, !37, !"__param_igt__21__damage_iter_no_damage_fractional_src_moved", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 21, i32 1}
!38 = !{ptr @__UNIQUE_ID_igt__21__damage_iter_no_damage_fractional_src_movedtype118, !37, !"__UNIQUE_ID_igt__21__damage_iter_no_damage_fractional_src_movedtype118", i1 false, i1 false}
!39 = !{ptr @__param_igt__22__damage_iter_no_damage_not_visible, !40, !"__param_igt__22__damage_iter_no_damage_not_visible", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 22, i32 1}
!41 = !{ptr @__UNIQUE_ID_igt__22__damage_iter_no_damage_not_visibletype119, !40, !"__UNIQUE_ID_igt__22__damage_iter_no_damage_not_visibletype119", i1 false, i1 false}
!42 = !{ptr @__param_igt__23__damage_iter_no_damage_no_crtc, !43, !"__param_igt__23__damage_iter_no_damage_no_crtc", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 23, i32 1}
!44 = !{ptr @__UNIQUE_ID_igt__23__damage_iter_no_damage_no_crtctype120, !43, !"__UNIQUE_ID_igt__23__damage_iter_no_damage_no_crtctype120", i1 false, i1 false}
!45 = !{ptr @__param_igt__24__damage_iter_no_damage_no_fb, !46, !"__param_igt__24__damage_iter_no_damage_no_fb", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 24, i32 1}
!47 = !{ptr @__UNIQUE_ID_igt__24__damage_iter_no_damage_no_fbtype121, !46, !"__UNIQUE_ID_igt__24__damage_iter_no_damage_no_fbtype121", i1 false, i1 false}
!48 = !{ptr @__param_igt__25__damage_iter_simple_damage, !49, !"__param_igt__25__damage_iter_simple_damage", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 25, i32 1}
!50 = !{ptr @__UNIQUE_ID_igt__25__damage_iter_simple_damagetype122, !49, !"__UNIQUE_ID_igt__25__damage_iter_simple_damagetype122", i1 false, i1 false}
!51 = !{ptr @__param_igt__26__damage_iter_single_damage, !52, !"__param_igt__26__damage_iter_single_damage", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 26, i32 1}
!53 = !{ptr @__UNIQUE_ID_igt__26__damage_iter_single_damagetype123, !52, !"__UNIQUE_ID_igt__26__damage_iter_single_damagetype123", i1 false, i1 false}
!54 = !{ptr @__param_igt__27__damage_iter_single_damage_intersect_src, !55, !"__param_igt__27__damage_iter_single_damage_intersect_src", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 27, i32 1}
!56 = !{ptr @__UNIQUE_ID_igt__27__damage_iter_single_damage_intersect_srctype124, !55, !"__UNIQUE_ID_igt__27__damage_iter_single_damage_intersect_srctype124", i1 false, i1 false}
!57 = !{ptr @__param_igt__28__damage_iter_single_damage_outside_src, !58, !"__param_igt__28__damage_iter_single_damage_outside_src", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 28, i32 1}
!59 = !{ptr @__UNIQUE_ID_igt__28__damage_iter_single_damage_outside_srctype125, !58, !"__UNIQUE_ID_igt__28__damage_iter_single_damage_outside_srctype125", i1 false, i1 false}
!60 = !{ptr @__param_igt__29__damage_iter_single_damage_fractional_src, !61, !"__param_igt__29__damage_iter_single_damage_fractional_src", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 29, i32 1}
!62 = !{ptr @__UNIQUE_ID_igt__29__damage_iter_single_damage_fractional_srctype126, !61, !"__UNIQUE_ID_igt__29__damage_iter_single_damage_fractional_srctype126", i1 false, i1 false}
!63 = !{ptr @__param_igt__30__damage_iter_single_damage_intersect_fractional_src, !64, !"__param_igt__30__damage_iter_single_damage_intersect_fractional_src", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 30, i32 1}
!65 = !{ptr @__UNIQUE_ID_igt__30__damage_iter_single_damage_intersect_fractional_srctype127, !64, !"__UNIQUE_ID_igt__30__damage_iter_single_damage_intersect_fractional_srctype127", i1 false, i1 false}
!66 = !{ptr @__param_igt__31__damage_iter_single_damage_outside_fractional_src, !67, !"__param_igt__31__damage_iter_single_damage_outside_fractional_src", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 31, i32 1}
!68 = !{ptr @__UNIQUE_ID_igt__31__damage_iter_single_damage_outside_fractional_srctype128, !67, !"__UNIQUE_ID_igt__31__damage_iter_single_damage_outside_fractional_srctype128", i1 false, i1 false}
!69 = !{ptr @__param_igt__32__damage_iter_single_damage_src_moved, !70, !"__param_igt__32__damage_iter_single_damage_src_moved", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 32, i32 1}
!71 = !{ptr @__UNIQUE_ID_igt__32__damage_iter_single_damage_src_movedtype129, !70, !"__UNIQUE_ID_igt__32__damage_iter_single_damage_src_movedtype129", i1 false, i1 false}
!72 = !{ptr @__param_igt__33__damage_iter_single_damage_fractional_src_moved, !73, !"__param_igt__33__damage_iter_single_damage_fractional_src_moved", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 33, i32 1}
!74 = !{ptr @__UNIQUE_ID_igt__33__damage_iter_single_damage_fractional_src_movedtype130, !73, !"__UNIQUE_ID_igt__33__damage_iter_single_damage_fractional_src_movedtype130", i1 false, i1 false}
!75 = !{ptr @__param_igt__34__damage_iter_damage, !76, !"__param_igt__34__damage_iter_damage", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 34, i32 1}
!77 = !{ptr @__UNIQUE_ID_igt__34__damage_iter_damagetype131, !76, !"__UNIQUE_ID_igt__34__damage_iter_damagetype131", i1 false, i1 false}
!78 = !{ptr @__param_igt__35__damage_iter_damage_one_intersect, !79, !"__param_igt__35__damage_iter_damage_one_intersect", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 35, i32 1}
!80 = !{ptr @__UNIQUE_ID_igt__35__damage_iter_damage_one_intersecttype132, !79, !"__UNIQUE_ID_igt__35__damage_iter_damage_one_intersecttype132", i1 false, i1 false}
!81 = !{ptr @__param_igt__36__damage_iter_damage_one_outside, !82, !"__param_igt__36__damage_iter_damage_one_outside", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 36, i32 1}
!83 = !{ptr @__UNIQUE_ID_igt__36__damage_iter_damage_one_outsidetype133, !82, !"__UNIQUE_ID_igt__36__damage_iter_damage_one_outsidetype133", i1 false, i1 false}
!84 = !{ptr @__param_igt__37__damage_iter_damage_src_moved, !85, !"__param_igt__37__damage_iter_damage_src_moved", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 37, i32 1}
!86 = !{ptr @__UNIQUE_ID_igt__37__damage_iter_damage_src_movedtype134, !85, !"__UNIQUE_ID_igt__37__damage_iter_damage_src_movedtype134", i1 false, i1 false}
!87 = !{ptr @__param_igt__38__damage_iter_damage_not_visible, !88, !"__param_igt__38__damage_iter_damage_not_visible", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 38, i32 1}
!89 = !{ptr @__UNIQUE_ID_igt__38__damage_iter_damage_not_visibletype135, !88, !"__UNIQUE_ID_igt__38__damage_iter_damage_not_visibletype135", i1 false, i1 false}
!90 = !{ptr @__param_igt__39__dp_mst_calc_pbn_mode, !91, !"__param_igt__39__dp_mst_calc_pbn_mode", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 39, i32 1}
!92 = !{ptr @__UNIQUE_ID_igt__39__dp_mst_calc_pbn_modetype136, !91, !"__UNIQUE_ID_igt__39__dp_mst_calc_pbn_modetype136", i1 false, i1 false}
!93 = !{ptr @__param_igt__40__dp_mst_sideband_msg_req_decode, !94, !"__param_igt__40__dp_mst_sideband_msg_req_decode", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/selftests/drm_modeset_selftests.h", i32 40, i32 1}
!95 = !{ptr @__UNIQUE_ID_igt__40__dp_mst_sideband_msg_req_decodetype137, !94, !"__UNIQUE_ID_igt__40__dp_mst_sideband_msg_req_decodetype137", i1 false, i1 false}
!96 = !{ptr @__initcall__kmod_test_drm_modeset__140_28_test_drm_modeset_init6, !97, !"__initcall__kmod_test_drm_modeset__140_28_test_drm_modeset_init6", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/selftests/test-drm_modeset_common.c", i32 28, i32 1}
!98 = !{ptr @__exitcall_test_drm_modeset_exit, !99, !"__exitcall_test_drm_modeset_exit", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/selftests/test-drm_modeset_common.c", i32 29, i32 1}
!100 = !{ptr @__UNIQUE_ID_author141, !101, !"__UNIQUE_ID_author141", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/selftests/test-drm_modeset_common.c", i32 31, i32 1}
!102 = !{ptr @__UNIQUE_ID_file142, !103, !"__UNIQUE_ID_file142", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/selftests/test-drm_modeset_common.c", i32 32, i32 1}
!104 = !{ptr @__UNIQUE_ID_license143, !103, !"__UNIQUE_ID_license143", i1 false, i1 false}
!105 = !{ptr @__param_str_igt__9__drm_rect_clip_scaled_div_by_zero, !1, !"__param_str_igt__9__drm_rect_clip_scaled_div_by_zero", i1 false, i1 false}
!106 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @selftests, !139, !"selftests", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/selftests/drm_selftest.c", i32 37, i32 3}
!140 = !{ptr @__param_str_igt__10__drm_rect_clip_scaled_not_clipped, !4, !"__param_str_igt__10__drm_rect_clip_scaled_not_clipped", i1 false, i1 false}
!141 = !{ptr @__param_str_igt__11__drm_rect_clip_scaled_clipped, !7, !"__param_str_igt__11__drm_rect_clip_scaled_clipped", i1 false, i1 false}
!142 = !{ptr @__param_str_igt__12__drm_rect_clip_scaled_signed_vs_unsigned, !10, !"__param_str_igt__12__drm_rect_clip_scaled_signed_vs_unsigned", i1 false, i1 false}
!143 = !{ptr @__param_str_igt__13__check_plane_state, !13, !"__param_str_igt__13__check_plane_state", i1 false, i1 false}
!144 = !{ptr @__param_str_igt__14__check_drm_format_block_width, !16, !"__param_str_igt__14__check_drm_format_block_width", i1 false, i1 false}
!145 = !{ptr @__param_str_igt__15__check_drm_format_block_height, !19, !"__param_str_igt__15__check_drm_format_block_height", i1 false, i1 false}
!146 = !{ptr @__param_str_igt__16__check_drm_format_min_pitch, !22, !"__param_str_igt__16__check_drm_format_min_pitch", i1 false, i1 false}
!147 = !{ptr @__param_str_igt__17__check_drm_framebuffer_create, !25, !"__param_str_igt__17__check_drm_framebuffer_create", i1 false, i1 false}
!148 = !{ptr @__param_str_igt__18__damage_iter_no_damage, !28, !"__param_str_igt__18__damage_iter_no_damage", i1 false, i1 false}
!149 = !{ptr @__param_str_igt__19__damage_iter_no_damage_fractional_src, !31, !"__param_str_igt__19__damage_iter_no_damage_fractional_src", i1 false, i1 false}
!150 = !{ptr @__param_str_igt__20__damage_iter_no_damage_src_moved, !34, !"__param_str_igt__20__damage_iter_no_damage_src_moved", i1 false, i1 false}
!151 = !{ptr @__param_str_igt__21__damage_iter_no_damage_fractional_src_moved, !37, !"__param_str_igt__21__damage_iter_no_damage_fractional_src_moved", i1 false, i1 false}
!152 = !{ptr @__param_str_igt__22__damage_iter_no_damage_not_visible, !40, !"__param_str_igt__22__damage_iter_no_damage_not_visible", i1 false, i1 false}
!153 = !{ptr @__param_str_igt__23__damage_iter_no_damage_no_crtc, !43, !"__param_str_igt__23__damage_iter_no_damage_no_crtc", i1 false, i1 false}
!154 = !{ptr @__param_str_igt__24__damage_iter_no_damage_no_fb, !46, !"__param_str_igt__24__damage_iter_no_damage_no_fb", i1 false, i1 false}
!155 = !{ptr @__param_str_igt__25__damage_iter_simple_damage, !49, !"__param_str_igt__25__damage_iter_simple_damage", i1 false, i1 false}
!156 = !{ptr @__param_str_igt__26__damage_iter_single_damage, !52, !"__param_str_igt__26__damage_iter_single_damage", i1 false, i1 false}
!157 = !{ptr @__param_str_igt__27__damage_iter_single_damage_intersect_src, !55, !"__param_str_igt__27__damage_iter_single_damage_intersect_src", i1 false, i1 false}
!158 = !{ptr @__param_str_igt__28__damage_iter_single_damage_outside_src, !58, !"__param_str_igt__28__damage_iter_single_damage_outside_src", i1 false, i1 false}
!159 = !{ptr @__param_str_igt__29__damage_iter_single_damage_fractional_src, !61, !"__param_str_igt__29__damage_iter_single_damage_fractional_src", i1 false, i1 false}
!160 = !{ptr @__param_str_igt__30__damage_iter_single_damage_intersect_fractional_src, !64, !"__param_str_igt__30__damage_iter_single_damage_intersect_fractional_src", i1 false, i1 false}
!161 = !{ptr @__param_str_igt__31__damage_iter_single_damage_outside_fractional_src, !67, !"__param_str_igt__31__damage_iter_single_damage_outside_fractional_src", i1 false, i1 false}
!162 = !{ptr @__param_str_igt__32__damage_iter_single_damage_src_moved, !70, !"__param_str_igt__32__damage_iter_single_damage_src_moved", i1 false, i1 false}
!163 = !{ptr @__param_str_igt__33__damage_iter_single_damage_fractional_src_moved, !73, !"__param_str_igt__33__damage_iter_single_damage_fractional_src_moved", i1 false, i1 false}
!164 = !{ptr @__param_str_igt__34__damage_iter_damage, !76, !"__param_str_igt__34__damage_iter_damage", i1 false, i1 false}
!165 = !{ptr @__param_str_igt__35__damage_iter_damage_one_intersect, !79, !"__param_str_igt__35__damage_iter_damage_one_intersect", i1 false, i1 false}
!166 = !{ptr @__param_str_igt__36__damage_iter_damage_one_outside, !82, !"__param_str_igt__36__damage_iter_damage_one_outside", i1 false, i1 false}
!167 = !{ptr @__param_str_igt__37__damage_iter_damage_src_moved, !85, !"__param_str_igt__37__damage_iter_damage_src_moved", i1 false, i1 false}
!168 = !{ptr @__param_str_igt__38__damage_iter_damage_not_visible, !88, !"__param_str_igt__38__damage_iter_damage_not_visible", i1 false, i1 false}
!169 = !{ptr @__param_str_igt__39__dp_mst_calc_pbn_mode, !91, !"__param_str_igt__39__dp_mst_calc_pbn_mode", i1 false, i1 false}
!170 = !{ptr @__param_str_igt__40__dp_mst_sideband_msg_req_decode, !94, !"__param_str_igt__40__dp_mst_sideband_msg_req_decode", i1 false, i1 false}
!171 = !{ptr @.str.32, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/selftests/drm_selftest.c", i32 75, i32 3}
!173 = !{ptr @.str.33, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.34, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.35, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @run_selftests.__UNIQUE_ID_ddebug138, !172, !"__UNIQUE_ID_ddebug138", i1 false, i1 false}
!177 = !{ptr @.str.36, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/selftests/drm_selftest.c", i32 81, i32 6}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{i8 0, i8 2}
!189 = !{i64 2148952090, i64 2148952095, i64 2148952108, i64 2148952152, i64 2148952186, i64 2148952207}
!190 = !{!"branch_weights", i32 1, i32 2000}
