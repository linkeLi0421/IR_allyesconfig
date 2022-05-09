; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_stream_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stream_encoder_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.audio_clock_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.stream_encoder = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dce110_stream_encoder = type { %struct.stream_encoder, ptr, ptr, ptr }
%struct.dce110_stream_enc_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_stream_encoder_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_stream_encoder_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.audio_crtc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.bp_encoder_control = type { i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%struct.encoder_info_frame = type { %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.encoder_unblank_param = type { %struct.dc_link_settings, %struct.dc_crtc_timing, i32 }

@dce110_str_enc_funcs = internal constant { %struct.stream_encoder_funcs, [40 x i8] } { %struct.stream_encoder_funcs { ptr @dce110_stream_encoder_dp_set_stream_attribute, ptr @dce110_stream_encoder_hdmi_set_stream_attribute, ptr @dce110_stream_encoder_dvi_set_stream_attribute, ptr @dce110_stream_encoder_lvds_set_stream_attribute, ptr @dce110_stream_encoder_set_throttled_vcp_size, ptr @dce110_stream_encoder_update_hdmi_info_packets, ptr @dce110_stream_encoder_stop_hdmi_info_packets, ptr @dce110_stream_encoder_update_dp_info_packets, ptr null, ptr @dce110_stream_encoder_stop_dp_info_packets, ptr @dce110_stream_encoder_dp_blank, ptr @dce110_stream_encoder_dp_unblank, ptr @dce110_se_audio_mute_control, ptr @dce110_se_dp_audio_setup, ptr @dce110_se_dp_audio_enable, ptr @dce110_se_dp_audio_disable, ptr @dce110_se_hdmi_audio_setup, ptr @dce110_se_hdmi_audio_disable, ptr @setup_stereo_sync, ptr @dce110_stream_encoder_set_avmute, ptr @dig_connect_to_otg, ptr @dce110_reset_hdmi_stream_attribute, ptr @dig_source_otg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dce110_se_audio_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c\00", [62 x i8] zeroinitializer }, align 32
@__func__.dce110_se_disable_dp_audio = private unnamed_addr constant [27 x i8] c"dce110_se_disable_dp_audio\00", align 1
@dce110_se_setup_hdmi_audio.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dce110_se_setup_hdmi_audio\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"[HW_AUDIO]:\0A%s:Input::requested_pixel_clock_100Hz = %dcalculated_pixel_clock_100Hz = %d \0A\00", [38 x i8] zeroinitializer }, align 32
@audio_clock_info_table_48bpc = internal constant { [14 x %struct.audio_clock_info], [120 x i8] } { [14 x %struct.audio_clock_info] [%struct.audio_clock_info { i32 2517, i32 4576, i32 56250, i32 7007, i32 62500, i32 6864, i32 56250 }, %struct.audio_clock_info { i32 2518, i32 4576, i32 56250, i32 7007, i32 62500, i32 6864, i32 56250 }, %struct.audio_clock_info { i32 2520, i32 4096, i32 50400, i32 6272, i32 56000, i32 6144, i32 50400 }, %struct.audio_clock_info { i32 2700, i32 4096, i32 54000, i32 6272, i32 60000, i32 6144, i32 54000 }, %struct.audio_clock_info { i32 2702, i32 4096, i32 54054, i32 6267, i32 60060, i32 8192, i32 54054 }, %struct.audio_clock_info { i32 2703, i32 4096, i32 54054, i32 6272, i32 60060, i32 8192, i32 54054 }, %struct.audio_clock_info { i32 5400, i32 4096, i32 108000, i32 6272, i32 120000, i32 6144, i32 108000 }, %struct.audio_clock_info { i32 5405, i32 4096, i32 108108, i32 6272, i32 120120, i32 6144, i32 108108 }, %struct.audio_clock_info { i32 7417, i32 11648, i32 421875, i32 17836, i32 468750, i32 11648, i32 281250 }, %struct.audio_clock_info { i32 7425, i32 4096, i32 148500, i32 6272, i32 165000, i32 6144, i32 148500 }, %struct.audio_clock_info { i32 14835, i32 11648, i32 843750, i32 8918, i32 468750, i32 11648, i32 281250 }, %struct.audio_clock_info { i32 14850, i32 4096, i32 297000, i32 6272, i32 330000, i32 6144, i32 297000 }, %struct.audio_clock_info { i32 29670, i32 5824, i32 843750, i32 4459, i32 468750, i32 5824, i32 562500 }, %struct.audio_clock_info { i32 29700, i32 3072, i32 445500, i32 4704, i32 495000, i32 5120, i32 495000 }], [120 x i8] zeroinitializer }, align 32
@audio_clock_info_table_36bpc = internal constant { [14 x %struct.audio_clock_info], [120 x i8] } { [14 x %struct.audio_clock_info] [%struct.audio_clock_info { i32 2517, i32 9152, i32 84375, i32 7007, i32 48875, i32 9152, i32 56250 }, %struct.audio_clock_info { i32 2518, i32 9152, i32 84375, i32 7007, i32 48875, i32 9152, i32 56250 }, %struct.audio_clock_info { i32 2520, i32 4096, i32 37800, i32 6272, i32 42000, i32 6144, i32 37800 }, %struct.audio_clock_info { i32 2700, i32 4096, i32 40500, i32 6272, i32 45000, i32 6144, i32 40500 }, %struct.audio_clock_info { i32 2702, i32 8192, i32 81081, i32 6272, i32 45045, i32 8192, i32 54054 }, %struct.audio_clock_info { i32 2703, i32 8192, i32 81081, i32 6272, i32 45045, i32 8192, i32 54054 }, %struct.audio_clock_info { i32 5400, i32 4096, i32 81000, i32 6272, i32 90000, i32 6144, i32 81000 }, %struct.audio_clock_info { i32 5405, i32 4096, i32 81081, i32 6272, i32 90090, i32 6144, i32 81081 }, %struct.audio_clock_info { i32 7417, i32 11648, i32 316406, i32 17836, i32 351562, i32 11648, i32 210937 }, %struct.audio_clock_info { i32 7425, i32 4096, i32 111375, i32 6272, i32 123750, i32 6144, i32 111375 }, %struct.audio_clock_info { i32 14835, i32 11648, i32 632812, i32 17836, i32 703125, i32 11648, i32 421875 }, %struct.audio_clock_info { i32 14850, i32 4096, i32 222750, i32 6272, i32 247500, i32 6144, i32 222750 }, %struct.audio_clock_info { i32 29670, i32 5824, i32 632812, i32 8918, i32 703125, i32 5824, i32 421875 }, %struct.audio_clock_info { i32 29700, i32 4096, i32 445500, i32 4704, i32 371250, i32 5120, i32 371250 }], [120 x i8] zeroinitializer }, align 32
@audio_clock_info_table = internal constant { [16 x %struct.audio_clock_info], [96 x i8] } { [16 x %struct.audio_clock_info] [%struct.audio_clock_info { i32 2517, i32 4576, i32 28125, i32 7007, i32 31250, i32 6864, i32 28125 }, %struct.audio_clock_info { i32 2518, i32 4576, i32 28125, i32 7007, i32 31250, i32 6864, i32 28125 }, %struct.audio_clock_info { i32 2520, i32 4096, i32 25200, i32 6272, i32 28000, i32 6144, i32 25200 }, %struct.audio_clock_info { i32 2700, i32 4096, i32 27000, i32 6272, i32 30000, i32 6144, i32 27000 }, %struct.audio_clock_info { i32 2702, i32 4096, i32 27027, i32 6272, i32 30030, i32 6144, i32 27027 }, %struct.audio_clock_info { i32 2703, i32 4096, i32 27027, i32 6272, i32 30030, i32 6144, i32 27027 }, %struct.audio_clock_info { i32 5400, i32 4096, i32 54000, i32 6272, i32 60000, i32 6144, i32 54000 }, %struct.audio_clock_info { i32 5405, i32 4096, i32 54054, i32 6272, i32 60060, i32 6144, i32 54054 }, %struct.audio_clock_info { i32 7417, i32 11648, i32 210937, i32 17836, i32 234375, i32 11648, i32 140625 }, %struct.audio_clock_info { i32 7425, i32 4096, i32 74250, i32 6272, i32 82500, i32 6144, i32 74250 }, %struct.audio_clock_info { i32 14835, i32 11648, i32 421875, i32 8918, i32 234375, i32 5824, i32 140625 }, %struct.audio_clock_info { i32 14850, i32 4096, i32 148500, i32 6272, i32 165000, i32 6144, i32 148500 }, %struct.audio_clock_info { i32 29670, i32 5824, i32 421875, i32 4459, i32 234375, i32 5824, i32 281250 }, %struct.audio_clock_info { i32 29700, i32 3072, i32 222750, i32 4704, i32 247500, i32 5120, i32 247500 }, %struct.audio_clock_info { i32 59340, i32 5824, i32 843750, i32 8918, i32 937500, i32 5824, i32 562500 }, %struct.audio_clock_info { i32 59400, i32 3072, i32 445500, i32 9408, i32 990000, i32 6144, i32 594000 }], [96 x i8] zeroinitializer }, align 32
@dce110_stream_encoder_dvi_set_stream_attribute.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dce110_stream_encoder_dvi_set_stream_attribute.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dce110_stream_encoder_lvds_set_stream_attribute.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.dce110_stream_encoder_set_throttled_vcp_size = private unnamed_addr constant [45 x i8] c"dce110_stream_encoder_set_throttled_vcp_size\00", align 1
@dc_fixpt_ceil.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@dc_fixpt_shl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dc_fixpt_sub.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.dce110_stream_encoder_update_hdmi_info_packets = private unnamed_addr constant [47 x i8] c"dce110_stream_encoder_update_hdmi_info_packets\00", align 1
@dce110_update_hdmi_info_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014[drm] Invalid HW packet index: %s()\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dce110_update_hdmi_info_packet\00", [33 x i8] zeroinitializer }, align 32
@dce110_update_hdmi_info_packet._entry_ptr = internal global ptr @dce110_update_hdmi_info_packet._entry, section ".printk_index", align 4
@__func__.dce110_update_generic_info_packet = private unnamed_addr constant [34 x i8] c"dce110_update_generic_info_packet\00", align 1
@__func__.dce110_stream_encoder_update_dp_info_packets = private unnamed_addr constant [45 x i8] c"dce110_stream_encoder_update_dp_info_packets\00", align 1
@__func__.dce110_stream_encoder_stop_dp_info_packets = private unnamed_addr constant [43 x i8] c"dce110_stream_encoder_stop_dp_info_packets\00", align 1
@__func__.dce110_stream_encoder_dp_blank = private unnamed_addr constant [31 x i8] c"dce110_stream_encoder_dp_blank\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"dce110_str_enc_funcs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1535, i32 42 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1261, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1312, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [29 x i8] c"audio_clock_info_table_48bpc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1117, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"audio_clock_info_table_36bpc\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1100, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"audio_clock_info_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1081, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 487, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 265, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @dce110_update_hdmi_info_packet._entry, ptr @dce110_update_hdmi_info_packet._entry_ptr, ptr @dce110_str_enc_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @audio_clock_info_table_48bpc, ptr @audio_clock_info_table_36bpc, ptr @audio_clock_info_table, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_str_enc_funcs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_clock_info_table_48bpc to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_clock_info_table_36bpc to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_clock_info_table to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_update_hdmi_info_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_se_audio_mute_control(ptr nocapture noundef readonly %enc, i1 noundef zeroext %mute) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %AFMT_AUDIO_PACKET_CONTROL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %AFMT_AUDIO_PACKET_CONTROL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %AFMT_AUDIO_PACKET_CONTROL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift, align 4
  %AFMT_AUDIO_SAMPLE_SEND = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 106
  %8 = ptrtoint ptr %AFMT_AUDIO_SAMPLE_SEND to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %AFMT_AUDIO_SAMPLE_SEND, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask, align 4
  %AFMT_AUDIO_SAMPLE_SEND1 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 106
  %12 = ptrtoint ptr %AFMT_AUDIO_SAMPLE_SEND1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %AFMT_AUDIO_SAMPLE_SEND1, align 4
  %lnot = xor i1 %mute, true
  %lnot.ext = zext i1 %lnot to i32
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %lnot.ext) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_update_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_se_dp_audio_setup(ptr nocapture noundef readonly %enc, i32 noundef %az_inst, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dce110_se_audio_setup(ptr noundef %enc, i32 noundef %az_inst, ptr noundef %info)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce110_se_audio_setup(ptr nocapture noundef readonly %enc, i32 noundef %az_inst, ptr noundef %audio_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = icmp eq ptr %audio_info, null
  br i1 %cond, label %land.rhs, label %if.end45

land.rhs:                                         ; preds = %entry
  %.b67 = load i1, ptr @dce110_se_audio_setup.__already_done, align 1
  br i1 %.b67, label %land.rhs.if.then40_crit_edge, label %if.then, !prof !63

land.rhs.if.then40_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dce110_se_audio_setup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1261, i32 noundef 9, ptr noundef null) #5
  br label %if.then40

if.then40:                                        ; preds = %if.then, %land.rhs.if.then40_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %cleanup

if.end45:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %audio_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %audio_info, align 4
  %speaker_flags.sroa.0.0.extract.shift.i = lshr i32 %.unpack, 24
  %speaker_flags.sroa.0.0.extract.trunc.i = trunc i32 %speaker_flags.sroa.0.0.extract.shift.i to i8
  %bf.shl.i = and i8 %speaker_flags.sroa.0.0.extract.trunc.i, -128
  %1 = lshr i8 %speaker_flags.sroa.0.0.extract.trunc.i, 1
  %bf.shl7.i = and i8 %1, 64
  %bf.set9.i = or i8 %bf.shl7.i, %bf.shl.i
  %bf.shl17.i = and i8 %1, 32
  %bf.set19.i = or i8 %bf.set9.i, %bf.shl17.i
  %bf.shl27.i = and i8 %1, 16
  %bf.set29.i = or i8 %bf.set19.i, %bf.shl27.i
  %bf.lshr32.i = lshr i8 %speaker_flags.sroa.0.0.extract.trunc.i, 4
  %bf.clear33.i = and i8 %bf.lshr32.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear33.i)
  %tobool.not.i = icmp eq i8 %bf.clear33.i, 0
  %bf.shl41.i = shl nuw nsw i8 %bf.clear33.i, 3
  %bf.set43.i = or i8 %bf.set29.i, %bf.shl41.i
  %bf.shl51.i = shl nuw nsw i8 %bf.clear33.i, 2
  %bf.clear62.i = or i8 %bf.set43.i, %bf.shl51.i
  %bf.clear67.i = and i8 %speaker_flags.sroa.0.0.extract.trunc.i, 8
  %bf.set73.i = or i8 %bf.set29.i, %bf.clear67.i
  %retval.sroa.0.0.i = select i1 %tobool.not.i, i8 %bf.set73.i, i8 %bf.clear62.i
  %bf.lshr76.pre-phi.i = lshr i8 %speaker_flags.sroa.0.0.extract.trunc.i, 2
  %bf.clear77.i = and i8 %bf.lshr76.pre-phi.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear77.i)
  %tobool79.not.i = icmp eq i8 %bf.clear77.i, 0
  %bf.clear103.i = and i8 %1, 1
  %bf.clear103.sink121.i = select i1 %tobool79.not.i, i8 %bf.clear103.i, i8 %bf.clear77.i
  %bf.shl107.i = shl nuw nsw i8 %bf.clear103.sink121.i, 1
  %bf.clear108.i = and i8 %retval.sroa.0.0.i, -4
  %bf.set109.i = or i8 %bf.clear108.i, %bf.shl107.i
  %bf.set118.i = or i8 %bf.set109.i, %bf.clear103.sink121.i
  %retval.sroa.0.0.insert.ext.i = zext i8 %bf.set118.i to i32
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %AFMT_AUDIO_SRC_CONTROL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %AFMT_AUDIO_SRC_CONTROL to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %AFMT_AUDIO_SRC_CONTROL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %8 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_shift, align 4
  %AFMT_AUDIO_SRC_SELECT = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %9, i32 0, i32 75
  %10 = ptrtoint ptr %AFMT_AUDIO_SRC_SELECT to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %AFMT_AUDIO_SRC_SELECT, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %12 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se_mask, align 4
  %AFMT_AUDIO_SRC_SELECT46 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %13, i32 0, i32 75
  %14 = ptrtoint ptr %AFMT_AUDIO_SRC_SELECT46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %AFMT_AUDIO_SRC_SELECT46, align 4
  %call47 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %3, i32 noundef %7, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %11, i32 noundef %15, i32 noundef %az_inst) #5
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %AFMT_AUDIO_PACKET_CONTROL2 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %AFMT_AUDIO_PACKET_CONTROL2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %AFMT_AUDIO_PACKET_CONTROL2, align 4
  %22 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %se_shift, align 4
  %AFMT_AUDIO_CHANNEL_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %23, i32 0, i32 76
  %24 = ptrtoint ptr %AFMT_AUDIO_CHANNEL_ENABLE to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %AFMT_AUDIO_CHANNEL_ENABLE, align 1
  %26 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %se_mask, align 4
  %AFMT_AUDIO_CHANNEL_ENABLE53 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %27, i32 0, i32 76
  %28 = ptrtoint ptr %AFMT_AUDIO_CHANNEL_ENABLE53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %AFMT_AUDIO_CHANNEL_ENABLE53, align 4
  %call54 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %17, i32 noundef %21, i32 noundef 1, i8 noundef zeroext %25, i32 noundef %29, i32 noundef %retval.sroa.0.0.insert.ext.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_se_dp_audio_enable(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.dce110_se_enable_audio_clock.exit_crit_edge, label %if.end.i

entry.dce110_se_enable_audio_clock.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_se_enable_audio_clock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  %se_shift.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift.i, align 4
  %AFMT_AUDIO_CLOCK_EN.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 107
  %8 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %AFMT_AUDIO_CLOCK_EN.i, align 1
  %se_mask.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask.i, align 4
  %AFMT_AUDIO_CLOCK_EN3.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 107
  %12 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %AFMT_AUDIO_CLOCK_EN3.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %3, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #5
  br label %dce110_se_enable_audio_clock.exit

dce110_se_enable_audio_clock.exit:                ; preds = %if.end.i, %entry.dce110_se_enable_audio_clock.exit_crit_edge
  %ctx.i3 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %14 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx.i3, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %DP_SEC_AUD_N.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %DP_SEC_AUD_N.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DP_SEC_AUD_N.i, align 4
  %se_shift.i5 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %20 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %se_shift.i5, align 4
  %DP_SEC_AUD_N1.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %21, i32 0, i32 100
  %22 = ptrtoint ptr %DP_SEC_AUD_N1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DP_SEC_AUD_N1.i, align 1
  %se_mask.i6 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %24 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %se_mask.i6, align 4
  %DP_SEC_AUD_N2.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %25, i32 0, i32 100
  %26 = ptrtoint ptr %DP_SEC_AUD_N2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DP_SEC_AUD_N2.i, align 4
  %call.i7 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %15, i32 noundef %19, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef 32768) #5
  %28 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx.i3, align 4
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %DP_SEC_TIMESTAMP.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %31, i32 0, i32 34
  %32 = ptrtoint ptr %DP_SEC_TIMESTAMP.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DP_SEC_TIMESTAMP.i, align 4
  %34 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %se_shift.i5, align 4
  %DP_SEC_TIMESTAMP_MODE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %35, i32 0, i32 101
  %36 = ptrtoint ptr %DP_SEC_TIMESTAMP_MODE.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %DP_SEC_TIMESTAMP_MODE.i, align 1
  %38 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %se_mask.i6, align 4
  %DP_SEC_TIMESTAMP_MODE8.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %39, i32 0, i32 101
  %40 = ptrtoint ptr %DP_SEC_TIMESTAMP_MODE8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %DP_SEC_TIMESTAMP_MODE8.i, align 4
  %call9.i = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %29, i32 noundef %33, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %37, i32 noundef %41, i32 noundef 1) #5
  %42 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx.i3, align 4
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %AFMT_AUDIO_PACKET_CONTROL.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %AFMT_AUDIO_PACKET_CONTROL.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %AFMT_AUDIO_PACKET_CONTROL.i, align 4
  %48 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %se_shift.i5, align 4
  %AFMT_60958_CS_UPDATE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %49, i32 0, i32 79
  %50 = ptrtoint ptr %AFMT_60958_CS_UPDATE.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %AFMT_60958_CS_UPDATE.i, align 1
  %52 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %se_mask.i6, align 4
  %AFMT_60958_CS_UPDATE15.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %53, i32 0, i32 79
  %54 = ptrtoint ptr %AFMT_60958_CS_UPDATE15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %AFMT_60958_CS_UPDATE15.i, align 4
  %call16.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %43, i32 noundef %47, i32 noundef 1, i8 noundef zeroext %51, i32 noundef %55, i32 noundef 1) #5
  %56 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx.i3, align 4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %AFMT_AUDIO_PACKET_CONTROL2.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %AFMT_AUDIO_PACKET_CONTROL2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %AFMT_AUDIO_PACKET_CONTROL2.i, align 4
  %62 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %se_shift.i5, align 4
  %AFMT_AUDIO_LAYOUT_OVRD.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %63, i32 0, i32 80
  %64 = ptrtoint ptr %AFMT_AUDIO_LAYOUT_OVRD.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %AFMT_AUDIO_LAYOUT_OVRD.i, align 1
  %66 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %se_mask.i6, align 4
  %AFMT_AUDIO_LAYOUT_OVRD22.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %67, i32 0, i32 80
  %68 = ptrtoint ptr %AFMT_AUDIO_LAYOUT_OVRD22.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %AFMT_AUDIO_LAYOUT_OVRD22.i, align 4
  %AFMT_60958_OSF_OVRD.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %63, i32 0, i32 81
  %70 = ptrtoint ptr %AFMT_60958_OSF_OVRD.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %AFMT_60958_OSF_OVRD.i, align 1
  %conv.i = zext i8 %71 to i32
  %AFMT_60958_OSF_OVRD25.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %67, i32 0, i32 81
  %72 = ptrtoint ptr %AFMT_60958_OSF_OVRD25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %AFMT_60958_OSF_OVRD25.i, align 4
  %call26.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %57, i32 noundef %61, i32 noundef 2, i8 noundef zeroext %65, i32 noundef %69, i32 noundef 0, i32 noundef %conv.i, i32 noundef %73, i32 noundef 0) #5
  %74 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx.i3, align 4
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 4
  %AFMT_INFOFRAME_CONTROL0.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %AFMT_INFOFRAME_CONTROL0.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %AFMT_INFOFRAME_CONTROL0.i, align 4
  %80 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %se_shift.i5, align 4
  %AFMT_AUDIO_INFO_UPDATE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %81, i32 0, i32 46
  %82 = ptrtoint ptr %AFMT_AUDIO_INFO_UPDATE.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %AFMT_AUDIO_INFO_UPDATE.i, align 1
  %84 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %se_mask.i6, align 4
  %AFMT_AUDIO_INFO_UPDATE32.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %85, i32 0, i32 46
  %86 = ptrtoint ptr %AFMT_AUDIO_INFO_UPDATE32.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %AFMT_AUDIO_INFO_UPDATE32.i, align 4
  %call33.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %75, i32 noundef %79, i32 noundef 1, i8 noundef zeroext %83, i32 noundef %87, i32 noundef 1) #5
  %88 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctx.i3, align 4
  %90 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i, align 4
  %AFMT_60958_0.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %91, i32 0, i32 20
  %92 = ptrtoint ptr %AFMT_60958_0.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %AFMT_60958_0.i, align 4
  %94 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %se_shift.i5, align 4
  %AFMT_60958_CS_CLOCK_ACCURACY.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %95, i32 0, i32 92
  %96 = ptrtoint ptr %AFMT_60958_CS_CLOCK_ACCURACY.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %AFMT_60958_CS_CLOCK_ACCURACY.i, align 1
  %98 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %se_mask.i6, align 4
  %AFMT_60958_CS_CLOCK_ACCURACY39.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %99, i32 0, i32 92
  %100 = ptrtoint ptr %AFMT_60958_CS_CLOCK_ACCURACY39.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %AFMT_60958_CS_CLOCK_ACCURACY39.i, align 4
  %call40.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %89, i32 noundef %93, i32 noundef 1, i8 noundef zeroext %97, i32 noundef %101, i32 noundef 0) #5
  %102 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctx.i3, align 4
  %104 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i, align 4
  %DP_SEC_CNTL.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %105, i32 0, i32 27
  %106 = ptrtoint ptr %DP_SEC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %DP_SEC_CNTL.i, align 4
  %108 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %se_shift.i5, align 4
  %DP_SEC_ASP_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %109, i32 0, i32 102
  %110 = ptrtoint ptr %DP_SEC_ASP_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %DP_SEC_ASP_ENABLE.i, align 1
  %112 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %se_mask.i6, align 4
  %DP_SEC_ASP_ENABLE1.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %113, i32 0, i32 102
  %114 = ptrtoint ptr %DP_SEC_ASP_ENABLE1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %DP_SEC_ASP_ENABLE1.i, align 4
  %call.i12 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %103, i32 noundef %107, i32 noundef 1, i8 noundef zeroext %111, i32 noundef %115, i32 noundef 1) #5
  %116 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctx.i3, align 4
  %118 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i, align 4
  %DP_SEC_CNTL5.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %119, i32 0, i32 27
  %120 = ptrtoint ptr %DP_SEC_CNTL5.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %DP_SEC_CNTL5.i, align 4
  %122 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %se_shift.i5, align 4
  %DP_SEC_ATP_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %123, i32 0, i32 103
  %124 = ptrtoint ptr %DP_SEC_ATP_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %DP_SEC_ATP_ENABLE.i, align 1
  %126 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %se_mask.i6, align 4
  %DP_SEC_ATP_ENABLE8.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %127, i32 0, i32 103
  %128 = ptrtoint ptr %DP_SEC_ATP_ENABLE8.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %DP_SEC_ATP_ENABLE8.i, align 4
  %DP_SEC_AIP_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %123, i32 0, i32 104
  %130 = ptrtoint ptr %DP_SEC_AIP_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %DP_SEC_AIP_ENABLE.i, align 1
  %conv.i13 = zext i8 %131 to i32
  %DP_SEC_AIP_ENABLE11.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %127, i32 0, i32 104
  %132 = ptrtoint ptr %DP_SEC_AIP_ENABLE11.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %DP_SEC_AIP_ENABLE11.i, align 4
  %call12.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %117, i32 noundef %121, i32 noundef 2, i8 noundef zeroext %125, i32 noundef %129, i32 noundef 1, i32 noundef %conv.i13, i32 noundef %133, i32 noundef 1) #5
  %134 = ptrtoint ptr %ctx.i3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ctx.i3, align 4
  %136 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i, align 4
  %DP_SEC_CNTL16.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %137, i32 0, i32 27
  %138 = ptrtoint ptr %DP_SEC_CNTL16.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %DP_SEC_CNTL16.i, align 4
  %140 = ptrtoint ptr %se_shift.i5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %se_shift.i5, align 4
  %DP_SEC_STREAM_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %141, i32 0, i32 57
  %142 = ptrtoint ptr %DP_SEC_STREAM_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %DP_SEC_STREAM_ENABLE.i, align 1
  %144 = ptrtoint ptr %se_mask.i6 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %se_mask.i6, align 4
  %DP_SEC_STREAM_ENABLE19.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %145, i32 0, i32 57
  %146 = ptrtoint ptr %DP_SEC_STREAM_ENABLE19.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %DP_SEC_STREAM_ENABLE19.i, align 4
  %call20.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %135, i32 noundef %139, i32 noundef 1, i8 noundef zeroext %143, i32 noundef %147, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_se_dp_audio_disable(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %DP_SEC_CNTL.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %DP_SEC_CNTL.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DP_SEC_CNTL.i, align 4
  %se_shift.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift.i, align 4
  %DP_SEC_ASP_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 102
  %8 = ptrtoint ptr %DP_SEC_ASP_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DP_SEC_ASP_ENABLE.i, align 1
  %se_mask.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask.i, align 4
  %DP_SEC_ASP_ENABLE1.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 102
  %12 = ptrtoint ptr %DP_SEC_ASP_ENABLE1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DP_SEC_ASP_ENABLE1.i, align 4
  %DP_SEC_ATP_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 103
  %14 = ptrtoint ptr %DP_SEC_ATP_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %DP_SEC_ATP_ENABLE.i, align 1
  %conv.i = zext i8 %15 to i32
  %DP_SEC_ATP_ENABLE4.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 103
  %16 = ptrtoint ptr %DP_SEC_ATP_ENABLE4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DP_SEC_ATP_ENABLE4.i, align 4
  %DP_SEC_AIP_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 104
  %18 = ptrtoint ptr %DP_SEC_AIP_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %DP_SEC_AIP_ENABLE.i, align 1
  %conv6.i = zext i8 %19 to i32
  %DP_SEC_AIP_ENABLE8.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 104
  %20 = ptrtoint ptr %DP_SEC_AIP_ENABLE8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DP_SEC_AIP_ENABLE8.i, align 4
  %DP_SEC_ACM_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 105
  %22 = ptrtoint ptr %DP_SEC_ACM_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DP_SEC_ACM_ENABLE.i, align 1
  %conv10.i = zext i8 %23 to i32
  %DP_SEC_ACM_ENABLE12.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 105
  %24 = ptrtoint ptr %DP_SEC_ACM_ENABLE12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %DP_SEC_ACM_ENABLE12.i, align 4
  %DP_SEC_STREAM_ENABLE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 57
  %26 = ptrtoint ptr %DP_SEC_STREAM_ENABLE.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %DP_SEC_STREAM_ENABLE.i, align 1
  %conv14.i = zext i8 %27 to i32
  %DP_SEC_STREAM_ENABLE16.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 57
  %28 = ptrtoint ptr %DP_SEC_STREAM_ENABLE16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %DP_SEC_STREAM_ENABLE16.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 5, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv.i, i32 noundef %17, i32 noundef 0, i32 noundef %conv6.i, i32 noundef %21, i32 noundef 0, i32 noundef %conv10.i, i32 noundef %25, i32 noundef 0, i32 noundef %conv14.i, i32 noundef %29, i32 noundef 0) #5
  %30 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx.i, align 4
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %DP_SEC_CNTL20.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %DP_SEC_CNTL20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DP_SEC_CNTL20.i, align 4
  %call21.i = tail call i32 @dm_read_reg_func(ptr noundef %31, i32 noundef %35, ptr noundef nonnull @__func__.dce110_se_disable_dp_audio) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp.not.i, label %entry.dce110_se_disable_dp_audio.exit_crit_edge, label %if.then.i

entry.dce110_se_disable_dp_audio.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_se_disable_dp_audio.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx.i, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %DP_SEC_CNTL26.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %DP_SEC_CNTL26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %DP_SEC_CNTL26.i, align 4
  %42 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %se_shift.i, align 4
  %DP_SEC_STREAM_ENABLE28.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %43, i32 0, i32 57
  %44 = ptrtoint ptr %DP_SEC_STREAM_ENABLE28.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %DP_SEC_STREAM_ENABLE28.i, align 1
  %46 = ptrtoint ptr %se_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %se_mask.i, align 4
  %DP_SEC_STREAM_ENABLE30.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %47, i32 0, i32 57
  %48 = ptrtoint ptr %DP_SEC_STREAM_ENABLE30.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %DP_SEC_STREAM_ENABLE30.i, align 4
  %call31.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %37, i32 noundef %41, i32 noundef 1, i8 noundef zeroext %45, i32 noundef %49, i32 noundef 1) #5
  br label %dce110_se_disable_dp_audio.exit

dce110_se_disable_dp_audio.exit:                  ; preds = %if.then.i, %entry.dce110_se_disable_dp_audio.exit_crit_edge
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i = icmp eq i32 %53, 0
  br i1 %cmp.i, label %dce110_se_disable_dp_audio.exit.dce110_se_enable_audio_clock.exit_crit_edge, label %if.end.i

dce110_se_disable_dp_audio.exit.dce110_se_enable_audio_clock.exit_crit_edge: ; preds = %dce110_se_disable_dp_audio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_se_enable_audio_clock.exit

if.end.i:                                         ; preds = %dce110_se_disable_dp_audio.exit
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx.i, align 4
  %56 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %se_shift.i, align 4
  %AFMT_AUDIO_CLOCK_EN.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %57, i32 0, i32 107
  %58 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %AFMT_AUDIO_CLOCK_EN.i, align 1
  %60 = ptrtoint ptr %se_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %se_mask.i, align 4
  %AFMT_AUDIO_CLOCK_EN3.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %61, i32 0, i32 107
  %62 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %AFMT_AUDIO_CLOCK_EN3.i, align 4
  %call.i6 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %55, i32 noundef %53, i32 noundef 1, i8 noundef zeroext %59, i32 noundef %63, i32 noundef 0) #5
  br label %dce110_se_enable_audio_clock.exit

dce110_se_enable_audio_clock.exit:                ; preds = %if.end.i, %dce110_se_disable_dp_audio.exit.dce110_se_enable_audio_clock.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_se_hdmi_audio_setup(ptr nocapture noundef readonly %enc, i32 noundef %az_inst, ptr noundef %info, ptr nocapture noundef readonly %audio_crtc_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.dce110_se_enable_audio_clock.exit_crit_edge, label %if.end.i

entry.dce110_se_enable_audio_clock.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_se_enable_audio_clock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  %se_shift.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift.i, align 4
  %AFMT_AUDIO_CLOCK_EN.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 107
  %8 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %AFMT_AUDIO_CLOCK_EN.i, align 1
  %se_mask.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask.i, align 4
  %AFMT_AUDIO_CLOCK_EN3.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 107
  %12 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %AFMT_AUDIO_CLOCK_EN3.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %3, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #5
  br label %dce110_se_enable_audio_clock.exit

dce110_se_enable_audio_clock.exit:                ; preds = %if.end.i, %entry.dce110_se_enable_audio_clock.exit_crit_edge
  tail call fastcc void @dce110_se_setup_hdmi_audio(ptr noundef %enc, ptr noundef %audio_crtc_info)
  tail call fastcc void @dce110_se_audio_setup(ptr noundef %enc, i32 noundef %az_inst, ptr noundef %info)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce110_se_setup_hdmi_audio(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %crtc_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc_info, align 4
  %h_active.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 1
  %2 = ptrtoint ptr %h_active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_active.i, align 4
  %sub.i = sub i32 %1, %3
  %pixel_repetition.i = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 3
  %4 = ptrtoint ptr %pixel_repetition.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_repetition.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %mul.i = select i1 %tobool.not.i, i32 1, i32 %5
  %spec.select.i = mul i32 %mul.i, %sub.i
  %sub3.i = add i32 %spec.select.i, -74
  %div11.i = lshr i32 %sub3.i, 5
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %HDMI_AUDIO_PACKET_CONTROL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %HDMI_AUDIO_PACKET_CONTROL to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %HDMI_AUDIO_PACKET_CONTROL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %12 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se_shift, align 4
  %HDMI_AUDIO_PACKETS_PER_LINE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %13, i32 0, i32 77
  %14 = ptrtoint ptr %HDMI_AUDIO_PACKETS_PER_LINE to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %HDMI_AUDIO_PACKETS_PER_LINE, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %16 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %se_mask, align 4
  %HDMI_AUDIO_PACKETS_PER_LINE1 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %17, i32 0, i32 77
  %18 = ptrtoint ptr %HDMI_AUDIO_PACKETS_PER_LINE1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %HDMI_AUDIO_PACKETS_PER_LINE1, align 4
  %HDMI_AUDIO_DELAY_EN = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %13, i32 0, i32 78
  %20 = ptrtoint ptr %HDMI_AUDIO_DELAY_EN to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %HDMI_AUDIO_DELAY_EN, align 1
  %conv = zext i8 %21 to i32
  %HDMI_AUDIO_DELAY_EN4 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %17, i32 0, i32 78
  %22 = ptrtoint ptr %HDMI_AUDIO_DELAY_EN4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %HDMI_AUDIO_DELAY_EN4, align 4
  %call5 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %7, i32 noundef %11, i32 noundef 2, i8 noundef zeroext %15, i32 noundef %19, i32 noundef %div11.i, i32 noundef %conv, i32 noundef %23, i32 noundef 1) #5
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %AFMT_AUDIO_PACKET_CONTROL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %AFMT_AUDIO_PACKET_CONTROL to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %AFMT_AUDIO_PACKET_CONTROL, align 4
  %30 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %se_shift, align 4
  %AFMT_60958_CS_UPDATE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %31, i32 0, i32 79
  %32 = ptrtoint ptr %AFMT_60958_CS_UPDATE to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %AFMT_60958_CS_UPDATE, align 1
  %34 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %se_mask, align 4
  %AFMT_60958_CS_UPDATE11 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %35, i32 0, i32 79
  %36 = ptrtoint ptr %AFMT_60958_CS_UPDATE11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %AFMT_60958_CS_UPDATE11, align 4
  %call12 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %25, i32 noundef %29, i32 noundef 1, i8 noundef zeroext %33, i32 noundef %37, i32 noundef 1) #5
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %AFMT_AUDIO_PACKET_CONTROL2 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %AFMT_AUDIO_PACKET_CONTROL2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %AFMT_AUDIO_PACKET_CONTROL2, align 4
  %44 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %se_shift, align 4
  %AFMT_AUDIO_LAYOUT_OVRD = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %45, i32 0, i32 80
  %46 = ptrtoint ptr %AFMT_AUDIO_LAYOUT_OVRD to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %AFMT_AUDIO_LAYOUT_OVRD, align 1
  %48 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %se_mask, align 4
  %AFMT_AUDIO_LAYOUT_OVRD18 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %49, i32 0, i32 80
  %50 = ptrtoint ptr %AFMT_AUDIO_LAYOUT_OVRD18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %AFMT_AUDIO_LAYOUT_OVRD18, align 4
  %AFMT_60958_OSF_OVRD = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %45, i32 0, i32 81
  %52 = ptrtoint ptr %AFMT_60958_OSF_OVRD to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %AFMT_60958_OSF_OVRD, align 1
  %conv20 = zext i8 %53 to i32
  %AFMT_60958_OSF_OVRD22 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %49, i32 0, i32 81
  %54 = ptrtoint ptr %AFMT_60958_OSF_OVRD22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %AFMT_60958_OSF_OVRD22, align 4
  %call23 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %39, i32 noundef %43, i32 noundef 2, i8 noundef zeroext %47, i32 noundef %51, i32 noundef 0, i32 noundef %conv20, i32 noundef %55, i32 noundef 0) #5
  %56 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx, align 4
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %HDMI_ACR_PACKET_CONTROL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %59, i32 0, i32 45
  %60 = ptrtoint ptr %HDMI_ACR_PACKET_CONTROL to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %HDMI_ACR_PACKET_CONTROL, align 4
  %62 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %se_shift, align 4
  %HDMI_ACR_AUTO_SEND = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %63, i32 0, i32 82
  %64 = ptrtoint ptr %HDMI_ACR_AUTO_SEND to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %HDMI_ACR_AUTO_SEND, align 1
  %66 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %se_mask, align 4
  %HDMI_ACR_AUTO_SEND29 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %67, i32 0, i32 82
  %68 = ptrtoint ptr %HDMI_ACR_AUTO_SEND29 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %HDMI_ACR_AUTO_SEND29, align 4
  %HDMI_ACR_SOURCE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %63, i32 0, i32 83
  %70 = ptrtoint ptr %HDMI_ACR_SOURCE to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %HDMI_ACR_SOURCE, align 1
  %conv31 = zext i8 %71 to i32
  %HDMI_ACR_SOURCE33 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %67, i32 0, i32 83
  %72 = ptrtoint ptr %HDMI_ACR_SOURCE33 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %HDMI_ACR_SOURCE33, align 4
  %HDMI_ACR_AUDIO_PRIORITY = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %63, i32 0, i32 84
  %74 = ptrtoint ptr %HDMI_ACR_AUDIO_PRIORITY to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %HDMI_ACR_AUDIO_PRIORITY, align 1
  %conv35 = zext i8 %75 to i32
  %HDMI_ACR_AUDIO_PRIORITY37 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %67, i32 0, i32 84
  %76 = ptrtoint ptr %HDMI_ACR_AUDIO_PRIORITY37 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %HDMI_ACR_AUDIO_PRIORITY37, align 4
  %call38 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %57, i32 noundef %61, i32 noundef 3, i8 noundef zeroext %65, i32 noundef %69, i32 noundef 1, i32 noundef %conv31, i32 noundef %73, i32 noundef 0, i32 noundef %conv35, i32 noundef %77, i32 noundef 0) #5
  %color_depth = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 7
  %78 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %color_depth, align 4
  %requested_pixel_clock_100Hz = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 4
  %80 = ptrtoint ptr %requested_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %requested_pixel_clock_100Hz, align 4
  %calculated_pixel_clock_100Hz = getelementptr inbounds %struct.audio_crtc_info, ptr %crtc_info, i32 0, i32 5
  %82 = ptrtoint ptr %calculated_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %calculated_pixel_clock_100Hz, align 4
  %div.i = udiv i32 %81, 100
  %84 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %79, label %sw.default.i [
    i32 6, label %entry.if.then.i_crit_edge
    i32 4, label %sw.bb1.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %sw.default.i, %sw.bb1.i, %entry.if.then.i_crit_edge
  %clock_info.0.i = phi ptr [ @audio_clock_info_table, %sw.default.i ], [ @audio_clock_info_table_36bpc, %sw.bb1.i ], [ @audio_clock_info_table_48bpc, %entry.if.then.i_crit_edge ]
  %audio_array_size.0.i = phi i32 [ 16, %sw.default.i ], [ 14, %sw.bb1.i ], [ 14, %entry.if.then.i_crit_edge ]
  br label %for.body.i

for.cond.i:                                       ; preds = %if.else.i
  %inc.i = add nuw nsw i32 %index.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %audio_array_size.0.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end11.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.if.end11.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.i
  %index.043.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.audio_clock_info, ptr %clock_info.0.i, i32 %index.043.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %div.i)
  %cmp3.i = icmp ugt i32 %86, %div.i
  br i1 %cmp3.i, label %for.body.i.if.end11.i_crit_edge, label %if.else.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %div.i)
  %cmp7.i = icmp eq i32 %86, %div.i
  br i1 %cmp7.i, label %if.then8.i, label %for.cond.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %audio_clock_info.sroa.5.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %87 = ptrtoint ptr %audio_clock_info.sroa.5.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %87)
  %audio_clock_info.sroa.5.0.copyload = load i32, ptr %audio_clock_info.sroa.5.0.arrayidx.i.sroa_idx, align 4
  %audio_clock_info.sroa.7.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %88 = ptrtoint ptr %audio_clock_info.sroa.7.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %88)
  %audio_clock_info.sroa.7.0.copyload = load i32, ptr %audio_clock_info.sroa.7.0.arrayidx.i.sroa_idx, align 4
  %audio_clock_info.sroa.9.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %89 = ptrtoint ptr %audio_clock_info.sroa.9.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %89)
  %audio_clock_info.sroa.9.0.copyload = load i32, ptr %audio_clock_info.sroa.9.0.arrayidx.i.sroa_idx, align 4
  %audio_clock_info.sroa.11.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 16
  %90 = ptrtoint ptr %audio_clock_info.sroa.11.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %90)
  %audio_clock_info.sroa.11.0.copyload = load i32, ptr %audio_clock_info.sroa.11.0.arrayidx.i.sroa_idx, align 4
  %audio_clock_info.sroa.13.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 20
  %91 = ptrtoint ptr %audio_clock_info.sroa.13.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %audio_clock_info.sroa.13.0.copyload = load i32, ptr %audio_clock_info.sroa.13.0.arrayidx.i.sroa_idx, align 4
  %audio_clock_info.sroa.15.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 24
  %92 = ptrtoint ptr %audio_clock_info.sroa.15.0.arrayidx.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %92)
  %audio_clock_info.sroa.15.0.copyload = load i32, ptr %audio_clock_info.sroa.15.0.arrayidx.i.sroa_idx, align 4
  br label %get_audio_clock_info.exit

if.end11.i:                                       ; preds = %for.body.i.if.end11.i_crit_edge, %for.cond.i.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp12.i = icmp eq i32 %83, 0
  %spec.select.i208 = select i1 %cmp12.i, i32 %81, i32 %83
  %div17.i = udiv i32 %spec.select.i208, 10
  br label %get_audio_clock_info.exit

get_audio_clock_info.exit:                        ; preds = %if.end11.i, %if.then8.i
  %audio_clock_info.sroa.5.0 = phi i32 [ 4096, %if.end11.i ], [ %audio_clock_info.sroa.5.0.copyload, %if.then8.i ]
  %audio_clock_info.sroa.7.0 = phi i32 [ %div17.i, %if.end11.i ], [ %audio_clock_info.sroa.7.0.copyload, %if.then8.i ]
  %audio_clock_info.sroa.9.0 = phi i32 [ 6272, %if.end11.i ], [ %audio_clock_info.sroa.9.0.copyload, %if.then8.i ]
  %audio_clock_info.sroa.11.0 = phi i32 [ %div17.i, %if.end11.i ], [ %audio_clock_info.sroa.11.0.copyload, %if.then8.i ]
  %audio_clock_info.sroa.13.0 = phi i32 [ 6144, %if.end11.i ], [ %audio_clock_info.sroa.13.0.copyload, %if.then8.i ]
  %audio_clock_info.sroa.15.0 = phi i32 [ %div17.i, %if.end11.i ], [ %audio_clock_info.sroa.15.0.copyload, %if.then8.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce110_se_setup_hdmi_audio.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce110_se_setup_hdmi_audio, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !64

if.then:                                          ; preds = %get_audio_clock_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %requested_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %requested_pixel_clock_100Hz, align 4
  %95 = ptrtoint ptr %calculated_pixel_clock_100Hz to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %calculated_pixel_clock_100Hz, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce110_se_setup_hdmi_audio.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %94, i32 noundef %96) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %get_audio_clock_info.exit
  %97 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ctx, align 4
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 4
  %HDMI_ACR_32_0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %100, i32 0, i32 46
  %101 = ptrtoint ptr %HDMI_ACR_32_0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %HDMI_ACR_32_0, align 4
  %103 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %se_shift, align 4
  %HDMI_ACR_CTS_32 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %104, i32 0, i32 85
  %105 = ptrtoint ptr %HDMI_ACR_CTS_32 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %HDMI_ACR_CTS_32, align 1
  %107 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %se_mask, align 4
  %HDMI_ACR_CTS_3250 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %108, i32 0, i32 85
  %109 = ptrtoint ptr %HDMI_ACR_CTS_3250 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %HDMI_ACR_CTS_3250, align 4
  %call51 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %98, i32 noundef %102, i32 noundef 1, i8 noundef zeroext %106, i32 noundef %110, i32 noundef %audio_clock_info.sroa.7.0) #5
  %111 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctx, align 4
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 4
  %HDMI_ACR_32_1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %114, i32 0, i32 47
  %115 = ptrtoint ptr %HDMI_ACR_32_1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %HDMI_ACR_32_1, align 4
  %117 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %se_shift, align 4
  %HDMI_ACR_N_32 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %118, i32 0, i32 86
  %119 = ptrtoint ptr %HDMI_ACR_N_32 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %HDMI_ACR_N_32, align 1
  %121 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %se_mask, align 4
  %HDMI_ACR_N_3257 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %122, i32 0, i32 86
  %123 = ptrtoint ptr %HDMI_ACR_N_3257 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %HDMI_ACR_N_3257, align 4
  %call58 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %112, i32 noundef %116, i32 noundef 1, i8 noundef zeroext %120, i32 noundef %124, i32 noundef %audio_clock_info.sroa.5.0) #5
  %125 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ctx, align 4
  %127 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs, align 4
  %HDMI_ACR_44_0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %128, i32 0, i32 48
  %129 = ptrtoint ptr %HDMI_ACR_44_0 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %HDMI_ACR_44_0, align 4
  %131 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %se_shift, align 4
  %HDMI_ACR_CTS_44 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %132, i32 0, i32 87
  %133 = ptrtoint ptr %HDMI_ACR_CTS_44 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %HDMI_ACR_CTS_44, align 1
  %135 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %se_mask, align 4
  %HDMI_ACR_CTS_4464 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %136, i32 0, i32 87
  %137 = ptrtoint ptr %HDMI_ACR_CTS_4464 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %HDMI_ACR_CTS_4464, align 4
  %call65 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %126, i32 noundef %130, i32 noundef 1, i8 noundef zeroext %134, i32 noundef %138, i32 noundef %audio_clock_info.sroa.11.0) #5
  %139 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ctx, align 4
  %141 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs, align 4
  %HDMI_ACR_44_1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %142, i32 0, i32 49
  %143 = ptrtoint ptr %HDMI_ACR_44_1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %HDMI_ACR_44_1, align 4
  %145 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %se_shift, align 4
  %HDMI_ACR_N_44 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %146, i32 0, i32 88
  %147 = ptrtoint ptr %HDMI_ACR_N_44 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %HDMI_ACR_N_44, align 1
  %149 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %se_mask, align 4
  %HDMI_ACR_N_4471 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %150, i32 0, i32 88
  %151 = ptrtoint ptr %HDMI_ACR_N_4471 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %HDMI_ACR_N_4471, align 4
  %call72 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %140, i32 noundef %144, i32 noundef 1, i8 noundef zeroext %148, i32 noundef %152, i32 noundef %audio_clock_info.sroa.9.0) #5
  %153 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ctx, align 4
  %155 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs, align 4
  %HDMI_ACR_48_0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %156, i32 0, i32 50
  %157 = ptrtoint ptr %HDMI_ACR_48_0 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %HDMI_ACR_48_0, align 4
  %159 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %se_shift, align 4
  %HDMI_ACR_CTS_48 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %160, i32 0, i32 89
  %161 = ptrtoint ptr %HDMI_ACR_CTS_48 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %HDMI_ACR_CTS_48, align 1
  %163 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %se_mask, align 4
  %HDMI_ACR_CTS_4878 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %164, i32 0, i32 89
  %165 = ptrtoint ptr %HDMI_ACR_CTS_4878 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %HDMI_ACR_CTS_4878, align 4
  %call79 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %154, i32 noundef %158, i32 noundef 1, i8 noundef zeroext %162, i32 noundef %166, i32 noundef %audio_clock_info.sroa.15.0) #5
  %167 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ctx, align 4
  %169 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs, align 4
  %HDMI_ACR_48_1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %170, i32 0, i32 51
  %171 = ptrtoint ptr %HDMI_ACR_48_1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %HDMI_ACR_48_1, align 4
  %173 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %se_shift, align 4
  %HDMI_ACR_N_48 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %174, i32 0, i32 90
  %175 = ptrtoint ptr %HDMI_ACR_N_48 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %HDMI_ACR_N_48, align 1
  %177 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %se_mask, align 4
  %HDMI_ACR_N_4885 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %178, i32 0, i32 90
  %179 = ptrtoint ptr %HDMI_ACR_N_4885 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %HDMI_ACR_N_4885, align 4
  %call86 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %168, i32 noundef %172, i32 noundef 1, i8 noundef zeroext %176, i32 noundef %180, i32 noundef %audio_clock_info.sroa.13.0) #5
  %181 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ctx, align 4
  %183 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs, align 4
  %AFMT_60958_0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %184, i32 0, i32 20
  %185 = ptrtoint ptr %AFMT_60958_0 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %AFMT_60958_0, align 4
  %187 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %se_shift, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_L = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %188, i32 0, i32 91
  %189 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_L to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %AFMT_60958_CS_CHANNEL_NUMBER_L, align 1
  %191 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %se_mask, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_L92 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %192, i32 0, i32 91
  %193 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_L92 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %AFMT_60958_CS_CHANNEL_NUMBER_L92, align 4
  %AFMT_60958_CS_CLOCK_ACCURACY = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %188, i32 0, i32 92
  %195 = ptrtoint ptr %AFMT_60958_CS_CLOCK_ACCURACY to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %AFMT_60958_CS_CLOCK_ACCURACY, align 1
  %conv94 = zext i8 %196 to i32
  %AFMT_60958_CS_CLOCK_ACCURACY96 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %192, i32 0, i32 92
  %197 = ptrtoint ptr %AFMT_60958_CS_CLOCK_ACCURACY96 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %AFMT_60958_CS_CLOCK_ACCURACY96, align 4
  %call97 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %182, i32 noundef %186, i32 noundef 2, i8 noundef zeroext %190, i32 noundef %194, i32 noundef 1, i32 noundef %conv94, i32 noundef %198, i32 noundef 0) #5
  %199 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ctx, align 4
  %201 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regs, align 4
  %AFMT_60958_1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %202, i32 0, i32 21
  %203 = ptrtoint ptr %AFMT_60958_1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %AFMT_60958_1, align 4
  %205 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %se_shift, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_R = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %206, i32 0, i32 93
  %207 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_R to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %AFMT_60958_CS_CHANNEL_NUMBER_R, align 1
  %209 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %se_mask, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_R103 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %210, i32 0, i32 93
  %211 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_R103 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %AFMT_60958_CS_CHANNEL_NUMBER_R103, align 4
  %call104 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %200, i32 noundef %204, i32 noundef 1, i8 noundef zeroext %208, i32 noundef %212, i32 noundef 2) #5
  %213 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ctx, align 4
  %215 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regs, align 4
  %AFMT_60958_2 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %216, i32 0, i32 22
  %217 = ptrtoint ptr %AFMT_60958_2 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %AFMT_60958_2, align 4
  %219 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %se_shift, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_2 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %220, i32 0, i32 94
  %221 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_2 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %AFMT_60958_CS_CHANNEL_NUMBER_2, align 1
  %223 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %se_mask, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_2110 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %224, i32 0, i32 94
  %225 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_2110 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %AFMT_60958_CS_CHANNEL_NUMBER_2110, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_3 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %220, i32 0, i32 95
  %227 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_3 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %AFMT_60958_CS_CHANNEL_NUMBER_3, align 1
  %conv112 = zext i8 %228 to i32
  %AFMT_60958_CS_CHANNEL_NUMBER_3114 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %224, i32 0, i32 95
  %229 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_3114 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %AFMT_60958_CS_CHANNEL_NUMBER_3114, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_4 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %220, i32 0, i32 96
  %231 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_4 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %AFMT_60958_CS_CHANNEL_NUMBER_4, align 1
  %conv116 = zext i8 %232 to i32
  %AFMT_60958_CS_CHANNEL_NUMBER_4118 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %224, i32 0, i32 96
  %233 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_4118 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %AFMT_60958_CS_CHANNEL_NUMBER_4118, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_5 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %220, i32 0, i32 97
  %235 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_5 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %AFMT_60958_CS_CHANNEL_NUMBER_5, align 1
  %conv120 = zext i8 %236 to i32
  %AFMT_60958_CS_CHANNEL_NUMBER_5122 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %224, i32 0, i32 97
  %237 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_5122 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %AFMT_60958_CS_CHANNEL_NUMBER_5122, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_6 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %220, i32 0, i32 98
  %239 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_6 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %AFMT_60958_CS_CHANNEL_NUMBER_6, align 1
  %conv124 = zext i8 %240 to i32
  %AFMT_60958_CS_CHANNEL_NUMBER_6126 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %224, i32 0, i32 98
  %241 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_6126 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %AFMT_60958_CS_CHANNEL_NUMBER_6126, align 4
  %AFMT_60958_CS_CHANNEL_NUMBER_7 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %220, i32 0, i32 99
  %243 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_7 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %AFMT_60958_CS_CHANNEL_NUMBER_7, align 1
  %conv128 = zext i8 %244 to i32
  %AFMT_60958_CS_CHANNEL_NUMBER_7130 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %224, i32 0, i32 99
  %245 = ptrtoint ptr %AFMT_60958_CS_CHANNEL_NUMBER_7130 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %AFMT_60958_CS_CHANNEL_NUMBER_7130, align 4
  %call131 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %214, i32 noundef %218, i32 noundef 6, i8 noundef zeroext %222, i32 noundef %226, i32 noundef 3, i32 noundef %conv112, i32 noundef %230, i32 noundef 4, i32 noundef %conv116, i32 noundef %234, i32 noundef 5, i32 noundef %conv120, i32 noundef %238, i32 noundef 6, i32 noundef %conv124, i32 noundef %242, i32 noundef 7, i32 noundef %conv128, i32 noundef %246, i32 noundef 8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_se_hdmi_audio_disable(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.dce110_se_enable_audio_clock.exit_crit_edge, label %if.end.i

entry.dce110_se_enable_audio_clock.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_se_enable_audio_clock.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx.i = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx.i, align 4
  %se_shift.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift.i, align 4
  %AFMT_AUDIO_CLOCK_EN.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 107
  %8 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %AFMT_AUDIO_CLOCK_EN.i, align 1
  %se_mask.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask.i, align 4
  %AFMT_AUDIO_CLOCK_EN3.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 107
  %12 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %AFMT_AUDIO_CLOCK_EN3.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %3, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0) #5
  br label %dce110_se_enable_audio_clock.exit

dce110_se_enable_audio_clock.exit:                ; preds = %if.end.i, %entry.dce110_se_enable_audio_clock.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce110_stream_encoder_construct(ptr nocapture noundef writeonly %enc110, ptr noundef %ctx, ptr noundef %bp, i32 noundef %eng_id, ptr noundef %regs, ptr noundef %se_shift, ptr noundef %se_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enc110 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dce110_str_enc_funcs, ptr %enc110, align 4
  %ctx2 = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 1
  %1 = ptrtoint ptr %ctx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %ctx2, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %eng_id, ptr %id, align 4
  %bp5 = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 2
  %3 = ptrtoint ptr %bp5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bp, ptr %bp5, align 4
  %regs6 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 1
  %4 = ptrtoint ptr %regs6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regs, ptr %regs6, align 4
  %se_shift7 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 2
  %5 = ptrtoint ptr %se_shift7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %se_shift, ptr %se_shift7, align 4
  %se_mask8 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 3
  %6 = ptrtoint ptr %se_mask8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %se_mask, ptr %se_mask8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_set_ex(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_dp_set_stream_attribute(ptr noundef readonly %enc, ptr nocapture noundef readonly %crtc_timing, i32 noundef %output_color_space, i1 noundef zeroext %use_vsc_sdp_for_colorimetry, i32 noundef %enable_sdp_splitting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_crtc_timing.sroa.16116.0..sroa_idx = getelementptr inbounds i8, ptr %crtc_timing, i32 64
  %0 = ptrtoint ptr %hw_crtc_timing.sroa.16116.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %hw_crtc_timing.sroa.16116.0.copyload = load i32, ptr %hw_crtc_timing.sroa.16116.0..sroa_idx, align 4
  %hw_crtc_timing.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %crtc_timing, i32 68
  %1 = ptrtoint ptr %hw_crtc_timing.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %hw_crtc_timing.sroa.18.0.copyload = load i32, ptr %hw_crtc_timing.sroa.18.0..sroa_idx, align 4
  %2 = zext i32 %hw_crtc_timing.sroa.18.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %hw_crtc_timing.sroa.18.0.copyload, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb7
    i32 4, label %sw.bb34
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %DP_PIXEL_FORMAT = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %6, i32 0, i32 26
  %7 = ptrtoint ptr %DP_PIXEL_FORMAT to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DP_PIXEL_FORMAT, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %9 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_shift, align 4
  %DP_PIXEL_ENCODING = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %DP_PIXEL_ENCODING to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %DP_PIXEL_ENCODING, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %13 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %se_mask, align 4
  %DP_PIXEL_ENCODING6 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %14, i32 0, i32 32
  %15 = ptrtoint ptr %DP_PIXEL_ENCODING6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %DP_PIXEL_ENCODING6, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %4, i32 noundef %8, i32 noundef 1, i8 noundef zeroext %12, i32 noundef %16, i32 noundef 1) #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %hw_crtc_timing.sroa.19118.0..sroa_idx = getelementptr inbounds i8, ptr %crtc_timing, i32 84
  %17 = ptrtoint ptr %hw_crtc_timing.sroa.19118.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %hw_crtc_timing.sroa.19118.0.copyload = load i32, ptr %hw_crtc_timing.sroa.19118.0..sroa_idx, align 4
  %ctx9 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %18 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx9, align 4
  %regs10 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %20 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs10, align 4
  %DP_PIXEL_FORMAT11 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %DP_PIXEL_FORMAT11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DP_PIXEL_FORMAT11, align 4
  %se_shift12 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %24 = ptrtoint ptr %se_shift12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %se_shift12, align 4
  %DP_PIXEL_ENCODING13 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %DP_PIXEL_ENCODING13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %DP_PIXEL_ENCODING13, align 1
  %se_mask14 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %28 = ptrtoint ptr %se_mask14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se_mask14, align 4
  %DP_PIXEL_ENCODING15 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %29, i32 0, i32 32
  %30 = ptrtoint ptr %DP_PIXEL_ENCODING15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %DP_PIXEL_ENCODING15, align 4
  %call16 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %19, i32 noundef %23, i32 noundef 1, i8 noundef zeroext %27, i32 noundef %31, i32 noundef 2) #5
  %32 = and i32 %hw_crtc_timing.sroa.19118.0.copyload, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool20.not = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %hw_crtc_timing.sroa.16116.0.copyload)
  %cmp.not = icmp eq i32 %hw_crtc_timing.sroa.16116.0.copyload, 1
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %sw.bb7.sw.epilog_crit_edge, label %if.then22

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx9, align 4
  %35 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs10, align 4
  %DP_PIXEL_FORMAT26 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %DP_PIXEL_FORMAT26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %DP_PIXEL_FORMAT26, align 4
  %39 = ptrtoint ptr %se_shift12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %se_shift12, align 4
  %DP_PIXEL_ENCODING28 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %40, i32 0, i32 32
  %41 = ptrtoint ptr %DP_PIXEL_ENCODING28 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %DP_PIXEL_ENCODING28, align 1
  %43 = ptrtoint ptr %se_mask14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %se_mask14, align 4
  %DP_PIXEL_ENCODING30 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %44, i32 0, i32 32
  %45 = ptrtoint ptr %DP_PIXEL_ENCODING30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %DP_PIXEL_ENCODING30, align 4
  %call31 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %34, i32 noundef %38, i32 noundef 1, i8 noundef zeroext %42, i32 noundef %46, i32 noundef 4) #5
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %ctx36 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %47 = ptrtoint ptr %ctx36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx36, align 4
  %regs37 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %49 = ptrtoint ptr %regs37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs37, align 4
  %DP_PIXEL_FORMAT38 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %50, i32 0, i32 26
  %51 = ptrtoint ptr %DP_PIXEL_FORMAT38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %DP_PIXEL_FORMAT38, align 4
  %se_shift39 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %53 = ptrtoint ptr %se_shift39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %se_shift39, align 4
  %DP_PIXEL_ENCODING40 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %DP_PIXEL_ENCODING40 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %DP_PIXEL_ENCODING40, align 1
  %se_mask41 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %57 = ptrtoint ptr %se_mask41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %se_mask41, align 4
  %DP_PIXEL_ENCODING42 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %58, i32 0, i32 32
  %59 = ptrtoint ptr %DP_PIXEL_ENCODING42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %DP_PIXEL_ENCODING42, align 4
  %call43 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %48, i32 noundef %52, i32 noundef 1, i8 noundef zeroext %56, i32 noundef %60, i32 noundef 5) #5
  %61 = ptrtoint ptr %se_mask41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %se_mask41, align 4
  %DP_VID_M_DOUBLE_VALUE_EN = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %62, i32 0, i32 126
  %63 = ptrtoint ptr %DP_VID_M_DOUBLE_VALUE_EN to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %DP_VID_M_DOUBLE_VALUE_EN, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool45.not = icmp eq i32 %64, 0
  br i1 %tobool45.not, label %sw.bb34.sw.epilog_crit_edge, label %if.then46

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then46:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %ctx36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx36, align 4
  %67 = ptrtoint ptr %regs37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs37, align 4
  %DP_VID_TIMING = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %68, i32 0, i32 32
  %69 = ptrtoint ptr %DP_VID_TIMING to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %DP_VID_TIMING, align 4
  %71 = ptrtoint ptr %se_shift39 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %se_shift39, align 4
  %DP_VID_M_DOUBLE_VALUE_EN51 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %72, i32 0, i32 126
  %73 = ptrtoint ptr %DP_VID_M_DOUBLE_VALUE_EN51 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %DP_VID_M_DOUBLE_VALUE_EN51, align 1
  %call54 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %66, i32 noundef %70, i32 noundef 1, i8 noundef zeroext %74, i32 noundef %64, i32 noundef 1) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx57 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %75 = ptrtoint ptr %ctx57 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctx57, align 4
  %regs58 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %77 = ptrtoint ptr %regs58 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs58, align 4
  %DP_PIXEL_FORMAT59 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %78, i32 0, i32 26
  %79 = ptrtoint ptr %DP_PIXEL_FORMAT59 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %DP_PIXEL_FORMAT59, align 4
  %se_shift60 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %81 = ptrtoint ptr %se_shift60 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %se_shift60, align 4
  %DP_PIXEL_ENCODING61 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %82, i32 0, i32 32
  %83 = ptrtoint ptr %DP_PIXEL_ENCODING61 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %DP_PIXEL_ENCODING61, align 1
  %se_mask62 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %85 = ptrtoint ptr %se_mask62 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %se_mask62, align 4
  %DP_PIXEL_ENCODING63 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %86, i32 0, i32 32
  %87 = ptrtoint ptr %DP_PIXEL_ENCODING63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %DP_PIXEL_ENCODING63, align 4
  %call64 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %76, i32 noundef %80, i32 noundef 1, i8 noundef zeroext %84, i32 noundef %88, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then46, %sw.bb34.sw.epilog_crit_edge, %if.then22, %sw.bb7.sw.epilog_crit_edge, %sw.bb
  %switch.tableidx = add i32 %hw_crtc_timing.sroa.16116.0.copyload, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %89 = icmp ult i32 %switch.tableidx, 3
  %switch.offset = add i32 %hw_crtc_timing.sroa.16116.0.copyload, -1
  %spec.select = select i1 %89, i32 %switch.offset, i32 0
  %ctx107 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %90 = ptrtoint ptr %ctx107 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctx107, align 4
  %regs108 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %92 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs108, align 4
  %DP_PIXEL_FORMAT109 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %93, i32 0, i32 26
  %94 = ptrtoint ptr %DP_PIXEL_FORMAT109 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %DP_PIXEL_FORMAT109, align 4
  %se_shift110 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %96 = ptrtoint ptr %se_shift110 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %se_shift110, align 4
  %DP_COMPONENT_DEPTH111 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %97, i32 0, i32 33
  %98 = ptrtoint ptr %DP_COMPONENT_DEPTH111 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %DP_COMPONENT_DEPTH111, align 1
  %se_mask112 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %100 = ptrtoint ptr %se_mask112 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %se_mask112, align 4
  %DP_COMPONENT_DEPTH113 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %101, i32 0, i32 33
  %102 = ptrtoint ptr %DP_COMPONENT_DEPTH113 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %DP_COMPONENT_DEPTH113, align 4
  %call114 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %91, i32 noundef %95, i32 noundef 1, i8 noundef zeroext %99, i32 noundef %103, i32 noundef %spec.select) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_hdmi_set_stream_attribute(ptr noundef readonly %enc, ptr nocapture noundef readonly %crtc_timing, i32 noundef %actual_pix_clk_khz, i1 noundef zeroext %enable_audio) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_encoder_control, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable_audio to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cntl) #5
  %0 = getelementptr inbounds i8, ptr %cntl, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %cntl, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %engine_id = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 1
  %5 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %engine_id, align 4
  %signal = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 3
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %signal, align 4
  %enable_dp_audio = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 6
  %7 = ptrtoint ptr %enable_dp_audio to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %enable_dp_audio, align 4
  %pixel_clock = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 7
  %8 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %actual_pix_clk_khz, ptr %pixel_clock, align 4
  %lanes_number = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 4
  %9 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %lanes_number, align 4
  %display_color_depth = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 16
  %10 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %display_color_depth, align 4
  %color_depth = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 5
  %12 = ptrtoint ptr %color_depth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %color_depth, align 4
  %bp = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 2
  %13 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %encoder_control = getelementptr inbounds %struct.dc_vbios_funcs, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %encoder_control to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encoder_control, align 4
  %call = call i32 %18(ptr noundef %14, ptr noundef nonnull %cntl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @dce110_stream_encoder_set_stream_attribute_helper(ptr noundef %enc, ptr noundef %crtc_timing)
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %19 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %se_mask, align 4
  %HDMI_DATA_SCRAMBLE_EN = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %HDMI_DATA_SCRAMBLE_EN to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %HDMI_DATA_SCRAMBLE_EN, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool5.not = icmp eq i32 %22, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %HDMI_CONTROL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %26, i32 0, i32 35
  %27 = ptrtoint ptr %HDMI_CONTROL to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %HDMI_CONTROL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %29 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se_shift, align 4
  %HDMI_PACKET_GEN_VERSION = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %30, i32 0, i32 36
  %31 = ptrtoint ptr %HDMI_PACKET_GEN_VERSION to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %HDMI_PACKET_GEN_VERSION, align 1
  %HDMI_PACKET_GEN_VERSION9 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %20, i32 0, i32 36
  %33 = ptrtoint ptr %HDMI_PACKET_GEN_VERSION9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %HDMI_PACKET_GEN_VERSION9, align 4
  %HDMI_KEEPOUT_MODE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %30, i32 0, i32 37
  %35 = ptrtoint ptr %HDMI_KEEPOUT_MODE to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %HDMI_KEEPOUT_MODE, align 1
  %conv = zext i8 %36 to i32
  %HDMI_KEEPOUT_MODE12 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %20, i32 0, i32 37
  %37 = ptrtoint ptr %HDMI_KEEPOUT_MODE12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %HDMI_KEEPOUT_MODE12, align 4
  %HDMI_DEEP_COLOR_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %30, i32 0, i32 38
  %39 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %HDMI_DEEP_COLOR_ENABLE, align 1
  %conv14 = zext i8 %40 to i32
  %HDMI_DEEP_COLOR_ENABLE16 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %20, i32 0, i32 38
  %41 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %HDMI_DEEP_COLOR_ENABLE16, align 4
  %call17 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %24, i32 noundef %28, i32 noundef 3, i8 noundef zeroext %32, i32 noundef %34, i32 noundef 1, i32 noundef %conv, i32 noundef %38, i32 noundef 1, i32 noundef %conv14, i32 noundef %42, i32 noundef 0) #5
  br label %if.end50

if.else:                                          ; preds = %if.end
  %regs18 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %43 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs18, align 4
  %DIG_FE_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %44, i32 0, i32 23
  %45 = ptrtoint ptr %DIG_FE_CNTL to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %DIG_FE_CNTL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool19.not = icmp eq i32 %46, 0
  br i1 %tobool19.not, label %if.else.if.end50_crit_edge, label %if.then20

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %ctx22 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %47 = ptrtoint ptr %ctx22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx22, align 4
  %HDMI_CONTROL24 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %44, i32 0, i32 35
  %49 = ptrtoint ptr %HDMI_CONTROL24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %HDMI_CONTROL24, align 4
  %se_shift25 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %51 = ptrtoint ptr %se_shift25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %se_shift25, align 4
  %HDMI_PACKET_GEN_VERSION26 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %52, i32 0, i32 36
  %53 = ptrtoint ptr %HDMI_PACKET_GEN_VERSION26 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %HDMI_PACKET_GEN_VERSION26, align 1
  %HDMI_PACKET_GEN_VERSION28 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %20, i32 0, i32 36
  %55 = ptrtoint ptr %HDMI_PACKET_GEN_VERSION28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %HDMI_PACKET_GEN_VERSION28, align 4
  %HDMI_KEEPOUT_MODE30 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %52, i32 0, i32 37
  %57 = ptrtoint ptr %HDMI_KEEPOUT_MODE30 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %HDMI_KEEPOUT_MODE30, align 1
  %conv31 = zext i8 %58 to i32
  %HDMI_KEEPOUT_MODE33 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %20, i32 0, i32 37
  %59 = ptrtoint ptr %HDMI_KEEPOUT_MODE33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %HDMI_KEEPOUT_MODE33, align 4
  %HDMI_DEEP_COLOR_ENABLE35 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %52, i32 0, i32 38
  %61 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE35 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %HDMI_DEEP_COLOR_ENABLE35, align 1
  %conv36 = zext i8 %62 to i32
  %HDMI_DEEP_COLOR_ENABLE38 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %20, i32 0, i32 38
  %63 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %HDMI_DEEP_COLOR_ENABLE38, align 4
  %HDMI_DATA_SCRAMBLE_EN40 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %52, i32 0, i32 44
  %65 = ptrtoint ptr %HDMI_DATA_SCRAMBLE_EN40 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %HDMI_DATA_SCRAMBLE_EN40, align 1
  %conv41 = zext i8 %66 to i32
  %HDMI_CLOCK_CHANNEL_RATE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %52, i32 0, i32 39
  %67 = ptrtoint ptr %HDMI_CLOCK_CHANNEL_RATE to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %HDMI_CLOCK_CHANNEL_RATE, align 1
  %conv45 = zext i8 %68 to i32
  %HDMI_CLOCK_CHANNEL_RATE47 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %20, i32 0, i32 39
  %69 = ptrtoint ptr %HDMI_CLOCK_CHANNEL_RATE47 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %HDMI_CLOCK_CHANNEL_RATE47, align 4
  %call48 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %48, i32 noundef %50, i32 noundef 5, i8 noundef zeroext %54, i32 noundef %56, i32 noundef 1, i32 noundef %conv31, i32 noundef %60, i32 noundef 1, i32 noundef %conv36, i32 noundef %64, i32 noundef 0, i32 noundef %conv41, i32 noundef %22, i32 noundef 0, i32 noundef %conv45, i32 noundef %70, i32 noundef 0) #5
  br label %if.end50

if.end50:                                         ; preds = %if.then20, %if.else.if.end50_crit_edge, %if.then6
  %71 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %display_color_depth, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %72, label %if.end50.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb60
    i32 4, label %sw.bb94
    i32 6, label %sw.bb129
  ]

if.end50.sw.epilog_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %ctx53 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %74 = ptrtoint ptr %ctx53 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ctx53, align 4
  %regs54 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %76 = ptrtoint ptr %regs54 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs54, align 4
  %HDMI_CONTROL55 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %77, i32 0, i32 35
  %78 = ptrtoint ptr %HDMI_CONTROL55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %HDMI_CONTROL55, align 4
  %se_shift56 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %80 = ptrtoint ptr %se_shift56 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %se_shift56, align 4
  %HDMI_DEEP_COLOR_DEPTH = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %81, i32 0, i32 40
  %82 = ptrtoint ptr %HDMI_DEEP_COLOR_DEPTH to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %HDMI_DEEP_COLOR_DEPTH, align 1
  %84 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %se_mask, align 4
  %HDMI_DEEP_COLOR_DEPTH58 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %85, i32 0, i32 40
  %86 = ptrtoint ptr %HDMI_DEEP_COLOR_DEPTH58 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %HDMI_DEEP_COLOR_DEPTH58, align 4
  %call59 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %75, i32 noundef %79, i32 noundef 1, i8 noundef zeroext %83, i32 noundef %87, i32 noundef 0) #5
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end50
  %pixel_encoding = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %88 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pixel_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %cmp61 = icmp eq i32 %89, 2
  %ctx65 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %90 = ptrtoint ptr %ctx65 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctx65, align 4
  %regs66 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %92 = ptrtoint ptr %regs66 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs66, align 4
  %HDMI_CONTROL67 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %93, i32 0, i32 35
  %94 = ptrtoint ptr %HDMI_CONTROL67 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %HDMI_CONTROL67, align 4
  %se_shift68 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %96 = ptrtoint ptr %se_shift68 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %se_shift68, align 4
  %HDMI_DEEP_COLOR_DEPTH69 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %97, i32 0, i32 40
  %98 = ptrtoint ptr %HDMI_DEEP_COLOR_DEPTH69 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %HDMI_DEEP_COLOR_DEPTH69, align 1
  %100 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %se_mask, align 4
  %HDMI_DEEP_COLOR_DEPTH71 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %101, i32 0, i32 40
  %102 = ptrtoint ptr %HDMI_DEEP_COLOR_DEPTH71 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %HDMI_DEEP_COLOR_DEPTH71, align 4
  %HDMI_DEEP_COLOR_ENABLE73 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %97, i32 0, i32 38
  %104 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE73 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %HDMI_DEEP_COLOR_ENABLE73, align 1
  %conv74 = zext i8 %105 to i32
  %HDMI_DEEP_COLOR_ENABLE76 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %101, i32 0, i32 38
  %106 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE76 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %HDMI_DEEP_COLOR_ENABLE76, align 4
  br i1 %cmp61, label %if.then63, label %if.else78

if.then63:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  %call77 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %91, i32 noundef %95, i32 noundef 2, i8 noundef zeroext %99, i32 noundef %103, i32 noundef 1, i32 noundef %conv74, i32 noundef %107, i32 noundef 0) #5
  br label %sw.epilog

if.else78:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #7
  %call92 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %91, i32 noundef %95, i32 noundef 2, i8 noundef zeroext %99, i32 noundef %103, i32 noundef 1, i32 noundef %conv74, i32 noundef %107, i32 noundef 1) #5
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end50
  %pixel_encoding95 = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %108 = ptrtoint ptr %pixel_encoding95 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pixel_encoding95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp96 = icmp eq i32 %109, 2
  %ctx100 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %110 = ptrtoint ptr %ctx100 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctx100, align 4
  %regs101 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %112 = ptrtoint ptr %regs101 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs101, align 4
  %HDMI_CONTROL102 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %113, i32 0, i32 35
  %114 = ptrtoint ptr %HDMI_CONTROL102 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %HDMI_CONTROL102, align 4
  %se_shift103 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %116 = ptrtoint ptr %se_shift103 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %se_shift103, align 4
  %HDMI_DEEP_COLOR_DEPTH104 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %117, i32 0, i32 40
  %118 = ptrtoint ptr %HDMI_DEEP_COLOR_DEPTH104 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %HDMI_DEEP_COLOR_DEPTH104, align 1
  %120 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %se_mask, align 4
  %HDMI_DEEP_COLOR_DEPTH106 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %121, i32 0, i32 40
  %122 = ptrtoint ptr %HDMI_DEEP_COLOR_DEPTH106 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %HDMI_DEEP_COLOR_DEPTH106, align 4
  %HDMI_DEEP_COLOR_ENABLE108 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %117, i32 0, i32 38
  %124 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE108 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %HDMI_DEEP_COLOR_ENABLE108, align 1
  %conv109 = zext i8 %125 to i32
  %HDMI_DEEP_COLOR_ENABLE111 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %121, i32 0, i32 38
  %126 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE111 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %HDMI_DEEP_COLOR_ENABLE111, align 4
  br i1 %cmp96, label %if.then98, label %if.else113

if.then98:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #7
  %call112 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %111, i32 noundef %115, i32 noundef 2, i8 noundef zeroext %119, i32 noundef %123, i32 noundef 2, i32 noundef %conv109, i32 noundef %127, i32 noundef 0) #5
  br label %sw.epilog

if.else113:                                       ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #7
  %call127 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %111, i32 noundef %115, i32 noundef 2, i8 noundef zeroext %119, i32 noundef %123, i32 noundef 2, i32 noundef %conv109, i32 noundef %127, i32 noundef 1) #5
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %ctx131 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %128 = ptrtoint ptr %ctx131 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ctx131, align 4
  %regs132 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %130 = ptrtoint ptr %regs132 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs132, align 4
  %HDMI_CONTROL133 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %131, i32 0, i32 35
  %132 = ptrtoint ptr %HDMI_CONTROL133 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %HDMI_CONTROL133, align 4
  %se_shift134 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %134 = ptrtoint ptr %se_shift134 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %se_shift134, align 4
  %HDMI_DEEP_COLOR_DEPTH135 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %135, i32 0, i32 40
  %136 = ptrtoint ptr %HDMI_DEEP_COLOR_DEPTH135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %HDMI_DEEP_COLOR_DEPTH135, align 1
  %138 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %se_mask, align 4
  %HDMI_DEEP_COLOR_DEPTH137 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %139, i32 0, i32 40
  %140 = ptrtoint ptr %HDMI_DEEP_COLOR_DEPTH137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %HDMI_DEEP_COLOR_DEPTH137, align 4
  %HDMI_DEEP_COLOR_ENABLE139 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %135, i32 0, i32 38
  %142 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE139 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %HDMI_DEEP_COLOR_ENABLE139, align 1
  %conv140 = zext i8 %143 to i32
  %HDMI_DEEP_COLOR_ENABLE142 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %139, i32 0, i32 38
  %144 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE142 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %HDMI_DEEP_COLOR_ENABLE142, align 4
  %call143 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %129, i32 noundef %133, i32 noundef 2, i8 noundef zeroext %137, i32 noundef %141, i32 noundef 3, i32 noundef %conv140, i32 noundef %145, i32 noundef 1) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb129, %if.else113, %if.then98, %if.else78, %if.then63, %sw.bb, %if.end50.sw.epilog_crit_edge
  %146 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %se_mask, align 4
  %HDMI_DATA_SCRAMBLE_EN145 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %147, i32 0, i32 44
  %148 = ptrtoint ptr %HDMI_DATA_SCRAMBLE_EN145 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %HDMI_DATA_SCRAMBLE_EN145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool146.not = icmp eq i32 %149, 0
  br i1 %tobool146.not, label %sw.epilog.if.end184_crit_edge, label %if.then147

sw.epilog.if.end184_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

if.then147:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 339999, i32 %actual_pix_clk_khz)
  %cmp148 = icmp sgt i32 %actual_pix_clk_khz, 339999
  br i1 %cmp148, label %if.then150, label %if.else165

if.then150:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #7
  %ctx152 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %150 = ptrtoint ptr %ctx152 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ctx152, align 4
  %regs153 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %152 = ptrtoint ptr %regs153 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs153, align 4
  %HDMI_CONTROL154 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %153, i32 0, i32 35
  %154 = ptrtoint ptr %HDMI_CONTROL154 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %HDMI_CONTROL154, align 4
  %se_shift155 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %156 = ptrtoint ptr %se_shift155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %se_shift155, align 4
  %HDMI_DATA_SCRAMBLE_EN156 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %157, i32 0, i32 44
  %158 = ptrtoint ptr %HDMI_DATA_SCRAMBLE_EN156 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %HDMI_DATA_SCRAMBLE_EN156, align 1
  %HDMI_CLOCK_CHANNEL_RATE160 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %157, i32 0, i32 39
  %160 = ptrtoint ptr %HDMI_CLOCK_CHANNEL_RATE160 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %HDMI_CLOCK_CHANNEL_RATE160, align 1
  %conv161 = zext i8 %161 to i32
  %HDMI_CLOCK_CHANNEL_RATE163 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %147, i32 0, i32 39
  %162 = ptrtoint ptr %HDMI_CLOCK_CHANNEL_RATE163 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %HDMI_CLOCK_CHANNEL_RATE163, align 4
  %call164 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %151, i32 noundef %155, i32 noundef 2, i8 noundef zeroext %159, i32 noundef %149, i32 noundef 1, i32 noundef %conv161, i32 noundef %163, i32 noundef 1) #5
  br label %if.end184

if.else165:                                       ; preds = %if.then147
  %flags = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 21
  %164 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %164)
  %bf.load = load i32, ptr %flags, align 4
  %165 = and i32 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool166.not = icmp eq i32 %165, 0
  br i1 %tobool166.not, label %if.else165.if.end184_crit_edge, label %if.then167

if.else165.if.end184_crit_edge:                   ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end184

if.then167:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #7
  %ctx169 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %166 = ptrtoint ptr %ctx169 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ctx169, align 4
  %regs170 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %168 = ptrtoint ptr %regs170 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs170, align 4
  %HDMI_CONTROL171 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %169, i32 0, i32 35
  %170 = ptrtoint ptr %HDMI_CONTROL171 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %HDMI_CONTROL171, align 4
  %se_shift172 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %172 = ptrtoint ptr %se_shift172 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %se_shift172, align 4
  %HDMI_DATA_SCRAMBLE_EN173 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %173, i32 0, i32 44
  %174 = ptrtoint ptr %HDMI_DATA_SCRAMBLE_EN173 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %HDMI_DATA_SCRAMBLE_EN173, align 1
  %HDMI_CLOCK_CHANNEL_RATE177 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %173, i32 0, i32 39
  %176 = ptrtoint ptr %HDMI_CLOCK_CHANNEL_RATE177 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %HDMI_CLOCK_CHANNEL_RATE177, align 1
  %conv178 = zext i8 %177 to i32
  %HDMI_CLOCK_CHANNEL_RATE180 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %147, i32 0, i32 39
  %178 = ptrtoint ptr %HDMI_CLOCK_CHANNEL_RATE180 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %HDMI_CLOCK_CHANNEL_RATE180, align 4
  %call181 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %167, i32 noundef %171, i32 noundef 2, i8 noundef zeroext %175, i32 noundef %149, i32 noundef 1, i32 noundef %conv178, i32 noundef %179, i32 noundef 0) #5
  br label %if.end184

if.end184:                                        ; preds = %if.then167, %if.else165.if.end184_crit_edge, %if.then150, %sw.epilog.if.end184_crit_edge
  %ctx186 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %180 = ptrtoint ptr %ctx186 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ctx186, align 4
  %regs187 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %182 = ptrtoint ptr %regs187 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs187, align 4
  %HDMI_VBI_PACKET_CONTROL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %183, i32 0, i32 43
  %184 = ptrtoint ptr %HDMI_VBI_PACKET_CONTROL to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %HDMI_VBI_PACKET_CONTROL, align 4
  %se_shift188 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %186 = ptrtoint ptr %se_shift188 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %se_shift188, align 4
  %HDMI_GC_CONT = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %187, i32 0, i32 41
  %188 = ptrtoint ptr %HDMI_GC_CONT to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %HDMI_GC_CONT, align 1
  %190 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %se_mask, align 4
  %HDMI_GC_CONT190 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %191, i32 0, i32 41
  %192 = ptrtoint ptr %HDMI_GC_CONT190 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %HDMI_GC_CONT190, align 4
  %HDMI_GC_SEND = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %187, i32 0, i32 42
  %194 = ptrtoint ptr %HDMI_GC_SEND to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %HDMI_GC_SEND, align 1
  %conv192 = zext i8 %195 to i32
  %HDMI_GC_SEND194 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %191, i32 0, i32 42
  %196 = ptrtoint ptr %HDMI_GC_SEND194 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %HDMI_GC_SEND194, align 4
  %HDMI_NULL_SEND = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %187, i32 0, i32 43
  %198 = ptrtoint ptr %HDMI_NULL_SEND to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %HDMI_NULL_SEND, align 1
  %conv196 = zext i8 %199 to i32
  %HDMI_NULL_SEND198 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %191, i32 0, i32 43
  %200 = ptrtoint ptr %HDMI_NULL_SEND198 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %HDMI_NULL_SEND198, align 4
  %call199 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %181, i32 noundef %185, i32 noundef 3, i8 noundef zeroext %189, i32 noundef %193, i32 noundef 1, i32 noundef %conv192, i32 noundef %197, i32 noundef 1, i32 noundef %conv196, i32 noundef %201, i32 noundef 1) #5
  %202 = ptrtoint ptr %ctx186 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ctx186, align 4
  %204 = ptrtoint ptr %regs187 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs187, align 4
  %HDMI_INFOFRAME_CONTROL0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %205, i32 0, i32 41
  %206 = ptrtoint ptr %HDMI_INFOFRAME_CONTROL0 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %HDMI_INFOFRAME_CONTROL0, align 4
  %208 = ptrtoint ptr %se_shift188 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %se_shift188, align 4
  %HDMI_AUDIO_INFO_SEND = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %209, i32 0, i32 45
  %210 = ptrtoint ptr %HDMI_AUDIO_INFO_SEND to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %HDMI_AUDIO_INFO_SEND, align 1
  %212 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %se_mask, align 4
  %HDMI_AUDIO_INFO_SEND205 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %213, i32 0, i32 45
  %214 = ptrtoint ptr %HDMI_AUDIO_INFO_SEND205 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %HDMI_AUDIO_INFO_SEND205, align 4
  %call206 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %203, i32 noundef %207, i32 noundef 1, i8 noundef zeroext %211, i32 noundef %215, i32 noundef 1) #5
  %216 = ptrtoint ptr %ctx186 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ctx186, align 4
  %218 = ptrtoint ptr %regs187 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs187, align 4
  %AFMT_INFOFRAME_CONTROL0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %219, i32 0, i32 14
  %220 = ptrtoint ptr %AFMT_INFOFRAME_CONTROL0 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %AFMT_INFOFRAME_CONTROL0, align 4
  %222 = ptrtoint ptr %se_shift188 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %se_shift188, align 4
  %AFMT_AUDIO_INFO_UPDATE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %223, i32 0, i32 46
  %224 = ptrtoint ptr %AFMT_AUDIO_INFO_UPDATE to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %AFMT_AUDIO_INFO_UPDATE, align 1
  %226 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %se_mask, align 4
  %AFMT_AUDIO_INFO_UPDATE212 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %227, i32 0, i32 46
  %228 = ptrtoint ptr %AFMT_AUDIO_INFO_UPDATE212 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %AFMT_AUDIO_INFO_UPDATE212, align 4
  %call213 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %217, i32 noundef %221, i32 noundef 1, i8 noundef zeroext %225, i32 noundef %229, i32 noundef 1) #5
  %230 = ptrtoint ptr %ctx186 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ctx186, align 4
  %232 = ptrtoint ptr %regs187 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs187, align 4
  %HDMI_INFOFRAME_CONTROL1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %233, i32 0, i32 42
  %234 = ptrtoint ptr %HDMI_INFOFRAME_CONTROL1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %HDMI_INFOFRAME_CONTROL1, align 4
  %236 = ptrtoint ptr %se_shift188 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %se_shift188, align 4
  %HDMI_AUDIO_INFO_LINE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %237, i32 0, i32 47
  %238 = ptrtoint ptr %HDMI_AUDIO_INFO_LINE to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %HDMI_AUDIO_INFO_LINE, align 1
  %240 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %se_mask, align 4
  %HDMI_AUDIO_INFO_LINE219 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %241, i32 0, i32 47
  %242 = ptrtoint ptr %HDMI_AUDIO_INFO_LINE219 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %HDMI_AUDIO_INFO_LINE219, align 4
  %call220 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %231, i32 noundef %235, i32 noundef 1, i8 noundef zeroext %239, i32 noundef %243, i32 noundef 2) #5
  %244 = ptrtoint ptr %ctx186 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ctx186, align 4
  %246 = ptrtoint ptr %regs187 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regs187, align 4
  %HDMI_GC = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %247, i32 0, i32 36
  %248 = ptrtoint ptr %HDMI_GC to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %HDMI_GC, align 4
  %250 = ptrtoint ptr %se_shift188 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %se_shift188, align 4
  %HDMI_GC_AVMUTE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %251, i32 0, i32 48
  %252 = ptrtoint ptr %HDMI_GC_AVMUTE to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %HDMI_GC_AVMUTE, align 1
  %254 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %se_mask, align 4
  %HDMI_GC_AVMUTE226 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %255, i32 0, i32 48
  %256 = ptrtoint ptr %HDMI_GC_AVMUTE226 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %HDMI_GC_AVMUTE226, align 4
  %call227 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %245, i32 noundef %249, i32 noundef 1, i8 noundef zeroext %253, i32 noundef %257, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end184, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cntl) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_dvi_set_stream_attribute(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %crtc_timing, i1 noundef zeroext %is_dual_link) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_encoder_control, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cntl) #5
  %0 = getelementptr inbounds i8, ptr %cntl, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %cntl, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %engine_id = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 1
  %5 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %engine_id, align 4
  %cond = select i1 %is_dual_link, i32 2, i32 1
  %signal = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 3
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %signal, align 4
  %pix_clk_100hz = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 12
  %7 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pix_clk_100hz, align 4
  %div = udiv i32 %8, 10
  %pixel_clock = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 7
  %9 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %pixel_clock, align 4
  %cond2 = select i1 %is_dual_link, i32 8, i32 4
  %lanes_number = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 4
  %10 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond2, ptr %lanes_number, align 4
  %bp = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 2
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %encoder_control = getelementptr inbounds %struct.dc_vbios_funcs, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %encoder_control to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encoder_control, align 4
  %call = call i32 %16(ptr noundef %12, ptr noundef nonnull %cntl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %pixel_encoding = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %17 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixel_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp6.not = icmp eq i32 %18, 1
  br i1 %cmp6.not, label %do.body.do.body53_crit_edge, label %land.rhs

do.body.do.body53_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body53

land.rhs:                                         ; preds = %do.body
  %.b129 = load i1, ptr @dce110_stream_encoder_dvi_set_stream_attribute.__already_done, align 1
  br i1 %.b129, label %land.rhs.if.then49_crit_edge, label %if.then16, !prof !63

land.rhs.if.then49_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dce110_stream_encoder_dvi_set_stream_attribute.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 686, i32 noundef 9, ptr noundef null) #5
  br label %if.then49

if.then49:                                        ; preds = %if.then16, %land.rhs.if.then49_crit_edge
  call void @kgdb_breakpoint() #5
  br label %do.body53

do.body53:                                        ; preds = %if.then49, %do.body.do.body53_crit_edge
  %display_color_depth = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 16
  %19 = ptrtoint ptr %display_color_depth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %display_color_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp55.not = icmp eq i32 %20, 2
  br i1 %cmp55.not, label %do.body53.do.end114_crit_edge, label %land.rhs64

do.body53.do.end114_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end114

land.rhs64:                                       ; preds = %do.body53
  %.b127128 = load i1, ptr @dce110_stream_encoder_dvi_set_stream_attribute.__already_done.4, align 1
  br i1 %.b127128, label %land.rhs64.if.then111_crit_edge, label %if.then75, !prof !63

land.rhs64.if.then111_crit_edge:                  ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

if.then75:                                        ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dce110_stream_encoder_dvi_set_stream_attribute.__already_done.4, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 9, ptr noundef null) #5
  br label %if.then111

if.then111:                                       ; preds = %if.then75, %land.rhs64.if.then111_crit_edge
  call void @kgdb_breakpoint() #5
  br label %do.end114

do.end114:                                        ; preds = %if.then111, %do.body53.do.end114_crit_edge
  call fastcc void @dce110_stream_encoder_set_stream_attribute_helper(ptr noundef %enc, ptr noundef %crtc_timing)
  br label %cleanup

cleanup:                                          ; preds = %do.end114, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cntl) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_lvds_set_stream_attribute(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %crtc_timing) #0 align 64 {
entry:
  %cntl = alloca %struct.bp_encoder_control, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cntl) #5
  %0 = getelementptr inbounds i8, ptr %cntl, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %cntl, align 4
  %id = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %engine_id = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 1
  %5 = ptrtoint ptr %engine_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %engine_id, align 4
  %signal = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 3
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %signal, align 4
  %pix_clk_100hz = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 12
  %7 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pix_clk_100hz, align 4
  %div = udiv i32 %8, 10
  %pixel_clock = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 7
  %9 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %pixel_clock, align 4
  %lanes_number = getelementptr inbounds %struct.bp_encoder_control, ptr %cntl, i32 0, i32 4
  %10 = ptrtoint ptr %lanes_number to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %lanes_number, align 4
  %bp = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 2
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bp, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %encoder_control = getelementptr inbounds %struct.dc_vbios_funcs, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %encoder_control to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encoder_control, align 4
  %call = call i32 %16(ptr noundef %12, ptr noundef nonnull %cntl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %pixel_encoding = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %17 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixel_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp4.not = icmp eq i32 %18, 1
  br i1 %cmp4.not, label %do.body.cleanup_crit_edge, label %land.rhs

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %.b55 = load i1, ptr @dce110_stream_encoder_lvds_set_stream_attribute.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.then45_crit_edge, label %if.then12, !prof !63

land.rhs.if.then45_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dce110_stream_encoder_lvds_set_stream_attribute.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef null) #5
  br label %if.then45

if.then45:                                        ; preds = %if.then12, %land.rhs.if.then45_crit_edge
  call void @kgdb_breakpoint() #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cntl) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_set_throttled_vcp_size(ptr nocapture noundef readonly %enc, [1 x i64] %avg_time_slots_per_mtp.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arg.coerce.fca.0.extract.i = extractvalue [1 x i64] %avg_time_slots_per_mtp.coerce, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %arg.coerce.fca.0.extract.i, i1 false) #5
  %extract12.i = lshr i64 %0, 32
  %extract.t13.i = trunc i64 %extract12.i to i32
  %sub7.i = sub i32 0, %extract.t13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg.coerce.fca.0.extract.i)
  %cmp414.i = icmp slt i64 %arg.coerce.fca.0.extract.i, 0
  %retval.0.i = select i1 %cmp414.i, i32 %sub7.i, i32 %extract.t13.i
  %conv1.i.i = zext i32 %retval.0.i to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i)
  %cmp.i.i = icmp slt i64 %shl.i.i, 0
  %add.i.i = xor i64 %shl.i.i, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %arg.coerce.fca.0.extract.i)
  %cmp4.not.i.i = icmp sgt i64 %add.i.i, %arg.coerce.fca.0.extract.i
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp4.not.i.i
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %entry.dc_fixpt_sub_int.exit_crit_edge

entry.dc_fixpt_sub_int.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_sub_int.exit

lor.rhs.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shl.i.i)
  %cmp6.i.i = icmp sgt i64 %shl.i.i, -1
  %add8.i.i = add i64 %shl.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i.i, i64 %arg.coerce.fca.0.extract.i)
  %cmp10.i.i = icmp slt i64 %add8.i.i, %arg.coerce.fca.0.extract.i
  %or.cond67.i.i = select i1 %cmp6.i.i, i1 true, i1 %cmp10.i.i
  br i1 %or.cond67.i.i, label %land.rhs13.i.i, label %lor.rhs.i.i.dc_fixpt_sub_int.exit_crit_edge

lor.rhs.i.i.dc_fixpt_sub_int.exit_crit_edge:      ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_sub_int.exit

land.rhs13.i.i:                                   ; preds = %lor.rhs.i.i
  %.b65.i.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !65
  br i1 %.b65.i.i, label %land.rhs13.i.i.if.then50.i.i_crit_edge, label %if.then.i.i, !prof !63

land.rhs13.i.i.if.then50.i.i_crit_edge:           ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50.i.i

if.then.i.i:                                      ; preds = %land.rhs13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 275, i32 noundef 9, ptr noundef null) #5, !noalias !65
  br label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.then.i.i, %land.rhs13.i.i.if.then50.i.i_crit_edge
  tail call void @kgdb_breakpoint() #5, !noalias !65
  br label %dc_fixpt_sub_int.exit

dc_fixpt_sub_int.exit:                            ; preds = %if.then50.i.i, %lor.rhs.i.i.dc_fixpt_sub_int.exit_crit_edge, %entry.dc_fixpt_sub_int.exit_crit_edge
  %sub.i.i = sub i64 %arg.coerce.fca.0.extract.i, %shl.i.i
  %1 = add i64 %sub.i.i, -137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 -274877906944, i64 %1)
  %2 = icmp ult i64 %1, -274877906944
  br i1 %2, label %land.rhs16.i, label %dc_fixpt_sub_int.exit.dc_fixpt_shl.exit_crit_edge

dc_fixpt_sub_int.exit.dc_fixpt_shl.exit_crit_edge: ; preds = %dc_fixpt_sub_int.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_shl.exit

land.rhs16.i:                                     ; preds = %dc_fixpt_sub_int.exit
  %.b1.i = load i1, ptr @dc_fixpt_shl.__already_done, align 1, !noalias !70
  br i1 %.b1.i, label %land.rhs16.i.if.then53.i_crit_edge, label %if.then.i, !prof !63

land.rhs16.i.if.then53.i_crit_edge:               ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53.i

if.then.i:                                        ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dc_fixpt_shl.__already_done, align 1, !noalias !70
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 213, i32 noundef 9, ptr noundef null) #5, !noalias !70
  br label %if.then53.i

if.then53.i:                                      ; preds = %if.then.i, %land.rhs16.i.if.then53.i_crit_edge
  tail call void @kgdb_breakpoint() #5, !noalias !70
  br label %dc_fixpt_shl.exit

dc_fixpt_shl.exit:                                ; preds = %if.then53.i, %dc_fixpt_sub_int.exit.dc_fixpt_shl.exit_crit_edge
  %shl.i = shl i64 %sub.i.i, 26
  %3 = tail call i64 @llvm.abs.i64(i64 %shl.i, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372032559808512, i64 %3)
  %cmp5.i = icmp ugt i64 %3, 9223372032559808512
  br i1 %cmp5.i, label %land.rhs.i, label %dc_fixpt_shl.exit.dc_fixpt_ceil.exit_crit_edge

dc_fixpt_shl.exit.dc_fixpt_ceil.exit_crit_edge:   ; preds = %dc_fixpt_shl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dc_fixpt_ceil.exit

land.rhs.i:                                       ; preds = %dc_fixpt_shl.exit
  %.b63.i = load i1, ptr @dc_fixpt_ceil.__already_done, align 1
  br i1 %.b63.i, label %land.rhs.i.if.then43.i_crit_edge, label %if.then.i39, !prof !63

land.rhs.i.if.then43.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43.i

if.then.i39:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @dc_fixpt_ceil.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 487, i32 noundef 9, ptr noundef null) #5
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.then.i39, %land.rhs.i.if.then43.i_crit_edge
  tail call void @kgdb_breakpoint() #5
  br label %dc_fixpt_ceil.exit

dc_fixpt_ceil.exit:                               ; preds = %if.then43.i, %dc_fixpt_shl.exit.dc_fixpt_ceil.exit_crit_edge
  %add.i = add nuw i64 %3, 4294967295
  %shr.i = lshr i64 %add.i, 32
  %conv.i = trunc i64 %shr.i to i32
  %sub52.i = sub i32 0, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp4865.i = icmp slt i64 %shl.i, 0
  %retval.0.i40 = select i1 %cmp4865.i, i32 %sub52.i, i32 %conv.i
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %DP_MSE_RATE_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %DP_MSE_RATE_CNTL to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %DP_MSE_RATE_CNTL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %10 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_shift, align 4
  %DP_MSE_RATE_X = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %DP_MSE_RATE_X to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %DP_MSE_RATE_X, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %14 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %se_mask, align 4
  %DP_MSE_RATE_X7 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %15, i32 0, i32 49
  %16 = ptrtoint ptr %DP_MSE_RATE_X7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %DP_MSE_RATE_X7, align 4
  %DP_MSE_RATE_Y = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 50
  %18 = ptrtoint ptr %DP_MSE_RATE_Y to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %DP_MSE_RATE_Y, align 1
  %conv = zext i8 %19 to i32
  %DP_MSE_RATE_Y10 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %15, i32 0, i32 50
  %20 = ptrtoint ptr %DP_MSE_RATE_Y10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %DP_MSE_RATE_Y10, align 4
  %call11 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %5, i32 noundef %9, i32 noundef 0, i32 noundef 2, i8 noundef zeroext %13, i32 noundef %17, i32 noundef %retval.0.i, i32 noundef %conv, i32 noundef %21, i32 noundef %retval.0.i40) #5
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %DP_MSE_RATE_UPDATE = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %DP_MSE_RATE_UPDATE to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DP_MSE_RATE_UPDATE, align 4
  %28 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se_shift, align 4
  %DP_MSE_RATE_UPDATE_PENDING = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %29, i32 0, i32 51
  %30 = ptrtoint ptr %DP_MSE_RATE_UPDATE_PENDING to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %DP_MSE_RATE_UPDATE_PENDING, align 1
  %conv16 = zext i8 %31 to i32
  %32 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %se_mask, align 4
  %DP_MSE_RATE_UPDATE_PENDING18 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %33, i32 0, i32 51
  %34 = ptrtoint ptr %DP_MSE_RATE_UPDATE_PENDING18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %DP_MSE_RATE_UPDATE_PENDING18, align 4
  tail call void @generic_reg_wait(ptr noundef %23, i32 noundef %27, i32 noundef %conv16, i32 noundef %35, i32 noundef 0, i32 noundef 10, i32 noundef 50, ptr noundef nonnull @__func__.dce110_stream_encoder_set_throttled_vcp_size, i32 noundef 738) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_update_hdmi_info_packets(ptr noundef readonly %enc, ptr nocapture noundef readonly %info_frame) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %0 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_mask, align 4
  %HDMI_AVI_INFO_CONT = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %HDMI_AVI_INFO_CONT to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %HDMI_AVI_INFO_CONT, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end72_crit_edge, label %land.lhs.true

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

land.lhs.true:                                    ; preds = %entry
  %HDMI_AVI_INFO_SEND = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 53
  %4 = ptrtoint ptr %HDMI_AVI_INFO_SEND to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %HDMI_AVI_INFO_SEND, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end72_crit_edge, label %if.then

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %info_frame to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %info_frame, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %sb = getelementptr inbounds %struct.dc_info_packet, ptr %info_frame, i32 0, i32 5
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.then4.if.end_crit_edge, label %if.then7

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %14 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %se_shift, align 4
  %AFMT_AUDIO_CLOCK_EN = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %15, i32 0, i32 107
  %16 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %AFMT_AUDIO_CLOCK_EN, align 1
  %AFMT_AUDIO_CLOCK_EN11 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 107
  %18 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %AFMT_AUDIO_CLOCK_EN11, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %13, i32 noundef %11, i32 noundef 1, i8 noundef zeroext %17, i32 noundef %19, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4.if.end_crit_edge
  %ctx13 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %20 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx13, align 4
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %AFMT_AVI_INFO0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %AFMT_AVI_INFO0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %AFMT_AVI_INFO0, align 4
  %26 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sb, align 4
  tail call void @dm_write_reg_func(ptr noundef %21, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @__func__.dce110_stream_encoder_update_hdmi_info_packets) #5
  %28 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx13, align 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %AFMT_AVI_INFO1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %AFMT_AVI_INFO1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %AFMT_AVI_INFO1, align 4
  %arrayidx19 = getelementptr %struct.dc_info_packet, ptr %info_frame, i32 0, i32 5, i32 4
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx19, align 4
  tail call void @dm_write_reg_func(ptr noundef %29, i32 noundef %33, i32 noundef %35, ptr noundef nonnull @__func__.dce110_stream_encoder_update_hdmi_info_packets) #5
  %36 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx13, align 4
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %AFMT_AVI_INFO2 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %AFMT_AVI_INFO2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %AFMT_AVI_INFO2, align 4
  %arrayidx23 = getelementptr %struct.dc_info_packet, ptr %info_frame, i32 0, i32 5, i32 8
  %42 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx23, align 4
  tail call void @dm_write_reg_func(ptr noundef %37, i32 noundef %41, i32 noundef %43, ptr noundef nonnull @__func__.dce110_stream_encoder_update_hdmi_info_packets) #5
  %44 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx13, align 4
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %AFMT_AVI_INFO3 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %AFMT_AVI_INFO3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %AFMT_AVI_INFO3, align 4
  %arrayidx27 = getelementptr %struct.dc_info_packet, ptr %info_frame, i32 0, i32 5, i32 12
  %50 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx27, align 4
  tail call void @dm_write_reg_func(ptr noundef %45, i32 noundef %49, i32 noundef %51, ptr noundef nonnull @__func__.dce110_stream_encoder_update_hdmi_info_packets) #5
  %52 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctx13, align 4
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %AFMT_AVI_INFO331 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %AFMT_AVI_INFO331 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %AFMT_AVI_INFO331, align 4
  %se_shift32 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %58 = ptrtoint ptr %se_shift32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %se_shift32, align 4
  %AFMT_AVI_INFO_VERSION = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %59, i32 0, i32 52
  %60 = ptrtoint ptr %AFMT_AVI_INFO_VERSION to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %AFMT_AVI_INFO_VERSION, align 1
  %62 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %se_mask, align 4
  %AFMT_AVI_INFO_VERSION34 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %63, i32 0, i32 52
  %64 = ptrtoint ptr %AFMT_AVI_INFO_VERSION34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %AFMT_AVI_INFO_VERSION34, align 4
  %hb1 = getelementptr inbounds %struct.dc_info_packet, ptr %info_frame, i32 0, i32 2
  %66 = ptrtoint ptr %hb1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hb1, align 1
  %conv = zext i8 %67 to i32
  %call36 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %53, i32 noundef %57, i32 noundef 1, i8 noundef zeroext %61, i32 noundef %65, i32 noundef %conv) #5
  %68 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx13, align 4
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %HDMI_INFOFRAME_CONTROL0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %71, i32 0, i32 41
  %72 = ptrtoint ptr %HDMI_INFOFRAME_CONTROL0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %HDMI_INFOFRAME_CONTROL0, align 4
  %74 = ptrtoint ptr %se_shift32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %se_shift32, align 4
  %HDMI_AVI_INFO_SEND41 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %75, i32 0, i32 53
  %76 = ptrtoint ptr %HDMI_AVI_INFO_SEND41 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %HDMI_AVI_INFO_SEND41, align 1
  %78 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %se_mask, align 4
  %HDMI_AVI_INFO_SEND43 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %79, i32 0, i32 53
  %80 = ptrtoint ptr %HDMI_AVI_INFO_SEND43 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %HDMI_AVI_INFO_SEND43, align 4
  %HDMI_AVI_INFO_CONT45 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %75, i32 0, i32 54
  %82 = ptrtoint ptr %HDMI_AVI_INFO_CONT45 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %HDMI_AVI_INFO_CONT45, align 1
  %conv46 = zext i8 %83 to i32
  %HDMI_AVI_INFO_CONT48 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %79, i32 0, i32 54
  %84 = ptrtoint ptr %HDMI_AVI_INFO_CONT48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %HDMI_AVI_INFO_CONT48, align 4
  %call49 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %69, i32 noundef %73, i32 noundef 2, i8 noundef zeroext %77, i32 noundef %81, i32 noundef 1, i32 noundef %conv46, i32 noundef %85, i32 noundef 1) #5
  %86 = ptrtoint ptr %ctx13 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctx13, align 4
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %HDMI_INFOFRAME_CONTROL1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %89, i32 0, i32 42
  %90 = ptrtoint ptr %HDMI_INFOFRAME_CONTROL1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %HDMI_INFOFRAME_CONTROL1, align 4
  %92 = ptrtoint ptr %se_shift32 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %se_shift32, align 4
  %HDMI_AVI_INFO_LINE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %93, i32 0, i32 55
  %94 = ptrtoint ptr %HDMI_AVI_INFO_LINE to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %HDMI_AVI_INFO_LINE, align 1
  %96 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %se_mask, align 4
  %HDMI_AVI_INFO_LINE55 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %97, i32 0, i32 55
  %98 = ptrtoint ptr %HDMI_AVI_INFO_LINE55 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %HDMI_AVI_INFO_LINE55, align 4
  %call56 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %87, i32 noundef %91, i32 noundef 1, i8 noundef zeroext %95, i32 noundef %99, i32 noundef 2) #5
  br label %if.end72

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %ctx58 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %100 = ptrtoint ptr %ctx58 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx58, align 4
  %regs59 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %102 = ptrtoint ptr %regs59 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs59, align 4
  %HDMI_INFOFRAME_CONTROL060 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %103, i32 0, i32 41
  %104 = ptrtoint ptr %HDMI_INFOFRAME_CONTROL060 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %HDMI_INFOFRAME_CONTROL060, align 4
  %se_shift61 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %106 = ptrtoint ptr %se_shift61 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %se_shift61, align 4
  %HDMI_AVI_INFO_SEND62 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %107, i32 0, i32 53
  %108 = ptrtoint ptr %HDMI_AVI_INFO_SEND62 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %HDMI_AVI_INFO_SEND62, align 1
  %HDMI_AVI_INFO_CONT66 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %107, i32 0, i32 54
  %110 = ptrtoint ptr %HDMI_AVI_INFO_CONT66 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %HDMI_AVI_INFO_CONT66, align 1
  %conv67 = zext i8 %111 to i32
  %call70 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %101, i32 noundef %105, i32 noundef 2, i8 noundef zeroext %109, i32 noundef %5, i32 noundef 0, i32 noundef %conv67, i32 noundef %3, i32 noundef 0) #5
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.end, %land.lhs.true.if.end72_crit_edge, %entry.if.end72_crit_edge
  %112 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %se_mask, align 4
  %HDMI_AVI_INFO_CONT74 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %113, i32 0, i32 54
  %114 = ptrtoint ptr %HDMI_AVI_INFO_CONT74 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %HDMI_AVI_INFO_CONT74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool75.not = icmp eq i32 %115, 0
  br i1 %tobool75.not, label %if.end72.if.end81_crit_edge, label %land.lhs.true76

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

land.lhs.true76:                                  ; preds = %if.end72
  %HDMI_AVI_INFO_SEND78 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %113, i32 0, i32 53
  %116 = ptrtoint ptr %HDMI_AVI_INFO_SEND78 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %HDMI_AVI_INFO_SEND78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool79.not = icmp eq i32 %117, 0
  br i1 %tobool79.not, label %land.lhs.true76.if.end81_crit_edge, label %if.then80

land.lhs.true76.if.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then80:                                        ; preds = %land.lhs.true76
  %vendor = getelementptr inbounds %struct.encoder_info_frame, ptr %info_frame, i32 0, i32 2
  %118 = ptrtoint ptr %vendor to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %vendor, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i, label %if.then80.dce110_update_hdmi_info_packet.exit_crit_edge, label %if.then.i

if.then80.dce110_update_hdmi_info_packet.exit_crit_edge: ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_update_hdmi_info_packet.exit

if.then.i:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dce110_update_generic_info_packet(ptr noundef %enc, i32 noundef 0, ptr noundef %vendor) #5
  br label %dce110_update_hdmi_info_packet.exit

dce110_update_hdmi_info_packet.exit:              ; preds = %if.then.i, %if.then80.dce110_update_hdmi_info_packet.exit_crit_edge
  %line.0.i = phi i32 [ 2, %if.then.i ], [ 0, %if.then80.dce110_update_hdmi_info_packet.exit_crit_edge ]
  %cont.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.then80.dce110_update_hdmi_info_packet.exit_crit_edge ]
  %ctx.i = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %120 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ctx.i, align 4
  %regs.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %122 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i, align 4
  %HDMI_GENERIC_PACKET_CONTROL0.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %123, i32 0, i32 37
  %124 = ptrtoint ptr %HDMI_GENERIC_PACKET_CONTROL0.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %HDMI_GENERIC_PACKET_CONTROL0.i, align 4
  %se_shift.i = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %126 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %se_shift.i, align 4
  %HDMI_GENERIC0_CONT.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %127, i32 0, i32 26
  %128 = ptrtoint ptr %HDMI_GENERIC0_CONT.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %HDMI_GENERIC0_CONT.i, align 1
  %130 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %se_mask, align 4
  %HDMI_GENERIC0_CONT1.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %131, i32 0, i32 26
  %132 = ptrtoint ptr %HDMI_GENERIC0_CONT1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %HDMI_GENERIC0_CONT1.i, align 4
  %HDMI_GENERIC0_SEND.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %127, i32 0, i32 27
  %134 = ptrtoint ptr %HDMI_GENERIC0_SEND.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %HDMI_GENERIC0_SEND.i, align 1
  %conv.i = zext i8 %135 to i32
  %HDMI_GENERIC0_SEND4.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %131, i32 0, i32 27
  %136 = ptrtoint ptr %HDMI_GENERIC0_SEND4.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %HDMI_GENERIC0_SEND4.i, align 4
  %HDMI_GENERIC0_LINE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %127, i32 0, i32 28
  %138 = ptrtoint ptr %HDMI_GENERIC0_LINE.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %HDMI_GENERIC0_LINE.i, align 1
  %conv6.i = zext i8 %139 to i32
  %HDMI_GENERIC0_LINE8.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %131, i32 0, i32 28
  %140 = ptrtoint ptr %HDMI_GENERIC0_LINE8.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %HDMI_GENERIC0_LINE8.i, align 4
  %call.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %121, i32 noundef %125, i32 noundef 3, i8 noundef zeroext %129, i32 noundef %133, i32 noundef %cont.0.i, i32 noundef %conv.i, i32 noundef %137, i32 noundef %cont.0.i, i32 noundef %conv6.i, i32 noundef %141, i32 noundef %line.0.i) #5
  %gamut = getelementptr inbounds %struct.encoder_info_frame, ptr %info_frame, i32 0, i32 1
  %142 = ptrtoint ptr %gamut to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %gamut, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i133 = icmp eq i8 %143, 0
  br i1 %tobool.not.i133, label %dce110_update_hdmi_info_packet.exit.dce110_update_hdmi_info_packet.exit137_crit_edge, label %if.then.i134

dce110_update_hdmi_info_packet.exit.dce110_update_hdmi_info_packet.exit137_crit_edge: ; preds = %dce110_update_hdmi_info_packet.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_update_hdmi_info_packet.exit137

if.then.i134:                                     ; preds = %dce110_update_hdmi_info_packet.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dce110_update_generic_info_packet(ptr noundef %enc, i32 noundef 1, ptr noundef %gamut) #5
  br label %dce110_update_hdmi_info_packet.exit137

dce110_update_hdmi_info_packet.exit137:           ; preds = %if.then.i134, %dce110_update_hdmi_info_packet.exit.dce110_update_hdmi_info_packet.exit137_crit_edge
  %line.0.i135 = phi i32 [ 2, %if.then.i134 ], [ 0, %dce110_update_hdmi_info_packet.exit.dce110_update_hdmi_info_packet.exit137_crit_edge ]
  %cont.0.i136 = phi i32 [ 1, %if.then.i134 ], [ 0, %dce110_update_hdmi_info_packet.exit.dce110_update_hdmi_info_packet.exit137_crit_edge ]
  %144 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ctx.i, align 4
  %146 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs.i, align 4
  %HDMI_GENERIC_PACKET_CONTROL013.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %147, i32 0, i32 37
  %148 = ptrtoint ptr %HDMI_GENERIC_PACKET_CONTROL013.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %HDMI_GENERIC_PACKET_CONTROL013.i, align 4
  %150 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %se_shift.i, align 4
  %HDMI_GENERIC1_CONT.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %151, i32 0, i32 29
  %152 = ptrtoint ptr %HDMI_GENERIC1_CONT.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %HDMI_GENERIC1_CONT.i, align 1
  %154 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %se_mask, align 4
  %HDMI_GENERIC1_CONT16.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %155, i32 0, i32 29
  %156 = ptrtoint ptr %HDMI_GENERIC1_CONT16.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %HDMI_GENERIC1_CONT16.i, align 4
  %HDMI_GENERIC1_SEND.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %151, i32 0, i32 30
  %158 = ptrtoint ptr %HDMI_GENERIC1_SEND.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %HDMI_GENERIC1_SEND.i, align 1
  %conv18.i = zext i8 %159 to i32
  %HDMI_GENERIC1_SEND20.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %155, i32 0, i32 30
  %160 = ptrtoint ptr %HDMI_GENERIC1_SEND20.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %HDMI_GENERIC1_SEND20.i, align 4
  %HDMI_GENERIC1_LINE.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %151, i32 0, i32 31
  %162 = ptrtoint ptr %HDMI_GENERIC1_LINE.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %HDMI_GENERIC1_LINE.i, align 1
  %conv22.i = zext i8 %163 to i32
  %HDMI_GENERIC1_LINE24.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %155, i32 0, i32 31
  %164 = ptrtoint ptr %HDMI_GENERIC1_LINE24.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %HDMI_GENERIC1_LINE24.i, align 4
  %call25.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %145, i32 noundef %149, i32 noundef 3, i8 noundef zeroext %153, i32 noundef %157, i32 noundef %cont.0.i136, i32 noundef %conv18.i, i32 noundef %161, i32 noundef %cont.0.i136, i32 noundef %conv22.i, i32 noundef %165, i32 noundef %line.0.i135) #5
  %spd = getelementptr inbounds %struct.encoder_info_frame, ptr %info_frame, i32 0, i32 4
  %166 = ptrtoint ptr %spd to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %spd, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i138 = icmp eq i8 %167, 0
  br i1 %tobool.not.i138, label %dce110_update_hdmi_info_packet.exit137.dce110_update_hdmi_info_packet.exit142_crit_edge, label %if.then.i139

dce110_update_hdmi_info_packet.exit137.dce110_update_hdmi_info_packet.exit142_crit_edge: ; preds = %dce110_update_hdmi_info_packet.exit137
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_update_hdmi_info_packet.exit142

if.then.i139:                                     ; preds = %dce110_update_hdmi_info_packet.exit137
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dce110_update_generic_info_packet(ptr noundef %enc, i32 noundef 2, ptr noundef %spd) #5
  br label %dce110_update_hdmi_info_packet.exit142

dce110_update_hdmi_info_packet.exit142:           ; preds = %if.then.i139, %dce110_update_hdmi_info_packet.exit137.dce110_update_hdmi_info_packet.exit142_crit_edge
  %line.0.i140 = phi i32 [ 2, %if.then.i139 ], [ 0, %dce110_update_hdmi_info_packet.exit137.dce110_update_hdmi_info_packet.exit142_crit_edge ]
  %cont.0.i141 = phi i32 [ 1, %if.then.i139 ], [ 0, %dce110_update_hdmi_info_packet.exit137.dce110_update_hdmi_info_packet.exit142_crit_edge ]
  %168 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ctx.i, align 4
  %170 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i, align 4
  %HDMI_GENERIC_PACKET_CONTROL1.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %171, i32 0, i32 38
  %172 = ptrtoint ptr %HDMI_GENERIC_PACKET_CONTROL1.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %HDMI_GENERIC_PACKET_CONTROL1.i, align 4
  %174 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %se_shift.i, align 4
  %HDMI_GENERIC0_CONT31.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %175, i32 0, i32 26
  %176 = ptrtoint ptr %HDMI_GENERIC0_CONT31.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %HDMI_GENERIC0_CONT31.i, align 1
  %178 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %se_mask, align 4
  %HDMI_GENERIC0_CONT33.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %179, i32 0, i32 26
  %180 = ptrtoint ptr %HDMI_GENERIC0_CONT33.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %HDMI_GENERIC0_CONT33.i, align 4
  %HDMI_GENERIC0_SEND35.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %175, i32 0, i32 27
  %182 = ptrtoint ptr %HDMI_GENERIC0_SEND35.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %HDMI_GENERIC0_SEND35.i, align 1
  %conv36.i = zext i8 %183 to i32
  %HDMI_GENERIC0_SEND38.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %179, i32 0, i32 27
  %184 = ptrtoint ptr %HDMI_GENERIC0_SEND38.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %HDMI_GENERIC0_SEND38.i, align 4
  %HDMI_GENERIC0_LINE40.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %175, i32 0, i32 28
  %186 = ptrtoint ptr %HDMI_GENERIC0_LINE40.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %HDMI_GENERIC0_LINE40.i, align 1
  %conv41.i = zext i8 %187 to i32
  %HDMI_GENERIC0_LINE43.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %179, i32 0, i32 28
  %188 = ptrtoint ptr %HDMI_GENERIC0_LINE43.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %HDMI_GENERIC0_LINE43.i, align 4
  %call44.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %169, i32 noundef %173, i32 noundef 3, i8 noundef zeroext %177, i32 noundef %181, i32 noundef %cont.0.i141, i32 noundef %conv36.i, i32 noundef %185, i32 noundef %cont.0.i141, i32 noundef %conv41.i, i32 noundef %189, i32 noundef %line.0.i140) #5
  %hdrsmd = getelementptr inbounds %struct.encoder_info_frame, ptr %info_frame, i32 0, i32 6
  %190 = ptrtoint ptr %hdrsmd to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %hdrsmd, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i143 = icmp eq i8 %191, 0
  br i1 %tobool.not.i143, label %dce110_update_hdmi_info_packet.exit142.dce110_update_hdmi_info_packet.exit147_crit_edge, label %if.then.i144

dce110_update_hdmi_info_packet.exit142.dce110_update_hdmi_info_packet.exit147_crit_edge: ; preds = %dce110_update_hdmi_info_packet.exit142
  call void @__sanitizer_cov_trace_pc() #7
  br label %dce110_update_hdmi_info_packet.exit147

if.then.i144:                                     ; preds = %dce110_update_hdmi_info_packet.exit142
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dce110_update_generic_info_packet(ptr noundef %enc, i32 noundef 3, ptr noundef %hdrsmd) #5
  br label %dce110_update_hdmi_info_packet.exit147

dce110_update_hdmi_info_packet.exit147:           ; preds = %if.then.i144, %dce110_update_hdmi_info_packet.exit142.dce110_update_hdmi_info_packet.exit147_crit_edge
  %line.0.i145 = phi i32 [ 2, %if.then.i144 ], [ 0, %dce110_update_hdmi_info_packet.exit142.dce110_update_hdmi_info_packet.exit147_crit_edge ]
  %cont.0.i146 = phi i32 [ 1, %if.then.i144 ], [ 0, %dce110_update_hdmi_info_packet.exit142.dce110_update_hdmi_info_packet.exit147_crit_edge ]
  %192 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ctx.i, align 4
  %194 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i, align 4
  %HDMI_GENERIC_PACKET_CONTROL149.i = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %195, i32 0, i32 38
  %196 = ptrtoint ptr %HDMI_GENERIC_PACKET_CONTROL149.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %HDMI_GENERIC_PACKET_CONTROL149.i, align 4
  %198 = ptrtoint ptr %se_shift.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %se_shift.i, align 4
  %HDMI_GENERIC1_CONT51.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %199, i32 0, i32 29
  %200 = ptrtoint ptr %HDMI_GENERIC1_CONT51.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %HDMI_GENERIC1_CONT51.i, align 1
  %202 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %se_mask, align 4
  %HDMI_GENERIC1_CONT53.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %203, i32 0, i32 29
  %204 = ptrtoint ptr %HDMI_GENERIC1_CONT53.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %HDMI_GENERIC1_CONT53.i, align 4
  %HDMI_GENERIC1_SEND55.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %199, i32 0, i32 30
  %206 = ptrtoint ptr %HDMI_GENERIC1_SEND55.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %HDMI_GENERIC1_SEND55.i, align 1
  %conv56.i = zext i8 %207 to i32
  %HDMI_GENERIC1_SEND58.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %203, i32 0, i32 30
  %208 = ptrtoint ptr %HDMI_GENERIC1_SEND58.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %HDMI_GENERIC1_SEND58.i, align 4
  %HDMI_GENERIC1_LINE60.i = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %199, i32 0, i32 31
  %210 = ptrtoint ptr %HDMI_GENERIC1_LINE60.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %HDMI_GENERIC1_LINE60.i, align 1
  %conv61.i = zext i8 %211 to i32
  %HDMI_GENERIC1_LINE63.i = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %203, i32 0, i32 31
  %212 = ptrtoint ptr %HDMI_GENERIC1_LINE63.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %HDMI_GENERIC1_LINE63.i, align 4
  %call64.i = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %193, i32 noundef %197, i32 noundef 3, i8 noundef zeroext %201, i32 noundef %205, i32 noundef %cont.0.i146, i32 noundef %conv56.i, i32 noundef %209, i32 noundef %cont.0.i146, i32 noundef %conv61.i, i32 noundef %213, i32 noundef %line.0.i145) #5
  br label %if.end81

if.end81:                                         ; preds = %dce110_update_hdmi_info_packet.exit147, %land.lhs.true76.if.end81_crit_edge, %if.end72.if.end81_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_stop_hdmi_info_packets(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %HDMI_GENERIC_PACKET_CONTROL0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %HDMI_GENERIC_PACKET_CONTROL0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %HDMI_GENERIC_PACKET_CONTROL0, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift, align 4
  %HDMI_GENERIC1_CONT = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 29
  %8 = ptrtoint ptr %HDMI_GENERIC1_CONT to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %HDMI_GENERIC1_CONT, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask, align 4
  %HDMI_GENERIC1_CONT1 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 29
  %12 = ptrtoint ptr %HDMI_GENERIC1_CONT1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %HDMI_GENERIC1_CONT1, align 4
  %HDMI_GENERIC1_LINE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 31
  %14 = ptrtoint ptr %HDMI_GENERIC1_LINE to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %HDMI_GENERIC1_LINE, align 1
  %conv = zext i8 %15 to i32
  %HDMI_GENERIC1_LINE4 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 31
  %16 = ptrtoint ptr %HDMI_GENERIC1_LINE4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %HDMI_GENERIC1_LINE4, align 4
  %HDMI_GENERIC1_SEND = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 30
  %18 = ptrtoint ptr %HDMI_GENERIC1_SEND to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %HDMI_GENERIC1_SEND, align 1
  %conv6 = zext i8 %19 to i32
  %HDMI_GENERIC1_SEND8 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 30
  %20 = ptrtoint ptr %HDMI_GENERIC1_SEND8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %HDMI_GENERIC1_SEND8, align 4
  %HDMI_GENERIC0_CONT = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 26
  %22 = ptrtoint ptr %HDMI_GENERIC0_CONT to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %HDMI_GENERIC0_CONT, align 1
  %conv10 = zext i8 %23 to i32
  %HDMI_GENERIC0_CONT12 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 26
  %24 = ptrtoint ptr %HDMI_GENERIC0_CONT12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %HDMI_GENERIC0_CONT12, align 4
  %HDMI_GENERIC0_LINE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 28
  %26 = ptrtoint ptr %HDMI_GENERIC0_LINE to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %HDMI_GENERIC0_LINE, align 1
  %conv14 = zext i8 %27 to i32
  %HDMI_GENERIC0_LINE16 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 28
  %28 = ptrtoint ptr %HDMI_GENERIC0_LINE16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %HDMI_GENERIC0_LINE16, align 4
  %HDMI_GENERIC0_SEND = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 27
  %30 = ptrtoint ptr %HDMI_GENERIC0_SEND to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %HDMI_GENERIC0_SEND, align 1
  %conv18 = zext i8 %31 to i32
  %HDMI_GENERIC0_SEND20 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 27
  %32 = ptrtoint ptr %HDMI_GENERIC0_SEND20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %HDMI_GENERIC0_SEND20, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 6, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 0, i32 noundef %conv, i32 noundef %17, i32 noundef 0, i32 noundef %conv6, i32 noundef %21, i32 noundef 0, i32 noundef %conv10, i32 noundef %25, i32 noundef 0, i32 noundef %conv14, i32 noundef %29, i32 noundef 0, i32 noundef %conv18, i32 noundef %33, i32 noundef 0) #5
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %HDMI_GENERIC_PACKET_CONTROL1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %37, i32 0, i32 38
  %38 = ptrtoint ptr %HDMI_GENERIC_PACKET_CONTROL1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %HDMI_GENERIC_PACKET_CONTROL1, align 4
  %40 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %se_shift, align 4
  %HDMI_GENERIC0_CONT25 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %41, i32 0, i32 26
  %42 = ptrtoint ptr %HDMI_GENERIC0_CONT25 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %HDMI_GENERIC0_CONT25, align 1
  %44 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %se_mask, align 4
  %HDMI_GENERIC0_CONT27 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %45, i32 0, i32 26
  %46 = ptrtoint ptr %HDMI_GENERIC0_CONT27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %HDMI_GENERIC0_CONT27, align 4
  %HDMI_GENERIC0_LINE29 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %41, i32 0, i32 28
  %48 = ptrtoint ptr %HDMI_GENERIC0_LINE29 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %HDMI_GENERIC0_LINE29, align 1
  %conv30 = zext i8 %49 to i32
  %HDMI_GENERIC0_LINE32 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %45, i32 0, i32 28
  %50 = ptrtoint ptr %HDMI_GENERIC0_LINE32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %HDMI_GENERIC0_LINE32, align 4
  %HDMI_GENERIC0_SEND34 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %41, i32 0, i32 27
  %52 = ptrtoint ptr %HDMI_GENERIC0_SEND34 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %HDMI_GENERIC0_SEND34, align 1
  %conv35 = zext i8 %53 to i32
  %HDMI_GENERIC0_SEND37 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %45, i32 0, i32 27
  %54 = ptrtoint ptr %HDMI_GENERIC0_SEND37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %HDMI_GENERIC0_SEND37, align 4
  %HDMI_GENERIC1_CONT39 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %41, i32 0, i32 29
  %56 = ptrtoint ptr %HDMI_GENERIC1_CONT39 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %HDMI_GENERIC1_CONT39, align 1
  %conv40 = zext i8 %57 to i32
  %HDMI_GENERIC1_CONT42 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %45, i32 0, i32 29
  %58 = ptrtoint ptr %HDMI_GENERIC1_CONT42 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %HDMI_GENERIC1_CONT42, align 4
  %HDMI_GENERIC1_LINE44 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %41, i32 0, i32 31
  %60 = ptrtoint ptr %HDMI_GENERIC1_LINE44 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %HDMI_GENERIC1_LINE44, align 1
  %conv45 = zext i8 %61 to i32
  %HDMI_GENERIC1_LINE47 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %45, i32 0, i32 31
  %62 = ptrtoint ptr %HDMI_GENERIC1_LINE47 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %HDMI_GENERIC1_LINE47, align 4
  %HDMI_GENERIC1_SEND49 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %41, i32 0, i32 30
  %64 = ptrtoint ptr %HDMI_GENERIC1_SEND49 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %HDMI_GENERIC1_SEND49, align 1
  %conv50 = zext i8 %65 to i32
  %HDMI_GENERIC1_SEND52 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %45, i32 0, i32 30
  %66 = ptrtoint ptr %HDMI_GENERIC1_SEND52 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %HDMI_GENERIC1_SEND52, align 4
  %call53 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %35, i32 noundef %39, i32 noundef 0, i32 noundef 6, i8 noundef zeroext %43, i32 noundef %47, i32 noundef 0, i32 noundef %conv30, i32 noundef %51, i32 noundef 0, i32 noundef %conv35, i32 noundef %55, i32 noundef 0, i32 noundef %conv40, i32 noundef %59, i32 noundef 0, i32 noundef %conv45, i32 noundef %63, i32 noundef 0, i32 noundef %conv50, i32 noundef %67, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_update_dp_info_packets(ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %info_frame) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vsc = getelementptr inbounds %struct.encoder_info_frame, ptr %info_frame, i32 0, i32 5
  %0 = ptrtoint ptr %vsc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vsc, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dce110_update_generic_info_packet(ptr noundef %enc, i32 noundef 0, ptr noundef %vsc)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spd = getelementptr inbounds %struct.encoder_info_frame, ptr %info_frame, i32 0, i32 4
  %2 = ptrtoint ptr %spd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %spd, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dce110_update_generic_info_packet(ptr noundef %enc, i32 noundef 2, ptr noundef %spd)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %hdrsmd = getelementptr inbounds %struct.encoder_info_frame, ptr %info_frame, i32 0, i32 6
  %4 = ptrtoint ptr %hdrsmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdrsmd, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dce110_update_generic_info_packet(ptr noundef %enc, i32 noundef 3, ptr noundef %hdrsmd)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %DP_SEC_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %DP_SEC_CNTL to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %DP_SEC_CNTL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %12 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se_shift, align 4
  %DP_SEC_GSP0_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %13, i32 0, i32 56
  %14 = ptrtoint ptr %DP_SEC_GSP0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %DP_SEC_GSP0_ENABLE, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %16 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %se_mask, align 4
  %DP_SEC_GSP0_ENABLE12 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %17, i32 0, i32 56
  %18 = ptrtoint ptr %DP_SEC_GSP0_ENABLE12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DP_SEC_GSP0_ENABLE12, align 4
  %20 = ptrtoint ptr %vsc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vsc, align 1, !range !73
  %22 = zext i8 %21 to i32
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %7, i32 noundef %11, i32 noundef 1, i8 noundef zeroext %15, i32 noundef %19, i32 noundef %22) #5
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %DP_SEC_CNTL19 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %DP_SEC_CNTL19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %DP_SEC_CNTL19, align 4
  %29 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se_shift, align 4
  %DP_SEC_GSP2_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %30, i32 0, i32 59
  %31 = ptrtoint ptr %DP_SEC_GSP2_ENABLE to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %DP_SEC_GSP2_ENABLE, align 1
  %33 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %se_mask, align 4
  %DP_SEC_GSP2_ENABLE22 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %34, i32 0, i32 59
  %35 = ptrtoint ptr %DP_SEC_GSP2_ENABLE22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %DP_SEC_GSP2_ENABLE22, align 4
  %37 = ptrtoint ptr %spd to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %spd, align 1, !range !73
  %39 = zext i8 %38 to i32
  %call27 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %24, i32 noundef %28, i32 noundef 1, i8 noundef zeroext %32, i32 noundef %36, i32 noundef %39) #5
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %DP_SEC_CNTL31 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %DP_SEC_CNTL31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %DP_SEC_CNTL31, align 4
  %46 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %se_shift, align 4
  %DP_SEC_GSP3_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %47, i32 0, i32 60
  %48 = ptrtoint ptr %DP_SEC_GSP3_ENABLE to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %DP_SEC_GSP3_ENABLE, align 1
  %50 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %se_mask, align 4
  %DP_SEC_GSP3_ENABLE34 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %51, i32 0, i32 60
  %52 = ptrtoint ptr %DP_SEC_GSP3_ENABLE34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %DP_SEC_GSP3_ENABLE34, align 4
  %54 = ptrtoint ptr %hdrsmd to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hdrsmd, align 1, !range !73
  %56 = zext i8 %55 to i32
  %call39 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %41, i32 noundef %45, i32 noundef 1, i8 noundef zeroext %49, i32 noundef %53, i32 noundef %56) #5
  %57 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx, align 4
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %DP_SEC_CNTL43 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %60, i32 0, i32 27
  %61 = ptrtoint ptr %DP_SEC_CNTL43 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %DP_SEC_CNTL43, align 4
  %call44 = tail call i32 @dm_read_reg_func(ptr noundef %58, i32 noundef %62, ptr noundef nonnull @__func__.dce110_stream_encoder_update_dp_info_packets) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end11.if.end55_crit_edge, label %if.then46

if.end11.if.end55_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then46:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctx, align 4
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %DP_SEC_CNTL50 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %66, i32 0, i32 27
  %67 = ptrtoint ptr %DP_SEC_CNTL50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %DP_SEC_CNTL50, align 4
  %69 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %se_shift, align 4
  %DP_SEC_STREAM_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %70, i32 0, i32 57
  %71 = ptrtoint ptr %DP_SEC_STREAM_ENABLE to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %DP_SEC_STREAM_ENABLE, align 1
  %73 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %se_mask, align 4
  %DP_SEC_STREAM_ENABLE53 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %74, i32 0, i32 57
  %75 = ptrtoint ptr %DP_SEC_STREAM_ENABLE53 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %DP_SEC_STREAM_ENABLE53, align 4
  %call54 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %64, i32 noundef %68, i32 noundef 1, i8 noundef zeroext %72, i32 noundef %76, i32 noundef 1) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.end11.if.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_stop_dp_info_packets(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %0 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_mask, align 4
  %DP_SEC_AVI_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %DP_SEC_AVI_ENABLE to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DP_SEC_AVI_ENABLE, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %DP_SEC_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %DP_SEC_CNTL to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %DP_SEC_CNTL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %10 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_shift, align 4
  %DP_SEC_GSP0_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 56
  %12 = ptrtoint ptr %DP_SEC_GSP0_ENABLE to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %DP_SEC_GSP0_ENABLE, align 1
  %DP_SEC_GSP0_ENABLE2 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 56
  %14 = ptrtoint ptr %DP_SEC_GSP0_ENABLE2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DP_SEC_GSP0_ENABLE2, align 4
  %DP_SEC_GSP1_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 58
  %16 = ptrtoint ptr %DP_SEC_GSP1_ENABLE to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %DP_SEC_GSP1_ENABLE, align 1
  %conv = zext i8 %17 to i32
  %DP_SEC_GSP1_ENABLE5 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 58
  %18 = ptrtoint ptr %DP_SEC_GSP1_ENABLE5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DP_SEC_GSP1_ENABLE5, align 4
  %DP_SEC_GSP2_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 59
  %20 = ptrtoint ptr %DP_SEC_GSP2_ENABLE to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %DP_SEC_GSP2_ENABLE, align 1
  %conv7 = zext i8 %21 to i32
  %DP_SEC_GSP2_ENABLE9 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 59
  %22 = ptrtoint ptr %DP_SEC_GSP2_ENABLE9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %DP_SEC_GSP2_ENABLE9, align 4
  %DP_SEC_GSP3_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 60
  %24 = ptrtoint ptr %DP_SEC_GSP3_ENABLE to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %DP_SEC_GSP3_ENABLE, align 1
  %conv11 = zext i8 %25 to i32
  %DP_SEC_GSP3_ENABLE13 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 60
  %26 = ptrtoint ptr %DP_SEC_GSP3_ENABLE13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DP_SEC_GSP3_ENABLE13, align 4
  %DP_SEC_AVI_ENABLE15 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 65
  %28 = ptrtoint ptr %DP_SEC_AVI_ENABLE15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %DP_SEC_AVI_ENABLE15, align 1
  %conv16 = zext i8 %29 to i32
  %DP_SEC_MPG_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 66
  %30 = ptrtoint ptr %DP_SEC_MPG_ENABLE to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %DP_SEC_MPG_ENABLE, align 1
  %conv20 = zext i8 %31 to i32
  %DP_SEC_MPG_ENABLE22 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 66
  %32 = ptrtoint ptr %DP_SEC_MPG_ENABLE22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %DP_SEC_MPG_ENABLE22, align 4
  %DP_SEC_STREAM_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 57
  %34 = ptrtoint ptr %DP_SEC_STREAM_ENABLE to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %DP_SEC_STREAM_ENABLE, align 1
  %conv24 = zext i8 %35 to i32
  %DP_SEC_STREAM_ENABLE26 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 57
  %36 = ptrtoint ptr %DP_SEC_STREAM_ENABLE26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %DP_SEC_STREAM_ENABLE26, align 4
  %call = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %5, i32 noundef %9, i32 noundef 0, i32 noundef 7, i8 noundef zeroext %13, i32 noundef %15, i32 noundef 0, i32 noundef %conv, i32 noundef %19, i32 noundef 0, i32 noundef %conv7, i32 noundef %23, i32 noundef 0, i32 noundef %conv11, i32 noundef %27, i32 noundef 0, i32 noundef %conv16, i32 noundef %3, i32 noundef 0, i32 noundef %conv20, i32 noundef %33, i32 noundef 0, i32 noundef %conv24, i32 noundef %37, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctx28 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %38 = ptrtoint ptr %ctx28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx28, align 4
  %regs29 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %40 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs29, align 4
  %DP_SEC_CNTL30 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %DP_SEC_CNTL30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %DP_SEC_CNTL30, align 4
  %call31 = tail call i32 @dm_read_reg_func(ptr noundef %39, i32 noundef %43, ptr noundef nonnull @__func__.dce110_stream_encoder_stop_dp_info_packets) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end.if.end43_crit_edge, label %if.then33

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %ctx28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx28, align 4
  %46 = ptrtoint ptr %regs29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs29, align 4
  %DP_SEC_CNTL37 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %DP_SEC_CNTL37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %DP_SEC_CNTL37, align 4
  %se_shift38 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %50 = ptrtoint ptr %se_shift38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %se_shift38, align 4
  %DP_SEC_STREAM_ENABLE39 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %51, i32 0, i32 57
  %52 = ptrtoint ptr %DP_SEC_STREAM_ENABLE39 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %DP_SEC_STREAM_ENABLE39, align 1
  %54 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %se_mask, align 4
  %DP_SEC_STREAM_ENABLE41 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %55, i32 0, i32 57
  %56 = ptrtoint ptr %DP_SEC_STREAM_ENABLE41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %DP_SEC_STREAM_ENABLE41, align 4
  %call42 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %45, i32 noundef %49, i32 noundef 1, i8 noundef zeroext %53, i32 noundef %57, i32 noundef 1) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %if.end.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_dp_blank(ptr nocapture noundef readnone %link, ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  %reg1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg1) #5
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg1, align 4
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %DP_VID_STREAM_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %DP_VID_STREAM_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DP_VID_STREAM_CNTL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %7 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %se_shift, align 4
  %DP_VID_STREAM_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %DP_VID_STREAM_ENABLE to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DP_VID_STREAM_ENABLE, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %11 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se_mask, align 4
  %DP_VID_STREAM_ENABLE1 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %DP_VID_STREAM_ENABLE1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DP_VID_STREAM_ENABLE1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %reg1) #5
  %15 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg1, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %DP_VID_STREAM_CNTL5 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %20, i32 0, i32 31
  %21 = ptrtoint ptr %DP_VID_STREAM_CNTL5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %DP_VID_STREAM_CNTL5, align 4
  %23 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %se_shift, align 4
  %DP_VID_STREAM_DIS_DEFER = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %24, i32 0, i32 67
  %25 = ptrtoint ptr %DP_VID_STREAM_DIS_DEFER to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %DP_VID_STREAM_DIS_DEFER, align 1
  %27 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %se_mask, align 4
  %DP_VID_STREAM_DIS_DEFER8 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %28, i32 0, i32 67
  %29 = ptrtoint ptr %DP_VID_STREAM_DIS_DEFER8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %DP_VID_STREAM_DIS_DEFER8, align 4
  %call9 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %18, i32 noundef %22, i32 noundef 1, i8 noundef zeroext %26, i32 noundef %30, i32 noundef 2) #5
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %DP_VID_STREAM_CNTL13 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %34, i32 0, i32 31
  %35 = ptrtoint ptr %DP_VID_STREAM_CNTL13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %DP_VID_STREAM_CNTL13, align 4
  %37 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %se_shift, align 4
  %DP_VID_STREAM_ENABLE15 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %DP_VID_STREAM_ENABLE15 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %DP_VID_STREAM_ENABLE15, align 1
  %41 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %se_mask, align 4
  %DP_VID_STREAM_ENABLE17 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %DP_VID_STREAM_ENABLE17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %DP_VID_STREAM_ENABLE17, align 4
  %call18 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %32, i32 noundef %36, i32 noundef 1, i8 noundef zeroext %40, i32 noundef %44, i32 noundef 0) #5
  %45 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx, align 4
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %DP_VID_STREAM_CNTL22 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %48, i32 0, i32 31
  %49 = ptrtoint ptr %DP_VID_STREAM_CNTL22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %DP_VID_STREAM_CNTL22, align 4
  %51 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %se_shift, align 4
  %DP_VID_STREAM_STATUS = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %52, i32 0, i32 69
  %53 = ptrtoint ptr %DP_VID_STREAM_STATUS to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %DP_VID_STREAM_STATUS, align 1
  %conv = zext i8 %54 to i32
  %55 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %se_mask, align 4
  %DP_VID_STREAM_STATUS25 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %56, i32 0, i32 69
  %57 = ptrtoint ptr %DP_VID_STREAM_STATUS25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %DP_VID_STREAM_STATUS25, align 4
  call void @generic_reg_wait(ptr noundef %46, i32 noundef %50, i32 noundef %conv, i32 noundef %58, i32 noundef 0, i32 noundef 10, i32 noundef 3000, ptr noundef nonnull @__func__.dce110_stream_encoder_dp_blank, i32 noundef 958) #5
  %59 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx, align 4
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %DP_STEER_FIFO = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %62, i32 0, i32 28
  %63 = ptrtoint ptr %DP_STEER_FIFO to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %DP_STEER_FIFO, align 4
  %65 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %se_shift, align 4
  %DP_STEER_FIFO_RESET = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %66, i32 0, i32 70
  %67 = ptrtoint ptr %DP_STEER_FIFO_RESET to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %DP_STEER_FIFO_RESET, align 1
  %69 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %se_mask, align 4
  %DP_STEER_FIFO_RESET31 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %70, i32 0, i32 70
  %71 = ptrtoint ptr %DP_STEER_FIFO_RESET31 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %DP_STEER_FIFO_RESET31, align 4
  %call32 = call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %60, i32 noundef %64, i32 noundef 1, i8 noundef zeroext %68, i32 noundef %72, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_dp_unblank(ptr nocapture noundef readnone %link, ptr nocapture noundef readonly %enc, ptr nocapture noundef readonly %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %link_rate = getelementptr inbounds %struct.dc_link_settings, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %link_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %pix_clk_100hz = getelementptr inbounds %struct.encoder_unblank_param, ptr %param, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pix_clk_100hz, align 4
  %div = udiv i32 %3, 10
  %conv1 = zext i32 %div to i64
  %mul = shl nuw nsw i64 %conv1, 15
  %mul4 = mul i32 %1, 27000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1310720, i32 %3)
  %cmp164.i.i = icmp ult i32 %3, 1310720
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !63

if.then168.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul4
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul4, i64 %mul) #8, !srcloc !74
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t87 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t87, %if.else174.i.i ]
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %DP_VID_TIMING = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %8, i32 0, i32 32
  %9 = ptrtoint ptr %DP_VID_TIMING to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %DP_VID_TIMING, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %11 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se_shift, align 4
  %DP_VID_M_N_GEN_EN = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %12, i32 0, i32 71
  %13 = ptrtoint ptr %DP_VID_M_N_GEN_EN to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %DP_VID_M_N_GEN_EN, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %15 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %se_mask, align 4
  %DP_VID_M_N_GEN_EN6 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %16, i32 0, i32 71
  %17 = ptrtoint ptr %DP_VID_M_N_GEN_EN6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %DP_VID_M_N_GEN_EN6, align 4
  %call7 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %6, i32 noundef %10, i32 noundef 1, i8 noundef zeroext %14, i32 noundef %18, i32 noundef 0) #5
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %DP_VID_N = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %22, i32 0, i32 30
  %23 = ptrtoint ptr %DP_VID_N to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %DP_VID_N, align 4
  %25 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %se_shift, align 4
  %DP_VID_N12 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %26, i32 0, i32 72
  %27 = ptrtoint ptr %DP_VID_N12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %DP_VID_N12, align 1
  %29 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se_mask, align 4
  %DP_VID_N14 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %30, i32 0, i32 72
  %31 = ptrtoint ptr %DP_VID_N14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %DP_VID_N14, align 4
  %call15 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %20, i32 noundef %24, i32 noundef 1, i8 noundef zeroext %28, i32 noundef %32, i32 noundef 32768) #5
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %DP_VID_M = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %36, i32 0, i32 29
  %37 = ptrtoint ptr %DP_VID_M to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %DP_VID_M, align 4
  %39 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %se_shift, align 4
  %DP_VID_M20 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %40, i32 0, i32 73
  %41 = ptrtoint ptr %DP_VID_M20 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %DP_VID_M20, align 1
  %43 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %se_mask, align 4
  %DP_VID_M22 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %44, i32 0, i32 73
  %45 = ptrtoint ptr %DP_VID_M22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %DP_VID_M22, align 4
  %call23 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %34, i32 noundef %38, i32 noundef 1, i8 noundef zeroext %42, i32 noundef %46, i32 noundef %dividend.addr.0.i.i.off0) #5
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %DP_VID_TIMING27 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %50, i32 0, i32 32
  %51 = ptrtoint ptr %DP_VID_TIMING27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %DP_VID_TIMING27, align 4
  %53 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %se_shift, align 4
  %DP_VID_M_N_GEN_EN29 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %54, i32 0, i32 71
  %55 = ptrtoint ptr %DP_VID_M_N_GEN_EN29 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %DP_VID_M_N_GEN_EN29, align 1
  %57 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %se_mask, align 4
  %DP_VID_M_N_GEN_EN31 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %58, i32 0, i32 71
  %59 = ptrtoint ptr %DP_VID_M_N_GEN_EN31 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %DP_VID_M_N_GEN_EN31, align 4
  %call32 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %48, i32 noundef %52, i32 noundef 1, i8 noundef zeroext %56, i32 noundef %60, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %div_u64.exit, %entry.if.end_crit_edge
  %ctx34 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %61 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctx34, align 4
  %regs35 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %63 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs35, align 4
  %DIG_FE_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %64, i32 0, i32 23
  %65 = ptrtoint ptr %DIG_FE_CNTL to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %DIG_FE_CNTL, align 4
  %se_shift36 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %67 = ptrtoint ptr %se_shift36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %se_shift36, align 4
  %DIG_START = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %68, i32 0, i32 74
  %69 = ptrtoint ptr %DIG_START to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %DIG_START, align 1
  %se_mask37 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %71 = ptrtoint ptr %se_mask37 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %se_mask37, align 4
  %DIG_START38 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %72, i32 0, i32 74
  %73 = ptrtoint ptr %DIG_START38 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %DIG_START38, align 4
  %call39 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %62, i32 noundef %66, i32 noundef 1, i8 noundef zeroext %70, i32 noundef %74, i32 noundef 1) #5
  %75 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctx34, align 4
  %77 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs35, align 4
  %DP_STEER_FIFO = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %78, i32 0, i32 28
  %79 = ptrtoint ptr %DP_STEER_FIFO to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %DP_STEER_FIFO, align 4
  %81 = ptrtoint ptr %se_shift36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %se_shift36, align 4
  %DP_STEER_FIFO_RESET = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %82, i32 0, i32 70
  %83 = ptrtoint ptr %DP_STEER_FIFO_RESET to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %DP_STEER_FIFO_RESET, align 1
  %85 = ptrtoint ptr %se_mask37 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %se_mask37, align 4
  %DP_STEER_FIFO_RESET45 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %86, i32 0, i32 70
  %87 = ptrtoint ptr %DP_STEER_FIFO_RESET45 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %DP_STEER_FIFO_RESET45, align 4
  %call46 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %76, i32 noundef %80, i32 noundef 1, i8 noundef zeroext %84, i32 noundef %88, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 21474800) #5
  %90 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctx34, align 4
  %92 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs35, align 4
  %DP_VID_STREAM_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %93, i32 0, i32 31
  %94 = ptrtoint ptr %DP_VID_STREAM_CNTL to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %DP_VID_STREAM_CNTL, align 4
  %96 = ptrtoint ptr %se_shift36 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %se_shift36, align 4
  %DP_VID_STREAM_ENABLE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %97, i32 0, i32 68
  %98 = ptrtoint ptr %DP_VID_STREAM_ENABLE to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %DP_VID_STREAM_ENABLE, align 1
  %100 = ptrtoint ptr %se_mask37 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %se_mask37, align 4
  %DP_VID_STREAM_ENABLE52 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %101, i32 0, i32 68
  %102 = ptrtoint ptr %DP_VID_STREAM_ENABLE52 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %DP_VID_STREAM_ENABLE52, align 4
  %call53 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %91, i32 noundef %95, i32 noundef 1, i8 noundef zeroext %99, i32 noundef %103, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @setup_stereo_sync(ptr nocapture noundef readonly %enc, i32 noundef %tg_inst, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %DIG_FE_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %DIG_FE_CNTL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DIG_FE_CNTL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift, align 4
  %DIG_STEREOSYNC_SELECT = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 110
  %8 = ptrtoint ptr %DIG_STEREOSYNC_SELECT to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DIG_STEREOSYNC_SELECT, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask, align 4
  %DIG_STEREOSYNC_SELECT1 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 109
  %12 = ptrtoint ptr %DIG_STEREOSYNC_SELECT1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DIG_STEREOSYNC_SELECT1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %tg_inst) #5
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %DIG_FE_CNTL5 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %DIG_FE_CNTL5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DIG_FE_CNTL5, align 4
  %20 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %se_shift, align 4
  %DIG_STEREOSYNC_GATE_EN = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %21, i32 0, i32 111
  %22 = ptrtoint ptr %DIG_STEREOSYNC_GATE_EN to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DIG_STEREOSYNC_GATE_EN, align 1
  %24 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %se_mask, align 4
  %DIG_STEREOSYNC_GATE_EN8 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %25, i32 0, i32 110
  %26 = ptrtoint ptr %DIG_STEREOSYNC_GATE_EN8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %DIG_STEREOSYNC_GATE_EN8, align 4
  %lnot = xor i1 %enable, true
  %lnot.ext = zext i1 %lnot to i32
  %call9 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %15, i32 noundef %19, i32 noundef 1, i8 noundef zeroext %23, i32 noundef %27, i32 noundef %lnot.ext) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_stream_encoder_set_avmute(ptr nocapture noundef readonly %enc, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = zext i1 %enable to i32
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %HDMI_GC = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %HDMI_GC to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %HDMI_GC, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift, align 4
  %HDMI_GC_AVMUTE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %HDMI_GC_AVMUTE to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %HDMI_GC_AVMUTE, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask, align 4
  %HDMI_GC_AVMUTE1 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %HDMI_GC_AVMUTE1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %HDMI_GC_AVMUTE1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %cond) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dig_connect_to_otg(ptr nocapture noundef readonly %enc, i32 noundef %tg_inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %DIG_FE_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %DIG_FE_CNTL to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DIG_FE_CNTL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift, align 4
  %DIG_SOURCE_SELECT = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %DIG_SOURCE_SELECT to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DIG_SOURCE_SELECT, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask, align 4
  %DIG_SOURCE_SELECT1 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 127
  %12 = ptrtoint ptr %DIG_SOURCE_SELECT1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DIG_SOURCE_SELECT1, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %1, i32 noundef %5, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef %tg_inst) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_reset_hdmi_stream_attribute(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %0 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_mask, align 4
  %HDMI_DATA_SCRAMBLE_EN = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %HDMI_DATA_SCRAMBLE_EN to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %HDMI_DATA_SCRAMBLE_EN, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %ctx20 = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %4 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx20, align 4
  %regs21 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %6 = ptrtoint ptr %regs21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs21, align 4
  %HDMI_CONTROL22 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %HDMI_CONTROL22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %HDMI_CONTROL22, align 4
  %se_shift23 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %10 = ptrtoint ptr %se_shift23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_shift23, align 4
  %HDMI_PACKET_GEN_VERSION24 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 36
  %12 = ptrtoint ptr %HDMI_PACKET_GEN_VERSION24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %HDMI_PACKET_GEN_VERSION24, align 1
  %HDMI_PACKET_GEN_VERSION26 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %HDMI_PACKET_GEN_VERSION26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %HDMI_PACKET_GEN_VERSION26, align 4
  %HDMI_KEEPOUT_MODE28 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 37
  %16 = ptrtoint ptr %HDMI_KEEPOUT_MODE28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %HDMI_KEEPOUT_MODE28, align 1
  %conv29 = zext i8 %17 to i32
  %HDMI_KEEPOUT_MODE31 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 37
  %18 = ptrtoint ptr %HDMI_KEEPOUT_MODE31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %HDMI_KEEPOUT_MODE31, align 4
  %HDMI_DEEP_COLOR_ENABLE33 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 38
  %20 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE33 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %HDMI_DEEP_COLOR_ENABLE33, align 1
  %conv34 = zext i8 %21 to i32
  %HDMI_DEEP_COLOR_ENABLE36 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 38
  %22 = ptrtoint ptr %HDMI_DEEP_COLOR_ENABLE36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %HDMI_DEEP_COLOR_ENABLE36, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %HDMI_DATA_SCRAMBLE_EN11 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 44
  %24 = ptrtoint ptr %HDMI_DATA_SCRAMBLE_EN11 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %HDMI_DATA_SCRAMBLE_EN11, align 1
  %conv12 = zext i8 %25 to i32
  %HDMI_CLOCK_CHANNEL_RATE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %11, i32 0, i32 39
  %26 = ptrtoint ptr %HDMI_CLOCK_CHANNEL_RATE to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %HDMI_CLOCK_CHANNEL_RATE, align 1
  %conv16 = zext i8 %27 to i32
  %HDMI_CLOCK_CHANNEL_RATE18 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %1, i32 0, i32 39
  %28 = ptrtoint ptr %HDMI_CLOCK_CHANNEL_RATE18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %HDMI_CLOCK_CHANNEL_RATE18, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %9, i32 noundef 5, i8 noundef zeroext %13, i32 noundef %15, i32 noundef 1, i32 noundef %conv29, i32 noundef %19, i32 noundef 1, i32 noundef %conv34, i32 noundef %23, i32 noundef 0, i32 noundef %conv12, i32 noundef %3, i32 noundef 0, i32 noundef %conv16, i32 noundef %29, i32 noundef 0) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %9, i32 noundef 3, i8 noundef zeroext %13, i32 noundef %15, i32 noundef 1, i32 noundef %conv29, i32 noundef %19, i32 noundef 1, i32 noundef %conv34, i32 noundef %23, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dig_source_otg(ptr nocapture noundef readonly %enc) #0 align 64 {
entry:
  %tg_inst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tg_inst) #5
  %0 = ptrtoint ptr %tg_inst to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tg_inst, align 4
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc, i32 0, i32 1
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 1
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %DIG_FE_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %4, i32 0, i32 23
  %5 = ptrtoint ptr %DIG_FE_CNTL to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DIG_FE_CNTL, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 2
  %7 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %se_shift, align 4
  %DIG_SOURCE_SELECT = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %DIG_SOURCE_SELECT to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DIG_SOURCE_SELECT, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc, i32 0, i32 3
  %11 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se_mask, align 4
  %DIG_SOURCE_SELECT1 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %12, i32 0, i32 127
  %13 = ptrtoint ptr %DIG_SOURCE_SELECT1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DIG_SOURCE_SELECT1, align 4
  %call = call i32 @generic_reg_get(ptr noundef %2, i32 noundef %6, i8 noundef zeroext %10, i32 noundef %14, ptr noundef nonnull %tg_inst) #5
  %15 = ptrtoint ptr %tg_inst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tg_inst, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tg_inst) #5
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce110_stream_encoder_set_stream_attribute_helper(ptr nocapture noundef readonly %enc110, ptr nocapture noundef readonly %crtc_timing) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %TMDS_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %TMDS_CNTL to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %TMDS_CNTL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pixel_encoding = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %4 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond56 = icmp eq i32 %5, 2
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 2
  %8 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_shift, align 4
  %TMDS_PIXEL_ENCODING = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %9, i32 0, i32 108
  %10 = ptrtoint ptr %TMDS_PIXEL_ENCODING to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %TMDS_PIXEL_ENCODING, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 3
  %12 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se_mask, align 4
  %TMDS_PIXEL_ENCODING3 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %13, i32 0, i32 108
  %14 = ptrtoint ptr %TMDS_PIXEL_ENCODING3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %TMDS_PIXEL_ENCODING3, align 4
  %. = zext i1 %cond56 to i32
  %call12 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %7, i32 noundef %3, i32 noundef 1, i8 noundef zeroext %11, i32 noundef %15, i32 noundef %.) #5
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %TMDS_CNTL16 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %17, i32 0, i32 52
  br label %if.end55.sink.split

if.else:                                          ; preds = %entry
  %DIG_FE_CNTL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %DIG_FE_CNTL to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %DIG_FE_CNTL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.else.if.end55_crit_edge, label %if.then23

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %pixel_encoding24 = getelementptr inbounds %struct.dc_crtc_timing, ptr %crtc_timing, i32 0, i32 17
  %20 = ptrtoint ptr %pixel_encoding24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixel_encoding24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cond = icmp eq i32 %21, 2
  %ctx27 = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 1
  %22 = ptrtoint ptr %ctx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx27, align 4
  %se_shift30 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 2
  %24 = ptrtoint ptr %se_shift30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %se_shift30, align 4
  %TMDS_PIXEL_ENCODING31 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %25, i32 0, i32 108
  %26 = ptrtoint ptr %TMDS_PIXEL_ENCODING31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %TMDS_PIXEL_ENCODING31, align 1
  %se_mask32 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 3
  %28 = ptrtoint ptr %se_mask32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se_mask32, align 4
  %TMDS_PIXEL_ENCODING33 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %29, i32 0, i32 108
  %30 = ptrtoint ptr %TMDS_PIXEL_ENCODING33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %TMDS_PIXEL_ENCODING33, align 4
  %.91 = zext i1 %cond to i32
  %call44 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %23, i32 noundef %19, i32 noundef 1, i8 noundef zeroext %27, i32 noundef %31, i32 noundef %.91) #5
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %DIG_FE_CNTL49 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %33, i32 0, i32 23
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then23, %if.then
  %DIG_FE_CNTL49.sink = phi ptr [ %DIG_FE_CNTL49, %if.then23 ], [ %TMDS_CNTL16, %if.then ]
  %.sink85.in = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 1
  %34 = ptrtoint ptr %.sink85.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %.sink85 = load ptr, ptr %.sink85.in, align 4
  %35 = ptrtoint ptr %DIG_FE_CNTL49.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %DIG_FE_CNTL49.sink, align 4
  %se_shift50 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 2
  %37 = ptrtoint ptr %se_shift50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %se_shift50, align 4
  %TMDS_COLOR_FORMAT51 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %38, i32 0, i32 109
  %39 = ptrtoint ptr %TMDS_COLOR_FORMAT51 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %TMDS_COLOR_FORMAT51, align 1
  %se_mask52 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 3
  %41 = ptrtoint ptr %se_mask52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %se_mask52, align 4
  %TMDS_COLOR_FORMAT53 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %42, i32 0, i32 111
  %43 = ptrtoint ptr %TMDS_COLOR_FORMAT53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %TMDS_COLOR_FORMAT53, align 4
  %call54 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %.sink85, i32 noundef %36, i32 noundef 1, i8 noundef zeroext %40, i32 noundef %44, i32 noundef 0) #5
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else.if.end55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_reg_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce110_update_generic_info_packet(ptr nocapture noundef readonly %enc110, i32 noundef %packet_index, ptr nocapture noundef readonly %info_packet) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %se_shift = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 2
  %6 = ptrtoint ptr %se_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_shift, align 4
  %AFMT_AUDIO_CLOCK_EN = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %7, i32 0, i32 107
  %8 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %AFMT_AUDIO_CLOCK_EN, align 1
  %se_mask = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 3
  %10 = ptrtoint ptr %se_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_mask, align 4
  %AFMT_AUDIO_CLOCK_EN3 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %11, i32 0, i32 107
  %12 = ptrtoint ptr %AFMT_AUDIO_CLOCK_EN3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %AFMT_AUDIO_CLOCK_EN3, align 4
  %call = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %5, i32 noundef %3, i32 noundef 1, i8 noundef zeroext %9, i32 noundef %13, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %AFMT_VBI_PACKET_CONTROL1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %AFMT_VBI_PACKET_CONTROL1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %AFMT_VBI_PACKET_CONTROL1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %if.end.if.end64_crit_edge, label %if.end49

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.end49:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx51 = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 1
  %18 = ptrtoint ptr %ctx51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx51, align 4
  %AFMT_VBI_PACKET_CONTROL = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %15, i32 0, i32 15
  %20 = ptrtoint ptr %AFMT_VBI_PACKET_CONTROL to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %AFMT_VBI_PACKET_CONTROL, align 4
  %se_shift53 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 2
  %22 = ptrtoint ptr %se_shift53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %se_shift53, align 4
  %AFMT_GENERIC_CONFLICT = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %AFMT_GENERIC_CONFLICT to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %AFMT_GENERIC_CONFLICT, align 1
  %conv = zext i8 %25 to i32
  %se_mask54 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 3
  %26 = ptrtoint ptr %se_mask54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %se_mask54, align 4
  %AFMT_GENERIC_CONFLICT55 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %AFMT_GENERIC_CONFLICT55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %AFMT_GENERIC_CONFLICT55, align 4
  tail call void @generic_reg_wait(ptr noundef %19, i32 noundef %21, i32 noundef %conv, i32 noundef %29, i32 noundef 0, i32 noundef 10, i32 noundef 50, ptr noundef nonnull @__func__.dce110_update_generic_info_packet, i32 noundef 91) #5
  %30 = ptrtoint ptr %ctx51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx51, align 4
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %AFMT_VBI_PACKET_CONTROL59 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %AFMT_VBI_PACKET_CONTROL59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %AFMT_VBI_PACKET_CONTROL59, align 4
  %36 = ptrtoint ptr %se_shift53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %se_shift53, align 4
  %AFMT_GENERIC_CONFLICT_CLR = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %AFMT_GENERIC_CONFLICT_CLR to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %AFMT_GENERIC_CONFLICT_CLR, align 1
  %40 = ptrtoint ptr %se_mask54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %se_mask54, align 4
  %AFMT_GENERIC_CONFLICT_CLR62 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %AFMT_GENERIC_CONFLICT_CLR62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %AFMT_GENERIC_CONFLICT_CLR62, align 4
  %call63 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %31, i32 noundef %35, i32 noundef 1, i8 noundef zeroext %39, i32 noundef %43, i32 noundef 1) #5
  br label %if.end64

if.end64:                                         ; preds = %if.end49, %if.end.if.end64_crit_edge
  %ctx66 = getelementptr inbounds %struct.stream_encoder, ptr %enc110, i32 0, i32 1
  %44 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx66, align 4
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %AFMT_VBI_PACKET_CONTROL68 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %AFMT_VBI_PACKET_CONTROL68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %AFMT_VBI_PACKET_CONTROL68, align 4
  %call69 = tail call i32 @dm_read_reg_func(ptr noundef %45, i32 noundef %49, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %50 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx66, align 4
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %AFMT_VBI_PACKET_CONTROL73 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %AFMT_VBI_PACKET_CONTROL73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %AFMT_VBI_PACKET_CONTROL73, align 4
  %se_shift74 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 2
  %56 = ptrtoint ptr %se_shift74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %se_shift74, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %se_mask75 = getelementptr inbounds %struct.dce110_stream_encoder, ptr %enc110, i32 0, i32 3
  %60 = ptrtoint ptr %se_mask75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %se_mask75, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %call77 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %51, i32 noundef %55, i32 noundef 1, i8 noundef zeroext %59, i32 noundef %63, i32 noundef %packet_index) #5
  %64 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx66, align 4
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_HDR = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %AFMT_GENERIC_HDR to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %AFMT_GENERIC_HDR, align 4
  %70 = ptrtoint ptr %se_shift74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %se_shift74, align 4
  %AFMT_GENERIC_HB0 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %AFMT_GENERIC_HB0 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %AFMT_GENERIC_HB0, align 1
  %74 = ptrtoint ptr %se_mask75 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %se_mask75, align 4
  %AFMT_GENERIC_HB083 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %AFMT_GENERIC_HB083 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %AFMT_GENERIC_HB083, align 4
  %hb0 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 1
  %78 = ptrtoint ptr %hb0 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %hb0, align 1
  %conv84 = zext i8 %79 to i32
  %AFMT_GENERIC_HB1 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %71, i32 0, i32 4
  %80 = ptrtoint ptr %AFMT_GENERIC_HB1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %AFMT_GENERIC_HB1, align 1
  %conv86 = zext i8 %81 to i32
  %AFMT_GENERIC_HB188 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %75, i32 0, i32 4
  %82 = ptrtoint ptr %AFMT_GENERIC_HB188 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %AFMT_GENERIC_HB188, align 4
  %hb1 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 2
  %84 = ptrtoint ptr %hb1 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %hb1, align 1
  %conv89 = zext i8 %85 to i32
  %AFMT_GENERIC_HB2 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %71, i32 0, i32 5
  %86 = ptrtoint ptr %AFMT_GENERIC_HB2 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %AFMT_GENERIC_HB2, align 1
  %conv91 = zext i8 %87 to i32
  %AFMT_GENERIC_HB293 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %75, i32 0, i32 5
  %88 = ptrtoint ptr %AFMT_GENERIC_HB293 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %AFMT_GENERIC_HB293, align 4
  %hb2 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 3
  %90 = ptrtoint ptr %hb2 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %hb2, align 1
  %conv94 = zext i8 %91 to i32
  %AFMT_GENERIC_HB3 = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %71, i32 0, i32 6
  %92 = ptrtoint ptr %AFMT_GENERIC_HB3 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %AFMT_GENERIC_HB3, align 1
  %conv96 = zext i8 %93 to i32
  %AFMT_GENERIC_HB398 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %75, i32 0, i32 6
  %94 = ptrtoint ptr %AFMT_GENERIC_HB398 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %AFMT_GENERIC_HB398, align 4
  %hb3 = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 4
  %96 = ptrtoint ptr %hb3 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %hb3, align 1
  %conv99 = zext i8 %97 to i32
  %call100 = tail call i32 (ptr, i32, i32, i32, i8, i32, i32, ...) @generic_reg_set_ex(ptr noundef %65, i32 noundef %69, i32 noundef 0, i32 noundef 4, i8 noundef zeroext %73, i32 noundef %77, i32 noundef %conv84, i32 noundef %conv86, i32 noundef %83, i32 noundef %conv89, i32 noundef %conv91, i32 noundef %89, i32 noundef %conv94, i32 noundef %conv96, i32 noundef %95, i32 noundef %conv99) #5
  %sb = getelementptr inbounds %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5
  %98 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctx66, align 4
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_0 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %AFMT_GENERIC_0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %AFMT_GENERIC_0, align 4
  %incdec.ptr = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 4
  %104 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sb, align 4
  tail call void @dm_write_reg_func(ptr noundef %99, i32 noundef %103, i32 noundef %105, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %106 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ctx66, align 4
  %108 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_1 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %AFMT_GENERIC_1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %AFMT_GENERIC_1, align 4
  %incdec.ptr107 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 8
  %112 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %incdec.ptr, align 4
  tail call void @dm_write_reg_func(ptr noundef %107, i32 noundef %111, i32 noundef %113, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %114 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctx66, align 4
  %116 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_2 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %117, i32 0, i32 7
  %118 = ptrtoint ptr %AFMT_GENERIC_2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %AFMT_GENERIC_2, align 4
  %incdec.ptr111 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 12
  %120 = ptrtoint ptr %incdec.ptr107 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %incdec.ptr107, align 4
  tail call void @dm_write_reg_func(ptr noundef %115, i32 noundef %119, i32 noundef %121, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %122 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ctx66, align 4
  %124 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_3 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %125, i32 0, i32 8
  %126 = ptrtoint ptr %AFMT_GENERIC_3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %AFMT_GENERIC_3, align 4
  %incdec.ptr115 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 16
  %128 = ptrtoint ptr %incdec.ptr111 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %incdec.ptr111, align 4
  tail call void @dm_write_reg_func(ptr noundef %123, i32 noundef %127, i32 noundef %129, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %130 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ctx66, align 4
  %132 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_4 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %133, i32 0, i32 9
  %134 = ptrtoint ptr %AFMT_GENERIC_4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %AFMT_GENERIC_4, align 4
  %incdec.ptr119 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 20
  %136 = ptrtoint ptr %incdec.ptr115 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %incdec.ptr115, align 4
  tail call void @dm_write_reg_func(ptr noundef %131, i32 noundef %135, i32 noundef %137, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %138 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx66, align 4
  %140 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_5 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %141, i32 0, i32 10
  %142 = ptrtoint ptr %AFMT_GENERIC_5 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %AFMT_GENERIC_5, align 4
  %incdec.ptr123 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 24
  %144 = ptrtoint ptr %incdec.ptr119 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %incdec.ptr119, align 4
  tail call void @dm_write_reg_func(ptr noundef %139, i32 noundef %143, i32 noundef %145, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %146 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ctx66, align 4
  %148 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_6 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %149, i32 0, i32 11
  %150 = ptrtoint ptr %AFMT_GENERIC_6 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %AFMT_GENERIC_6, align 4
  %incdec.ptr127 = getelementptr %struct.dc_info_packet, ptr %info_packet, i32 0, i32 5, i32 28
  %152 = ptrtoint ptr %incdec.ptr123 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %incdec.ptr123, align 4
  tail call void @dm_write_reg_func(ptr noundef %147, i32 noundef %151, i32 noundef %153, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %154 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ctx66, align 4
  %156 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs, align 4
  %AFMT_GENERIC_7 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %157, i32 0, i32 12
  %158 = ptrtoint ptr %AFMT_GENERIC_7 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %AFMT_GENERIC_7, align 4
  %160 = ptrtoint ptr %incdec.ptr127 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %incdec.ptr127, align 4
  tail call void @dm_write_reg_func(ptr noundef %155, i32 noundef %159, i32 noundef %161, ptr noundef nonnull @__func__.dce110_update_generic_info_packet) #5
  %162 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs, align 4
  %AFMT_VBI_PACKET_CONTROL1132 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %163, i32 0, i32 16
  %164 = ptrtoint ptr %AFMT_VBI_PACKET_CONTROL1132 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %AFMT_VBI_PACKET_CONTROL1132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool133.not = icmp eq i32 %165, 0
  br i1 %tobool133.not, label %if.then134, label %if.end64.if.end151_crit_edge

if.end64.if.end151_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then134:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %166 = ptrtoint ptr %ctx66 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ctx66, align 4
  %AFMT_VBI_PACKET_CONTROL138 = getelementptr inbounds %struct.dce110_stream_enc_registers, ptr %163, i32 0, i32 15
  %168 = ptrtoint ptr %AFMT_VBI_PACKET_CONTROL138 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %AFMT_VBI_PACKET_CONTROL138, align 4
  %170 = ptrtoint ptr %se_shift74 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %se_shift74, align 4
  %AFMT_GENERIC0_UPDATE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %AFMT_GENERIC0_UPDATE to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %AFMT_GENERIC0_UPDATE, align 1
  %174 = ptrtoint ptr %se_mask75 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %se_mask75, align 4
  %AFMT_GENERIC0_UPDATE141 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %AFMT_GENERIC0_UPDATE141 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %AFMT_GENERIC0_UPDATE141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %packet_index)
  %cmp142 = icmp eq i32 %packet_index, 0
  %conv143 = zext i1 %cmp142 to i32
  %AFMT_GENERIC2_UPDATE = getelementptr inbounds %struct.dce_stream_encoder_shift, ptr %171, i32 0, i32 2
  %178 = ptrtoint ptr %AFMT_GENERIC2_UPDATE to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %AFMT_GENERIC2_UPDATE, align 1
  %conv145 = zext i8 %179 to i32
  %AFMT_GENERIC2_UPDATE147 = getelementptr inbounds %struct.dce_stream_encoder_mask, ptr %175, i32 0, i32 2
  %180 = ptrtoint ptr %AFMT_GENERIC2_UPDATE147 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %AFMT_GENERIC2_UPDATE147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %packet_index)
  %cmp148 = icmp eq i32 %packet_index, 2
  %conv149 = zext i1 %cmp148 to i32
  %call150 = tail call i32 (ptr, i32, i32, i8, i32, i32, ...) @generic_reg_update_ex(ptr noundef %167, i32 noundef %169, i32 noundef 2, i8 noundef zeroext %173, i32 noundef %177, i32 noundef %conv143, i32 noundef %conv145, i32 noundef %181, i32 noundef %conv149) #5
  br label %if.end151

if.end151:                                        ; preds = %if.then134, %if.end64.if.end151_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 1261, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dce110_se_disable_dp_audio, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 1450, i32 10}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 1312, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dce110_se_setup_hdmi_audio.__UNIQUE_ID_ddebug302, !6, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!10 = !{ptr @audio_clock_info_table_48bpc, !11, !"audio_clock_info_table_48bpc", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 1117, i32 38}
!12 = !{ptr @audio_clock_info_table_36bpc, !13, !"audio_clock_info_table_36bpc", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 1100, i32 38}
!14 = !{ptr @audio_clock_info_table, !15, !"audio_clock_info_table", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 1081, i32 38}
!16 = !{ptr @dce110_str_enc_funcs, !17, !"dce110_str_enc_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 1535, i32 42}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 686, i32 2}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 687, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 710, i32 2}
!24 = !{ptr @__func__.dce110_stream_encoder_set_throttled_vcp_size, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 736, i32 2}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 487, i32 2}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"dc_fixpt_one", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 70, i32 32}
!31 = distinct !{null, !32, !"dc_fixpt_epsilon", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 68, i32 32}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 212, i32 2}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 274, i32 2}
!37 = !{ptr @__func__.dce110_stream_encoder_update_hdmi_info_packets, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 757, i32 4}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 265, i32 3}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dce110_update_hdmi_info_packet._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @dce110_update_hdmi_info_packet._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 81, i32 4}
!46 = !{ptr @__func__.dce110_update_generic_info_packet, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 90, i32 3}
!48 = !{ptr @__func__.dce110_stream_encoder_update_dp_info_packets, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 889, i32 10}
!50 = !{ptr @__func__.dce110_stream_encoder_stop_dp_info_packets, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 915, i32 10}
!52 = !{ptr @__func__.dce110_stream_encoder_dp_blank, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_stream_encoder.c", i32 956, i32 2}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2148801426, i64 2148801431, i64 2148801444, i64 2148801488, i64 2148801522, i64 2148801543}
!65 = !{!66, !68}
!66 = distinct !{!66, !67, !"dc_fixpt_sub: %agg.result"}
!67 = distinct !{!67, !"dc_fixpt_sub"}
!68 = distinct !{!68, !69, !"dc_fixpt_sub_int: %agg.result"}
!69 = distinct !{!69, !"dc_fixpt_sub_int"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"dc_fixpt_shl: %agg.result"}
!72 = distinct !{!72, !"dc_fixpt_shl"}
!73 = !{i8 0, i8 2}
!74 = !{i64 2148027099, i64 2148027379, i64 2148027713, i64 2148028047}
