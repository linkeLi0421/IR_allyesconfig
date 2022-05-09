; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_ctrl.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dp_ctrl_private = type { %struct.dp_ctrl, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.completion }
%struct.dp_ctrl = type { i8, %struct.atomic_t, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dp_parser = type { ptr, [4 x %struct.dss_module_power], %struct.dp_pinctrl, %struct.dp_io, %struct.dp_display_data, ptr, i32, ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dp_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dss_io_region = type { i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_display_data = type { ptr, ptr, i8, ptr, ptr }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.dp_panel = type { [16 x i8], [16 x i8], i32, i32, %struct.dp_link_info, %struct.drm_dp_desc, ptr, ptr, %struct.dp_display_mode, i8, i32, i32, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.dp_display_mode = type { %struct.drm_display_mode, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
%struct.dp_tu_calc_input = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_vc_tu_mapping_table = type { i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8 }
%struct.tu_algo_data = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@dp_ctrl_push_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014[drm-dp] %s: PUSH_IDLE pattern timedout\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dp_ctrl_push_idle\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/msm/dp/dp_ctrl.c\00", [63 x i8] zeroinitializer }, align 32
@dp_ctrl_push_idle._entry_ptr = internal global ptr @dp_ctrl_push_idle._entry, section ".printk_index", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mainlink off done\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid input data\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flip=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Host deinitialized successfully\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PHY_TEST_PATTERN request\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"process phy_test_req failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LM failed: TEST_LINK_TRAINING\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"using phy test link parameters\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rate=%d, num_lanes=%d, pixel_rate=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to reinitialize mainlink. rc=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to start link clocks. ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to start pixel clocks. ret=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mainlink %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"READY\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NOT READY\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable pclk. ret=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to disable link clocks. ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DP off link/stream done\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DP off phy done\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to disable pixel clocks. ret=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP off done\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dp_video_ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idle_patterns_sent\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mem allocation failure\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctrl_link\00", [22 x i8] zeroinitializer }, align 32
@dp_ctrl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 2002, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid DP OPP table in device tree\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dp_ctrl_get\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dp_ctrl_get._entry_ptr = internal global ptr @dp_ctrl_get._entry, section ".printk_index", align 4
@dp_ctrl_get._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.2, i32 2010, ptr @.str.31, ptr @.str.32 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add DP OPP table\0A\00", [36 x i8] zeroinitializer }, align 32
@dp_ctrl_get._entry_ptr.35 = internal global ptr @dp_ctrl_get._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no test pattern selected by sink\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to disable DP controller\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable DP link controller\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to start link clocks. ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"link rate=%d pixel_clk=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"setting rate=%lu on clk=%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s clock doesn't exit to set rate %lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to disable clocks. ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable mainlink clks. ret=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"link training #1 failed. ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"link training #1 successful\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"link training #2 failed. ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"link training #2 successful\0A\00", [35 x i8] zeroinitializer }, align 32
@dp_ctrl_config_ctrl.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dp_ctrl_config_ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BIT_DEPTH not set. Configure default\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[drm-dp] %s: BIT_DEPTH not set. Configure default\0A\00", [45 x i8] zeroinitializer }, align 32
@dp_ctrl_link_train_1._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dp_ctrl_link_train_1 = private unnamed_addr constant [21 x i8] c"dp_ctrl_link_train_1\00", align 1
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* max v_level reached\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"clock recovery not done, adjusting vx px\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max tries reached\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sink: pattern=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"voltage level: %d emphasis level: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"max. voltage swing level reached %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"max. pre-emphasis level reached %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sink: p|v=0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DP link status read failed, err: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"new rate=0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stream_pixel\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unabled to start pixel clocks. ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"request: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set v/p levels\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: test->0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@dp_ctrl_setup_tr_unit.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.49, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dp_ctrl_setup_tr_unit\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dp_tu=0x%x, valid_boundary=0x%x, valid_boundary2=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[drm-dp] %s: dp_tu=0x%x, valid_boundary=0x%x, valid_boundary2=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Info: increase HBLANK_MARGIN to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Info: n_sym = %d, num_of_tus = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TU: valid_boundary_link: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TU: delay_start_link: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TU: boundary_moderation_en: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TU: valid_lower_boundary_link: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TU: upper_boundary_count: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TU: lower_boundary_count: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TU: tu_size_minus1: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dp_panel_update_tu_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016[drm-dp] %s: incorrect no of bytes per slice=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dp_panel_update_tu_timings\00", [37 x i8] zeroinitializer }, align 32
@dp_panel_update_tu_timings._entry_ptr = internal global ptr @dp_panel_update_tu_timings._entry, section ".printk_index", align 4
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wait4video timedout\0A\00", [43 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 270000, i64 540000, i64 810000]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 270000, i64 540000, i64 810000]
@__sancov_gen_cov_switch_values.89 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 30]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 114, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 116, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1375, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1388, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1421, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1608, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1616, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1618, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1625, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1688, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1698, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1712, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1817, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1830, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1860, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1885, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1892, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1902, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1920, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1943, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1953, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1970, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1975, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1996, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 2000, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 2002, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 2010, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1526, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1537, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1545, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1343, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1345, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1315, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1320, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1456, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1465, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1261, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1266, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1270, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1275, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 135, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1112, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1121, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1129, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1050, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1007, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1016, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1022, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1034, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1068, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1154, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1355, i32 45 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1360, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1556, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1561, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 1597, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 979, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 689, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 724, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 918, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 920, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 922, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 924, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 926, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 928, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 930, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 371, i32 3 }
@___asan_gen_.356 = private constant [36 x i8] c"../drivers/gpu/drm/msm/dp/dp_ctrl.c\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.356, i32 992, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 87, i32 2 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @dp_ctrl_get._entry, ptr @dp_ctrl_get._entry.33, ptr @dp_ctrl_get._entry_ptr, ptr @dp_ctrl_get._entry_ptr.35, ptr @dp_ctrl_push_idle._entry, ptr @dp_ctrl_push_idle._entry_ptr, ptr @dp_panel_update_tu_timings._entry, ptr @dp_panel_update_tu_timings._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @dp_ctrl_link_train_1._rs, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @init_completion.__key, ptr @.str.86], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_ctrl_push_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_ctrl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_ctrl_get._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_ctrl_link_train_1._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_panel_update_tu_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_ctrl_push_idle(ptr noundef %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_comp = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %idle_comp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %idle_comp, align 4
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %1 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_state_ctrl(ptr noundef %2, i32 noundef 256) #7
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %idle_comp, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_state_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_host_init(ptr noundef %dp_ctrl, i1 noundef zeroext %flip, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_ctrl, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %flip to i8
  %parser = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %phy2 = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2, align 4
  %4 = ptrtoint ptr %dp_ctrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %dp_ctrl, align 4
  br i1 %reset, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %5 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_reset(ptr noundef %6) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %conv = zext i1 %flip to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %conv) #7
  %catalog10 = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %7 = ptrtoint ptr %catalog10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %catalog10, align 4
  tail call void @dp_catalog_ctrl_phy_reset(ptr noundef %8) #7
  %call = tail call i32 @phy_init(ptr noundef %3) #7
  %9 = ptrtoint ptr %catalog10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %catalog10, align 4
  tail call void @dp_catalog_ctrl_enable_irq(ptr noundef %10, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_phy_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_enable_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_ctrl_host_deinit(ptr noundef readonly %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_ctrl, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parser = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %phy1 = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %4 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_enable_irq(ptr noundef %5, i1 noundef zeroext false) #7
  %call = tail call i32 @phy_exit(ptr noundef %3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_ctrl_handle_sink_request(ptr noundef %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_ctrl, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.8) #7
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %phy_params.i = getelementptr inbounds %struct.dp_link, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %phy_params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %dp_ctrl_process_phy_test_request.exit.thread36, label %if.end.i

dp_ctrl_process_phy_test_request.exit.thread36:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.36) #7
  br label %if.end7

if.end.i:                                         ; preds = %if.then3
  %call.i = tail call i32 @dp_ctrl_off_link_stream(ptr noundef nonnull %dp_ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.if.then5.sink.split_crit_edge

if.end.i.if.then5.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.sink.split

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @dp_ctrl_on_link(ptr noundef nonnull %dp_ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %dp_ctrl_process_phy_test_request.exit, label %if.end3.i.if.then5.sink.split_crit_edge

if.end3.i.if.then5.sink.split_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.sink.split

dp_ctrl_process_phy_test_request.exit:            ; preds = %if.end3.i
  %call9.i = tail call i32 @dp_ctrl_on_stream(ptr noundef nonnull %dp_ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool4.not = icmp eq i32 %call9.i, 0
  br i1 %tobool4.not, label %dp_ctrl_process_phy_test_request.exit.if.end7_crit_edge, label %dp_ctrl_process_phy_test_request.exit.cleanup.sink.split_crit_edge

dp_ctrl_process_phy_test_request.exit.cleanup.sink.split_crit_edge: ; preds = %dp_ctrl_process_phy_test_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

dp_ctrl_process_phy_test_request.exit.if.end7_crit_edge: ; preds = %dp_ctrl_process_phy_test_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5.sink.split:                              ; preds = %if.end3.i.if.then5.sink.split_crit_edge, %if.end.i.if.then5.sink.split_crit_edge
  %.str.38.sink = phi ptr [ @.str.37, %if.end.i.if.then5.sink.split_crit_edge ], [ @.str.38, %if.end3.i.if.then5.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.38.sink) #7
  br label %cleanup.sink.split

if.end7:                                          ; preds = %dp_ctrl_process_phy_test_request.exit.if.end7_crit_edge, %dp_ctrl_process_phy_test_request.exit.thread36, %if.end.if.end7_crit_edge
  %and8 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %call11 = tail call fastcc i32 @dp_ctrl_link_maintenance(ptr noundef nonnull %dp_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup.sink.split_crit_edge

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %and16 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 4
  %call20 = tail call zeroext i1 @dp_link_send_test_response(ptr noundef %9) #7
  %call21 = tail call fastcc i32 @dp_ctrl_link_maintenance(ptr noundef nonnull %dp_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then18.cleanup_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then18.cleanup.sink.split_crit_edge, %if.then10.cleanup.sink.split_crit_edge, %if.then5.sink.split, %dp_ctrl_process_phy_test_request.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.7, %entry.cleanup.sink.split_crit_edge ], [ @.str.9, %if.then5.sink.split ], [ @.str.9, %dp_ctrl_process_phy_test_request.exit.cleanup.sink.split_crit_edge ], [ @.str.10, %if.then10.cleanup.sink.split_crit_edge ], [ @.str.10, %if.then18.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.10.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then18.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_ctrl_link_maintenance(ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i.i = alloca i8, align 1
  %training_step = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %training_step) #7
  %0 = ptrtoint ptr %training_step to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %training_step, align 4
  %idle_comp.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 8
  %1 = ptrtoint ptr %idle_comp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %idle_comp.i, align 4
  %catalog.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 7
  %2 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %catalog.i, align 4
  tail call void @dp_catalog_ctrl_state_ctrl(ptr noundef %3, i32 noundef 256) #7
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %idle_comp.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.dp_ctrl_push_idle.exit_crit_edge

entry.dp_ctrl_push_idle.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_push_idle.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %dp_ctrl_push_idle.exit

dp_ctrl_push_idle.exit:                           ; preds = %do.end.i, %entry.dp_ctrl_push_idle.exit_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3) #7
  %link = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %p_level = getelementptr inbounds %struct.dp_link, ptr %5, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %p_level to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %p_level, align 1
  %7 = load ptr, ptr %link, align 4
  %v_level = getelementptr inbounds %struct.dp_link, ptr %7, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %v_level to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %v_level, align 4
  %panel = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 3
  %9 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel, align 4
  %dp_mode = getelementptr inbounds %struct.dp_panel, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dp_mode, align 4
  %pixel_rate = getelementptr inbounds %struct.dp_ctrl, ptr %ctrl, i32 0, i32 2
  %13 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pixel_rate, align 4
  %call = call fastcc i32 @dp_ctrl_setup_main_link(ptr noundef %ctrl, ptr noundef nonnull %training_step)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %dp_ctrl_push_idle.exit.end_crit_edge

dp_ctrl_push_idle.exit.end_crit_edge:             ; preds = %dp_ctrl_push_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end:                                           ; preds = %dp_ctrl_push_idle.exit
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, i32 noundef 0) #7
  %aux.i.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 2
  %14 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aux.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i) #7
  %16 = ptrtoint ptr %value.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %value.addr.i.i.i, align 1
  %call.i.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %15, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i) #7
  %17 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aux.i.i, align 4
  %19 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %panel, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %18, ptr noundef %20) #7
  %21 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %catalog.i, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %22, i32 noundef 128) #7
  %video_comp.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 9
  %call.i14 = call i32 @wait_for_completion_timeout(ptr noundef %video_comp.i, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.then.i, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.85) #7
  br label %end

end:                                              ; preds = %if.then.i, %if.end.end_crit_edge, %dp_ctrl_push_idle.exit.end_crit_edge
  %ret.0 = phi i32 [ %call, %dp_ctrl_push_idle.exit.end_crit_edge ], [ 0, %if.end.end_crit_edge ], [ -110, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %training_step) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_link_send_test_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_on_link(ptr noundef %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i.i = alloca i8, align 1
  %link_status = alloca [6 x i8], align 1
  %training_step = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status) #7
  %0 = call ptr @memset(ptr %link_status, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %training_step) #7
  %tobool.not = icmp eq ptr %dp_ctrl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 3
  %1 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %panel, align 4
  %rate1 = getelementptr inbounds %struct.dp_panel, ptr %2, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate1, align 4
  %power = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 5
  %5 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %power, align 4
  %call = tail call i32 @dp_power_clk_enable(ptr noundef %6, i32 noundef 0, i1 noundef zeroext true) #7
  %link = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 4
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.11) #7
  %11 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %panel, align 4
  %dp_mode = getelementptr inbounds %struct.dp_panel, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.then3.if.end22.sink.split_crit_edge, label %if.then3.if.end22_crit_edge

if.then3.if.end22_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then3.if.end22.sink.split_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rate10 = getelementptr inbounds %struct.dp_link, ptr %8, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %rate10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %4, ptr %rate10, align 4
  %16 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %panel, align 4
  %num_lanes = getelementptr inbounds %struct.dp_panel, ptr %17, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_lanes, align 4
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link, align 4
  %num_lanes15 = getelementptr inbounds %struct.dp_link, ptr %21, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %num_lanes15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %num_lanes15, align 4
  %23 = load ptr, ptr %panel, align 4
  %dp_mode17 = getelementptr inbounds %struct.dp_panel, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %dp_mode17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dp_mode17, align 4
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.else, %if.then3.if.end22.sink.split_crit_edge
  %.sink = phi i32 [ %25, %if.else ], [ 148500, %if.then3.if.end22.sink.split_crit_edge ]
  %pixel_rate = getelementptr inbounds %struct.dp_ctrl, ptr %dp_ctrl, i32 0, i32 2
  %26 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %pixel_rate, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.then3.if.end22_crit_edge
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link, align 4
  %rate25 = getelementptr inbounds %struct.dp_link, ptr %28, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %rate25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate25, align 4
  %num_lanes28 = getelementptr inbounds %struct.dp_link, ptr %28, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %num_lanes28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_lanes28, align 4
  %pixel_rate30 = getelementptr inbounds %struct.dp_ctrl, ptr %dp_ctrl, i32 0, i32 2
  %33 = ptrtoint ptr %pixel_rate30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixel_rate30, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %30, i32 noundef %32, i32 noundef %34) #7
  %35 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link, align 4
  %p_level = getelementptr inbounds %struct.dp_link, ptr %36, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %p_level to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %p_level, align 1
  %38 = load ptr, ptr %link, align 4
  %v_level = getelementptr inbounds %struct.dp_link, ptr %38, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %v_level to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %v_level, align 4
  %call34 = tail call fastcc i32 @dp_ctrl_enable_mainlink_clocks(ptr noundef nonnull %dp_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %while.cond.preheader, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end22
  %parser.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 6
  %catalog.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %aux.i168 = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end94.while.body_crit_edge, %while.cond.preheader
  %dec228 = phi i32 [ 4, %while.cond.preheader ], [ %dec, %if.end94.while.body_crit_edge ]
  %40 = ptrtoint ptr %parser.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parser.i, align 4
  %phy1.i = getelementptr inbounds %struct.dp_parser, ptr %41, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy1.i, align 4
  %phy_opts.i = getelementptr inbounds %struct.dp_parser, ptr %41, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %catalog.i, align 4
  call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %45, i1 noundef zeroext false) #7
  %46 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link, align 4
  %num_lanes.i = getelementptr inbounds %struct.dp_link, ptr %47, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_lanes.i, align 4
  %lanes.i = getelementptr inbounds %struct.dp_parser, ptr %41, i32 0, i32 3, i32 2, i32 0, i32 1
  %50 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %lanes.i, align 4
  %call.i = call i32 @phy_configure(ptr noundef %43, ptr noundef %phy_opts.i) #7
  %51 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %power, align 4
  %call3.i = call i32 @dp_power_clk_enable(ptr noundef %52, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef %call3.i) #7
  br label %if.then41

if.end.i:                                         ; preds = %while.body
  %call4.i = call i32 @phy_power_off(ptr noundef %43) #7
  call void @msleep(i32 noundef 20) #7
  %call5.i = call fastcc i32 @dp_ctrl_enable_mainlink_clocks(ptr noundef nonnull %dp_ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end42, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %call5.i) #7
  br label %if.then41

if.then41:                                        ; preds = %if.then7.i, %if.then.i
  %retval.0.i.ph = phi i32 [ %call5.i, %if.then7.i ], [ %call3.i, %if.then.i ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph) #7
  br label %while.end

if.end42:                                         ; preds = %if.end.i
  %53 = ptrtoint ptr %training_step to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %training_step, align 4
  %call43 = call fastcc i32 @dp_ctrl_setup_main_link(ptr noundef nonnull %dp_ctrl, ptr noundef nonnull %training_step)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp eq i32 %call43, 0
  br i1 %cmp, label %if.end42.cleanup_crit_edge, label %if.else45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else45:                                        ; preds = %if.end42
  %54 = ptrtoint ptr %training_step to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %training_step, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %55, label %if.else45.if.end94_crit_edge [
    i32 1, label %if.then47
    i32 2, label %if.then71
  ]

if.else45.if.end94_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then47:                                        ; preds = %if.else45
  %57 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %catalog.i, align 4
  %call48 = call i32 @dp_catalog_link_is_connected(ptr noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.while.end_crit_edge, label %if.end51

if.then47.while.end_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end51:                                         ; preds = %if.then47
  %59 = ptrtoint ptr %aux.i168 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %aux.i168, align 4
  %call.i153 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %60, ptr noundef nonnull %link_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i153)
  %cmp.not.i = icmp eq i32 %call.i153, 6
  br i1 %cmp.not.i, label %if.end51.dp_ctrl_read_link_status.exit_crit_edge, label %if.then.i154

if.end51.dp_ctrl_read_link_status.exit_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_read_link_status.exit

if.then.i154:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %call.i153) #7
  br label %dp_ctrl_read_link_status.exit

dp_ctrl_read_link_status.exit:                    ; preds = %if.then.i154, %if.end51.dp_ctrl_read_link_status.exit_crit_edge
  %61 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %link, align 4
  %rate.i = getelementptr inbounds %struct.dp_link, ptr %62, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rate.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %64, label %if.then55 [
    i32 810000, label %dp_ctrl_read_link_status.exit.dp_ctrl_link_rate_down_shift.exit_crit_edge
    i32 540000, label %sw.bb4.i
    i32 270000, label %sw.bb8.i
  ]

dp_ctrl_read_link_status.exit.dp_ctrl_link_rate_down_shift.exit_crit_edge: ; preds = %dp_ctrl_read_link_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_link_rate_down_shift.exit

sw.bb4.i:                                         ; preds = %dp_ctrl_read_link_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_link_rate_down_shift.exit

sw.bb8.i:                                         ; preds = %dp_ctrl_read_link_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_link_rate_down_shift.exit

dp_ctrl_link_rate_down_shift.exit:                ; preds = %sw.bb8.i, %sw.bb4.i, %dp_ctrl_read_link_status.exit.dp_ctrl_link_rate_down_shift.exit_crit_edge
  %.sink.i = phi i32 [ 162000, %sw.bb8.i ], [ 270000, %sw.bb4.i ], [ 540000, %dp_ctrl_read_link_status.exit.dp_ctrl_link_rate_down_shift.exit_crit_edge ]
  %66 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i, ptr %rate.i, align 4
  %67 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %link, align 4
  %rate15.i = getelementptr inbounds %struct.dp_link, ptr %68, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %rate15.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rate15.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.63, i32 noundef %70) #7
  br label %if.end94

if.then55:                                        ; preds = %dp_ctrl_read_link_status.exit
  %71 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %link, align 4
  %num_lanes59 = getelementptr inbounds %struct.dp_link, ptr %72, i32 0, i32 7, i32 2
  %73 = ptrtoint ptr %num_lanes59 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_lanes59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp.i = icmp slt i32 %74, 2
  br i1 %cmp.i, label %if.then55.while.end_crit_edge, label %dp_ctrl_clock_recovery_any_ok.exit

if.then55.while.end_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

dp_ctrl_clock_recovery_any_ok.exit:               ; preds = %if.then55
  %shr2.i = lshr i32 %74, 1
  %call.i159 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %link_status, i32 noundef %shr2.i) #7
  br i1 %call.i159, label %if.then61, label %dp_ctrl_clock_recovery_any_ok.exit.while.end_crit_edge

dp_ctrl_clock_recovery_any_ok.exit.while.end_crit_edge: ; preds = %dp_ctrl_clock_recovery_any_ok.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then61:                                        ; preds = %dp_ctrl_clock_recovery_any_ok.exit
  %75 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %link, align 4
  %num_lanes.i163 = getelementptr inbounds %struct.dp_link, ptr %76, i32 0, i32 7, i32 2
  %77 = ptrtoint ptr %num_lanes.i163 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_lanes.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i164 = icmp eq i32 %78, 1
  br i1 %cmp.i164, label %if.then61.while.end_crit_edge, label %dp_ctrl_link_lane_down_shift.exit

if.then61.while.end_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

dp_ctrl_link_lane_down_shift.exit:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %div15.i = lshr i32 %78, 1
  %79 = ptrtoint ptr %num_lanes.i163 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %div15.i, ptr %num_lanes.i163, align 4
  %80 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %panel, align 4
  %rate.i165 = getelementptr inbounds %struct.dp_panel, ptr %81, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %rate.i165 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rate.i165, align 4
  %84 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %link, align 4
  %rate6.i = getelementptr inbounds %struct.dp_link, ptr %85, i32 0, i32 7, i32 1
  %86 = ptrtoint ptr %rate6.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %rate6.i, align 4
  %87 = load ptr, ptr %link, align 4
  %p_level.i = getelementptr inbounds %struct.dp_link, ptr %87, i32 0, i32 6, i32 2
  %88 = ptrtoint ptr %p_level.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %p_level.i, align 1
  %89 = load ptr, ptr %link, align 4
  %v_level.i = getelementptr inbounds %struct.dp_link, ptr %89, i32 0, i32 6, i32 1
  %90 = ptrtoint ptr %v_level.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %v_level.i, align 4
  br label %if.end94

if.then71:                                        ; preds = %if.else45
  %91 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %catalog.i, align 4
  %call73 = call i32 @dp_catalog_link_is_connected(ptr noundef %92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then71.while.end_crit_edge, label %if.end76

if.then71.while.end_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end76:                                         ; preds = %if.then71
  %93 = ptrtoint ptr %aux.i168 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %aux.i168, align 4
  %call.i169 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %94, ptr noundef nonnull %link_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i169)
  %cmp.not.i170 = icmp eq i32 %call.i169, 6
  br i1 %cmp.not.i170, label %if.end76.dp_ctrl_read_link_status.exit174_crit_edge, label %if.then.i171

if.end76.dp_ctrl_read_link_status.exit174_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_read_link_status.exit174

if.then.i171:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %call.i169) #7
  br label %dp_ctrl_read_link_status.exit174

dp_ctrl_read_link_status.exit174:                 ; preds = %if.then.i171, %if.end76.dp_ctrl_read_link_status.exit174_crit_edge
  %95 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %link, align 4
  %num_lanes82 = getelementptr inbounds %struct.dp_link, ptr %96, i32 0, i32 7, i32 2
  %97 = ptrtoint ptr %num_lanes82 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_lanes82, align 4
  %call83 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %link_status, i32 noundef %98) #7
  %99 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %link, align 4
  br i1 %call83, label %if.else86, label %if.then84

if.then84:                                        ; preds = %dp_ctrl_read_link_status.exit174
  %rate.i176 = getelementptr inbounds %struct.dp_link, ptr %100, i32 0, i32 7, i32 1
  %101 = ptrtoint ptr %rate.i176 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rate.i176, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %102, label %if.then84.while.end_crit_edge [
    i32 810000, label %if.then84.if.then.i181_crit_edge
    i32 540000, label %sw.bb4.i177
    i32 270000, label %sw.bb8.i178
  ]

if.then84.if.then.i181_crit_edge:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i181

if.then84.while.end_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

sw.bb4.i177:                                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i181

sw.bb8.i178:                                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i181

if.then.i181:                                     ; preds = %sw.bb8.i178, %sw.bb4.i177, %if.then84.if.then.i181_crit_edge
  %.sink.i179 = phi i32 [ 162000, %sw.bb8.i178 ], [ 270000, %sw.bb4.i177 ], [ 540000, %if.then84.if.then.i181_crit_edge ]
  %104 = ptrtoint ptr %rate.i176 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.sink.i179, ptr %rate.i176, align 4
  %105 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %link, align 4
  %rate15.i180 = getelementptr inbounds %struct.dp_link, ptr %106, i32 0, i32 7, i32 1
  %107 = ptrtoint ptr %rate15.i180 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rate15.i180, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.63, i32 noundef %108) #7
  br label %if.end94

if.else86:                                        ; preds = %dp_ctrl_read_link_status.exit174
  %num_lanes.i186 = getelementptr inbounds %struct.dp_link, ptr %100, i32 0, i32 7, i32 2
  %109 = ptrtoint ptr %num_lanes.i186 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_lanes.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp.i187 = icmp eq i32 %110, 1
  br i1 %cmp.i187, label %if.else86.while.end_crit_edge, label %if.end.i194

if.else86.while.end_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i194:                                      ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  %div15.i188 = lshr i32 %110, 1
  %111 = ptrtoint ptr %num_lanes.i186 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %div15.i188, ptr %num_lanes.i186, align 4
  %112 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %panel, align 4
  %rate.i190 = getelementptr inbounds %struct.dp_panel, ptr %113, i32 0, i32 4, i32 1
  %114 = ptrtoint ptr %rate.i190 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rate.i190, align 4
  %116 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %link, align 4
  %rate6.i191 = getelementptr inbounds %struct.dp_link, ptr %117, i32 0, i32 7, i32 1
  %118 = ptrtoint ptr %rate6.i191 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %115, ptr %rate6.i191, align 4
  %119 = load ptr, ptr %link, align 4
  %p_level.i192 = getelementptr inbounds %struct.dp_link, ptr %119, i32 0, i32 6, i32 2
  %120 = ptrtoint ptr %p_level.i192 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %p_level.i192, align 1
  %121 = load ptr, ptr %link, align 4
  %v_level.i193 = getelementptr inbounds %struct.dp_link, ptr %121, i32 0, i32 6, i32 1
  %122 = ptrtoint ptr %v_level.i193 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %v_level.i193, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end.i194, %if.then.i181, %dp_ctrl_link_lane_down_shift.exit, %dp_ctrl_link_rate_down_shift.exit, %if.else45.if.end94_crit_edge
  %rc.2 = phi i32 [ 0, %dp_ctrl_link_lane_down_shift.exit ], [ 0, %dp_ctrl_link_rate_down_shift.exit ], [ %call43, %if.else45.if.end94_crit_edge ], [ 0, %if.then.i181 ], [ 0, %if.end.i194 ]
  %dec = add nsw i32 %dec228, -1
  %tobool38.not = icmp eq i32 %dec, 0
  br i1 %tobool38.not, label %if.end94.while.end_crit_edge, label %if.end94.while.body_crit_edge

if.end94.while.body_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end94.while.end_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end94.while.end_crit_edge, %if.else86.while.end_crit_edge, %if.then84.while.end_crit_edge, %if.then71.while.end_crit_edge, %if.then61.while.end_crit_edge, %dp_ctrl_clock_recovery_any_ok.exit.while.end_crit_edge, %if.then55.while.end_crit_edge, %if.then47.while.end_crit_edge, %if.then41
  %rc.3 = phi i32 [ %retval.0.i.ph, %if.then41 ], [ -22, %if.then84.while.end_crit_edge ], [ -1, %if.else86.while.end_crit_edge ], [ -1, %if.then61.while.end_crit_edge ], [ -22, %if.then55.while.end_crit_edge ], [ %rc.2, %if.end94.while.end_crit_edge ], [ %call43, %if.then71.while.end_crit_edge ], [ %call43, %if.then47.while.end_crit_edge ], [ -22, %dp_ctrl_clock_recovery_any_ok.exit.while.end_crit_edge ]
  %123 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %link, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %and97 = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end100, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end100:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %cmp101 = icmp eq i32 %rc.3, 0
  br i1 %cmp101, label %if.end100.cleanup_crit_edge, label %if.else103

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else103:                                       ; preds = %if.end100
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, i32 noundef 0) #7
  %127 = ptrtoint ptr %aux.i168 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %aux.i168, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i) #7
  %129 = ptrtoint ptr %value.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %value.addr.i.i.i, align 1
  %call.i.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %128, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i) #7
  %130 = ptrtoint ptr %aux.i168 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %aux.i168, align 4
  %132 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %panel, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %131, ptr noundef %133) #7
  %134 = ptrtoint ptr %parser.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %parser.i, align 4
  %phy1.i199 = getelementptr inbounds %struct.dp_parser, ptr %135, i32 0, i32 3, i32 1
  %136 = ptrtoint ptr %phy1.i199 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %phy1.i199, align 4
  %138 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %catalog.i, align 4
  call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %139, i1 noundef zeroext false) #7
  %140 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %catalog.i, align 4
  call void @dp_catalog_ctrl_reset(ptr noundef %141) #7
  %142 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %power, align 4
  %call.i202 = call i32 @dp_power_clk_enable(ptr noundef %143, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i203 = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i203, label %if.else103.dp_ctrl_deinitialize_mainlink.exit_crit_edge, label %if.then.i204

if.else103.dp_ctrl_deinitialize_mainlink.exit_crit_edge: ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_deinitialize_mainlink.exit

if.then.i204:                                     ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %call.i202) #7
  br label %dp_ctrl_deinitialize_mainlink.exit

dp_ctrl_deinitialize_mainlink.exit:               ; preds = %if.then.i204, %if.else103.dp_ctrl_deinitialize_mainlink.exit_crit_edge
  %call3.i205 = call i32 @phy_power_off(ptr noundef %137) #7
  %call4.i206 = call i32 @phy_exit(ptr noundef %137) #7
  br label %cleanup

cleanup:                                          ; preds = %dp_ctrl_deinitialize_mainlink.exit, %if.end100.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call34, %if.end22.cleanup_crit_edge ], [ %rc.3, %while.end.cleanup_crit_edge ], [ 0, %if.end100.cleanup_crit_edge ], [ -104, %dp_ctrl_deinitialize_mainlink.exit ], [ 0, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %training_step) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_clk_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_ctrl_enable_mainlink_clocks(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parser = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %phy1 = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %phy_opts = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 2
  %panel = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 3
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %link = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %num_lanes = getelementptr inbounds %struct.dp_link, ptr %7, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_lanes, align 4
  %lanes = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %lanes, align 4
  %11 = load ptr, ptr %link, align 4
  %rate = getelementptr inbounds %struct.dp_link, ptr %11, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  %div = udiv i32 %13, 100
  %14 = ptrtoint ptr %phy_opts to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %phy_opts, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %cmp.i = icmp ugt i8 %16, 16
  br i1 %cmp.i, label %drm_dp_max_downspread.exit.thread, label %drm_dp_max_downspread.exit

drm_dp_max_downspread.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ssc30 = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 2, i32 0, i32 10
  %17 = ptrtoint ptr %ssc30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load31 = load i8, ptr %ssc30, align 4
  br label %22

drm_dp_max_downspread.exit:                       ; preds = %entry
  %arrayidx2.i = getelementptr i8, ptr %5, i32 3
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.i, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not = icmp eq i8 %20, 0
  %ssc = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 2, i32 0, i32 10
  %21 = ptrtoint ptr %ssc to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %ssc, align 4
  br i1 %tobool.i.not, label %drm_dp_max_downspread.exit._crit_edge, label %drm_dp_max_downspread.exit._crit_edge42

drm_dp_max_downspread.exit._crit_edge42:          ; preds = %drm_dp_max_downspread.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %22

drm_dp_max_downspread.exit._crit_edge:            ; preds = %drm_dp_max_downspread.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %23

22:                                               ; preds = %drm_dp_max_downspread.exit._crit_edge42, %drm_dp_max_downspread.exit.thread
  %bf.load35 = phi i8 [ %bf.load31, %drm_dp_max_downspread.exit.thread ], [ %bf.load, %drm_dp_max_downspread.exit._crit_edge42 ]
  %ssc33 = phi ptr [ %ssc30, %drm_dp_max_downspread.exit.thread ], [ %ssc, %drm_dp_max_downspread.exit._crit_edge42 ]
  br label %23

23:                                               ; preds = %22, %drm_dp_max_downspread.exit._crit_edge
  %bf.load34 = phi i8 [ %bf.load35, %22 ], [ %bf.load, %drm_dp_max_downspread.exit._crit_edge ]
  %ssc32 = phi ptr [ %ssc33, %22 ], [ %ssc, %drm_dp_max_downspread.exit._crit_edge ]
  %24 = phi i8 [ -128, %22 ], [ 0, %drm_dp_max_downspread.exit._crit_edge ]
  %bf.clear = and i8 %bf.load34, 127
  %bf.set = or i8 %24, %bf.clear
  %25 = ptrtoint ptr %ssc32 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.set, ptr %ssc32, align 4
  %26 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link, align 4
  %rate7 = getelementptr inbounds %struct.dp_link, ptr %27, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %rate7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rate7, align 4
  %mul = mul i32 %29, 1000
  %30 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parser, align 4
  %arrayidx.i = getelementptr %struct.dp_parser, ptr %31, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not18.i = icmp eq i32 %33, 0
  br i1 %tobool.not18.i, label %.if.else.critedge.i_crit_edge, label %land.rhs.preheader.i

.if.else.critedge.i_crit_edge:                    ; preds = %23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.critedge.i

land.rhs.preheader.i:                             ; preds = %23
  %clk_config.i = getelementptr %struct.dp_parser, ptr %31, i32 0, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %clk_config.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_config.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %cfg.020.i = phi ptr [ %incdec.ptr.i, %while.body.i.land.rhs.i_crit_edge ], [ %35, %land.rhs.preheader.i ]
  %num.019.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %33, %land.rhs.preheader.i ]
  %clk_name.i = getelementptr inbounds %struct.dss_clk, ptr %cfg.020.i, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %clk_name.i, ptr noundef nonnull dereferenceable(10) @.str.28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add i32 %num.019.i, -1
  %incdec.ptr.i = getelementptr %struct.dss_clk, ptr %cfg.020.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.else.critedge.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.body.i.if.else.critedge.i_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.critedge.i

if.then.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.41, i32 noundef %mul, ptr noundef nonnull @.str.28) #7
  %rate6.i = getelementptr inbounds %struct.dss_clk, ptr %cfg.020.i, i32 0, i32 3
  %36 = ptrtoint ptr %rate6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %rate6.i, align 4
  br label %dp_ctrl_set_clock_rate.exit

if.else.critedge.i:                               ; preds = %while.body.i.if.else.critedge.i_crit_edge, %.if.else.critedge.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.41, i32 noundef %mul, ptr noundef nonnull @.str.28) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.28, i32 noundef %mul) #7
  br label %dp_ctrl_set_clock_rate.exit

dp_ctrl_set_clock_rate.exit:                      ; preds = %if.else.critedge.i, %if.then.critedge.i
  %call9 = tail call i32 @phy_configure(ptr noundef %3, ptr noundef %phy_opts) #7
  %call10 = tail call i32 @phy_power_on(ptr noundef %3) #7
  %power = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 5
  %37 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %power, align 4
  %call11 = tail call i32 @dp_power_clk_enable(ptr noundef %38, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %dp_ctrl_set_clock_rate.exit.if.end_crit_edge, label %if.then

dp_ctrl_set_clock_rate.exit.if.end_crit_edge:     ; preds = %dp_ctrl_set_clock_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %dp_ctrl_set_clock_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %call11) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %dp_ctrl_set_clock_rate.exit.if.end_crit_edge
  %39 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link, align 4
  %rate14 = getelementptr inbounds %struct.dp_link, ptr %40, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %rate14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rate14, align 4
  %pixel_rate = getelementptr inbounds %struct.dp_ctrl, ptr %ctrl, i32 0, i32 2
  %43 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pixel_rate, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.40, i32 noundef %42, i32 noundef %44) #7
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_ctrl_setup_main_link(ptr nocapture noundef readonly %ctrl, ptr nocapture noundef writeonly %training_step) unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i.i45.i = alloca i8, align 1
  %link_status.i46.i = alloca [6 x i8], align 1
  %value.addr.i.i.i.i = alloca i8, align 1
  %link_status.i.i = alloca [6 x i8], align 1
  %values.i.i = alloca [2 x i8], align 1
  %encoding.i = alloca i8, align 1
  %ssc.i = alloca i8, align 1
  %assr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 7
  %0 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %1, i1 noundef zeroext true) #7
  %link = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 3
  %6 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %encoding.i) #7
  %8 = ptrtoint ptr %encoding.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %encoding.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ssc.i) #7
  %9 = ptrtoint ptr %ssc.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %ssc.i, align 1, !annotation !176
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %assr.i) #7
  %10 = ptrtoint ptr %assr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %assr.i, align 1, !annotation !176
  tail call fastcc void @dp_ctrl_config_ctrl(ptr noundef %ctrl) #7
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link, align 4
  %num_lanes.i = getelementptr inbounds %struct.dp_link, ptr %12, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_lanes.i, align 4
  %rate.i = getelementptr inbounds %struct.dp_link, ptr %12, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate.i, align 4
  %aux.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 2
  %17 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aux.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %values.i.i) #7
  %19 = getelementptr inbounds [2 x i8], ptr %values.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %16) #7
  %20 = ptrtoint ptr %values.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call.i.i, ptr %values.i.i, align 1
  %conv.i.i = trunc i32 %14 to i8
  %conv4.i.i = or i8 %conv.i.i, -128
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv4.i.i, ptr %19, align 1
  %call5.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %18, i32 noundef 256, ptr noundef nonnull %values.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %values.i.i) #7
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %23)
  %cmp.i.i = icmp ugt i8 %23, 16
  br i1 %cmp.i.i, label %if.end.if.then.i_crit_edge, label %drm_dp_max_downspread.exit.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

drm_dp_max_downspread.exit.i:                     ; preds = %if.end
  %arrayidx2.i.i = getelementptr i8, ptr %7, i32 3
  %24 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.i.i, align 1
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not.i = icmp eq i8 %26, 0
  br i1 %tobool.i.not.i, label %drm_dp_max_downspread.exit.i.if.end.i_crit_edge, label %drm_dp_max_downspread.exit.i.if.then.i_crit_edge

drm_dp_max_downspread.exit.i.if.then.i_crit_edge: ; preds = %drm_dp_max_downspread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

drm_dp_max_downspread.exit.i.if.end.i_crit_edge:  ; preds = %drm_dp_max_downspread.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %drm_dp_max_downspread.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %27 = ptrtoint ptr %ssc.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %ssc.i, align 1
  %28 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aux.i, align 4
  %call8.i = call i32 @drm_dp_dpcd_write(ptr noundef %29, i32 noundef 263, ptr noundef nonnull %ssc.i, i32 noundef 1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %drm_dp_max_downspread.exit.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aux.i, align 4
  %call10.i = call i32 @drm_dp_dpcd_write(ptr noundef %31, i32 noundef 264, ptr noundef nonnull %encoding.i, i32 noundef 1) #7
  %arrayidx.i.i = getelementptr i8, ptr %7, i32 13
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i39.not.i = icmp eq i8 %34, 0
  br i1 %tobool.i39.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then12.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %assr.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %assr.i, align 1
  %36 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %aux.i, align 4
  %call14.i = call i32 @drm_dp_dpcd_write(ptr noundef %37, i32 noundef 266, ptr noundef nonnull %assr.i, i32 noundef 1) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end.i.if.end15.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status.i.i) #7
  %38 = call ptr @memset(ptr %link_status.i.i, i32 255, i32 6)
  %39 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %catalog, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %40, i32 noundef 0) #7
  %41 = ptrtoint ptr %training_step to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %training_step, align 4
  %42 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %catalog, align 4
  %call.i40.i = call i32 @dp_catalog_ctrl_set_pattern(ptr noundef %43, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool.not.i41.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool.not.i41.i, label %if.end.i.i, label %if.end15.i.if.then17.i_crit_edge

if.end15.i.if.then17.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.end.i.i:                                       ; preds = %if.end15.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, i32 noundef 33) #7
  %44 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aux.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i.i) #7
  %46 = ptrtoint ptr %value.addr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 33, ptr %value.addr.i.i.i.i, align 1
  %call.i.i.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %45, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i.i) #7
  %call3.i.i = call fastcc i32 @dp_ctrl_update_vx_px(ptr noundef %ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i.if.then17.i_crit_edge

if.end.i.i.if.then17.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %47 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %link, align 4
  %v_level.i.i = getelementptr inbounds %struct.dp_link, ptr %48, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %v_level.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %v_level.i.i, align 4
  %conv.i42.i = zext i8 %50 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.i.i
  %old_v_level.081.i.i = phi i32 [ %conv.i42.i, %if.end6.i.i ], [ %conv21.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tries.080.i.i = phi i32 [ 0, %if.end6.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %51 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %aux.i, align 4
  %53 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %panel.i, align 4
  call void @drm_dp_link_train_clock_recovery_delay(ptr noundef %52, ptr noundef %54) #7
  %55 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aux.i, align 4
  %call.i.i.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %56, ptr noundef nonnull %link_status.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 6
  br i1 %cmp.not.i.i.i, label %if.end12.i.i, label %dp_ctrl_read_link_status.exit.i.i

dp_ctrl_read_link_status.exit.i.i:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %call.i.i.i) #7
  br label %if.then17.i

if.end12.i.i:                                     ; preds = %for.body.i.i
  %57 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %link, align 4
  %num_lanes.i43.i = getelementptr inbounds %struct.dp_link, ptr %58, i32 0, i32 7, i32 2
  %59 = ptrtoint ptr %num_lanes.i43.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_lanes.i43.i, align 4
  %call15.i.i = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %link_status.i.i, i32 noundef %60) #7
  br i1 %call15.i.i, label %if.end18.i, label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %61 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %link, align 4
  %v_level20.i.i = getelementptr inbounds %struct.dp_link, ptr %62, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %v_level20.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %v_level20.i.i, align 4
  %conv21.i.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp22.i.i = icmp ugt i8 %64, 1
  br i1 %cmp22.i.i, label %if.then24.i.i, label %if.end29.i.i

if.then24.i.i:                                    ; preds = %if.end17.i.i
  %call25.i.i = call i32 @___ratelimit(ptr noundef nonnull @dp_ctrl_link_train_1._rs, ptr noundef nonnull @__func__.dp_ctrl_link_train_1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.then24.i.i.if.then17.i_crit_edge, label %if.then27.i.i

if.then24.i.i.if.then17.i_crit_edge:              ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.then27.i.i:                                    ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.54) #7
  br label %if.then17.i

if.end29.i.i:                                     ; preds = %if.end17.i.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.55) #7
  %65 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %link, align 4
  %call44.i.i = call i32 @dp_link_adjust_levels(ptr noundef %66, ptr noundef nonnull %link_status.i.i) #7
  %call45.i.i = call fastcc i32 @dp_ctrl_update_vx_px(ptr noundef %ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %tobool46.not.i.i = icmp eq i32 %call45.i.i, 0
  br i1 %tobool46.not.i.i, label %for.inc.i.i, label %if.end29.i.i.if.then17.i_crit_edge

if.end29.i.i.if.then17.i_crit_edge:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

for.inc.i.i:                                      ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %old_v_level.081.i.i, i32 %conv21.i.i)
  %cmp34.not.i.i = icmp eq i32 %old_v_level.081.i.i, %conv21.i.i
  %tries.0.op.i.i = add nsw i32 %tries.080.i.i, 1
  %inc.i.i = select i1 %cmp34.not.i.i, i32 %tries.0.op.i.i, i32 1
  %cmp.i44.i = icmp slt i32 %inc.i.i, 4
  br i1 %cmp.i44.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.56) #7
  br label %if.then17.i

if.then17.i:                                      ; preds = %for.end.i.i, %if.end29.i.i.if.then17.i_crit_edge, %if.then27.i.i, %if.then24.i.i.if.then17.i_crit_edge, %dp_ctrl_read_link_status.exit.i.i, %if.end.i.i.if.then17.i_crit_edge, %if.end15.i.if.then17.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -11, %if.then24.i.i.if.then17.i_crit_edge ], [ -11, %if.then27.i.i ], [ -22, %dp_ctrl_read_link_status.exit.i.i ], [ %call3.i.i, %if.end.i.i.if.then17.i_crit_edge ], [ %call.i40.i, %if.end15.i.if.then17.i_crit_edge ], [ -110, %for.end.i.i ], [ %call45.i.i, %if.end29.i.i.if.then17.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i.i) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %retval.0.i.ph.i) #7
  br label %dp_ctrl_link_train.exit

if.end18.i:                                       ; preds = %if.end12.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.46) #7
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status.i46.i) #7
  %67 = call ptr @memset(ptr %link_status.i46.i, i32 255, i32 6)
  %68 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %catalog, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %69, i32 noundef 0) #7
  %70 = ptrtoint ptr %training_step to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %training_step, align 4
  %71 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %panel.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %74)
  %cmp.i.i.i = icmp ugt i8 %74, 17
  br i1 %cmp.i.i.i, label %drm_dp_tps3_supported.exit.i.i, label %if.end18.i.drm_dp_tps3_supported.exit.thread.i.i_crit_edge

if.end18.i.drm_dp_tps3_supported.exit.thread.i.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_tps3_supported.exit.thread.i.i

drm_dp_tps3_supported.exit.i.i:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i.i.i = getelementptr i8, ptr %72, i32 2
  %75 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx2.i.i.i, align 1
  %77 = and i8 %76, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.i.not.i.i = icmp eq i8 %77, 0
  %spec.select.i.i = select i1 %tobool.i.not.i.i, i32 2, i32 3
  br label %drm_dp_tps3_supported.exit.thread.i.i

drm_dp_tps3_supported.exit.thread.i.i:            ; preds = %drm_dp_tps3_supported.exit.i.i, %if.end18.i.drm_dp_tps3_supported.exit.thread.i.i_crit_edge
  %78 = phi i32 [ 2, %if.end18.i.drm_dp_tps3_supported.exit.thread.i.i_crit_edge ], [ %spec.select.i.i, %drm_dp_tps3_supported.exit.i.i ]
  %79 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %catalog, align 4
  %call2.i.i = call i32 @dp_catalog_ctrl_set_pattern(ptr noundef %80, i32 noundef %78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i49.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i49.i, label %if.end4.i.i, label %drm_dp_tps3_supported.exit.thread.i.i.if.then21.i_crit_edge

drm_dp_tps3_supported.exit.thread.i.i.if.then21.i_crit_edge: ; preds = %drm_dp_tps3_supported.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

if.end4.i.i:                                      ; preds = %drm_dp_tps3_supported.exit.thread.i.i
  %81 = trunc i32 %78 to i8
  %conv6.i.i = or i32 %78, 16
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, i32 noundef %conv6.i.i) #7
  %or.i.i.i = or i8 %81, 48
  %82 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %aux.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i45.i) #7
  %84 = ptrtoint ptr %value.addr.i.i.i45.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %or.i.i.i, ptr %value.addr.i.i.i45.i, align 1
  %call.i.i.i51.i = call i32 @drm_dp_dpcd_write(ptr noundef %83, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i45.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i45.i) #7
  br label %for.body.i56.i

for.cond.i.i:                                     ; preds = %if.end20.i.i
  %inc.i53.i = add nuw nsw i32 %tries.052.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i53.i, 6
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.then21.i_crit_edge, label %for.cond.i.i.for.body.i56.i_crit_edge

for.cond.i.i.for.body.i56.i_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i56.i

for.cond.i.i.if.then21.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

for.body.i56.i:                                   ; preds = %for.cond.i.i.for.body.i56.i_crit_edge, %if.end4.i.i
  %tries.052.i.i = phi i32 [ 0, %if.end4.i.i ], [ %inc.i53.i, %for.cond.i.i.for.body.i56.i_crit_edge ]
  %85 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %aux.i, align 4
  %87 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %panel.i, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %86, ptr noundef %88) #7
  %89 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %aux.i, align 4
  %call.i.i54.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %90, ptr noundef nonnull %link_status.i46.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i54.i)
  %cmp.not.i.i55.i = icmp eq i32 %call.i.i54.i, 6
  br i1 %cmp.not.i.i55.i, label %if.end16.i.i, label %dp_ctrl_read_link_status.exit.i57.i

dp_ctrl_read_link_status.exit.i57.i:              ; preds = %for.body.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %call.i.i54.i) #7
  br label %if.then21.i

if.end16.i.i:                                     ; preds = %for.body.i56.i
  %91 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %link, align 4
  %num_lanes.i58.i = getelementptr inbounds %struct.dp_link, ptr %92, i32 0, i32 7, i32 2
  %93 = ptrtoint ptr %num_lanes.i58.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_lanes.i58.i, align 4
  %call18.i.i = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %link_status.i46.i, i32 noundef %94) #7
  br i1 %call18.i.i, label %if.end22.i, label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %95 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %link, align 4
  %call23.i.i = call i32 @dp_link_adjust_levels(ptr noundef %96, ptr noundef nonnull %link_status.i46.i) #7
  %call24.i.i = call fastcc i32 @dp_ctrl_update_vx_px(ptr noundef %ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %for.cond.i.i, label %if.end20.i.i.if.then21.i_crit_edge

if.end20.i.i.if.then21.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end20.i.i.if.then21.i_crit_edge, %dp_ctrl_read_link_status.exit.i57.i, %for.cond.i.i.if.then21.i_crit_edge, %drm_dp_tps3_supported.exit.thread.i.i.if.then21.i_crit_edge
  %retval.0.i59.ph.i = phi i32 [ -22, %dp_ctrl_read_link_status.exit.i57.i ], [ %call2.i.i, %drm_dp_tps3_supported.exit.thread.i.i.if.then21.i_crit_edge ], [ %call24.i.i, %if.end20.i.i.if.then21.i_crit_edge ], [ -110, %for.cond.i.i.if.then21.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i46.i) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47, i32 noundef %retval.0.i59.ph.i) #7
  br label %dp_ctrl_link_train.exit

if.end22.i:                                       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i46.i) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.48) #7
  br label %dp_ctrl_link_train.exit

dp_ctrl_link_train.exit:                          ; preds = %if.end22.i, %if.then21.i, %if.then17.i
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %if.then17.i ], [ %retval.0.i59.ph.i, %if.then21.i ], [ 0, %if.end22.i ]
  %97 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %catalog, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %98, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %assr.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ssc.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %encoding.i) #7
  br label %cleanup

cleanup:                                          ; preds = %dp_ctrl_link_train.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %dp_ctrl_link_train.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_link_is_connected(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_on_stream(ptr noundef %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i.i = alloca i8, align 1
  %training_step.i = alloca i32, align 4
  %link_status.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_ctrl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %dp_mode = getelementptr inbounds %struct.dp_panel, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_mode, align 4
  %pixel_rate = getelementptr inbounds %struct.dp_ctrl, ptr %dp_ctrl, i32 0, i32 2
  %4 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixel_rate, align 4
  %link = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 4
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link, align 4
  %rate = getelementptr inbounds %struct.dp_link, ptr %6, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate, align 4
  %num_lanes = getelementptr inbounds %struct.dp_link, ptr %6, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_lanes, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %8, i32 noundef %10, i32 noundef %3) #7
  %power = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 5
  %11 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %power, align 4
  %call = tail call i32 @dp_power_clk_status(ptr noundef %12, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %call8 = tail call fastcc i32 @dp_ctrl_enable_mainlink_clocks(ptr noundef nonnull %dp_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %call8) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status.i) #7
  %13 = call ptr @memset(ptr %link_status.i, i32 255, i32 6)
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %num_lanes1.i = getelementptr inbounds %struct.dp_link, ptr %15, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %num_lanes1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_lanes1.i, align 4
  %aux.i.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 2
  %18 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aux.i.i, align 4
  %call.i.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %19, ptr noundef nonnull %link_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 6
  br i1 %cmp.not.i.i, label %if.end12.dp_ctrl_channel_eq_ok.exit_crit_edge, label %if.then.i.i

if.end12.dp_ctrl_channel_eq_ok.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_channel_eq_ok.exit

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %call.i.i) #7
  br label %dp_ctrl_channel_eq_ok.exit

dp_ctrl_channel_eq_ok.exit:                       ; preds = %if.then.i.i, %if.end12.dp_ctrl_channel_eq_ok.exit_crit_edge
  %call3.i = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %link_status.i, i32 noundef %17) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status.i) #7
  br i1 %call3.i, label %dp_ctrl_channel_eq_ok.exit.if.end16_crit_edge, label %if.then14

dp_ctrl_channel_eq_ok.exit.if.end16_crit_edge:    ; preds = %dp_ctrl_channel_eq_ok.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %dp_ctrl_channel_eq_ok.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %training_step.i) #7
  %call.i = call fastcc i32 @dp_ctrl_setup_main_link(ptr noundef nonnull %dp_ctrl, ptr noundef nonnull %training_step.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %training_step.i) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %dp_ctrl_channel_eq_ok.exit.if.end16_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, i32 noundef 0) #7
  %20 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aux.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i) #7
  %22 = ptrtoint ptr %value.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %value.addr.i.i.i, align 1
  %call.i.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %21, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i) #7
  %23 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aux.i.i, align 4
  %25 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %panel, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %24, ptr noundef %26) #7
  %27 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pixel_rate, align 4
  %mul.i = mul i32 %28, 1000
  %parser.i.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 6
  %29 = ptrtoint ptr %parser.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parser.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.dp_parser, ptr %30, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not18.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not18.i.i, label %if.end16.if.else.critedge.i.i_crit_edge, label %land.rhs.preheader.i.i

if.end16.if.else.critedge.i.i_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.critedge.i.i

land.rhs.preheader.i.i:                           ; preds = %if.end16
  %clk_config.i.i = getelementptr %struct.dp_parser, ptr %30, i32 0, i32 1, i32 2, i32 1
  %33 = ptrtoint ptr %clk_config.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk_config.i.i, align 4
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %cfg.020.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %34, %land.rhs.preheader.i.i ]
  %num.019.i.i = phi i32 [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %32, %land.rhs.preheader.i.i ]
  %clk_name.i.i = getelementptr inbounds %struct.dss_clk, ptr %cfg.020.i.i, i32 0, i32 1
  %call.i.i72 = call i32 @strcmp(ptr noundef %clk_name.i.i, ptr noundef nonnull dereferenceable(13) @.str.64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %tobool4.not.i.i = icmp eq i32 %call.i.i72, 0
  br i1 %tobool4.not.i.i, label %if.then.critedge.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add i32 %num.019.i.i, -1
  %incdec.ptr.i.i = getelementptr %struct.dss_clk, ptr %cfg.020.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.else.critedge.i.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

while.body.i.i.if.else.critedge.i.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.critedge.i.i

if.then.critedge.i.i:                             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.41, i32 noundef %mul.i, ptr noundef nonnull @.str.64) #7
  %rate6.i.i = getelementptr inbounds %struct.dss_clk, ptr %cfg.020.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %rate6.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul.i, ptr %rate6.i.i, align 4
  br label %dp_ctrl_set_clock_rate.exit.i

if.else.critedge.i.i:                             ; preds = %while.body.i.i.if.else.critedge.i.i_crit_edge, %if.end16.if.else.critedge.i.i_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.41, i32 noundef %mul.i, ptr noundef nonnull @.str.64) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.64, i32 noundef %mul.i) #7
  br label %dp_ctrl_set_clock_rate.exit.i

dp_ctrl_set_clock_rate.exit.i:                    ; preds = %if.else.critedge.i.i, %if.then.critedge.i.i
  %36 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %power, align 4
  %call.i73 = call i32 @dp_power_clk_enable(ptr noundef %37, i32 noundef 2, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i, label %if.end20.critedge, label %if.then.i

if.then.i:                                        ; preds = %dp_ctrl_set_clock_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.65, i32 noundef %call.i73) #7
  %38 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %link, align 4
  %rate.i.c94 = getelementptr inbounds %struct.dp_link, ptr %39, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %rate.i.c94 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rate.i.c94, align 4
  %42 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pixel_rate, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.40, i32 noundef %41, i32 noundef %43) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call.i73) #7
  br label %cleanup

if.end20.critedge:                                ; preds = %dp_ctrl_set_clock_rate.exit.i
  %44 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %link, align 4
  %rate.i.c = getelementptr inbounds %struct.dp_link, ptr %45, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %rate.i.c to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rate.i.c, align 4
  %48 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pixel_rate, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.40, i32 noundef %47, i32 noundef %49) #7
  %50 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %link, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20.critedge
  %phy_params.i = getelementptr inbounds %struct.dp_link, ptr %51, i32 0, i32 6
  %54 = ptrtoint ptr %phy_params.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phy_params.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.66, i32 noundef %55) #7
  %catalog.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %56 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %catalog.i, align 4
  %58 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %link, align 4
  %v_level.i = getelementptr inbounds %struct.dp_link, ptr %59, i32 0, i32 6, i32 1
  %60 = ptrtoint ptr %v_level.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %v_level.i, align 4
  %p_level.i = getelementptr inbounds %struct.dp_link, ptr %59, i32 0, i32 6, i32 2
  %62 = ptrtoint ptr %p_level.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %p_level.i, align 1
  %call.i76 = call i32 @dp_catalog_ctrl_update_vx_px(ptr noundef %57, i8 noundef zeroext %61, i8 noundef zeroext %63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %if.end.i, label %if.then.i78

if.then.i78:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.67) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then23
  %64 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %catalog.i, align 4
  call void @dp_catalog_ctrl_send_phy_pattern(ptr noundef %65, i32 noundef %55) #7
  %call6.i = call fastcc i32 @dp_ctrl_update_vx_px(ptr noundef nonnull %dp_ctrl) #7
  %66 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %link, align 4
  %call8.i = call zeroext i1 @dp_link_send_test_response(ptr noundef %67) #7
  %68 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %catalog.i, align 4
  %call10.i = call i32 @dp_catalog_ctrl_read_phy_pattern(ptr noundef %69) #7
  %70 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call10.i, label %if.end.i.sw.epilog.thread.i_crit_edge [
    i32 8, label %sw.epilog.i
    i32 128, label %sw.bb11.i
    i32 256, label %sw.bb15.i
    i32 512, label %sw.bb18.i
    i32 64, label %sw.bb21.i
  ]

if.end.i.sw.epilog.thread.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %switch.selectcmp.case1.i = icmp eq i32 %55, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %switch.selectcmp.case2.i = icmp eq i32 %55, 2
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %71 = select i1 %switch.selectcmp.i, ptr @.str.69, ptr @.str.70
  br label %sw.epilog.thread.i

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp16.i = icmp eq i32 %55, 3
  br i1 %cmp16.i, label %sw.bb15.i._crit_edge, label %sw.bb15.i.sw.epilog.thread.i_crit_edge

sw.bb15.i.sw.epilog.thread.i_crit_edge:           ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

sw.bb15.i._crit_edge:                             ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %72

sw.bb18.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp19.i = icmp eq i32 %55, 4
  br i1 %cmp19.i, label %sw.bb18.i._crit_edge, label %sw.bb18.i.sw.epilog.thread.i_crit_edge

sw.bb18.i.sw.epilog.thread.i_crit_edge:           ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

sw.bb18.i._crit_edge:                             ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %72

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %55)
  %cmp22.i = icmp eq i32 %55, 7
  br i1 %cmp22.i, label %sw.bb21.i._crit_edge, label %sw.bb21.i.sw.epilog.thread.i_crit_edge

sw.bb21.i.sw.epilog.thread.i_crit_edge:           ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

sw.bb21.i._crit_edge:                             ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %72

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i = icmp eq i32 %55, 1
  br i1 %cmp.i, label %sw.epilog.i._crit_edge, label %sw.epilog.i.sw.epilog.thread.i_crit_edge

sw.epilog.i.sw.epilog.thread.i_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

sw.epilog.i._crit_edge:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %72

72:                                               ; preds = %sw.epilog.i._crit_edge, %sw.bb21.i._crit_edge, %sw.bb18.i._crit_edge, %sw.bb15.i._crit_edge
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %72, %sw.epilog.i.sw.epilog.thread.i_crit_edge, %sw.bb21.i.sw.epilog.thread.i_crit_edge, %sw.bb18.i.sw.epilog.thread.i_crit_edge, %sw.bb15.i.sw.epilog.thread.i_crit_edge, %sw.bb11.i, %if.end.i.sw.epilog.thread.i_crit_edge
  %73 = phi ptr [ @.str.69, %72 ], [ @.str.70, %sw.epilog.i.sw.epilog.thread.i_crit_edge ], [ @.str.70, %sw.bb21.i.sw.epilog.thread.i_crit_edge ], [ @.str.70, %sw.bb18.i.sw.epilog.thread.i_crit_edge ], [ @.str.70, %sw.bb15.i.sw.epilog.thread.i_crit_edge ], [ @.str.70, %if.end.i.sw.epilog.thread.i_crit_edge ], [ %71, %sw.bb11.i ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.68, ptr noundef nonnull %73, i32 noundef %55) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20.critedge
  %video_comp = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 9
  %74 = ptrtoint ptr %video_comp to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %video_comp, align 4
  %catalog.i79 = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %75 = ptrtoint ptr %catalog.i79 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %catalog.i79, align 4
  call void @dp_catalog_ctrl_lane_mapping(ptr noundef %76) #7
  %77 = ptrtoint ptr %catalog.i79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %catalog.i79, align 4
  call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %78, i1 noundef zeroext true) #7
  call fastcc void @dp_ctrl_config_ctrl(ptr noundef nonnull %dp_ctrl) #7
  %79 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %link, align 4
  %81 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %panel, align 4
  %bpp.i = getelementptr inbounds %struct.dp_panel, ptr %82, i32 0, i32 8, i32 2
  %83 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bpp.i, align 4
  %call.i82 = call i32 @dp_link_get_test_bits_depth(ptr noundef %80, i32 noundef %84) #7
  %85 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %link, align 4
  %call3.i83 = call i32 @dp_link_get_colorimetry_config(ptr noundef %86) #7
  %87 = ptrtoint ptr %catalog.i79 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %catalog.i79, align 4
  call void @dp_catalog_ctrl_config_misc(ptr noundef %88, i32 noundef %call3.i83, i32 noundef %call.i82) #7
  %89 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %panel, align 4
  %call6.i84 = call i32 @dp_panel_timing_cfg(ptr noundef %90) #7
  %91 = ptrtoint ptr %catalog.i79 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %catalog.i79, align 4
  %93 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %link, align 4
  %rate28 = getelementptr inbounds %struct.dp_link, ptr %94, i32 0, i32 7, i32 1
  %95 = ptrtoint ptr %rate28 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rate28, align 4
  %97 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pixel_rate, align 4
  %99 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %panel, align 4
  %arrayidx.i.i86 = getelementptr i8, ptr %100, i32 5
  %101 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.i86, align 1
  %103 = and i8 %102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.i.not.i = icmp eq i8 %103, 0
  br i1 %tobool.i.not.i, label %if.end25.dp_ctrl_use_fixed_nvid.exit_crit_edge, label %if.then.i87

if.end25.dp_ctrl_use_fixed_nvid.exit_crit_edge:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_ctrl_use_fixed_nvid.exit

if.then.i87:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %quirks.i.i = getelementptr inbounds %struct.dp_panel, ptr %100, i32 0, i32 5, i32 1
  %104 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i5.i = icmp ne i32 %and.i.i, 0
  br label %dp_ctrl_use_fixed_nvid.exit

dp_ctrl_use_fixed_nvid.exit:                      ; preds = %if.then.i87, %if.end25.dp_ctrl_use_fixed_nvid.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool.i5.i, %if.then.i87 ], [ false, %if.end25.dp_ctrl_use_fixed_nvid.exit_crit_edge ]
  call void @dp_catalog_ctrl_config_msa(ptr noundef %92, i32 noundef %96, i32 noundef %98, i1 noundef zeroext %retval.0.i) #7
  call fastcc void @dp_ctrl_setup_tr_unit(ptr noundef nonnull %dp_ctrl)
  %106 = ptrtoint ptr %catalog.i79 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %catalog.i79, align 4
  call void @dp_catalog_ctrl_state_ctrl(ptr noundef %107, i32 noundef 128) #7
  %call.i88 = call i32 @wait_for_completion_timeout(ptr noundef %video_comp, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %dp_ctrl_wait4video_ready.exit, label %if.end36

dp_ctrl_wait4video_ready.exit:                    ; preds = %dp_ctrl_use_fixed_nvid.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.85) #7
  br label %cleanup

if.end36:                                         ; preds = %dp_ctrl_use_fixed_nvid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %catalog.i79 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %catalog.i79, align 4
  %call38 = call zeroext i1 @dp_catalog_ctrl_mainlink_ready(ptr noundef %109) #7
  %cond = select i1 %call38, ptr @.str.17, ptr @.str.18
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %dp_ctrl_wait4video_ready.exit, %sw.epilog.thread.i, %if.then.i78, %if.then.i, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %dp_ctrl_wait4video_ready.exit ], [ %call.i73, %if.then.i ], [ 0, %if.end36 ], [ %call8, %if.then10 ], [ 0, %if.then.i78 ], [ 0, %sw.epilog.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_clk_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_config_msa(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dp_ctrl_setup_tr_unit(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  %in.i = alloca %struct.dp_tu_calc_input, align 8
  %tu_calc_table = alloca %struct.dp_vc_tu_mapping_table, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tu_calc_table) #7
  %0 = call ptr @memset(ptr %tu_calc_table, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #7
  %panel.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 3
  %1 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %panel.i, align 4
  %dp_mode.i = getelementptr inbounds %struct.dp_panel, ptr %2, i32 0, i32 8
  %link.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 4
  %3 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link.i, align 4
  %rate.i = getelementptr inbounds %struct.dp_link, ptr %4, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate.i, align 4
  %div.i = udiv i32 %6, 1000
  %conv.i = zext i32 %div.i to i64
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv.i, ptr %in.i, align 8
  %8 = ptrtoint ptr %dp_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_mode.i, align 4
  %conv2.i = sext i32 %9 to i64
  %pclk_khz.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 1
  %10 = ptrtoint ptr %pclk_khz.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv2.i, ptr %pclk_khz.i, align 8
  %hdisplay.i = getelementptr inbounds %struct.dp_panel, ptr %2, i32 0, i32 8, i32 0, i32 1
  %11 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay.i, align 4
  %conv3.i = zext i16 %12 to i64
  %hactive.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 2
  %13 = ptrtoint ptr %hactive.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3.i, ptr %hactive.i, align 8
  %htotal.i = getelementptr inbounds %struct.dp_panel, ptr %2, i32 0, i32 8, i32 0, i32 4
  %14 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %htotal.i, align 2
  %conv4.i = zext i16 %15 to i32
  %conv6.i = zext i16 %12 to i32
  %sub.i = sub nsw i32 %conv4.i, %conv6.i
  %conv7.i = sext i32 %sub.i to i64
  %hporch.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 3
  %16 = ptrtoint ptr %hporch.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv7.i, ptr %hporch.i, align 8
  %num_lanes.i = getelementptr inbounds %struct.dp_link, ptr %4, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_lanes.i, align 4
  %nlanes.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 4
  %19 = ptrtoint ptr %nlanes.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %nlanes.i, align 8
  %bpp.i = getelementptr inbounds %struct.dp_panel, ptr %2, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpp.i, align 4
  %bpp12.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 5
  %22 = ptrtoint ptr %bpp12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bpp12.i, align 4
  %pixel_enc.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 6
  %23 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 444, ptr %pixel_enc.i, align 8
  %dsc_en.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 7
  %24 = ptrtoint ptr %dsc_en.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dsc_en.i, align 4
  %async_en.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 8
  %25 = ptrtoint ptr %async_en.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %async_en.i, align 8
  %fec_en.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 9
  %26 = ptrtoint ptr %fec_en.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %fec_en.i, align 4
  %num_of_dsc_slices.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 11
  %27 = ptrtoint ptr %num_of_dsc_slices.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %num_of_dsc_slices.i, align 4
  %compress_ratio.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in.i, i32 0, i32 10
  %28 = ptrtoint ptr %compress_ratio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 100, ptr %compress_ratio.i, align 8
  call fastcc void @_dp_ctrl_calc_tu(ptr noundef nonnull %in.i, ptr noundef nonnull %tu_calc_table) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #7
  %tu_size_minus1 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_calc_table, i32 0, i32 10
  %29 = ptrtoint ptr %tu_size_minus1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tu_size_minus1, align 2
  %conv = zext i8 %30 to i32
  %valid_boundary_link = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_calc_table, i32 0, i32 4
  %31 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valid_boundary_link, align 1
  %conv1 = zext i8 %32 to i32
  %delay_start_link = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_calc_table, i32 0, i32 5
  %33 = ptrtoint ptr %delay_start_link to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %delay_start_link, align 4
  %conv3 = zext i16 %34 to i32
  %shl = shl nuw i32 %conv3, 16
  %or4 = or i32 %shl, %conv1
  %valid_lower_boundary_link = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_calc_table, i32 0, i32 7
  %35 = ptrtoint ptr %valid_lower_boundary_link to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %valid_lower_boundary_link, align 1
  %conv5 = zext i8 %36 to i32
  %shl6 = shl nuw nsw i32 %conv5, 1
  %upper_boundary_count = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_calc_table, i32 0, i32 8
  %37 = ptrtoint ptr %upper_boundary_count to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %upper_boundary_count, align 4
  %conv8 = zext i8 %38 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %shl9, %shl6
  %lower_boundary_count = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_calc_table, i32 0, i32 9
  %39 = ptrtoint ptr %lower_boundary_count to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lower_boundary_count, align 1
  %conv11 = zext i8 %40 to i32
  %shl12 = shl nuw nsw i32 %conv11, 20
  %or13 = or i32 %or10, %shl12
  %boundary_moderation_en = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_calc_table, i32 0, i32 6
  %41 = ptrtoint ptr %boundary_moderation_en to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %boundary_moderation_en, align 2, !range !177
  %43 = zext i8 %42 to i32
  %spec.select = or i32 %or13, %43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dp_ctrl_setup_tr_unit.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dp_ctrl_setup_tr_unit, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !178

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dp_ctrl_setup_tr_unit.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef %conv, i32 noundef %or4, i32 noundef %spec.select) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %entry
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 7
  %44 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_update_transfer_unit(ptr noundef %45, i32 noundef %conv, i32 noundef %or4, i32 noundef %spec.select) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tu_calc_table) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_catalog_ctrl_mainlink_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_off_link_stream(ptr nocapture noundef readonly %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parser = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %phy1 = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %link = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %panel = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 3
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %link_info = getelementptr inbounds %struct.dp_panel, ptr %7, i32 0, i32 4
  %call = tail call i32 @dp_link_psm_config(ptr noundef %5, ptr noundef %link_info, i1 noundef zeroext true) #7
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %8 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %9, i1 noundef zeroext false) #7
  %power = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 5
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power, align 4
  %call2 = tail call i32 @dp_power_clk_status(ptr noundef %11, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %power, align 4
  %call4 = tail call i32 @dp_power_clk_enable(ptr noundef %13, i32 noundef 2, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then6

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %call4) #7
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %14 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power, align 4
  %call9 = tail call i32 @dp_power_clk_enable(ptr noundef %15, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %call9) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @phy_power_off(ptr noundef %3) #7
  %call14 = tail call i32 @phy_exit(ptr noundef %3) #7
  %call15 = tail call i32 @phy_init(ptr noundef %3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then6
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %call9, %if.then11 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_psm_config(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_ctrl_off_phy(ptr nocapture noundef readonly %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parser = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %phy1 = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %4 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_reset(ptr noundef %5) #7
  %call = tail call i32 @phy_exit(ptr noundef %3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.22) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_ctrl_off(ptr noundef readonly %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_ctrl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parser = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %phy1 = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %4 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_mainlink_ctrl(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_reset(ptr noundef %7) #7
  %power = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 5
  %8 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power, align 4
  %call = tail call i32 @dp_power_clk_enable(ptr noundef %9, i32 noundef 2, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %call) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power, align 4
  %call7 = tail call i32 @dp_power_clk_enable(ptr noundef %11, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %call7) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %call11 = tail call i32 @phy_power_off(ptr noundef %3) #7
  %call12 = tail call i32 @phy_exit(ptr noundef %3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_ctrl_isr(ptr noundef %dp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_ctrl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 7
  %0 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog, align 4
  %call = tail call i32 @dp_catalog_ctrl_get_interrupt(ptr noundef %1) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.25) #7
  %video_comp = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 9
  tail call void @complete(ptr noundef %video_comp) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %and4 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.26) #7
  %idle_comp = getelementptr inbounds %struct.dp_ctrl_private, ptr %dp_ctrl, i32 0, i32 8
  tail call void @complete(ptr noundef %idle_comp) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_ctrl_get_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_ctrl_get(ptr noundef %dev, ptr noundef %link, ptr noundef %panel, ptr noundef %aux, ptr noundef %power, ptr noundef %catalog, ptr noundef %parser) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %panel, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %aux, null
  %or.cond55 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %link, null
  %or.cond56 = or i1 %tobool5.not, %or.cond55
  %tobool7.not = icmp eq ptr %catalog, null
  %or.cond57 = or i1 %or.cond56, %tobool7.not
  br i1 %or.cond57, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 152, i32 noundef 3520) #7
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef nonnull %dev, ptr noundef nonnull @.str.28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.29) #10
  %0 = inttoptr i32 %call13 to ptr
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef nonnull %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %do.end23

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.34) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end17.if.end24_crit_edge
  %idle_comp = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %idle_comp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %idle_comp, align 4
  %wait.i = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_completion.__key) #7
  %video_comp = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %video_comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %video_comp, align 4
  %wait.i58 = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i58, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_completion.__key) #7
  %parser25 = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %parser25 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %parser, ptr %parser25, align 4
  %panel26 = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %panel26 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %panel, ptr %panel26, align 4
  %power27 = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %power27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %power, ptr %power27, align 4
  %aux28 = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %aux28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %aux, ptr %aux28, align 4
  %link29 = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %link29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %link, ptr %link29, align 4
  %catalog30 = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %catalog30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %catalog, ptr %catalog30, align 4
  %dev31 = getelementptr inbounds %struct.dp_ctrl_private, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %if.then10, %if.then
  %retval.0 = phi ptr [ %0, %do.end ], [ %call.i, %if.end24 ], [ inttoptr (i32 -12 to ptr), %if.then10 ], [ inttoptr (i32 -22 to ptr), %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dp_ctrl_config_ctrl(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 13
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  %spec.select = select i1 %tobool.i.not, i32 16384, i32 17408
  %link = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 4
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link, align 4
  %bpp = getelementptr inbounds %struct.dp_panel, ptr %1, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bpp, align 4
  %call4 = tail call i32 @dp_link_get_test_bits_depth(ptr noundef %6, i32 noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %do.body, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dp_ctrl_config_ctrl.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dp_ctrl_config_ctrl, %if.then9)) #7
          to label %if.end11 [label %if.then9], !srcloc !178

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dp_ctrl_config_ctrl.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %entry.if.end11_crit_edge
  %tbd.0 = phi i32 [ %call4, %entry.if.end11_crit_edge ], [ 32, %if.then9 ], [ 32, %do.body ]
  %shl = shl i32 %tbd.0, 8
  %or12 = or i32 %shl, %spec.select
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link, align 4
  %num_lanes = getelementptr inbounds %struct.dp_link, ptr %10, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_lanes, align 4
  %sub = shl i32 %12, 4
  %shl14 = add i32 %sub, -16
  %or15 = or i32 %or12, %shl14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %14)
  %cmp.i = icmp ugt i8 %14, 16
  br i1 %cmp.i, label %drm_dp_enhanced_frame_cap.exit, label %if.end11.drm_dp_enhanced_frame_cap.exit.thread_crit_edge

if.end11.drm_dp_enhanced_frame_cap.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_dp_enhanced_frame_cap.exit.thread

drm_dp_enhanced_frame_cap.exit:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i = getelementptr i8, ptr %1, i32 2
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i38 = icmp slt i8 %16, 0
  %or18 = or i32 %or15, 64
  %spec.select41 = select i1 %tobool.i38, i32 %or18, i32 %or15
  br label %drm_dp_enhanced_frame_cap.exit.thread

drm_dp_enhanced_frame_cap.exit.thread:            ; preds = %drm_dp_enhanced_frame_cap.exit, %if.end11.drm_dp_enhanced_frame_cap.exit.thread_crit_edge
  %17 = phi i32 [ %or15, %if.end11.drm_dp_enhanced_frame_cap.exit.thread_crit_edge ], [ %spec.select41, %drm_dp_enhanced_frame_cap.exit ]
  %or22 = or i32 %17, 7
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 7
  %18 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %catalog, align 4
  tail call void @dp_catalog_ctrl_config_ctrl(ptr noundef %19, i32 noundef %or22) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_get_test_bits_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_config_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_ctrl_set_pattern(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_ctrl_update_vx_px(ptr nocapture noundef readonly %ctrl) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %link1 = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 4
  %0 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %v_level = getelementptr inbounds %struct.dp_link, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf, align 4
  %3 = ptrtoint ptr %v_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %v_level, align 4
  %conv = zext i8 %4 to i32
  %p_level = getelementptr inbounds %struct.dp_link, ptr %1, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %p_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %p_level, align 1
  %conv3 = zext i8 %6 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv3) #7
  %catalog = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 7
  %7 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %catalog, align 4
  %call = tail call i32 @dp_catalog_ctrl_update_vx_px(ptr noundef %8, i8 noundef zeroext %4, i8 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp ugt i8 %4, 1
  br i1 %cmp, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.59, i32 noundef %conv) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %max_level_reached.0 = phi i32 [ 4, %if.then7 ], [ 0, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp9 = icmp ugt i8 %6, 1
  br i1 %cmp9, label %if.then11, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.60, i32 noundef %conv3) #7
  %or12 = or i32 %max_level_reached.0, 32
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %max_level_reached.1 = phi i32 [ %or12, %if.then11 ], [ %max_level_reached.0, %if.end8.if.end13_crit_edge ]
  %shl = shl nuw nsw i32 %conv3, 3
  %9 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link1, align 4
  %num_lanes = getelementptr inbounds %struct.dp_link, ptr %10, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1557 = icmp sgt i32 %12, 0
  %or17 = or i32 %shl, %conv
  br i1 %cmp1557, label %for.body.lr.ph, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %or18 = or i32 %or17, %max_level_reached.1
  %conv19 = trunc i32 %or18 to i8
  %13 = zext i8 %conv19 to i32
  %14 = call ptr @memset(ptr %buf, i32 %13, i32 %12)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %if.end13.for.end_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.61, i32 noundef %or17) #7
  %aux = getelementptr inbounds %struct.dp_ctrl_private, ptr %ctrl, i32 0, i32 2
  %15 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux, align 4
  %call21 = call i32 @drm_dp_dpcd_write(ptr noundef %16, i32 noundef 259, ptr noundef nonnull %buf, i32 noundef %12) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %12)
  %cmp22 = icmp eq i32 %call21, %12
  %spec.store.select = select i1 %cmp22, i32 0, i32 %call21
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_clock_recovery_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_adjust_levels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_ctrl_update_vx_px(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_channel_eq_delay(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_send_phy_pattern(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_ctrl_read_phy_pattern(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_lane_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_get_colorimetry_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_config_misc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_timing_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_update_transfer_unit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dp_ctrl_calc_tu(ptr nocapture noundef readonly %in, ptr nocapture noundef %tu_table) unnamed_addr #0 align 64 {
entry:
  %rem.i3186 = alloca i64, align 8
  %rem.i3106 = alloca i64, align 8
  %rem.i3053 = alloca i64, align 8
  %rem.i2974 = alloca i64, align 8
  %rem.i2864 = alloca i64, align 8
  %rem.i2757 = alloca i64, align 8
  %rem.i2678 = alloca i64, align 8
  %rem.i2625 = alloca i64, align 8
  %rem.i2599 = alloca i64, align 8
  %rem.i1815.i = alloca i64, align 8
  %rem.i1706.i = alloca i64, align 8
  %rem.i1624.i = alloca i64, align 8
  %rem.i1599.i = alloca i64, align 8
  %rem.i1517.i = alloca i64, align 8
  %rem.i1492.i = alloca i64, align 8
  %rem.i1414.i = alloca i64, align 8
  %rem.i1332.i = alloca i64, align 8
  %rem.i1254.i = alloca i64, align 8
  %rem.i1145.i = alloca i64, align 8
  %rem.i1067.i = alloca i64, align 8
  %rem.i989.i = alloca i64, align 8
  %rem.i937.i = alloca i64, align 8
  %rem.i885.i = alloca i64, align 8
  %rem.i860.i = alloca i64, align 8
  %rem.i834.i = alloca i64, align 8
  %rem.i782.i = alloca i64, align 8
  %rem.i730.i = alloca i64, align 8
  %rem.i705.i = alloca i64, align 8
  %rem.i627.i = alloca i64, align 8
  %rem.i531.i = alloca i64, align 8
  %rem.i506.i = alloca i64, align 8
  %rem.i.i2502 = alloca i64, align 8
  %rem.i2419 = alloca i64, align 8
  %rem.i2338 = alloca i64, align 8
  %rem.i2288 = alloca i64, align 8
  %rem.i2156 = alloca i64, align 8
  %rem.i2105 = alloca i64, align 8
  %rem.i2052 = alloca i64, align 8
  %rem.i2026 = alloca i64, align 8
  %rem.i1947 = alloca i64, align 8
  %rem.i1864 = alloca i64, align 8
  %rem.i1753 = alloca i64, align 8
  %rem.i1727 = alloca i64, align 8
  %rem.i1643 = alloca i64, align 8
  %rem.i1617 = alloca i64, align 8
  %rem.i1538 = alloca i64, align 8
  %rem.i1484 = alloca i64, align 8
  %rem.i1405 = alloca i64, align 8
  %rem.i1322 = alloca i64, align 8
  %rem.i1296 = alloca i64, align 8
  %rem.i1213 = alloca i64, align 8
  %rem.i1190 = alloca i64, align 8
  %rem.i1110 = alloca i64, align 8
  %rem.i1087 = alloca i64, align 8
  %rem.i1007 = alloca i64, align 8
  %rem.i930 = alloca i64, align 8
  %rem.i879 = alloca i64, align 8
  %rem.i856 = alloca i64, align 8
  %rem.i634.i = alloca i64, align 8
  %rem.i449.i = alloca i64, align 8
  %rem.i400.i = alloca i64, align 8
  %rem.i330.i = alloca i64, align 8
  %rem.i305.i = alloca i64, align 8
  %rem.i230.i = alloca i64, align 8
  %rem.i205.i = alloca i64, align 8
  %rem.i180.i = alloca i64, align 8
  %rem.i155.i = alloca i64, align 8
  %rem.i.i = alloca i64, align 8
  %rem.i832 = alloca i64, align 8
  %rem.i810 = alloca i64, align 8
  %rem.i788 = alloca i64, align 8
  %rem.i766 = alloca i64, align 8
  %rem.i = alloca i64, align 8
  %temp2_fp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %temp2_fp) #7
  %0 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %temp2_fp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i) #7
  %1 = ptrtoint ptr %rem.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %rem.i, align 8, !annotation !176
  %call.i = call i64 @div64_u64_rem(i64 noundef 6, i64 noundef 10000, ptr noundef nonnull %rem.i) #7
  %2 = ptrtoint ptr %rem.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %rem.promoted.i = load i64, ptr %rem.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %storemerge40.i = phi i64 [ %rem.promoted.i, %entry ], [ %storemerge.i, %do.body.i.do.body.i_crit_edge ]
  %res_abs.0.i = phi i64 [ %call.i, %entry ], [ %res_abs.1.i, %do.body.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ 32, %entry ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %shl.i = shl i64 %storemerge40.i, 1
  %shl9.i = shl i64 %res_abs.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000, i64 %shl.i)
  %cmp10.not.i = icmp ult i64 %shl.i, 10000
  %sub11.i.neg = select i1 %cmp10.not.i, i64 0, i64 -10000
  %storemerge.i = add i64 %sub11.i.neg, %shl.i
  %not.cmp10.not.i = xor i1 %cmp10.not.i, true
  %or.i = zext i1 %not.cmp10.not.i to i64
  %res_abs.1.i = or i64 %shl9.i, %or.i
  %dec.i = add nsw i32 %i.0.i, -1
  %cmp12.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp12.not.i, label %drm_fixp_from_fraction.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

drm_fixp_from_fraction.exit:                      ; preds = %do.body.i
  %shl13.i = shl i64 %storemerge.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999, i64 %shl13.i)
  %cmp14.i = icmp ugt i64 %shl13.i, 9999
  %3 = zext i1 %cmp14.i to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i766) #7
  %4 = ptrtoint ptr %rem.i766 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %rem.i766, align 8, !annotation !176
  %call.i767 = call i64 @div64_u64_rem(i64 noundef 49, i64 noundef 100, ptr noundef nonnull %rem.i766) #7
  %5 = ptrtoint ptr %rem.i766 to i32
  call void @__asan_load8_noabort(i32 %5)
  %rem.promoted.i768 = load i64, ptr %rem.i766, align 8
  br label %do.body.i782

do.body.i782:                                     ; preds = %do.body.i782.do.body.i782_crit_edge, %drm_fixp_from_fraction.exit
  %storemerge40.i769 = phi i64 [ %rem.promoted.i768, %drm_fixp_from_fraction.exit ], [ %storemerge.i776, %do.body.i782.do.body.i782_crit_edge ]
  %res_abs.0.i770 = phi i64 [ %call.i767, %drm_fixp_from_fraction.exit ], [ %res_abs.1.i779, %do.body.i782.do.body.i782_crit_edge ]
  %i.0.i771 = phi i32 [ 32, %drm_fixp_from_fraction.exit ], [ %dec.i780, %do.body.i782.do.body.i782_crit_edge ]
  %shl.i772 = shl i64 %storemerge40.i769, 1
  %shl9.i773 = shl i64 %res_abs.0.i770, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 100, i64 %shl.i772)
  %cmp10.not.i774 = icmp ult i64 %shl.i772, 100
  %sub11.i775.neg = select i1 %cmp10.not.i774, i64 0, i64 -100
  %storemerge.i776 = add i64 %sub11.i775.neg, %shl.i772
  %not.cmp10.not.i777 = xor i1 %cmp10.not.i774, true
  %or.i778 = zext i1 %not.cmp10.not.i777 to i64
  %res_abs.1.i779 = or i64 %shl9.i773, %or.i778
  %dec.i780 = add nsw i32 %i.0.i771, -1
  %cmp12.not.i781 = icmp eq i32 %dec.i780, 0
  br i1 %cmp12.not.i781, label %drm_fixp_from_fraction.exit787, label %do.body.i782.do.body.i782_crit_edge

do.body.i782.do.body.i782_crit_edge:              ; preds = %do.body.i782
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i782

drm_fixp_from_fraction.exit787:                   ; preds = %do.body.i782
  %shl13.i783 = shl i64 %storemerge.i776, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %shl13.i783)
  %cmp14.i784 = icmp ugt i64 %shl13.i783, 99
  %6 = zext i1 %cmp14.i784 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i766) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i788) #7
  %7 = ptrtoint ptr %rem.i788 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %rem.i788, align 8, !annotation !176
  %call.i789 = call i64 @div64_u64_rem(i64 noundef 56, i64 noundef 100, ptr noundef nonnull %rem.i788) #7
  %8 = ptrtoint ptr %rem.i788 to i32
  call void @__asan_load8_noabort(i32 %8)
  %rem.promoted.i790 = load i64, ptr %rem.i788, align 8
  br label %do.body.i804

do.body.i804:                                     ; preds = %do.body.i804.do.body.i804_crit_edge, %drm_fixp_from_fraction.exit787
  %storemerge40.i791 = phi i64 [ %rem.promoted.i790, %drm_fixp_from_fraction.exit787 ], [ %storemerge.i798, %do.body.i804.do.body.i804_crit_edge ]
  %res_abs.0.i792 = phi i64 [ %call.i789, %drm_fixp_from_fraction.exit787 ], [ %res_abs.1.i801, %do.body.i804.do.body.i804_crit_edge ]
  %i.0.i793 = phi i32 [ 32, %drm_fixp_from_fraction.exit787 ], [ %dec.i802, %do.body.i804.do.body.i804_crit_edge ]
  %shl.i794 = shl i64 %storemerge40.i791, 1
  %shl9.i795 = shl i64 %res_abs.0.i792, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 100, i64 %shl.i794)
  %cmp10.not.i796 = icmp ult i64 %shl.i794, 100
  %sub11.i797.neg = select i1 %cmp10.not.i796, i64 0, i64 -100
  %storemerge.i798 = add i64 %sub11.i797.neg, %shl.i794
  %not.cmp10.not.i799 = xor i1 %cmp10.not.i796, true
  %or.i800 = zext i1 %not.cmp10.not.i799 to i64
  %res_abs.1.i801 = or i64 %shl9.i795, %or.i800
  %dec.i802 = add nsw i32 %i.0.i793, -1
  %cmp12.not.i803 = icmp eq i32 %dec.i802, 0
  br i1 %cmp12.not.i803, label %drm_fixp_from_fraction.exit809, label %do.body.i804.do.body.i804_crit_edge

do.body.i804.do.body.i804_crit_edge:              ; preds = %do.body.i804
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i804

drm_fixp_from_fraction.exit809:                   ; preds = %do.body.i804
  %add.i = add i64 %res_abs.1.i, %3
  %shl13.i805 = shl i64 %storemerge.i798, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %shl13.i805)
  %cmp14.i806 = icmp ugt i64 %shl13.i805, 99
  %9 = zext i1 %cmp14.i806 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i788) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i810) #7
  %10 = ptrtoint ptr %rem.i810 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %rem.i810, align 8, !annotation !176
  %call.i811 = call i64 @div64_u64_rem(i64 noundef 1001, i64 noundef 1000, ptr noundef nonnull %rem.i810) #7
  %11 = ptrtoint ptr %rem.i810 to i32
  call void @__asan_load8_noabort(i32 %11)
  %rem.promoted.i812 = load i64, ptr %rem.i810, align 8
  br label %do.body.i826

do.body.i826:                                     ; preds = %do.body.i826.do.body.i826_crit_edge, %drm_fixp_from_fraction.exit809
  %storemerge40.i813 = phi i64 [ %rem.promoted.i812, %drm_fixp_from_fraction.exit809 ], [ %storemerge.i820, %do.body.i826.do.body.i826_crit_edge ]
  %res_abs.0.i814 = phi i64 [ %call.i811, %drm_fixp_from_fraction.exit809 ], [ %res_abs.1.i823, %do.body.i826.do.body.i826_crit_edge ]
  %i.0.i815 = phi i32 [ 32, %drm_fixp_from_fraction.exit809 ], [ %dec.i824, %do.body.i826.do.body.i826_crit_edge ]
  %shl.i816 = shl i64 %storemerge40.i813, 1
  %shl9.i817 = shl i64 %res_abs.0.i814, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000, i64 %shl.i816)
  %cmp10.not.i818 = icmp ult i64 %shl.i816, 1000
  %sub11.i819.neg = select i1 %cmp10.not.i818, i64 0, i64 -1000
  %storemerge.i820 = add i64 %sub11.i819.neg, %shl.i816
  %not.cmp10.not.i821 = xor i1 %cmp10.not.i818, true
  %or.i822 = zext i1 %not.cmp10.not.i821 to i64
  %res_abs.1.i823 = or i64 %shl9.i817, %or.i822
  %dec.i824 = add nsw i32 %i.0.i815, -1
  %cmp12.not.i825 = icmp eq i32 %dec.i824, 0
  br i1 %cmp12.not.i825, label %drm_fixp_from_fraction.exit831, label %do.body.i826.do.body.i826_crit_edge

do.body.i826.do.body.i826_crit_edge:              ; preds = %do.body.i826
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i826

drm_fixp_from_fraction.exit831:                   ; preds = %do.body.i826
  %add.i785 = add i64 %res_abs.1.i779, %6
  %shl13.i827 = shl i64 %storemerge.i820, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 999, i64 %shl13.i827)
  %cmp14.i828 = icmp ugt i64 %shl13.i827, 999
  %12 = zext i1 %cmp14.i828 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i810) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i832) #7
  %13 = ptrtoint ptr %rem.i832 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %rem.i832, align 8, !annotation !176
  %call.i833 = call i64 @div64_u64_rem(i64 noundef 1, i64 noundef 10, ptr noundef nonnull %rem.i832) #7
  %add.i807 = add i64 %res_abs.1.i801, %9
  %add.i829 = add i64 %res_abs.1.i823, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i832) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 384) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %drm_fixp_from_fraction.exit831.cleanup_crit_edge, label %if.end

drm_fixp_from_fraction.exit831.cleanup_crit_edge: ; preds = %drm_fixp_from_fraction.exit831
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %drm_fixp_from_fraction.exit831
  %nlanes1.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 4
  %15 = ptrtoint ptr %nlanes1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nlanes1.i, align 8
  %num_of_dsc_slices.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 11
  %17 = ptrtoint ptr %num_of_dsc_slices.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_of_dsc_slices.i, align 4
  %19 = ptrtoint ptr %in to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %in, align 8
  %21 = call i64 @llvm.abs.i64(i64 %20, i1 false) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i.i) #7
  %22 = ptrtoint ptr %rem.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %rem.i.i, align 8, !annotation !176
  %call.i.i = call i64 @div64_u64_rem(i64 noundef %21, i64 noundef 1, ptr noundef nonnull %rem.i.i) #7
  %23 = ptrtoint ptr %rem.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %rem.promoted.i.i = load i64, ptr %rem.i.i, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end
  %storemerge40.i.i = phi i64 [ %rem.promoted.i.i, %if.end ], [ %storemerge.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %res_abs.0.i.i = phi i64 [ %call.i.i, %if.end ], [ %res_abs.1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %i.0.i.i = phi i32 [ 32, %if.end ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %shl.i.i = shl i64 %storemerge40.i.i, 1
  %shl9.i.i = shl i64 %res_abs.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i)
  %cmp10.not.i.i = icmp ne i64 %shl.i.i, 0
  %sub11.i.neg.i = sext i1 %cmp10.not.i.i to i64
  %storemerge.i.i = add i64 %shl.i.i, %sub11.i.neg.i
  %or.i.i = zext i1 %cmp10.not.i.i to i64
  %res_abs.1.i.i = or i64 %shl9.i.i, %or.i.i
  %dec.i.i = add nsw i32 %i.0.i.i, -1
  %cmp12.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp12.not.i.i, label %drm_fixp_from_fraction.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

drm_fixp_from_fraction.exit.i:                    ; preds = %do.body.i.i
  %shl13.i.mask.i = and i64 %storemerge.i.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i.mask.i)
  %cmp14.i.i = icmp ne i64 %shl13.i.mask.i, 0
  %24 = zext i1 %cmp14.i.i to i64
  %add.i.i = add i64 %res_abs.1.i.i, %24
  %sub22.i.i = sub i64 0, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool20.not39.i.i = icmp slt i64 %20, 0
  %spec.select.i.i = select i1 %tobool20.not39.i.i, i64 %sub22.i.i, i64 %add.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i.i) #7
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %spec.select.i.i, ptr %call7.i.i, align 8
  %pclk_khz.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 1
  %26 = ptrtoint ptr %pclk_khz.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pclk_khz.i, align 8
  %28 = call i64 @llvm.abs.i64(i64 %27, i1 false) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i155.i) #7
  %29 = ptrtoint ptr %rem.i155.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %rem.i155.i, align 8, !annotation !176
  %call.i156.i = call i64 @div64_u64_rem(i64 noundef %28, i64 noundef 1000, ptr noundef nonnull %rem.i155.i) #7
  %30 = ptrtoint ptr %rem.i155.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %rem.promoted.i157.i = load i64, ptr %rem.i155.i, align 8
  br label %do.body.i171.i

do.body.i171.i:                                   ; preds = %do.body.i171.i.do.body.i171.i_crit_edge, %drm_fixp_from_fraction.exit.i
  %storemerge40.i158.i = phi i64 [ %rem.promoted.i157.i, %drm_fixp_from_fraction.exit.i ], [ %storemerge.i165.i, %do.body.i171.i.do.body.i171.i_crit_edge ]
  %res_abs.0.i159.i = phi i64 [ %call.i156.i, %drm_fixp_from_fraction.exit.i ], [ %res_abs.1.i168.i, %do.body.i171.i.do.body.i171.i_crit_edge ]
  %i.0.i160.i = phi i32 [ 32, %drm_fixp_from_fraction.exit.i ], [ %dec.i169.i, %do.body.i171.i.do.body.i171.i_crit_edge ]
  %shl.i161.i = shl i64 %storemerge40.i158.i, 1
  %shl9.i162.i = shl i64 %res_abs.0.i159.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000, i64 %shl.i161.i)
  %cmp10.not.i163.i = icmp ult i64 %shl.i161.i, 1000
  %sub11.i164.neg.i = select i1 %cmp10.not.i163.i, i64 0, i64 -1000
  %storemerge.i165.i = add i64 %sub11.i164.neg.i, %shl.i161.i
  %not.cmp10.not.i166.i = xor i1 %cmp10.not.i163.i, true
  %or.i167.i = zext i1 %not.cmp10.not.i166.i to i64
  %res_abs.1.i168.i = or i64 %shl9.i162.i, %or.i167.i
  %dec.i169.i = add nsw i32 %i.0.i160.i, -1
  %cmp12.not.i170.i = icmp eq i32 %dec.i169.i, 0
  br i1 %cmp12.not.i170.i, label %drm_fixp_from_fraction.exit179.i, label %do.body.i171.i.do.body.i171.i_crit_edge

do.body.i171.i.do.body.i171.i_crit_edge:          ; preds = %do.body.i171.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i171.i

drm_fixp_from_fraction.exit179.i:                 ; preds = %do.body.i171.i
  %shl13.i172.i = shl i64 %storemerge.i165.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 999, i64 %shl13.i172.i)
  %cmp14.i173.i = icmp ugt i64 %shl13.i172.i, 999
  %31 = zext i1 %cmp14.i173.i to i64
  %add.i174.i = add i64 %res_abs.1.i168.i, %31
  %sub22.i176.i = sub i64 0, %add.i174.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool20.not39.i177.i = icmp slt i64 %27, 0
  %spec.select.i178.i = select i1 %tobool20.not39.i177.i, i64 %sub22.i176.i, i64 %add.i174.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i155.i) #7
  %pclk_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %spec.select.i178.i, ptr %pclk_fp.i, align 8
  %hactive.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 2
  %33 = ptrtoint ptr %hactive.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %hactive.i, align 8
  %lwidth.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %lwidth.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %lwidth.i, align 8
  %hporch.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 3
  %36 = ptrtoint ptr %hporch.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %hporch.i, align 8
  %hbp_relative_to_pclk.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %hbp_relative_to_pclk.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %hbp_relative_to_pclk.i, align 8
  %39 = ptrtoint ptr %nlanes1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nlanes1.i, align 8
  %nlanes4.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %nlanes4.i, align 8
  %bpp.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 5
  %42 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bpp.i, align 4
  %bpp5.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bpp5.i, align 4
  %pixel_enc.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 6
  %45 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixel_enc.i, align 8
  %pixelEnc.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 8
  %47 = ptrtoint ptr %pixelEnc.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %pixelEnc.i, align 8
  %dsc_en.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 7
  %48 = ptrtoint ptr %dsc_en.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dsc_en.i, align 4
  %dsc_en6.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %dsc_en6.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dsc_en6.i, align 4
  %async_en.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 8
  %51 = ptrtoint ptr %async_en.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %async_en.i, align 8
  %async_en7.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 10
  %53 = ptrtoint ptr %async_en7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %async_en7.i, align 8
  %54 = call i64 @llvm.abs.i64(i64 %34, i1 false) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i180.i) #7
  %55 = ptrtoint ptr %rem.i180.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %rem.i180.i, align 8, !annotation !176
  %call.i181.i = call i64 @div64_u64_rem(i64 noundef %54, i64 noundef 1, ptr noundef nonnull %rem.i180.i) #7
  %56 = ptrtoint ptr %rem.i180.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %rem.promoted.i182.i = load i64, ptr %rem.i180.i, align 8
  br label %do.body.i196.i

do.body.i196.i:                                   ; preds = %do.body.i196.i.do.body.i196.i_crit_edge, %drm_fixp_from_fraction.exit179.i
  %storemerge40.i183.i = phi i64 [ %rem.promoted.i182.i, %drm_fixp_from_fraction.exit179.i ], [ %storemerge.i190.i, %do.body.i196.i.do.body.i196.i_crit_edge ]
  %res_abs.0.i184.i = phi i64 [ %call.i181.i, %drm_fixp_from_fraction.exit179.i ], [ %res_abs.1.i193.i, %do.body.i196.i.do.body.i196.i_crit_edge ]
  %i.0.i185.i = phi i32 [ 32, %drm_fixp_from_fraction.exit179.i ], [ %dec.i194.i, %do.body.i196.i.do.body.i196.i_crit_edge ]
  %shl.i186.i = shl i64 %storemerge40.i183.i, 1
  %shl9.i187.i = shl i64 %res_abs.0.i184.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i186.i)
  %cmp10.not.i188.i = icmp ne i64 %shl.i186.i, 0
  %sub11.i189.neg.i = sext i1 %cmp10.not.i188.i to i64
  %storemerge.i190.i = add i64 %shl.i186.i, %sub11.i189.neg.i
  %or.i192.i = zext i1 %cmp10.not.i188.i to i64
  %res_abs.1.i193.i = or i64 %shl9.i187.i, %or.i192.i
  %dec.i194.i = add nsw i32 %i.0.i185.i, -1
  %cmp12.not.i195.i = icmp eq i32 %dec.i194.i, 0
  br i1 %cmp12.not.i195.i, label %drm_fixp_from_fraction.exit204.i, label %do.body.i196.i.do.body.i196.i_crit_edge

do.body.i196.i.do.body.i196.i_crit_edge:          ; preds = %do.body.i196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i196.i

drm_fixp_from_fraction.exit204.i:                 ; preds = %do.body.i196.i
  %shl13.i197.mask.i = and i64 %storemerge.i190.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i197.mask.i)
  %cmp14.i198.i = icmp ne i64 %shl13.i197.mask.i, 0
  %57 = zext i1 %cmp14.i198.i to i64
  %add.i199.i = add i64 %res_abs.1.i193.i, %57
  %sub22.i201.i = sub i64 0, %add.i199.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool20.not39.i202.i = icmp slt i64 %34, 0
  %spec.select.i203.i = select i1 %tobool20.not39.i202.i, i64 %sub22.i201.i, i64 %add.i199.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i180.i) #7
  %lwidth_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %spec.select.i203.i, ptr %lwidth_fp.i, align 8
  %59 = ptrtoint ptr %hporch.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %hporch.i, align 8
  %61 = call i64 @llvm.abs.i64(i64 %60, i1 false) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i205.i) #7
  %62 = ptrtoint ptr %rem.i205.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 -1, ptr %rem.i205.i, align 8, !annotation !176
  %call.i206.i = call i64 @div64_u64_rem(i64 noundef %61, i64 noundef 1, ptr noundef nonnull %rem.i205.i) #7
  %63 = ptrtoint ptr %rem.i205.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %rem.promoted.i207.i = load i64, ptr %rem.i205.i, align 8
  br label %do.body.i221.i

do.body.i221.i:                                   ; preds = %do.body.i221.i.do.body.i221.i_crit_edge, %drm_fixp_from_fraction.exit204.i
  %storemerge40.i208.i = phi i64 [ %rem.promoted.i207.i, %drm_fixp_from_fraction.exit204.i ], [ %storemerge.i215.i, %do.body.i221.i.do.body.i221.i_crit_edge ]
  %res_abs.0.i209.i = phi i64 [ %call.i206.i, %drm_fixp_from_fraction.exit204.i ], [ %res_abs.1.i218.i, %do.body.i221.i.do.body.i221.i_crit_edge ]
  %i.0.i210.i = phi i32 [ 32, %drm_fixp_from_fraction.exit204.i ], [ %dec.i219.i, %do.body.i221.i.do.body.i221.i_crit_edge ]
  %shl.i211.i = shl i64 %storemerge40.i208.i, 1
  %shl9.i212.i = shl i64 %res_abs.0.i209.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i211.i)
  %cmp10.not.i213.i = icmp ne i64 %shl.i211.i, 0
  %sub11.i214.neg.i = sext i1 %cmp10.not.i213.i to i64
  %storemerge.i215.i = add i64 %shl.i211.i, %sub11.i214.neg.i
  %or.i217.i = zext i1 %cmp10.not.i213.i to i64
  %res_abs.1.i218.i = or i64 %shl9.i212.i, %or.i217.i
  %dec.i219.i = add nsw i32 %i.0.i210.i, -1
  %cmp12.not.i220.i = icmp eq i32 %dec.i219.i, 0
  br i1 %cmp12.not.i220.i, label %drm_fixp_from_fraction.exit229.i, label %do.body.i221.i.do.body.i221.i_crit_edge

do.body.i221.i.do.body.i221.i_crit_edge:          ; preds = %do.body.i221.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i221.i

drm_fixp_from_fraction.exit229.i:                 ; preds = %do.body.i221.i
  %shl13.i222.mask.i = and i64 %storemerge.i215.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i222.mask.i)
  %cmp14.i223.i = icmp ne i64 %shl13.i222.mask.i, 0
  %64 = zext i1 %cmp14.i223.i to i64
  %add.i224.i = add i64 %res_abs.1.i218.i, %64
  %sub22.i226.i = sub i64 0, %add.i224.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool20.not39.i227.i = icmp slt i64 %60, 0
  %spec.select.i228.i = select i1 %tobool20.not39.i227.i, i64 %sub22.i226.i, i64 %add.i224.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i205.i) #7
  %hbp_relative_to_pclk_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 5
  %65 = ptrtoint ptr %hbp_relative_to_pclk_fp.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %spec.select.i228.i, ptr %hbp_relative_to_pclk_fp.i, align 8
  %66 = ptrtoint ptr %pixelEnc.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pixelEnc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 420, i32 %67)
  %cmp.i = icmp eq i32 %67, 420
  br i1 %cmp.i, label %if.then.i, label %drm_fixp_from_fraction.exit229.i.if.end.i_crit_edge

drm_fixp_from_fraction.exit229.i.if.end.i_crit_edge: ; preds = %drm_fixp_from_fraction.exit229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %drm_fixp_from_fraction.exit229.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i230.i) #7
  %68 = ptrtoint ptr %rem.i230.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 -1, ptr %rem.i230.i, align 8, !annotation !176
  %call.i231.i = call i64 @div64_u64_rem(i64 noundef 2, i64 noundef 1, ptr noundef nonnull %rem.i230.i) #7
  %69 = ptrtoint ptr %rem.i230.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %rem.promoted.i232.i = load i64, ptr %rem.i230.i, align 8
  br label %do.body.i246.i

do.body.i246.i:                                   ; preds = %do.body.i246.i.do.body.i246.i_crit_edge, %if.then.i
  %storemerge40.i233.i = phi i64 [ %rem.promoted.i232.i, %if.then.i ], [ %storemerge.i240.i, %do.body.i246.i.do.body.i246.i_crit_edge ]
  %res_abs.0.i234.i = phi i64 [ %call.i231.i, %if.then.i ], [ %res_abs.1.i243.i, %do.body.i246.i.do.body.i246.i_crit_edge ]
  %i.0.i235.i = phi i32 [ 32, %if.then.i ], [ %dec.i244.i, %do.body.i246.i.do.body.i246.i_crit_edge ]
  %shl.i236.i = shl i64 %storemerge40.i233.i, 1
  %shl9.i237.i = shl i64 %res_abs.0.i234.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i236.i)
  %cmp10.not.i238.i = icmp ne i64 %shl.i236.i, 0
  %sub11.i239.neg.i = sext i1 %cmp10.not.i238.i to i64
  %storemerge.i240.i = add i64 %shl.i236.i, %sub11.i239.neg.i
  %or.i242.i = zext i1 %cmp10.not.i238.i to i64
  %res_abs.1.i243.i = or i64 %shl9.i237.i, %or.i242.i
  %dec.i244.i = add nsw i32 %i.0.i235.i, -1
  %cmp12.not.i245.i = icmp eq i32 %dec.i244.i, 0
  br i1 %cmp12.not.i245.i, label %drm_fixp_from_fraction.exit251.i, label %do.body.i246.i.do.body.i246.i_crit_edge

do.body.i246.i.do.body.i246.i_crit_edge:          ; preds = %do.body.i246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i246.i

drm_fixp_from_fraction.exit251.i:                 ; preds = %do.body.i246.i
  %shl13.i247.mask.i = and i64 %storemerge.i240.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i247.mask.i)
  %cmp14.i248.i = icmp ne i64 %shl13.i247.mask.i, 0
  %70 = zext i1 %cmp14.i248.i to i64
  %add.i249.i = add i64 %res_abs.1.i243.i, %70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i230.i) #7
  %71 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i.i = lshr i64 %72, 63
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %drm_fixp_from_fraction.exit251.i
  %shift.014.i.i.i = phi i32 [ 62, %drm_fixp_from_fraction.exit251.i ], [ %dec.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %sh_prom.i.i.i = zext i32 %shift.014.i.i.i to i64
  %shr213.i.i.i = lshr i64 %72, %sh_prom.i.i.i
  %and3.i.i.i = and i64 %shr213.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i.i, i64 %shr12.i.i.i)
  %cmp5.not.i.i.i = icmp eq i64 %and3.i.i.i, %shr12.i.i.i
  br i1 %cmp5.not.i.i.i, label %for.inc.i.i.i, label %for.body.i.i.i.drm_fixp_div.exit.i_crit_edge

for.body.i.i.i.drm_fixp_div.exit.i_crit_edge:     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %dec.i.i.i = add nsw i32 %shift.014.i.i.i, -1
  %cmp.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.drm_fixp_div.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.drm_fixp_div.exit.i_crit_edge:      ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit.i

drm_fixp_div.exit.i:                              ; preds = %for.inc.i.i.i.drm_fixp_div.exit.i_crit_edge, %for.body.i.i.i.drm_fixp_div.exit.i_crit_edge
  %shift.0.lcssa.i.i.i = phi i32 [ 0, %for.inc.i.i.i.drm_fixp_div.exit.i_crit_edge ], [ %shift.014.i.i.i, %for.body.i.i.i.drm_fixp_div.exit.i_crit_edge ]
  %sub.i.i = sub i32 62, %shift.0.lcssa.i.i.i
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i252.i = shl i64 %72, %sh_prom.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.i.i, 32
  %sub1.i.i = add i32 %shift.0.lcssa.i.i.i, -30
  %narrow.i.i = select i1 %cmp.i.i, i32 %sub1.i.i, i32 0
  %shr.i.i = zext i32 %narrow.i.i to i64
  %b.addr.0.i.i = ashr i64 %add.i249.i, %shr.i.i
  %call3.i.i = call i64 @div64_s64(i64 noundef %shl.i252.i, i64 noundef %b.addr.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i)
  %cmp4.i.i = icmp ugt i32 %sub.i.i, 32
  %sub6.i.i = sub i32 30, %shift.0.lcssa.i.i.i
  %narrow19.i.i = select i1 %cmp4.i.i, i32 %sub6.i.i, i32 0
  %shr8.i.i = zext i32 %narrow19.i.i to i64
  %retval.0.i.i = ashr i64 %call3.i.i, %shr8.i.i
  %73 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %retval.0.i.i, ptr %pclk_fp.i, align 8
  %74 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i253.i = lshr i64 %75, 63
  br label %for.body.i.i259.i

for.body.i.i259.i:                                ; preds = %for.inc.i.i262.i.for.body.i.i259.i_crit_edge, %drm_fixp_div.exit.i
  %shift.014.i.i254.i = phi i32 [ 62, %drm_fixp_div.exit.i ], [ %dec.i.i260.i, %for.inc.i.i262.i.for.body.i.i259.i_crit_edge ]
  %sh_prom.i.i255.i = zext i32 %shift.014.i.i254.i to i64
  %shr213.i.i256.i = lshr i64 %75, %sh_prom.i.i255.i
  %and3.i.i257.i = and i64 %shr213.i.i256.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i257.i, i64 %shr12.i.i253.i)
  %cmp5.not.i.i258.i = icmp eq i64 %and3.i.i257.i, %shr12.i.i253.i
  br i1 %cmp5.not.i.i258.i, label %for.inc.i.i262.i, label %for.body.i.i259.i.drm_fixp_div.exit278.i_crit_edge

for.body.i.i259.i.drm_fixp_div.exit278.i_crit_edge: ; preds = %for.body.i.i259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit278.i

for.inc.i.i262.i:                                 ; preds = %for.body.i.i259.i
  %dec.i.i260.i = add nsw i32 %shift.014.i.i254.i, -1
  %cmp.not.i.i261.i = icmp eq i32 %dec.i.i260.i, 0
  br i1 %cmp.not.i.i261.i, label %for.inc.i.i262.i.drm_fixp_div.exit278.i_crit_edge, label %for.inc.i.i262.i.for.body.i.i259.i_crit_edge

for.inc.i.i262.i.for.body.i.i259.i_crit_edge:     ; preds = %for.inc.i.i262.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i259.i

for.inc.i.i262.i.drm_fixp_div.exit278.i_crit_edge: ; preds = %for.inc.i.i262.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit278.i

drm_fixp_div.exit278.i:                           ; preds = %for.inc.i.i262.i.drm_fixp_div.exit278.i_crit_edge, %for.body.i.i259.i.drm_fixp_div.exit278.i_crit_edge
  %shift.0.lcssa.i.i263.i = phi i32 [ 0, %for.inc.i.i262.i.drm_fixp_div.exit278.i_crit_edge ], [ %shift.014.i.i254.i, %for.body.i.i259.i.drm_fixp_div.exit278.i_crit_edge ]
  %sub.i264.i = sub i32 62, %shift.0.lcssa.i.i263.i
  %sh_prom.i265.i = zext i32 %sub.i264.i to i64
  %shl.i266.i = shl i64 %75, %sh_prom.i265.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i264.i)
  %cmp.i267.i = icmp ult i32 %sub.i264.i, 32
  %sub1.i268.i = add i32 %shift.0.lcssa.i.i263.i, -30
  %narrow.i269.i = select i1 %cmp.i267.i, i32 %sub1.i268.i, i32 0
  %shr.i270.i = zext i32 %narrow.i269.i to i64
  %b.addr.0.i271.i = ashr i64 %add.i249.i, %shr.i270.i
  %call3.i272.i = call i64 @div64_s64(i64 noundef %shl.i266.i, i64 noundef %b.addr.0.i271.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i264.i)
  %cmp4.i273.i = icmp ugt i32 %sub.i264.i, 32
  %sub6.i274.i = sub i32 30, %shift.0.lcssa.i.i263.i
  %narrow19.i275.i = select i1 %cmp4.i273.i, i32 %sub6.i274.i, i32 0
  %shr8.i276.i = zext i32 %narrow19.i275.i to i64
  %retval.0.i277.i = ashr i64 %call3.i272.i, %shr8.i276.i
  %76 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %retval.0.i277.i, ptr %lwidth_fp.i, align 8
  %77 = ptrtoint ptr %hbp_relative_to_pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %hbp_relative_to_pclk_fp.i, align 8
  %shr12.i.i279.i = lshr i64 %78, 63
  br label %for.body.i.i285.i

for.body.i.i285.i:                                ; preds = %for.inc.i.i288.i.for.body.i.i285.i_crit_edge, %drm_fixp_div.exit278.i
  %shift.014.i.i280.i = phi i32 [ 62, %drm_fixp_div.exit278.i ], [ %dec.i.i286.i, %for.inc.i.i288.i.for.body.i.i285.i_crit_edge ]
  %sh_prom.i.i281.i = zext i32 %shift.014.i.i280.i to i64
  %shr213.i.i282.i = lshr i64 %78, %sh_prom.i.i281.i
  %and3.i.i283.i = and i64 %shr213.i.i282.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i283.i, i64 %shr12.i.i279.i)
  %cmp5.not.i.i284.i = icmp eq i64 %and3.i.i283.i, %shr12.i.i279.i
  br i1 %cmp5.not.i.i284.i, label %for.inc.i.i288.i, label %for.body.i.i285.i.drm_fixp_div.exit304.i_crit_edge

for.body.i.i285.i.drm_fixp_div.exit304.i_crit_edge: ; preds = %for.body.i.i285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit304.i

for.inc.i.i288.i:                                 ; preds = %for.body.i.i285.i
  %dec.i.i286.i = add nsw i32 %shift.014.i.i280.i, -1
  %cmp.not.i.i287.i = icmp eq i32 %dec.i.i286.i, 0
  br i1 %cmp.not.i.i287.i, label %for.inc.i.i288.i.drm_fixp_div.exit304.i_crit_edge, label %for.inc.i.i288.i.for.body.i.i285.i_crit_edge

for.inc.i.i288.i.for.body.i.i285.i_crit_edge:     ; preds = %for.inc.i.i288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i285.i

for.inc.i.i288.i.drm_fixp_div.exit304.i_crit_edge: ; preds = %for.inc.i.i288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit304.i

drm_fixp_div.exit304.i:                           ; preds = %for.inc.i.i288.i.drm_fixp_div.exit304.i_crit_edge, %for.body.i.i285.i.drm_fixp_div.exit304.i_crit_edge
  %shift.0.lcssa.i.i289.i = phi i32 [ 0, %for.inc.i.i288.i.drm_fixp_div.exit304.i_crit_edge ], [ %shift.014.i.i280.i, %for.body.i.i285.i.drm_fixp_div.exit304.i_crit_edge ]
  %sub.i290.i = sub i32 62, %shift.0.lcssa.i.i289.i
  %sh_prom.i291.i = zext i32 %sub.i290.i to i64
  %shl.i292.i = shl i64 %78, %sh_prom.i291.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i290.i)
  %cmp.i293.i = icmp ult i32 %sub.i290.i, 32
  %sub1.i294.i = add i32 %shift.0.lcssa.i.i289.i, -30
  %narrow.i295.i = select i1 %cmp.i293.i, i32 %sub1.i294.i, i32 0
  %shr.i296.i = zext i32 %narrow.i295.i to i64
  %b.addr.0.i297709.i = lshr i64 2, %shr.i296.i
  %call3.i298.i = call i64 @div64_s64(i64 noundef %shl.i292.i, i64 noundef %b.addr.0.i297709.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i290.i)
  %cmp4.i299.i = icmp ugt i32 %sub.i290.i, 32
  %sub6.i300.i = sub i32 30, %shift.0.lcssa.i.i289.i
  %narrow19.i301.i = select i1 %cmp4.i299.i, i32 %sub6.i300.i, i32 0
  %shr8.i302.i = zext i32 %narrow19.i301.i to i64
  %retval.0.i303.i = ashr i64 %call3.i298.i, %shr8.i302.i
  %79 = ptrtoint ptr %hbp_relative_to_pclk_fp.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %retval.0.i303.i, ptr %hbp_relative_to_pclk_fp.i, align 8
  %80 = ptrtoint ptr %pixelEnc.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr.i = load i32, ptr %pixelEnc.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %drm_fixp_div.exit304.i, %drm_fixp_from_fraction.exit229.i.if.end.i_crit_edge
  %81 = phi i32 [ %.pr.i, %drm_fixp_div.exit304.i ], [ %67, %drm_fixp_from_fraction.exit229.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 422, i32 %81)
  %cmp24.i = icmp eq i32 %81, 422
  %82 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bpp5.i, align 4
  br i1 %cmp24.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.end.i
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %83, label %sw.default.i [
    i32 24, label %sw.bb.i
    i32 30, label %sw.bb28.i
  ]

sw.bb.i:                                          ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 16, ptr %bpp5.i, align 4
  br label %if.end35.i

sw.bb28.i:                                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 20, ptr %bpp5.i, align 4
  br label %if.end35.i

sw.default.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 16, ptr %bpp5.i, align 4
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = sdiv i32 %83, 3
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i, %sw.default.i, %sw.bb28.i, %sw.bb.i
  %.sink.i = phi i32 [ 8, %sw.bb.i ], [ 10, %sw.bb28.i ], [ 8, %sw.default.i ], [ %div.i, %if.else.i ]
  %bpc.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 11
  %88 = ptrtoint ptr %bpc.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.sink.i, ptr %bpc.i, align 4
  %89 = ptrtoint ptr %dsc_en.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dsc_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i, label %if.end35.i.fec_check.i_crit_edge, label %if.end38.i

if.end35.i.fec_check.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fec_check.i

if.end38.i:                                       ; preds = %if.end35.i
  %compress_ratio.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 10
  %91 = ptrtoint ptr %compress_ratio.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %compress_ratio.i, align 8
  %93 = call i32 @llvm.abs.i32(i32 %92, i1 false) #7
  %94 = zext i32 %93 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i305.i) #7
  %95 = ptrtoint ptr %rem.i305.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 -1, ptr %rem.i305.i, align 8, !annotation !176
  %call.i306.i = call i64 @div64_u64_rem(i64 noundef %94, i64 noundef 100, ptr noundef nonnull %rem.i305.i) #7
  %96 = ptrtoint ptr %rem.i305.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %rem.promoted.i307.i = load i64, ptr %rem.i305.i, align 8
  br label %do.body.i321.i

do.body.i321.i:                                   ; preds = %do.body.i321.i.do.body.i321.i_crit_edge, %if.end38.i
  %storemerge40.i308.i = phi i64 [ %rem.promoted.i307.i, %if.end38.i ], [ %storemerge.i315.i, %do.body.i321.i.do.body.i321.i_crit_edge ]
  %res_abs.0.i309.i = phi i64 [ %call.i306.i, %if.end38.i ], [ %res_abs.1.i318.i, %do.body.i321.i.do.body.i321.i_crit_edge ]
  %i.0.i310.i = phi i32 [ 32, %if.end38.i ], [ %dec.i319.i, %do.body.i321.i.do.body.i321.i_crit_edge ]
  %shl.i311.i = shl i64 %storemerge40.i308.i, 1
  %shl9.i312.i = shl i64 %res_abs.0.i309.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 100, i64 %shl.i311.i)
  %cmp10.not.i313.i = icmp ult i64 %shl.i311.i, 100
  %sub11.i314.neg.i = select i1 %cmp10.not.i313.i, i64 0, i64 -100
  %storemerge.i315.i = add i64 %sub11.i314.neg.i, %shl.i311.i
  %not.cmp10.not.i316.i = xor i1 %cmp10.not.i313.i, true
  %or.i317.i = zext i1 %not.cmp10.not.i316.i to i64
  %res_abs.1.i318.i = or i64 %shl9.i312.i, %or.i317.i
  %dec.i319.i = add nsw i32 %i.0.i310.i, -1
  %cmp12.not.i320.i = icmp eq i32 %dec.i319.i, 0
  br i1 %cmp12.not.i320.i, label %drm_fixp_from_fraction.exit329.i, label %do.body.i321.i.do.body.i321.i_crit_edge

do.body.i321.i.do.body.i321.i_crit_edge:          ; preds = %do.body.i321.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i321.i

drm_fixp_from_fraction.exit329.i:                 ; preds = %do.body.i321.i
  %shl13.i322.i = shl i64 %storemerge.i315.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 99, i64 %shl13.i322.i)
  %cmp14.i323.i = icmp ugt i64 %shl13.i322.i, 99
  %97 = zext i1 %cmp14.i323.i to i64
  %add.i324.i = add i64 %res_abs.1.i318.i, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i305.i) #7
  %98 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bpp.i, align 4
  %100 = call i32 @llvm.abs.i32(i32 %99, i1 false) #7
  %101 = zext i32 %100 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i330.i) #7
  %102 = ptrtoint ptr %rem.i330.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 -1, ptr %rem.i330.i, align 8, !annotation !176
  %call.i331.i = call i64 @div64_u64_rem(i64 noundef %101, i64 noundef 1, ptr noundef nonnull %rem.i330.i) #7
  %103 = ptrtoint ptr %rem.i330.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %rem.promoted.i332.i = load i64, ptr %rem.i330.i, align 8
  br label %do.body.i346.i

do.body.i346.i:                                   ; preds = %do.body.i346.i.do.body.i346.i_crit_edge, %drm_fixp_from_fraction.exit329.i
  %storemerge40.i333.i = phi i64 [ %rem.promoted.i332.i, %drm_fixp_from_fraction.exit329.i ], [ %storemerge.i340.i, %do.body.i346.i.do.body.i346.i_crit_edge ]
  %res_abs.0.i334.i = phi i64 [ %call.i331.i, %drm_fixp_from_fraction.exit329.i ], [ %res_abs.1.i343.i, %do.body.i346.i.do.body.i346.i_crit_edge ]
  %i.0.i335.i = phi i32 [ 32, %drm_fixp_from_fraction.exit329.i ], [ %dec.i344.i, %do.body.i346.i.do.body.i346.i_crit_edge ]
  %shl.i336.i = shl i64 %storemerge40.i333.i, 1
  %shl9.i337.i = shl i64 %res_abs.0.i334.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i336.i)
  %cmp10.not.i338.i = icmp ne i64 %shl.i336.i, 0
  %sub11.i339.neg.i = sext i1 %cmp10.not.i338.i to i64
  %storemerge.i340.i = add i64 %shl.i336.i, %sub11.i339.neg.i
  %or.i342.i = zext i1 %cmp10.not.i338.i to i64
  %res_abs.1.i343.i = or i64 %shl9.i337.i, %or.i342.i
  %dec.i344.i = add nsw i32 %i.0.i335.i, -1
  %cmp12.not.i345.i = icmp eq i32 %dec.i344.i, 0
  br i1 %cmp12.not.i345.i, label %drm_fixp_from_fraction.exit354.i, label %do.body.i346.i.do.body.i346.i_crit_edge

do.body.i346.i.do.body.i346.i_crit_edge:          ; preds = %do.body.i346.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i346.i

drm_fixp_from_fraction.exit354.i:                 ; preds = %do.body.i346.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool20.not39.i327.i = icmp slt i32 %92, 0
  %sub22.i326.i = sub i64 0, %add.i324.i
  %spec.select.i328.i = select i1 %tobool20.not39.i327.i, i64 %sub22.i326.i, i64 %add.i324.i
  %shl13.i347.mask.i = and i64 %storemerge.i340.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i347.mask.i)
  %cmp14.i348.i = icmp ne i64 %shl13.i347.mask.i, 0
  %104 = zext i1 %cmp14.i348.i to i64
  %add.i349.i = add i64 %res_abs.1.i343.i, %104
  %sub22.i351.i = sub i64 0, %add.i349.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool20.not39.i352.i = icmp slt i32 %99, 0
  %spec.select.i353.i = select i1 %tobool20.not39.i352.i, i64 %sub22.i351.i, i64 %add.i349.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i330.i) #7
  %shr12.i.i355.i = lshr i64 %spec.select.i353.i, 63
  br label %for.body.i.i361.i

for.body.i.i361.i:                                ; preds = %for.inc.i.i364.i.for.body.i.i361.i_crit_edge, %drm_fixp_from_fraction.exit354.i
  %shift.014.i.i356.i = phi i32 [ 62, %drm_fixp_from_fraction.exit354.i ], [ %dec.i.i362.i, %for.inc.i.i364.i.for.body.i.i361.i_crit_edge ]
  %sh_prom.i.i357.i = zext i32 %shift.014.i.i356.i to i64
  %shr213.i.i358.i = lshr i64 %spec.select.i353.i, %sh_prom.i.i357.i
  %and3.i.i359.i = and i64 %shr213.i.i358.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i359.i, i64 %shr12.i.i355.i)
  %cmp5.not.i.i360.i = icmp eq i64 %and3.i.i359.i, %shr12.i.i355.i
  br i1 %cmp5.not.i.i360.i, label %for.inc.i.i364.i, label %for.body.i.i361.i.drm_fixp_div.exit380.i_crit_edge

for.body.i.i361.i.drm_fixp_div.exit380.i_crit_edge: ; preds = %for.body.i.i361.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit380.i

for.inc.i.i364.i:                                 ; preds = %for.body.i.i361.i
  %dec.i.i362.i = add nsw i32 %shift.014.i.i356.i, -1
  %cmp.not.i.i363.i = icmp eq i32 %dec.i.i362.i, 0
  br i1 %cmp.not.i.i363.i, label %for.inc.i.i364.i.drm_fixp_div.exit380.i_crit_edge, label %for.inc.i.i364.i.for.body.i.i361.i_crit_edge

for.inc.i.i364.i.for.body.i.i361.i_crit_edge:     ; preds = %for.inc.i.i364.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i361.i

for.inc.i.i364.i.drm_fixp_div.exit380.i_crit_edge: ; preds = %for.inc.i.i364.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit380.i

drm_fixp_div.exit380.i:                           ; preds = %for.inc.i.i364.i.drm_fixp_div.exit380.i_crit_edge, %for.body.i.i361.i.drm_fixp_div.exit380.i_crit_edge
  %shift.0.lcssa.i.i365.i = phi i32 [ 0, %for.inc.i.i364.i.drm_fixp_div.exit380.i_crit_edge ], [ %shift.014.i.i356.i, %for.body.i.i361.i.drm_fixp_div.exit380.i_crit_edge ]
  %sub.i366.i = sub i32 62, %shift.0.lcssa.i.i365.i
  %sh_prom.i367.i = zext i32 %sub.i366.i to i64
  %shl.i368.i = shl i64 %spec.select.i353.i, %sh_prom.i367.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i366.i)
  %cmp.i369.i = icmp ult i32 %sub.i366.i, 32
  %sub1.i370.i = add i32 %shift.0.lcssa.i.i365.i, -30
  %narrow.i371.i = select i1 %cmp.i369.i, i32 %sub1.i370.i, i32 0
  %shr.i372.i = zext i32 %narrow.i371.i to i64
  %b.addr.0.i373.i = ashr i64 %spec.select.i328.i, %shr.i372.i
  %call3.i374.i = call i64 @div64_s64(i64 noundef %shl.i368.i, i64 noundef %b.addr.0.i373.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i366.i)
  %cmp4.i375.i = icmp ugt i32 %sub.i366.i, 32
  %sub6.i376.i = sub i32 30, %shift.0.lcssa.i.i365.i
  %narrow19.i377.i = select i1 %cmp4.i375.i, i32 %sub6.i376.i, i32 0
  %shr8.i378.i = zext i32 %narrow19.i377.i to i64
  %retval.0.i379.i = ashr i64 %call3.i374.i, %shr8.i378.i
  %105 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i381.i = lshr i64 %106, 63
  br label %for.body.i.i387.i

for.body.i.i387.i:                                ; preds = %for.inc.i.i390.i.for.body.i.i387.i_crit_edge, %drm_fixp_div.exit380.i
  %shift.014.i.i382.i = phi i32 [ 62, %drm_fixp_div.exit380.i ], [ %dec.i.i388.i, %for.inc.i.i390.i.for.body.i.i387.i_crit_edge ]
  %sh_prom.i.i383.i = zext i32 %shift.014.i.i382.i to i64
  %shr213.i.i384.i = lshr i64 %106, %sh_prom.i.i383.i
  %and3.i.i385.i = and i64 %shr213.i.i384.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i385.i, i64 %shr12.i.i381.i)
  %cmp5.not.i.i386.i = icmp eq i64 %and3.i.i385.i, %shr12.i.i381.i
  br i1 %cmp5.not.i.i386.i, label %for.inc.i.i390.i, label %for.body.i.i387.i.drm_fixp_msbset.exit.i.i_crit_edge

for.body.i.i387.i.drm_fixp_msbset.exit.i.i_crit_edge: ; preds = %for.body.i.i387.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i.i

for.inc.i.i390.i:                                 ; preds = %for.body.i.i387.i
  %dec.i.i388.i = add nsw i32 %shift.014.i.i382.i, -1
  %cmp.not.i.i389.i = icmp eq i32 %dec.i.i388.i, 0
  br i1 %cmp.not.i.i389.i, label %for.inc.i.i390.i.drm_fixp_msbset.exit.i.i_crit_edge, label %for.inc.i.i390.i.for.body.i.i387.i_crit_edge

for.inc.i.i390.i.for.body.i.i387.i_crit_edge:     ; preds = %for.inc.i.i390.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i387.i

for.inc.i.i390.i.drm_fixp_msbset.exit.i.i_crit_edge: ; preds = %for.inc.i.i390.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i.i

drm_fixp_msbset.exit.i.i:                         ; preds = %for.inc.i.i390.i.drm_fixp_msbset.exit.i.i_crit_edge, %for.body.i.i387.i.drm_fixp_msbset.exit.i.i_crit_edge
  %shift.0.lcssa.i.i391.i = phi i32 [ 0, %for.inc.i.i390.i.drm_fixp_msbset.exit.i.i_crit_edge ], [ %shift.014.i.i382.i, %for.body.i.i387.i.drm_fixp_msbset.exit.i.i_crit_edge ]
  %shr12.i33.i.i = lshr i64 %retval.0.i379.i, 63
  br label %for.body.i39.i.i

for.body.i39.i.i:                                 ; preds = %for.inc.i42.i.i.for.body.i39.i.i_crit_edge, %drm_fixp_msbset.exit.i.i
  %shift.014.i34.i.i = phi i32 [ 62, %drm_fixp_msbset.exit.i.i ], [ %dec.i40.i.i, %for.inc.i42.i.i.for.body.i39.i.i_crit_edge ]
  %sh_prom.i35.i.i = zext i32 %shift.014.i34.i.i to i64
  %shr213.i36.i.i = lshr i64 %retval.0.i379.i, %sh_prom.i35.i.i
  %and3.i37.i.i = and i64 %shr213.i36.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i.i, i64 %shr12.i33.i.i)
  %cmp5.not.i38.i.i = icmp eq i64 %and3.i37.i.i, %shr12.i33.i.i
  br i1 %cmp5.not.i38.i.i, label %for.inc.i42.i.i, label %for.body.i39.i.i.drm_fixp_msbset.exit44.i.i_crit_edge

for.body.i39.i.i.drm_fixp_msbset.exit44.i.i_crit_edge: ; preds = %for.body.i39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i.i

for.inc.i42.i.i:                                  ; preds = %for.body.i39.i.i
  %dec.i40.i.i = add nsw i32 %shift.014.i34.i.i, -1
  %cmp.not.i41.i.i = icmp eq i32 %dec.i40.i.i, 0
  br i1 %cmp.not.i41.i.i, label %for.inc.i42.i.i.drm_fixp_msbset.exit44.i.i_crit_edge, label %for.inc.i42.i.i.for.body.i39.i.i_crit_edge

for.inc.i42.i.i.for.body.i39.i.i_crit_edge:       ; preds = %for.inc.i42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i.i

for.inc.i42.i.i.drm_fixp_msbset.exit44.i.i_crit_edge: ; preds = %for.inc.i42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i.i

drm_fixp_msbset.exit44.i.i:                       ; preds = %for.inc.i42.i.i.drm_fixp_msbset.exit44.i.i_crit_edge, %for.body.i39.i.i.drm_fixp_msbset.exit44.i.i_crit_edge
  %shift.0.lcssa.i43.i.i = phi i32 [ 0, %for.inc.i42.i.i.drm_fixp_msbset.exit44.i.i_crit_edge ], [ %shift.014.i34.i.i, %for.body.i39.i.i.drm_fixp_msbset.exit44.i.i_crit_edge ]
  %add.i392.i = add i32 %shift.0.lcssa.i43.i.i, %shift.0.lcssa.i.i391.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i392.i)
  %cmp.i393.i = icmp ugt i32 %add.i392.i, 61
  br i1 %cmp.i393.i, label %if.end.i.i, label %if.end11.thread.i.i

if.end11.thread.i.i:                              ; preds = %drm_fixp_msbset.exit44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i.i = mul i64 %retval.0.i379.i, %106
  br label %if.then13.i.i

if.end.i.i:                                       ; preds = %drm_fixp_msbset.exit44.i.i
  %sub.i394.i = add i32 %add.i392.i, -61
  %shr.i395.i = lshr i32 %sub.i394.i, 1
  %and.i.i = and i32 %sub.i394.i, 1
  %add2.i.i = add nuw nsw i32 %shr.i395.i, %and.i.i
  %sh_prom.i396.i = zext i32 %add2.i.i to i64
  %shr3.i.i = ashr i64 %106, %sh_prom.i396.i
  %sh_prom5.i.i = zext i32 %shr.i395.i to i64
  %shr6.i.i = ashr i64 %retval.0.i379.i, %sh_prom5.i.i
  %mul.i.i = mul i64 %shr3.i.i, %shr6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i394.i)
  %cmp7.i.i = icmp ugt i32 %sub.i394.i, 32
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i.i = add i32 %add.i392.i, -93
  %sh_prom10.i.i = zext i32 %sub9.i.i to i64
  %shl.i397.i = shl i64 %mul.i.i, %sh_prom10.i.i
  br label %drm_fixp_mul.exit.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i394.i)
  %cmp12.not.i398.i = icmp eq i32 %sub.i394.i, 32
  br i1 %cmp12.not.i398.i, label %if.end11.i.i.drm_fixp_mul.exit.i_crit_edge, label %if.end11.i.i.if.then13.i.i_crit_edge

if.end11.i.i.if.then13.i.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i.i

if.end11.i.i.drm_fixp_mul.exit.i_crit_edge:       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit.i

if.then13.i.i:                                    ; preds = %if.end11.i.i.if.then13.i.i_crit_edge, %if.end11.thread.i.i
  %shift.05056.i.i = phi i32 [ 0, %if.end11.thread.i.i ], [ %sub.i394.i, %if.end11.i.i.if.then13.i.i_crit_edge ]
  %mul5155.i.i = phi i64 [ %mul48.i.i, %if.end11.thread.i.i ], [ %mul.i.i, %if.end11.i.i.if.then13.i.i_crit_edge ]
  %sub14.i.i = sub nuw nsw i32 32, %shift.05056.i.i
  %sh_prom15.i.i = zext i32 %sub14.i.i to i64
  %shr16.i.i = ashr i64 %mul5155.i.i, %sh_prom15.i.i
  br label %drm_fixp_mul.exit.i

drm_fixp_mul.exit.i:                              ; preds = %if.then13.i.i, %if.end11.i.i.drm_fixp_mul.exit.i_crit_edge, %if.then8.i.i
  %retval.0.i399.i = phi i64 [ %shl.i397.i, %if.then8.i.i ], [ %shr16.i.i, %if.then13.i.i ], [ %mul.i.i, %if.end11.i.i.drm_fixp_mul.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i400.i) #7
  %107 = ptrtoint ptr %rem.i400.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 -1, ptr %rem.i400.i, align 8, !annotation !176
  %call.i401.i = call i64 @div64_u64_rem(i64 noundef 8, i64 noundef 1, ptr noundef nonnull %rem.i400.i) #7
  %108 = ptrtoint ptr %rem.i400.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %rem.promoted.i402.i = load i64, ptr %rem.i400.i, align 8
  br label %do.body.i416.i

do.body.i416.i:                                   ; preds = %do.body.i416.i.do.body.i416.i_crit_edge, %drm_fixp_mul.exit.i
  %storemerge40.i403.i = phi i64 [ %rem.promoted.i402.i, %drm_fixp_mul.exit.i ], [ %storemerge.i410.i, %do.body.i416.i.do.body.i416.i_crit_edge ]
  %res_abs.0.i404.i = phi i64 [ %call.i401.i, %drm_fixp_mul.exit.i ], [ %res_abs.1.i413.i, %do.body.i416.i.do.body.i416.i_crit_edge ]
  %i.0.i405.i = phi i32 [ 32, %drm_fixp_mul.exit.i ], [ %dec.i414.i, %do.body.i416.i.do.body.i416.i_crit_edge ]
  %shl.i406.i = shl i64 %storemerge40.i403.i, 1
  %shl9.i407.i = shl i64 %res_abs.0.i404.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i406.i)
  %cmp10.not.i408.i = icmp ne i64 %shl.i406.i, 0
  %sub11.i409.neg.i = sext i1 %cmp10.not.i408.i to i64
  %storemerge.i410.i = add i64 %shl.i406.i, %sub11.i409.neg.i
  %or.i412.i = zext i1 %cmp10.not.i408.i to i64
  %res_abs.1.i413.i = or i64 %shl9.i407.i, %or.i412.i
  %dec.i414.i = add nsw i32 %i.0.i405.i, -1
  %cmp12.not.i415.i = icmp eq i32 %dec.i414.i, 0
  br i1 %cmp12.not.i415.i, label %drm_fixp_from_fraction.exit421.i, label %do.body.i416.i.do.body.i416.i_crit_edge

do.body.i416.i.do.body.i416.i_crit_edge:          ; preds = %do.body.i416.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i416.i

drm_fixp_from_fraction.exit421.i:                 ; preds = %do.body.i416.i
  %shl13.i417.mask.i = and i64 %storemerge.i410.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i417.mask.i)
  %cmp14.i418.i = icmp ne i64 %shl13.i417.mask.i, 0
  %109 = zext i1 %cmp14.i418.i to i64
  %add.i419.i = add i64 %res_abs.1.i413.i, %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i400.i) #7
  %shr12.i.i422.i = lshr i64 %retval.0.i399.i, 63
  br label %for.body.i.i428.i

for.body.i.i428.i:                                ; preds = %for.inc.i.i431.i.for.body.i.i428.i_crit_edge, %drm_fixp_from_fraction.exit421.i
  %shift.014.i.i423.i = phi i32 [ 62, %drm_fixp_from_fraction.exit421.i ], [ %dec.i.i429.i, %for.inc.i.i431.i.for.body.i.i428.i_crit_edge ]
  %sh_prom.i.i424.i = zext i32 %shift.014.i.i423.i to i64
  %shr213.i.i425.i = lshr i64 %retval.0.i399.i, %sh_prom.i.i424.i
  %and3.i.i426.i = and i64 %shr213.i.i425.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i426.i, i64 %shr12.i.i422.i)
  %cmp5.not.i.i427.i = icmp eq i64 %and3.i.i426.i, %shr12.i.i422.i
  br i1 %cmp5.not.i.i427.i, label %for.inc.i.i431.i, label %for.body.i.i428.i.drm_fixp_div.exit448.i_crit_edge

for.body.i.i428.i.drm_fixp_div.exit448.i_crit_edge: ; preds = %for.body.i.i428.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit448.i

for.inc.i.i431.i:                                 ; preds = %for.body.i.i428.i
  %dec.i.i429.i = add nsw i32 %shift.014.i.i423.i, -1
  %cmp.not.i.i430.i = icmp eq i32 %dec.i.i429.i, 0
  br i1 %cmp.not.i.i430.i, label %for.inc.i.i431.i.drm_fixp_div.exit448.i_crit_edge, label %for.inc.i.i431.i.for.body.i.i428.i_crit_edge

for.inc.i.i431.i.for.body.i.i428.i_crit_edge:     ; preds = %for.inc.i.i431.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i428.i

for.inc.i.i431.i.drm_fixp_div.exit448.i_crit_edge: ; preds = %for.inc.i.i431.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit448.i

drm_fixp_div.exit448.i:                           ; preds = %for.inc.i.i431.i.drm_fixp_div.exit448.i_crit_edge, %for.body.i.i428.i.drm_fixp_div.exit448.i_crit_edge
  %shift.0.lcssa.i.i432.i = phi i32 [ 0, %for.inc.i.i431.i.drm_fixp_div.exit448.i_crit_edge ], [ %shift.014.i.i423.i, %for.body.i.i428.i.drm_fixp_div.exit448.i_crit_edge ]
  %sub.i433.i = sub i32 62, %shift.0.lcssa.i.i432.i
  %sh_prom.i434.i = zext i32 %sub.i433.i to i64
  %shl.i435.i = shl i64 %retval.0.i399.i, %sh_prom.i434.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i433.i)
  %cmp.i436.i = icmp ult i32 %sub.i433.i, 32
  %sub1.i437.i = add i32 %shift.0.lcssa.i.i432.i, -30
  %narrow.i438.i = select i1 %cmp.i436.i, i32 %sub1.i437.i, i32 0
  %shr.i439.i = zext i32 %narrow.i438.i to i64
  %b.addr.0.i440.i = ashr i64 %add.i419.i, %shr.i439.i
  %call3.i441.i = call i64 @div64_s64(i64 noundef %shl.i435.i, i64 noundef %b.addr.0.i440.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i433.i)
  %cmp4.i442.i = icmp ugt i32 %sub.i433.i, 32
  %sub6.i443.i = sub i32 30, %shift.0.lcssa.i.i432.i
  %narrow19.i444.i = select i1 %cmp4.i442.i, i32 %sub6.i443.i, i32 0
  %shr8.i445.i = zext i32 %narrow19.i444.i to i64
  %retval.0.i446.i = ashr i64 %call3.i441.i, %shr8.i445.i
  %110 = lshr i64 %retval.0.i446.i, 32
  %conv.i.i = trunc i64 %110 to i32
  %div49.i = sdiv i32 %conv.i.i, %18
  %rem.i854 = srem i32 %div49.i, %16
  %sub.i = sub i32 %16, %rem.i854
  %mul51.i = mul i32 %sub.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div49.i)
  %cmp52.i = icmp eq i32 %div49.i, 0
  br i1 %cmp52.i, label %do.end.i, label %drm_fixp_div.exit448.i.if.end56.i_crit_edge

drm_fixp_div.exit448.i.if.end56.i_crit_edge:      ; preds = %drm_fixp_div.exit448.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

do.end.i:                                         ; preds = %drm_fixp_div.exit448.i
  call void @__sanitizer_cov_trace_pc() #9
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef 0) #10
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end.i, %drm_fixp_div.exit448.i.if.end56.i_crit_edge
  %mul50154.i = add i32 %div49.i, %16
  %add.i855 = mul i32 %mul50154.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i854)
  %cmp57.i = icmp eq i32 %rem.i854, 0
  %spec.select.i = select i1 %cmp57.i, i32 0, i32 %mul51.i
  %add59.i = add i32 %spec.select.i, %add.i855
  %111 = call i32 @llvm.abs.i32(i32 %add59.i, i1 false) #7
  %112 = zext i32 %111 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i449.i) #7
  %113 = ptrtoint ptr %rem.i449.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 -1, ptr %rem.i449.i, align 8, !annotation !176
  %call.i450.i = call i64 @div64_u64_rem(i64 noundef %112, i64 noundef 3, ptr noundef nonnull %rem.i449.i) #7
  %114 = ptrtoint ptr %rem.i449.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %rem.promoted.i451.i = load i64, ptr %rem.i449.i, align 8
  br label %do.body.i465.i

do.body.i465.i:                                   ; preds = %do.body.i465.i.do.body.i465.i_crit_edge, %if.end56.i
  %storemerge40.i452.i = phi i64 [ %rem.promoted.i451.i, %if.end56.i ], [ %storemerge.i459.i, %do.body.i465.i.do.body.i465.i_crit_edge ]
  %res_abs.0.i453.i = phi i64 [ %call.i450.i, %if.end56.i ], [ %res_abs.1.i462.i, %do.body.i465.i.do.body.i465.i_crit_edge ]
  %i.0.i454.i = phi i32 [ 32, %if.end56.i ], [ %dec.i463.i, %do.body.i465.i.do.body.i465.i_crit_edge ]
  %shl.i455.i = shl i64 %storemerge40.i452.i, 1
  %shl9.i456.i = shl i64 %res_abs.0.i453.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %shl.i455.i)
  %cmp10.not.i457.i = icmp ult i64 %shl.i455.i, 3
  %sub11.i458.neg.i = select i1 %cmp10.not.i457.i, i64 0, i64 -3
  %storemerge.i459.i = add i64 %sub11.i458.neg.i, %shl.i455.i
  %not.cmp10.not.i460.i = xor i1 %cmp10.not.i457.i, true
  %or.i461.i = zext i1 %not.cmp10.not.i460.i to i64
  %res_abs.1.i462.i = or i64 %shl9.i456.i, %or.i461.i
  %dec.i463.i = add nsw i32 %i.0.i454.i, -1
  %cmp12.not.i464.i = icmp eq i32 %dec.i463.i, 0
  br i1 %cmp12.not.i464.i, label %drm_fixp_from_fraction.exit473.i, label %do.body.i465.i.do.body.i465.i_crit_edge

do.body.i465.i.do.body.i465.i_crit_edge:          ; preds = %do.body.i465.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i465.i

drm_fixp_from_fraction.exit473.i:                 ; preds = %do.body.i465.i
  %shl13.i466.i = shl i64 %storemerge.i459.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %shl13.i466.i)
  %cmp14.i467.i = icmp ugt i64 %shl13.i466.i, 2
  %115 = zext i1 %cmp14.i467.i to i64
  %add.i468.i = add i64 %res_abs.1.i462.i, %115
  %sub22.i470.i = sub i64 0, %add.i468.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add59.i)
  %tobool20.not39.i471.i = icmp slt i32 %add59.i, 0
  %spec.select.i472.i = select i1 %tobool20.not39.i471.i, i64 %sub22.i470.i, i64 %add.i468.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i449.i) #7
  %116 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i474.i = lshr i64 %117, 63
  br label %for.body.i.i480.i

for.body.i.i480.i:                                ; preds = %for.inc.i.i483.i.for.body.i.i480.i_crit_edge, %drm_fixp_from_fraction.exit473.i
  %shift.014.i.i475.i = phi i32 [ 62, %drm_fixp_from_fraction.exit473.i ], [ %dec.i.i481.i, %for.inc.i.i483.i.for.body.i.i480.i_crit_edge ]
  %sh_prom.i.i476.i = zext i32 %shift.014.i.i475.i to i64
  %shr213.i.i477.i = lshr i64 %117, %sh_prom.i.i476.i
  %and3.i.i478.i = and i64 %shr213.i.i477.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i478.i, i64 %shr12.i.i474.i)
  %cmp5.not.i.i479.i = icmp eq i64 %and3.i.i478.i, %shr12.i.i474.i
  br i1 %cmp5.not.i.i479.i, label %for.inc.i.i483.i, label %for.body.i.i480.i.drm_fixp_msbset.exit.i486.i_crit_edge

for.body.i.i480.i.drm_fixp_msbset.exit.i486.i_crit_edge: ; preds = %for.body.i.i480.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i486.i

for.inc.i.i483.i:                                 ; preds = %for.body.i.i480.i
  %dec.i.i481.i = add nsw i32 %shift.014.i.i475.i, -1
  %cmp.not.i.i482.i = icmp eq i32 %dec.i.i481.i, 0
  br i1 %cmp.not.i.i482.i, label %for.inc.i.i483.i.drm_fixp_msbset.exit.i486.i_crit_edge, label %for.inc.i.i483.i.for.body.i.i480.i_crit_edge

for.inc.i.i483.i.for.body.i.i480.i_crit_edge:     ; preds = %for.inc.i.i483.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i480.i

for.inc.i.i483.i.drm_fixp_msbset.exit.i486.i_crit_edge: ; preds = %for.inc.i.i483.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i486.i

drm_fixp_msbset.exit.i486.i:                      ; preds = %for.inc.i.i483.i.drm_fixp_msbset.exit.i486.i_crit_edge, %for.body.i.i480.i.drm_fixp_msbset.exit.i486.i_crit_edge
  %shift.0.lcssa.i.i484.i = phi i32 [ 0, %for.inc.i.i483.i.drm_fixp_msbset.exit.i486.i_crit_edge ], [ %shift.014.i.i475.i, %for.body.i.i480.i.drm_fixp_msbset.exit.i486.i_crit_edge ]
  %shr12.i33.i485.i = lshr i64 %spec.select.i472.i, 63
  br label %for.body.i39.i492.i

for.body.i39.i492.i:                              ; preds = %for.inc.i42.i495.i.for.body.i39.i492.i_crit_edge, %drm_fixp_msbset.exit.i486.i
  %shift.014.i34.i487.i = phi i32 [ 62, %drm_fixp_msbset.exit.i486.i ], [ %dec.i40.i493.i, %for.inc.i42.i495.i.for.body.i39.i492.i_crit_edge ]
  %sh_prom.i35.i488.i = zext i32 %shift.014.i34.i487.i to i64
  %shr213.i36.i489.i = lshr i64 %spec.select.i472.i, %sh_prom.i35.i488.i
  %and3.i37.i490.i = and i64 %shr213.i36.i489.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i490.i, i64 %shr12.i33.i485.i)
  %cmp5.not.i38.i491.i = icmp eq i64 %and3.i37.i490.i, %shr12.i33.i485.i
  br i1 %cmp5.not.i38.i491.i, label %for.inc.i42.i495.i, label %for.body.i39.i492.i.drm_fixp_msbset.exit44.i499.i_crit_edge

for.body.i39.i492.i.drm_fixp_msbset.exit44.i499.i_crit_edge: ; preds = %for.body.i39.i492.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i499.i

for.inc.i42.i495.i:                               ; preds = %for.body.i39.i492.i
  %dec.i40.i493.i = add nsw i32 %shift.014.i34.i487.i, -1
  %cmp.not.i41.i494.i = icmp eq i32 %dec.i40.i493.i, 0
  br i1 %cmp.not.i41.i494.i, label %for.inc.i42.i495.i.drm_fixp_msbset.exit44.i499.i_crit_edge, label %for.inc.i42.i495.i.for.body.i39.i492.i_crit_edge

for.inc.i42.i495.i.for.body.i39.i492.i_crit_edge: ; preds = %for.inc.i42.i495.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i492.i

for.inc.i42.i495.i.drm_fixp_msbset.exit44.i499.i_crit_edge: ; preds = %for.inc.i42.i495.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i499.i

drm_fixp_msbset.exit44.i499.i:                    ; preds = %for.inc.i42.i495.i.drm_fixp_msbset.exit44.i499.i_crit_edge, %for.body.i39.i492.i.drm_fixp_msbset.exit44.i499.i_crit_edge
  %shift.0.lcssa.i43.i496.i = phi i32 [ 0, %for.inc.i42.i495.i.drm_fixp_msbset.exit44.i499.i_crit_edge ], [ %shift.014.i34.i487.i, %for.body.i39.i492.i.drm_fixp_msbset.exit44.i499.i_crit_edge ]
  %add.i497.i = add i32 %shift.0.lcssa.i43.i496.i, %shift.0.lcssa.i.i484.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i497.i)
  %cmp.i498.i = icmp ugt i32 %add.i497.i, 61
  br i1 %cmp.i498.i, label %if.end.i512.i, label %if.end11.thread.i501.i

if.end11.thread.i501.i:                           ; preds = %drm_fixp_msbset.exit44.i499.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i500.i = mul i64 %117, %spec.select.i472.i
  br label %if.then13.i524.i

if.end.i512.i:                                    ; preds = %drm_fixp_msbset.exit44.i499.i
  %sub.i502.i = add i32 %add.i497.i, -61
  %shr.i503.i = lshr i32 %sub.i502.i, 1
  %and.i504.i = and i32 %sub.i502.i, 1
  %add2.i505.i = add nuw nsw i32 %shr.i503.i, %and.i504.i
  %sh_prom.i506.i = zext i32 %add2.i505.i to i64
  %shr3.i507.i = ashr i64 %117, %sh_prom.i506.i
  %sh_prom5.i508.i = zext i32 %shr.i503.i to i64
  %shr6.i509.i = ashr i64 %spec.select.i472.i, %sh_prom5.i508.i
  %mul.i510.i = mul i64 %shr3.i507.i, %shr6.i509.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i502.i)
  %cmp7.i511.i = icmp ugt i32 %sub.i502.i, 32
  br i1 %cmp7.i511.i, label %if.then8.i516.i, label %if.end11.i518.i

if.then8.i516.i:                                  ; preds = %if.end.i512.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i513.i = add i32 %add.i497.i, -93
  %sh_prom10.i514.i = zext i32 %sub9.i513.i to i64
  %shl.i515.i = shl i64 %mul.i510.i, %sh_prom10.i514.i
  br label %drm_fixp_mul.exit526.i

if.end11.i518.i:                                  ; preds = %if.end.i512.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i502.i)
  %cmp12.not.i517.i = icmp eq i32 %sub.i502.i, 32
  br i1 %cmp12.not.i517.i, label %if.end11.i518.i.drm_fixp_mul.exit526.i_crit_edge, label %if.end11.i518.i.if.then13.i524.i_crit_edge

if.end11.i518.i.if.then13.i524.i_crit_edge:       ; preds = %if.end11.i518.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i524.i

if.end11.i518.i.drm_fixp_mul.exit526.i_crit_edge: ; preds = %if.end11.i518.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit526.i

if.then13.i524.i:                                 ; preds = %if.end11.i518.i.if.then13.i524.i_crit_edge, %if.end11.thread.i501.i
  %shift.05056.i519.i = phi i32 [ 0, %if.end11.thread.i501.i ], [ %sub.i502.i, %if.end11.i518.i.if.then13.i524.i_crit_edge ]
  %mul5155.i520.i = phi i64 [ %mul48.i500.i, %if.end11.thread.i501.i ], [ %mul.i510.i, %if.end11.i518.i.if.then13.i524.i_crit_edge ]
  %sub14.i521.i = sub nuw nsw i32 32, %shift.05056.i519.i
  %sh_prom15.i522.i = zext i32 %sub14.i521.i to i64
  %shr16.i523.i = ashr i64 %mul5155.i520.i, %sh_prom15.i522.i
  br label %drm_fixp_mul.exit526.i

drm_fixp_mul.exit526.i:                           ; preds = %if.then13.i524.i, %if.end11.i518.i.drm_fixp_mul.exit526.i_crit_edge, %if.then8.i516.i
  %retval.0.i525.i = phi i64 [ %shl.i515.i, %if.then8.i516.i ], [ %shr16.i523.i, %if.then13.i524.i ], [ %mul.i510.i, %if.end11.i518.i.drm_fixp_mul.exit526.i_crit_edge ]
  %118 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i527.i = lshr i64 %retval.0.i525.i, 63
  br label %for.body.i.i533.i

for.body.i.i533.i:                                ; preds = %for.inc.i.i536.i.for.body.i.i533.i_crit_edge, %drm_fixp_mul.exit526.i
  %shift.014.i.i528.i = phi i32 [ 62, %drm_fixp_mul.exit526.i ], [ %dec.i.i534.i, %for.inc.i.i536.i.for.body.i.i533.i_crit_edge ]
  %sh_prom.i.i529.i = zext i32 %shift.014.i.i528.i to i64
  %shr213.i.i530.i = lshr i64 %retval.0.i525.i, %sh_prom.i.i529.i
  %and3.i.i531.i = and i64 %shr213.i.i530.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i531.i, i64 %shr12.i.i527.i)
  %cmp5.not.i.i532.i = icmp eq i64 %and3.i.i531.i, %shr12.i.i527.i
  br i1 %cmp5.not.i.i532.i, label %for.inc.i.i536.i, label %for.body.i.i533.i.drm_fixp_div.exit553.i_crit_edge

for.body.i.i533.i.drm_fixp_div.exit553.i_crit_edge: ; preds = %for.body.i.i533.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit553.i

for.inc.i.i536.i:                                 ; preds = %for.body.i.i533.i
  %dec.i.i534.i = add nsw i32 %shift.014.i.i528.i, -1
  %cmp.not.i.i535.i = icmp eq i32 %dec.i.i534.i, 0
  br i1 %cmp.not.i.i535.i, label %for.inc.i.i536.i.drm_fixp_div.exit553.i_crit_edge, label %for.inc.i.i536.i.for.body.i.i533.i_crit_edge

for.inc.i.i536.i.for.body.i.i533.i_crit_edge:     ; preds = %for.inc.i.i536.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i533.i

for.inc.i.i536.i.drm_fixp_div.exit553.i_crit_edge: ; preds = %for.inc.i.i536.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit553.i

drm_fixp_div.exit553.i:                           ; preds = %for.inc.i.i536.i.drm_fixp_div.exit553.i_crit_edge, %for.body.i.i533.i.drm_fixp_div.exit553.i_crit_edge
  %shift.0.lcssa.i.i537.i = phi i32 [ 0, %for.inc.i.i536.i.drm_fixp_div.exit553.i_crit_edge ], [ %shift.014.i.i528.i, %for.body.i.i533.i.drm_fixp_div.exit553.i_crit_edge ]
  %sub.i538.i = sub i32 62, %shift.0.lcssa.i.i537.i
  %sh_prom.i539.i = zext i32 %sub.i538.i to i64
  %shl.i540.i = shl i64 %retval.0.i525.i, %sh_prom.i539.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i538.i)
  %cmp.i541.i = icmp ult i32 %sub.i538.i, 32
  %sub1.i542.i = add i32 %shift.0.lcssa.i.i537.i, -30
  %narrow.i543.i = select i1 %cmp.i541.i, i32 %sub1.i542.i, i32 0
  %shr.i544.i = zext i32 %narrow.i543.i to i64
  %b.addr.0.i545.i = ashr i64 %119, %shr.i544.i
  %call3.i546.i = call i64 @div64_s64(i64 noundef %shl.i540.i, i64 noundef %b.addr.0.i545.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i538.i)
  %cmp4.i547.i = icmp ugt i32 %sub.i538.i, 32
  %sub6.i548.i = sub i32 30, %shift.0.lcssa.i.i537.i
  %narrow19.i549.i = select i1 %cmp4.i547.i, i32 %sub6.i548.i, i32 0
  %shr8.i550.i = zext i32 %narrow19.i549.i to i64
  %retval.0.i551.i = ashr i64 %call3.i546.i, %shr8.i550.i
  %120 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i554.i = lshr i64 %retval.0.i551.i, 63
  br label %for.body.i.i560.i

for.body.i.i560.i:                                ; preds = %for.inc.i.i563.i.for.body.i.i560.i_crit_edge, %drm_fixp_div.exit553.i
  %shift.014.i.i555.i = phi i32 [ 62, %drm_fixp_div.exit553.i ], [ %dec.i.i561.i, %for.inc.i.i563.i.for.body.i.i560.i_crit_edge ]
  %sh_prom.i.i556.i = zext i32 %shift.014.i.i555.i to i64
  %shr213.i.i557.i = lshr i64 %retval.0.i551.i, %sh_prom.i.i556.i
  %and3.i.i558.i = and i64 %shr213.i.i557.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i558.i, i64 %shr12.i.i554.i)
  %cmp5.not.i.i559.i = icmp eq i64 %and3.i.i558.i, %shr12.i.i554.i
  br i1 %cmp5.not.i.i559.i, label %for.inc.i.i563.i, label %for.body.i.i560.i.drm_fixp_div.exit580.i_crit_edge

for.body.i.i560.i.drm_fixp_div.exit580.i_crit_edge: ; preds = %for.body.i.i560.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit580.i

for.inc.i.i563.i:                                 ; preds = %for.body.i.i560.i
  %dec.i.i561.i = add nsw i32 %shift.014.i.i555.i, -1
  %cmp.not.i.i562.i = icmp eq i32 %dec.i.i561.i, 0
  br i1 %cmp.not.i.i562.i, label %for.inc.i.i563.i.drm_fixp_div.exit580.i_crit_edge, label %for.inc.i.i563.i.for.body.i.i560.i_crit_edge

for.inc.i.i563.i.for.body.i.i560.i_crit_edge:     ; preds = %for.inc.i.i563.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i560.i

for.inc.i.i563.i.drm_fixp_div.exit580.i_crit_edge: ; preds = %for.inc.i.i563.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit580.i

drm_fixp_div.exit580.i:                           ; preds = %for.inc.i.i563.i.drm_fixp_div.exit580.i_crit_edge, %for.body.i.i560.i.drm_fixp_div.exit580.i_crit_edge
  %shift.0.lcssa.i.i564.i = phi i32 [ 0, %for.inc.i.i563.i.drm_fixp_div.exit580.i_crit_edge ], [ %shift.014.i.i555.i, %for.body.i.i560.i.drm_fixp_div.exit580.i_crit_edge ]
  %sub.i565.i = sub i32 62, %shift.0.lcssa.i.i564.i
  %sh_prom.i566.i = zext i32 %sub.i565.i to i64
  %shl.i567.i = shl i64 %retval.0.i551.i, %sh_prom.i566.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i565.i)
  %cmp.i568.i = icmp ult i32 %sub.i565.i, 32
  %sub1.i569.i = add i32 %shift.0.lcssa.i.i564.i, -30
  %narrow.i570.i = select i1 %cmp.i568.i, i32 %sub1.i569.i, i32 0
  %shr.i571.i = zext i32 %narrow.i570.i to i64
  %b.addr.0.i572.i = ashr i64 %121, %shr.i571.i
  %call3.i573.i = call i64 @div64_s64(i64 noundef %shl.i567.i, i64 noundef %b.addr.0.i572.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i565.i)
  %cmp4.i574.i = icmp ugt i32 %sub.i565.i, 32
  %sub6.i575.i = sub i32 30, %shift.0.lcssa.i.i564.i
  %narrow19.i576.i = select i1 %cmp4.i574.i, i32 %sub6.i575.i, i32 0
  %shr8.i577.i = zext i32 %narrow19.i576.i to i64
  %retval.0.i578.i = ashr i64 %call3.i573.i, %shr8.i577.i
  %122 = ptrtoint ptr %hbp_relative_to_pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %hbp_relative_to_pclk_fp.i, align 8
  %shr12.i.i581.i = lshr i64 %123, 63
  br label %for.body.i.i587.i

for.body.i.i587.i:                                ; preds = %for.inc.i.i590.i.for.body.i.i587.i_crit_edge, %drm_fixp_div.exit580.i
  %shift.014.i.i582.i = phi i32 [ 62, %drm_fixp_div.exit580.i ], [ %dec.i.i588.i, %for.inc.i.i590.i.for.body.i.i587.i_crit_edge ]
  %sh_prom.i.i583.i = zext i32 %shift.014.i.i582.i to i64
  %shr213.i.i584.i = lshr i64 %123, %sh_prom.i.i583.i
  %and3.i.i585.i = and i64 %shr213.i.i584.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i585.i, i64 %shr12.i.i581.i)
  %cmp5.not.i.i586.i = icmp eq i64 %and3.i.i585.i, %shr12.i.i581.i
  br i1 %cmp5.not.i.i586.i, label %for.inc.i.i590.i, label %for.body.i.i587.i.drm_fixp_msbset.exit.i593.i_crit_edge

for.body.i.i587.i.drm_fixp_msbset.exit.i593.i_crit_edge: ; preds = %for.body.i.i587.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i593.i

for.inc.i.i590.i:                                 ; preds = %for.body.i.i587.i
  %dec.i.i588.i = add nsw i32 %shift.014.i.i582.i, -1
  %cmp.not.i.i589.i = icmp eq i32 %dec.i.i588.i, 0
  br i1 %cmp.not.i.i589.i, label %for.inc.i.i590.i.drm_fixp_msbset.exit.i593.i_crit_edge, label %for.inc.i.i590.i.for.body.i.i587.i_crit_edge

for.inc.i.i590.i.for.body.i.i587.i_crit_edge:     ; preds = %for.inc.i.i590.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i587.i

for.inc.i.i590.i.drm_fixp_msbset.exit.i593.i_crit_edge: ; preds = %for.inc.i.i590.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i593.i

drm_fixp_msbset.exit.i593.i:                      ; preds = %for.inc.i.i590.i.drm_fixp_msbset.exit.i593.i_crit_edge, %for.body.i.i587.i.drm_fixp_msbset.exit.i593.i_crit_edge
  %shift.0.lcssa.i.i591.i = phi i32 [ 0, %for.inc.i.i590.i.drm_fixp_msbset.exit.i593.i_crit_edge ], [ %shift.014.i.i582.i, %for.body.i.i587.i.drm_fixp_msbset.exit.i593.i_crit_edge ]
  %shr12.i33.i592.i = lshr i64 %retval.0.i578.i, 63
  br label %for.body.i39.i599.i

for.body.i39.i599.i:                              ; preds = %for.inc.i42.i602.i.for.body.i39.i599.i_crit_edge, %drm_fixp_msbset.exit.i593.i
  %shift.014.i34.i594.i = phi i32 [ 62, %drm_fixp_msbset.exit.i593.i ], [ %dec.i40.i600.i, %for.inc.i42.i602.i.for.body.i39.i599.i_crit_edge ]
  %sh_prom.i35.i595.i = zext i32 %shift.014.i34.i594.i to i64
  %shr213.i36.i596.i = lshr i64 %retval.0.i578.i, %sh_prom.i35.i595.i
  %and3.i37.i597.i = and i64 %shr213.i36.i596.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i597.i, i64 %shr12.i33.i592.i)
  %cmp5.not.i38.i598.i = icmp eq i64 %and3.i37.i597.i, %shr12.i33.i592.i
  br i1 %cmp5.not.i38.i598.i, label %for.inc.i42.i602.i, label %for.body.i39.i599.i.drm_fixp_msbset.exit44.i606.i_crit_edge

for.body.i39.i599.i.drm_fixp_msbset.exit44.i606.i_crit_edge: ; preds = %for.body.i39.i599.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i606.i

for.inc.i42.i602.i:                               ; preds = %for.body.i39.i599.i
  %dec.i40.i600.i = add nsw i32 %shift.014.i34.i594.i, -1
  %cmp.not.i41.i601.i = icmp eq i32 %dec.i40.i600.i, 0
  br i1 %cmp.not.i41.i601.i, label %for.inc.i42.i602.i.drm_fixp_msbset.exit44.i606.i_crit_edge, label %for.inc.i42.i602.i.for.body.i39.i599.i_crit_edge

for.inc.i42.i602.i.for.body.i39.i599.i_crit_edge: ; preds = %for.inc.i42.i602.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i599.i

for.inc.i42.i602.i.drm_fixp_msbset.exit44.i606.i_crit_edge: ; preds = %for.inc.i42.i602.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i606.i

drm_fixp_msbset.exit44.i606.i:                    ; preds = %for.inc.i42.i602.i.drm_fixp_msbset.exit44.i606.i_crit_edge, %for.body.i39.i599.i.drm_fixp_msbset.exit44.i606.i_crit_edge
  %shift.0.lcssa.i43.i603.i = phi i32 [ 0, %for.inc.i42.i602.i.drm_fixp_msbset.exit44.i606.i_crit_edge ], [ %shift.014.i34.i594.i, %for.body.i39.i599.i.drm_fixp_msbset.exit44.i606.i_crit_edge ]
  %add.i604.i = add i32 %shift.0.lcssa.i43.i603.i, %shift.0.lcssa.i.i591.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i604.i)
  %cmp.i605.i = icmp ugt i32 %add.i604.i, 61
  br i1 %cmp.i605.i, label %if.end.i619.i, label %if.end11.thread.i608.i

if.end11.thread.i608.i:                           ; preds = %drm_fixp_msbset.exit44.i606.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i607.i = mul i64 %retval.0.i578.i, %123
  br label %if.then13.i631.i

if.end.i619.i:                                    ; preds = %drm_fixp_msbset.exit44.i606.i
  %sub.i609.i = add i32 %add.i604.i, -61
  %shr.i610.i = lshr i32 %sub.i609.i, 1
  %and.i611.i = and i32 %sub.i609.i, 1
  %add2.i612.i = add nuw nsw i32 %shr.i610.i, %and.i611.i
  %sh_prom.i613.i = zext i32 %add2.i612.i to i64
  %shr3.i614.i = ashr i64 %123, %sh_prom.i613.i
  %sh_prom5.i615.i = zext i32 %shr.i610.i to i64
  %shr6.i616.i = ashr i64 %retval.0.i578.i, %sh_prom5.i615.i
  %mul.i617.i = mul i64 %shr3.i614.i, %shr6.i616.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i609.i)
  %cmp7.i618.i = icmp ugt i32 %sub.i609.i, 32
  br i1 %cmp7.i618.i, label %if.then8.i623.i, label %if.end11.i625.i

if.then8.i623.i:                                  ; preds = %if.end.i619.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i620.i = add i32 %add.i604.i, -93
  %sh_prom10.i621.i = zext i32 %sub9.i620.i to i64
  %shl.i622.i = shl i64 %mul.i617.i, %sh_prom10.i621.i
  br label %drm_fixp_mul.exit633.i

if.end11.i625.i:                                  ; preds = %if.end.i619.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i609.i)
  %cmp12.not.i624.i = icmp eq i32 %sub.i609.i, 32
  br i1 %cmp12.not.i624.i, label %if.end11.i625.i.drm_fixp_mul.exit633.i_crit_edge, label %if.end11.i625.i.if.then13.i631.i_crit_edge

if.end11.i625.i.if.then13.i631.i_crit_edge:       ; preds = %if.end11.i625.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i631.i

if.end11.i625.i.drm_fixp_mul.exit633.i_crit_edge: ; preds = %if.end11.i625.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit633.i

if.then13.i631.i:                                 ; preds = %if.end11.i625.i.if.then13.i631.i_crit_edge, %if.end11.thread.i608.i
  %shift.05056.i626.i = phi i32 [ 0, %if.end11.thread.i608.i ], [ %sub.i609.i, %if.end11.i625.i.if.then13.i631.i_crit_edge ]
  %mul5155.i627.i = phi i64 [ %mul48.i607.i, %if.end11.thread.i608.i ], [ %mul.i617.i, %if.end11.i625.i.if.then13.i631.i_crit_edge ]
  %sub14.i628.i = sub nuw nsw i32 32, %shift.05056.i626.i
  %sh_prom15.i629.i = zext i32 %sub14.i628.i to i64
  %shr16.i630.i = ashr i64 %mul5155.i627.i, %sh_prom15.i629.i
  br label %drm_fixp_mul.exit633.i

drm_fixp_mul.exit633.i:                           ; preds = %if.then13.i631.i, %if.end11.i625.i.drm_fixp_mul.exit633.i_crit_edge, %if.then8.i623.i
  %retval.0.i632.i = phi i64 [ %shl.i622.i, %if.then8.i623.i ], [ %shr16.i630.i, %if.then13.i631.i ], [ %mul.i617.i, %if.end11.i625.i.drm_fixp_mul.exit633.i_crit_edge ]
  %124 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %retval.0.i551.i, ptr %pclk_fp.i, align 8
  %125 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %spec.select.i472.i, ptr %lwidth_fp.i, align 8
  %126 = ptrtoint ptr %hbp_relative_to_pclk_fp.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %retval.0.i632.i, ptr %hbp_relative_to_pclk_fp.i, align 8
  br label %fec_check.i

fec_check.i:                                      ; preds = %drm_fixp_mul.exit633.i, %if.end35.i.fec_check.i_crit_edge
  %fec_en.i = getelementptr inbounds %struct.dp_tu_calc_input, ptr %in, i32 0, i32 9
  %127 = ptrtoint ptr %fec_en.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fec_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool73.not.i = icmp eq i32 %128, 0
  br i1 %tobool73.not.i, label %fec_check.i.dp_panel_update_tu_timings.exit_crit_edge, label %if.then74.i

fec_check.i.dp_panel_update_tu_timings.exit_crit_edge: ; preds = %fec_check.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dp_panel_update_tu_timings.exit

if.then74.i:                                      ; preds = %fec_check.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i634.i) #7
  %129 = ptrtoint ptr %rem.i634.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 -1, ptr %rem.i634.i, align 8, !annotation !176
  %call.i635.i = call i64 @div64_u64_rem(i64 noundef 976, i64 noundef 1000, ptr noundef nonnull %rem.i634.i) #7
  %130 = ptrtoint ptr %rem.i634.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %rem.promoted.i636.i = load i64, ptr %rem.i634.i, align 8
  br label %do.body.i650.i

do.body.i650.i:                                   ; preds = %do.body.i650.i.do.body.i650.i_crit_edge, %if.then74.i
  %storemerge40.i637.i = phi i64 [ %rem.promoted.i636.i, %if.then74.i ], [ %storemerge.i644.i, %do.body.i650.i.do.body.i650.i_crit_edge ]
  %res_abs.0.i638.i = phi i64 [ %call.i635.i, %if.then74.i ], [ %res_abs.1.i647.i, %do.body.i650.i.do.body.i650.i_crit_edge ]
  %i.0.i639.i = phi i32 [ 32, %if.then74.i ], [ %dec.i648.i, %do.body.i650.i.do.body.i650.i_crit_edge ]
  %shl.i640.i = shl i64 %storemerge40.i637.i, 1
  %shl9.i641.i = shl i64 %res_abs.0.i638.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000, i64 %shl.i640.i)
  %cmp10.not.i642.i = icmp ult i64 %shl.i640.i, 1000
  %sub11.i643.neg.i = select i1 %cmp10.not.i642.i, i64 0, i64 -1000
  %storemerge.i644.i = add i64 %sub11.i643.neg.i, %shl.i640.i
  %not.cmp10.not.i645.i = xor i1 %cmp10.not.i642.i, true
  %or.i646.i = zext i1 %not.cmp10.not.i645.i to i64
  %res_abs.1.i647.i = or i64 %shl9.i641.i, %or.i646.i
  %dec.i648.i = add nsw i32 %i.0.i639.i, -1
  %cmp12.not.i649.i = icmp eq i32 %dec.i648.i, 0
  br i1 %cmp12.not.i649.i, label %drm_fixp_from_fraction.exit655.i, label %do.body.i650.i.do.body.i650.i_crit_edge

do.body.i650.i.do.body.i650.i_crit_edge:          ; preds = %do.body.i650.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i650.i

drm_fixp_from_fraction.exit655.i:                 ; preds = %do.body.i650.i
  %shl13.i651.i = shl i64 %storemerge.i644.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 999, i64 %shl13.i651.i)
  %cmp14.i652.i = icmp ugt i64 %shl13.i651.i, 999
  %131 = zext i1 %cmp14.i652.i to i64
  %add.i653.i = add i64 %res_abs.1.i647.i, %131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i634.i) #7
  %132 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %call7.i.i, align 8
  %shr12.i.i656.i = lshr i64 %133, 63
  br label %for.body.i.i662.i

for.body.i.i662.i:                                ; preds = %for.inc.i.i665.i.for.body.i.i662.i_crit_edge, %drm_fixp_from_fraction.exit655.i
  %shift.014.i.i657.i = phi i32 [ 62, %drm_fixp_from_fraction.exit655.i ], [ %dec.i.i663.i, %for.inc.i.i665.i.for.body.i.i662.i_crit_edge ]
  %sh_prom.i.i658.i = zext i32 %shift.014.i.i657.i to i64
  %shr213.i.i659.i = lshr i64 %133, %sh_prom.i.i658.i
  %and3.i.i660.i = and i64 %shr213.i.i659.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i660.i, i64 %shr12.i.i656.i)
  %cmp5.not.i.i661.i = icmp eq i64 %and3.i.i660.i, %shr12.i.i656.i
  br i1 %cmp5.not.i.i661.i, label %for.inc.i.i665.i, label %for.body.i.i662.i.drm_fixp_msbset.exit.i668.i_crit_edge

for.body.i.i662.i.drm_fixp_msbset.exit.i668.i_crit_edge: ; preds = %for.body.i.i662.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i668.i

for.inc.i.i665.i:                                 ; preds = %for.body.i.i662.i
  %dec.i.i663.i = add nsw i32 %shift.014.i.i657.i, -1
  %cmp.not.i.i664.i = icmp eq i32 %dec.i.i663.i, 0
  br i1 %cmp.not.i.i664.i, label %for.inc.i.i665.i.drm_fixp_msbset.exit.i668.i_crit_edge, label %for.inc.i.i665.i.for.body.i.i662.i_crit_edge

for.inc.i.i665.i.for.body.i.i662.i_crit_edge:     ; preds = %for.inc.i.i665.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i662.i

for.inc.i.i665.i.drm_fixp_msbset.exit.i668.i_crit_edge: ; preds = %for.inc.i.i665.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i668.i

drm_fixp_msbset.exit.i668.i:                      ; preds = %for.inc.i.i665.i.drm_fixp_msbset.exit.i668.i_crit_edge, %for.body.i.i662.i.drm_fixp_msbset.exit.i668.i_crit_edge
  %shift.0.lcssa.i.i666.i = phi i32 [ 0, %for.inc.i.i665.i.drm_fixp_msbset.exit.i668.i_crit_edge ], [ %shift.014.i.i657.i, %for.body.i.i662.i.drm_fixp_msbset.exit.i668.i_crit_edge ]
  %shr12.i33.i667.i = lshr i64 %add.i653.i, 63
  br label %for.body.i39.i674.i

for.body.i39.i674.i:                              ; preds = %for.inc.i42.i677.i.for.body.i39.i674.i_crit_edge, %drm_fixp_msbset.exit.i668.i
  %shift.014.i34.i669.i = phi i32 [ 62, %drm_fixp_msbset.exit.i668.i ], [ %dec.i40.i675.i, %for.inc.i42.i677.i.for.body.i39.i674.i_crit_edge ]
  %sh_prom.i35.i670.i = zext i32 %shift.014.i34.i669.i to i64
  %shr213.i36.i671.i = lshr i64 %add.i653.i, %sh_prom.i35.i670.i
  %and3.i37.i672.i = and i64 %shr213.i36.i671.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i672.i, i64 %shr12.i33.i667.i)
  %cmp5.not.i38.i673.i = icmp eq i64 %and3.i37.i672.i, %shr12.i33.i667.i
  br i1 %cmp5.not.i38.i673.i, label %for.inc.i42.i677.i, label %for.body.i39.i674.i.drm_fixp_msbset.exit44.i681.i_crit_edge

for.body.i39.i674.i.drm_fixp_msbset.exit44.i681.i_crit_edge: ; preds = %for.body.i39.i674.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i681.i

for.inc.i42.i677.i:                               ; preds = %for.body.i39.i674.i
  %dec.i40.i675.i = add nsw i32 %shift.014.i34.i669.i, -1
  %cmp.not.i41.i676.i = icmp eq i32 %dec.i40.i675.i, 0
  br i1 %cmp.not.i41.i676.i, label %for.inc.i42.i677.i.drm_fixp_msbset.exit44.i681.i_crit_edge, label %for.inc.i42.i677.i.for.body.i39.i674.i_crit_edge

for.inc.i42.i677.i.for.body.i39.i674.i_crit_edge: ; preds = %for.inc.i42.i677.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i674.i

for.inc.i42.i677.i.drm_fixp_msbset.exit44.i681.i_crit_edge: ; preds = %for.inc.i42.i677.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i681.i

drm_fixp_msbset.exit44.i681.i:                    ; preds = %for.inc.i42.i677.i.drm_fixp_msbset.exit44.i681.i_crit_edge, %for.body.i39.i674.i.drm_fixp_msbset.exit44.i681.i_crit_edge
  %shift.0.lcssa.i43.i678.i = phi i32 [ 0, %for.inc.i42.i677.i.drm_fixp_msbset.exit44.i681.i_crit_edge ], [ %shift.014.i34.i669.i, %for.body.i39.i674.i.drm_fixp_msbset.exit44.i681.i_crit_edge ]
  %add.i679.i = add i32 %shift.0.lcssa.i43.i678.i, %shift.0.lcssa.i.i666.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i679.i)
  %cmp.i680.i = icmp ugt i32 %add.i679.i, 61
  br i1 %cmp.i680.i, label %if.end.i694.i, label %if.end11.thread.i683.i

if.end11.thread.i683.i:                           ; preds = %drm_fixp_msbset.exit44.i681.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i682.i = mul i64 %133, %add.i653.i
  br label %if.then13.i706.i

if.end.i694.i:                                    ; preds = %drm_fixp_msbset.exit44.i681.i
  %sub.i684.i = add i32 %add.i679.i, -61
  %shr.i685.i = lshr i32 %sub.i684.i, 1
  %and.i686.i = and i32 %sub.i684.i, 1
  %add2.i687.i = add nuw nsw i32 %shr.i685.i, %and.i686.i
  %sh_prom.i688.i = zext i32 %add2.i687.i to i64
  %shr3.i689.i = ashr i64 %133, %sh_prom.i688.i
  %sh_prom5.i690.i = zext i32 %shr.i685.i to i64
  %shr6.i691.i = ashr i64 %add.i653.i, %sh_prom5.i690.i
  %mul.i692.i = mul i64 %shr3.i689.i, %shr6.i691.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i684.i)
  %cmp7.i693.i = icmp ugt i32 %sub.i684.i, 32
  br i1 %cmp7.i693.i, label %if.then8.i698.i, label %if.end11.i700.i

if.then8.i698.i:                                  ; preds = %if.end.i694.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i695.i = add i32 %add.i679.i, -93
  %sh_prom10.i696.i = zext i32 %sub9.i695.i to i64
  %shl.i697.i = shl i64 %mul.i692.i, %sh_prom10.i696.i
  br label %drm_fixp_mul.exit708.i

if.end11.i700.i:                                  ; preds = %if.end.i694.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i684.i)
  %cmp12.not.i699.i = icmp eq i32 %sub.i684.i, 32
  br i1 %cmp12.not.i699.i, label %if.end11.i700.i.drm_fixp_mul.exit708.i_crit_edge, label %if.end11.i700.i.if.then13.i706.i_crit_edge

if.end11.i700.i.if.then13.i706.i_crit_edge:       ; preds = %if.end11.i700.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i706.i

if.end11.i700.i.drm_fixp_mul.exit708.i_crit_edge: ; preds = %if.end11.i700.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit708.i

if.then13.i706.i:                                 ; preds = %if.end11.i700.i.if.then13.i706.i_crit_edge, %if.end11.thread.i683.i
  %shift.05056.i701.i = phi i32 [ 0, %if.end11.thread.i683.i ], [ %sub.i684.i, %if.end11.i700.i.if.then13.i706.i_crit_edge ]
  %mul5155.i702.i = phi i64 [ %mul48.i682.i, %if.end11.thread.i683.i ], [ %mul.i692.i, %if.end11.i700.i.if.then13.i706.i_crit_edge ]
  %sub14.i703.i = sub nuw nsw i32 32, %shift.05056.i701.i
  %sh_prom15.i704.i = zext i32 %sub14.i703.i to i64
  %shr16.i705.i = ashr i64 %mul5155.i702.i, %sh_prom15.i704.i
  br label %drm_fixp_mul.exit708.i

drm_fixp_mul.exit708.i:                           ; preds = %if.then13.i706.i, %if.end11.i700.i.drm_fixp_mul.exit708.i_crit_edge, %if.then8.i698.i
  %retval.0.i707.i = phi i64 [ %shl.i697.i, %if.then8.i698.i ], [ %shr16.i705.i, %if.then13.i706.i ], [ %mul.i692.i, %if.end11.i700.i.drm_fixp_mul.exit708.i_crit_edge ]
  %134 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %retval.0.i707.i, ptr %call7.i.i, align 8
  br label %dp_panel_update_tu_timings.exit

dp_panel_update_tu_timings.exit:                  ; preds = %drm_fixp_mul.exit708.i, %fec_check.i.dp_panel_update_tu_timings.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i856) #7
  %135 = ptrtoint ptr %rem.i856 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 -1, ptr %rem.i856, align 8, !annotation !176
  %call.i857 = call i64 @div64_u64_rem(i64 noundef 1000, i64 noundef 1, ptr noundef nonnull %rem.i856) #7
  %136 = ptrtoint ptr %rem.i856 to i32
  call void @__asan_load8_noabort(i32 %136)
  %rem.promoted.i858 = load i64, ptr %rem.i856, align 8
  br label %do.body.i872

do.body.i872:                                     ; preds = %do.body.i872.do.body.i872_crit_edge, %dp_panel_update_tu_timings.exit
  %storemerge40.i859 = phi i64 [ %rem.promoted.i858, %dp_panel_update_tu_timings.exit ], [ %storemerge.i866, %do.body.i872.do.body.i872_crit_edge ]
  %res_abs.0.i860 = phi i64 [ %call.i857, %dp_panel_update_tu_timings.exit ], [ %res_abs.1.i869, %do.body.i872.do.body.i872_crit_edge ]
  %i.0.i861 = phi i32 [ 32, %dp_panel_update_tu_timings.exit ], [ %dec.i870, %do.body.i872.do.body.i872_crit_edge ]
  %shl.i862 = shl i64 %storemerge40.i859, 1
  %shl9.i863 = shl i64 %res_abs.0.i860, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i862)
  %cmp10.not.i864 = icmp ne i64 %shl.i862, 0
  %sub11.i865.neg = sext i1 %cmp10.not.i864 to i64
  %storemerge.i866 = add i64 %shl.i862, %sub11.i865.neg
  %or.i868 = zext i1 %cmp10.not.i864 to i64
  %res_abs.1.i869 = or i64 %shl9.i863, %or.i868
  %dec.i870 = add nsw i32 %i.0.i861, -1
  %cmp12.not.i871 = icmp eq i32 %dec.i870, 0
  br i1 %cmp12.not.i871, label %drm_fixp_from_fraction.exit878, label %do.body.i872.do.body.i872_crit_edge

do.body.i872.do.body.i872_crit_edge:              ; preds = %do.body.i872
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i872

drm_fixp_from_fraction.exit878:                   ; preds = %do.body.i872
  %shl13.i873.mask = and i64 %storemerge.i866, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i873.mask)
  %cmp14.i874 = icmp ne i64 %shl13.i873.mask, 0
  %137 = zext i1 %cmp14.i874 to i64
  %add.i875 = add i64 %res_abs.1.i869, %137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i856) #7
  %err_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 16
  %138 = ptrtoint ptr %err_fp to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %add.i875, ptr %err_fp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i879) #7
  %139 = ptrtoint ptr %rem.i879 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 -1, ptr %rem.i879, align 8, !annotation !176
  %call.i880 = call i64 @div64_u64_rem(i64 noundef 4, i64 noundef 1, ptr noundef nonnull %rem.i879) #7
  %140 = ptrtoint ptr %rem.i879 to i32
  call void @__asan_load8_noabort(i32 %140)
  %rem.promoted.i881 = load i64, ptr %rem.i879, align 8
  br label %do.body.i895

do.body.i895:                                     ; preds = %do.body.i895.do.body.i895_crit_edge, %drm_fixp_from_fraction.exit878
  %storemerge40.i882 = phi i64 [ %rem.promoted.i881, %drm_fixp_from_fraction.exit878 ], [ %storemerge.i889, %do.body.i895.do.body.i895_crit_edge ]
  %res_abs.0.i883 = phi i64 [ %call.i880, %drm_fixp_from_fraction.exit878 ], [ %res_abs.1.i892, %do.body.i895.do.body.i895_crit_edge ]
  %i.0.i884 = phi i32 [ 32, %drm_fixp_from_fraction.exit878 ], [ %dec.i893, %do.body.i895.do.body.i895_crit_edge ]
  %shl.i885 = shl i64 %storemerge40.i882, 1
  %shl9.i886 = shl i64 %res_abs.0.i883, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i885)
  %cmp10.not.i887 = icmp ne i64 %shl.i885, 0
  %sub11.i888.neg = sext i1 %cmp10.not.i887 to i64
  %storemerge.i889 = add i64 %shl.i885, %sub11.i888.neg
  %or.i891 = zext i1 %cmp10.not.i887 to i64
  %res_abs.1.i892 = or i64 %shl9.i886, %or.i891
  %dec.i893 = add nsw i32 %i.0.i884, -1
  %cmp12.not.i894 = icmp eq i32 %dec.i893, 0
  br i1 %cmp12.not.i894, label %drm_fixp_from_fraction.exit901, label %do.body.i895.do.body.i895_crit_edge

do.body.i895.do.body.i895_crit_edge:              ; preds = %do.body.i895
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i895

drm_fixp_from_fraction.exit901:                   ; preds = %do.body.i895
  %shl13.i896.mask = and i64 %storemerge.i889, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i896.mask)
  %cmp14.i897 = icmp ne i64 %shl13.i896.mask, 0
  %141 = zext i1 %cmp14.i897 to i64
  %add.i898 = add i64 %res_abs.1.i892, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i879) #7
  %142 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %call7.i.i, align 8
  %shr12.i.i = lshr i64 %add.i898, 63
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %drm_fixp_from_fraction.exit901
  %shift.014.i.i = phi i32 [ 62, %drm_fixp_from_fraction.exit901 ], [ %dec.i.i903, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sh_prom.i.i902 = zext i32 %shift.014.i.i to i64
  %shr213.i.i = lshr i64 %add.i898, %sh_prom.i.i902
  %and3.i.i = and i64 %shr213.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i, i64 %shr12.i.i)
  %cmp5.not.i.i = icmp eq i64 %and3.i.i, %shr12.i.i
  br i1 %cmp5.not.i.i, label %for.inc.i.i, label %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge

for.body.i.i.drm_fixp_msbset.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i903 = add nsw i32 %shift.014.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i903, 0
  br i1 %cmp.not.i.i, label %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i

drm_fixp_msbset.exit.i:                           ; preds = %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge, %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge
  %shift.0.lcssa.i.i = phi i32 [ 0, %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge ], [ %shift.014.i.i, %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge ]
  %shr12.i33.i = lshr i64 %143, 63
  br label %for.body.i39.i

for.body.i39.i:                                   ; preds = %for.inc.i42.i.for.body.i39.i_crit_edge, %drm_fixp_msbset.exit.i
  %shift.014.i34.i = phi i32 [ 62, %drm_fixp_msbset.exit.i ], [ %dec.i40.i, %for.inc.i42.i.for.body.i39.i_crit_edge ]
  %sh_prom.i35.i = zext i32 %shift.014.i34.i to i64
  %shr213.i36.i = lshr i64 %143, %sh_prom.i35.i
  %and3.i37.i = and i64 %shr213.i36.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i, i64 %shr12.i33.i)
  %cmp5.not.i38.i = icmp eq i64 %and3.i37.i, %shr12.i33.i
  br i1 %cmp5.not.i38.i, label %for.inc.i42.i, label %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge

for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge: ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i

for.inc.i42.i:                                    ; preds = %for.body.i39.i
  %dec.i40.i = add nsw i32 %shift.014.i34.i, -1
  %cmp.not.i41.i = icmp eq i32 %dec.i40.i, 0
  br i1 %cmp.not.i41.i, label %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge, label %for.inc.i42.i.for.body.i39.i_crit_edge

for.inc.i42.i.for.body.i39.i_crit_edge:           ; preds = %for.inc.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i

for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge: ; preds = %for.inc.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i

drm_fixp_msbset.exit44.i:                         ; preds = %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge, %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge
  %shift.0.lcssa.i43.i = phi i32 [ 0, %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge ], [ %shift.014.i34.i, %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge ]
  %add.i904 = add i32 %shift.0.lcssa.i43.i, %shift.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i904)
  %cmp.i905 = icmp ugt i32 %add.i904, 61
  br i1 %cmp.i905, label %if.end.i907, label %if.end11.thread.i

if.end11.thread.i:                                ; preds = %drm_fixp_msbset.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i = mul i64 %143, %add.i898
  br label %if.then13.i

if.end.i907:                                      ; preds = %drm_fixp_msbset.exit44.i
  %sub.i906 = add i32 %add.i904, -61
  %shr.i = lshr i32 %sub.i906, 1
  %and.i = and i32 %sub.i906, 1
  %add2.i = add nuw nsw i32 %shr.i, %and.i
  %sh_prom.i = zext i32 %add2.i to i64
  %shr3.i = ashr i64 %add.i898, %sh_prom.i
  %sh_prom5.i = zext i32 %shr.i to i64
  %shr6.i = ashr i64 %143, %sh_prom5.i
  %mul.i = mul i64 %shr3.i, %shr6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i906)
  %cmp7.i = icmp ugt i32 %sub.i906, 32
  br i1 %cmp7.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i907
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i = add i32 %add.i904, -93
  %sh_prom10.i = zext i32 %sub9.i to i64
  %shl.i908 = shl i64 %mul.i, %sh_prom10.i
  br label %drm_fixp_mul.exit

if.end11.i:                                       ; preds = %if.end.i907
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i906)
  %cmp12.not.i909 = icmp eq i32 %sub.i906, 32
  br i1 %cmp12.not.i909, label %if.end11.i.drm_fixp_mul.exit_crit_edge, label %if.end11.i.if.then13.i_crit_edge

if.end11.i.if.then13.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.end11.i.drm_fixp_mul.exit_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit

if.then13.i:                                      ; preds = %if.end11.i.if.then13.i_crit_edge, %if.end11.thread.i
  %shift.05056.i = phi i32 [ 0, %if.end11.thread.i ], [ %sub.i906, %if.end11.i.if.then13.i_crit_edge ]
  %mul5155.i = phi i64 [ %mul48.i, %if.end11.thread.i ], [ %mul.i, %if.end11.i.if.then13.i_crit_edge ]
  %sub14.i = sub nuw nsw i32 32, %shift.05056.i
  %sh_prom15.i = zext i32 %sub14.i to i64
  %shr16.i = ashr i64 %mul5155.i, %sh_prom15.i
  br label %drm_fixp_mul.exit

drm_fixp_mul.exit:                                ; preds = %if.then13.i, %if.end11.i.drm_fixp_mul.exit_crit_edge, %if.then8.i
  %retval.0.i = phi i64 [ %shl.i908, %if.then8.i ], [ %shr16.i, %if.then13.i ], [ %mul.i, %if.end11.i.drm_fixp_mul.exit_crit_edge ]
  %144 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %retval.0.i, ptr %temp2_fp, align 8
  %145 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i910 = lshr i64 %retval.0.i, 63
  br label %for.body.i.i916

for.body.i.i916:                                  ; preds = %for.inc.i.i919.for.body.i.i916_crit_edge, %drm_fixp_mul.exit
  %shift.014.i.i911 = phi i32 [ 62, %drm_fixp_mul.exit ], [ %dec.i.i917, %for.inc.i.i919.for.body.i.i916_crit_edge ]
  %sh_prom.i.i912 = zext i32 %shift.014.i.i911 to i64
  %shr213.i.i913 = lshr i64 %retval.0.i, %sh_prom.i.i912
  %and3.i.i914 = and i64 %shr213.i.i913, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i914, i64 %shr12.i.i910)
  %cmp5.not.i.i915 = icmp eq i64 %and3.i.i914, %shr12.i.i910
  br i1 %cmp5.not.i.i915, label %for.inc.i.i919, label %for.body.i.i916.drm_fixp_div.exit_crit_edge

for.body.i.i916.drm_fixp_div.exit_crit_edge:      ; preds = %for.body.i.i916
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit

for.inc.i.i919:                                   ; preds = %for.body.i.i916
  %dec.i.i917 = add nsw i32 %shift.014.i.i911, -1
  %cmp.not.i.i918 = icmp eq i32 %dec.i.i917, 0
  br i1 %cmp.not.i.i918, label %for.inc.i.i919.drm_fixp_div.exit_crit_edge, label %for.inc.i.i919.for.body.i.i916_crit_edge

for.inc.i.i919.for.body.i.i916_crit_edge:         ; preds = %for.inc.i.i919
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i916

for.inc.i.i919.drm_fixp_div.exit_crit_edge:       ; preds = %for.inc.i.i919
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit

drm_fixp_div.exit:                                ; preds = %for.inc.i.i919.drm_fixp_div.exit_crit_edge, %for.body.i.i916.drm_fixp_div.exit_crit_edge
  %shift.0.lcssa.i.i920 = phi i32 [ 0, %for.inc.i.i919.drm_fixp_div.exit_crit_edge ], [ %shift.014.i.i911, %for.body.i.i916.drm_fixp_div.exit_crit_edge ]
  %sub.i921 = sub i32 62, %shift.0.lcssa.i.i920
  %sh_prom.i922 = zext i32 %sub.i921 to i64
  %shl.i923 = shl i64 %retval.0.i, %sh_prom.i922
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i921)
  %cmp.i924 = icmp ult i32 %sub.i921, 32
  %sub1.i = add i32 %shift.0.lcssa.i.i920, -30
  %narrow.i = select i1 %cmp.i924, i32 %sub1.i, i32 0
  %shr.i925 = zext i32 %narrow.i to i64
  %b.addr.0.i = ashr i64 %146, %shr.i925
  %call3.i = call i64 @div64_s64(i64 noundef %shl.i923, i64 noundef %b.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i921)
  %cmp4.i = icmp ugt i32 %sub.i921, 32
  %sub6.i = sub i32 30, %shift.0.lcssa.i.i920
  %narrow19.i = select i1 %cmp4.i, i32 %sub6.i, i32 0
  %shr8.i = zext i32 %narrow19.i to i64
  %retval.0.i926 = ashr i64 %call3.i, %shr8.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i926)
  %cmp.i928 = icmp sgt i64 %retval.0.i926, 0
  %..i = select i1 %cmp.i928, i64 4294967295, i64 -4294967295
  %sub.i929 = add i64 %..i, %retval.0.i926
  %147 = lshr i64 %sub.i929, 32
  %conv.i4.i = trunc i64 %147 to i32
  %extra_buffer_margin = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 13
  %148 = ptrtoint ptr %extra_buffer_margin to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv.i4.i, ptr %extra_buffer_margin, align 4
  %149 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bpp5.i, align 4
  %151 = call i32 @llvm.abs.i32(i32 %150, i1 false)
  %152 = zext i32 %151 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i930) #7
  %153 = ptrtoint ptr %rem.i930 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 -1, ptr %rem.i930, align 8, !annotation !176
  %call.i931 = call i64 @div64_u64_rem(i64 noundef %152, i64 noundef 8, ptr noundef nonnull %rem.i930) #7
  %154 = ptrtoint ptr %rem.i930 to i32
  call void @__asan_load8_noabort(i32 %154)
  %rem.promoted.i932 = load i64, ptr %rem.i930, align 8
  br label %do.body.i946

do.body.i946:                                     ; preds = %do.body.i946.do.body.i946_crit_edge, %drm_fixp_div.exit
  %storemerge40.i933 = phi i64 [ %rem.promoted.i932, %drm_fixp_div.exit ], [ %storemerge.i940, %do.body.i946.do.body.i946_crit_edge ]
  %res_abs.0.i934 = phi i64 [ %call.i931, %drm_fixp_div.exit ], [ %res_abs.1.i943, %do.body.i946.do.body.i946_crit_edge ]
  %i.0.i935 = phi i32 [ 32, %drm_fixp_div.exit ], [ %dec.i944, %do.body.i946.do.body.i946_crit_edge ]
  %shl.i936 = shl i64 %storemerge40.i933, 1
  %shl9.i937 = shl i64 %res_abs.0.i934, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %shl.i936)
  %cmp10.not.i938 = icmp ult i64 %shl.i936, 8
  %sub11.i939.neg = select i1 %cmp10.not.i938, i64 0, i64 -8
  %storemerge.i940 = add i64 %sub11.i939.neg, %shl.i936
  %not.cmp10.not.i941 = xor i1 %cmp10.not.i938, true
  %or.i942 = zext i1 %not.cmp10.not.i941 to i64
  %res_abs.1.i943 = or i64 %shl9.i937, %or.i942
  %dec.i944 = add nsw i32 %i.0.i935, -1
  %cmp12.not.i945 = icmp eq i32 %dec.i944, 0
  br i1 %cmp12.not.i945, label %drm_fixp_from_fraction.exit953, label %do.body.i946.do.body.i946_crit_edge

do.body.i946.do.body.i946_crit_edge:              ; preds = %do.body.i946
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i946

drm_fixp_from_fraction.exit953:                   ; preds = %do.body.i946
  %155 = and i64 %storemerge.i940, 9223372036854775804
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %155)
  %cmp14.i948 = icmp ne i64 %155, 0
  %156 = zext i1 %cmp14.i948 to i64
  %add.i949 = add i64 %res_abs.1.i943, %156
  %sub22.i950 = sub i64 0, %add.i949
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool20.not39.i = icmp slt i32 %150, 0
  %spec.select.i951 = select i1 %tobool20.not39.i, i64 %sub22.i950, i64 %add.i949
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i930) #7
  %157 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i954 = lshr i64 %158, 63
  br label %for.body.i.i960

for.body.i.i960:                                  ; preds = %for.inc.i.i963.for.body.i.i960_crit_edge, %drm_fixp_from_fraction.exit953
  %shift.014.i.i955 = phi i32 [ 62, %drm_fixp_from_fraction.exit953 ], [ %dec.i.i961, %for.inc.i.i963.for.body.i.i960_crit_edge ]
  %sh_prom.i.i956 = zext i32 %shift.014.i.i955 to i64
  %shr213.i.i957 = lshr i64 %158, %sh_prom.i.i956
  %and3.i.i958 = and i64 %shr213.i.i957, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i958, i64 %shr12.i.i954)
  %cmp5.not.i.i959 = icmp eq i64 %and3.i.i958, %shr12.i.i954
  br i1 %cmp5.not.i.i959, label %for.inc.i.i963, label %for.body.i.i960.drm_fixp_msbset.exit.i966_crit_edge

for.body.i.i960.drm_fixp_msbset.exit.i966_crit_edge: ; preds = %for.body.i.i960
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i966

for.inc.i.i963:                                   ; preds = %for.body.i.i960
  %dec.i.i961 = add nsw i32 %shift.014.i.i955, -1
  %cmp.not.i.i962 = icmp eq i32 %dec.i.i961, 0
  br i1 %cmp.not.i.i962, label %for.inc.i.i963.drm_fixp_msbset.exit.i966_crit_edge, label %for.inc.i.i963.for.body.i.i960_crit_edge

for.inc.i.i963.for.body.i.i960_crit_edge:         ; preds = %for.inc.i.i963
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i960

for.inc.i.i963.drm_fixp_msbset.exit.i966_crit_edge: ; preds = %for.inc.i.i963
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i966

drm_fixp_msbset.exit.i966:                        ; preds = %for.inc.i.i963.drm_fixp_msbset.exit.i966_crit_edge, %for.body.i.i960.drm_fixp_msbset.exit.i966_crit_edge
  %shift.0.lcssa.i.i964 = phi i32 [ 0, %for.inc.i.i963.drm_fixp_msbset.exit.i966_crit_edge ], [ %shift.014.i.i955, %for.body.i.i960.drm_fixp_msbset.exit.i966_crit_edge ]
  %shr12.i33.i965 = lshr i64 %spec.select.i951, 63
  br label %for.body.i39.i972

for.body.i39.i972:                                ; preds = %for.inc.i42.i975.for.body.i39.i972_crit_edge, %drm_fixp_msbset.exit.i966
  %shift.014.i34.i967 = phi i32 [ 62, %drm_fixp_msbset.exit.i966 ], [ %dec.i40.i973, %for.inc.i42.i975.for.body.i39.i972_crit_edge ]
  %sh_prom.i35.i968 = zext i32 %shift.014.i34.i967 to i64
  %shr213.i36.i969 = lshr i64 %spec.select.i951, %sh_prom.i35.i968
  %and3.i37.i970 = and i64 %shr213.i36.i969, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i970, i64 %shr12.i33.i965)
  %cmp5.not.i38.i971 = icmp eq i64 %and3.i37.i970, %shr12.i33.i965
  br i1 %cmp5.not.i38.i971, label %for.inc.i42.i975, label %for.body.i39.i972.drm_fixp_msbset.exit44.i979_crit_edge

for.body.i39.i972.drm_fixp_msbset.exit44.i979_crit_edge: ; preds = %for.body.i39.i972
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i979

for.inc.i42.i975:                                 ; preds = %for.body.i39.i972
  %dec.i40.i973 = add nsw i32 %shift.014.i34.i967, -1
  %cmp.not.i41.i974 = icmp eq i32 %dec.i40.i973, 0
  br i1 %cmp.not.i41.i974, label %for.inc.i42.i975.drm_fixp_msbset.exit44.i979_crit_edge, label %for.inc.i42.i975.for.body.i39.i972_crit_edge

for.inc.i42.i975.for.body.i39.i972_crit_edge:     ; preds = %for.inc.i42.i975
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i972

for.inc.i42.i975.drm_fixp_msbset.exit44.i979_crit_edge: ; preds = %for.inc.i42.i975
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i979

drm_fixp_msbset.exit44.i979:                      ; preds = %for.inc.i42.i975.drm_fixp_msbset.exit44.i979_crit_edge, %for.body.i39.i972.drm_fixp_msbset.exit44.i979_crit_edge
  %shift.0.lcssa.i43.i976 = phi i32 [ 0, %for.inc.i42.i975.drm_fixp_msbset.exit44.i979_crit_edge ], [ %shift.014.i34.i967, %for.body.i39.i972.drm_fixp_msbset.exit44.i979_crit_edge ]
  %add.i977 = add i32 %shift.0.lcssa.i43.i976, %shift.0.lcssa.i.i964
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i977)
  %cmp.i978 = icmp ugt i32 %add.i977, 61
  br i1 %cmp.i978, label %if.end.i992, label %if.end11.thread.i981

if.end11.thread.i981:                             ; preds = %drm_fixp_msbset.exit44.i979
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i980 = mul i64 %158, %spec.select.i951
  br label %if.then13.i1004

if.end.i992:                                      ; preds = %drm_fixp_msbset.exit44.i979
  %sub.i982 = add i32 %add.i977, -61
  %shr.i983 = lshr i32 %sub.i982, 1
  %and.i984 = and i32 %sub.i982, 1
  %add2.i985 = add nuw nsw i32 %shr.i983, %and.i984
  %sh_prom.i986 = zext i32 %add2.i985 to i64
  %shr3.i987 = ashr i64 %158, %sh_prom.i986
  %sh_prom5.i988 = zext i32 %shr.i983 to i64
  %shr6.i989 = ashr i64 %spec.select.i951, %sh_prom5.i988
  %mul.i990 = mul i64 %shr3.i987, %shr6.i989
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i982)
  %cmp7.i991 = icmp ugt i32 %sub.i982, 32
  br i1 %cmp7.i991, label %if.then8.i996, label %if.end11.i998

if.then8.i996:                                    ; preds = %if.end.i992
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i993 = add i32 %add.i977, -93
  %sh_prom10.i994 = zext i32 %sub9.i993 to i64
  %shl.i995 = shl i64 %mul.i990, %sh_prom10.i994
  br label %drm_fixp_mul.exit1006

if.end11.i998:                                    ; preds = %if.end.i992
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i982)
  %cmp12.not.i997 = icmp eq i32 %sub.i982, 32
  br i1 %cmp12.not.i997, label %if.end11.i998.drm_fixp_mul.exit1006_crit_edge, label %if.end11.i998.if.then13.i1004_crit_edge

if.end11.i998.if.then13.i1004_crit_edge:          ; preds = %if.end11.i998
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1004

if.end11.i998.drm_fixp_mul.exit1006_crit_edge:    ; preds = %if.end11.i998
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1006

if.then13.i1004:                                  ; preds = %if.end11.i998.if.then13.i1004_crit_edge, %if.end11.thread.i981
  %shift.05056.i999 = phi i32 [ 0, %if.end11.thread.i981 ], [ %sub.i982, %if.end11.i998.if.then13.i1004_crit_edge ]
  %mul5155.i1000 = phi i64 [ %mul48.i980, %if.end11.thread.i981 ], [ %mul.i990, %if.end11.i998.if.then13.i1004_crit_edge ]
  %sub14.i1001 = sub nuw nsw i32 32, %shift.05056.i999
  %sh_prom15.i1002 = zext i32 %sub14.i1001 to i64
  %shr16.i1003 = ashr i64 %mul5155.i1000, %sh_prom15.i1002
  br label %drm_fixp_mul.exit1006

drm_fixp_mul.exit1006:                            ; preds = %if.then13.i1004, %if.end11.i998.drm_fixp_mul.exit1006_crit_edge, %if.then8.i996
  %retval.0.i1005 = phi i64 [ %shl.i995, %if.then8.i996 ], [ %shr16.i1003, %if.then13.i1004 ], [ %mul.i990, %if.end11.i998.drm_fixp_mul.exit1006_crit_edge ]
  %159 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %retval.0.i1005, ptr %temp2_fp, align 8
  %160 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %nlanes4.i, align 8
  %162 = call i32 @llvm.abs.i32(i32 %161, i1 false)
  %163 = zext i32 %162 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1007) #7
  %164 = ptrtoint ptr %rem.i1007 to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 -1, ptr %rem.i1007, align 8, !annotation !176
  %call.i1008 = call i64 @div64_u64_rem(i64 noundef %163, i64 noundef 1, ptr noundef nonnull %rem.i1007) #7
  %165 = ptrtoint ptr %rem.i1007 to i32
  call void @__asan_load8_noabort(i32 %165)
  %rem.promoted.i1009 = load i64, ptr %rem.i1007, align 8
  br label %do.body.i1023

do.body.i1023:                                    ; preds = %do.body.i1023.do.body.i1023_crit_edge, %drm_fixp_mul.exit1006
  %storemerge40.i1010 = phi i64 [ %rem.promoted.i1009, %drm_fixp_mul.exit1006 ], [ %storemerge.i1017, %do.body.i1023.do.body.i1023_crit_edge ]
  %res_abs.0.i1011 = phi i64 [ %call.i1008, %drm_fixp_mul.exit1006 ], [ %res_abs.1.i1020, %do.body.i1023.do.body.i1023_crit_edge ]
  %i.0.i1012 = phi i32 [ 32, %drm_fixp_mul.exit1006 ], [ %dec.i1021, %do.body.i1023.do.body.i1023_crit_edge ]
  %shl.i1013 = shl i64 %storemerge40.i1010, 1
  %shl9.i1014 = shl i64 %res_abs.0.i1011, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1013)
  %cmp10.not.i1015 = icmp ne i64 %shl.i1013, 0
  %sub11.i1016.neg = sext i1 %cmp10.not.i1015 to i64
  %storemerge.i1017 = add i64 %shl.i1013, %sub11.i1016.neg
  %or.i1019 = zext i1 %cmp10.not.i1015 to i64
  %res_abs.1.i1020 = or i64 %shl9.i1014, %or.i1019
  %dec.i1021 = add nsw i32 %i.0.i1012, -1
  %cmp12.not.i1022 = icmp eq i32 %dec.i1021, 0
  br i1 %cmp12.not.i1022, label %drm_fixp_from_fraction.exit1032, label %do.body.i1023.do.body.i1023_crit_edge

do.body.i1023.do.body.i1023_crit_edge:            ; preds = %do.body.i1023
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1023

drm_fixp_from_fraction.exit1032:                  ; preds = %do.body.i1023
  %shl13.i1024.mask = and i64 %storemerge.i1017, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1024.mask)
  %cmp14.i1025 = icmp ne i64 %shl13.i1024.mask, 0
  %166 = zext i1 %cmp14.i1025 to i64
  %add.i1026 = add i64 %res_abs.1.i1020, %166
  %sub22.i1028 = sub i64 0, %add.i1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool20.not39.i1029 = icmp slt i32 %161, 0
  %spec.select.i1030 = select i1 %tobool20.not39.i1029, i64 %sub22.i1028, i64 %add.i1026
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1007) #7
  %167 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %temp2_fp, align 8
  %shr12.i.i1033 = lshr i64 %168, 63
  br label %for.body.i.i1039

for.body.i.i1039:                                 ; preds = %for.inc.i.i1042.for.body.i.i1039_crit_edge, %drm_fixp_from_fraction.exit1032
  %shift.014.i.i1034 = phi i32 [ 62, %drm_fixp_from_fraction.exit1032 ], [ %dec.i.i1040, %for.inc.i.i1042.for.body.i.i1039_crit_edge ]
  %sh_prom.i.i1035 = zext i32 %shift.014.i.i1034 to i64
  %shr213.i.i1036 = lshr i64 %168, %sh_prom.i.i1035
  %and3.i.i1037 = and i64 %shr213.i.i1036, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1037, i64 %shr12.i.i1033)
  %cmp5.not.i.i1038 = icmp eq i64 %and3.i.i1037, %shr12.i.i1033
  br i1 %cmp5.not.i.i1038, label %for.inc.i.i1042, label %for.body.i.i1039.drm_fixp_div.exit1059_crit_edge

for.body.i.i1039.drm_fixp_div.exit1059_crit_edge: ; preds = %for.body.i.i1039
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1059

for.inc.i.i1042:                                  ; preds = %for.body.i.i1039
  %dec.i.i1040 = add nsw i32 %shift.014.i.i1034, -1
  %cmp.not.i.i1041 = icmp eq i32 %dec.i.i1040, 0
  br i1 %cmp.not.i.i1041, label %for.inc.i.i1042.drm_fixp_div.exit1059_crit_edge, label %for.inc.i.i1042.for.body.i.i1039_crit_edge

for.inc.i.i1042.for.body.i.i1039_crit_edge:       ; preds = %for.inc.i.i1042
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1039

for.inc.i.i1042.drm_fixp_div.exit1059_crit_edge:  ; preds = %for.inc.i.i1042
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1059

drm_fixp_div.exit1059:                            ; preds = %for.inc.i.i1042.drm_fixp_div.exit1059_crit_edge, %for.body.i.i1039.drm_fixp_div.exit1059_crit_edge
  %shift.0.lcssa.i.i1043 = phi i32 [ 0, %for.inc.i.i1042.drm_fixp_div.exit1059_crit_edge ], [ %shift.014.i.i1034, %for.body.i.i1039.drm_fixp_div.exit1059_crit_edge ]
  %sub.i1044 = sub i32 62, %shift.0.lcssa.i.i1043
  %sh_prom.i1045 = zext i32 %sub.i1044 to i64
  %shl.i1046 = shl i64 %168, %sh_prom.i1045
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1044)
  %cmp.i1047 = icmp ult i32 %sub.i1044, 32
  %sub1.i1048 = add i32 %shift.0.lcssa.i.i1043, -30
  %narrow.i1049 = select i1 %cmp.i1047, i32 %sub1.i1048, i32 0
  %shr.i1050 = zext i32 %narrow.i1049 to i64
  %b.addr.0.i1051 = ashr i64 %spec.select.i1030, %shr.i1050
  %call3.i1052 = call i64 @div64_s64(i64 noundef %shl.i1046, i64 noundef %b.addr.0.i1051) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1044)
  %cmp4.i1053 = icmp ugt i32 %sub.i1044, 32
  %sub6.i1054 = sub i32 30, %shift.0.lcssa.i.i1043
  %narrow19.i1055 = select i1 %cmp4.i1053, i32 %sub6.i1054, i32 0
  %shr8.i1056 = zext i32 %narrow19.i1055 to i64
  %retval.0.i1057 = ashr i64 %call3.i1052, %shr8.i1056
  %169 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %retval.0.i1057, ptr %temp2_fp, align 8
  %170 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %call7.i.i, align 8
  %shr12.i.i1060 = lshr i64 %retval.0.i1057, 63
  br label %for.body.i.i1066

for.body.i.i1066:                                 ; preds = %for.inc.i.i1069.for.body.i.i1066_crit_edge, %drm_fixp_div.exit1059
  %shift.014.i.i1061 = phi i32 [ 62, %drm_fixp_div.exit1059 ], [ %dec.i.i1067, %for.inc.i.i1069.for.body.i.i1066_crit_edge ]
  %sh_prom.i.i1062 = zext i32 %shift.014.i.i1061 to i64
  %shr213.i.i1063 = lshr i64 %retval.0.i1057, %sh_prom.i.i1062
  %and3.i.i1064 = and i64 %shr213.i.i1063, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1064, i64 %shr12.i.i1060)
  %cmp5.not.i.i1065 = icmp eq i64 %and3.i.i1064, %shr12.i.i1060
  br i1 %cmp5.not.i.i1065, label %for.inc.i.i1069, label %for.body.i.i1066.drm_fixp_div.exit1086_crit_edge

for.body.i.i1066.drm_fixp_div.exit1086_crit_edge: ; preds = %for.body.i.i1066
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1086

for.inc.i.i1069:                                  ; preds = %for.body.i.i1066
  %dec.i.i1067 = add nsw i32 %shift.014.i.i1061, -1
  %cmp.not.i.i1068 = icmp eq i32 %dec.i.i1067, 0
  br i1 %cmp.not.i.i1068, label %for.inc.i.i1069.drm_fixp_div.exit1086_crit_edge, label %for.inc.i.i1069.for.body.i.i1066_crit_edge

for.inc.i.i1069.for.body.i.i1066_crit_edge:       ; preds = %for.inc.i.i1069
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1066

for.inc.i.i1069.drm_fixp_div.exit1086_crit_edge:  ; preds = %for.inc.i.i1069
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1086

drm_fixp_div.exit1086:                            ; preds = %for.inc.i.i1069.drm_fixp_div.exit1086_crit_edge, %for.body.i.i1066.drm_fixp_div.exit1086_crit_edge
  %shift.0.lcssa.i.i1070 = phi i32 [ 0, %for.inc.i.i1069.drm_fixp_div.exit1086_crit_edge ], [ %shift.014.i.i1061, %for.body.i.i1066.drm_fixp_div.exit1086_crit_edge ]
  %sub.i1071 = sub i32 62, %shift.0.lcssa.i.i1070
  %sh_prom.i1072 = zext i32 %sub.i1071 to i64
  %shl.i1073 = shl i64 %retval.0.i1057, %sh_prom.i1072
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1071)
  %cmp.i1074 = icmp ult i32 %sub.i1071, 32
  %sub1.i1075 = add i32 %shift.0.lcssa.i.i1070, -30
  %narrow.i1076 = select i1 %cmp.i1074, i32 %sub1.i1075, i32 0
  %shr.i1077 = zext i32 %narrow.i1076 to i64
  %b.addr.0.i1078 = ashr i64 %171, %shr.i1077
  %call3.i1079 = call i64 @div64_s64(i64 noundef %shl.i1073, i64 noundef %b.addr.0.i1078) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1071)
  %cmp4.i1080 = icmp ugt i32 %sub.i1071, 32
  %sub6.i1081 = sub i32 30, %shift.0.lcssa.i.i1070
  %narrow19.i1082 = select i1 %cmp4.i1080, i32 %sub6.i1081, i32 0
  %shr8.i1083 = zext i32 %narrow19.i1082 to i64
  %retval.0.i1084 = ashr i64 %call3.i1079, %shr8.i1083
  %ratio_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 14
  %172 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %retval.0.i1084, ptr %ratio_fp, align 8
  %original_ratio_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 15
  %173 = ptrtoint ptr %original_ratio_fp to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %retval.0.i1084, ptr %original_ratio_fp, align 8
  %boundary_moderation_en = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 53
  %174 = ptrtoint ptr %boundary_moderation_en to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %boundary_moderation_en, align 4
  %upper_boundary_count = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 55
  %lower_boundary_count = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 56
  %i_upper_boundary_count = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 57
  %i_lower_boundary_count = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 58
  %valid_lower_boundary_link = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 59
  %even_distribution_BF = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 60
  %even_distribution_legacy = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 61
  %even_distribution = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 62
  %delay_start_time_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 64
  %175 = ptrtoint ptr %delay_start_time_fp to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 0, ptr %delay_start_time_fp, align 8
  %176 = call ptr @memset(ptr %upper_boundary_count, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1087) #7
  %177 = ptrtoint ptr %rem.i1087 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 -1, ptr %rem.i1087, align 8, !annotation !176
  %call.i1088 = call i64 @div64_u64_rem(i64 noundef 1000, i64 noundef 1, ptr noundef nonnull %rem.i1087) #7
  %178 = ptrtoint ptr %rem.i1087 to i32
  call void @__asan_load8_noabort(i32 %178)
  %rem.promoted.i1089 = load i64, ptr %rem.i1087, align 8
  br label %do.body.i1103

do.body.i1103:                                    ; preds = %do.body.i1103.do.body.i1103_crit_edge, %drm_fixp_div.exit1086
  %storemerge40.i1090 = phi i64 [ %rem.promoted.i1089, %drm_fixp_div.exit1086 ], [ %storemerge.i1097, %do.body.i1103.do.body.i1103_crit_edge ]
  %res_abs.0.i1091 = phi i64 [ %call.i1088, %drm_fixp_div.exit1086 ], [ %res_abs.1.i1100, %do.body.i1103.do.body.i1103_crit_edge ]
  %i.0.i1092 = phi i32 [ 32, %drm_fixp_div.exit1086 ], [ %dec.i1101, %do.body.i1103.do.body.i1103_crit_edge ]
  %shl.i1093 = shl i64 %storemerge40.i1090, 1
  %shl9.i1094 = shl i64 %res_abs.0.i1091, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1093)
  %cmp10.not.i1095 = icmp ne i64 %shl.i1093, 0
  %sub11.i1096.neg = sext i1 %cmp10.not.i1095 to i64
  %storemerge.i1097 = add i64 %shl.i1093, %sub11.i1096.neg
  %or.i1099 = zext i1 %cmp10.not.i1095 to i64
  %res_abs.1.i1100 = or i64 %shl9.i1094, %or.i1099
  %dec.i1101 = add nsw i32 %i.0.i1092, -1
  %cmp12.not.i1102 = icmp eq i32 %dec.i1101, 0
  br i1 %cmp12.not.i1102, label %drm_fixp_from_fraction.exit1109, label %do.body.i1103.do.body.i1103_crit_edge

do.body.i1103.do.body.i1103_crit_edge:            ; preds = %do.body.i1103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1103

drm_fixp_from_fraction.exit1109:                  ; preds = %do.body.i1103
  %shl13.i1104.mask = and i64 %storemerge.i1097, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1104.mask)
  %cmp14.i1105 = icmp ne i64 %shl13.i1104.mask, 0
  %179 = zext i1 %cmp14.i1105 to i64
  %add.i1106 = add i64 %res_abs.1.i1100, %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1087) #7
  %180 = ptrtoint ptr %err_fp to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %add.i1106, ptr %err_fp, align 8
  %n_err_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 17
  %n_n_err_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 18
  %181 = call ptr @memset(ptr %n_err_fp, i32 0, i32 16)
  %182 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %ratio_fp, align 8
  %conv24 = ashr i64 %183, 32
  %ratio = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 68
  %184 = ptrtoint ptr %ratio to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %conv24, ptr %ratio, align 8
  %185 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %nlanes4.i, align 8
  %187 = call i32 @llvm.abs.i32(i32 %186, i1 false)
  %188 = zext i32 %187 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1110) #7
  %189 = ptrtoint ptr %rem.i1110 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 -1, ptr %rem.i1110, align 8, !annotation !176
  %call.i1111 = call i64 @div64_u64_rem(i64 noundef %188, i64 noundef 1, ptr noundef nonnull %rem.i1110) #7
  %190 = ptrtoint ptr %rem.i1110 to i32
  call void @__asan_load8_noabort(i32 %190)
  %rem.promoted.i1112 = load i64, ptr %rem.i1110, align 8
  br label %do.body.i1126

do.body.i1126:                                    ; preds = %do.body.i1126.do.body.i1126_crit_edge, %drm_fixp_from_fraction.exit1109
  %storemerge40.i1113 = phi i64 [ %rem.promoted.i1112, %drm_fixp_from_fraction.exit1109 ], [ %storemerge.i1120, %do.body.i1126.do.body.i1126_crit_edge ]
  %res_abs.0.i1114 = phi i64 [ %call.i1111, %drm_fixp_from_fraction.exit1109 ], [ %res_abs.1.i1123, %do.body.i1126.do.body.i1126_crit_edge ]
  %i.0.i1115 = phi i32 [ 32, %drm_fixp_from_fraction.exit1109 ], [ %dec.i1124, %do.body.i1126.do.body.i1126_crit_edge ]
  %shl.i1116 = shl i64 %storemerge40.i1113, 1
  %shl9.i1117 = shl i64 %res_abs.0.i1114, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1116)
  %cmp10.not.i1118 = icmp ne i64 %shl.i1116, 0
  %sub11.i1119.neg = sext i1 %cmp10.not.i1118 to i64
  %storemerge.i1120 = add i64 %shl.i1116, %sub11.i1119.neg
  %or.i1122 = zext i1 %cmp10.not.i1118 to i64
  %res_abs.1.i1123 = or i64 %shl9.i1117, %or.i1122
  %dec.i1124 = add nsw i32 %i.0.i1115, -1
  %cmp12.not.i1125 = icmp eq i32 %dec.i1124, 0
  br i1 %cmp12.not.i1125, label %drm_fixp_from_fraction.exit1135, label %do.body.i1126.do.body.i1126_crit_edge

do.body.i1126.do.body.i1126_crit_edge:            ; preds = %do.body.i1126
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1126

drm_fixp_from_fraction.exit1135:                  ; preds = %do.body.i1126
  %shl13.i1127.mask = and i64 %storemerge.i1120, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1127.mask)
  %cmp14.i1128 = icmp ne i64 %shl13.i1127.mask, 0
  %191 = zext i1 %cmp14.i1128 to i64
  %add.i1129 = add i64 %res_abs.1.i1123, %191
  %sub22.i1131 = sub i64 0, %add.i1129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool20.not39.i1132 = icmp slt i32 %186, 0
  %spec.select.i1133 = select i1 %tobool20.not39.i1132, i64 %sub22.i1131, i64 %add.i1129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1110) #7
  %192 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %lwidth_fp.i, align 8
  %call28 = call i64 @div64_u64_rem(i64 noundef %193, i64 noundef %spec.select.i1133, ptr noundef nonnull %temp2_fp) #7
  %194 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %temp2_fp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %195)
  %cmp.not = icmp eq i64 %195, 0
  br i1 %cmp.not, label %drm_fixp_from_fraction.exit1135.if.end49thread-pre-split_crit_edge, label %land.lhs.true

drm_fixp_from_fraction.exit1135.if.end49thread-pre-split_crit_edge: ; preds = %drm_fixp_from_fraction.exit1135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49thread-pre-split

land.lhs.true:                                    ; preds = %drm_fixp_from_fraction.exit1135
  %196 = ptrtoint ptr %ratio to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %ratio, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %197)
  %tobool31.not = icmp eq i64 %197, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true32:                                  ; preds = %land.lhs.true
  %198 = ptrtoint ptr %dsc_en6.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dsc_en6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp33 = icmp eq i32 %199, 0
  br i1 %cmp33, label %if.then35, label %land.lhs.true32.if.end60_crit_edge

land.lhs.true32.if.end60_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then35:                                        ; preds = %land.lhs.true32
  %200 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %ratio_fp, align 8
  %shr12.i.i1136 = lshr i64 %201, 63
  br label %for.body.i.i1142

for.body.i.i1142:                                 ; preds = %for.inc.i.i1145.for.body.i.i1142_crit_edge, %if.then35
  %shift.014.i.i1137 = phi i32 [ 62, %if.then35 ], [ %dec.i.i1143, %for.inc.i.i1145.for.body.i.i1142_crit_edge ]
  %sh_prom.i.i1138 = zext i32 %shift.014.i.i1137 to i64
  %shr213.i.i1139 = lshr i64 %201, %sh_prom.i.i1138
  %and3.i.i1140 = and i64 %shr213.i.i1139, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1140, i64 %shr12.i.i1136)
  %cmp5.not.i.i1141 = icmp eq i64 %and3.i.i1140, %shr12.i.i1136
  br i1 %cmp5.not.i.i1141, label %for.inc.i.i1145, label %for.body.i.i1142.drm_fixp_msbset.exit.i1148_crit_edge

for.body.i.i1142.drm_fixp_msbset.exit.i1148_crit_edge: ; preds = %for.body.i.i1142
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1148

for.inc.i.i1145:                                  ; preds = %for.body.i.i1142
  %dec.i.i1143 = add nsw i32 %shift.014.i.i1137, -1
  %cmp.not.i.i1144 = icmp eq i32 %dec.i.i1143, 0
  br i1 %cmp.not.i.i1144, label %for.inc.i.i1145.drm_fixp_msbset.exit.i1148_crit_edge, label %for.inc.i.i1145.for.body.i.i1142_crit_edge

for.inc.i.i1145.for.body.i.i1142_crit_edge:       ; preds = %for.inc.i.i1145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1142

for.inc.i.i1145.drm_fixp_msbset.exit.i1148_crit_edge: ; preds = %for.inc.i.i1145
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1148

drm_fixp_msbset.exit.i1148:                       ; preds = %for.inc.i.i1145.drm_fixp_msbset.exit.i1148_crit_edge, %for.body.i.i1142.drm_fixp_msbset.exit.i1148_crit_edge
  %shift.0.lcssa.i.i1146 = phi i32 [ 0, %for.inc.i.i1145.drm_fixp_msbset.exit.i1148_crit_edge ], [ %shift.014.i.i1137, %for.body.i.i1142.drm_fixp_msbset.exit.i1148_crit_edge ]
  %shr12.i33.i1147 = lshr i64 %add.i829, 63
  br label %for.body.i39.i1154

for.body.i39.i1154:                               ; preds = %for.inc.i42.i1157.for.body.i39.i1154_crit_edge, %drm_fixp_msbset.exit.i1148
  %shift.014.i34.i1149 = phi i32 [ 62, %drm_fixp_msbset.exit.i1148 ], [ %dec.i40.i1155, %for.inc.i42.i1157.for.body.i39.i1154_crit_edge ]
  %sh_prom.i35.i1150 = zext i32 %shift.014.i34.i1149 to i64
  %shr213.i36.i1151 = lshr i64 %add.i829, %sh_prom.i35.i1150
  %and3.i37.i1152 = and i64 %shr213.i36.i1151, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1152, i64 %shr12.i33.i1147)
  %cmp5.not.i38.i1153 = icmp eq i64 %and3.i37.i1152, %shr12.i33.i1147
  br i1 %cmp5.not.i38.i1153, label %for.inc.i42.i1157, label %for.body.i39.i1154.drm_fixp_msbset.exit44.i1161_crit_edge

for.body.i39.i1154.drm_fixp_msbset.exit44.i1161_crit_edge: ; preds = %for.body.i39.i1154
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1161

for.inc.i42.i1157:                                ; preds = %for.body.i39.i1154
  %dec.i40.i1155 = add nsw i32 %shift.014.i34.i1149, -1
  %cmp.not.i41.i1156 = icmp eq i32 %dec.i40.i1155, 0
  br i1 %cmp.not.i41.i1156, label %for.inc.i42.i1157.drm_fixp_msbset.exit44.i1161_crit_edge, label %for.inc.i42.i1157.for.body.i39.i1154_crit_edge

for.inc.i42.i1157.for.body.i39.i1154_crit_edge:   ; preds = %for.inc.i42.i1157
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1154

for.inc.i42.i1157.drm_fixp_msbset.exit44.i1161_crit_edge: ; preds = %for.inc.i42.i1157
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1161

drm_fixp_msbset.exit44.i1161:                     ; preds = %for.inc.i42.i1157.drm_fixp_msbset.exit44.i1161_crit_edge, %for.body.i39.i1154.drm_fixp_msbset.exit44.i1161_crit_edge
  %shift.0.lcssa.i43.i1158 = phi i32 [ 0, %for.inc.i42.i1157.drm_fixp_msbset.exit44.i1161_crit_edge ], [ %shift.014.i34.i1149, %for.body.i39.i1154.drm_fixp_msbset.exit44.i1161_crit_edge ]
  %add.i1159 = add i32 %shift.0.lcssa.i43.i1158, %shift.0.lcssa.i.i1146
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1159)
  %cmp.i1160 = icmp ugt i32 %add.i1159, 61
  br i1 %cmp.i1160, label %if.end.i1174, label %if.end11.thread.i1163

if.end11.thread.i1163:                            ; preds = %drm_fixp_msbset.exit44.i1161
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1162 = mul i64 %201, %add.i829
  br label %if.then13.i1186

if.end.i1174:                                     ; preds = %drm_fixp_msbset.exit44.i1161
  %sub.i1164 = add i32 %add.i1159, -61
  %shr.i1165 = lshr i32 %sub.i1164, 1
  %and.i1166 = and i32 %sub.i1164, 1
  %add2.i1167 = add nuw nsw i32 %shr.i1165, %and.i1166
  %sh_prom.i1168 = zext i32 %add2.i1167 to i64
  %shr3.i1169 = ashr i64 %201, %sh_prom.i1168
  %sh_prom5.i1170 = zext i32 %shr.i1165 to i64
  %shr6.i1171 = ashr i64 %add.i829, %sh_prom5.i1170
  %mul.i1172 = mul i64 %shr3.i1169, %shr6.i1171
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1164)
  %cmp7.i1173 = icmp ugt i32 %sub.i1164, 32
  br i1 %cmp7.i1173, label %if.then8.i1178, label %if.end11.i1180

if.then8.i1178:                                   ; preds = %if.end.i1174
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1175 = add i32 %add.i1159, -93
  %sh_prom10.i1176 = zext i32 %sub9.i1175 to i64
  %shl.i1177 = shl i64 %mul.i1172, %sh_prom10.i1176
  br label %drm_fixp_mul.exit1188

if.end11.i1180:                                   ; preds = %if.end.i1174
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1164)
  %cmp12.not.i1179 = icmp eq i32 %sub.i1164, 32
  br i1 %cmp12.not.i1179, label %if.end11.i1180.drm_fixp_mul.exit1188_crit_edge, label %if.end11.i1180.if.then13.i1186_crit_edge

if.end11.i1180.if.then13.i1186_crit_edge:         ; preds = %if.end11.i1180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1186

if.end11.i1180.drm_fixp_mul.exit1188_crit_edge:   ; preds = %if.end11.i1180
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1188

if.then13.i1186:                                  ; preds = %if.end11.i1180.if.then13.i1186_crit_edge, %if.end11.thread.i1163
  %shift.05056.i1181 = phi i32 [ 0, %if.end11.thread.i1163 ], [ %sub.i1164, %if.end11.i1180.if.then13.i1186_crit_edge ]
  %mul5155.i1182 = phi i64 [ %mul48.i1162, %if.end11.thread.i1163 ], [ %mul.i1172, %if.end11.i1180.if.then13.i1186_crit_edge ]
  %sub14.i1183 = sub nuw nsw i32 32, %shift.05056.i1181
  %sh_prom15.i1184 = zext i32 %sub14.i1183 to i64
  %shr16.i1185 = ashr i64 %mul5155.i1182, %sh_prom15.i1184
  br label %drm_fixp_mul.exit1188

drm_fixp_mul.exit1188:                            ; preds = %if.then13.i1186, %if.end11.i1180.drm_fixp_mul.exit1188_crit_edge, %if.then8.i1178
  %retval.0.i1187 = phi i64 [ %shl.i1177, %if.then8.i1178 ], [ %shr16.i1185, %if.then13.i1186 ], [ %mul.i1172, %if.end11.i1180.drm_fixp_mul.exit1188_crit_edge ]
  %202 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_store8_noabort(i32 %202)
  store i64 %retval.0.i1187, ptr %ratio_fp, align 8
  %203 = lshr i64 %retval.0.i1187, 32
  %conv.i1189 = trunc i64 %203 to i32
  %conv41 = sext i32 %conv.i1189 to i64
  %204 = ptrtoint ptr %ratio to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %conv41, ptr %ratio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i1189)
  %tobool44.not = icmp eq i32 %conv.i1189, 0
  br i1 %tobool44.not, label %drm_fixp_mul.exit1188.if.end60_crit_edge, label %if.then45

drm_fixp_mul.exit1188.if.end60_crit_edge:         ; preds = %drm_fixp_mul.exit1188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then45:                                        ; preds = %drm_fixp_mul.exit1188
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1190) #7
  %205 = ptrtoint ptr %rem.i1190 to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 -1, ptr %rem.i1190, align 8, !annotation !176
  %call.i1191 = call i64 @div64_u64_rem(i64 noundef 1, i64 noundef 1, ptr noundef nonnull %rem.i1190) #7
  %206 = ptrtoint ptr %rem.i1190 to i32
  call void @__asan_load8_noabort(i32 %206)
  %rem.promoted.i1192 = load i64, ptr %rem.i1190, align 8
  br label %do.body.i1206

do.body.i1206:                                    ; preds = %do.body.i1206.do.body.i1206_crit_edge, %if.then45
  %storemerge40.i1193 = phi i64 [ %rem.promoted.i1192, %if.then45 ], [ %storemerge.i1200, %do.body.i1206.do.body.i1206_crit_edge ]
  %res_abs.0.i1194 = phi i64 [ %call.i1191, %if.then45 ], [ %res_abs.1.i1203, %do.body.i1206.do.body.i1206_crit_edge ]
  %i.0.i1195 = phi i32 [ 32, %if.then45 ], [ %dec.i1204, %do.body.i1206.do.body.i1206_crit_edge ]
  %shl.i1196 = shl i64 %storemerge40.i1193, 1
  %shl9.i1197 = shl i64 %res_abs.0.i1194, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1196)
  %cmp10.not.i1198 = icmp ne i64 %shl.i1196, 0
  %sub11.i1199.neg = sext i1 %cmp10.not.i1198 to i64
  %storemerge.i1200 = add i64 %shl.i1196, %sub11.i1199.neg
  %or.i1202 = zext i1 %cmp10.not.i1198 to i64
  %res_abs.1.i1203 = or i64 %shl9.i1197, %or.i1202
  %dec.i1204 = add nsw i32 %i.0.i1195, -1
  %cmp12.not.i1205 = icmp eq i32 %dec.i1204, 0
  br i1 %cmp12.not.i1205, label %drm_fixp_from_fraction.exit1212, label %do.body.i1206.do.body.i1206_crit_edge

do.body.i1206.do.body.i1206_crit_edge:            ; preds = %do.body.i1206
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1206

drm_fixp_from_fraction.exit1212:                  ; preds = %do.body.i1206
  call void @__sanitizer_cov_trace_pc() #9
  %shl13.i1207.mask = and i64 %storemerge.i1200, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1207.mask)
  %cmp14.i1208 = icmp ne i64 %shl13.i1207.mask, 0
  %207 = zext i1 %cmp14.i1208 to i64
  %add.i1209 = add i64 %res_abs.1.i1203, %207
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1190) #7
  %208 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %add.i1209, ptr %ratio_fp, align 8
  br label %if.end49thread-pre-split

if.end49thread-pre-split:                         ; preds = %drm_fixp_from_fraction.exit1212, %drm_fixp_from_fraction.exit1135.if.end49thread-pre-split_crit_edge
  %209 = ptrtoint ptr %ratio to i32
  call void @__asan_load8_noabort(i32 %209)
  %.pr = load i64, ptr %ratio, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end49thread-pre-split, %land.lhs.true.if.end49_crit_edge
  %210 = phi i64 [ %.pr, %if.end49thread-pre-split ], [ %197, %land.lhs.true.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %210)
  %cmp51 = icmp sgt i64 %210, 1
  br i1 %cmp51, label %if.end55.thread, label %if.end55

if.end55.thread:                                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %211 = ptrtoint ptr %ratio to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 1, ptr %ratio, align 8
  br label %tu_size_calc

if.end55:                                         ; preds = %if.end49
  %212 = ptrtoint ptr %ratio to i32
  call void @__asan_load8_noabort(i32 %212)
  %.pr3240.pr = load i64, ptr %ratio, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %.pr3240.pr)
  %cmp57 = icmp eq i64 %.pr3240.pr, 1
  br i1 %cmp57, label %if.end55.tu_size_calc_crit_edge, label %if.end55.if.end60_crit_edge

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end55.tu_size_calc_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %tu_size_calc

if.end60:                                         ; preds = %if.end55.if.end60_crit_edge, %drm_fixp_mul.exit1188.if.end60_crit_edge, %land.lhs.true32.if.end60_crit_edge
  %213 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %ratio_fp, align 8
  %call62 = call fastcc i32 @_tu_param_compare(i64 noundef %214, i64 noundef %add.i785)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call62)
  %switch = icmp ugt i32 %call62, 1
  %215 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %ratio_fp, align 8
  %call69 = call fastcc i32 @_tu_param_compare(i64 noundef %216, i64 noundef %add.i807)
  %switch.and = and i32 %call69, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  %217 = ptrtoint ptr %dsc_en6.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %dsc_en6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool78.not = icmp eq i32 %218, 0
  %brmerge = or i1 %switch, %tobool78.not
  %brmerge764 = or i1 %switch.selectcmp, %brmerge
  br i1 %brmerge764, label %if.end60.tu_size_calc_crit_edge, label %if.then83

if.end60.tu_size_calc_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %tu_size_calc

if.then83:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.74, i32 noundef 8) #7
  br label %tu_size_calc

tu_size_calc:                                     ; preds = %if.then83, %if.end60.tu_size_calc_crit_edge, %if.end55.tu_size_calc_crit_edge, %if.end55.thread
  %HBLANK_MARGIN.0 = phi i32 [ 4, %if.end55.tu_size_calc_crit_edge ], [ 8, %if.then83 ], [ 4, %if.end60.tu_size_calc_crit_edge ], [ 4, %if.end55.thread ]
  %tu_size = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 19
  %219 = ptrtoint ptr %tu_size to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 32, ptr %tu_size, align 8
  %tu_size_desired = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %tu_size_calc
  %storemerge3258 = phi i32 [ 32, %tu_size_calc ], [ %inc, %for.inc.for.body_crit_edge ]
  %220 = call i32 @llvm.abs.i32(i32 %storemerge3258, i1 false)
  %221 = zext i32 %220 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1213) #7
  %222 = ptrtoint ptr %rem.i1213 to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 -1, ptr %rem.i1213, align 8, !annotation !176
  %call.i1214 = call i64 @div64_u64_rem(i64 noundef %221, i64 noundef 1, ptr noundef nonnull %rem.i1213) #7
  %223 = ptrtoint ptr %rem.i1213 to i32
  call void @__asan_load8_noabort(i32 %223)
  %rem.promoted.i1215 = load i64, ptr %rem.i1213, align 8
  br label %do.body.i1229

do.body.i1229:                                    ; preds = %do.body.i1229.do.body.i1229_crit_edge, %for.body
  %storemerge40.i1216 = phi i64 [ %rem.promoted.i1215, %for.body ], [ %storemerge.i1223, %do.body.i1229.do.body.i1229_crit_edge ]
  %res_abs.0.i1217 = phi i64 [ %call.i1214, %for.body ], [ %res_abs.1.i1226, %do.body.i1229.do.body.i1229_crit_edge ]
  %i.0.i1218 = phi i32 [ 32, %for.body ], [ %dec.i1227, %do.body.i1229.do.body.i1229_crit_edge ]
  %shl.i1219 = shl i64 %storemerge40.i1216, 1
  %shl9.i1220 = shl i64 %res_abs.0.i1217, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1219)
  %cmp10.not.i1221 = icmp ne i64 %shl.i1219, 0
  %sub11.i1222.neg = sext i1 %cmp10.not.i1221 to i64
  %storemerge.i1223 = add i64 %shl.i1219, %sub11.i1222.neg
  %or.i1225 = zext i1 %cmp10.not.i1221 to i64
  %res_abs.1.i1226 = or i64 %shl9.i1220, %or.i1225
  %dec.i1227 = add nsw i32 %i.0.i1218, -1
  %cmp12.not.i1228 = icmp eq i32 %dec.i1227, 0
  br i1 %cmp12.not.i1228, label %drm_fixp_from_fraction.exit1238, label %do.body.i1229.do.body.i1229_crit_edge

do.body.i1229.do.body.i1229_crit_edge:            ; preds = %do.body.i1229
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1229

drm_fixp_from_fraction.exit1238:                  ; preds = %do.body.i1229
  %shl13.i1230.mask = and i64 %storemerge.i1223, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1230.mask)
  %cmp14.i1231 = icmp ne i64 %shl13.i1230.mask, 0
  %224 = zext i1 %cmp14.i1231 to i64
  %add.i1232 = add i64 %res_abs.1.i1226, %224
  %sub22.i1234 = sub i64 0, %add.i1232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge3258)
  %tobool20.not39.i1235 = icmp slt i32 %storemerge3258, 0
  %spec.select.i1236 = select i1 %tobool20.not39.i1235, i64 %sub22.i1234, i64 %add.i1232
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1213) #7
  %225 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %ratio_fp, align 8
  %shr12.i.i1239 = lshr i64 %226, 63
  br label %for.body.i.i1245

for.body.i.i1245:                                 ; preds = %for.inc.i.i1248.for.body.i.i1245_crit_edge, %drm_fixp_from_fraction.exit1238
  %shift.014.i.i1240 = phi i32 [ 62, %drm_fixp_from_fraction.exit1238 ], [ %dec.i.i1246, %for.inc.i.i1248.for.body.i.i1245_crit_edge ]
  %sh_prom.i.i1241 = zext i32 %shift.014.i.i1240 to i64
  %shr213.i.i1242 = lshr i64 %226, %sh_prom.i.i1241
  %and3.i.i1243 = and i64 %shr213.i.i1242, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1243, i64 %shr12.i.i1239)
  %cmp5.not.i.i1244 = icmp eq i64 %and3.i.i1243, %shr12.i.i1239
  br i1 %cmp5.not.i.i1244, label %for.inc.i.i1248, label %for.body.i.i1245.drm_fixp_msbset.exit.i1251_crit_edge

for.body.i.i1245.drm_fixp_msbset.exit.i1251_crit_edge: ; preds = %for.body.i.i1245
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1251

for.inc.i.i1248:                                  ; preds = %for.body.i.i1245
  %dec.i.i1246 = add nsw i32 %shift.014.i.i1240, -1
  %cmp.not.i.i1247 = icmp eq i32 %dec.i.i1246, 0
  br i1 %cmp.not.i.i1247, label %for.inc.i.i1248.drm_fixp_msbset.exit.i1251_crit_edge, label %for.inc.i.i1248.for.body.i.i1245_crit_edge

for.inc.i.i1248.for.body.i.i1245_crit_edge:       ; preds = %for.inc.i.i1248
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1245

for.inc.i.i1248.drm_fixp_msbset.exit.i1251_crit_edge: ; preds = %for.inc.i.i1248
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1251

drm_fixp_msbset.exit.i1251:                       ; preds = %for.inc.i.i1248.drm_fixp_msbset.exit.i1251_crit_edge, %for.body.i.i1245.drm_fixp_msbset.exit.i1251_crit_edge
  %shift.0.lcssa.i.i1249 = phi i32 [ 0, %for.inc.i.i1248.drm_fixp_msbset.exit.i1251_crit_edge ], [ %shift.014.i.i1240, %for.body.i.i1245.drm_fixp_msbset.exit.i1251_crit_edge ]
  %shr12.i33.i1250 = lshr i64 %spec.select.i1236, 63
  br label %for.body.i39.i1257

for.body.i39.i1257:                               ; preds = %for.inc.i42.i1260.for.body.i39.i1257_crit_edge, %drm_fixp_msbset.exit.i1251
  %shift.014.i34.i1252 = phi i32 [ 62, %drm_fixp_msbset.exit.i1251 ], [ %dec.i40.i1258, %for.inc.i42.i1260.for.body.i39.i1257_crit_edge ]
  %sh_prom.i35.i1253 = zext i32 %shift.014.i34.i1252 to i64
  %shr213.i36.i1254 = lshr i64 %spec.select.i1236, %sh_prom.i35.i1253
  %and3.i37.i1255 = and i64 %shr213.i36.i1254, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1255, i64 %shr12.i33.i1250)
  %cmp5.not.i38.i1256 = icmp eq i64 %and3.i37.i1255, %shr12.i33.i1250
  br i1 %cmp5.not.i38.i1256, label %for.inc.i42.i1260, label %for.body.i39.i1257.drm_fixp_msbset.exit44.i1264_crit_edge

for.body.i39.i1257.drm_fixp_msbset.exit44.i1264_crit_edge: ; preds = %for.body.i39.i1257
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1264

for.inc.i42.i1260:                                ; preds = %for.body.i39.i1257
  %dec.i40.i1258 = add nsw i32 %shift.014.i34.i1252, -1
  %cmp.not.i41.i1259 = icmp eq i32 %dec.i40.i1258, 0
  br i1 %cmp.not.i41.i1259, label %for.inc.i42.i1260.drm_fixp_msbset.exit44.i1264_crit_edge, label %for.inc.i42.i1260.for.body.i39.i1257_crit_edge

for.inc.i42.i1260.for.body.i39.i1257_crit_edge:   ; preds = %for.inc.i42.i1260
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1257

for.inc.i42.i1260.drm_fixp_msbset.exit44.i1264_crit_edge: ; preds = %for.inc.i42.i1260
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1264

drm_fixp_msbset.exit44.i1264:                     ; preds = %for.inc.i42.i1260.drm_fixp_msbset.exit44.i1264_crit_edge, %for.body.i39.i1257.drm_fixp_msbset.exit44.i1264_crit_edge
  %shift.0.lcssa.i43.i1261 = phi i32 [ 0, %for.inc.i42.i1260.drm_fixp_msbset.exit44.i1264_crit_edge ], [ %shift.014.i34.i1252, %for.body.i39.i1257.drm_fixp_msbset.exit44.i1264_crit_edge ]
  %add.i1262 = add i32 %shift.0.lcssa.i43.i1261, %shift.0.lcssa.i.i1249
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1262)
  %cmp.i1263 = icmp ugt i32 %add.i1262, 61
  br i1 %cmp.i1263, label %if.end.i1277, label %if.end11.thread.i1266

if.end11.thread.i1266:                            ; preds = %drm_fixp_msbset.exit44.i1264
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1265 = mul i64 %226, %spec.select.i1236
  br label %if.then13.i1289

if.end.i1277:                                     ; preds = %drm_fixp_msbset.exit44.i1264
  %sub.i1267 = add i32 %add.i1262, -61
  %shr.i1268 = lshr i32 %sub.i1267, 1
  %and.i1269 = and i32 %sub.i1267, 1
  %add2.i1270 = add nuw nsw i32 %shr.i1268, %and.i1269
  %sh_prom.i1271 = zext i32 %add2.i1270 to i64
  %shr3.i1272 = ashr i64 %226, %sh_prom.i1271
  %sh_prom5.i1273 = zext i32 %shr.i1268 to i64
  %shr6.i1274 = ashr i64 %spec.select.i1236, %sh_prom5.i1273
  %mul.i1275 = mul i64 %shr3.i1272, %shr6.i1274
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1267)
  %cmp7.i1276 = icmp ugt i32 %sub.i1267, 32
  br i1 %cmp7.i1276, label %if.then8.i1281, label %if.end11.i1283

if.then8.i1281:                                   ; preds = %if.end.i1277
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1278 = add i32 %add.i1262, -93
  %sh_prom10.i1279 = zext i32 %sub9.i1278 to i64
  %shl.i1280 = shl i64 %mul.i1275, %sh_prom10.i1279
  br label %drm_fixp_mul.exit1291

if.end11.i1283:                                   ; preds = %if.end.i1277
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1267)
  %cmp12.not.i1282 = icmp eq i32 %sub.i1267, 32
  br i1 %cmp12.not.i1282, label %if.end11.i1283.drm_fixp_mul.exit1291_crit_edge, label %if.end11.i1283.if.then13.i1289_crit_edge

if.end11.i1283.if.then13.i1289_crit_edge:         ; preds = %if.end11.i1283
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1289

if.end11.i1283.drm_fixp_mul.exit1291_crit_edge:   ; preds = %if.end11.i1283
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1291

if.then13.i1289:                                  ; preds = %if.end11.i1283.if.then13.i1289_crit_edge, %if.end11.thread.i1266
  %shift.05056.i1284 = phi i32 [ 0, %if.end11.thread.i1266 ], [ %sub.i1267, %if.end11.i1283.if.then13.i1289_crit_edge ]
  %mul5155.i1285 = phi i64 [ %mul48.i1265, %if.end11.thread.i1266 ], [ %mul.i1275, %if.end11.i1283.if.then13.i1289_crit_edge ]
  %sub14.i1286 = sub nuw nsw i32 32, %shift.05056.i1284
  %sh_prom15.i1287 = zext i32 %sub14.i1286 to i64
  %shr16.i1288 = ashr i64 %mul5155.i1285, %sh_prom15.i1287
  br label %drm_fixp_mul.exit1291

drm_fixp_mul.exit1291:                            ; preds = %if.then13.i1289, %if.end11.i1283.drm_fixp_mul.exit1291_crit_edge, %if.then8.i1281
  %retval.0.i1290 = phi i64 [ %shl.i1280, %if.then8.i1281 ], [ %shr16.i1288, %if.then13.i1289 ], [ %mul.i1275, %if.end11.i1283.drm_fixp_mul.exit1291_crit_edge ]
  %227 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %retval.0.i1290, ptr %temp2_fp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1290)
  %cmp.i1292 = icmp sgt i64 %retval.0.i1290, 0
  %..i1293 = select i1 %cmp.i1292, i64 4294967295, i64 -4294967295
  %sub.i1294 = add i64 %..i1293, %retval.0.i1290
  %conv94 = ashr i64 %sub.i1294, 32
  %228 = call i64 @llvm.abs.i64(i64 %conv94, i1 true) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1296) #7
  %229 = ptrtoint ptr %rem.i1296 to i32
  call void @__asan_store8_noabort(i32 %229)
  store i64 -1, ptr %rem.i1296, align 8, !annotation !176
  %call.i1297 = call i64 @div64_u64_rem(i64 noundef %228, i64 noundef 1, ptr noundef nonnull %rem.i1296) #7
  %230 = ptrtoint ptr %rem.i1296 to i32
  call void @__asan_load8_noabort(i32 %230)
  %rem.promoted.i1298 = load i64, ptr %rem.i1296, align 8
  br label %do.body.i1312

do.body.i1312:                                    ; preds = %do.body.i1312.do.body.i1312_crit_edge, %drm_fixp_mul.exit1291
  %storemerge40.i1299 = phi i64 [ %rem.promoted.i1298, %drm_fixp_mul.exit1291 ], [ %storemerge.i1306, %do.body.i1312.do.body.i1312_crit_edge ]
  %res_abs.0.i1300 = phi i64 [ %call.i1297, %drm_fixp_mul.exit1291 ], [ %res_abs.1.i1309, %do.body.i1312.do.body.i1312_crit_edge ]
  %i.0.i1301 = phi i32 [ 32, %drm_fixp_mul.exit1291 ], [ %dec.i1310, %do.body.i1312.do.body.i1312_crit_edge ]
  %shl.i1302 = shl i64 %storemerge40.i1299, 1
  %shl9.i1303 = shl i64 %res_abs.0.i1300, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1302)
  %cmp10.not.i1304 = icmp ne i64 %shl.i1302, 0
  %sub11.i1305.neg = sext i1 %cmp10.not.i1304 to i64
  %storemerge.i1306 = add i64 %shl.i1302, %sub11.i1305.neg
  %or.i1308 = zext i1 %cmp10.not.i1304 to i64
  %res_abs.1.i1309 = or i64 %shl9.i1303, %or.i1308
  %dec.i1310 = add nsw i32 %i.0.i1301, -1
  %cmp12.not.i1311 = icmp eq i32 %dec.i1310, 0
  br i1 %cmp12.not.i1311, label %drm_fixp_from_fraction.exit1321, label %do.body.i1312.do.body.i1312_crit_edge

do.body.i1312.do.body.i1312_crit_edge:            ; preds = %do.body.i1312
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1312

drm_fixp_from_fraction.exit1321:                  ; preds = %do.body.i1312
  %shl13.i1313.mask = and i64 %storemerge.i1306, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1313.mask)
  %cmp14.i1314 = icmp ne i64 %shl13.i1313.mask, 0
  %231 = zext i1 %cmp14.i1314 to i64
  %add.i1315 = add i64 %res_abs.1.i1309, %231
  %sub22.i1317 = sub i64 0, %add.i1315
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i1294)
  %tobool20.not39.i1318 = icmp slt i64 %sub.i1294, 0
  %spec.select.i1319 = select i1 %tobool20.not39.i1318, i64 %sub22.i1317, i64 %add.i1315
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1296) #7
  %232 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %temp2_fp, align 8
  %sub = sub i64 %spec.select.i1319, %233
  %234 = ptrtoint ptr %n_err_fp to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 %sub, ptr %n_err_fp, align 8
  %235 = ptrtoint ptr %err_fp to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %err_fp, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %236)
  %cmp99 = icmp slt i64 %sub, %236
  br i1 %cmp99, label %if.then101, label %drm_fixp_from_fraction.exit1321.for.inc_crit_edge

drm_fixp_from_fraction.exit1321.for.inc_crit_edge: ; preds = %drm_fixp_from_fraction.exit1321
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then101:                                       ; preds = %drm_fixp_from_fraction.exit1321
  call void @__sanitizer_cov_trace_pc() #9
  %237 = ptrtoint ptr %err_fp to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %sub, ptr %err_fp, align 8
  %238 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %tu_size, align 8
  %240 = ptrtoint ptr %tu_size_desired to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %tu_size_desired, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then101, %drm_fixp_from_fraction.exit1321.for.inc_crit_edge
  %241 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %tu_size, align 8
  %inc = add i32 %242, 1
  store i32 %inc, ptr %tu_size, align 8
  %cmp86 = icmp slt i32 %inc, 65
  br i1 %cmp86, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %243 = ptrtoint ptr %tu_size_desired to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %tu_size_desired, align 4
  %sub108 = add i32 %244, -1
  %tu_size_minus1 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 21
  %245 = ptrtoint ptr %tu_size_minus1 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %sub108, ptr %tu_size_minus1, align 8
  %246 = call i32 @llvm.abs.i32(i32 %244, i1 false)
  %247 = zext i32 %246 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1322) #7
  %248 = ptrtoint ptr %rem.i1322 to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 -1, ptr %rem.i1322, align 8, !annotation !176
  %call.i1323 = call i64 @div64_u64_rem(i64 noundef %247, i64 noundef 1, ptr noundef nonnull %rem.i1322) #7
  %249 = ptrtoint ptr %rem.i1322 to i32
  call void @__asan_load8_noabort(i32 %249)
  %rem.promoted.i1324 = load i64, ptr %rem.i1322, align 8
  br label %do.body.i1338

do.body.i1338:                                    ; preds = %do.body.i1338.do.body.i1338_crit_edge, %for.end
  %storemerge40.i1325 = phi i64 [ %rem.promoted.i1324, %for.end ], [ %storemerge.i1332, %do.body.i1338.do.body.i1338_crit_edge ]
  %res_abs.0.i1326 = phi i64 [ %call.i1323, %for.end ], [ %res_abs.1.i1335, %do.body.i1338.do.body.i1338_crit_edge ]
  %i.0.i1327 = phi i32 [ 32, %for.end ], [ %dec.i1336, %do.body.i1338.do.body.i1338_crit_edge ]
  %shl.i1328 = shl i64 %storemerge40.i1325, 1
  %shl9.i1329 = shl i64 %res_abs.0.i1326, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1328)
  %cmp10.not.i1330 = icmp ne i64 %shl.i1328, 0
  %sub11.i1331.neg = sext i1 %cmp10.not.i1330 to i64
  %storemerge.i1332 = add i64 %shl.i1328, %sub11.i1331.neg
  %or.i1334 = zext i1 %cmp10.not.i1330 to i64
  %res_abs.1.i1335 = or i64 %shl9.i1329, %or.i1334
  %dec.i1336 = add nsw i32 %i.0.i1327, -1
  %cmp12.not.i1337 = icmp eq i32 %dec.i1336, 0
  br i1 %cmp12.not.i1337, label %drm_fixp_from_fraction.exit1347, label %do.body.i1338.do.body.i1338_crit_edge

do.body.i1338.do.body.i1338_crit_edge:            ; preds = %do.body.i1338
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1338

drm_fixp_from_fraction.exit1347:                  ; preds = %do.body.i1338
  %shl13.i1339.mask = and i64 %storemerge.i1332, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1339.mask)
  %cmp14.i1340 = icmp ne i64 %shl13.i1339.mask, 0
  %250 = zext i1 %cmp14.i1340 to i64
  %add.i1341 = add i64 %res_abs.1.i1335, %250
  %sub22.i1343 = sub i64 0, %add.i1341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool20.not39.i1344 = icmp slt i32 %244, 0
  %spec.select.i1345 = select i1 %tobool20.not39.i1344, i64 %sub22.i1343, i64 %add.i1341
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1322) #7
  %251 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %ratio_fp, align 8
  %shr12.i.i1348 = lshr i64 %252, 63
  br label %for.body.i.i1354

for.body.i.i1354:                                 ; preds = %for.inc.i.i1357.for.body.i.i1354_crit_edge, %drm_fixp_from_fraction.exit1347
  %shift.014.i.i1349 = phi i32 [ 62, %drm_fixp_from_fraction.exit1347 ], [ %dec.i.i1355, %for.inc.i.i1357.for.body.i.i1354_crit_edge ]
  %sh_prom.i.i1350 = zext i32 %shift.014.i.i1349 to i64
  %shr213.i.i1351 = lshr i64 %252, %sh_prom.i.i1350
  %and3.i.i1352 = and i64 %shr213.i.i1351, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1352, i64 %shr12.i.i1348)
  %cmp5.not.i.i1353 = icmp eq i64 %and3.i.i1352, %shr12.i.i1348
  br i1 %cmp5.not.i.i1353, label %for.inc.i.i1357, label %for.body.i.i1354.drm_fixp_msbset.exit.i1360_crit_edge

for.body.i.i1354.drm_fixp_msbset.exit.i1360_crit_edge: ; preds = %for.body.i.i1354
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1360

for.inc.i.i1357:                                  ; preds = %for.body.i.i1354
  %dec.i.i1355 = add nsw i32 %shift.014.i.i1349, -1
  %cmp.not.i.i1356 = icmp eq i32 %dec.i.i1355, 0
  br i1 %cmp.not.i.i1356, label %for.inc.i.i1357.drm_fixp_msbset.exit.i1360_crit_edge, label %for.inc.i.i1357.for.body.i.i1354_crit_edge

for.inc.i.i1357.for.body.i.i1354_crit_edge:       ; preds = %for.inc.i.i1357
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1354

for.inc.i.i1357.drm_fixp_msbset.exit.i1360_crit_edge: ; preds = %for.inc.i.i1357
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1360

drm_fixp_msbset.exit.i1360:                       ; preds = %for.inc.i.i1357.drm_fixp_msbset.exit.i1360_crit_edge, %for.body.i.i1354.drm_fixp_msbset.exit.i1360_crit_edge
  %shift.0.lcssa.i.i1358 = phi i32 [ 0, %for.inc.i.i1357.drm_fixp_msbset.exit.i1360_crit_edge ], [ %shift.014.i.i1349, %for.body.i.i1354.drm_fixp_msbset.exit.i1360_crit_edge ]
  %shr12.i33.i1359 = lshr i64 %spec.select.i1345, 63
  br label %for.body.i39.i1366

for.body.i39.i1366:                               ; preds = %for.inc.i42.i1369.for.body.i39.i1366_crit_edge, %drm_fixp_msbset.exit.i1360
  %shift.014.i34.i1361 = phi i32 [ 62, %drm_fixp_msbset.exit.i1360 ], [ %dec.i40.i1367, %for.inc.i42.i1369.for.body.i39.i1366_crit_edge ]
  %sh_prom.i35.i1362 = zext i32 %shift.014.i34.i1361 to i64
  %shr213.i36.i1363 = lshr i64 %spec.select.i1345, %sh_prom.i35.i1362
  %and3.i37.i1364 = and i64 %shr213.i36.i1363, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1364, i64 %shr12.i33.i1359)
  %cmp5.not.i38.i1365 = icmp eq i64 %and3.i37.i1364, %shr12.i33.i1359
  br i1 %cmp5.not.i38.i1365, label %for.inc.i42.i1369, label %for.body.i39.i1366.drm_fixp_msbset.exit44.i1373_crit_edge

for.body.i39.i1366.drm_fixp_msbset.exit44.i1373_crit_edge: ; preds = %for.body.i39.i1366
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1373

for.inc.i42.i1369:                                ; preds = %for.body.i39.i1366
  %dec.i40.i1367 = add nsw i32 %shift.014.i34.i1361, -1
  %cmp.not.i41.i1368 = icmp eq i32 %dec.i40.i1367, 0
  br i1 %cmp.not.i41.i1368, label %for.inc.i42.i1369.drm_fixp_msbset.exit44.i1373_crit_edge, label %for.inc.i42.i1369.for.body.i39.i1366_crit_edge

for.inc.i42.i1369.for.body.i39.i1366_crit_edge:   ; preds = %for.inc.i42.i1369
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1366

for.inc.i42.i1369.drm_fixp_msbset.exit44.i1373_crit_edge: ; preds = %for.inc.i42.i1369
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1373

drm_fixp_msbset.exit44.i1373:                     ; preds = %for.inc.i42.i1369.drm_fixp_msbset.exit44.i1373_crit_edge, %for.body.i39.i1366.drm_fixp_msbset.exit44.i1373_crit_edge
  %shift.0.lcssa.i43.i1370 = phi i32 [ 0, %for.inc.i42.i1369.drm_fixp_msbset.exit44.i1373_crit_edge ], [ %shift.014.i34.i1361, %for.body.i39.i1366.drm_fixp_msbset.exit44.i1373_crit_edge ]
  %add.i1371 = add i32 %shift.0.lcssa.i43.i1370, %shift.0.lcssa.i.i1358
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1371)
  %cmp.i1372 = icmp ugt i32 %add.i1371, 61
  br i1 %cmp.i1372, label %if.end.i1386, label %if.end11.thread.i1375

if.end11.thread.i1375:                            ; preds = %drm_fixp_msbset.exit44.i1373
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1374 = mul i64 %252, %spec.select.i1345
  br label %if.then13.i1398

if.end.i1386:                                     ; preds = %drm_fixp_msbset.exit44.i1373
  %sub.i1376 = add i32 %add.i1371, -61
  %shr.i1377 = lshr i32 %sub.i1376, 1
  %and.i1378 = and i32 %sub.i1376, 1
  %add2.i1379 = add nuw nsw i32 %shr.i1377, %and.i1378
  %sh_prom.i1380 = zext i32 %add2.i1379 to i64
  %shr3.i1381 = ashr i64 %252, %sh_prom.i1380
  %sh_prom5.i1382 = zext i32 %shr.i1377 to i64
  %shr6.i1383 = ashr i64 %spec.select.i1345, %sh_prom5.i1382
  %mul.i1384 = mul i64 %shr3.i1381, %shr6.i1383
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1376)
  %cmp7.i1385 = icmp ugt i32 %sub.i1376, 32
  br i1 %cmp7.i1385, label %if.then8.i1390, label %if.end11.i1392

if.then8.i1390:                                   ; preds = %if.end.i1386
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1387 = add i32 %add.i1371, -93
  %sh_prom10.i1388 = zext i32 %sub9.i1387 to i64
  %shl.i1389 = shl i64 %mul.i1384, %sh_prom10.i1388
  br label %drm_fixp_mul.exit1400

if.end11.i1392:                                   ; preds = %if.end.i1386
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1376)
  %cmp12.not.i1391 = icmp eq i32 %sub.i1376, 32
  br i1 %cmp12.not.i1391, label %if.end11.i1392.drm_fixp_mul.exit1400_crit_edge, label %if.end11.i1392.if.then13.i1398_crit_edge

if.end11.i1392.if.then13.i1398_crit_edge:         ; preds = %if.end11.i1392
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1398

if.end11.i1392.drm_fixp_mul.exit1400_crit_edge:   ; preds = %if.end11.i1392
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1400

if.then13.i1398:                                  ; preds = %if.end11.i1392.if.then13.i1398_crit_edge, %if.end11.thread.i1375
  %shift.05056.i1393 = phi i32 [ 0, %if.end11.thread.i1375 ], [ %sub.i1376, %if.end11.i1392.if.then13.i1398_crit_edge ]
  %mul5155.i1394 = phi i64 [ %mul48.i1374, %if.end11.thread.i1375 ], [ %mul.i1384, %if.end11.i1392.if.then13.i1398_crit_edge ]
  %sub14.i1395 = sub nuw nsw i32 32, %shift.05056.i1393
  %sh_prom15.i1396 = zext i32 %sub14.i1395 to i64
  %shr16.i1397 = ashr i64 %mul5155.i1394, %sh_prom15.i1396
  br label %drm_fixp_mul.exit1400

drm_fixp_mul.exit1400:                            ; preds = %if.then13.i1398, %if.end11.i1392.drm_fixp_mul.exit1400_crit_edge, %if.then8.i1390
  %retval.0.i1399 = phi i64 [ %shl.i1389, %if.then8.i1390 ], [ %shr16.i1397, %if.then13.i1398 ], [ %mul.i1384, %if.end11.i1392.drm_fixp_mul.exit1400_crit_edge ]
  %253 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %253)
  store i64 %retval.0.i1399, ptr %temp2_fp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1399)
  %cmp.i1401 = icmp sgt i64 %retval.0.i1399, 0
  %..i1402 = select i1 %cmp.i1401, i64 4294967295, i64 -4294967295
  %sub.i1403 = add i64 %..i1402, %retval.0.i1399
  %254 = lshr i64 %sub.i1403, 32
  %conv.i4.i1404 = trunc i64 %254 to i32
  %valid_boundary_link = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 22
  %255 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %conv.i4.i1404, ptr %valid_boundary_link, align 4
  %256 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %bpp5.i, align 4
  %258 = call i32 @llvm.abs.i32(i32 %257, i1 false)
  %259 = zext i32 %258 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1405) #7
  %260 = ptrtoint ptr %rem.i1405 to i32
  call void @__asan_store8_noabort(i32 %260)
  store i64 -1, ptr %rem.i1405, align 8, !annotation !176
  %call.i1406 = call i64 @div64_u64_rem(i64 noundef %259, i64 noundef 8, ptr noundef nonnull %rem.i1405) #7
  %261 = ptrtoint ptr %rem.i1405 to i32
  call void @__asan_load8_noabort(i32 %261)
  %rem.promoted.i1407 = load i64, ptr %rem.i1405, align 8
  br label %do.body.i1421

do.body.i1421:                                    ; preds = %do.body.i1421.do.body.i1421_crit_edge, %drm_fixp_mul.exit1400
  %storemerge40.i1408 = phi i64 [ %rem.promoted.i1407, %drm_fixp_mul.exit1400 ], [ %storemerge.i1415, %do.body.i1421.do.body.i1421_crit_edge ]
  %res_abs.0.i1409 = phi i64 [ %call.i1406, %drm_fixp_mul.exit1400 ], [ %res_abs.1.i1418, %do.body.i1421.do.body.i1421_crit_edge ]
  %i.0.i1410 = phi i32 [ 32, %drm_fixp_mul.exit1400 ], [ %dec.i1419, %do.body.i1421.do.body.i1421_crit_edge ]
  %shl.i1411 = shl i64 %storemerge40.i1408, 1
  %shl9.i1412 = shl i64 %res_abs.0.i1409, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %shl.i1411)
  %cmp10.not.i1413 = icmp ult i64 %shl.i1411, 8
  %sub11.i1414.neg = select i1 %cmp10.not.i1413, i64 0, i64 -8
  %storemerge.i1415 = add i64 %sub11.i1414.neg, %shl.i1411
  %not.cmp10.not.i1416 = xor i1 %cmp10.not.i1413, true
  %or.i1417 = zext i1 %not.cmp10.not.i1416 to i64
  %res_abs.1.i1418 = or i64 %shl9.i1412, %or.i1417
  %dec.i1419 = add nsw i32 %i.0.i1410, -1
  %cmp12.not.i1420 = icmp eq i32 %dec.i1419, 0
  br i1 %cmp12.not.i1420, label %drm_fixp_from_fraction.exit1430, label %do.body.i1421.do.body.i1421_crit_edge

do.body.i1421.do.body.i1421_crit_edge:            ; preds = %do.body.i1421
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1421

drm_fixp_from_fraction.exit1430:                  ; preds = %do.body.i1421
  %262 = and i64 %storemerge.i1415, 9223372036854775804
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %262)
  %cmp14.i1423 = icmp ne i64 %262, 0
  %263 = zext i1 %cmp14.i1423 to i64
  %add.i1424 = add i64 %res_abs.1.i1418, %263
  %sub22.i1426 = sub i64 0, %add.i1424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool20.not39.i1427 = icmp slt i32 %257, 0
  %spec.select.i1428 = select i1 %tobool20.not39.i1427, i64 %sub22.i1426, i64 %add.i1424
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1405) #7
  %264 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i1431 = lshr i64 %265, 63
  br label %for.body.i.i1437

for.body.i.i1437:                                 ; preds = %for.inc.i.i1440.for.body.i.i1437_crit_edge, %drm_fixp_from_fraction.exit1430
  %shift.014.i.i1432 = phi i32 [ 62, %drm_fixp_from_fraction.exit1430 ], [ %dec.i.i1438, %for.inc.i.i1440.for.body.i.i1437_crit_edge ]
  %sh_prom.i.i1433 = zext i32 %shift.014.i.i1432 to i64
  %shr213.i.i1434 = lshr i64 %265, %sh_prom.i.i1433
  %and3.i.i1435 = and i64 %shr213.i.i1434, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1435, i64 %shr12.i.i1431)
  %cmp5.not.i.i1436 = icmp eq i64 %and3.i.i1435, %shr12.i.i1431
  br i1 %cmp5.not.i.i1436, label %for.inc.i.i1440, label %for.body.i.i1437.drm_fixp_msbset.exit.i1443_crit_edge

for.body.i.i1437.drm_fixp_msbset.exit.i1443_crit_edge: ; preds = %for.body.i.i1437
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1443

for.inc.i.i1440:                                  ; preds = %for.body.i.i1437
  %dec.i.i1438 = add nsw i32 %shift.014.i.i1432, -1
  %cmp.not.i.i1439 = icmp eq i32 %dec.i.i1438, 0
  br i1 %cmp.not.i.i1439, label %for.inc.i.i1440.drm_fixp_msbset.exit.i1443_crit_edge, label %for.inc.i.i1440.for.body.i.i1437_crit_edge

for.inc.i.i1440.for.body.i.i1437_crit_edge:       ; preds = %for.inc.i.i1440
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1437

for.inc.i.i1440.drm_fixp_msbset.exit.i1443_crit_edge: ; preds = %for.inc.i.i1440
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1443

drm_fixp_msbset.exit.i1443:                       ; preds = %for.inc.i.i1440.drm_fixp_msbset.exit.i1443_crit_edge, %for.body.i.i1437.drm_fixp_msbset.exit.i1443_crit_edge
  %shift.0.lcssa.i.i1441 = phi i32 [ 0, %for.inc.i.i1440.drm_fixp_msbset.exit.i1443_crit_edge ], [ %shift.014.i.i1432, %for.body.i.i1437.drm_fixp_msbset.exit.i1443_crit_edge ]
  %shr12.i33.i1442 = lshr i64 %spec.select.i1428, 63
  br label %for.body.i39.i1449

for.body.i39.i1449:                               ; preds = %for.inc.i42.i1452.for.body.i39.i1449_crit_edge, %drm_fixp_msbset.exit.i1443
  %shift.014.i34.i1444 = phi i32 [ 62, %drm_fixp_msbset.exit.i1443 ], [ %dec.i40.i1450, %for.inc.i42.i1452.for.body.i39.i1449_crit_edge ]
  %sh_prom.i35.i1445 = zext i32 %shift.014.i34.i1444 to i64
  %shr213.i36.i1446 = lshr i64 %spec.select.i1428, %sh_prom.i35.i1445
  %and3.i37.i1447 = and i64 %shr213.i36.i1446, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1447, i64 %shr12.i33.i1442)
  %cmp5.not.i38.i1448 = icmp eq i64 %and3.i37.i1447, %shr12.i33.i1442
  br i1 %cmp5.not.i38.i1448, label %for.inc.i42.i1452, label %for.body.i39.i1449.drm_fixp_msbset.exit44.i1456_crit_edge

for.body.i39.i1449.drm_fixp_msbset.exit44.i1456_crit_edge: ; preds = %for.body.i39.i1449
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1456

for.inc.i42.i1452:                                ; preds = %for.body.i39.i1449
  %dec.i40.i1450 = add nsw i32 %shift.014.i34.i1444, -1
  %cmp.not.i41.i1451 = icmp eq i32 %dec.i40.i1450, 0
  br i1 %cmp.not.i41.i1451, label %for.inc.i42.i1452.drm_fixp_msbset.exit44.i1456_crit_edge, label %for.inc.i42.i1452.for.body.i39.i1449_crit_edge

for.inc.i42.i1452.for.body.i39.i1449_crit_edge:   ; preds = %for.inc.i42.i1452
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1449

for.inc.i42.i1452.drm_fixp_msbset.exit44.i1456_crit_edge: ; preds = %for.inc.i42.i1452
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1456

drm_fixp_msbset.exit44.i1456:                     ; preds = %for.inc.i42.i1452.drm_fixp_msbset.exit44.i1456_crit_edge, %for.body.i39.i1449.drm_fixp_msbset.exit44.i1456_crit_edge
  %shift.0.lcssa.i43.i1453 = phi i32 [ 0, %for.inc.i42.i1452.drm_fixp_msbset.exit44.i1456_crit_edge ], [ %shift.014.i34.i1444, %for.body.i39.i1449.drm_fixp_msbset.exit44.i1456_crit_edge ]
  %add.i1454 = add i32 %shift.0.lcssa.i43.i1453, %shift.0.lcssa.i.i1441
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1454)
  %cmp.i1455 = icmp ugt i32 %add.i1454, 61
  br i1 %cmp.i1455, label %if.end.i1469, label %if.end11.thread.i1458

if.end11.thread.i1458:                            ; preds = %drm_fixp_msbset.exit44.i1456
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1457 = mul i64 %265, %spec.select.i1428
  br label %if.then13.i1481

if.end.i1469:                                     ; preds = %drm_fixp_msbset.exit44.i1456
  %sub.i1459 = add i32 %add.i1454, -61
  %shr.i1460 = lshr i32 %sub.i1459, 1
  %and.i1461 = and i32 %sub.i1459, 1
  %add2.i1462 = add nuw nsw i32 %shr.i1460, %and.i1461
  %sh_prom.i1463 = zext i32 %add2.i1462 to i64
  %shr3.i1464 = ashr i64 %265, %sh_prom.i1463
  %sh_prom5.i1465 = zext i32 %shr.i1460 to i64
  %shr6.i1466 = ashr i64 %spec.select.i1428, %sh_prom5.i1465
  %mul.i1467 = mul i64 %shr3.i1464, %shr6.i1466
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1459)
  %cmp7.i1468 = icmp ugt i32 %sub.i1459, 32
  br i1 %cmp7.i1468, label %if.then8.i1473, label %if.end11.i1475

if.then8.i1473:                                   ; preds = %if.end.i1469
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1470 = add i32 %add.i1454, -93
  %sh_prom10.i1471 = zext i32 %sub9.i1470 to i64
  %shl.i1472 = shl i64 %mul.i1467, %sh_prom10.i1471
  br label %drm_fixp_mul.exit1483

if.end11.i1475:                                   ; preds = %if.end.i1469
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1459)
  %cmp12.not.i1474 = icmp eq i32 %sub.i1459, 32
  br i1 %cmp12.not.i1474, label %if.end11.i1475.drm_fixp_mul.exit1483_crit_edge, label %if.end11.i1475.if.then13.i1481_crit_edge

if.end11.i1475.if.then13.i1481_crit_edge:         ; preds = %if.end11.i1475
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1481

if.end11.i1475.drm_fixp_mul.exit1483_crit_edge:   ; preds = %if.end11.i1475
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1483

if.then13.i1481:                                  ; preds = %if.end11.i1475.if.then13.i1481_crit_edge, %if.end11.thread.i1458
  %shift.05056.i1476 = phi i32 [ 0, %if.end11.thread.i1458 ], [ %sub.i1459, %if.end11.i1475.if.then13.i1481_crit_edge ]
  %mul5155.i1477 = phi i64 [ %mul48.i1457, %if.end11.thread.i1458 ], [ %mul.i1467, %if.end11.i1475.if.then13.i1481_crit_edge ]
  %sub14.i1478 = sub nuw nsw i32 32, %shift.05056.i1476
  %sh_prom15.i1479 = zext i32 %sub14.i1478 to i64
  %shr16.i1480 = ashr i64 %mul5155.i1477, %sh_prom15.i1479
  br label %drm_fixp_mul.exit1483

drm_fixp_mul.exit1483:                            ; preds = %if.then13.i1481, %if.end11.i1475.drm_fixp_mul.exit1483_crit_edge, %if.then8.i1473
  %retval.0.i1482 = phi i64 [ %shl.i1472, %if.then8.i1473 ], [ %shr16.i1480, %if.then13.i1481 ], [ %mul.i1467, %if.end11.i1475.drm_fixp_mul.exit1483_crit_edge ]
  %266 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %retval.0.i1482, ptr %temp2_fp, align 8
  %267 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %valid_boundary_link, align 4
  %269 = call i32 @llvm.abs.i32(i32 %268, i1 false)
  %270 = zext i32 %269 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1484) #7
  %271 = ptrtoint ptr %rem.i1484 to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 -1, ptr %rem.i1484, align 8, !annotation !176
  %call.i1485 = call i64 @div64_u64_rem(i64 noundef %270, i64 noundef 1, ptr noundef nonnull %rem.i1484) #7
  %272 = ptrtoint ptr %rem.i1484 to i32
  call void @__asan_load8_noabort(i32 %272)
  %rem.promoted.i1486 = load i64, ptr %rem.i1484, align 8
  br label %do.body.i1500

do.body.i1500:                                    ; preds = %do.body.i1500.do.body.i1500_crit_edge, %drm_fixp_mul.exit1483
  %storemerge40.i1487 = phi i64 [ %rem.promoted.i1486, %drm_fixp_mul.exit1483 ], [ %storemerge.i1494, %do.body.i1500.do.body.i1500_crit_edge ]
  %res_abs.0.i1488 = phi i64 [ %call.i1485, %drm_fixp_mul.exit1483 ], [ %res_abs.1.i1497, %do.body.i1500.do.body.i1500_crit_edge ]
  %i.0.i1489 = phi i32 [ 32, %drm_fixp_mul.exit1483 ], [ %dec.i1498, %do.body.i1500.do.body.i1500_crit_edge ]
  %shl.i1490 = shl i64 %storemerge40.i1487, 1
  %shl9.i1491 = shl i64 %res_abs.0.i1488, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1490)
  %cmp10.not.i1492 = icmp ne i64 %shl.i1490, 0
  %sub11.i1493.neg = sext i1 %cmp10.not.i1492 to i64
  %storemerge.i1494 = add i64 %shl.i1490, %sub11.i1493.neg
  %or.i1496 = zext i1 %cmp10.not.i1492 to i64
  %res_abs.1.i1497 = or i64 %shl9.i1491, %or.i1496
  %dec.i1498 = add nsw i32 %i.0.i1489, -1
  %cmp12.not.i1499 = icmp eq i32 %dec.i1498, 0
  br i1 %cmp12.not.i1499, label %drm_fixp_from_fraction.exit1509, label %do.body.i1500.do.body.i1500_crit_edge

do.body.i1500.do.body.i1500_crit_edge:            ; preds = %do.body.i1500
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1500

drm_fixp_from_fraction.exit1509:                  ; preds = %do.body.i1500
  %shl13.i1501.mask = and i64 %storemerge.i1494, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1501.mask)
  %cmp14.i1502 = icmp ne i64 %shl13.i1501.mask, 0
  %273 = zext i1 %cmp14.i1502 to i64
  %add.i1503 = add i64 %res_abs.1.i1497, %273
  %sub22.i1505 = sub i64 0, %add.i1503
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool20.not39.i1506 = icmp slt i32 %268, 0
  %spec.select.i1507 = select i1 %tobool20.not39.i1506, i64 %sub22.i1505, i64 %add.i1503
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1484) #7
  %274 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %temp2_fp, align 8
  %shr12.i.i1510 = lshr i64 %275, 63
  br label %for.body.i.i1516

for.body.i.i1516:                                 ; preds = %for.inc.i.i1519.for.body.i.i1516_crit_edge, %drm_fixp_from_fraction.exit1509
  %shift.014.i.i1511 = phi i32 [ 62, %drm_fixp_from_fraction.exit1509 ], [ %dec.i.i1517, %for.inc.i.i1519.for.body.i.i1516_crit_edge ]
  %sh_prom.i.i1512 = zext i32 %shift.014.i.i1511 to i64
  %shr213.i.i1513 = lshr i64 %275, %sh_prom.i.i1512
  %and3.i.i1514 = and i64 %shr213.i.i1513, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1514, i64 %shr12.i.i1510)
  %cmp5.not.i.i1515 = icmp eq i64 %and3.i.i1514, %shr12.i.i1510
  br i1 %cmp5.not.i.i1515, label %for.inc.i.i1519, label %for.body.i.i1516.drm_fixp_div.exit1536_crit_edge

for.body.i.i1516.drm_fixp_div.exit1536_crit_edge: ; preds = %for.body.i.i1516
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1536

for.inc.i.i1519:                                  ; preds = %for.body.i.i1516
  %dec.i.i1517 = add nsw i32 %shift.014.i.i1511, -1
  %cmp.not.i.i1518 = icmp eq i32 %dec.i.i1517, 0
  br i1 %cmp.not.i.i1518, label %for.inc.i.i1519.drm_fixp_div.exit1536_crit_edge, label %for.inc.i.i1519.for.body.i.i1516_crit_edge

for.inc.i.i1519.for.body.i.i1516_crit_edge:       ; preds = %for.inc.i.i1519
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1516

for.inc.i.i1519.drm_fixp_div.exit1536_crit_edge:  ; preds = %for.inc.i.i1519
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1536

drm_fixp_div.exit1536:                            ; preds = %for.inc.i.i1519.drm_fixp_div.exit1536_crit_edge, %for.body.i.i1516.drm_fixp_div.exit1536_crit_edge
  %shift.0.lcssa.i.i1520 = phi i32 [ 0, %for.inc.i.i1519.drm_fixp_div.exit1536_crit_edge ], [ %shift.014.i.i1511, %for.body.i.i1516.drm_fixp_div.exit1536_crit_edge ]
  %sub.i1521 = sub i32 62, %shift.0.lcssa.i.i1520
  %sh_prom.i1522 = zext i32 %sub.i1521 to i64
  %shl.i1523 = shl i64 %275, %sh_prom.i1522
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1521)
  %cmp.i1524 = icmp ult i32 %sub.i1521, 32
  %sub1.i1525 = add i32 %shift.0.lcssa.i.i1520, -30
  %narrow.i1526 = select i1 %cmp.i1524, i32 %sub1.i1525, i32 0
  %shr.i1527 = zext i32 %narrow.i1526 to i64
  %b.addr.0.i1528 = ashr i64 %spec.select.i1507, %shr.i1527
  %call3.i1529 = call i64 @div64_s64(i64 noundef %shl.i1523, i64 noundef %b.addr.0.i1528) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1521)
  %cmp4.i1530 = icmp ugt i32 %sub.i1521, 32
  %sub6.i1531 = sub i32 30, %shift.0.lcssa.i.i1520
  %narrow19.i1532 = select i1 %cmp4.i1530, i32 %sub6.i1531, i32 0
  %shr8.i1533 = zext i32 %narrow19.i1532 to i64
  %retval.0.i1534 = ashr i64 %call3.i1529, %shr8.i1533
  %276 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %276)
  store i64 %retval.0.i1534, ptr %temp2_fp, align 8
  %277 = lshr i64 %retval.0.i1534, 32
  %conv.i1537 = trunc i64 %277 to i32
  %n_tus = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 27
  %and = and i64 %retval.0.i1534, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294963200, i64 %and)
  %cmp125 = icmp ugt i64 %and, 4294963200
  %add129 = zext i1 %cmp125 to i32
  %spec.select = add i32 %conv.i1537, %add129
  %278 = ptrtoint ptr %n_tus to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %spec.select, ptr %n_tus, align 8
  %279 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %nlanes4.i, align 8
  %rem = srem i32 %spec.select, %280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp133 = icmp eq i32 %rem, 0
  %cond = zext i1 %cmp133 to i32
  %281 = ptrtoint ptr %even_distribution_legacy to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %cond, ptr %even_distribution_legacy, align 4
  %282 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %valid_boundary_link, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.75, i32 noundef %283, i32 noundef %spec.select) #7
  %284 = ptrtoint ptr %tu_size_desired to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %tu_size_desired, align 4
  %286 = call i32 @llvm.abs.i32(i32 %285, i1 false)
  %287 = zext i32 %286 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1538) #7
  %288 = ptrtoint ptr %rem.i1538 to i32
  call void @__asan_store8_noabort(i32 %288)
  store i64 -1, ptr %rem.i1538, align 8, !annotation !176
  %call.i1539 = call i64 @div64_u64_rem(i64 noundef %287, i64 noundef 1, ptr noundef nonnull %rem.i1538) #7
  %289 = ptrtoint ptr %rem.i1538 to i32
  call void @__asan_load8_noabort(i32 %289)
  %rem.promoted.i1540 = load i64, ptr %rem.i1538, align 8
  br label %do.body.i1554

do.body.i1554:                                    ; preds = %do.body.i1554.do.body.i1554_crit_edge, %drm_fixp_div.exit1536
  %storemerge40.i1541 = phi i64 [ %rem.promoted.i1540, %drm_fixp_div.exit1536 ], [ %storemerge.i1548, %do.body.i1554.do.body.i1554_crit_edge ]
  %res_abs.0.i1542 = phi i64 [ %call.i1539, %drm_fixp_div.exit1536 ], [ %res_abs.1.i1551, %do.body.i1554.do.body.i1554_crit_edge ]
  %i.0.i1543 = phi i32 [ 32, %drm_fixp_div.exit1536 ], [ %dec.i1552, %do.body.i1554.do.body.i1554_crit_edge ]
  %shl.i1544 = shl i64 %storemerge40.i1541, 1
  %shl9.i1545 = shl i64 %res_abs.0.i1542, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1544)
  %cmp10.not.i1546 = icmp ne i64 %shl.i1544, 0
  %sub11.i1547.neg = sext i1 %cmp10.not.i1546 to i64
  %storemerge.i1548 = add i64 %shl.i1544, %sub11.i1547.neg
  %or.i1550 = zext i1 %cmp10.not.i1546 to i64
  %res_abs.1.i1551 = or i64 %shl9.i1545, %or.i1550
  %dec.i1552 = add nsw i32 %i.0.i1543, -1
  %cmp12.not.i1553 = icmp eq i32 %dec.i1552, 0
  br i1 %cmp12.not.i1553, label %drm_fixp_from_fraction.exit1563, label %do.body.i1554.do.body.i1554_crit_edge

do.body.i1554.do.body.i1554_crit_edge:            ; preds = %do.body.i1554
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1554

drm_fixp_from_fraction.exit1563:                  ; preds = %do.body.i1554
  %shl13.i1555.mask = and i64 %storemerge.i1548, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1555.mask)
  %cmp14.i1556 = icmp ne i64 %shl13.i1555.mask, 0
  %290 = zext i1 %cmp14.i1556 to i64
  %add.i1557 = add i64 %res_abs.1.i1551, %290
  %sub22.i1559 = sub i64 0, %add.i1557
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool20.not39.i1560 = icmp slt i32 %285, 0
  %spec.select.i1561 = select i1 %tobool20.not39.i1560, i64 %sub22.i1559, i64 %add.i1557
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1538) #7
  %291 = ptrtoint ptr %original_ratio_fp to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %original_ratio_fp, align 8
  %shr12.i.i1564 = lshr i64 %292, 63
  br label %for.body.i.i1570

for.body.i.i1570:                                 ; preds = %for.inc.i.i1573.for.body.i.i1570_crit_edge, %drm_fixp_from_fraction.exit1563
  %shift.014.i.i1565 = phi i32 [ 62, %drm_fixp_from_fraction.exit1563 ], [ %dec.i.i1571, %for.inc.i.i1573.for.body.i.i1570_crit_edge ]
  %sh_prom.i.i1566 = zext i32 %shift.014.i.i1565 to i64
  %shr213.i.i1567 = lshr i64 %292, %sh_prom.i.i1566
  %and3.i.i1568 = and i64 %shr213.i.i1567, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1568, i64 %shr12.i.i1564)
  %cmp5.not.i.i1569 = icmp eq i64 %and3.i.i1568, %shr12.i.i1564
  br i1 %cmp5.not.i.i1569, label %for.inc.i.i1573, label %for.body.i.i1570.drm_fixp_msbset.exit.i1576_crit_edge

for.body.i.i1570.drm_fixp_msbset.exit.i1576_crit_edge: ; preds = %for.body.i.i1570
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1576

for.inc.i.i1573:                                  ; preds = %for.body.i.i1570
  %dec.i.i1571 = add nsw i32 %shift.014.i.i1565, -1
  %cmp.not.i.i1572 = icmp eq i32 %dec.i.i1571, 0
  br i1 %cmp.not.i.i1572, label %for.inc.i.i1573.drm_fixp_msbset.exit.i1576_crit_edge, label %for.inc.i.i1573.for.body.i.i1570_crit_edge

for.inc.i.i1573.for.body.i.i1570_crit_edge:       ; preds = %for.inc.i.i1573
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1570

for.inc.i.i1573.drm_fixp_msbset.exit.i1576_crit_edge: ; preds = %for.inc.i.i1573
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1576

drm_fixp_msbset.exit.i1576:                       ; preds = %for.inc.i.i1573.drm_fixp_msbset.exit.i1576_crit_edge, %for.body.i.i1570.drm_fixp_msbset.exit.i1576_crit_edge
  %shift.0.lcssa.i.i1574 = phi i32 [ 0, %for.inc.i.i1573.drm_fixp_msbset.exit.i1576_crit_edge ], [ %shift.014.i.i1565, %for.body.i.i1570.drm_fixp_msbset.exit.i1576_crit_edge ]
  %shr12.i33.i1575 = lshr i64 %spec.select.i1561, 63
  br label %for.body.i39.i1582

for.body.i39.i1582:                               ; preds = %for.inc.i42.i1585.for.body.i39.i1582_crit_edge, %drm_fixp_msbset.exit.i1576
  %shift.014.i34.i1577 = phi i32 [ 62, %drm_fixp_msbset.exit.i1576 ], [ %dec.i40.i1583, %for.inc.i42.i1585.for.body.i39.i1582_crit_edge ]
  %sh_prom.i35.i1578 = zext i32 %shift.014.i34.i1577 to i64
  %shr213.i36.i1579 = lshr i64 %spec.select.i1561, %sh_prom.i35.i1578
  %and3.i37.i1580 = and i64 %shr213.i36.i1579, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1580, i64 %shr12.i33.i1575)
  %cmp5.not.i38.i1581 = icmp eq i64 %and3.i37.i1580, %shr12.i33.i1575
  br i1 %cmp5.not.i38.i1581, label %for.inc.i42.i1585, label %for.body.i39.i1582.drm_fixp_msbset.exit44.i1589_crit_edge

for.body.i39.i1582.drm_fixp_msbset.exit44.i1589_crit_edge: ; preds = %for.body.i39.i1582
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1589

for.inc.i42.i1585:                                ; preds = %for.body.i39.i1582
  %dec.i40.i1583 = add nsw i32 %shift.014.i34.i1577, -1
  %cmp.not.i41.i1584 = icmp eq i32 %dec.i40.i1583, 0
  br i1 %cmp.not.i41.i1584, label %for.inc.i42.i1585.drm_fixp_msbset.exit44.i1589_crit_edge, label %for.inc.i42.i1585.for.body.i39.i1582_crit_edge

for.inc.i42.i1585.for.body.i39.i1582_crit_edge:   ; preds = %for.inc.i42.i1585
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1582

for.inc.i42.i1585.drm_fixp_msbset.exit44.i1589_crit_edge: ; preds = %for.inc.i42.i1585
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1589

drm_fixp_msbset.exit44.i1589:                     ; preds = %for.inc.i42.i1585.drm_fixp_msbset.exit44.i1589_crit_edge, %for.body.i39.i1582.drm_fixp_msbset.exit44.i1589_crit_edge
  %shift.0.lcssa.i43.i1586 = phi i32 [ 0, %for.inc.i42.i1585.drm_fixp_msbset.exit44.i1589_crit_edge ], [ %shift.014.i34.i1577, %for.body.i39.i1582.drm_fixp_msbset.exit44.i1589_crit_edge ]
  %add.i1587 = add i32 %shift.0.lcssa.i43.i1586, %shift.0.lcssa.i.i1574
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1587)
  %cmp.i1588 = icmp ugt i32 %add.i1587, 61
  br i1 %cmp.i1588, label %if.end.i1602, label %if.end11.thread.i1591

if.end11.thread.i1591:                            ; preds = %drm_fixp_msbset.exit44.i1589
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1590 = mul i64 %292, %spec.select.i1561
  br label %if.then13.i1614

if.end.i1602:                                     ; preds = %drm_fixp_msbset.exit44.i1589
  %sub.i1592 = add i32 %add.i1587, -61
  %shr.i1593 = lshr i32 %sub.i1592, 1
  %and.i1594 = and i32 %sub.i1592, 1
  %add2.i1595 = add nuw nsw i32 %shr.i1593, %and.i1594
  %sh_prom.i1596 = zext i32 %add2.i1595 to i64
  %shr3.i1597 = ashr i64 %292, %sh_prom.i1596
  %sh_prom5.i1598 = zext i32 %shr.i1593 to i64
  %shr6.i1599 = ashr i64 %spec.select.i1561, %sh_prom5.i1598
  %mul.i1600 = mul i64 %shr3.i1597, %shr6.i1599
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1592)
  %cmp7.i1601 = icmp ugt i32 %sub.i1592, 32
  br i1 %cmp7.i1601, label %if.then8.i1606, label %if.end11.i1608

if.then8.i1606:                                   ; preds = %if.end.i1602
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1603 = add i32 %add.i1587, -93
  %sh_prom10.i1604 = zext i32 %sub9.i1603 to i64
  %shl.i1605 = shl i64 %mul.i1600, %sh_prom10.i1604
  br label %drm_fixp_mul.exit1616

if.end11.i1608:                                   ; preds = %if.end.i1602
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1592)
  %cmp12.not.i1607 = icmp eq i32 %sub.i1592, 32
  br i1 %cmp12.not.i1607, label %if.end11.i1608.drm_fixp_mul.exit1616_crit_edge, label %if.end11.i1608.if.then13.i1614_crit_edge

if.end11.i1608.if.then13.i1614_crit_edge:         ; preds = %if.end11.i1608
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1614

if.end11.i1608.drm_fixp_mul.exit1616_crit_edge:   ; preds = %if.end11.i1608
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1616

if.then13.i1614:                                  ; preds = %if.end11.i1608.if.then13.i1614_crit_edge, %if.end11.thread.i1591
  %shift.05056.i1609 = phi i32 [ 0, %if.end11.thread.i1591 ], [ %sub.i1592, %if.end11.i1608.if.then13.i1614_crit_edge ]
  %mul5155.i1610 = phi i64 [ %mul48.i1590, %if.end11.thread.i1591 ], [ %mul.i1600, %if.end11.i1608.if.then13.i1614_crit_edge ]
  %sub14.i1611 = sub nuw nsw i32 32, %shift.05056.i1609
  %sh_prom15.i1612 = zext i32 %sub14.i1611 to i64
  %shr16.i1613 = ashr i64 %mul5155.i1610, %sh_prom15.i1612
  br label %drm_fixp_mul.exit1616

drm_fixp_mul.exit1616:                            ; preds = %if.then13.i1614, %if.end11.i1608.drm_fixp_mul.exit1616_crit_edge, %if.then8.i1606
  %retval.0.i1615 = phi i64 [ %shl.i1605, %if.then8.i1606 ], [ %shr16.i1613, %if.then13.i1614 ], [ %mul.i1600, %if.end11.i1608.drm_fixp_mul.exit1616_crit_edge ]
  %293 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %293)
  store i64 %retval.0.i1615, ptr %temp2_fp, align 8
  %294 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %valid_boundary_link, align 4
  %296 = call i32 @llvm.abs.i32(i32 %295, i1 false)
  %297 = zext i32 %296 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1617) #7
  %298 = ptrtoint ptr %rem.i1617 to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 -1, ptr %rem.i1617, align 8, !annotation !176
  %call.i1618 = call i64 @div64_u64_rem(i64 noundef %297, i64 noundef 1, ptr noundef nonnull %rem.i1617) #7
  %299 = ptrtoint ptr %rem.i1617 to i32
  call void @__asan_load8_noabort(i32 %299)
  %rem.promoted.i1619 = load i64, ptr %rem.i1617, align 8
  br label %do.body.i1633

do.body.i1633:                                    ; preds = %do.body.i1633.do.body.i1633_crit_edge, %drm_fixp_mul.exit1616
  %storemerge40.i1620 = phi i64 [ %rem.promoted.i1619, %drm_fixp_mul.exit1616 ], [ %storemerge.i1627, %do.body.i1633.do.body.i1633_crit_edge ]
  %res_abs.0.i1621 = phi i64 [ %call.i1618, %drm_fixp_mul.exit1616 ], [ %res_abs.1.i1630, %do.body.i1633.do.body.i1633_crit_edge ]
  %i.0.i1622 = phi i32 [ 32, %drm_fixp_mul.exit1616 ], [ %dec.i1631, %do.body.i1633.do.body.i1633_crit_edge ]
  %shl.i1623 = shl i64 %storemerge40.i1620, 1
  %shl9.i1624 = shl i64 %res_abs.0.i1621, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1623)
  %cmp10.not.i1625 = icmp ne i64 %shl.i1623, 0
  %sub11.i1626.neg = sext i1 %cmp10.not.i1625 to i64
  %storemerge.i1627 = add i64 %shl.i1623, %sub11.i1626.neg
  %or.i1629 = zext i1 %cmp10.not.i1625 to i64
  %res_abs.1.i1630 = or i64 %shl9.i1624, %or.i1629
  %dec.i1631 = add nsw i32 %i.0.i1622, -1
  %cmp12.not.i1632 = icmp eq i32 %dec.i1631, 0
  br i1 %cmp12.not.i1632, label %drm_fixp_from_fraction.exit1642, label %do.body.i1633.do.body.i1633_crit_edge

do.body.i1633.do.body.i1633_crit_edge:            ; preds = %do.body.i1633
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1633

drm_fixp_from_fraction.exit1642:                  ; preds = %do.body.i1633
  %shl13.i1634.mask = and i64 %storemerge.i1627, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1634.mask)
  %cmp14.i1635 = icmp ne i64 %shl13.i1634.mask, 0
  %300 = zext i1 %cmp14.i1635 to i64
  %add.i1636 = add i64 %res_abs.1.i1630, %300
  %sub22.i1638 = sub i64 0, %add.i1636
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool20.not39.i1639 = icmp slt i32 %295, 0
  %spec.select.i1640 = select i1 %tobool20.not39.i1639, i64 %sub22.i1638, i64 %add.i1636
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1617) #7
  %301 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %temp2_fp, align 8
  %sub146 = sub i64 %spec.select.i1640, %302
  store i64 %sub146, ptr %temp2_fp, align 8
  %303 = ptrtoint ptr %n_tus to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %n_tus, align 8
  %add148 = add i32 %304, 1
  %305 = call i32 @llvm.abs.i32(i32 %add148, i1 false)
  %306 = zext i32 %305 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1643) #7
  %307 = ptrtoint ptr %rem.i1643 to i32
  call void @__asan_store8_noabort(i32 %307)
  store i64 -1, ptr %rem.i1643, align 8, !annotation !176
  %call.i1644 = call i64 @div64_u64_rem(i64 noundef %306, i64 noundef 1, ptr noundef nonnull %rem.i1643) #7
  %308 = ptrtoint ptr %rem.i1643 to i32
  call void @__asan_load8_noabort(i32 %308)
  %rem.promoted.i1645 = load i64, ptr %rem.i1643, align 8
  br label %do.body.i1659

do.body.i1659:                                    ; preds = %do.body.i1659.do.body.i1659_crit_edge, %drm_fixp_from_fraction.exit1642
  %storemerge40.i1646 = phi i64 [ %rem.promoted.i1645, %drm_fixp_from_fraction.exit1642 ], [ %storemerge.i1653, %do.body.i1659.do.body.i1659_crit_edge ]
  %res_abs.0.i1647 = phi i64 [ %call.i1644, %drm_fixp_from_fraction.exit1642 ], [ %res_abs.1.i1656, %do.body.i1659.do.body.i1659_crit_edge ]
  %i.0.i1648 = phi i32 [ 32, %drm_fixp_from_fraction.exit1642 ], [ %dec.i1657, %do.body.i1659.do.body.i1659_crit_edge ]
  %shl.i1649 = shl i64 %storemerge40.i1646, 1
  %shl9.i1650 = shl i64 %res_abs.0.i1647, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1649)
  %cmp10.not.i1651 = icmp ne i64 %shl.i1649, 0
  %sub11.i1652.neg = sext i1 %cmp10.not.i1651 to i64
  %storemerge.i1653 = add i64 %shl.i1649, %sub11.i1652.neg
  %or.i1655 = zext i1 %cmp10.not.i1651 to i64
  %res_abs.1.i1656 = or i64 %shl9.i1650, %or.i1655
  %dec.i1657 = add nsw i32 %i.0.i1648, -1
  %cmp12.not.i1658 = icmp eq i32 %dec.i1657, 0
  br i1 %cmp12.not.i1658, label %drm_fixp_from_fraction.exit1668, label %do.body.i1659.do.body.i1659_crit_edge

do.body.i1659.do.body.i1659_crit_edge:            ; preds = %do.body.i1659
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1659

drm_fixp_from_fraction.exit1668:                  ; preds = %do.body.i1659
  %shl13.i1660.mask = and i64 %storemerge.i1653, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1660.mask)
  %cmp14.i1661 = icmp ne i64 %shl13.i1660.mask, 0
  %309 = zext i1 %cmp14.i1661 to i64
  %add.i1662 = add i64 %res_abs.1.i1656, %309
  %sub22.i1664 = sub i64 0, %add.i1662
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add148)
  %tobool20.not39.i1665 = icmp slt i32 %add148, 0
  %spec.select.i1666 = select i1 %tobool20.not39.i1665, i64 %sub22.i1664, i64 %add.i1662
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1643) #7
  %310 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_load8_noabort(i32 %310)
  %311 = load i64, ptr %temp2_fp, align 8
  %shr12.i.i1669 = lshr i64 %spec.select.i1666, 63
  br label %for.body.i.i1675

for.body.i.i1675:                                 ; preds = %for.inc.i.i1678.for.body.i.i1675_crit_edge, %drm_fixp_from_fraction.exit1668
  %shift.014.i.i1670 = phi i32 [ 62, %drm_fixp_from_fraction.exit1668 ], [ %dec.i.i1676, %for.inc.i.i1678.for.body.i.i1675_crit_edge ]
  %sh_prom.i.i1671 = zext i32 %shift.014.i.i1670 to i64
  %shr213.i.i1672 = lshr i64 %spec.select.i1666, %sh_prom.i.i1671
  %and3.i.i1673 = and i64 %shr213.i.i1672, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1673, i64 %shr12.i.i1669)
  %cmp5.not.i.i1674 = icmp eq i64 %and3.i.i1673, %shr12.i.i1669
  br i1 %cmp5.not.i.i1674, label %for.inc.i.i1678, label %for.body.i.i1675.drm_fixp_msbset.exit.i1681_crit_edge

for.body.i.i1675.drm_fixp_msbset.exit.i1681_crit_edge: ; preds = %for.body.i.i1675
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1681

for.inc.i.i1678:                                  ; preds = %for.body.i.i1675
  %dec.i.i1676 = add nsw i32 %shift.014.i.i1670, -1
  %cmp.not.i.i1677 = icmp eq i32 %dec.i.i1676, 0
  br i1 %cmp.not.i.i1677, label %for.inc.i.i1678.drm_fixp_msbset.exit.i1681_crit_edge, label %for.inc.i.i1678.for.body.i.i1675_crit_edge

for.inc.i.i1678.for.body.i.i1675_crit_edge:       ; preds = %for.inc.i.i1678
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1675

for.inc.i.i1678.drm_fixp_msbset.exit.i1681_crit_edge: ; preds = %for.inc.i.i1678
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1681

drm_fixp_msbset.exit.i1681:                       ; preds = %for.inc.i.i1678.drm_fixp_msbset.exit.i1681_crit_edge, %for.body.i.i1675.drm_fixp_msbset.exit.i1681_crit_edge
  %shift.0.lcssa.i.i1679 = phi i32 [ 0, %for.inc.i.i1678.drm_fixp_msbset.exit.i1681_crit_edge ], [ %shift.014.i.i1670, %for.body.i.i1675.drm_fixp_msbset.exit.i1681_crit_edge ]
  %shr12.i33.i1680 = lshr i64 %311, 63
  br label %for.body.i39.i1687

for.body.i39.i1687:                               ; preds = %for.inc.i42.i1690.for.body.i39.i1687_crit_edge, %drm_fixp_msbset.exit.i1681
  %shift.014.i34.i1682 = phi i32 [ 62, %drm_fixp_msbset.exit.i1681 ], [ %dec.i40.i1688, %for.inc.i42.i1690.for.body.i39.i1687_crit_edge ]
  %sh_prom.i35.i1683 = zext i32 %shift.014.i34.i1682 to i64
  %shr213.i36.i1684 = lshr i64 %311, %sh_prom.i35.i1683
  %and3.i37.i1685 = and i64 %shr213.i36.i1684, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1685, i64 %shr12.i33.i1680)
  %cmp5.not.i38.i1686 = icmp eq i64 %and3.i37.i1685, %shr12.i33.i1680
  br i1 %cmp5.not.i38.i1686, label %for.inc.i42.i1690, label %for.body.i39.i1687.drm_fixp_msbset.exit44.i1694_crit_edge

for.body.i39.i1687.drm_fixp_msbset.exit44.i1694_crit_edge: ; preds = %for.body.i39.i1687
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1694

for.inc.i42.i1690:                                ; preds = %for.body.i39.i1687
  %dec.i40.i1688 = add nsw i32 %shift.014.i34.i1682, -1
  %cmp.not.i41.i1689 = icmp eq i32 %dec.i40.i1688, 0
  br i1 %cmp.not.i41.i1689, label %for.inc.i42.i1690.drm_fixp_msbset.exit44.i1694_crit_edge, label %for.inc.i42.i1690.for.body.i39.i1687_crit_edge

for.inc.i42.i1690.for.body.i39.i1687_crit_edge:   ; preds = %for.inc.i42.i1690
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1687

for.inc.i42.i1690.drm_fixp_msbset.exit44.i1694_crit_edge: ; preds = %for.inc.i42.i1690
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1694

drm_fixp_msbset.exit44.i1694:                     ; preds = %for.inc.i42.i1690.drm_fixp_msbset.exit44.i1694_crit_edge, %for.body.i39.i1687.drm_fixp_msbset.exit44.i1694_crit_edge
  %shift.0.lcssa.i43.i1691 = phi i32 [ 0, %for.inc.i42.i1690.drm_fixp_msbset.exit44.i1694_crit_edge ], [ %shift.014.i34.i1682, %for.body.i39.i1687.drm_fixp_msbset.exit44.i1694_crit_edge ]
  %add.i1692 = add i32 %shift.0.lcssa.i43.i1691, %shift.0.lcssa.i.i1679
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1692)
  %cmp.i1693 = icmp ugt i32 %add.i1692, 61
  br i1 %cmp.i1693, label %if.end.i1707, label %if.end11.thread.i1696

if.end11.thread.i1696:                            ; preds = %drm_fixp_msbset.exit44.i1694
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1695 = mul i64 %311, %spec.select.i1666
  br label %if.then13.i1719

if.end.i1707:                                     ; preds = %drm_fixp_msbset.exit44.i1694
  %sub.i1697 = add i32 %add.i1692, -61
  %shr.i1698 = lshr i32 %sub.i1697, 1
  %and.i1699 = and i32 %sub.i1697, 1
  %add2.i1700 = add nuw nsw i32 %shr.i1698, %and.i1699
  %sh_prom.i1701 = zext i32 %add2.i1700 to i64
  %shr3.i1702 = ashr i64 %spec.select.i1666, %sh_prom.i1701
  %sh_prom5.i1703 = zext i32 %shr.i1698 to i64
  %shr6.i1704 = ashr i64 %311, %sh_prom5.i1703
  %mul.i1705 = mul i64 %shr3.i1702, %shr6.i1704
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1697)
  %cmp7.i1706 = icmp ugt i32 %sub.i1697, 32
  br i1 %cmp7.i1706, label %if.then8.i1711, label %if.end11.i1713

if.then8.i1711:                                   ; preds = %if.end.i1707
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1708 = add i32 %add.i1692, -93
  %sh_prom10.i1709 = zext i32 %sub9.i1708 to i64
  %shl.i1710 = shl i64 %mul.i1705, %sh_prom10.i1709
  br label %drm_fixp_mul.exit1721

if.end11.i1713:                                   ; preds = %if.end.i1707
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1697)
  %cmp12.not.i1712 = icmp eq i32 %sub.i1697, 32
  br i1 %cmp12.not.i1712, label %if.end11.i1713.drm_fixp_mul.exit1721_crit_edge, label %if.end11.i1713.if.then13.i1719_crit_edge

if.end11.i1713.if.then13.i1719_crit_edge:         ; preds = %if.end11.i1713
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1719

if.end11.i1713.drm_fixp_mul.exit1721_crit_edge:   ; preds = %if.end11.i1713
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1721

if.then13.i1719:                                  ; preds = %if.end11.i1713.if.then13.i1719_crit_edge, %if.end11.thread.i1696
  %shift.05056.i1714 = phi i32 [ 0, %if.end11.thread.i1696 ], [ %sub.i1697, %if.end11.i1713.if.then13.i1719_crit_edge ]
  %mul5155.i1715 = phi i64 [ %mul48.i1695, %if.end11.thread.i1696 ], [ %mul.i1705, %if.end11.i1713.if.then13.i1719_crit_edge ]
  %sub14.i1716 = sub nuw nsw i32 32, %shift.05056.i1714
  %sh_prom15.i1717 = zext i32 %sub14.i1716 to i64
  %shr16.i1718 = ashr i64 %mul5155.i1715, %sh_prom15.i1717
  br label %drm_fixp_mul.exit1721

drm_fixp_mul.exit1721:                            ; preds = %if.then13.i1719, %if.end11.i1713.drm_fixp_mul.exit1721_crit_edge, %if.then8.i1711
  %retval.0.i1720 = phi i64 [ %shl.i1710, %if.then8.i1711 ], [ %shr16.i1718, %if.then13.i1719 ], [ %mul.i1705, %if.end11.i1713.drm_fixp_mul.exit1721_crit_edge ]
  %312 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %312)
  store i64 %retval.0.i1720, ptr %temp2_fp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %retval.0.i1720)
  %tobool154.not = icmp ult i64 %retval.0.i1720, 4294967296
  br i1 %tobool154.not, label %drm_fixp_mul.exit1721.if.end161_crit_edge, label %if.then157

drm_fixp_mul.exit1721.if.end161_crit_edge:        ; preds = %drm_fixp_mul.exit1721
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

if.then157:                                       ; preds = %drm_fixp_mul.exit1721
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1720)
  %cmp.i1723 = icmp sgt i64 %retval.0.i1720, 0
  %..i1724 = select i1 %cmp.i1723, i64 4294967295, i64 -4294967295
  %sub.i1725 = add i64 %..i1724, %retval.0.i1720
  %313 = lshr i64 %sub.i1725, 32
  %conv.i4.i1726 = trunc i64 %313 to i32
  br label %if.end161

if.end161:                                        ; preds = %if.then157, %drm_fixp_mul.exit1721.if.end161_crit_edge
  %conv.i4.i1726.sink = phi i32 [ %conv.i4.i1726, %if.then157 ], [ 0, %drm_fixp_mul.exit1721.if.end161_crit_edge ]
  %314 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 33
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %conv.i4.i1726.sink, ptr %314, align 8
  %316 = call i32 @llvm.abs.i32(i32 %conv.i4.i1726.sink, i1 false)
  %317 = zext i32 %316 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1727) #7
  %318 = ptrtoint ptr %rem.i1727 to i32
  call void @__asan_store8_noabort(i32 %318)
  store i64 -1, ptr %rem.i1727, align 8, !annotation !176
  %call.i1728 = call i64 @div64_u64_rem(i64 noundef %317, i64 noundef 1, ptr noundef nonnull %rem.i1727) #7
  %319 = ptrtoint ptr %rem.i1727 to i32
  call void @__asan_load8_noabort(i32 %319)
  %rem.promoted.i1729 = load i64, ptr %rem.i1727, align 8
  br label %do.body.i1743

do.body.i1743:                                    ; preds = %do.body.i1743.do.body.i1743_crit_edge, %if.end161
  %storemerge40.i1730 = phi i64 [ %rem.promoted.i1729, %if.end161 ], [ %storemerge.i1737, %do.body.i1743.do.body.i1743_crit_edge ]
  %res_abs.0.i1731 = phi i64 [ %call.i1728, %if.end161 ], [ %res_abs.1.i1740, %do.body.i1743.do.body.i1743_crit_edge ]
  %i.0.i1732 = phi i32 [ 32, %if.end161 ], [ %dec.i1741, %do.body.i1743.do.body.i1743_crit_edge ]
  %shl.i1733 = shl i64 %storemerge40.i1730, 1
  %shl9.i1734 = shl i64 %res_abs.0.i1731, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1733)
  %cmp10.not.i1735 = icmp ne i64 %shl.i1733, 0
  %sub11.i1736.neg = sext i1 %cmp10.not.i1735 to i64
  %storemerge.i1737 = add i64 %shl.i1733, %sub11.i1736.neg
  %or.i1739 = zext i1 %cmp10.not.i1735 to i64
  %res_abs.1.i1740 = or i64 %shl9.i1734, %or.i1739
  %dec.i1741 = add nsw i32 %i.0.i1732, -1
  %cmp12.not.i1742 = icmp eq i32 %dec.i1741, 0
  br i1 %cmp12.not.i1742, label %drm_fixp_from_fraction.exit1752, label %do.body.i1743.do.body.i1743_crit_edge

do.body.i1743.do.body.i1743_crit_edge:            ; preds = %do.body.i1743
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1743

drm_fixp_from_fraction.exit1752:                  ; preds = %do.body.i1743
  %shl13.i1744.mask = and i64 %storemerge.i1737, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1744.mask)
  %cmp14.i1745 = icmp ne i64 %shl13.i1744.mask, 0
  %320 = zext i1 %cmp14.i1745 to i64
  %add.i1746 = add i64 %res_abs.1.i1740, %320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i4.i1726.sink)
  %tobool20.not39.i1749 = icmp slt i32 %conv.i4.i1726.sink, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1727) #7
  %321 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %bpp5.i, align 4
  %323 = call i32 @llvm.abs.i32(i32 %322, i1 false)
  %324 = zext i32 %323 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1753) #7
  %325 = ptrtoint ptr %rem.i1753 to i32
  call void @__asan_store8_noabort(i32 %325)
  store i64 -1, ptr %rem.i1753, align 8, !annotation !176
  %call.i1754 = call i64 @div64_u64_rem(i64 noundef 8, i64 noundef %324, ptr noundef nonnull %rem.i1753) #7
  %326 = ptrtoint ptr %rem.i1753 to i32
  call void @__asan_load8_noabort(i32 %326)
  %rem.promoted.i1755 = load i64, ptr %rem.i1753, align 8
  br label %do.body.i1769

do.body.i1769:                                    ; preds = %do.body.i1769.do.body.i1769_crit_edge, %drm_fixp_from_fraction.exit1752
  %storemerge40.i1756 = phi i64 [ %rem.promoted.i1755, %drm_fixp_from_fraction.exit1752 ], [ %storemerge.i1763, %do.body.i1769.do.body.i1769_crit_edge ]
  %res_abs.0.i1757 = phi i64 [ %call.i1754, %drm_fixp_from_fraction.exit1752 ], [ %res_abs.1.i1766, %do.body.i1769.do.body.i1769_crit_edge ]
  %i.0.i1758 = phi i32 [ 32, %drm_fixp_from_fraction.exit1752 ], [ %dec.i1767, %do.body.i1769.do.body.i1769_crit_edge ]
  %shl.i1759 = shl i64 %storemerge40.i1756, 1
  %shl9.i1760 = shl i64 %res_abs.0.i1757, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i1759, i64 %324)
  %cmp10.not.i1761 = icmp ult i64 %shl.i1759, %324
  %sub11.i1762 = select i1 %cmp10.not.i1761, i64 0, i64 %324
  %storemerge.i1763 = sub i64 %shl.i1759, %sub11.i1762
  %not.cmp10.not.i1764 = xor i1 %cmp10.not.i1761, true
  %or.i1765 = zext i1 %not.cmp10.not.i1764 to i64
  %res_abs.1.i1766 = or i64 %shl9.i1760, %or.i1765
  %dec.i1767 = add nsw i32 %i.0.i1758, -1
  %cmp12.not.i1768 = icmp eq i32 %dec.i1767, 0
  br i1 %cmp12.not.i1768, label %drm_fixp_from_fraction.exit1778, label %do.body.i1769.do.body.i1769_crit_edge

do.body.i1769.do.body.i1769_crit_edge:            ; preds = %do.body.i1769
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1769

drm_fixp_from_fraction.exit1778:                  ; preds = %do.body.i1769
  %sub22.i1748 = sub i64 0, %add.i1746
  %spec.select.i1750 = select i1 %tobool20.not39.i1749, i64 %sub22.i1748, i64 %add.i1746
  %shl13.i1770 = shl i64 %storemerge.i1763, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl13.i1770, i64 %324)
  %cmp14.i1771 = icmp uge i64 %shl13.i1770, %324
  %327 = zext i1 %cmp14.i1771 to i64
  %add.i1772 = add i64 %res_abs.1.i1766, %327
  %sub22.i1774 = sub i64 0, %add.i1772
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool20.not39.i1775 = icmp slt i32 %322, 0
  %spec.select.i1776 = select i1 %tobool20.not39.i1775, i64 %sub22.i1774, i64 %add.i1772
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1753) #7
  %328 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %328)
  store i64 %spec.select.i1776, ptr %temp2_fp, align 8
  %shr12.i.i1779 = lshr i64 %spec.select.i1750, 63
  br label %for.body.i.i1785

for.body.i.i1785:                                 ; preds = %for.inc.i.i1788.for.body.i.i1785_crit_edge, %drm_fixp_from_fraction.exit1778
  %shift.014.i.i1780 = phi i32 [ 62, %drm_fixp_from_fraction.exit1778 ], [ %dec.i.i1786, %for.inc.i.i1788.for.body.i.i1785_crit_edge ]
  %sh_prom.i.i1781 = zext i32 %shift.014.i.i1780 to i64
  %shr213.i.i1782 = lshr i64 %spec.select.i1750, %sh_prom.i.i1781
  %and3.i.i1783 = and i64 %shr213.i.i1782, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1783, i64 %shr12.i.i1779)
  %cmp5.not.i.i1784 = icmp eq i64 %and3.i.i1783, %shr12.i.i1779
  br i1 %cmp5.not.i.i1784, label %for.inc.i.i1788, label %for.body.i.i1785.drm_fixp_msbset.exit.i1791_crit_edge

for.body.i.i1785.drm_fixp_msbset.exit.i1791_crit_edge: ; preds = %for.body.i.i1785
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1791

for.inc.i.i1788:                                  ; preds = %for.body.i.i1785
  %dec.i.i1786 = add nsw i32 %shift.014.i.i1780, -1
  %cmp.not.i.i1787 = icmp eq i32 %dec.i.i1786, 0
  br i1 %cmp.not.i.i1787, label %for.inc.i.i1788.drm_fixp_msbset.exit.i1791_crit_edge, label %for.inc.i.i1788.for.body.i.i1785_crit_edge

for.inc.i.i1788.for.body.i.i1785_crit_edge:       ; preds = %for.inc.i.i1788
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1785

for.inc.i.i1788.drm_fixp_msbset.exit.i1791_crit_edge: ; preds = %for.inc.i.i1788
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1791

drm_fixp_msbset.exit.i1791:                       ; preds = %for.inc.i.i1788.drm_fixp_msbset.exit.i1791_crit_edge, %for.body.i.i1785.drm_fixp_msbset.exit.i1791_crit_edge
  %shift.0.lcssa.i.i1789 = phi i32 [ 0, %for.inc.i.i1788.drm_fixp_msbset.exit.i1791_crit_edge ], [ %shift.014.i.i1780, %for.body.i.i1785.drm_fixp_msbset.exit.i1791_crit_edge ]
  %shr12.i33.i1790 = lshr i64 %spec.select.i1776, 63
  br label %for.body.i39.i1797

for.body.i39.i1797:                               ; preds = %for.inc.i42.i1800.for.body.i39.i1797_crit_edge, %drm_fixp_msbset.exit.i1791
  %shift.014.i34.i1792 = phi i32 [ 62, %drm_fixp_msbset.exit.i1791 ], [ %dec.i40.i1798, %for.inc.i42.i1800.for.body.i39.i1797_crit_edge ]
  %sh_prom.i35.i1793 = zext i32 %shift.014.i34.i1792 to i64
  %shr213.i36.i1794 = lshr i64 %spec.select.i1776, %sh_prom.i35.i1793
  %and3.i37.i1795 = and i64 %shr213.i36.i1794, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1795, i64 %shr12.i33.i1790)
  %cmp5.not.i38.i1796 = icmp eq i64 %and3.i37.i1795, %shr12.i33.i1790
  br i1 %cmp5.not.i38.i1796, label %for.inc.i42.i1800, label %for.body.i39.i1797.drm_fixp_msbset.exit44.i1804_crit_edge

for.body.i39.i1797.drm_fixp_msbset.exit44.i1804_crit_edge: ; preds = %for.body.i39.i1797
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1804

for.inc.i42.i1800:                                ; preds = %for.body.i39.i1797
  %dec.i40.i1798 = add nsw i32 %shift.014.i34.i1792, -1
  %cmp.not.i41.i1799 = icmp eq i32 %dec.i40.i1798, 0
  br i1 %cmp.not.i41.i1799, label %for.inc.i42.i1800.drm_fixp_msbset.exit44.i1804_crit_edge, label %for.inc.i42.i1800.for.body.i39.i1797_crit_edge

for.inc.i42.i1800.for.body.i39.i1797_crit_edge:   ; preds = %for.inc.i42.i1800
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1797

for.inc.i42.i1800.drm_fixp_msbset.exit44.i1804_crit_edge: ; preds = %for.inc.i42.i1800
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1804

drm_fixp_msbset.exit44.i1804:                     ; preds = %for.inc.i42.i1800.drm_fixp_msbset.exit44.i1804_crit_edge, %for.body.i39.i1797.drm_fixp_msbset.exit44.i1804_crit_edge
  %shift.0.lcssa.i43.i1801 = phi i32 [ 0, %for.inc.i42.i1800.drm_fixp_msbset.exit44.i1804_crit_edge ], [ %shift.014.i34.i1792, %for.body.i39.i1797.drm_fixp_msbset.exit44.i1804_crit_edge ]
  %add.i1802 = add i32 %shift.0.lcssa.i43.i1801, %shift.0.lcssa.i.i1789
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1802)
  %cmp.i1803 = icmp ugt i32 %add.i1802, 61
  br i1 %cmp.i1803, label %if.end.i1817, label %if.end11.thread.i1806

if.end11.thread.i1806:                            ; preds = %drm_fixp_msbset.exit44.i1804
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1805 = mul i64 %spec.select.i1776, %spec.select.i1750
  br label %if.then13.i1829

if.end.i1817:                                     ; preds = %drm_fixp_msbset.exit44.i1804
  %sub.i1807 = add i32 %add.i1802, -61
  %shr.i1808 = lshr i32 %sub.i1807, 1
  %and.i1809 = and i32 %sub.i1807, 1
  %add2.i1810 = add nuw nsw i32 %shr.i1808, %and.i1809
  %sh_prom.i1811 = zext i32 %add2.i1810 to i64
  %shr3.i1812 = ashr i64 %spec.select.i1750, %sh_prom.i1811
  %sh_prom5.i1813 = zext i32 %shr.i1808 to i64
  %shr6.i1814 = ashr i64 %spec.select.i1776, %sh_prom5.i1813
  %mul.i1815 = mul i64 %shr3.i1812, %shr6.i1814
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1807)
  %cmp7.i1816 = icmp ugt i32 %sub.i1807, 32
  br i1 %cmp7.i1816, label %if.then8.i1821, label %if.end11.i1823

if.then8.i1821:                                   ; preds = %if.end.i1817
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1818 = add i32 %add.i1802, -93
  %sh_prom10.i1819 = zext i32 %sub9.i1818 to i64
  %shl.i1820 = shl i64 %mul.i1815, %sh_prom10.i1819
  br label %drm_fixp_mul.exit1831

if.end11.i1823:                                   ; preds = %if.end.i1817
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1807)
  %cmp12.not.i1822 = icmp eq i32 %sub.i1807, 32
  br i1 %cmp12.not.i1822, label %if.end11.i1823.drm_fixp_mul.exit1831_crit_edge, label %if.end11.i1823.if.then13.i1829_crit_edge

if.end11.i1823.if.then13.i1829_crit_edge:         ; preds = %if.end11.i1823
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1829

if.end11.i1823.drm_fixp_mul.exit1831_crit_edge:   ; preds = %if.end11.i1823
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1831

if.then13.i1829:                                  ; preds = %if.end11.i1823.if.then13.i1829_crit_edge, %if.end11.thread.i1806
  %shift.05056.i1824 = phi i32 [ 0, %if.end11.thread.i1806 ], [ %sub.i1807, %if.end11.i1823.if.then13.i1829_crit_edge ]
  %mul5155.i1825 = phi i64 [ %mul48.i1805, %if.end11.thread.i1806 ], [ %mul.i1815, %if.end11.i1823.if.then13.i1829_crit_edge ]
  %sub14.i1826 = sub nuw nsw i32 32, %shift.05056.i1824
  %sh_prom15.i1827 = zext i32 %sub14.i1826 to i64
  %shr16.i1828 = ashr i64 %mul5155.i1825, %sh_prom15.i1827
  br label %drm_fixp_mul.exit1831

drm_fixp_mul.exit1831:                            ; preds = %if.then13.i1829, %if.end11.i1823.drm_fixp_mul.exit1831_crit_edge, %if.then8.i1821
  %retval.0.i1830 = phi i64 [ %shl.i1820, %if.then8.i1821 ], [ %shr16.i1828, %if.then13.i1829 ], [ %mul.i1815, %if.end11.i1823.drm_fixp_mul.exit1831_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1830)
  %tobool171.not = icmp eq i64 %retval.0.i1830, 0
  %or.cond = select i1 %tobool154.not, i1 true, i1 %tobool171.not
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1830)
  %cmp.i1832 = icmp sgt i64 %retval.0.i1830, 0
  %..i1833 = select i1 %cmp.i1832, i64 4294967295, i64 -4294967295
  %sub.i1834 = select i1 %or.cond, i64 0, i64 %..i1833
  %retval.0.i1830.sink = add i64 %retval.0.i1830, %sub.i1834
  %329 = lshr i64 %retval.0.i1830.sink, 32
  %conv.i1836 = trunc i64 %329 to i32
  %330 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 36
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %conv.i1836, ptr %330, align 4
  %332 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %call7.i.i, align 8
  %334 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i1837 = lshr i64 %333, 63
  br label %for.body.i.i1843

for.body.i.i1843:                                 ; preds = %for.inc.i.i1846.for.body.i.i1843_crit_edge, %drm_fixp_mul.exit1831
  %shift.014.i.i1838 = phi i32 [ 62, %drm_fixp_mul.exit1831 ], [ %dec.i.i1844, %for.inc.i.i1846.for.body.i.i1843_crit_edge ]
  %sh_prom.i.i1839 = zext i32 %shift.014.i.i1838 to i64
  %shr213.i.i1840 = lshr i64 %333, %sh_prom.i.i1839
  %and3.i.i1841 = and i64 %shr213.i.i1840, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1841, i64 %shr12.i.i1837)
  %cmp5.not.i.i1842 = icmp eq i64 %and3.i.i1841, %shr12.i.i1837
  br i1 %cmp5.not.i.i1842, label %for.inc.i.i1846, label %for.body.i.i1843.drm_fixp_div.exit1863_crit_edge

for.body.i.i1843.drm_fixp_div.exit1863_crit_edge: ; preds = %for.body.i.i1843
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1863

for.inc.i.i1846:                                  ; preds = %for.body.i.i1843
  %dec.i.i1844 = add nsw i32 %shift.014.i.i1838, -1
  %cmp.not.i.i1845 = icmp eq i32 %dec.i.i1844, 0
  br i1 %cmp.not.i.i1845, label %for.inc.i.i1846.drm_fixp_div.exit1863_crit_edge, label %for.inc.i.i1846.for.body.i.i1843_crit_edge

for.inc.i.i1846.for.body.i.i1843_crit_edge:       ; preds = %for.inc.i.i1846
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1843

for.inc.i.i1846.drm_fixp_div.exit1863_crit_edge:  ; preds = %for.inc.i.i1846
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1863

drm_fixp_div.exit1863:                            ; preds = %for.inc.i.i1846.drm_fixp_div.exit1863_crit_edge, %for.body.i.i1843.drm_fixp_div.exit1863_crit_edge
  %shift.0.lcssa.i.i1847 = phi i32 [ 0, %for.inc.i.i1846.drm_fixp_div.exit1863_crit_edge ], [ %shift.014.i.i1838, %for.body.i.i1843.drm_fixp_div.exit1863_crit_edge ]
  %sub.i1848 = sub i32 62, %shift.0.lcssa.i.i1847
  %sh_prom.i1849 = zext i32 %sub.i1848 to i64
  %shl.i1850 = shl i64 %333, %sh_prom.i1849
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1848)
  %cmp.i1851 = icmp ult i32 %sub.i1848, 32
  %sub1.i1852 = add i32 %shift.0.lcssa.i.i1847, -30
  %narrow.i1853 = select i1 %cmp.i1851, i32 %sub1.i1852, i32 0
  %shr.i1854 = zext i32 %narrow.i1853 to i64
  %b.addr.0.i1855 = ashr i64 %335, %shr.i1854
  %call3.i1856 = call i64 @div64_s64(i64 noundef %shl.i1850, i64 noundef %b.addr.0.i1855) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1848)
  %cmp4.i1857 = icmp ugt i32 %sub.i1848, 32
  %sub6.i1858 = sub i32 30, %shift.0.lcssa.i.i1847
  %narrow19.i1859 = select i1 %cmp4.i1857, i32 %sub6.i1858, i32 0
  %shr8.i1860 = zext i32 %narrow19.i1859 to i64
  %336 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %330, align 4
  %338 = call i32 @llvm.abs.i32(i32 %337, i1 false)
  %339 = zext i32 %338 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1864) #7
  %340 = ptrtoint ptr %rem.i1864 to i32
  call void @__asan_store8_noabort(i32 %340)
  store i64 -1, ptr %rem.i1864, align 8, !annotation !176
  %call.i1865 = call i64 @div64_u64_rem(i64 noundef %339, i64 noundef 1, ptr noundef nonnull %rem.i1864) #7
  %341 = ptrtoint ptr %rem.i1864 to i32
  call void @__asan_load8_noabort(i32 %341)
  %rem.promoted.i1866 = load i64, ptr %rem.i1864, align 8
  br label %do.body.i1880

do.body.i1880:                                    ; preds = %do.body.i1880.do.body.i1880_crit_edge, %drm_fixp_div.exit1863
  %storemerge40.i1867 = phi i64 [ %rem.promoted.i1866, %drm_fixp_div.exit1863 ], [ %storemerge.i1874, %do.body.i1880.do.body.i1880_crit_edge ]
  %res_abs.0.i1868 = phi i64 [ %call.i1865, %drm_fixp_div.exit1863 ], [ %res_abs.1.i1877, %do.body.i1880.do.body.i1880_crit_edge ]
  %i.0.i1869 = phi i32 [ 32, %drm_fixp_div.exit1863 ], [ %dec.i1878, %do.body.i1880.do.body.i1880_crit_edge ]
  %shl.i1870 = shl i64 %storemerge40.i1867, 1
  %shl9.i1871 = shl i64 %res_abs.0.i1868, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1870)
  %cmp10.not.i1872 = icmp ne i64 %shl.i1870, 0
  %sub11.i1873.neg = sext i1 %cmp10.not.i1872 to i64
  %storemerge.i1874 = add i64 %shl.i1870, %sub11.i1873.neg
  %or.i1876 = zext i1 %cmp10.not.i1872 to i64
  %res_abs.1.i1877 = or i64 %shl9.i1871, %or.i1876
  %dec.i1878 = add nsw i32 %i.0.i1869, -1
  %cmp12.not.i1879 = icmp eq i32 %dec.i1878, 0
  br i1 %cmp12.not.i1879, label %drm_fixp_from_fraction.exit1889, label %do.body.i1880.do.body.i1880_crit_edge

do.body.i1880.do.body.i1880_crit_edge:            ; preds = %do.body.i1880
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1880

drm_fixp_from_fraction.exit1889:                  ; preds = %do.body.i1880
  %retval.0.i1861 = ashr i64 %call3.i1856, %shr8.i1860
  %shl13.i1881.mask = and i64 %storemerge.i1874, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1881.mask)
  %cmp14.i1882 = icmp ne i64 %shl13.i1881.mask, 0
  %342 = zext i1 %cmp14.i1882 to i64
  %add.i1883 = add i64 %res_abs.1.i1877, %342
  %sub22.i1885 = sub i64 0, %add.i1883
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool20.not39.i1886 = icmp slt i32 %337, 0
  %spec.select.i1887 = select i1 %tobool20.not39.i1886, i64 %sub22.i1885, i64 %add.i1883
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1864) #7
  %343 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %343)
  store i64 %spec.select.i1887, ptr %temp2_fp, align 8
  %shr12.i.i1890 = lshr i64 %spec.select.i1887, 63
  br label %for.body.i.i1896

for.body.i.i1896:                                 ; preds = %for.inc.i.i1899.for.body.i.i1896_crit_edge, %drm_fixp_from_fraction.exit1889
  %shift.014.i.i1891 = phi i32 [ 62, %drm_fixp_from_fraction.exit1889 ], [ %dec.i.i1897, %for.inc.i.i1899.for.body.i.i1896_crit_edge ]
  %sh_prom.i.i1892 = zext i32 %shift.014.i.i1891 to i64
  %shr213.i.i1893 = lshr i64 %spec.select.i1887, %sh_prom.i.i1892
  %and3.i.i1894 = and i64 %shr213.i.i1893, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1894, i64 %shr12.i.i1890)
  %cmp5.not.i.i1895 = icmp eq i64 %and3.i.i1894, %shr12.i.i1890
  br i1 %cmp5.not.i.i1895, label %for.inc.i.i1899, label %for.body.i.i1896.drm_fixp_msbset.exit.i1902_crit_edge

for.body.i.i1896.drm_fixp_msbset.exit.i1902_crit_edge: ; preds = %for.body.i.i1896
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1902

for.inc.i.i1899:                                  ; preds = %for.body.i.i1896
  %dec.i.i1897 = add nsw i32 %shift.014.i.i1891, -1
  %cmp.not.i.i1898 = icmp eq i32 %dec.i.i1897, 0
  br i1 %cmp.not.i.i1898, label %for.inc.i.i1899.drm_fixp_msbset.exit.i1902_crit_edge, label %for.inc.i.i1899.for.body.i.i1896_crit_edge

for.inc.i.i1899.for.body.i.i1896_crit_edge:       ; preds = %for.inc.i.i1899
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1896

for.inc.i.i1899.drm_fixp_msbset.exit.i1902_crit_edge: ; preds = %for.inc.i.i1899
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1902

drm_fixp_msbset.exit.i1902:                       ; preds = %for.inc.i.i1899.drm_fixp_msbset.exit.i1902_crit_edge, %for.body.i.i1896.drm_fixp_msbset.exit.i1902_crit_edge
  %shift.0.lcssa.i.i1900 = phi i32 [ 0, %for.inc.i.i1899.drm_fixp_msbset.exit.i1902_crit_edge ], [ %shift.014.i.i1891, %for.body.i.i1896.drm_fixp_msbset.exit.i1902_crit_edge ]
  %shr12.i33.i1901 = lshr i64 %retval.0.i1861, 63
  br label %for.body.i39.i1908

for.body.i39.i1908:                               ; preds = %for.inc.i42.i1911.for.body.i39.i1908_crit_edge, %drm_fixp_msbset.exit.i1902
  %shift.014.i34.i1903 = phi i32 [ 62, %drm_fixp_msbset.exit.i1902 ], [ %dec.i40.i1909, %for.inc.i42.i1911.for.body.i39.i1908_crit_edge ]
  %sh_prom.i35.i1904 = zext i32 %shift.014.i34.i1903 to i64
  %shr213.i36.i1905 = lshr i64 %retval.0.i1861, %sh_prom.i35.i1904
  %and3.i37.i1906 = and i64 %shr213.i36.i1905, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1906, i64 %shr12.i33.i1901)
  %cmp5.not.i38.i1907 = icmp eq i64 %and3.i37.i1906, %shr12.i33.i1901
  br i1 %cmp5.not.i38.i1907, label %for.inc.i42.i1911, label %for.body.i39.i1908.drm_fixp_msbset.exit44.i1915_crit_edge

for.body.i39.i1908.drm_fixp_msbset.exit44.i1915_crit_edge: ; preds = %for.body.i39.i1908
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1915

for.inc.i42.i1911:                                ; preds = %for.body.i39.i1908
  %dec.i40.i1909 = add nsw i32 %shift.014.i34.i1903, -1
  %cmp.not.i41.i1910 = icmp eq i32 %dec.i40.i1909, 0
  br i1 %cmp.not.i41.i1910, label %for.inc.i42.i1911.drm_fixp_msbset.exit44.i1915_crit_edge, label %for.inc.i42.i1911.for.body.i39.i1908_crit_edge

for.inc.i42.i1911.for.body.i39.i1908_crit_edge:   ; preds = %for.inc.i42.i1911
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1908

for.inc.i42.i1911.drm_fixp_msbset.exit44.i1915_crit_edge: ; preds = %for.inc.i42.i1911
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1915

drm_fixp_msbset.exit44.i1915:                     ; preds = %for.inc.i42.i1911.drm_fixp_msbset.exit44.i1915_crit_edge, %for.body.i39.i1908.drm_fixp_msbset.exit44.i1915_crit_edge
  %shift.0.lcssa.i43.i1912 = phi i32 [ 0, %for.inc.i42.i1911.drm_fixp_msbset.exit44.i1915_crit_edge ], [ %shift.014.i34.i1903, %for.body.i39.i1908.drm_fixp_msbset.exit44.i1915_crit_edge ]
  %add.i1913 = add i32 %shift.0.lcssa.i43.i1912, %shift.0.lcssa.i.i1900
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1913)
  %cmp.i1914 = icmp ugt i32 %add.i1913, 61
  br i1 %cmp.i1914, label %if.end.i1928, label %if.end11.thread.i1917

if.end11.thread.i1917:                            ; preds = %drm_fixp_msbset.exit44.i1915
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1916 = mul i64 %spec.select.i1887, %retval.0.i1861
  br label %if.then13.i1940

if.end.i1928:                                     ; preds = %drm_fixp_msbset.exit44.i1915
  %sub.i1918 = add i32 %add.i1913, -61
  %shr.i1919 = lshr i32 %sub.i1918, 1
  %and.i1920 = and i32 %sub.i1918, 1
  %add2.i1921 = add nuw nsw i32 %shr.i1919, %and.i1920
  %sh_prom.i1922 = zext i32 %add2.i1921 to i64
  %shr3.i1923 = ashr i64 %spec.select.i1887, %sh_prom.i1922
  %sh_prom5.i1924 = zext i32 %shr.i1919 to i64
  %shr6.i1925 = ashr i64 %retval.0.i1861, %sh_prom5.i1924
  %mul.i1926 = mul i64 %shr3.i1923, %shr6.i1925
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1918)
  %cmp7.i1927 = icmp ugt i32 %sub.i1918, 32
  br i1 %cmp7.i1927, label %if.then8.i1932, label %if.end11.i1934

if.then8.i1932:                                   ; preds = %if.end.i1928
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1929 = add i32 %add.i1913, -93
  %sh_prom10.i1930 = zext i32 %sub9.i1929 to i64
  %shl.i1931 = shl i64 %mul.i1926, %sh_prom10.i1930
  br label %drm_fixp_mul.exit1942

if.end11.i1934:                                   ; preds = %if.end.i1928
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1918)
  %cmp12.not.i1933 = icmp eq i32 %sub.i1918, 32
  br i1 %cmp12.not.i1933, label %if.end11.i1934.drm_fixp_mul.exit1942_crit_edge, label %if.end11.i1934.if.then13.i1940_crit_edge

if.end11.i1934.if.then13.i1940_crit_edge:         ; preds = %if.end11.i1934
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1940

if.end11.i1934.drm_fixp_mul.exit1942_crit_edge:   ; preds = %if.end11.i1934
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1942

if.then13.i1940:                                  ; preds = %if.end11.i1934.if.then13.i1940_crit_edge, %if.end11.thread.i1917
  %shift.05056.i1935 = phi i32 [ 0, %if.end11.thread.i1917 ], [ %sub.i1918, %if.end11.i1934.if.then13.i1940_crit_edge ]
  %mul5155.i1936 = phi i64 [ %mul48.i1916, %if.end11.thread.i1917 ], [ %mul.i1926, %if.end11.i1934.if.then13.i1940_crit_edge ]
  %sub14.i1937 = sub nuw nsw i32 32, %shift.05056.i1935
  %sh_prom15.i1938 = zext i32 %sub14.i1937 to i64
  %shr16.i1939 = ashr i64 %mul5155.i1936, %sh_prom15.i1938
  br label %drm_fixp_mul.exit1942

drm_fixp_mul.exit1942:                            ; preds = %if.then13.i1940, %if.end11.i1934.drm_fixp_mul.exit1942_crit_edge, %if.then8.i1932
  %retval.0.i1941 = phi i64 [ %shl.i1931, %if.then8.i1932 ], [ %shr16.i1939, %if.then13.i1940 ], [ %mul.i1926, %if.end11.i1934.drm_fixp_mul.exit1942_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1941)
  %tobool185.not = icmp eq i64 %retval.0.i1941, 0
  br i1 %tobool185.not, label %drm_fixp_mul.exit1942.if.end191_crit_edge, label %if.then186

drm_fixp_mul.exit1942.if.end191_crit_edge:        ; preds = %drm_fixp_mul.exit1942
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then186:                                       ; preds = %drm_fixp_mul.exit1942
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1941)
  %cmp.i1943 = icmp sgt i64 %retval.0.i1941, 0
  %..i1944 = select i1 %cmp.i1943, i64 4294967295, i64 -4294967295
  %sub.i1945 = add i64 %..i1944, %retval.0.i1941
  %344 = lshr i64 %sub.i1945, 32
  %conv.i4.i1946 = trunc i64 %344 to i32
  br label %if.end191

if.end191:                                        ; preds = %if.then186, %drm_fixp_mul.exit1942.if.end191_crit_edge
  %conv.i4.i1946.sink = phi i32 [ %conv.i4.i1946, %if.then186 ], [ 0, %drm_fixp_mul.exit1942.if.end191_crit_edge ]
  %345 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 37
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %conv.i4.i1946.sink, ptr %345, align 8
  %347 = ptrtoint ptr %tu_size_desired to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %tu_size_desired, align 4
  %349 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %valid_boundary_link, align 4
  %sub194 = sub i32 %348, %350
  %filler_size = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 34
  %351 = ptrtoint ptr %filler_size to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %sub194, ptr %filler_size, align 4
  %352 = call i32 @llvm.abs.i32(i32 %348, i1 false)
  %353 = zext i32 %352 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1947) #7
  %354 = ptrtoint ptr %rem.i1947 to i32
  call void @__asan_store8_noabort(i32 %354)
  store i64 -1, ptr %rem.i1947, align 8, !annotation !176
  %call.i1948 = call i64 @div64_u64_rem(i64 noundef %353, i64 noundef 1, ptr noundef nonnull %rem.i1947) #7
  %355 = ptrtoint ptr %rem.i1947 to i32
  call void @__asan_load8_noabort(i32 %355)
  %rem.promoted.i1949 = load i64, ptr %rem.i1947, align 8
  br label %do.body.i1963

do.body.i1963:                                    ; preds = %do.body.i1963.do.body.i1963_crit_edge, %if.end191
  %storemerge40.i1950 = phi i64 [ %rem.promoted.i1949, %if.end191 ], [ %storemerge.i1957, %do.body.i1963.do.body.i1963_crit_edge ]
  %res_abs.0.i1951 = phi i64 [ %call.i1948, %if.end191 ], [ %res_abs.1.i1960, %do.body.i1963.do.body.i1963_crit_edge ]
  %i.0.i1952 = phi i32 [ 32, %if.end191 ], [ %dec.i1961, %do.body.i1963.do.body.i1963_crit_edge ]
  %shl.i1953 = shl i64 %storemerge40.i1950, 1
  %shl9.i1954 = shl i64 %res_abs.0.i1951, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1953)
  %cmp10.not.i1955 = icmp ne i64 %shl.i1953, 0
  %sub11.i1956.neg = sext i1 %cmp10.not.i1955 to i64
  %storemerge.i1957 = add i64 %shl.i1953, %sub11.i1956.neg
  %or.i1959 = zext i1 %cmp10.not.i1955 to i64
  %res_abs.1.i1960 = or i64 %shl9.i1954, %or.i1959
  %dec.i1961 = add nsw i32 %i.0.i1952, -1
  %cmp12.not.i1962 = icmp eq i32 %dec.i1961, 0
  br i1 %cmp12.not.i1962, label %drm_fixp_from_fraction.exit1972, label %do.body.i1963.do.body.i1963_crit_edge

do.body.i1963.do.body.i1963_crit_edge:            ; preds = %do.body.i1963
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1963

drm_fixp_from_fraction.exit1972:                  ; preds = %do.body.i1963
  %shl13.i1964.mask = and i64 %storemerge.i1957, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1964.mask)
  %cmp14.i1965 = icmp ne i64 %shl13.i1964.mask, 0
  %356 = zext i1 %cmp14.i1965 to i64
  %add.i1966 = add i64 %res_abs.1.i1960, %356
  %sub22.i1968 = sub i64 0, %add.i1966
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool20.not39.i1969 = icmp slt i32 %348, 0
  %spec.select.i1970 = select i1 %tobool20.not39.i1969, i64 %sub22.i1968, i64 %add.i1966
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1947) #7
  %357 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %357)
  %358 = load i64, ptr %ratio_fp, align 8
  %shr12.i.i1973 = lshr i64 %358, 63
  br label %for.body.i.i1979

for.body.i.i1979:                                 ; preds = %for.inc.i.i1982.for.body.i.i1979_crit_edge, %drm_fixp_from_fraction.exit1972
  %shift.014.i.i1974 = phi i32 [ 62, %drm_fixp_from_fraction.exit1972 ], [ %dec.i.i1980, %for.inc.i.i1982.for.body.i.i1979_crit_edge ]
  %sh_prom.i.i1975 = zext i32 %shift.014.i.i1974 to i64
  %shr213.i.i1976 = lshr i64 %358, %sh_prom.i.i1975
  %and3.i.i1977 = and i64 %shr213.i.i1976, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1977, i64 %shr12.i.i1973)
  %cmp5.not.i.i1978 = icmp eq i64 %and3.i.i1977, %shr12.i.i1973
  br i1 %cmp5.not.i.i1978, label %for.inc.i.i1982, label %for.body.i.i1979.drm_fixp_msbset.exit.i1985_crit_edge

for.body.i.i1979.drm_fixp_msbset.exit.i1985_crit_edge: ; preds = %for.body.i.i1979
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1985

for.inc.i.i1982:                                  ; preds = %for.body.i.i1979
  %dec.i.i1980 = add nsw i32 %shift.014.i.i1974, -1
  %cmp.not.i.i1981 = icmp eq i32 %dec.i.i1980, 0
  br i1 %cmp.not.i.i1981, label %for.inc.i.i1982.drm_fixp_msbset.exit.i1985_crit_edge, label %for.inc.i.i1982.for.body.i.i1979_crit_edge

for.inc.i.i1982.for.body.i.i1979_crit_edge:       ; preds = %for.inc.i.i1982
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1979

for.inc.i.i1982.drm_fixp_msbset.exit.i1985_crit_edge: ; preds = %for.inc.i.i1982
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1985

drm_fixp_msbset.exit.i1985:                       ; preds = %for.inc.i.i1982.drm_fixp_msbset.exit.i1985_crit_edge, %for.body.i.i1979.drm_fixp_msbset.exit.i1985_crit_edge
  %shift.0.lcssa.i.i1983 = phi i32 [ 0, %for.inc.i.i1982.drm_fixp_msbset.exit.i1985_crit_edge ], [ %shift.014.i.i1974, %for.body.i.i1979.drm_fixp_msbset.exit.i1985_crit_edge ]
  %shr12.i33.i1984 = lshr i64 %spec.select.i1970, 63
  br label %for.body.i39.i1991

for.body.i39.i1991:                               ; preds = %for.inc.i42.i1994.for.body.i39.i1991_crit_edge, %drm_fixp_msbset.exit.i1985
  %shift.014.i34.i1986 = phi i32 [ 62, %drm_fixp_msbset.exit.i1985 ], [ %dec.i40.i1992, %for.inc.i42.i1994.for.body.i39.i1991_crit_edge ]
  %sh_prom.i35.i1987 = zext i32 %shift.014.i34.i1986 to i64
  %shr213.i36.i1988 = lshr i64 %spec.select.i1970, %sh_prom.i35.i1987
  %and3.i37.i1989 = and i64 %shr213.i36.i1988, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1989, i64 %shr12.i33.i1984)
  %cmp5.not.i38.i1990 = icmp eq i64 %and3.i37.i1989, %shr12.i33.i1984
  br i1 %cmp5.not.i38.i1990, label %for.inc.i42.i1994, label %for.body.i39.i1991.drm_fixp_msbset.exit44.i1998_crit_edge

for.body.i39.i1991.drm_fixp_msbset.exit44.i1998_crit_edge: ; preds = %for.body.i39.i1991
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1998

for.inc.i42.i1994:                                ; preds = %for.body.i39.i1991
  %dec.i40.i1992 = add nsw i32 %shift.014.i34.i1986, -1
  %cmp.not.i41.i1993 = icmp eq i32 %dec.i40.i1992, 0
  br i1 %cmp.not.i41.i1993, label %for.inc.i42.i1994.drm_fixp_msbset.exit44.i1998_crit_edge, label %for.inc.i42.i1994.for.body.i39.i1991_crit_edge

for.inc.i42.i1994.for.body.i39.i1991_crit_edge:   ; preds = %for.inc.i42.i1994
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1991

for.inc.i42.i1994.drm_fixp_msbset.exit44.i1998_crit_edge: ; preds = %for.inc.i42.i1994
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1998

drm_fixp_msbset.exit44.i1998:                     ; preds = %for.inc.i42.i1994.drm_fixp_msbset.exit44.i1998_crit_edge, %for.body.i39.i1991.drm_fixp_msbset.exit44.i1998_crit_edge
  %shift.0.lcssa.i43.i1995 = phi i32 [ 0, %for.inc.i42.i1994.drm_fixp_msbset.exit44.i1998_crit_edge ], [ %shift.014.i34.i1986, %for.body.i39.i1991.drm_fixp_msbset.exit44.i1998_crit_edge ]
  %add.i1996 = add i32 %shift.0.lcssa.i43.i1995, %shift.0.lcssa.i.i1983
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1996)
  %cmp.i1997 = icmp ugt i32 %add.i1996, 61
  br i1 %cmp.i1997, label %if.end.i2011, label %if.end11.thread.i2000

if.end11.thread.i2000:                            ; preds = %drm_fixp_msbset.exit44.i1998
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1999 = mul i64 %358, %spec.select.i1970
  br label %if.then13.i2023

if.end.i2011:                                     ; preds = %drm_fixp_msbset.exit44.i1998
  %sub.i2001 = add i32 %add.i1996, -61
  %shr.i2002 = lshr i32 %sub.i2001, 1
  %and.i2003 = and i32 %sub.i2001, 1
  %add2.i2004 = add nuw nsw i32 %shr.i2002, %and.i2003
  %sh_prom.i2005 = zext i32 %add2.i2004 to i64
  %shr3.i2006 = ashr i64 %358, %sh_prom.i2005
  %sh_prom5.i2007 = zext i32 %shr.i2002 to i64
  %shr6.i2008 = ashr i64 %spec.select.i1970, %sh_prom5.i2007
  %mul.i2009 = mul i64 %shr3.i2006, %shr6.i2008
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2001)
  %cmp7.i2010 = icmp ugt i32 %sub.i2001, 32
  br i1 %cmp7.i2010, label %if.then8.i2015, label %if.end11.i2017

if.then8.i2015:                                   ; preds = %if.end.i2011
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i2012 = add i32 %add.i1996, -93
  %sh_prom10.i2013 = zext i32 %sub9.i2012 to i64
  %shl.i2014 = shl i64 %mul.i2009, %sh_prom10.i2013
  br label %drm_fixp_mul.exit2025

if.end11.i2017:                                   ; preds = %if.end.i2011
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2001)
  %cmp12.not.i2016 = icmp eq i32 %sub.i2001, 32
  br i1 %cmp12.not.i2016, label %if.end11.i2017.drm_fixp_mul.exit2025_crit_edge, label %if.end11.i2017.if.then13.i2023_crit_edge

if.end11.i2017.if.then13.i2023_crit_edge:         ; preds = %if.end11.i2017
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i2023

if.end11.i2017.drm_fixp_mul.exit2025_crit_edge:   ; preds = %if.end11.i2017
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit2025

if.then13.i2023:                                  ; preds = %if.end11.i2017.if.then13.i2023_crit_edge, %if.end11.thread.i2000
  %shift.05056.i2018 = phi i32 [ 0, %if.end11.thread.i2000 ], [ %sub.i2001, %if.end11.i2017.if.then13.i2023_crit_edge ]
  %mul5155.i2019 = phi i64 [ %mul48.i1999, %if.end11.thread.i2000 ], [ %mul.i2009, %if.end11.i2017.if.then13.i2023_crit_edge ]
  %sub14.i2020 = sub nuw nsw i32 32, %shift.05056.i2018
  %sh_prom15.i2021 = zext i32 %sub14.i2020 to i64
  %shr16.i2022 = ashr i64 %mul5155.i2019, %sh_prom15.i2021
  br label %drm_fixp_mul.exit2025

drm_fixp_mul.exit2025:                            ; preds = %if.then13.i2023, %if.end11.i2017.drm_fixp_mul.exit2025_crit_edge, %if.then8.i2015
  %retval.0.i2024 = phi i64 [ %shl.i2014, %if.then8.i2015 ], [ %shr16.i2022, %if.then13.i2023 ], [ %mul.i2009, %if.end11.i2017.drm_fixp_mul.exit2025_crit_edge ]
  %ratio_by_tu_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 38
  %359 = ptrtoint ptr %ratio_by_tu_fp to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 %retval.0.i2024, ptr %ratio_by_tu_fp, align 8
  %360 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %345, align 8
  %362 = ptrtoint ptr %filler_size to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %filler_size, align 4
  %add202 = add i32 %363, %361
  %364 = ptrtoint ptr %extra_buffer_margin to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %extra_buffer_margin, align 4
  %add204 = add i32 %add202, %365
  %delay_start_link = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 35
  %366 = ptrtoint ptr %delay_start_link to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %add204, ptr %delay_start_link, align 8
  %367 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %valid_boundary_link, align 4
  %369 = call i32 @llvm.abs.i32(i32 %368, i1 false)
  %370 = zext i32 %369 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2026) #7
  %371 = ptrtoint ptr %rem.i2026 to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 -1, ptr %rem.i2026, align 8, !annotation !176
  %call.i2027 = call i64 @div64_u64_rem(i64 noundef %370, i64 noundef 1, ptr noundef nonnull %rem.i2026) #7
  %372 = ptrtoint ptr %rem.i2026 to i32
  call void @__asan_load8_noabort(i32 %372)
  %rem.promoted.i2028 = load i64, ptr %rem.i2026, align 8
  br label %do.body.i2042

do.body.i2042:                                    ; preds = %do.body.i2042.do.body.i2042_crit_edge, %drm_fixp_mul.exit2025
  %storemerge40.i2029 = phi i64 [ %rem.promoted.i2028, %drm_fixp_mul.exit2025 ], [ %storemerge.i2036, %do.body.i2042.do.body.i2042_crit_edge ]
  %res_abs.0.i2030 = phi i64 [ %call.i2027, %drm_fixp_mul.exit2025 ], [ %res_abs.1.i2039, %do.body.i2042.do.body.i2042_crit_edge ]
  %i.0.i2031 = phi i32 [ 32, %drm_fixp_mul.exit2025 ], [ %dec.i2040, %do.body.i2042.do.body.i2042_crit_edge ]
  %shl.i2032 = shl i64 %storemerge40.i2029, 1
  %shl9.i2033 = shl i64 %res_abs.0.i2030, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2032)
  %cmp10.not.i2034 = icmp ne i64 %shl.i2032, 0
  %sub11.i2035.neg = sext i1 %cmp10.not.i2034 to i64
  %storemerge.i2036 = add i64 %shl.i2032, %sub11.i2035.neg
  %or.i2038 = zext i1 %cmp10.not.i2034 to i64
  %res_abs.1.i2039 = or i64 %shl9.i2033, %or.i2038
  %dec.i2040 = add nsw i32 %i.0.i2031, -1
  %cmp12.not.i2041 = icmp eq i32 %dec.i2040, 0
  br i1 %cmp12.not.i2041, label %drm_fixp_from_fraction.exit2051, label %do.body.i2042.do.body.i2042_crit_edge

do.body.i2042.do.body.i2042_crit_edge:            ; preds = %do.body.i2042
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2042

drm_fixp_from_fraction.exit2051:                  ; preds = %do.body.i2042
  %shl13.i2043.mask = and i64 %storemerge.i2036, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2043.mask)
  %cmp14.i2044 = icmp ne i64 %shl13.i2043.mask, 0
  %373 = zext i1 %cmp14.i2044 to i64
  %add.i2045 = add i64 %res_abs.1.i2039, %373
  %sub22.i2047 = sub i64 0, %add.i2045
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool20.not39.i2048 = icmp slt i32 %368, 0
  %spec.select.i2049 = select i1 %tobool20.not39.i2048, i64 %sub22.i2047, i64 %add.i2045
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2026) #7
  %resulting_valid_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 23
  %374 = ptrtoint ptr %resulting_valid_fp to i32
  call void @__asan_store8_noabort(i32 %374)
  store i64 %spec.select.i2049, ptr %resulting_valid_fp, align 8
  %375 = ptrtoint ptr %tu_size_desired to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %tu_size_desired, align 4
  %377 = call i32 @llvm.abs.i32(i32 %376, i1 false)
  %378 = zext i32 %377 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2052) #7
  %379 = ptrtoint ptr %rem.i2052 to i32
  call void @__asan_store8_noabort(i32 %379)
  store i64 -1, ptr %rem.i2052, align 8, !annotation !176
  %call.i2053 = call i64 @div64_u64_rem(i64 noundef %378, i64 noundef 1, ptr noundef nonnull %rem.i2052) #7
  %380 = ptrtoint ptr %rem.i2052 to i32
  call void @__asan_load8_noabort(i32 %380)
  %rem.promoted.i2054 = load i64, ptr %rem.i2052, align 8
  br label %do.body.i2068

do.body.i2068:                                    ; preds = %do.body.i2068.do.body.i2068_crit_edge, %drm_fixp_from_fraction.exit2051
  %storemerge40.i2055 = phi i64 [ %rem.promoted.i2054, %drm_fixp_from_fraction.exit2051 ], [ %storemerge.i2062, %do.body.i2068.do.body.i2068_crit_edge ]
  %res_abs.0.i2056 = phi i64 [ %call.i2053, %drm_fixp_from_fraction.exit2051 ], [ %res_abs.1.i2065, %do.body.i2068.do.body.i2068_crit_edge ]
  %i.0.i2057 = phi i32 [ 32, %drm_fixp_from_fraction.exit2051 ], [ %dec.i2066, %do.body.i2068.do.body.i2068_crit_edge ]
  %shl.i2058 = shl i64 %storemerge40.i2055, 1
  %shl9.i2059 = shl i64 %res_abs.0.i2056, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2058)
  %cmp10.not.i2060 = icmp ne i64 %shl.i2058, 0
  %sub11.i2061.neg = sext i1 %cmp10.not.i2060 to i64
  %storemerge.i2062 = add i64 %shl.i2058, %sub11.i2061.neg
  %or.i2064 = zext i1 %cmp10.not.i2060 to i64
  %res_abs.1.i2065 = or i64 %shl9.i2059, %or.i2064
  %dec.i2066 = add nsw i32 %i.0.i2057, -1
  %cmp12.not.i2067 = icmp eq i32 %dec.i2066, 0
  br i1 %cmp12.not.i2067, label %drm_fixp_from_fraction.exit2077, label %do.body.i2068.do.body.i2068_crit_edge

do.body.i2068.do.body.i2068_crit_edge:            ; preds = %do.body.i2068
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2068

drm_fixp_from_fraction.exit2077:                  ; preds = %do.body.i2068
  %shl13.i2069.mask = and i64 %storemerge.i2062, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2069.mask)
  %cmp14.i2070 = icmp ne i64 %shl13.i2069.mask, 0
  %381 = zext i1 %cmp14.i2070 to i64
  %add.i2071 = add i64 %res_abs.1.i2065, %381
  %sub22.i2073 = sub i64 0, %add.i2071
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool20.not39.i2074 = icmp slt i32 %376, 0
  %spec.select.i2075 = select i1 %tobool20.not39.i2074, i64 %sub22.i2073, i64 %add.i2071
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2052) #7
  %382 = ptrtoint ptr %resulting_valid_fp to i32
  call void @__asan_load8_noabort(i32 %382)
  %383 = load i64, ptr %resulting_valid_fp, align 8
  %shr12.i.i2078 = lshr i64 %383, 63
  br label %for.body.i.i2084

for.body.i.i2084:                                 ; preds = %for.inc.i.i2087.for.body.i.i2084_crit_edge, %drm_fixp_from_fraction.exit2077
  %shift.014.i.i2079 = phi i32 [ 62, %drm_fixp_from_fraction.exit2077 ], [ %dec.i.i2085, %for.inc.i.i2087.for.body.i.i2084_crit_edge ]
  %sh_prom.i.i2080 = zext i32 %shift.014.i.i2079 to i64
  %shr213.i.i2081 = lshr i64 %383, %sh_prom.i.i2080
  %and3.i.i2082 = and i64 %shr213.i.i2081, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2082, i64 %shr12.i.i2078)
  %cmp5.not.i.i2083 = icmp eq i64 %and3.i.i2082, %shr12.i.i2078
  br i1 %cmp5.not.i.i2083, label %for.inc.i.i2087, label %for.body.i.i2084.drm_fixp_div.exit2104_crit_edge

for.body.i.i2084.drm_fixp_div.exit2104_crit_edge: ; preds = %for.body.i.i2084
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2104

for.inc.i.i2087:                                  ; preds = %for.body.i.i2084
  %dec.i.i2085 = add nsw i32 %shift.014.i.i2079, -1
  %cmp.not.i.i2086 = icmp eq i32 %dec.i.i2085, 0
  br i1 %cmp.not.i.i2086, label %for.inc.i.i2087.drm_fixp_div.exit2104_crit_edge, label %for.inc.i.i2087.for.body.i.i2084_crit_edge

for.inc.i.i2087.for.body.i.i2084_crit_edge:       ; preds = %for.inc.i.i2087
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2084

for.inc.i.i2087.drm_fixp_div.exit2104_crit_edge:  ; preds = %for.inc.i.i2087
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2104

drm_fixp_div.exit2104:                            ; preds = %for.inc.i.i2087.drm_fixp_div.exit2104_crit_edge, %for.body.i.i2084.drm_fixp_div.exit2104_crit_edge
  %shift.0.lcssa.i.i2088 = phi i32 [ 0, %for.inc.i.i2087.drm_fixp_div.exit2104_crit_edge ], [ %shift.014.i.i2079, %for.body.i.i2084.drm_fixp_div.exit2104_crit_edge ]
  %sub.i2089 = sub i32 62, %shift.0.lcssa.i.i2088
  %sh_prom.i2090 = zext i32 %sub.i2089 to i64
  %shl.i2091 = shl i64 %383, %sh_prom.i2090
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2089)
  %cmp.i2092 = icmp ult i32 %sub.i2089, 32
  %sub1.i2093 = add i32 %shift.0.lcssa.i.i2088, -30
  %narrow.i2094 = select i1 %cmp.i2092, i32 %sub1.i2093, i32 0
  %shr.i2095 = zext i32 %narrow.i2094 to i64
  %b.addr.0.i2096 = ashr i64 %spec.select.i2075, %shr.i2095
  %call3.i2097 = call i64 @div64_s64(i64 noundef %shl.i2091, i64 noundef %b.addr.0.i2096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2089)
  %cmp4.i2098 = icmp ugt i32 %sub.i2089, 32
  %sub6.i2099 = sub i32 30, %shift.0.lcssa.i.i2088
  %narrow19.i2100 = select i1 %cmp4.i2098, i32 %sub6.i2099, i32 0
  %shr8.i2101 = zext i32 %narrow19.i2100 to i64
  %retval.0.i2102 = ashr i64 %call3.i2097, %shr8.i2101
  %384 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %384)
  store i64 %retval.0.i2102, ptr %temp2_fp, align 8
  %385 = ptrtoint ptr %original_ratio_fp to i32
  call void @__asan_load8_noabort(i32 %385)
  %386 = load i64, ptr %original_ratio_fp, align 8
  %sub214 = sub i64 %retval.0.i2102, %386
  %TU_ratio_err_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 45
  %387 = ptrtoint ptr %TU_ratio_err_fp to i32
  call void @__asan_store8_noabort(i32 %387)
  store i64 %sub214, ptr %TU_ratio_err_fp, align 8
  %conv215 = zext i32 %HBLANK_MARGIN.0 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2105) #7
  %388 = ptrtoint ptr %rem.i2105 to i32
  call void @__asan_store8_noabort(i32 %388)
  store i64 -1, ptr %rem.i2105, align 8, !annotation !176
  %call.i2106 = call i64 @div64_u64_rem(i64 noundef %conv215, i64 noundef 1, ptr noundef nonnull %rem.i2105) #7
  %389 = ptrtoint ptr %rem.i2105 to i32
  call void @__asan_load8_noabort(i32 %389)
  %rem.promoted.i2107 = load i64, ptr %rem.i2105, align 8
  br label %do.body.i2121

do.body.i2121:                                    ; preds = %do.body.i2121.do.body.i2121_crit_edge, %drm_fixp_div.exit2104
  %storemerge40.i2108 = phi i64 [ %rem.promoted.i2107, %drm_fixp_div.exit2104 ], [ %storemerge.i2115, %do.body.i2121.do.body.i2121_crit_edge ]
  %res_abs.0.i2109 = phi i64 [ %call.i2106, %drm_fixp_div.exit2104 ], [ %res_abs.1.i2118, %do.body.i2121.do.body.i2121_crit_edge ]
  %i.0.i2110 = phi i32 [ 32, %drm_fixp_div.exit2104 ], [ %dec.i2119, %do.body.i2121.do.body.i2121_crit_edge ]
  %shl.i2111 = shl i64 %storemerge40.i2108, 1
  %shl9.i2112 = shl i64 %res_abs.0.i2109, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2111)
  %cmp10.not.i2113 = icmp ne i64 %shl.i2111, 0
  %sub11.i2114.neg = sext i1 %cmp10.not.i2113 to i64
  %storemerge.i2115 = add i64 %shl.i2111, %sub11.i2114.neg
  %or.i2117 = zext i1 %cmp10.not.i2113 to i64
  %res_abs.1.i2118 = or i64 %shl9.i2112, %or.i2117
  %dec.i2119 = add nsw i32 %i.0.i2110, -1
  %cmp12.not.i2120 = icmp eq i32 %dec.i2119, 0
  br i1 %cmp12.not.i2120, label %drm_fixp_from_fraction.exit2128, label %do.body.i2121.do.body.i2121_crit_edge

do.body.i2121.do.body.i2121_crit_edge:            ; preds = %do.body.i2121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2121

drm_fixp_from_fraction.exit2128:                  ; preds = %do.body.i2121
  %shl13.i2122.mask = and i64 %storemerge.i2115, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2122.mask)
  %cmp14.i2123 = icmp ne i64 %shl13.i2122.mask, 0
  %.neg3259 = sext i1 %cmp14.i2123 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2105) #7
  %390 = ptrtoint ptr %hbp_relative_to_pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %390)
  %391 = load i64, ptr %hbp_relative_to_pclk_fp.i, align 8
  %add.i2124.neg = sub i64 %.neg3259, %res_abs.1.i2118
  %sub217 = add i64 %add.i2124.neg, %391
  %392 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i2129 = lshr i64 %sub217, 63
  br label %for.body.i.i2135

for.body.i.i2135:                                 ; preds = %for.inc.i.i2138.for.body.i.i2135_crit_edge, %drm_fixp_from_fraction.exit2128
  %shift.014.i.i2130 = phi i32 [ 62, %drm_fixp_from_fraction.exit2128 ], [ %dec.i.i2136, %for.inc.i.i2138.for.body.i.i2135_crit_edge ]
  %sh_prom.i.i2131 = zext i32 %shift.014.i.i2130 to i64
  %shr213.i.i2132 = lshr i64 %sub217, %sh_prom.i.i2131
  %and3.i.i2133 = and i64 %shr213.i.i2132, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2133, i64 %shr12.i.i2129)
  %cmp5.not.i.i2134 = icmp eq i64 %and3.i.i2133, %shr12.i.i2129
  br i1 %cmp5.not.i.i2134, label %for.inc.i.i2138, label %for.body.i.i2135.drm_fixp_div.exit2155_crit_edge

for.body.i.i2135.drm_fixp_div.exit2155_crit_edge: ; preds = %for.body.i.i2135
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2155

for.inc.i.i2138:                                  ; preds = %for.body.i.i2135
  %dec.i.i2136 = add nsw i32 %shift.014.i.i2130, -1
  %cmp.not.i.i2137 = icmp eq i32 %dec.i.i2136, 0
  br i1 %cmp.not.i.i2137, label %for.inc.i.i2138.drm_fixp_div.exit2155_crit_edge, label %for.inc.i.i2138.for.body.i.i2135_crit_edge

for.inc.i.i2138.for.body.i.i2135_crit_edge:       ; preds = %for.inc.i.i2138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2135

for.inc.i.i2138.drm_fixp_div.exit2155_crit_edge:  ; preds = %for.inc.i.i2138
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2155

drm_fixp_div.exit2155:                            ; preds = %for.inc.i.i2138.drm_fixp_div.exit2155_crit_edge, %for.body.i.i2135.drm_fixp_div.exit2155_crit_edge
  %shift.0.lcssa.i.i2139 = phi i32 [ 0, %for.inc.i.i2138.drm_fixp_div.exit2155_crit_edge ], [ %shift.014.i.i2130, %for.body.i.i2135.drm_fixp_div.exit2155_crit_edge ]
  %sub.i2140 = sub i32 62, %shift.0.lcssa.i.i2139
  %sh_prom.i2141 = zext i32 %sub.i2140 to i64
  %shl.i2142 = shl i64 %sub217, %sh_prom.i2141
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2140)
  %cmp.i2143 = icmp ult i32 %sub.i2140, 32
  %sub1.i2144 = add i32 %shift.0.lcssa.i.i2139, -30
  %narrow.i2145 = select i1 %cmp.i2143, i32 %sub1.i2144, i32 0
  %shr.i2146 = zext i32 %narrow.i2145 to i64
  %b.addr.0.i2147 = ashr i64 %393, %shr.i2146
  %call3.i2148 = call i64 @div64_s64(i64 noundef %shl.i2142, i64 noundef %b.addr.0.i2147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2140)
  %cmp4.i2149 = icmp ugt i32 %sub.i2140, 32
  %sub6.i2150 = sub i32 30, %shift.0.lcssa.i.i2139
  %narrow19.i2151 = select i1 %cmp4.i2149, i32 %sub6.i2150, i32 0
  %shr8.i2152 = zext i32 %narrow19.i2151 to i64
  %retval.0.i2153 = ashr i64 %call3.i2148, %shr8.i2152
  %hbp_time_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 65
  %394 = ptrtoint ptr %hbp_time_fp to i32
  call void @__asan_store8_noabort(i32 %394)
  store i64 %retval.0.i2153, ptr %hbp_time_fp, align 8
  %395 = ptrtoint ptr %delay_start_link to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %delay_start_link, align 8
  %397 = call i32 @llvm.abs.i32(i32 %396, i1 false)
  %398 = zext i32 %397 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2156) #7
  %399 = ptrtoint ptr %rem.i2156 to i32
  call void @__asan_store8_noabort(i32 %399)
  store i64 -1, ptr %rem.i2156, align 8, !annotation !176
  %call.i2157 = call i64 @div64_u64_rem(i64 noundef %398, i64 noundef 1, ptr noundef nonnull %rem.i2156) #7
  %400 = ptrtoint ptr %rem.i2156 to i32
  call void @__asan_load8_noabort(i32 %400)
  %rem.promoted.i2158 = load i64, ptr %rem.i2156, align 8
  br label %do.body.i2172

do.body.i2172:                                    ; preds = %do.body.i2172.do.body.i2172_crit_edge, %drm_fixp_div.exit2155
  %storemerge40.i2159 = phi i64 [ %rem.promoted.i2158, %drm_fixp_div.exit2155 ], [ %storemerge.i2166, %do.body.i2172.do.body.i2172_crit_edge ]
  %res_abs.0.i2160 = phi i64 [ %call.i2157, %drm_fixp_div.exit2155 ], [ %res_abs.1.i2169, %do.body.i2172.do.body.i2172_crit_edge ]
  %i.0.i2161 = phi i32 [ 32, %drm_fixp_div.exit2155 ], [ %dec.i2170, %do.body.i2172.do.body.i2172_crit_edge ]
  %shl.i2162 = shl i64 %storemerge40.i2159, 1
  %shl9.i2163 = shl i64 %res_abs.0.i2160, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2162)
  %cmp10.not.i2164 = icmp ne i64 %shl.i2162, 0
  %sub11.i2165.neg = sext i1 %cmp10.not.i2164 to i64
  %storemerge.i2166 = add i64 %shl.i2162, %sub11.i2165.neg
  %or.i2168 = zext i1 %cmp10.not.i2164 to i64
  %res_abs.1.i2169 = or i64 %shl9.i2163, %or.i2168
  %dec.i2170 = add nsw i32 %i.0.i2161, -1
  %cmp12.not.i2171 = icmp eq i32 %dec.i2170, 0
  br i1 %cmp12.not.i2171, label %drm_fixp_from_fraction.exit2181, label %do.body.i2172.do.body.i2172_crit_edge

do.body.i2172.do.body.i2172_crit_edge:            ; preds = %do.body.i2172
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2172

drm_fixp_from_fraction.exit2181:                  ; preds = %do.body.i2172
  %shl13.i2173.mask = and i64 %storemerge.i2166, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2173.mask)
  %cmp14.i2174 = icmp ne i64 %shl13.i2173.mask, 0
  %401 = zext i1 %cmp14.i2174 to i64
  %add.i2175 = add i64 %res_abs.1.i2169, %401
  %sub22.i2177 = sub i64 0, %add.i2175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %396)
  %tobool20.not39.i2178 = icmp slt i32 %396, 0
  %spec.select.i2179 = select i1 %tobool20.not39.i2178, i64 %sub22.i2177, i64 %add.i2175
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2156) #7
  %402 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %402)
  %403 = load i64, ptr %call7.i.i, align 8
  %shr12.i.i2182 = lshr i64 %spec.select.i2179, 63
  br label %for.body.i.i2188

for.body.i.i2188:                                 ; preds = %for.inc.i.i2191.for.body.i.i2188_crit_edge, %drm_fixp_from_fraction.exit2181
  %shift.014.i.i2183 = phi i32 [ 62, %drm_fixp_from_fraction.exit2181 ], [ %dec.i.i2189, %for.inc.i.i2191.for.body.i.i2188_crit_edge ]
  %sh_prom.i.i2184 = zext i32 %shift.014.i.i2183 to i64
  %shr213.i.i2185 = lshr i64 %spec.select.i2179, %sh_prom.i.i2184
  %and3.i.i2186 = and i64 %shr213.i.i2185, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2186, i64 %shr12.i.i2182)
  %cmp5.not.i.i2187 = icmp eq i64 %and3.i.i2186, %shr12.i.i2182
  br i1 %cmp5.not.i.i2187, label %for.inc.i.i2191, label %for.body.i.i2188.drm_fixp_div.exit2208_crit_edge

for.body.i.i2188.drm_fixp_div.exit2208_crit_edge: ; preds = %for.body.i.i2188
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2208

for.inc.i.i2191:                                  ; preds = %for.body.i.i2188
  %dec.i.i2189 = add nsw i32 %shift.014.i.i2183, -1
  %cmp.not.i.i2190 = icmp eq i32 %dec.i.i2189, 0
  br i1 %cmp.not.i.i2190, label %for.inc.i.i2191.drm_fixp_div.exit2208_crit_edge, label %for.inc.i.i2191.for.body.i.i2188_crit_edge

for.inc.i.i2191.for.body.i.i2188_crit_edge:       ; preds = %for.inc.i.i2191
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2188

for.inc.i.i2191.drm_fixp_div.exit2208_crit_edge:  ; preds = %for.inc.i.i2191
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2208

drm_fixp_div.exit2208:                            ; preds = %for.inc.i.i2191.drm_fixp_div.exit2208_crit_edge, %for.body.i.i2188.drm_fixp_div.exit2208_crit_edge
  %shift.0.lcssa.i.i2192 = phi i32 [ 0, %for.inc.i.i2191.drm_fixp_div.exit2208_crit_edge ], [ %shift.014.i.i2183, %for.body.i.i2188.drm_fixp_div.exit2208_crit_edge ]
  %sub.i2193 = sub i32 62, %shift.0.lcssa.i.i2192
  %sh_prom.i2194 = zext i32 %sub.i2193 to i64
  %shl.i2195 = shl i64 %spec.select.i2179, %sh_prom.i2194
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2193)
  %cmp.i2196 = icmp ult i32 %sub.i2193, 32
  %sub1.i2197 = add i32 %shift.0.lcssa.i.i2192, -30
  %narrow.i2198 = select i1 %cmp.i2196, i32 %sub1.i2197, i32 0
  %shr.i2199 = zext i32 %narrow.i2198 to i64
  %b.addr.0.i2200 = ashr i64 %403, %shr.i2199
  %call3.i2201 = call i64 @div64_s64(i64 noundef %shl.i2195, i64 noundef %b.addr.0.i2200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2193)
  %cmp4.i2202 = icmp ugt i32 %sub.i2193, 32
  %sub6.i2203 = sub i32 30, %shift.0.lcssa.i.i2192
  %narrow19.i2204 = select i1 %cmp4.i2202, i32 %sub6.i2203, i32 0
  %shr8.i2205 = zext i32 %narrow19.i2204 to i64
  %retval.0.i2206 = ashr i64 %call3.i2201, %shr8.i2205
  %404 = ptrtoint ptr %delay_start_time_fp to i32
  call void @__asan_store8_noabort(i32 %404)
  store i64 %retval.0.i2206, ptr %delay_start_time_fp, align 8
  %405 = ptrtoint ptr %hbp_time_fp to i32
  call void @__asan_load8_noabort(i32 %405)
  %406 = load i64, ptr %hbp_time_fp, align 8
  %call228 = call fastcc i32 @_tu_param_compare(i64 noundef %406, i64 noundef %retval.0.i2206)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call228)
  %cmp229 = icmp eq i32 %call228, 2
  br i1 %cmp229, label %if.then231, label %drm_fixp_div.exit2208.if.end232_crit_edge

drm_fixp_div.exit2208.if.end232_crit_edge:        ; preds = %drm_fixp_div.exit2208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

if.then231:                                       ; preds = %drm_fixp_div.exit2208
  call void @__sanitizer_cov_trace_pc() #9
  %min_hblank_violated = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 63
  %407 = ptrtoint ptr %min_hblank_violated to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 1, ptr %min_hblank_violated, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then231, %drm_fixp_div.exit2208.if.end232_crit_edge
  %408 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %408)
  %409 = load i64, ptr %lwidth_fp.i, align 8
  %410 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %410)
  %411 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i2209 = lshr i64 %409, 63
  br label %for.body.i.i2215

for.body.i.i2215:                                 ; preds = %for.inc.i.i2218.for.body.i.i2215_crit_edge, %if.end232
  %shift.014.i.i2210 = phi i32 [ 62, %if.end232 ], [ %dec.i.i2216, %for.inc.i.i2218.for.body.i.i2215_crit_edge ]
  %sh_prom.i.i2211 = zext i32 %shift.014.i.i2210 to i64
  %shr213.i.i2212 = lshr i64 %409, %sh_prom.i.i2211
  %and3.i.i2213 = and i64 %shr213.i.i2212, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2213, i64 %shr12.i.i2209)
  %cmp5.not.i.i2214 = icmp eq i64 %and3.i.i2213, %shr12.i.i2209
  br i1 %cmp5.not.i.i2214, label %for.inc.i.i2218, label %for.body.i.i2215.drm_fixp_div.exit2235_crit_edge

for.body.i.i2215.drm_fixp_div.exit2235_crit_edge: ; preds = %for.body.i.i2215
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2235

for.inc.i.i2218:                                  ; preds = %for.body.i.i2215
  %dec.i.i2216 = add nsw i32 %shift.014.i.i2210, -1
  %cmp.not.i.i2217 = icmp eq i32 %dec.i.i2216, 0
  br i1 %cmp.not.i.i2217, label %for.inc.i.i2218.drm_fixp_div.exit2235_crit_edge, label %for.inc.i.i2218.for.body.i.i2215_crit_edge

for.inc.i.i2218.for.body.i.i2215_crit_edge:       ; preds = %for.inc.i.i2218
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2215

for.inc.i.i2218.drm_fixp_div.exit2235_crit_edge:  ; preds = %for.inc.i.i2218
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2235

drm_fixp_div.exit2235:                            ; preds = %for.inc.i.i2218.drm_fixp_div.exit2235_crit_edge, %for.body.i.i2215.drm_fixp_div.exit2235_crit_edge
  %shift.0.lcssa.i.i2219 = phi i32 [ 0, %for.inc.i.i2218.drm_fixp_div.exit2235_crit_edge ], [ %shift.014.i.i2210, %for.body.i.i2215.drm_fixp_div.exit2235_crit_edge ]
  %sub.i2220 = sub i32 62, %shift.0.lcssa.i.i2219
  %sh_prom.i2221 = zext i32 %sub.i2220 to i64
  %shl.i2222 = shl i64 %409, %sh_prom.i2221
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2220)
  %cmp.i2223 = icmp ult i32 %sub.i2220, 32
  %sub1.i2224 = add i32 %shift.0.lcssa.i.i2219, -30
  %narrow.i2225 = select i1 %cmp.i2223, i32 %sub1.i2224, i32 0
  %shr.i2226 = zext i32 %narrow.i2225 to i64
  %b.addr.0.i2227 = ashr i64 %411, %shr.i2226
  %call3.i2228 = call i64 @div64_s64(i64 noundef %shl.i2222, i64 noundef %b.addr.0.i2227) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2220)
  %cmp4.i2229 = icmp ugt i32 %sub.i2220, 32
  %sub6.i2230 = sub i32 30, %shift.0.lcssa.i.i2219
  %narrow19.i2231 = select i1 %cmp4.i2229, i32 %sub6.i2230, i32 0
  %shr8.i2232 = zext i32 %narrow19.i2231 to i64
  %retval.0.i2233 = ashr i64 %call3.i2228, %shr8.i2232
  %hactive_time_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 66
  %412 = ptrtoint ptr %hactive_time_fp to i32
  call void @__asan_store8_noabort(i32 %412)
  store i64 %retval.0.i2233, ptr %hactive_time_fp, align 8
  %413 = ptrtoint ptr %delay_start_time_fp to i32
  call void @__asan_load8_noabort(i32 %413)
  %414 = load i64, ptr %delay_start_time_fp, align 8
  %call238 = call fastcc i32 @_tu_param_compare(i64 noundef %retval.0.i2233, i64 noundef %414)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call238)
  %cmp239 = icmp eq i32 %call238, 2
  br i1 %cmp239, label %if.then241, label %drm_fixp_div.exit2235.if.end243_crit_edge

drm_fixp_div.exit2235.if.end243_crit_edge:        ; preds = %drm_fixp_div.exit2235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end243

if.then241:                                       ; preds = %drm_fixp_div.exit2235
  call void @__sanitizer_cov_trace_pc() #9
  %min_hblank_violated242 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 63
  %415 = ptrtoint ptr %min_hblank_violated242 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 1, ptr %min_hblank_violated242, align 4
  br label %if.end243

if.end243:                                        ; preds = %if.then241, %drm_fixp_div.exit2235.if.end243_crit_edge
  %416 = ptrtoint ptr %delay_start_time_fp to i32
  call void @__asan_store8_noabort(i32 %416)
  store i64 0, ptr %delay_start_time_fp, align 8
  %delay_start_link_extra_pixclk = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 12
  %417 = ptrtoint ptr %delay_start_link_extra_pixclk to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 4, ptr %delay_start_link_extra_pixclk, align 8
  %418 = ptrtoint ptr %resulting_valid_fp to i32
  call void @__asan_load8_noabort(i32 %418)
  %419 = load i64, ptr %resulting_valid_fp, align 8
  %420 = ptrtoint ptr %ratio_by_tu_fp to i32
  call void @__asan_load8_noabort(i32 %420)
  %421 = load i64, ptr %ratio_by_tu_fp, align 8
  %sub247 = sub i64 %419, %421
  %diff_abs_fp = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 67
  %422 = ptrtoint ptr %diff_abs_fp to i32
  call void @__asan_store8_noabort(i32 %422)
  store i64 %sub247, ptr %diff_abs_fp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub247)
  %tobool251.not = icmp ult i64 %sub247, 4294967296
  br i1 %tobool251.not, label %land.lhs.true252, label %if.end243.if.end258_crit_edge

if.end243.if.end258_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

land.lhs.true252:                                 ; preds = %if.end243
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %sub247)
  %cmp254 = icmp ult i64 %sub247, 65536
  br i1 %cmp254, label %if.end266.thread, label %if.end258thread-pre-split

if.end266.thread:                                 ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #9
  %423 = ptrtoint ptr %diff_abs_fp to i32
  call void @__asan_store8_noabort(i32 %423)
  store i64 0, ptr %diff_abs_fp, align 8
  %boundary_mod_lower_err3245 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 54
  %424 = ptrtoint ptr %boundary_mod_lower_err3245 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 0, ptr %boundary_mod_lower_err3245, align 8
  br label %lor.lhs.false282

if.end258thread-pre-split:                        ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #9
  %425 = ptrtoint ptr %diff_abs_fp to i32
  call void @__asan_load8_noabort(i32 %425)
  %.pr3242 = load i64, ptr %diff_abs_fp, align 8
  br label %if.end258

if.end258:                                        ; preds = %if.end258thread-pre-split, %if.end243.if.end258_crit_edge
  %426 = phi i64 [ %.pr3242, %if.end258thread-pre-split ], [ %sub247, %if.end243.if.end258_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %426)
  %cmp260 = icmp slt i64 %426, 0
  br i1 %cmp260, label %if.then262, label %if.end266thread-pre-split

if.then262:                                       ; preds = %if.end258
  %shr12.i.i2237 = lshr i64 %426, 63
  br label %for.body.i.i2243

for.body.i.i2243:                                 ; preds = %for.inc.i.i2246.for.body.i.i2243_crit_edge, %if.then262
  %shift.014.i.i2238 = phi i32 [ 62, %if.then262 ], [ %dec.i.i2244, %for.inc.i.i2246.for.body.i.i2243_crit_edge ]
  %sh_prom.i.i2239 = zext i32 %shift.014.i.i2238 to i64
  %shr213.i.i2240 = lshr i64 %426, %sh_prom.i.i2239
  %and3.i.i2241 = and i64 %shr213.i.i2240, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2241, i64 %shr12.i.i2237)
  %cmp5.not.i.i2242 = icmp eq i64 %and3.i.i2241, %shr12.i.i2237
  br i1 %cmp5.not.i.i2242, label %for.inc.i.i2246, label %drm_fixp_msbset.exit.i2248

for.inc.i.i2246:                                  ; preds = %for.body.i.i2243
  %dec.i.i2244 = add nsw i32 %shift.014.i.i2238, -1
  %cmp.not.i.i2245 = icmp eq i32 %dec.i.i2244, 0
  br i1 %cmp.not.i.i2245, label %for.inc.i.i2246.if.end11.thread.i2263_crit_edge, label %for.inc.i.i2246.for.body.i.i2243_crit_edge

for.inc.i.i2246.for.body.i.i2243_crit_edge:       ; preds = %for.inc.i.i2246
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2243

for.inc.i.i2246.if.end11.thread.i2263_crit_edge:  ; preds = %for.inc.i.i2246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.thread.i2263

drm_fixp_msbset.exit.i2248:                       ; preds = %for.body.i.i2243
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %shift.014.i.i2238)
  %cmp.i2260 = icmp ugt i32 %shift.014.i.i2238, 61
  br i1 %cmp.i2260, label %if.end.i2273, label %drm_fixp_msbset.exit.i2248.if.end11.thread.i2263_crit_edge

drm_fixp_msbset.exit.i2248.if.end11.thread.i2263_crit_edge: ; preds = %drm_fixp_msbset.exit.i2248
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.thread.i2263

if.end11.thread.i2263:                            ; preds = %drm_fixp_msbset.exit.i2248.if.end11.thread.i2263_crit_edge, %for.inc.i.i2246.if.end11.thread.i2263_crit_edge
  %mul48.i2262 = sub i64 0, %426
  br label %if.then13.i2285

if.end.i2273:                                     ; preds = %drm_fixp_msbset.exit.i2248
  %sub.i2264 = add i32 %shift.014.i.i2238, -61
  %shr.i2265 = lshr i32 %sub.i2264, 1
  %and.i2266 = and i32 %sub.i2264, 1
  %add2.i2267 = add nuw nsw i32 %shr.i2265, %and.i2266
  %sh_prom.i2268 = zext i32 %add2.i2267 to i64
  %shr3.i2269 = ashr i64 %426, %sh_prom.i2268
  %mul.i2271 = sub i64 0, %shr3.i2269
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2264)
  %cmp7.i2272 = icmp ugt i32 %sub.i2264, 32
  br i1 %cmp7.i2272, label %if.then8.i2277, label %if.end11.i2279

if.then8.i2277:                                   ; preds = %if.end.i2273
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i2274 = add i32 %shift.014.i.i2238, -93
  %sh_prom10.i2275 = zext i32 %sub9.i2274 to i64
  %shl.i2276 = shl i64 %mul.i2271, %sh_prom10.i2275
  br label %drm_fixp_mul.exit2287

if.end11.i2279:                                   ; preds = %if.end.i2273
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2264)
  %cmp12.not.i2278 = icmp eq i32 %sub.i2264, 32
  br i1 %cmp12.not.i2278, label %if.end11.i2279.drm_fixp_mul.exit2287_crit_edge, label %if.end11.i2279.if.then13.i2285_crit_edge

if.end11.i2279.if.then13.i2285_crit_edge:         ; preds = %if.end11.i2279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i2285

if.end11.i2279.drm_fixp_mul.exit2287_crit_edge:   ; preds = %if.end11.i2279
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit2287

if.then13.i2285:                                  ; preds = %if.end11.i2279.if.then13.i2285_crit_edge, %if.end11.thread.i2263
  %shift.05056.i2280 = phi i32 [ 0, %if.end11.thread.i2263 ], [ %sub.i2264, %if.end11.i2279.if.then13.i2285_crit_edge ]
  %mul5155.i2281 = phi i64 [ %mul48.i2262, %if.end11.thread.i2263 ], [ %mul.i2271, %if.end11.i2279.if.then13.i2285_crit_edge ]
  %sub14.i2282 = sub nuw nsw i32 32, %shift.05056.i2280
  %sh_prom15.i2283 = zext i32 %sub14.i2282 to i64
  %shr16.i2284 = ashr i64 %mul5155.i2281, %sh_prom15.i2283
  br label %drm_fixp_mul.exit2287

drm_fixp_mul.exit2287:                            ; preds = %if.then13.i2285, %if.end11.i2279.drm_fixp_mul.exit2287_crit_edge, %if.then8.i2277
  %retval.0.i2286 = phi i64 [ %shl.i2276, %if.then8.i2277 ], [ %shr16.i2284, %if.then13.i2285 ], [ %mul.i2271, %if.end11.i2279.drm_fixp_mul.exit2287_crit_edge ]
  %427 = ptrtoint ptr %diff_abs_fp to i32
  call void @__asan_store8_noabort(i32 %427)
  store i64 %retval.0.i2286, ptr %diff_abs_fp, align 8
  br label %if.end266

if.end266thread-pre-split:                        ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  %428 = ptrtoint ptr %diff_abs_fp to i32
  call void @__asan_load8_noabort(i32 %428)
  %.pr3244 = load i64, ptr %diff_abs_fp, align 8
  br label %if.end266

if.end266:                                        ; preds = %if.end266thread-pre-split, %drm_fixp_mul.exit2287
  %429 = phi i64 [ %.pr3244, %if.end266thread-pre-split ], [ %retval.0.i2286, %drm_fixp_mul.exit2287 ]
  %boundary_mod_lower_err = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 54
  %430 = ptrtoint ptr %boundary_mod_lower_err to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 0, ptr %boundary_mod_lower_err, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %429)
  %cmp268.not = icmp eq i64 %429, 0
  br i1 %cmp268.not, label %if.end266.lor.lhs.false282_crit_edge, label %if.end266.if.then286_crit_edge

if.end266.if.then286_crit_edge:                   ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then286

if.end266.lor.lhs.false282_crit_edge:             ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false282

lor.lhs.false282:                                 ; preds = %if.end266.lor.lhs.false282_crit_edge, %if.end266.thread
  %boundary_mod_lower_err3248 = phi ptr [ %boundary_mod_lower_err3245, %if.end266.thread ], [ %boundary_mod_lower_err, %if.end266.lor.lhs.false282_crit_edge ]
  %min_hblank_violated283 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 63
  %431 = ptrtoint ptr %min_hblank_violated283 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %min_hblank_violated283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %432)
  %cmp284 = icmp eq i32 %432, 1
  br i1 %cmp284, label %lor.lhs.false282.if.then286_crit_edge, label %lor.lhs.false282.if.end410_crit_edge

lor.lhs.false282.if.end410_crit_edge:             ; preds = %lor.lhs.false282
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end410

lor.lhs.false282.if.then286_crit_edge:            ; preds = %lor.lhs.false282
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then286

if.then286:                                       ; preds = %lor.lhs.false282.if.then286_crit_edge, %if.end266.if.then286_crit_edge
  %boundary_mod_lower_err3247 = phi ptr [ %boundary_mod_lower_err, %if.end266.if.then286_crit_edge ], [ %boundary_mod_lower_err3248, %lor.lhs.false282.if.then286_crit_edge ]
  %n_symbols = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 42
  %new_valid_boundary_link.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 40
  %average_valid2_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 39
  %n_remainder_symbols_per_lane_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 43
  %last_partial_tu_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 44
  %433 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 41
  %n_tus_per_lane.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 28
  %paired_tus.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 29
  %remainder_tus.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 30
  %434 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 31
  %435 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 32
  %total_valid_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 24
  %effective_valid_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 25
  %436 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 46
  %extra_required_bytes_new_tmp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 49
  %437 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 47
  %438 = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 48
  %filler_size_tmp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 50
  %lower_filler_size_tmp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 51
  %delay_start_link_tmp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 52
  %min_hblank_violated.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 63
  %effective_valid_recorded_fp.i = getelementptr inbounds %struct.tu_algo_data, ptr %call7.i.i, i32 0, i32 26
  br label %do.body

do.body:                                          ; preds = %land.lhs.true350.do.body_crit_edge, %if.then286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2288) #7
  %439 = ptrtoint ptr %rem.i2288 to i32
  call void @__asan_store8_noabort(i32 %439)
  store i64 -1, ptr %rem.i2288, align 8, !annotation !176
  %call.i2289 = call i64 @div64_u64_rem(i64 noundef 1000, i64 noundef 1, ptr noundef nonnull %rem.i2288) #7
  %440 = ptrtoint ptr %rem.i2288 to i32
  call void @__asan_load8_noabort(i32 %440)
  %rem.promoted.i2290 = load i64, ptr %rem.i2288, align 8
  br label %do.body.i2304

do.body.i2304:                                    ; preds = %do.body.i2304.do.body.i2304_crit_edge, %do.body
  %storemerge40.i2291 = phi i64 [ %rem.promoted.i2290, %do.body ], [ %storemerge.i2298, %do.body.i2304.do.body.i2304_crit_edge ]
  %res_abs.0.i2292 = phi i64 [ %call.i2289, %do.body ], [ %res_abs.1.i2301, %do.body.i2304.do.body.i2304_crit_edge ]
  %i.0.i2293 = phi i32 [ 32, %do.body ], [ %dec.i2302, %do.body.i2304.do.body.i2304_crit_edge ]
  %shl.i2294 = shl i64 %storemerge40.i2291, 1
  %shl9.i2295 = shl i64 %res_abs.0.i2292, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2294)
  %cmp10.not.i2296 = icmp ne i64 %shl.i2294, 0
  %sub11.i2297.neg = sext i1 %cmp10.not.i2296 to i64
  %storemerge.i2298 = add i64 %shl.i2294, %sub11.i2297.neg
  %or.i2300 = zext i1 %cmp10.not.i2296 to i64
  %res_abs.1.i2301 = or i64 %shl9.i2295, %or.i2300
  %dec.i2302 = add nsw i32 %i.0.i2293, -1
  %cmp12.not.i2303 = icmp eq i32 %dec.i2302, 0
  br i1 %cmp12.not.i2303, label %drm_fixp_from_fraction.exit2310, label %do.body.i2304.do.body.i2304_crit_edge

do.body.i2304.do.body.i2304_crit_edge:            ; preds = %do.body.i2304
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2304

drm_fixp_from_fraction.exit2310:                  ; preds = %do.body.i2304
  %shl13.i2305.mask = and i64 %storemerge.i2298, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2305.mask)
  %cmp14.i2306 = icmp ne i64 %shl13.i2305.mask, 0
  %441 = zext i1 %cmp14.i2306 to i64
  %add.i2307 = add i64 %res_abs.1.i2301, %441
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2288) #7
  %442 = ptrtoint ptr %err_fp to i32
  call void @__asan_store8_noabort(i32 %442)
  store i64 %add.i2307, ptr %err_fp, align 8
  %443 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %call7.i.i, align 8
  %445 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %445)
  %446 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i2311 = lshr i64 %444, 63
  br label %for.body.i.i2317

for.body.i.i2317:                                 ; preds = %for.inc.i.i2320.for.body.i.i2317_crit_edge, %drm_fixp_from_fraction.exit2310
  %shift.014.i.i2312 = phi i32 [ 62, %drm_fixp_from_fraction.exit2310 ], [ %dec.i.i2318, %for.inc.i.i2320.for.body.i.i2317_crit_edge ]
  %sh_prom.i.i2313 = zext i32 %shift.014.i.i2312 to i64
  %shr213.i.i2314 = lshr i64 %444, %sh_prom.i.i2313
  %and3.i.i2315 = and i64 %shr213.i.i2314, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2315, i64 %shr12.i.i2311)
  %cmp5.not.i.i2316 = icmp eq i64 %and3.i.i2315, %shr12.i.i2311
  br i1 %cmp5.not.i.i2316, label %for.inc.i.i2320, label %for.body.i.i2317.drm_fixp_div.exit2337_crit_edge

for.body.i.i2317.drm_fixp_div.exit2337_crit_edge: ; preds = %for.body.i.i2317
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2337

for.inc.i.i2320:                                  ; preds = %for.body.i.i2317
  %dec.i.i2318 = add nsw i32 %shift.014.i.i2312, -1
  %cmp.not.i.i2319 = icmp eq i32 %dec.i.i2318, 0
  br i1 %cmp.not.i.i2319, label %for.inc.i.i2320.drm_fixp_div.exit2337_crit_edge, label %for.inc.i.i2320.for.body.i.i2317_crit_edge

for.inc.i.i2320.for.body.i.i2317_crit_edge:       ; preds = %for.inc.i.i2320
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2317

for.inc.i.i2320.drm_fixp_div.exit2337_crit_edge:  ; preds = %for.inc.i.i2320
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2337

drm_fixp_div.exit2337:                            ; preds = %for.inc.i.i2320.drm_fixp_div.exit2337_crit_edge, %for.body.i.i2317.drm_fixp_div.exit2337_crit_edge
  %shift.0.lcssa.i.i2321 = phi i32 [ 0, %for.inc.i.i2320.drm_fixp_div.exit2337_crit_edge ], [ %shift.014.i.i2312, %for.body.i.i2317.drm_fixp_div.exit2337_crit_edge ]
  %sub.i2322 = sub i32 62, %shift.0.lcssa.i.i2321
  %sh_prom.i2323 = zext i32 %sub.i2322 to i64
  %shl.i2324 = shl i64 %444, %sh_prom.i2323
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2322)
  %cmp.i2325 = icmp ult i32 %sub.i2322, 32
  %sub1.i2326 = add i32 %shift.0.lcssa.i.i2321, -30
  %narrow.i2327 = select i1 %cmp.i2325, i32 %sub1.i2326, i32 0
  %shr.i2328 = zext i32 %narrow.i2327 to i64
  %b.addr.0.i2329 = ashr i64 %446, %shr.i2328
  %call3.i2330 = call i64 @div64_s64(i64 noundef %shl.i2324, i64 noundef %b.addr.0.i2329) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2322)
  %cmp4.i2331 = icmp ugt i32 %sub.i2322, 32
  %sub6.i2332 = sub i32 30, %shift.0.lcssa.i.i2321
  %narrow19.i2333 = select i1 %cmp4.i2331, i32 %sub6.i2332, i32 0
  %shr8.i2334 = zext i32 %narrow19.i2333 to i64
  %447 = ptrtoint ptr %delay_start_link_extra_pixclk to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %delay_start_link_extra_pixclk, align 8
  %conv293 = zext i32 %448 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2338) #7
  %449 = ptrtoint ptr %rem.i2338 to i32
  call void @__asan_store8_noabort(i32 %449)
  store i64 -1, ptr %rem.i2338, align 8, !annotation !176
  %call.i2339 = call i64 @div64_u64_rem(i64 noundef %conv293, i64 noundef 1, ptr noundef nonnull %rem.i2338) #7
  %450 = ptrtoint ptr %rem.i2338 to i32
  call void @__asan_load8_noabort(i32 %450)
  %rem.promoted.i2340 = load i64, ptr %rem.i2338, align 8
  br label %do.body.i2354

do.body.i2354:                                    ; preds = %do.body.i2354.do.body.i2354_crit_edge, %drm_fixp_div.exit2337
  %storemerge40.i2341 = phi i64 [ %rem.promoted.i2340, %drm_fixp_div.exit2337 ], [ %storemerge.i2348, %do.body.i2354.do.body.i2354_crit_edge ]
  %res_abs.0.i2342 = phi i64 [ %call.i2339, %drm_fixp_div.exit2337 ], [ %res_abs.1.i2351, %do.body.i2354.do.body.i2354_crit_edge ]
  %i.0.i2343 = phi i32 [ 32, %drm_fixp_div.exit2337 ], [ %dec.i2352, %do.body.i2354.do.body.i2354_crit_edge ]
  %shl.i2344 = shl i64 %storemerge40.i2341, 1
  %shl9.i2345 = shl i64 %res_abs.0.i2342, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2344)
  %cmp10.not.i2346 = icmp ne i64 %shl.i2344, 0
  %sub11.i2347.neg = sext i1 %cmp10.not.i2346 to i64
  %storemerge.i2348 = add i64 %shl.i2344, %sub11.i2347.neg
  %or.i2350 = zext i1 %cmp10.not.i2346 to i64
  %res_abs.1.i2351 = or i64 %shl9.i2345, %or.i2350
  %dec.i2352 = add nsw i32 %i.0.i2343, -1
  %cmp12.not.i2353 = icmp eq i32 %dec.i2352, 0
  br i1 %cmp12.not.i2353, label %drm_fixp_from_fraction.exit2361, label %do.body.i2354.do.body.i2354_crit_edge

do.body.i2354.do.body.i2354_crit_edge:            ; preds = %do.body.i2354
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2354

drm_fixp_from_fraction.exit2361:                  ; preds = %do.body.i2354
  %retval.0.i2335 = ashr i64 %call3.i2330, %shr8.i2334
  %shl13.i2355.mask = and i64 %storemerge.i2348, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2355.mask)
  %cmp14.i2356 = icmp ne i64 %shl13.i2355.mask, 0
  %451 = zext i1 %cmp14.i2356 to i64
  %add.i2357 = add i64 %res_abs.1.i2351, %451
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2338) #7
  %452 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %452)
  store i64 %add.i2357, ptr %temp2_fp, align 8
  %shr12.i.i2362 = lshr i64 %add.i2357, 63
  br label %for.body.i.i2368

for.body.i.i2368:                                 ; preds = %for.inc.i.i2371.for.body.i.i2368_crit_edge, %drm_fixp_from_fraction.exit2361
  %shift.014.i.i2363 = phi i32 [ 62, %drm_fixp_from_fraction.exit2361 ], [ %dec.i.i2369, %for.inc.i.i2371.for.body.i.i2368_crit_edge ]
  %sh_prom.i.i2364 = zext i32 %shift.014.i.i2363 to i64
  %shr213.i.i2365 = lshr i64 %add.i2357, %sh_prom.i.i2364
  %and3.i.i2366 = and i64 %shr213.i.i2365, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2366, i64 %shr12.i.i2362)
  %cmp5.not.i.i2367 = icmp eq i64 %and3.i.i2366, %shr12.i.i2362
  br i1 %cmp5.not.i.i2367, label %for.inc.i.i2371, label %for.body.i.i2368.drm_fixp_msbset.exit.i2374_crit_edge

for.body.i.i2368.drm_fixp_msbset.exit.i2374_crit_edge: ; preds = %for.body.i.i2368
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2374

for.inc.i.i2371:                                  ; preds = %for.body.i.i2368
  %dec.i.i2369 = add nsw i32 %shift.014.i.i2363, -1
  %cmp.not.i.i2370 = icmp eq i32 %dec.i.i2369, 0
  br i1 %cmp.not.i.i2370, label %for.inc.i.i2371.drm_fixp_msbset.exit.i2374_crit_edge, label %for.inc.i.i2371.for.body.i.i2368_crit_edge

for.inc.i.i2371.for.body.i.i2368_crit_edge:       ; preds = %for.inc.i.i2371
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2368

for.inc.i.i2371.drm_fixp_msbset.exit.i2374_crit_edge: ; preds = %for.inc.i.i2371
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2374

drm_fixp_msbset.exit.i2374:                       ; preds = %for.inc.i.i2371.drm_fixp_msbset.exit.i2374_crit_edge, %for.body.i.i2368.drm_fixp_msbset.exit.i2374_crit_edge
  %shift.0.lcssa.i.i2372 = phi i32 [ 0, %for.inc.i.i2371.drm_fixp_msbset.exit.i2374_crit_edge ], [ %shift.014.i.i2363, %for.body.i.i2368.drm_fixp_msbset.exit.i2374_crit_edge ]
  %shr12.i33.i2373 = lshr i64 %retval.0.i2335, 63
  br label %for.body.i39.i2380

for.body.i39.i2380:                               ; preds = %for.inc.i42.i2383.for.body.i39.i2380_crit_edge, %drm_fixp_msbset.exit.i2374
  %shift.014.i34.i2375 = phi i32 [ 62, %drm_fixp_msbset.exit.i2374 ], [ %dec.i40.i2381, %for.inc.i42.i2383.for.body.i39.i2380_crit_edge ]
  %sh_prom.i35.i2376 = zext i32 %shift.014.i34.i2375 to i64
  %shr213.i36.i2377 = lshr i64 %retval.0.i2335, %sh_prom.i35.i2376
  %and3.i37.i2378 = and i64 %shr213.i36.i2377, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i2378, i64 %shr12.i33.i2373)
  %cmp5.not.i38.i2379 = icmp eq i64 %and3.i37.i2378, %shr12.i33.i2373
  br i1 %cmp5.not.i38.i2379, label %for.inc.i42.i2383, label %for.body.i39.i2380.drm_fixp_msbset.exit44.i2387_crit_edge

for.body.i39.i2380.drm_fixp_msbset.exit44.i2387_crit_edge: ; preds = %for.body.i39.i2380
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2387

for.inc.i42.i2383:                                ; preds = %for.body.i39.i2380
  %dec.i40.i2381 = add nsw i32 %shift.014.i34.i2375, -1
  %cmp.not.i41.i2382 = icmp eq i32 %dec.i40.i2381, 0
  br i1 %cmp.not.i41.i2382, label %for.inc.i42.i2383.drm_fixp_msbset.exit44.i2387_crit_edge, label %for.inc.i42.i2383.for.body.i39.i2380_crit_edge

for.inc.i42.i2383.for.body.i39.i2380_crit_edge:   ; preds = %for.inc.i42.i2383
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i2380

for.inc.i42.i2383.drm_fixp_msbset.exit44.i2387_crit_edge: ; preds = %for.inc.i42.i2383
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2387

drm_fixp_msbset.exit44.i2387:                     ; preds = %for.inc.i42.i2383.drm_fixp_msbset.exit44.i2387_crit_edge, %for.body.i39.i2380.drm_fixp_msbset.exit44.i2387_crit_edge
  %shift.0.lcssa.i43.i2384 = phi i32 [ 0, %for.inc.i42.i2383.drm_fixp_msbset.exit44.i2387_crit_edge ], [ %shift.014.i34.i2375, %for.body.i39.i2380.drm_fixp_msbset.exit44.i2387_crit_edge ]
  %add.i2385 = add i32 %shift.0.lcssa.i43.i2384, %shift.0.lcssa.i.i2372
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i2385)
  %cmp.i2386 = icmp ugt i32 %add.i2385, 61
  br i1 %cmp.i2386, label %if.end.i2400, label %if.end11.thread.i2389

if.end11.thread.i2389:                            ; preds = %drm_fixp_msbset.exit44.i2387
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i2388 = mul i64 %add.i2357, %retval.0.i2335
  br label %if.then13.i2412

if.end.i2400:                                     ; preds = %drm_fixp_msbset.exit44.i2387
  %sub.i2390 = add i32 %add.i2385, -61
  %shr.i2391 = lshr i32 %sub.i2390, 1
  %and.i2392 = and i32 %sub.i2390, 1
  %add2.i2393 = add nuw nsw i32 %shr.i2391, %and.i2392
  %sh_prom.i2394 = zext i32 %add2.i2393 to i64
  %shr3.i2395 = ashr i64 %add.i2357, %sh_prom.i2394
  %sh_prom5.i2396 = zext i32 %shr.i2391 to i64
  %shr6.i2397 = ashr i64 %retval.0.i2335, %sh_prom5.i2396
  %mul.i2398 = mul i64 %shr3.i2395, %shr6.i2397
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2390)
  %cmp7.i2399 = icmp ugt i32 %sub.i2390, 32
  br i1 %cmp7.i2399, label %if.then8.i2404, label %if.end11.i2406

if.then8.i2404:                                   ; preds = %if.end.i2400
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i2401 = add i32 %add.i2385, -93
  %sh_prom10.i2402 = zext i32 %sub9.i2401 to i64
  %shl.i2403 = shl i64 %mul.i2398, %sh_prom10.i2402
  br label %drm_fixp_mul.exit2414

if.end11.i2406:                                   ; preds = %if.end.i2400
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2390)
  %cmp12.not.i2405 = icmp eq i32 %sub.i2390, 32
  br i1 %cmp12.not.i2405, label %if.end11.i2406.drm_fixp_mul.exit2414_crit_edge, label %if.end11.i2406.if.then13.i2412_crit_edge

if.end11.i2406.if.then13.i2412_crit_edge:         ; preds = %if.end11.i2406
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i2412

if.end11.i2406.drm_fixp_mul.exit2414_crit_edge:   ; preds = %if.end11.i2406
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit2414

if.then13.i2412:                                  ; preds = %if.end11.i2406.if.then13.i2412_crit_edge, %if.end11.thread.i2389
  %shift.05056.i2407 = phi i32 [ 0, %if.end11.thread.i2389 ], [ %sub.i2390, %if.end11.i2406.if.then13.i2412_crit_edge ]
  %mul5155.i2408 = phi i64 [ %mul48.i2388, %if.end11.thread.i2389 ], [ %mul.i2398, %if.end11.i2406.if.then13.i2412_crit_edge ]
  %sub14.i2409 = sub nuw nsw i32 32, %shift.05056.i2407
  %sh_prom15.i2410 = zext i32 %sub14.i2409 to i64
  %shr16.i2411 = ashr i64 %mul5155.i2408, %sh_prom15.i2410
  br label %drm_fixp_mul.exit2414

drm_fixp_mul.exit2414:                            ; preds = %if.then13.i2412, %if.end11.i2406.drm_fixp_mul.exit2414_crit_edge, %if.then8.i2404
  %retval.0.i2413 = phi i64 [ %shl.i2403, %if.then8.i2404 ], [ %shr16.i2411, %if.then13.i2412 ], [ %mul.i2398, %if.end11.i2406.drm_fixp_mul.exit2414_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i2413)
  %tobool296.not = icmp eq i64 %retval.0.i2413, 0
  br i1 %tobool296.not, label %drm_fixp_mul.exit2414.if.end302_crit_edge, label %if.then297

drm_fixp_mul.exit2414.if.end302_crit_edge:        ; preds = %drm_fixp_mul.exit2414
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end302

if.then297:                                       ; preds = %drm_fixp_mul.exit2414
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i2413)
  %cmp.i2415 = icmp sgt i64 %retval.0.i2413, 0
  %..i2416 = select i1 %cmp.i2415, i64 4294967295, i64 -4294967295
  %sub.i2417 = add i64 %..i2416, %retval.0.i2413
  %453 = lshr i64 %sub.i2417, 32
  %conv.i4.i2418 = trunc i64 %453 to i32
  br label %if.end302

if.end302:                                        ; preds = %if.then297, %drm_fixp_mul.exit2414.if.end302_crit_edge
  %storemerge760 = phi i32 [ %conv.i4.i2418, %if.then297 ], [ 0, %drm_fixp_mul.exit2414.if.end302_crit_edge ]
  %454 = ptrtoint ptr %extra_buffer_margin to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %storemerge760, ptr %extra_buffer_margin, align 4
  %455 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %bpp5.i, align 4
  %457 = call i32 @llvm.abs.i32(i32 %456, i1 false)
  %458 = zext i32 %457 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2419) #7
  %459 = ptrtoint ptr %rem.i2419 to i32
  call void @__asan_store8_noabort(i32 %459)
  store i64 -1, ptr %rem.i2419, align 8, !annotation !176
  %call.i2420 = call i64 @div64_u64_rem(i64 noundef %458, i64 noundef 8, ptr noundef nonnull %rem.i2419) #7
  %460 = ptrtoint ptr %rem.i2419 to i32
  call void @__asan_load8_noabort(i32 %460)
  %rem.promoted.i2421 = load i64, ptr %rem.i2419, align 8
  br label %do.body.i2435

do.body.i2435:                                    ; preds = %do.body.i2435.do.body.i2435_crit_edge, %if.end302
  %storemerge40.i2422 = phi i64 [ %rem.promoted.i2421, %if.end302 ], [ %storemerge.i2429, %do.body.i2435.do.body.i2435_crit_edge ]
  %res_abs.0.i2423 = phi i64 [ %call.i2420, %if.end302 ], [ %res_abs.1.i2432, %do.body.i2435.do.body.i2435_crit_edge ]
  %i.0.i2424 = phi i32 [ 32, %if.end302 ], [ %dec.i2433, %do.body.i2435.do.body.i2435_crit_edge ]
  %shl.i2425 = shl i64 %storemerge40.i2422, 1
  %shl9.i2426 = shl i64 %res_abs.0.i2423, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %shl.i2425)
  %cmp10.not.i2427 = icmp ult i64 %shl.i2425, 8
  %sub11.i2428.neg = select i1 %cmp10.not.i2427, i64 0, i64 -8
  %storemerge.i2429 = add i64 %sub11.i2428.neg, %shl.i2425
  %not.cmp10.not.i2430 = xor i1 %cmp10.not.i2427, true
  %or.i2431 = zext i1 %not.cmp10.not.i2430 to i64
  %res_abs.1.i2432 = or i64 %shl9.i2426, %or.i2431
  %dec.i2433 = add nsw i32 %i.0.i2424, -1
  %cmp12.not.i2434 = icmp eq i32 %dec.i2433, 0
  br i1 %cmp12.not.i2434, label %drm_fixp_from_fraction.exit2444, label %do.body.i2435.do.body.i2435_crit_edge

do.body.i2435.do.body.i2435_crit_edge:            ; preds = %do.body.i2435
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2435

drm_fixp_from_fraction.exit2444:                  ; preds = %do.body.i2435
  %461 = and i64 %storemerge.i2429, 9223372036854775804
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %461)
  %cmp14.i2437 = icmp ne i64 %461, 0
  %462 = zext i1 %cmp14.i2437 to i64
  %add.i2438 = add i64 %res_abs.1.i2432, %462
  %sub22.i2440 = sub i64 0, %add.i2438
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %456)
  %tobool20.not39.i2441 = icmp slt i32 %456, 0
  %spec.select.i2442 = select i1 %tobool20.not39.i2441, i64 %sub22.i2440, i64 %add.i2438
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2419) #7
  %463 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %463)
  %464 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i2445 = lshr i64 %464, 63
  br label %for.body.i.i2451

for.body.i.i2451:                                 ; preds = %for.inc.i.i2454.for.body.i.i2451_crit_edge, %drm_fixp_from_fraction.exit2444
  %shift.014.i.i2446 = phi i32 [ 62, %drm_fixp_from_fraction.exit2444 ], [ %dec.i.i2452, %for.inc.i.i2454.for.body.i.i2451_crit_edge ]
  %sh_prom.i.i2447 = zext i32 %shift.014.i.i2446 to i64
  %shr213.i.i2448 = lshr i64 %464, %sh_prom.i.i2447
  %and3.i.i2449 = and i64 %shr213.i.i2448, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2449, i64 %shr12.i.i2445)
  %cmp5.not.i.i2450 = icmp eq i64 %and3.i.i2449, %shr12.i.i2445
  br i1 %cmp5.not.i.i2450, label %for.inc.i.i2454, label %for.body.i.i2451.drm_fixp_msbset.exit.i2457_crit_edge

for.body.i.i2451.drm_fixp_msbset.exit.i2457_crit_edge: ; preds = %for.body.i.i2451
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2457

for.inc.i.i2454:                                  ; preds = %for.body.i.i2451
  %dec.i.i2452 = add nsw i32 %shift.014.i.i2446, -1
  %cmp.not.i.i2453 = icmp eq i32 %dec.i.i2452, 0
  br i1 %cmp.not.i.i2453, label %for.inc.i.i2454.drm_fixp_msbset.exit.i2457_crit_edge, label %for.inc.i.i2454.for.body.i.i2451_crit_edge

for.inc.i.i2454.for.body.i.i2451_crit_edge:       ; preds = %for.inc.i.i2454
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2451

for.inc.i.i2454.drm_fixp_msbset.exit.i2457_crit_edge: ; preds = %for.inc.i.i2454
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2457

drm_fixp_msbset.exit.i2457:                       ; preds = %for.inc.i.i2454.drm_fixp_msbset.exit.i2457_crit_edge, %for.body.i.i2451.drm_fixp_msbset.exit.i2457_crit_edge
  %shift.0.lcssa.i.i2455 = phi i32 [ 0, %for.inc.i.i2454.drm_fixp_msbset.exit.i2457_crit_edge ], [ %shift.014.i.i2446, %for.body.i.i2451.drm_fixp_msbset.exit.i2457_crit_edge ]
  %shr12.i33.i2456 = lshr i64 %spec.select.i2442, 63
  br label %for.body.i39.i2463

for.body.i39.i2463:                               ; preds = %for.inc.i42.i2466.for.body.i39.i2463_crit_edge, %drm_fixp_msbset.exit.i2457
  %shift.014.i34.i2458 = phi i32 [ 62, %drm_fixp_msbset.exit.i2457 ], [ %dec.i40.i2464, %for.inc.i42.i2466.for.body.i39.i2463_crit_edge ]
  %sh_prom.i35.i2459 = zext i32 %shift.014.i34.i2458 to i64
  %shr213.i36.i2460 = lshr i64 %spec.select.i2442, %sh_prom.i35.i2459
  %and3.i37.i2461 = and i64 %shr213.i36.i2460, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i2461, i64 %shr12.i33.i2456)
  %cmp5.not.i38.i2462 = icmp eq i64 %and3.i37.i2461, %shr12.i33.i2456
  br i1 %cmp5.not.i38.i2462, label %for.inc.i42.i2466, label %for.body.i39.i2463.drm_fixp_msbset.exit44.i2470_crit_edge

for.body.i39.i2463.drm_fixp_msbset.exit44.i2470_crit_edge: ; preds = %for.body.i39.i2463
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2470

for.inc.i42.i2466:                                ; preds = %for.body.i39.i2463
  %dec.i40.i2464 = add nsw i32 %shift.014.i34.i2458, -1
  %cmp.not.i41.i2465 = icmp eq i32 %dec.i40.i2464, 0
  br i1 %cmp.not.i41.i2465, label %for.inc.i42.i2466.drm_fixp_msbset.exit44.i2470_crit_edge, label %for.inc.i42.i2466.for.body.i39.i2463_crit_edge

for.inc.i42.i2466.for.body.i39.i2463_crit_edge:   ; preds = %for.inc.i42.i2466
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i2463

for.inc.i42.i2466.drm_fixp_msbset.exit44.i2470_crit_edge: ; preds = %for.inc.i42.i2466
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2470

drm_fixp_msbset.exit44.i2470:                     ; preds = %for.inc.i42.i2466.drm_fixp_msbset.exit44.i2470_crit_edge, %for.body.i39.i2463.drm_fixp_msbset.exit44.i2470_crit_edge
  %shift.0.lcssa.i43.i2467 = phi i32 [ 0, %for.inc.i42.i2466.drm_fixp_msbset.exit44.i2470_crit_edge ], [ %shift.014.i34.i2458, %for.body.i39.i2463.drm_fixp_msbset.exit44.i2470_crit_edge ]
  %add.i2468 = add i32 %shift.0.lcssa.i43.i2467, %shift.0.lcssa.i.i2455
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i2468)
  %cmp.i2469 = icmp ugt i32 %add.i2468, 61
  br i1 %cmp.i2469, label %if.end.i2483, label %if.end11.thread.i2472

if.end11.thread.i2472:                            ; preds = %drm_fixp_msbset.exit44.i2470
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i2471 = mul i64 %464, %spec.select.i2442
  br label %if.then13.i2495

if.end.i2483:                                     ; preds = %drm_fixp_msbset.exit44.i2470
  %sub.i2473 = add i32 %add.i2468, -61
  %shr.i2474 = lshr i32 %sub.i2473, 1
  %and.i2475 = and i32 %sub.i2473, 1
  %add2.i2476 = add nuw nsw i32 %shr.i2474, %and.i2475
  %sh_prom.i2477 = zext i32 %add2.i2476 to i64
  %shr3.i2478 = ashr i64 %464, %sh_prom.i2477
  %sh_prom5.i2479 = zext i32 %shr.i2474 to i64
  %shr6.i2480 = ashr i64 %spec.select.i2442, %sh_prom5.i2479
  %mul.i2481 = mul i64 %shr3.i2478, %shr6.i2480
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2473)
  %cmp7.i2482 = icmp ugt i32 %sub.i2473, 32
  br i1 %cmp7.i2482, label %if.then8.i2487, label %if.end11.i2489

if.then8.i2487:                                   ; preds = %if.end.i2483
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i2484 = add i32 %add.i2468, -93
  %sh_prom10.i2485 = zext i32 %sub9.i2484 to i64
  %shl.i2486 = shl i64 %mul.i2481, %sh_prom10.i2485
  br label %drm_fixp_mul.exit2497

if.end11.i2489:                                   ; preds = %if.end.i2483
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2473)
  %cmp12.not.i2488 = icmp eq i32 %sub.i2473, 32
  br i1 %cmp12.not.i2488, label %if.end11.i2489.drm_fixp_mul.exit2497_crit_edge, label %if.end11.i2489.if.then13.i2495_crit_edge

if.end11.i2489.if.then13.i2495_crit_edge:         ; preds = %if.end11.i2489
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i2495

if.end11.i2489.drm_fixp_mul.exit2497_crit_edge:   ; preds = %if.end11.i2489
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit2497

if.then13.i2495:                                  ; preds = %if.end11.i2489.if.then13.i2495_crit_edge, %if.end11.thread.i2472
  %shift.05056.i2490 = phi i32 [ 0, %if.end11.thread.i2472 ], [ %sub.i2473, %if.end11.i2489.if.then13.i2495_crit_edge ]
  %mul5155.i2491 = phi i64 [ %mul48.i2471, %if.end11.thread.i2472 ], [ %mul.i2481, %if.end11.i2489.if.then13.i2495_crit_edge ]
  %sub14.i2492 = sub nuw nsw i32 32, %shift.05056.i2490
  %sh_prom15.i2493 = zext i32 %sub14.i2492 to i64
  %shr16.i2494 = ashr i64 %mul5155.i2491, %sh_prom15.i2493
  br label %drm_fixp_mul.exit2497

drm_fixp_mul.exit2497:                            ; preds = %if.then13.i2495, %if.end11.i2489.drm_fixp_mul.exit2497_crit_edge, %if.then8.i2487
  %retval.0.i2496 = phi i64 [ %shl.i2486, %if.then8.i2487 ], [ %shr16.i2494, %if.then13.i2495 ], [ %mul.i2481, %if.end11.i2489.drm_fixp_mul.exit2497_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i2496)
  %tobool308.not = icmp eq i64 %retval.0.i2496, 0
  br i1 %tobool308.not, label %drm_fixp_mul.exit2497.if.end313_crit_edge, label %if.then309

drm_fixp_mul.exit2497.if.end313_crit_edge:        ; preds = %drm_fixp_mul.exit2497
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end313

if.then309:                                       ; preds = %drm_fixp_mul.exit2497
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i2496)
  %cmp.i2498 = icmp sgt i64 %retval.0.i2496, 0
  %..i2499 = select i1 %cmp.i2498, i64 4294967295, i64 -4294967295
  %sub.i2500 = add i64 %..i2499, %retval.0.i2496
  %465 = lshr i64 %sub.i2500, 32
  %conv.i4.i2501 = trunc i64 %465 to i32
  br label %if.end313

if.end313:                                        ; preds = %if.then309, %drm_fixp_mul.exit2497.if.end313_crit_edge
  %storemerge = phi i32 [ %conv.i4.i2501, %if.then309 ], [ 0, %drm_fixp_mul.exit2497.if.end313_crit_edge ]
  %466 = ptrtoint ptr %n_symbols to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %storemerge, ptr %n_symbols, align 8
  %467 = ptrtoint ptr %tu_size to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 32, ptr %tu_size, align 8
  br label %for.cond321.preheader

for.cond321.preheader:                            ; preds = %for.inc340.for.cond321.preheader_crit_edge, %if.end313
  %468 = ptrtoint ptr %i_upper_boundary_count to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 1, ptr %i_upper_boundary_count, align 4
  br label %for.cond327.preheader

for.cond327.preheader:                            ; preds = %for.inc336.for.cond327.preheader_crit_edge, %for.cond321.preheader
  %469 = ptrtoint ptr %i_lower_boundary_count to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 1, ptr %i_lower_boundary_count, align 8
  br label %for.body331

for.body331:                                      ; preds = %_tu_valid_boundary_calc.exit.for.body331_crit_edge, %for.cond327.preheader
  %470 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %tu_size, align 8
  %472 = call i32 @llvm.abs.i32(i32 %471, i1 false) #7
  %473 = zext i32 %472 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i.i2502) #7
  %474 = ptrtoint ptr %rem.i.i2502 to i32
  call void @__asan_store8_noabort(i32 %474)
  store i64 -1, ptr %rem.i.i2502, align 8, !annotation !176
  %call.i.i2503 = call i64 @div64_u64_rem(i64 noundef %473, i64 noundef 1, ptr noundef nonnull %rem.i.i2502) #7
  %475 = ptrtoint ptr %rem.i.i2502 to i32
  call void @__asan_load8_noabort(i32 %475)
  %rem.promoted.i.i2504 = load i64, ptr %rem.i.i2502, align 8
  br label %do.body.i.i2517

do.body.i.i2517:                                  ; preds = %do.body.i.i2517.do.body.i.i2517_crit_edge, %for.body331
  %storemerge40.i.i2505 = phi i64 [ %rem.promoted.i.i2504, %for.body331 ], [ %storemerge.i.i2512, %do.body.i.i2517.do.body.i.i2517_crit_edge ]
  %res_abs.0.i.i2506 = phi i64 [ %call.i.i2503, %for.body331 ], [ %res_abs.1.i.i2514, %do.body.i.i2517.do.body.i.i2517_crit_edge ]
  %i.0.i.i2507 = phi i32 [ 32, %for.body331 ], [ %dec.i.i2515, %do.body.i.i2517.do.body.i.i2517_crit_edge ]
  %shl.i.i2508 = shl i64 %storemerge40.i.i2505, 1
  %shl9.i.i2509 = shl i64 %res_abs.0.i.i2506, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i2508)
  %cmp10.not.i.i2510 = icmp ne i64 %shl.i.i2508, 0
  %sub11.i.neg.i2511 = sext i1 %cmp10.not.i.i2510 to i64
  %storemerge.i.i2512 = add i64 %shl.i.i2508, %sub11.i.neg.i2511
  %or.i.i2513 = zext i1 %cmp10.not.i.i2510 to i64
  %res_abs.1.i.i2514 = or i64 %shl9.i.i2509, %or.i.i2513
  %dec.i.i2515 = add nsw i32 %i.0.i.i2507, -1
  %cmp12.not.i.i2516 = icmp eq i32 %dec.i.i2515, 0
  br i1 %cmp12.not.i.i2516, label %drm_fixp_from_fraction.exit.i2525, label %do.body.i.i2517.do.body.i.i2517_crit_edge

do.body.i.i2517.do.body.i.i2517_crit_edge:        ; preds = %do.body.i.i2517
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i2517

drm_fixp_from_fraction.exit.i2525:                ; preds = %do.body.i.i2517
  %shl13.i.mask.i2518 = and i64 %storemerge.i.i2512, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i.mask.i2518)
  %cmp14.i.i2519 = icmp ne i64 %shl13.i.mask.i2518, 0
  %476 = zext i1 %cmp14.i.i2519 to i64
  %add.i.i2520 = add i64 %res_abs.1.i.i2514, %476
  %sub22.i.i2521 = sub i64 0, %add.i.i2520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %471)
  %tobool20.not39.i.i2522 = icmp slt i32 %471, 0
  %spec.select.i.i2523 = select i1 %tobool20.not39.i.i2522, i64 %sub22.i.i2521, i64 %add.i.i2520
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i.i2502) #7
  %477 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %477)
  %478 = load i64, ptr %ratio_fp, align 8
  %shr12.i.i.i2524 = lshr i64 %478, 63
  br label %for.body.i.i.i2531

for.body.i.i.i2531:                               ; preds = %for.inc.i.i.i2534.for.body.i.i.i2531_crit_edge, %drm_fixp_from_fraction.exit.i2525
  %shift.014.i.i.i2526 = phi i32 [ 62, %drm_fixp_from_fraction.exit.i2525 ], [ %dec.i.i.i2532, %for.inc.i.i.i2534.for.body.i.i.i2531_crit_edge ]
  %sh_prom.i.i.i2527 = zext i32 %shift.014.i.i.i2526 to i64
  %shr213.i.i.i2528 = lshr i64 %478, %sh_prom.i.i.i2527
  %and3.i.i.i2529 = and i64 %shr213.i.i.i2528, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i.i2529, i64 %shr12.i.i.i2524)
  %cmp5.not.i.i.i2530 = icmp eq i64 %and3.i.i.i2529, %shr12.i.i.i2524
  br i1 %cmp5.not.i.i.i2530, label %for.inc.i.i.i2534, label %for.body.i.i.i2531.drm_fixp_msbset.exit.i.i2537_crit_edge

for.body.i.i.i2531.drm_fixp_msbset.exit.i.i2537_crit_edge: ; preds = %for.body.i.i.i2531
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i.i2537

for.inc.i.i.i2534:                                ; preds = %for.body.i.i.i2531
  %dec.i.i.i2532 = add nsw i32 %shift.014.i.i.i2526, -1
  %cmp.not.i.i.i2533 = icmp eq i32 %dec.i.i.i2532, 0
  br i1 %cmp.not.i.i.i2533, label %for.inc.i.i.i2534.drm_fixp_msbset.exit.i.i2537_crit_edge, label %for.inc.i.i.i2534.for.body.i.i.i2531_crit_edge

for.inc.i.i.i2534.for.body.i.i.i2531_crit_edge:   ; preds = %for.inc.i.i.i2534
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i2531

for.inc.i.i.i2534.drm_fixp_msbset.exit.i.i2537_crit_edge: ; preds = %for.inc.i.i.i2534
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i.i2537

drm_fixp_msbset.exit.i.i2537:                     ; preds = %for.inc.i.i.i2534.drm_fixp_msbset.exit.i.i2537_crit_edge, %for.body.i.i.i2531.drm_fixp_msbset.exit.i.i2537_crit_edge
  %shift.0.lcssa.i.i.i2535 = phi i32 [ 0, %for.inc.i.i.i2534.drm_fixp_msbset.exit.i.i2537_crit_edge ], [ %shift.014.i.i.i2526, %for.body.i.i.i2531.drm_fixp_msbset.exit.i.i2537_crit_edge ]
  %shr12.i33.i.i2536 = lshr i64 %spec.select.i.i2523, 63
  br label %for.body.i39.i.i2543

for.body.i39.i.i2543:                             ; preds = %for.inc.i42.i.i2546.for.body.i39.i.i2543_crit_edge, %drm_fixp_msbset.exit.i.i2537
  %shift.014.i34.i.i2538 = phi i32 [ 62, %drm_fixp_msbset.exit.i.i2537 ], [ %dec.i40.i.i2544, %for.inc.i42.i.i2546.for.body.i39.i.i2543_crit_edge ]
  %sh_prom.i35.i.i2539 = zext i32 %shift.014.i34.i.i2538 to i64
  %shr213.i36.i.i2540 = lshr i64 %spec.select.i.i2523, %sh_prom.i35.i.i2539
  %and3.i37.i.i2541 = and i64 %shr213.i36.i.i2540, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i.i2541, i64 %shr12.i33.i.i2536)
  %cmp5.not.i38.i.i2542 = icmp eq i64 %and3.i37.i.i2541, %shr12.i33.i.i2536
  br i1 %cmp5.not.i38.i.i2542, label %for.inc.i42.i.i2546, label %for.body.i39.i.i2543.drm_fixp_msbset.exit44.i.i2549_crit_edge

for.body.i39.i.i2543.drm_fixp_msbset.exit44.i.i2549_crit_edge: ; preds = %for.body.i39.i.i2543
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i.i2549

for.inc.i42.i.i2546:                              ; preds = %for.body.i39.i.i2543
  %dec.i40.i.i2544 = add nsw i32 %shift.014.i34.i.i2538, -1
  %cmp.not.i41.i.i2545 = icmp eq i32 %dec.i40.i.i2544, 0
  br i1 %cmp.not.i41.i.i2545, label %for.inc.i42.i.i2546.drm_fixp_msbset.exit44.i.i2549_crit_edge, label %for.inc.i42.i.i2546.for.body.i39.i.i2543_crit_edge

for.inc.i42.i.i2546.for.body.i39.i.i2543_crit_edge: ; preds = %for.inc.i42.i.i2546
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i.i2543

for.inc.i42.i.i2546.drm_fixp_msbset.exit44.i.i2549_crit_edge: ; preds = %for.inc.i42.i.i2546
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i.i2549

drm_fixp_msbset.exit44.i.i2549:                   ; preds = %for.inc.i42.i.i2546.drm_fixp_msbset.exit44.i.i2549_crit_edge, %for.body.i39.i.i2543.drm_fixp_msbset.exit44.i.i2549_crit_edge
  %shift.0.lcssa.i43.i.i2547 = phi i32 [ 0, %for.inc.i42.i.i2546.drm_fixp_msbset.exit44.i.i2549_crit_edge ], [ %shift.014.i34.i.i2538, %for.body.i39.i.i2543.drm_fixp_msbset.exit44.i.i2549_crit_edge ]
  %add.i501.i = add i32 %shift.0.lcssa.i43.i.i2547, %shift.0.lcssa.i.i.i2535
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i501.i)
  %cmp.i.i2548 = icmp ugt i32 %add.i501.i, 61
  br i1 %cmp.i.i2548, label %if.end.i.i2562, label %if.end11.thread.i.i2551

if.end11.thread.i.i2551:                          ; preds = %drm_fixp_msbset.exit44.i.i2549
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i.i2550 = mul i64 %478, %spec.select.i.i2523
  br label %if.then13.i.i2572

if.end.i.i2562:                                   ; preds = %drm_fixp_msbset.exit44.i.i2549
  %sub.i.i2552 = add i32 %add.i501.i, -61
  %shr.i.i2553 = lshr i32 %sub.i.i2552, 1
  %and.i.i2554 = and i32 %sub.i.i2552, 1
  %add2.i.i2555 = add nuw nsw i32 %shr.i.i2553, %and.i.i2554
  %sh_prom.i.i2556 = zext i32 %add2.i.i2555 to i64
  %shr3.i.i2557 = ashr i64 %478, %sh_prom.i.i2556
  %sh_prom5.i.i2558 = zext i32 %shr.i.i2553 to i64
  %shr6.i.i2559 = ashr i64 %spec.select.i.i2523, %sh_prom5.i.i2558
  %mul.i.i2560 = mul i64 %shr3.i.i2557, %shr6.i.i2559
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i2552)
  %cmp7.i.i2561 = icmp ugt i32 %sub.i.i2552, 32
  br i1 %cmp7.i.i2561, label %if.then8.i.i2565, label %if.end11.i.i2566

if.then8.i.i2565:                                 ; preds = %if.end.i.i2562
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i.i2563 = add i32 %add.i501.i, -93
  %sh_prom10.i.i2564 = zext i32 %sub9.i.i2563 to i64
  %shl.i502.i = shl i64 %mul.i.i2560, %sh_prom10.i.i2564
  br label %drm_fixp_mul.exit.i2577

if.end11.i.i2566:                                 ; preds = %if.end.i.i2562
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i2552)
  %cmp12.not.i503.i = icmp eq i32 %sub.i.i2552, 32
  br i1 %cmp12.not.i503.i, label %if.end11.i.i2566.drm_fixp_mul.exit.i2577_crit_edge, label %if.end11.i.i2566.if.then13.i.i2572_crit_edge

if.end11.i.i2566.if.then13.i.i2572_crit_edge:     ; preds = %if.end11.i.i2566
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i.i2572

if.end11.i.i2566.drm_fixp_mul.exit.i2577_crit_edge: ; preds = %if.end11.i.i2566
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit.i2577

if.then13.i.i2572:                                ; preds = %if.end11.i.i2566.if.then13.i.i2572_crit_edge, %if.end11.thread.i.i2551
  %shift.05056.i.i2567 = phi i32 [ 0, %if.end11.thread.i.i2551 ], [ %sub.i.i2552, %if.end11.i.i2566.if.then13.i.i2572_crit_edge ]
  %mul5155.i.i2568 = phi i64 [ %mul48.i.i2550, %if.end11.thread.i.i2551 ], [ %mul.i.i2560, %if.end11.i.i2566.if.then13.i.i2572_crit_edge ]
  %sub14.i.i2569 = sub nuw nsw i32 32, %shift.05056.i.i2567
  %sh_prom15.i.i2570 = zext i32 %sub14.i.i2569 to i64
  %shr16.i.i2571 = ashr i64 %mul5155.i.i2568, %sh_prom15.i.i2570
  br label %drm_fixp_mul.exit.i2577

drm_fixp_mul.exit.i2577:                          ; preds = %if.then13.i.i2572, %if.end11.i.i2566.drm_fixp_mul.exit.i2577_crit_edge, %if.then8.i.i2565
  %retval.0.i.i2573 = phi i64 [ %shl.i502.i, %if.then8.i.i2565 ], [ %shr16.i.i2571, %if.then13.i.i2572 ], [ %mul.i.i2560, %if.end11.i.i2566.drm_fixp_mul.exit.i2577_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i.i2573)
  %cmp.i504.i = icmp sgt i64 %retval.0.i.i2573, 0
  %..i.i = select i1 %cmp.i504.i, i64 4294967295, i64 -4294967295
  %sub.i505.i = add i64 %..i.i, %retval.0.i.i2573
  %479 = lshr i64 %sub.i505.i, 32
  %conv.i4.i.i = trunc i64 %479 to i32
  %480 = ptrtoint ptr %new_valid_boundary_link.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 %conv.i4.i.i, ptr %new_valid_boundary_link.i, align 8
  %481 = ptrtoint ptr %i_upper_boundary_count to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %i_upper_boundary_count, align 4
  %mul.i2574 = mul i32 %482, %conv.i4.i.i
  %483 = ptrtoint ptr %i_lower_boundary_count to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %i_lower_boundary_count, align 8
  %sub.i2575 = add i32 %conv.i4.i.i, -1
  %mul5.i = mul i32 %sub.i2575, %484
  %add.i2576 = add i32 %mul5.i, %mul.i2574
  %add9.i = add i32 %484, %482
  %485 = call i32 @llvm.abs.i32(i32 %add.i2576, i1 false) #7
  %486 = zext i32 %485 to i64
  %487 = call i32 @llvm.abs.i32(i32 %add9.i, i1 false) #7
  %488 = zext i32 %487 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i506.i) #7
  %489 = ptrtoint ptr %rem.i506.i to i32
  call void @__asan_store8_noabort(i32 %489)
  store i64 -1, ptr %rem.i506.i, align 8, !annotation !176
  %call.i507.i = call i64 @div64_u64_rem(i64 noundef %486, i64 noundef %488, ptr noundef nonnull %rem.i506.i) #7
  %490 = ptrtoint ptr %rem.i506.i to i32
  call void @__asan_load8_noabort(i32 %490)
  %rem.promoted.i508.i = load i64, ptr %rem.i506.i, align 8
  br label %do.body.i522.i

do.body.i522.i:                                   ; preds = %do.body.i522.i.do.body.i522.i_crit_edge, %drm_fixp_mul.exit.i2577
  %storemerge40.i509.i = phi i64 [ %rem.promoted.i508.i, %drm_fixp_mul.exit.i2577 ], [ %storemerge.i516.i, %do.body.i522.i.do.body.i522.i_crit_edge ]
  %res_abs.0.i510.i = phi i64 [ %call.i507.i, %drm_fixp_mul.exit.i2577 ], [ %res_abs.1.i519.i, %do.body.i522.i.do.body.i522.i_crit_edge ]
  %i.0.i511.i = phi i32 [ 32, %drm_fixp_mul.exit.i2577 ], [ %dec.i520.i, %do.body.i522.i.do.body.i522.i_crit_edge ]
  %shl.i512.i = shl i64 %storemerge40.i509.i, 1
  %shl9.i513.i = shl i64 %res_abs.0.i510.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i512.i, i64 %488)
  %cmp10.not.i514.i = icmp ult i64 %shl.i512.i, %488
  %sub11.i515.i = select i1 %cmp10.not.i514.i, i64 0, i64 %488
  %storemerge.i516.i = sub i64 %shl.i512.i, %sub11.i515.i
  %not.cmp10.not.i517.i = xor i1 %cmp10.not.i514.i, true
  %or.i518.i = zext i1 %not.cmp10.not.i517.i to i64
  %res_abs.1.i519.i = or i64 %shl9.i513.i, %or.i518.i
  %dec.i520.i = add nsw i32 %i.0.i511.i, -1
  %cmp12.not.i521.i = icmp eq i32 %dec.i520.i, 0
  br i1 %cmp12.not.i521.i, label %drm_fixp_from_fraction.exit530.i, label %do.body.i522.i.do.body.i522.i_crit_edge

do.body.i522.i.do.body.i522.i_crit_edge:          ; preds = %do.body.i522.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i522.i

drm_fixp_from_fraction.exit530.i:                 ; preds = %do.body.i522.i
  %shl13.i523.i = shl i64 %storemerge.i516.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl13.i523.i, i64 %488)
  %cmp14.i524.i = icmp uge i64 %shl13.i523.i, %488
  %491 = zext i1 %cmp14.i524.i to i64
  %add.i525.i = add i64 %res_abs.1.i519.i, %491
  %a.lobit38.i5261868.i = xor i32 %add.i2576, %add9.i
  %sub22.i527.i = sub i64 0, %add.i525.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a.lobit38.i5261868.i)
  %tobool20.not39.i528.i = icmp slt i32 %a.lobit38.i5261868.i, 0
  %spec.select.i529.i = select i1 %tobool20.not39.i528.i, i64 %sub22.i527.i, i64 %add.i525.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i506.i) #7
  %492 = ptrtoint ptr %average_valid2_fp.i to i32
  call void @__asan_store8_noabort(i32 %492)
  store i64 %spec.select.i529.i, ptr %average_valid2_fp.i, align 8
  %493 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %bpp5.i, align 4
  %495 = call i32 @llvm.abs.i32(i32 %494, i1 false) #7
  %496 = zext i32 %495 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i531.i) #7
  %497 = ptrtoint ptr %rem.i531.i to i32
  call void @__asan_store8_noabort(i32 %497)
  store i64 -1, ptr %rem.i531.i, align 8, !annotation !176
  %call.i532.i = call i64 @div64_u64_rem(i64 noundef %496, i64 noundef 8, ptr noundef nonnull %rem.i531.i) #7
  %498 = ptrtoint ptr %rem.i531.i to i32
  call void @__asan_load8_noabort(i32 %498)
  %rem.promoted.i533.i = load i64, ptr %rem.i531.i, align 8
  br label %do.body.i547.i

do.body.i547.i:                                   ; preds = %do.body.i547.i.do.body.i547.i_crit_edge, %drm_fixp_from_fraction.exit530.i
  %storemerge40.i534.i = phi i64 [ %rem.promoted.i533.i, %drm_fixp_from_fraction.exit530.i ], [ %storemerge.i541.i, %do.body.i547.i.do.body.i547.i_crit_edge ]
  %res_abs.0.i535.i = phi i64 [ %call.i532.i, %drm_fixp_from_fraction.exit530.i ], [ %res_abs.1.i544.i, %do.body.i547.i.do.body.i547.i_crit_edge ]
  %i.0.i536.i = phi i32 [ 32, %drm_fixp_from_fraction.exit530.i ], [ %dec.i545.i, %do.body.i547.i.do.body.i547.i_crit_edge ]
  %shl.i537.i = shl i64 %storemerge40.i534.i, 1
  %shl9.i538.i = shl i64 %res_abs.0.i535.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %shl.i537.i)
  %cmp10.not.i539.i = icmp ult i64 %shl.i537.i, 8
  %sub11.i540.neg.i = select i1 %cmp10.not.i539.i, i64 0, i64 -8
  %storemerge.i541.i = add i64 %sub11.i540.neg.i, %shl.i537.i
  %not.cmp10.not.i542.i = xor i1 %cmp10.not.i539.i, true
  %or.i543.i = zext i1 %not.cmp10.not.i542.i to i64
  %res_abs.1.i544.i = or i64 %shl9.i538.i, %or.i543.i
  %dec.i545.i = add nsw i32 %i.0.i536.i, -1
  %cmp12.not.i546.i = icmp eq i32 %dec.i545.i, 0
  br i1 %cmp12.not.i546.i, label %drm_fixp_from_fraction.exit555.i, label %do.body.i547.i.do.body.i547.i_crit_edge

do.body.i547.i.do.body.i547.i_crit_edge:          ; preds = %do.body.i547.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i547.i

drm_fixp_from_fraction.exit555.i:                 ; preds = %do.body.i547.i
  %499 = and i64 %storemerge.i541.i, 9223372036854775804
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %499)
  %cmp14.i549.i = icmp ne i64 %499, 0
  %500 = zext i1 %cmp14.i549.i to i64
  %add.i550.i = add i64 %res_abs.1.i544.i, %500
  %sub22.i552.i = sub i64 0, %add.i550.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %tobool20.not39.i553.i = icmp slt i32 %494, 0
  %spec.select.i554.i = select i1 %tobool20.not39.i553.i, i64 %sub22.i552.i, i64 %add.i550.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i531.i) #7
  %501 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %501)
  %502 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i556.i = lshr i64 %502, 63
  br label %for.body.i.i562.i

for.body.i.i562.i:                                ; preds = %for.inc.i.i565.i.for.body.i.i562.i_crit_edge, %drm_fixp_from_fraction.exit555.i
  %shift.014.i.i557.i = phi i32 [ 62, %drm_fixp_from_fraction.exit555.i ], [ %dec.i.i563.i, %for.inc.i.i565.i.for.body.i.i562.i_crit_edge ]
  %sh_prom.i.i558.i = zext i32 %shift.014.i.i557.i to i64
  %shr213.i.i559.i = lshr i64 %502, %sh_prom.i.i558.i
  %and3.i.i560.i = and i64 %shr213.i.i559.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i560.i, i64 %shr12.i.i556.i)
  %cmp5.not.i.i561.i = icmp eq i64 %and3.i.i560.i, %shr12.i.i556.i
  br i1 %cmp5.not.i.i561.i, label %for.inc.i.i565.i, label %for.body.i.i562.i.drm_fixp_msbset.exit.i568.i_crit_edge

for.body.i.i562.i.drm_fixp_msbset.exit.i568.i_crit_edge: ; preds = %for.body.i.i562.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i568.i

for.inc.i.i565.i:                                 ; preds = %for.body.i.i562.i
  %dec.i.i563.i = add nsw i32 %shift.014.i.i557.i, -1
  %cmp.not.i.i564.i = icmp eq i32 %dec.i.i563.i, 0
  br i1 %cmp.not.i.i564.i, label %for.inc.i.i565.i.drm_fixp_msbset.exit.i568.i_crit_edge, label %for.inc.i.i565.i.for.body.i.i562.i_crit_edge

for.inc.i.i565.i.for.body.i.i562.i_crit_edge:     ; preds = %for.inc.i.i565.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i562.i

for.inc.i.i565.i.drm_fixp_msbset.exit.i568.i_crit_edge: ; preds = %for.inc.i.i565.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i568.i

drm_fixp_msbset.exit.i568.i:                      ; preds = %for.inc.i.i565.i.drm_fixp_msbset.exit.i568.i_crit_edge, %for.body.i.i562.i.drm_fixp_msbset.exit.i568.i_crit_edge
  %shift.0.lcssa.i.i566.i = phi i32 [ 0, %for.inc.i.i565.i.drm_fixp_msbset.exit.i568.i_crit_edge ], [ %shift.014.i.i557.i, %for.body.i.i562.i.drm_fixp_msbset.exit.i568.i_crit_edge ]
  %shr12.i33.i567.i = lshr i64 %spec.select.i554.i, 63
  br label %for.body.i39.i574.i

for.body.i39.i574.i:                              ; preds = %for.inc.i42.i577.i.for.body.i39.i574.i_crit_edge, %drm_fixp_msbset.exit.i568.i
  %shift.014.i34.i569.i = phi i32 [ 62, %drm_fixp_msbset.exit.i568.i ], [ %dec.i40.i575.i, %for.inc.i42.i577.i.for.body.i39.i574.i_crit_edge ]
  %sh_prom.i35.i570.i = zext i32 %shift.014.i34.i569.i to i64
  %shr213.i36.i571.i = lshr i64 %spec.select.i554.i, %sh_prom.i35.i570.i
  %and3.i37.i572.i = and i64 %shr213.i36.i571.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i572.i, i64 %shr12.i33.i567.i)
  %cmp5.not.i38.i573.i = icmp eq i64 %and3.i37.i572.i, %shr12.i33.i567.i
  br i1 %cmp5.not.i38.i573.i, label %for.inc.i42.i577.i, label %for.body.i39.i574.i.drm_fixp_msbset.exit44.i581.i_crit_edge

for.body.i39.i574.i.drm_fixp_msbset.exit44.i581.i_crit_edge: ; preds = %for.body.i39.i574.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i581.i

for.inc.i42.i577.i:                               ; preds = %for.body.i39.i574.i
  %dec.i40.i575.i = add nsw i32 %shift.014.i34.i569.i, -1
  %cmp.not.i41.i576.i = icmp eq i32 %dec.i40.i575.i, 0
  br i1 %cmp.not.i41.i576.i, label %for.inc.i42.i577.i.drm_fixp_msbset.exit44.i581.i_crit_edge, label %for.inc.i42.i577.i.for.body.i39.i574.i_crit_edge

for.inc.i42.i577.i.for.body.i39.i574.i_crit_edge: ; preds = %for.inc.i42.i577.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i574.i

for.inc.i42.i577.i.drm_fixp_msbset.exit44.i581.i_crit_edge: ; preds = %for.inc.i42.i577.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i581.i

drm_fixp_msbset.exit44.i581.i:                    ; preds = %for.inc.i42.i577.i.drm_fixp_msbset.exit44.i581.i_crit_edge, %for.body.i39.i574.i.drm_fixp_msbset.exit44.i581.i_crit_edge
  %shift.0.lcssa.i43.i578.i = phi i32 [ 0, %for.inc.i42.i577.i.drm_fixp_msbset.exit44.i581.i_crit_edge ], [ %shift.014.i34.i569.i, %for.body.i39.i574.i.drm_fixp_msbset.exit44.i581.i_crit_edge ]
  %add.i579.i = add i32 %shift.0.lcssa.i43.i578.i, %shift.0.lcssa.i.i566.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i579.i)
  %cmp.i580.i = icmp ugt i32 %add.i579.i, 61
  br i1 %cmp.i580.i, label %if.end.i594.i, label %if.end11.thread.i583.i

if.end11.thread.i583.i:                           ; preds = %drm_fixp_msbset.exit44.i581.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i582.i = mul i64 %502, %spec.select.i554.i
  br label %if.then13.i606.i

if.end.i594.i:                                    ; preds = %drm_fixp_msbset.exit44.i581.i
  %sub.i584.i = add i32 %add.i579.i, -61
  %shr.i585.i = lshr i32 %sub.i584.i, 1
  %and.i586.i = and i32 %sub.i584.i, 1
  %add2.i587.i = add nuw nsw i32 %shr.i585.i, %and.i586.i
  %sh_prom.i588.i = zext i32 %add2.i587.i to i64
  %shr3.i589.i = ashr i64 %502, %sh_prom.i588.i
  %sh_prom5.i590.i = zext i32 %shr.i585.i to i64
  %shr6.i591.i = ashr i64 %spec.select.i554.i, %sh_prom5.i590.i
  %mul.i592.i = mul i64 %shr3.i589.i, %shr6.i591.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i584.i)
  %cmp7.i593.i = icmp ugt i32 %sub.i584.i, 32
  br i1 %cmp7.i593.i, label %if.then8.i598.i, label %if.end11.i600.i

if.then8.i598.i:                                  ; preds = %if.end.i594.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i595.i = add i32 %add.i579.i, -93
  %sh_prom10.i596.i = zext i32 %sub9.i595.i to i64
  %shl.i597.i = shl i64 %mul.i592.i, %sh_prom10.i596.i
  br label %drm_fixp_mul.exit608.i

if.end11.i600.i:                                  ; preds = %if.end.i594.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i584.i)
  %cmp12.not.i599.i = icmp eq i32 %sub.i584.i, 32
  br i1 %cmp12.not.i599.i, label %if.end11.i600.i.drm_fixp_mul.exit608.i_crit_edge, label %if.end11.i600.i.if.then13.i606.i_crit_edge

if.end11.i600.i.if.then13.i606.i_crit_edge:       ; preds = %if.end11.i600.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i606.i

if.end11.i600.i.drm_fixp_mul.exit608.i_crit_edge: ; preds = %if.end11.i600.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit608.i

if.then13.i606.i:                                 ; preds = %if.end11.i600.i.if.then13.i606.i_crit_edge, %if.end11.thread.i583.i
  %shift.05056.i601.i = phi i32 [ 0, %if.end11.thread.i583.i ], [ %sub.i584.i, %if.end11.i600.i.if.then13.i606.i_crit_edge ]
  %mul5155.i602.i = phi i64 [ %mul48.i582.i, %if.end11.thread.i583.i ], [ %mul.i592.i, %if.end11.i600.i.if.then13.i606.i_crit_edge ]
  %sub14.i603.i = sub nuw nsw i32 32, %shift.05056.i601.i
  %sh_prom15.i604.i = zext i32 %sub14.i603.i to i64
  %shr16.i605.i = ashr i64 %mul5155.i602.i, %sh_prom15.i604.i
  br label %drm_fixp_mul.exit608.i

drm_fixp_mul.exit608.i:                           ; preds = %if.then13.i606.i, %if.end11.i600.i.drm_fixp_mul.exit608.i_crit_edge, %if.then8.i598.i
  %retval.0.i607.i = phi i64 [ %shl.i597.i, %if.then8.i598.i ], [ %shr16.i605.i, %if.then13.i606.i ], [ %mul.i592.i, %if.end11.i600.i.drm_fixp_mul.exit608.i_crit_edge ]
  %503 = ptrtoint ptr %average_valid2_fp.i to i32
  call void @__asan_load8_noabort(i32 %503)
  %504 = load i64, ptr %average_valid2_fp.i, align 8
  %shr12.i.i609.i = lshr i64 %retval.0.i607.i, 63
  br label %for.body.i.i615.i

for.body.i.i615.i:                                ; preds = %for.inc.i.i618.i.for.body.i.i615.i_crit_edge, %drm_fixp_mul.exit608.i
  %shift.014.i.i610.i = phi i32 [ 62, %drm_fixp_mul.exit608.i ], [ %dec.i.i616.i, %for.inc.i.i618.i.for.body.i.i615.i_crit_edge ]
  %sh_prom.i.i611.i = zext i32 %shift.014.i.i610.i to i64
  %shr213.i.i612.i = lshr i64 %retval.0.i607.i, %sh_prom.i.i611.i
  %and3.i.i613.i = and i64 %shr213.i.i612.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i613.i, i64 %shr12.i.i609.i)
  %cmp5.not.i.i614.i = icmp eq i64 %and3.i.i613.i, %shr12.i.i609.i
  br i1 %cmp5.not.i.i614.i, label %for.inc.i.i618.i, label %for.body.i.i615.i.drm_fixp_div.exit.i2593_crit_edge

for.body.i.i615.i.drm_fixp_div.exit.i2593_crit_edge: ; preds = %for.body.i.i615.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit.i2593

for.inc.i.i618.i:                                 ; preds = %for.body.i.i615.i
  %dec.i.i616.i = add nsw i32 %shift.014.i.i610.i, -1
  %cmp.not.i.i617.i = icmp eq i32 %dec.i.i616.i, 0
  br i1 %cmp.not.i.i617.i, label %for.inc.i.i618.i.drm_fixp_div.exit.i2593_crit_edge, label %for.inc.i.i618.i.for.body.i.i615.i_crit_edge

for.inc.i.i618.i.for.body.i.i615.i_crit_edge:     ; preds = %for.inc.i.i618.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i615.i

for.inc.i.i618.i.drm_fixp_div.exit.i2593_crit_edge: ; preds = %for.inc.i.i618.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit.i2593

drm_fixp_div.exit.i2593:                          ; preds = %for.inc.i.i618.i.drm_fixp_div.exit.i2593_crit_edge, %for.body.i.i615.i.drm_fixp_div.exit.i2593_crit_edge
  %shift.0.lcssa.i.i619.i = phi i32 [ 0, %for.inc.i.i618.i.drm_fixp_div.exit.i2593_crit_edge ], [ %shift.014.i.i610.i, %for.body.i.i615.i.drm_fixp_div.exit.i2593_crit_edge ]
  %sub.i620.i = sub i32 62, %shift.0.lcssa.i.i619.i
  %sh_prom.i621.i = zext i32 %sub.i620.i to i64
  %shl.i622.i2580 = shl i64 %retval.0.i607.i, %sh_prom.i621.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i620.i)
  %cmp.i623.i = icmp ult i32 %sub.i620.i, 32
  %sub1.i.i2581 = add i32 %shift.0.lcssa.i.i619.i, -30
  %narrow.i.i2582 = select i1 %cmp.i623.i, i32 %sub1.i.i2581, i32 0
  %shr.i624.i = zext i32 %narrow.i.i2582 to i64
  %b.addr.0.i.i2583 = ashr i64 %504, %shr.i624.i
  %call3.i.i2584 = call i64 @div64_s64(i64 noundef %shl.i622.i2580, i64 noundef %b.addr.0.i.i2583) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i620.i)
  %cmp4.i.i2585 = icmp ugt i32 %sub.i620.i, 32
  %sub6.i.i2586 = sub i32 30, %shift.0.lcssa.i.i619.i
  %narrow19.i.i2587 = select i1 %cmp4.i.i2585, i32 %sub6.i.i2586, i32 0
  %shr8.i.i2588 = zext i32 %narrow19.i.i2587 to i64
  %retval.0.i625.i = ashr i64 %call3.i.i2584, %shr8.i.i2588
  %505 = lshr i64 %retval.0.i625.i, 32
  %conv.i.i2589 = trunc i64 %505 to i32
  %and.i2590 = and i64 %retval.0.i625.i, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294963200, i64 %and.i2590)
  %cmp.i2591 = icmp ugt i64 %and.i2590, 4294963200
  %add20.i = zext i1 %cmp.i2591 to i32
  %spec.select.i2592 = add i32 %add20.i, %conv.i.i2589
  %506 = ptrtoint ptr %n_tus to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 %spec.select.i2592, ptr %n_tus, align 8
  %507 = call i32 @llvm.abs.i32(i32 %spec.select.i2592, i1 false) #7
  %508 = zext i32 %507 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i627.i) #7
  %509 = ptrtoint ptr %rem.i627.i to i32
  call void @__asan_store8_noabort(i32 %509)
  store i64 -1, ptr %rem.i627.i, align 8, !annotation !176
  %call.i628.i = call i64 @div64_u64_rem(i64 noundef %508, i64 noundef 1, ptr noundef nonnull %rem.i627.i) #7
  %510 = ptrtoint ptr %rem.i627.i to i32
  call void @__asan_load8_noabort(i32 %510)
  %rem.promoted.i629.i = load i64, ptr %rem.i627.i, align 8
  br label %do.body.i643.i

do.body.i643.i:                                   ; preds = %do.body.i643.i.do.body.i643.i_crit_edge, %drm_fixp_div.exit.i2593
  %storemerge40.i630.i = phi i64 [ %rem.promoted.i629.i, %drm_fixp_div.exit.i2593 ], [ %storemerge.i637.i, %do.body.i643.i.do.body.i643.i_crit_edge ]
  %res_abs.0.i631.i = phi i64 [ %call.i628.i, %drm_fixp_div.exit.i2593 ], [ %res_abs.1.i640.i, %do.body.i643.i.do.body.i643.i_crit_edge ]
  %i.0.i632.i = phi i32 [ 32, %drm_fixp_div.exit.i2593 ], [ %dec.i641.i, %do.body.i643.i.do.body.i643.i_crit_edge ]
  %shl.i633.i = shl i64 %storemerge40.i630.i, 1
  %shl9.i634.i = shl i64 %res_abs.0.i631.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i633.i)
  %cmp10.not.i635.i = icmp ne i64 %shl.i633.i, 0
  %sub11.i636.neg.i = sext i1 %cmp10.not.i635.i to i64
  %storemerge.i637.i = add i64 %shl.i633.i, %sub11.i636.neg.i
  %or.i639.i = zext i1 %cmp10.not.i635.i to i64
  %res_abs.1.i640.i = or i64 %shl9.i634.i, %or.i639.i
  %dec.i641.i = add nsw i32 %i.0.i632.i, -1
  %cmp12.not.i642.i = icmp eq i32 %dec.i641.i, 0
  br i1 %cmp12.not.i642.i, label %drm_fixp_from_fraction.exit651.i, label %do.body.i643.i.do.body.i643.i_crit_edge

do.body.i643.i.do.body.i643.i_crit_edge:          ; preds = %do.body.i643.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i643.i

drm_fixp_from_fraction.exit651.i:                 ; preds = %do.body.i643.i
  %shl13.i644.mask.i = and i64 %storemerge.i637.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i644.mask.i)
  %cmp14.i645.i = icmp ne i64 %shl13.i644.mask.i, 0
  %511 = zext i1 %cmp14.i645.i to i64
  %add.i646.i = add i64 %res_abs.1.i640.i, %511
  %sub22.i648.i = sub i64 0, %add.i646.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i2592)
  %tobool20.not39.i649.i = icmp slt i32 %spec.select.i2592, 0
  %spec.select.i650.i = select i1 %tobool20.not39.i649.i, i64 %sub22.i648.i, i64 %add.i646.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i627.i) #7
  %512 = ptrtoint ptr %average_valid2_fp.i to i32
  call void @__asan_load8_noabort(i32 %512)
  %513 = load i64, ptr %average_valid2_fp.i, align 8
  %shr12.i.i652.i = lshr i64 %spec.select.i650.i, 63
  br label %for.body.i.i658.i

for.body.i.i658.i:                                ; preds = %for.inc.i.i661.i.for.body.i.i658.i_crit_edge, %drm_fixp_from_fraction.exit651.i
  %shift.014.i.i653.i = phi i32 [ 62, %drm_fixp_from_fraction.exit651.i ], [ %dec.i.i659.i, %for.inc.i.i661.i.for.body.i.i658.i_crit_edge ]
  %sh_prom.i.i654.i = zext i32 %shift.014.i.i653.i to i64
  %shr213.i.i655.i = lshr i64 %spec.select.i650.i, %sh_prom.i.i654.i
  %and3.i.i656.i = and i64 %shr213.i.i655.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i656.i, i64 %shr12.i.i652.i)
  %cmp5.not.i.i657.i = icmp eq i64 %and3.i.i656.i, %shr12.i.i652.i
  br i1 %cmp5.not.i.i657.i, label %for.inc.i.i661.i, label %for.body.i.i658.i.drm_fixp_msbset.exit.i664.i_crit_edge

for.body.i.i658.i.drm_fixp_msbset.exit.i664.i_crit_edge: ; preds = %for.body.i.i658.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i664.i

for.inc.i.i661.i:                                 ; preds = %for.body.i.i658.i
  %dec.i.i659.i = add nsw i32 %shift.014.i.i653.i, -1
  %cmp.not.i.i660.i = icmp eq i32 %dec.i.i659.i, 0
  br i1 %cmp.not.i.i660.i, label %for.inc.i.i661.i.drm_fixp_msbset.exit.i664.i_crit_edge, label %for.inc.i.i661.i.for.body.i.i658.i_crit_edge

for.inc.i.i661.i.for.body.i.i658.i_crit_edge:     ; preds = %for.inc.i.i661.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i658.i

for.inc.i.i661.i.drm_fixp_msbset.exit.i664.i_crit_edge: ; preds = %for.inc.i.i661.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i664.i

drm_fixp_msbset.exit.i664.i:                      ; preds = %for.inc.i.i661.i.drm_fixp_msbset.exit.i664.i_crit_edge, %for.body.i.i658.i.drm_fixp_msbset.exit.i664.i_crit_edge
  %shift.0.lcssa.i.i662.i = phi i32 [ 0, %for.inc.i.i661.i.drm_fixp_msbset.exit.i664.i_crit_edge ], [ %shift.014.i.i653.i, %for.body.i.i658.i.drm_fixp_msbset.exit.i664.i_crit_edge ]
  %shr12.i33.i663.i = lshr i64 %513, 63
  br label %for.body.i39.i670.i

for.body.i39.i670.i:                              ; preds = %for.inc.i42.i673.i.for.body.i39.i670.i_crit_edge, %drm_fixp_msbset.exit.i664.i
  %shift.014.i34.i665.i = phi i32 [ 62, %drm_fixp_msbset.exit.i664.i ], [ %dec.i40.i671.i, %for.inc.i42.i673.i.for.body.i39.i670.i_crit_edge ]
  %sh_prom.i35.i666.i = zext i32 %shift.014.i34.i665.i to i64
  %shr213.i36.i667.i = lshr i64 %513, %sh_prom.i35.i666.i
  %and3.i37.i668.i = and i64 %shr213.i36.i667.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i668.i, i64 %shr12.i33.i663.i)
  %cmp5.not.i38.i669.i = icmp eq i64 %and3.i37.i668.i, %shr12.i33.i663.i
  br i1 %cmp5.not.i38.i669.i, label %for.inc.i42.i673.i, label %for.body.i39.i670.i.drm_fixp_msbset.exit44.i677.i_crit_edge

for.body.i39.i670.i.drm_fixp_msbset.exit44.i677.i_crit_edge: ; preds = %for.body.i39.i670.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i677.i

for.inc.i42.i673.i:                               ; preds = %for.body.i39.i670.i
  %dec.i40.i671.i = add nsw i32 %shift.014.i34.i665.i, -1
  %cmp.not.i41.i672.i = icmp eq i32 %dec.i40.i671.i, 0
  br i1 %cmp.not.i41.i672.i, label %for.inc.i42.i673.i.drm_fixp_msbset.exit44.i677.i_crit_edge, label %for.inc.i42.i673.i.for.body.i39.i670.i_crit_edge

for.inc.i42.i673.i.for.body.i39.i670.i_crit_edge: ; preds = %for.inc.i42.i673.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i670.i

for.inc.i42.i673.i.drm_fixp_msbset.exit44.i677.i_crit_edge: ; preds = %for.inc.i42.i673.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i677.i

drm_fixp_msbset.exit44.i677.i:                    ; preds = %for.inc.i42.i673.i.drm_fixp_msbset.exit44.i677.i_crit_edge, %for.body.i39.i670.i.drm_fixp_msbset.exit44.i677.i_crit_edge
  %shift.0.lcssa.i43.i674.i = phi i32 [ 0, %for.inc.i42.i673.i.drm_fixp_msbset.exit44.i677.i_crit_edge ], [ %shift.014.i34.i665.i, %for.body.i39.i670.i.drm_fixp_msbset.exit44.i677.i_crit_edge ]
  %add.i675.i = add i32 %shift.0.lcssa.i43.i674.i, %shift.0.lcssa.i.i662.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i675.i)
  %cmp.i676.i = icmp ugt i32 %add.i675.i, 61
  br i1 %cmp.i676.i, label %if.end.i690.i, label %if.end11.thread.i679.i

if.end11.thread.i679.i:                           ; preds = %drm_fixp_msbset.exit44.i677.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i678.i = mul i64 %513, %spec.select.i650.i
  br label %if.then13.i702.i

if.end.i690.i:                                    ; preds = %drm_fixp_msbset.exit44.i677.i
  %sub.i680.i = add i32 %add.i675.i, -61
  %shr.i681.i = lshr i32 %sub.i680.i, 1
  %and.i682.i = and i32 %sub.i680.i, 1
  %add2.i683.i = add nuw nsw i32 %shr.i681.i, %and.i682.i
  %sh_prom.i684.i = zext i32 %add2.i683.i to i64
  %shr3.i685.i = ashr i64 %spec.select.i650.i, %sh_prom.i684.i
  %sh_prom5.i686.i = zext i32 %shr.i681.i to i64
  %shr6.i687.i = ashr i64 %513, %sh_prom5.i686.i
  %mul.i688.i = mul i64 %shr3.i685.i, %shr6.i687.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i680.i)
  %cmp7.i689.i = icmp ugt i32 %sub.i680.i, 32
  br i1 %cmp7.i689.i, label %if.then8.i694.i, label %if.end11.i696.i

if.then8.i694.i:                                  ; preds = %if.end.i690.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i691.i = add i32 %add.i675.i, -93
  %sh_prom10.i692.i = zext i32 %sub9.i691.i to i64
  %shl.i693.i = shl i64 %mul.i688.i, %sh_prom10.i692.i
  br label %drm_fixp_mul.exit704.i

if.end11.i696.i:                                  ; preds = %if.end.i690.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i680.i)
  %cmp12.not.i695.i = icmp eq i32 %sub.i680.i, 32
  br i1 %cmp12.not.i695.i, label %if.end11.i696.i.drm_fixp_mul.exit704.i_crit_edge, label %if.end11.i696.i.if.then13.i702.i_crit_edge

if.end11.i696.i.if.then13.i702.i_crit_edge:       ; preds = %if.end11.i696.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i702.i

if.end11.i696.i.drm_fixp_mul.exit704.i_crit_edge: ; preds = %if.end11.i696.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit704.i

if.then13.i702.i:                                 ; preds = %if.end11.i696.i.if.then13.i702.i_crit_edge, %if.end11.thread.i679.i
  %shift.05056.i697.i = phi i32 [ 0, %if.end11.thread.i679.i ], [ %sub.i680.i, %if.end11.i696.i.if.then13.i702.i_crit_edge ]
  %mul5155.i698.i = phi i64 [ %mul48.i678.i, %if.end11.thread.i679.i ], [ %mul.i688.i, %if.end11.i696.i.if.then13.i702.i_crit_edge ]
  %sub14.i699.i = sub nuw nsw i32 32, %shift.05056.i697.i
  %sh_prom15.i700.i = zext i32 %sub14.i699.i to i64
  %shr16.i701.i = ashr i64 %mul5155.i698.i, %sh_prom15.i700.i
  br label %drm_fixp_mul.exit704.i

drm_fixp_mul.exit704.i:                           ; preds = %if.then13.i702.i, %if.end11.i696.i.drm_fixp_mul.exit704.i_crit_edge, %if.then8.i694.i
  %retval.0.i703.i = phi i64 [ %shl.i693.i, %if.then8.i694.i ], [ %shr16.i701.i, %if.then13.i702.i ], [ %mul.i688.i, %if.end11.i696.i.drm_fixp_mul.exit704.i_crit_edge ]
  %514 = ptrtoint ptr %n_symbols to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %n_symbols, align 8
  %516 = call i32 @llvm.abs.i32(i32 %515, i1 false) #7
  %517 = zext i32 %516 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i705.i) #7
  %518 = ptrtoint ptr %rem.i705.i to i32
  call void @__asan_store8_noabort(i32 %518)
  store i64 -1, ptr %rem.i705.i, align 8, !annotation !176
  %call.i706.i = call i64 @div64_u64_rem(i64 noundef %517, i64 noundef 1, ptr noundef nonnull %rem.i705.i) #7
  %519 = ptrtoint ptr %rem.i705.i to i32
  call void @__asan_load8_noabort(i32 %519)
  %rem.promoted.i707.i = load i64, ptr %rem.i705.i, align 8
  br label %do.body.i721.i

do.body.i721.i:                                   ; preds = %do.body.i721.i.do.body.i721.i_crit_edge, %drm_fixp_mul.exit704.i
  %storemerge40.i708.i = phi i64 [ %rem.promoted.i707.i, %drm_fixp_mul.exit704.i ], [ %storemerge.i715.i, %do.body.i721.i.do.body.i721.i_crit_edge ]
  %res_abs.0.i709.i = phi i64 [ %call.i706.i, %drm_fixp_mul.exit704.i ], [ %res_abs.1.i718.i, %do.body.i721.i.do.body.i721.i_crit_edge ]
  %i.0.i710.i = phi i32 [ 32, %drm_fixp_mul.exit704.i ], [ %dec.i719.i, %do.body.i721.i.do.body.i721.i_crit_edge ]
  %shl.i711.i = shl i64 %storemerge40.i708.i, 1
  %shl9.i712.i = shl i64 %res_abs.0.i709.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i711.i)
  %cmp10.not.i713.i = icmp ne i64 %shl.i711.i, 0
  %sub11.i714.neg.i = sext i1 %cmp10.not.i713.i to i64
  %storemerge.i715.i = add i64 %shl.i711.i, %sub11.i714.neg.i
  %or.i717.i = zext i1 %cmp10.not.i713.i to i64
  %res_abs.1.i718.i = or i64 %shl9.i712.i, %or.i717.i
  %dec.i719.i = add nsw i32 %i.0.i710.i, -1
  %cmp12.not.i720.i = icmp eq i32 %dec.i719.i, 0
  br i1 %cmp12.not.i720.i, label %drm_fixp_from_fraction.exit729.i, label %do.body.i721.i.do.body.i721.i_crit_edge

do.body.i721.i.do.body.i721.i_crit_edge:          ; preds = %do.body.i721.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i721.i

drm_fixp_from_fraction.exit729.i:                 ; preds = %do.body.i721.i
  %shl13.i722.mask.i = and i64 %storemerge.i715.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i722.mask.i)
  %cmp14.i723.i = icmp ne i64 %shl13.i722.mask.i, 0
  %520 = zext i1 %cmp14.i723.i to i64
  %add.i724.i = add i64 %res_abs.1.i718.i, %520
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i705.i) #7
  %521 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %nlanes4.i, align 8
  %523 = call i32 @llvm.abs.i32(i32 %522, i1 false) #7
  %524 = zext i32 %523 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i730.i) #7
  %525 = ptrtoint ptr %rem.i730.i to i32
  call void @__asan_store8_noabort(i32 %525)
  store i64 -1, ptr %rem.i730.i, align 8, !annotation !176
  %call.i731.i = call i64 @div64_u64_rem(i64 noundef %524, i64 noundef 1, ptr noundef nonnull %rem.i730.i) #7
  %526 = ptrtoint ptr %rem.i730.i to i32
  call void @__asan_load8_noabort(i32 %526)
  %rem.promoted.i732.i = load i64, ptr %rem.i730.i, align 8
  br label %do.body.i746.i

do.body.i746.i:                                   ; preds = %do.body.i746.i.do.body.i746.i_crit_edge, %drm_fixp_from_fraction.exit729.i
  %storemerge40.i733.i = phi i64 [ %rem.promoted.i732.i, %drm_fixp_from_fraction.exit729.i ], [ %storemerge.i740.i, %do.body.i746.i.do.body.i746.i_crit_edge ]
  %res_abs.0.i734.i = phi i64 [ %call.i731.i, %drm_fixp_from_fraction.exit729.i ], [ %res_abs.1.i743.i, %do.body.i746.i.do.body.i746.i_crit_edge ]
  %i.0.i735.i = phi i32 [ 32, %drm_fixp_from_fraction.exit729.i ], [ %dec.i744.i, %do.body.i746.i.do.body.i746.i_crit_edge ]
  %shl.i736.i = shl i64 %storemerge40.i733.i, 1
  %shl9.i737.i = shl i64 %res_abs.0.i734.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i736.i)
  %cmp10.not.i738.i = icmp ne i64 %shl.i736.i, 0
  %sub11.i739.neg.i = sext i1 %cmp10.not.i738.i to i64
  %storemerge.i740.i = add i64 %shl.i736.i, %sub11.i739.neg.i
  %or.i742.i = zext i1 %cmp10.not.i738.i to i64
  %res_abs.1.i743.i = or i64 %shl9.i737.i, %or.i742.i
  %dec.i744.i = add nsw i32 %i.0.i735.i, -1
  %cmp12.not.i745.i = icmp eq i32 %dec.i744.i, 0
  br i1 %cmp12.not.i745.i, label %drm_fixp_from_fraction.exit754.i, label %do.body.i746.i.do.body.i746.i_crit_edge

do.body.i746.i.do.body.i746.i_crit_edge:          ; preds = %do.body.i746.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i746.i

drm_fixp_from_fraction.exit754.i:                 ; preds = %do.body.i746.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %515)
  %tobool20.not39.i727.i = icmp slt i32 %515, 0
  %sub22.i726.i = sub i64 0, %add.i724.i
  %spec.select.i728.i = select i1 %tobool20.not39.i727.i, i64 %sub22.i726.i, i64 %add.i724.i
  %sub28.i = sub i64 %spec.select.i728.i, %retval.0.i703.i
  %shl13.i747.mask.i = and i64 %storemerge.i740.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i747.mask.i)
  %cmp14.i748.i = icmp ne i64 %shl13.i747.mask.i, 0
  %527 = zext i1 %cmp14.i748.i to i64
  %add.i749.i = add i64 %res_abs.1.i743.i, %527
  %sub22.i751.i = sub i64 0, %add.i749.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %tobool20.not39.i752.i = icmp slt i32 %522, 0
  %spec.select.i753.i = select i1 %tobool20.not39.i752.i, i64 %sub22.i751.i, i64 %add.i749.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i730.i) #7
  %shr12.i.i755.i = lshr i64 %sub28.i, 63
  br label %for.body.i.i761.i

for.body.i.i761.i:                                ; preds = %for.inc.i.i764.i.for.body.i.i761.i_crit_edge, %drm_fixp_from_fraction.exit754.i
  %shift.014.i.i756.i = phi i32 [ 62, %drm_fixp_from_fraction.exit754.i ], [ %dec.i.i762.i, %for.inc.i.i764.i.for.body.i.i761.i_crit_edge ]
  %sh_prom.i.i757.i = zext i32 %shift.014.i.i756.i to i64
  %shr213.i.i758.i = lshr i64 %sub28.i, %sh_prom.i.i757.i
  %and3.i.i759.i = and i64 %shr213.i.i758.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i759.i, i64 %shr12.i.i755.i)
  %cmp5.not.i.i760.i = icmp eq i64 %and3.i.i759.i, %shr12.i.i755.i
  br i1 %cmp5.not.i.i760.i, label %for.inc.i.i764.i, label %for.body.i.i761.i.drm_fixp_div.exit781.i_crit_edge

for.body.i.i761.i.drm_fixp_div.exit781.i_crit_edge: ; preds = %for.body.i.i761.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit781.i

for.inc.i.i764.i:                                 ; preds = %for.body.i.i761.i
  %dec.i.i762.i = add nsw i32 %shift.014.i.i756.i, -1
  %cmp.not.i.i763.i = icmp eq i32 %dec.i.i762.i, 0
  br i1 %cmp.not.i.i763.i, label %for.inc.i.i764.i.drm_fixp_div.exit781.i_crit_edge, label %for.inc.i.i764.i.for.body.i.i761.i_crit_edge

for.inc.i.i764.i.for.body.i.i761.i_crit_edge:     ; preds = %for.inc.i.i764.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i761.i

for.inc.i.i764.i.drm_fixp_div.exit781.i_crit_edge: ; preds = %for.inc.i.i764.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit781.i

drm_fixp_div.exit781.i:                           ; preds = %for.inc.i.i764.i.drm_fixp_div.exit781.i_crit_edge, %for.body.i.i761.i.drm_fixp_div.exit781.i_crit_edge
  %shift.0.lcssa.i.i765.i = phi i32 [ 0, %for.inc.i.i764.i.drm_fixp_div.exit781.i_crit_edge ], [ %shift.014.i.i756.i, %for.body.i.i761.i.drm_fixp_div.exit781.i_crit_edge ]
  %sub.i766.i = sub i32 62, %shift.0.lcssa.i.i765.i
  %sh_prom.i767.i = zext i32 %sub.i766.i to i64
  %shl.i768.i = shl i64 %sub28.i, %sh_prom.i767.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i766.i)
  %cmp.i769.i = icmp ult i32 %sub.i766.i, 32
  %sub1.i770.i = add i32 %shift.0.lcssa.i.i765.i, -30
  %narrow.i771.i = select i1 %cmp.i769.i, i32 %sub1.i770.i, i32 0
  %shr.i772.i = zext i32 %narrow.i771.i to i64
  %b.addr.0.i773.i = ashr i64 %spec.select.i753.i, %shr.i772.i
  %call3.i774.i = call i64 @div64_s64(i64 noundef %shl.i768.i, i64 noundef %b.addr.0.i773.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i766.i)
  %cmp4.i775.i = icmp ugt i32 %sub.i766.i, 32
  %sub6.i776.i = sub i32 30, %shift.0.lcssa.i.i765.i
  %narrow19.i777.i = select i1 %cmp4.i775.i, i32 %sub6.i776.i, i32 0
  %shr8.i778.i = zext i32 %narrow19.i777.i to i64
  %retval.0.i779.i = ashr i64 %call3.i774.i, %shr8.i778.i
  %528 = ptrtoint ptr %n_remainder_symbols_per_lane_fp.i to i32
  call void @__asan_store8_noabort(i32 %528)
  store i64 %retval.0.i779.i, ptr %n_remainder_symbols_per_lane_fp.i, align 8
  %529 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %tu_size, align 8
  %531 = call i32 @llvm.abs.i32(i32 %530, i1 false) #7
  %532 = zext i32 %531 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i782.i) #7
  %533 = ptrtoint ptr %rem.i782.i to i32
  call void @__asan_store8_noabort(i32 %533)
  store i64 -1, ptr %rem.i782.i, align 8, !annotation !176
  %call.i783.i = call i64 @div64_u64_rem(i64 noundef %532, i64 noundef 1, ptr noundef nonnull %rem.i782.i) #7
  %534 = ptrtoint ptr %rem.i782.i to i32
  call void @__asan_load8_noabort(i32 %534)
  %rem.promoted.i784.i = load i64, ptr %rem.i782.i, align 8
  br label %do.body.i798.i

do.body.i798.i:                                   ; preds = %do.body.i798.i.do.body.i798.i_crit_edge, %drm_fixp_div.exit781.i
  %storemerge40.i785.i = phi i64 [ %rem.promoted.i784.i, %drm_fixp_div.exit781.i ], [ %storemerge.i792.i, %do.body.i798.i.do.body.i798.i_crit_edge ]
  %res_abs.0.i786.i = phi i64 [ %call.i783.i, %drm_fixp_div.exit781.i ], [ %res_abs.1.i795.i, %do.body.i798.i.do.body.i798.i_crit_edge ]
  %i.0.i787.i = phi i32 [ 32, %drm_fixp_div.exit781.i ], [ %dec.i796.i, %do.body.i798.i.do.body.i798.i_crit_edge ]
  %shl.i788.i = shl i64 %storemerge40.i785.i, 1
  %shl9.i789.i = shl i64 %res_abs.0.i786.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i788.i)
  %cmp10.not.i790.i = icmp ne i64 %shl.i788.i, 0
  %sub11.i791.neg.i = sext i1 %cmp10.not.i790.i to i64
  %storemerge.i792.i = add i64 %shl.i788.i, %sub11.i791.neg.i
  %or.i794.i = zext i1 %cmp10.not.i790.i to i64
  %res_abs.1.i795.i = or i64 %shl9.i789.i, %or.i794.i
  %dec.i796.i = add nsw i32 %i.0.i787.i, -1
  %cmp12.not.i797.i = icmp eq i32 %dec.i796.i, 0
  br i1 %cmp12.not.i797.i, label %drm_fixp_from_fraction.exit806.i, label %do.body.i798.i.do.body.i798.i_crit_edge

do.body.i798.i.do.body.i798.i_crit_edge:          ; preds = %do.body.i798.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i798.i

drm_fixp_from_fraction.exit806.i:                 ; preds = %do.body.i798.i
  %shl13.i799.mask.i = and i64 %storemerge.i792.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i799.mask.i)
  %cmp14.i800.i = icmp ne i64 %shl13.i799.mask.i, 0
  %535 = zext i1 %cmp14.i800.i to i64
  %add.i801.i = add i64 %res_abs.1.i795.i, %535
  %sub22.i803.i = sub i64 0, %add.i801.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %530)
  %tobool20.not39.i804.i = icmp slt i32 %530, 0
  %spec.select.i805.i = select i1 %tobool20.not39.i804.i, i64 %sub22.i803.i, i64 %add.i801.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i782.i) #7
  %536 = ptrtoint ptr %n_remainder_symbols_per_lane_fp.i to i32
  call void @__asan_load8_noabort(i32 %536)
  %537 = load i64, ptr %n_remainder_symbols_per_lane_fp.i, align 8
  %shr12.i.i807.i = lshr i64 %537, 63
  br label %for.body.i.i813.i

for.body.i.i813.i:                                ; preds = %for.inc.i.i816.i.for.body.i.i813.i_crit_edge, %drm_fixp_from_fraction.exit806.i
  %shift.014.i.i808.i = phi i32 [ 62, %drm_fixp_from_fraction.exit806.i ], [ %dec.i.i814.i, %for.inc.i.i816.i.for.body.i.i813.i_crit_edge ]
  %sh_prom.i.i809.i = zext i32 %shift.014.i.i808.i to i64
  %shr213.i.i810.i = lshr i64 %537, %sh_prom.i.i809.i
  %and3.i.i811.i = and i64 %shr213.i.i810.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i811.i, i64 %shr12.i.i807.i)
  %cmp5.not.i.i812.i = icmp eq i64 %and3.i.i811.i, %shr12.i.i807.i
  br i1 %cmp5.not.i.i812.i, label %for.inc.i.i816.i, label %for.body.i.i813.i.drm_fixp_div.exit833.i_crit_edge

for.body.i.i813.i.drm_fixp_div.exit833.i_crit_edge: ; preds = %for.body.i.i813.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit833.i

for.inc.i.i816.i:                                 ; preds = %for.body.i.i813.i
  %dec.i.i814.i = add nsw i32 %shift.014.i.i808.i, -1
  %cmp.not.i.i815.i = icmp eq i32 %dec.i.i814.i, 0
  br i1 %cmp.not.i.i815.i, label %for.inc.i.i816.i.drm_fixp_div.exit833.i_crit_edge, label %for.inc.i.i816.i.for.body.i.i813.i_crit_edge

for.inc.i.i816.i.for.body.i.i813.i_crit_edge:     ; preds = %for.inc.i.i816.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i813.i

for.inc.i.i816.i.drm_fixp_div.exit833.i_crit_edge: ; preds = %for.inc.i.i816.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit833.i

drm_fixp_div.exit833.i:                           ; preds = %for.inc.i.i816.i.drm_fixp_div.exit833.i_crit_edge, %for.body.i.i813.i.drm_fixp_div.exit833.i_crit_edge
  %shift.0.lcssa.i.i817.i = phi i32 [ 0, %for.inc.i.i816.i.drm_fixp_div.exit833.i_crit_edge ], [ %shift.014.i.i808.i, %for.body.i.i813.i.drm_fixp_div.exit833.i_crit_edge ]
  %sub.i818.i = sub i32 62, %shift.0.lcssa.i.i817.i
  %sh_prom.i819.i = zext i32 %sub.i818.i to i64
  %shl.i820.i = shl i64 %537, %sh_prom.i819.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i818.i)
  %cmp.i821.i = icmp ult i32 %sub.i818.i, 32
  %sub1.i822.i = add i32 %shift.0.lcssa.i.i817.i, -30
  %narrow.i823.i = select i1 %cmp.i821.i, i32 %sub1.i822.i, i32 0
  %shr.i824.i = zext i32 %narrow.i823.i to i64
  %b.addr.0.i825.i = ashr i64 %spec.select.i805.i, %shr.i824.i
  %call3.i826.i = call i64 @div64_s64(i64 noundef %shl.i820.i, i64 noundef %b.addr.0.i825.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i818.i)
  %cmp4.i827.i = icmp ugt i32 %sub.i818.i, 32
  %sub6.i828.i = sub i32 30, %shift.0.lcssa.i.i817.i
  %narrow19.i829.i = select i1 %cmp4.i827.i, i32 %sub6.i828.i, i32 0
  %shr8.i830.i = zext i32 %narrow19.i829.i to i64
  %retval.0.i831.i = ashr i64 %call3.i826.i, %shr8.i830.i
  %538 = ptrtoint ptr %last_partial_tu_fp.i to i32
  call void @__asan_store8_noabort(i32 %538)
  store i64 %retval.0.i831.i, ptr %last_partial_tu_fp.i, align 8
  %539 = ptrtoint ptr %n_remainder_symbols_per_lane_fp.i to i32
  call void @__asan_load8_noabort(i32 %539)
  %540 = load i64, ptr %n_remainder_symbols_per_lane_fp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %540)
  %cmp38.not.i = icmp ne i64 %540, 0
  %spec.select1871.i = zext i1 %cmp38.not.i to i32
  %541 = ptrtoint ptr %433 to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %spec.select1871.i, ptr %433, align 4
  %542 = ptrtoint ptr %n_tus to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %n_tus, align 8
  %544 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %nlanes4.i, align 8
  %546 = call i32 @llvm.abs.i32(i32 %543, i1 false) #7
  %547 = zext i32 %546 to i64
  %548 = call i32 @llvm.abs.i32(i32 %545, i1 false) #7
  %549 = zext i32 %548 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i834.i) #7
  %550 = ptrtoint ptr %rem.i834.i to i32
  call void @__asan_store8_noabort(i32 %550)
  store i64 -1, ptr %rem.i834.i, align 8, !annotation !176
  %call.i835.i = call i64 @div64_u64_rem(i64 noundef %547, i64 noundef %549, ptr noundef nonnull %rem.i834.i) #7
  %551 = ptrtoint ptr %rem.i834.i to i32
  call void @__asan_load8_noabort(i32 %551)
  %rem.promoted.i836.i = load i64, ptr %rem.i834.i, align 8
  br label %do.body.i850.i

do.body.i850.i:                                   ; preds = %do.body.i850.i.do.body.i850.i_crit_edge, %drm_fixp_div.exit833.i
  %storemerge40.i837.i = phi i64 [ %rem.promoted.i836.i, %drm_fixp_div.exit833.i ], [ %storemerge.i844.i, %do.body.i850.i.do.body.i850.i_crit_edge ]
  %res_abs.0.i838.i = phi i64 [ %call.i835.i, %drm_fixp_div.exit833.i ], [ %res_abs.1.i847.i, %do.body.i850.i.do.body.i850.i_crit_edge ]
  %i.0.i839.i = phi i32 [ 32, %drm_fixp_div.exit833.i ], [ %dec.i848.i, %do.body.i850.i.do.body.i850.i_crit_edge ]
  %shl.i840.i = shl i64 %storemerge40.i837.i, 1
  %shl9.i841.i = shl i64 %res_abs.0.i838.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i840.i, i64 %549)
  %cmp10.not.i842.i = icmp ult i64 %shl.i840.i, %549
  %sub11.i843.i = select i1 %cmp10.not.i842.i, i64 0, i64 %549
  %storemerge.i844.i = sub i64 %shl.i840.i, %sub11.i843.i
  %not.cmp10.not.i845.i = xor i1 %cmp10.not.i842.i, true
  %or.i846.i = zext i1 %not.cmp10.not.i845.i to i64
  %res_abs.1.i847.i = or i64 %shl9.i841.i, %or.i846.i
  %dec.i848.i = add nsw i32 %i.0.i839.i, -1
  %cmp12.not.i849.i = icmp eq i32 %dec.i848.i, 0
  br i1 %cmp12.not.i849.i, label %drm_fixp_from_fraction.exit858.i, label %do.body.i850.i.do.body.i850.i_crit_edge

do.body.i850.i.do.body.i850.i_crit_edge:          ; preds = %do.body.i850.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i850.i

drm_fixp_from_fraction.exit858.i:                 ; preds = %do.body.i850.i
  %shl13.i851.i = shl i64 %storemerge.i844.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl13.i851.i, i64 %549)
  %cmp14.i852.i = icmp uge i64 %shl13.i851.i, %549
  %552 = zext i1 %cmp14.i852.i to i64
  %add.i853.i = add i64 %res_abs.1.i847.i, %552
  %a.lobit38.i8541869.i = xor i32 %545, %543
  %sub22.i855.i = sub i64 0, %add.i853.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a.lobit38.i8541869.i)
  %tobool20.not39.i856.i = icmp slt i32 %a.lobit38.i8541869.i, 0
  %spec.select.i857.i = select i1 %tobool20.not39.i856.i, i64 %sub22.i855.i, i64 %add.i853.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i834.i) #7
  %553 = lshr i64 %spec.select.i857.i, 32
  %conv.i859.i = trunc i64 %553 to i32
  %554 = ptrtoint ptr %n_tus_per_lane.i to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 %conv.i859.i, ptr %n_tus_per_lane.i, align 4
  %555 = ptrtoint ptr %i_upper_boundary_count to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %i_upper_boundary_count, align 4
  %557 = ptrtoint ptr %i_lower_boundary_count to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %i_lower_boundary_count, align 8
  %add52.i = add i32 %558, %556
  %div.i2594 = sdiv i32 %conv.i859.i, %add52.i
  %559 = ptrtoint ptr %paired_tus.i to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %div.i2594, ptr %paired_tus.i, align 8
  %mul58.i = mul i32 %div.i2594, %add52.i
  %sub59.i = sub i32 %conv.i859.i, %mul58.i
  %560 = ptrtoint ptr %remainder_tus.i to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 %sub59.i, ptr %remainder_tus.i, align 4
  %sub62.i = sub i32 %sub59.i, %556
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62.i)
  %cmp63.i = icmp sgt i32 %sub62.i, 0
  %spec.select1872.i = select i1 %cmp63.i, i32 %556, i32 %sub59.i
  %561 = call i32 @llvm.smax.i32(i32 %sub62.i, i32 0) #7
  %562 = ptrtoint ptr %434 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %spec.select1872.i, ptr %434, align 8
  %563 = ptrtoint ptr %435 to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %561, ptr %435, align 4
  %564 = ptrtoint ptr %new_valid_boundary_link.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %new_valid_boundary_link.i, align 8
  %mul78.i = mul i32 %565, %556
  %sub81.i = add i32 %565, -1
  %mul82.i = mul i32 %sub81.i, %558
  %add83.i = add i32 %mul82.i, %mul78.i
  %mul84.i = mul i32 %add83.i, %div.i2594
  %mul87.i = mul i32 %spec.select1872.i, %565
  %mul92.i = mul i32 %sub81.i, %561
  %add88.i = add i32 %mul92.i, %mul87.i
  %add93.i = add i32 %add88.i, %mul84.i
  %566 = call i32 @llvm.abs.i32(i32 %add93.i, i1 false) #7
  %567 = zext i32 %566 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i860.i) #7
  %568 = ptrtoint ptr %rem.i860.i to i32
  call void @__asan_store8_noabort(i32 %568)
  store i64 -1, ptr %rem.i860.i, align 8, !annotation !176
  %call.i861.i = call i64 @div64_u64_rem(i64 noundef %567, i64 noundef 1, ptr noundef nonnull %rem.i860.i) #7
  %569 = ptrtoint ptr %rem.i860.i to i32
  call void @__asan_load8_noabort(i32 %569)
  %rem.promoted.i862.i = load i64, ptr %rem.i860.i, align 8
  br label %do.body.i876.i

do.body.i876.i:                                   ; preds = %do.body.i876.i.do.body.i876.i_crit_edge, %drm_fixp_from_fraction.exit858.i
  %storemerge40.i863.i = phi i64 [ %rem.promoted.i862.i, %drm_fixp_from_fraction.exit858.i ], [ %storemerge.i870.i, %do.body.i876.i.do.body.i876.i_crit_edge ]
  %res_abs.0.i864.i = phi i64 [ %call.i861.i, %drm_fixp_from_fraction.exit858.i ], [ %res_abs.1.i873.i, %do.body.i876.i.do.body.i876.i_crit_edge ]
  %i.0.i865.i = phi i32 [ 32, %drm_fixp_from_fraction.exit858.i ], [ %dec.i874.i, %do.body.i876.i.do.body.i876.i_crit_edge ]
  %shl.i866.i = shl i64 %storemerge40.i863.i, 1
  %shl9.i867.i = shl i64 %res_abs.0.i864.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i866.i)
  %cmp10.not.i868.i = icmp ne i64 %shl.i866.i, 0
  %sub11.i869.neg.i = sext i1 %cmp10.not.i868.i to i64
  %storemerge.i870.i = add i64 %shl.i866.i, %sub11.i869.neg.i
  %or.i872.i = zext i1 %cmp10.not.i868.i to i64
  %res_abs.1.i873.i = or i64 %shl9.i867.i, %or.i872.i
  %dec.i874.i = add nsw i32 %i.0.i865.i, -1
  %cmp12.not.i875.i = icmp eq i32 %dec.i874.i, 0
  br i1 %cmp12.not.i875.i, label %drm_fixp_from_fraction.exit884.i, label %do.body.i876.i.do.body.i876.i_crit_edge

do.body.i876.i.do.body.i876.i_crit_edge:          ; preds = %do.body.i876.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i876.i

drm_fixp_from_fraction.exit884.i:                 ; preds = %do.body.i876.i
  %shl13.i877.mask.i = and i64 %storemerge.i870.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i877.mask.i)
  %cmp14.i878.i = icmp ne i64 %shl13.i877.mask.i, 0
  %570 = zext i1 %cmp14.i878.i to i64
  %add.i879.i = add i64 %res_abs.1.i873.i, %570
  %sub22.i881.i = sub i64 0, %add.i879.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add93.i)
  %tobool20.not39.i882.i = icmp slt i32 %add93.i, 0
  %spec.select.i883.i = select i1 %tobool20.not39.i882.i, i64 %sub22.i881.i, i64 %add.i879.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i860.i) #7
  %571 = ptrtoint ptr %total_valid_fp.i to i32
  call void @__asan_store8_noabort(i32 %571)
  store i64 %spec.select.i883.i, ptr %total_valid_fp.i, align 8
  %572 = ptrtoint ptr %433 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %433, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %573)
  %tobool.not.i2595 = icmp eq i32 %573, 0
  br i1 %tobool.not.i2595, label %if.else107.i, label %if.then97.i

if.then97.i:                                      ; preds = %drm_fixp_from_fraction.exit884.i
  %574 = ptrtoint ptr %n_remainder_symbols_per_lane_fp.i to i32
  call void @__asan_load8_noabort(i32 %574)
  %575 = load i64, ptr %n_remainder_symbols_per_lane_fp.i, align 8
  %576 = ptrtoint ptr %n_tus_per_lane.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %n_tus_per_lane.i, align 4
  %578 = call i32 @llvm.abs.i32(i32 %577, i1 false) #7
  %579 = zext i32 %578 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i885.i) #7
  %580 = ptrtoint ptr %rem.i885.i to i32
  call void @__asan_store8_noabort(i32 %580)
  store i64 -1, ptr %rem.i885.i, align 8, !annotation !176
  %call.i886.i = call i64 @div64_u64_rem(i64 noundef %579, i64 noundef 1, ptr noundef nonnull %rem.i885.i) #7
  %581 = ptrtoint ptr %rem.i885.i to i32
  call void @__asan_load8_noabort(i32 %581)
  %rem.promoted.i887.i = load i64, ptr %rem.i885.i, align 8
  br label %do.body.i901.i

do.body.i901.i:                                   ; preds = %do.body.i901.i.do.body.i901.i_crit_edge, %if.then97.i
  %storemerge40.i888.i = phi i64 [ %rem.promoted.i887.i, %if.then97.i ], [ %storemerge.i895.i, %do.body.i901.i.do.body.i901.i_crit_edge ]
  %res_abs.0.i889.i = phi i64 [ %call.i886.i, %if.then97.i ], [ %res_abs.1.i898.i, %do.body.i901.i.do.body.i901.i_crit_edge ]
  %i.0.i890.i = phi i32 [ 32, %if.then97.i ], [ %dec.i899.i, %do.body.i901.i.do.body.i901.i_crit_edge ]
  %shl.i891.i = shl i64 %storemerge40.i888.i, 1
  %shl9.i892.i = shl i64 %res_abs.0.i889.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i891.i)
  %cmp10.not.i893.i = icmp ne i64 %shl.i891.i, 0
  %sub11.i894.neg.i = sext i1 %cmp10.not.i893.i to i64
  %storemerge.i895.i = add i64 %shl.i891.i, %sub11.i894.neg.i
  %or.i897.i = zext i1 %cmp10.not.i893.i to i64
  %res_abs.1.i898.i = or i64 %shl9.i892.i, %or.i897.i
  %dec.i899.i = add nsw i32 %i.0.i890.i, -1
  %cmp12.not.i900.i = icmp eq i32 %dec.i899.i, 0
  br i1 %cmp12.not.i900.i, label %drm_fixp_from_fraction.exit909.i, label %do.body.i901.i.do.body.i901.i_crit_edge

do.body.i901.i.do.body.i901.i_crit_edge:          ; preds = %do.body.i901.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i901.i

drm_fixp_from_fraction.exit909.i:                 ; preds = %do.body.i901.i
  %add100.i = add i64 %575, %spec.select.i883.i
  %shl13.i902.mask.i = and i64 %storemerge.i895.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i902.mask.i)
  %cmp14.i903.i = icmp ne i64 %shl13.i902.mask.i, 0
  %582 = zext i1 %cmp14.i903.i to i64
  %add.i904.i = add i64 %res_abs.1.i898.i, %582
  %sub22.i906.i = sub i64 0, %add.i904.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %577)
  %tobool20.not39.i907.i = icmp slt i32 %577, 0
  %spec.select.i908.i = select i1 %tobool20.not39.i907.i, i64 %sub22.i906.i, i64 %add.i904.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i885.i) #7
  %583 = ptrtoint ptr %last_partial_tu_fp.i to i32
  call void @__asan_load8_noabort(i32 %583)
  %584 = load i64, ptr %last_partial_tu_fp.i, align 8
  %add105.i = add i64 %584, %spec.select.i908.i
  %shr12.i.i910.i = lshr i64 %add100.i, 63
  br label %for.body.i.i916.i

for.body.i.i916.i:                                ; preds = %for.inc.i.i919.i.for.body.i.i916.i_crit_edge, %drm_fixp_from_fraction.exit909.i
  %shift.014.i.i911.i = phi i32 [ 62, %drm_fixp_from_fraction.exit909.i ], [ %dec.i.i917.i, %for.inc.i.i919.i.for.body.i.i916.i_crit_edge ]
  %sh_prom.i.i912.i = zext i32 %shift.014.i.i911.i to i64
  %shr213.i.i913.i = lshr i64 %add100.i, %sh_prom.i.i912.i
  %and3.i.i914.i = and i64 %shr213.i.i913.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i914.i, i64 %shr12.i.i910.i)
  %cmp5.not.i.i915.i = icmp eq i64 %and3.i.i914.i, %shr12.i.i910.i
  br i1 %cmp5.not.i.i915.i, label %for.inc.i.i919.i, label %for.body.i.i916.i.if.end113.i_crit_edge

for.body.i.i916.i.if.end113.i_crit_edge:          ; preds = %for.body.i.i916.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

for.inc.i.i919.i:                                 ; preds = %for.body.i.i916.i
  %dec.i.i917.i = add nsw i32 %shift.014.i.i911.i, -1
  %cmp.not.i.i918.i = icmp eq i32 %dec.i.i917.i, 0
  br i1 %cmp.not.i.i918.i, label %for.inc.i.i919.i.if.end113.i_crit_edge, label %for.inc.i.i919.i.for.body.i.i916.i_crit_edge

for.inc.i.i919.i.for.body.i.i916.i_crit_edge:     ; preds = %for.inc.i.i919.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i916.i

for.inc.i.i919.i.if.end113.i_crit_edge:           ; preds = %for.inc.i.i919.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

if.else107.i:                                     ; preds = %drm_fixp_from_fraction.exit884.i
  %585 = ptrtoint ptr %n_tus_per_lane.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %n_tus_per_lane.i, align 4
  %587 = call i32 @llvm.abs.i32(i32 %586, i1 false) #7
  %588 = zext i32 %587 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i937.i) #7
  %589 = ptrtoint ptr %rem.i937.i to i32
  call void @__asan_store8_noabort(i32 %589)
  store i64 -1, ptr %rem.i937.i, align 8, !annotation !176
  %call.i938.i = call i64 @div64_u64_rem(i64 noundef %588, i64 noundef 1, ptr noundef nonnull %rem.i937.i) #7
  %590 = ptrtoint ptr %rem.i937.i to i32
  call void @__asan_load8_noabort(i32 %590)
  %rem.promoted.i939.i = load i64, ptr %rem.i937.i, align 8
  br label %do.body.i953.i

do.body.i953.i:                                   ; preds = %do.body.i953.i.do.body.i953.i_crit_edge, %if.else107.i
  %storemerge40.i940.i = phi i64 [ %rem.promoted.i939.i, %if.else107.i ], [ %storemerge.i947.i, %do.body.i953.i.do.body.i953.i_crit_edge ]
  %res_abs.0.i941.i = phi i64 [ %call.i938.i, %if.else107.i ], [ %res_abs.1.i950.i, %do.body.i953.i.do.body.i953.i_crit_edge ]
  %i.0.i942.i = phi i32 [ 32, %if.else107.i ], [ %dec.i951.i, %do.body.i953.i.do.body.i953.i_crit_edge ]
  %shl.i943.i = shl i64 %storemerge40.i940.i, 1
  %shl9.i944.i = shl i64 %res_abs.0.i941.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i943.i)
  %cmp10.not.i945.i = icmp ne i64 %shl.i943.i, 0
  %sub11.i946.neg.i = sext i1 %cmp10.not.i945.i to i64
  %storemerge.i947.i = add i64 %shl.i943.i, %sub11.i946.neg.i
  %or.i949.i = zext i1 %cmp10.not.i945.i to i64
  %res_abs.1.i950.i = or i64 %shl9.i944.i, %or.i949.i
  %dec.i951.i = add nsw i32 %i.0.i942.i, -1
  %cmp12.not.i952.i = icmp eq i32 %dec.i951.i, 0
  br i1 %cmp12.not.i952.i, label %drm_fixp_from_fraction.exit961.i, label %do.body.i953.i.do.body.i953.i_crit_edge

do.body.i953.i.do.body.i953.i_crit_edge:          ; preds = %do.body.i953.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i953.i

drm_fixp_from_fraction.exit961.i:                 ; preds = %do.body.i953.i
  %shl13.i954.mask.i = and i64 %storemerge.i947.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i954.mask.i)
  %cmp14.i955.i = icmp ne i64 %shl13.i954.mask.i, 0
  %591 = zext i1 %cmp14.i955.i to i64
  %add.i956.i = add i64 %res_abs.1.i950.i, %591
  %sub22.i958.i = sub i64 0, %add.i956.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %586)
  %tobool20.not39.i959.i = icmp slt i32 %586, 0
  %spec.select.i960.i = select i1 %tobool20.not39.i959.i, i64 %sub22.i958.i, i64 %add.i956.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i937.i) #7
  %592 = ptrtoint ptr %total_valid_fp.i to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %total_valid_fp.i, align 8
  %shr12.i.i962.i = lshr i64 %593, 63
  br label %for.body.i.i968.i

for.body.i.i968.i:                                ; preds = %for.inc.i.i971.i.for.body.i.i968.i_crit_edge, %drm_fixp_from_fraction.exit961.i
  %shift.014.i.i963.i = phi i32 [ 62, %drm_fixp_from_fraction.exit961.i ], [ %dec.i.i969.i, %for.inc.i.i971.i.for.body.i.i968.i_crit_edge ]
  %sh_prom.i.i964.i = zext i32 %shift.014.i.i963.i to i64
  %shr213.i.i965.i = lshr i64 %593, %sh_prom.i.i964.i
  %and3.i.i966.i = and i64 %shr213.i.i965.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i966.i, i64 %shr12.i.i962.i)
  %cmp5.not.i.i967.i = icmp eq i64 %and3.i.i966.i, %shr12.i.i962.i
  br i1 %cmp5.not.i.i967.i, label %for.inc.i.i971.i, label %for.body.i.i968.i.if.end113.i_crit_edge

for.body.i.i968.i.if.end113.i_crit_edge:          ; preds = %for.body.i.i968.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

for.inc.i.i971.i:                                 ; preds = %for.body.i.i968.i
  %dec.i.i969.i = add nsw i32 %shift.014.i.i963.i, -1
  %cmp.not.i.i970.i = icmp eq i32 %dec.i.i969.i, 0
  br i1 %cmp.not.i.i970.i, label %for.inc.i.i971.i.if.end113.i_crit_edge, label %for.inc.i.i971.i.for.body.i.i968.i_crit_edge

for.inc.i.i971.i.for.body.i.i968.i_crit_edge:     ; preds = %for.inc.i.i971.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i968.i

for.inc.i.i971.i.if.end113.i_crit_edge:           ; preds = %for.inc.i.i971.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

if.end113.i:                                      ; preds = %for.inc.i.i971.i.if.end113.i_crit_edge, %for.body.i.i968.i.if.end113.i_crit_edge, %for.inc.i.i919.i.if.end113.i_crit_edge, %for.body.i.i916.i.if.end113.i_crit_edge
  %shift.0.lcssa.i.i972.sink.i = phi i32 [ %shift.014.i.i963.i, %for.body.i.i968.i.if.end113.i_crit_edge ], [ 0, %for.inc.i.i971.i.if.end113.i_crit_edge ], [ %shift.014.i.i911.i, %for.body.i.i916.i.if.end113.i_crit_edge ], [ 0, %for.inc.i.i919.i.if.end113.i_crit_edge ]
  %.sink.i2596 = phi i64 [ %593, %for.body.i.i968.i.if.end113.i_crit_edge ], [ %593, %for.inc.i.i971.i.if.end113.i_crit_edge ], [ %add100.i, %for.body.i.i916.i.if.end113.i_crit_edge ], [ %add100.i, %for.inc.i.i919.i.if.end113.i_crit_edge ]
  %spec.select.i960.sink.i = phi i64 [ %spec.select.i960.i, %for.body.i.i968.i.if.end113.i_crit_edge ], [ %spec.select.i960.i, %for.inc.i.i971.i.if.end113.i_crit_edge ], [ %add105.i, %for.body.i.i916.i.if.end113.i_crit_edge ], [ %add105.i, %for.inc.i.i919.i.if.end113.i_crit_edge ]
  %sub.i973.i = sub i32 62, %shift.0.lcssa.i.i972.sink.i
  %sh_prom.i974.i = zext i32 %sub.i973.i to i64
  %shl.i975.i = shl i64 %.sink.i2596, %sh_prom.i974.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i973.i)
  %cmp.i976.i = icmp ult i32 %sub.i973.i, 32
  %sub1.i977.i = add i32 %shift.0.lcssa.i.i972.sink.i, -30
  %narrow.i978.i = select i1 %cmp.i976.i, i32 %sub1.i977.i, i32 0
  %shr.i979.i = zext i32 %narrow.i978.i to i64
  %b.addr.0.i980.i = ashr i64 %spec.select.i960.sink.i, %shr.i979.i
  %call3.i981.i = call i64 @div64_s64(i64 noundef %shl.i975.i, i64 noundef %b.addr.0.i980.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i973.i)
  %cmp4.i982.i = icmp ugt i32 %sub.i973.i, 32
  %sub6.i983.i = sub i32 30, %shift.0.lcssa.i.i972.sink.i
  %narrow19.i984.i = select i1 %cmp4.i982.i, i32 %sub6.i983.i, i32 0
  %shr8.i985.i = zext i32 %narrow19.i984.i to i64
  %retval.0.i986.i = ashr i64 %call3.i981.i, %shr8.i985.i
  %594 = ptrtoint ptr %effective_valid_fp.i to i32
  call void @__asan_store8_noabort(i32 %594)
  store i64 %retval.0.i986.i, ptr %effective_valid_fp.i, align 8
  %595 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %tu_size, align 8
  %597 = call i32 @llvm.abs.i32(i32 %596, i1 false) #7
  %598 = zext i32 %597 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i989.i) #7
  %599 = ptrtoint ptr %rem.i989.i to i32
  call void @__asan_store8_noabort(i32 %599)
  store i64 -1, ptr %rem.i989.i, align 8, !annotation !176
  %call.i990.i = call i64 @div64_u64_rem(i64 noundef %598, i64 noundef 1, ptr noundef nonnull %rem.i989.i) #7
  %600 = ptrtoint ptr %rem.i989.i to i32
  call void @__asan_load8_noabort(i32 %600)
  %rem.promoted.i991.i = load i64, ptr %rem.i989.i, align 8
  br label %do.body.i1005.i

do.body.i1005.i:                                  ; preds = %do.body.i1005.i.do.body.i1005.i_crit_edge, %if.end113.i
  %storemerge40.i992.i = phi i64 [ %rem.promoted.i991.i, %if.end113.i ], [ %storemerge.i999.i, %do.body.i1005.i.do.body.i1005.i_crit_edge ]
  %res_abs.0.i993.i = phi i64 [ %call.i990.i, %if.end113.i ], [ %res_abs.1.i1002.i, %do.body.i1005.i.do.body.i1005.i_crit_edge ]
  %i.0.i994.i = phi i32 [ 32, %if.end113.i ], [ %dec.i1003.i, %do.body.i1005.i.do.body.i1005.i_crit_edge ]
  %shl.i995.i = shl i64 %storemerge40.i992.i, 1
  %shl9.i996.i = shl i64 %res_abs.0.i993.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i995.i)
  %cmp10.not.i997.i = icmp ne i64 %shl.i995.i, 0
  %sub11.i998.neg.i = sext i1 %cmp10.not.i997.i to i64
  %storemerge.i999.i = add i64 %shl.i995.i, %sub11.i998.neg.i
  %or.i1001.i = zext i1 %cmp10.not.i997.i to i64
  %res_abs.1.i1002.i = or i64 %shl9.i996.i, %or.i1001.i
  %dec.i1003.i = add nsw i32 %i.0.i994.i, -1
  %cmp12.not.i1004.i = icmp eq i32 %dec.i1003.i, 0
  br i1 %cmp12.not.i1004.i, label %drm_fixp_from_fraction.exit1013.i, label %do.body.i1005.i.do.body.i1005.i_crit_edge

do.body.i1005.i.do.body.i1005.i_crit_edge:        ; preds = %do.body.i1005.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1005.i

drm_fixp_from_fraction.exit1013.i:                ; preds = %do.body.i1005.i
  %shl13.i1006.mask.i = and i64 %storemerge.i999.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1006.mask.i)
  %cmp14.i1007.i = icmp ne i64 %shl13.i1006.mask.i, 0
  %601 = zext i1 %cmp14.i1007.i to i64
  %add.i1008.i = add i64 %res_abs.1.i1002.i, %601
  %sub22.i1010.i = sub i64 0, %add.i1008.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %596)
  %tobool20.not39.i1011.i = icmp slt i32 %596, 0
  %spec.select.i1012.i = select i1 %tobool20.not39.i1011.i, i64 %sub22.i1010.i, i64 %add.i1008.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i989.i) #7
  %602 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %602)
  %603 = load i64, ptr %ratio_fp, align 8
  %shr12.i.i1014.i = lshr i64 %603, 63
  br label %for.body.i.i1020.i

for.body.i.i1020.i:                               ; preds = %for.inc.i.i1023.i.for.body.i.i1020.i_crit_edge, %drm_fixp_from_fraction.exit1013.i
  %shift.014.i.i1015.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1013.i ], [ %dec.i.i1021.i, %for.inc.i.i1023.i.for.body.i.i1020.i_crit_edge ]
  %sh_prom.i.i1016.i = zext i32 %shift.014.i.i1015.i to i64
  %shr213.i.i1017.i = lshr i64 %603, %sh_prom.i.i1016.i
  %and3.i.i1018.i = and i64 %shr213.i.i1017.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1018.i, i64 %shr12.i.i1014.i)
  %cmp5.not.i.i1019.i = icmp eq i64 %and3.i.i1018.i, %shr12.i.i1014.i
  br i1 %cmp5.not.i.i1019.i, label %for.inc.i.i1023.i, label %for.body.i.i1020.i.drm_fixp_msbset.exit.i1026.i_crit_edge

for.body.i.i1020.i.drm_fixp_msbset.exit.i1026.i_crit_edge: ; preds = %for.body.i.i1020.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1026.i

for.inc.i.i1023.i:                                ; preds = %for.body.i.i1020.i
  %dec.i.i1021.i = add nsw i32 %shift.014.i.i1015.i, -1
  %cmp.not.i.i1022.i = icmp eq i32 %dec.i.i1021.i, 0
  br i1 %cmp.not.i.i1022.i, label %for.inc.i.i1023.i.drm_fixp_msbset.exit.i1026.i_crit_edge, label %for.inc.i.i1023.i.for.body.i.i1020.i_crit_edge

for.inc.i.i1023.i.for.body.i.i1020.i_crit_edge:   ; preds = %for.inc.i.i1023.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1020.i

for.inc.i.i1023.i.drm_fixp_msbset.exit.i1026.i_crit_edge: ; preds = %for.inc.i.i1023.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1026.i

drm_fixp_msbset.exit.i1026.i:                     ; preds = %for.inc.i.i1023.i.drm_fixp_msbset.exit.i1026.i_crit_edge, %for.body.i.i1020.i.drm_fixp_msbset.exit.i1026.i_crit_edge
  %shift.0.lcssa.i.i1024.i = phi i32 [ 0, %for.inc.i.i1023.i.drm_fixp_msbset.exit.i1026.i_crit_edge ], [ %shift.014.i.i1015.i, %for.body.i.i1020.i.drm_fixp_msbset.exit.i1026.i_crit_edge ]
  %shr12.i33.i1025.i = lshr i64 %spec.select.i1012.i, 63
  br label %for.body.i39.i1032.i

for.body.i39.i1032.i:                             ; preds = %for.inc.i42.i1035.i.for.body.i39.i1032.i_crit_edge, %drm_fixp_msbset.exit.i1026.i
  %shift.014.i34.i1027.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1026.i ], [ %dec.i40.i1033.i, %for.inc.i42.i1035.i.for.body.i39.i1032.i_crit_edge ]
  %sh_prom.i35.i1028.i = zext i32 %shift.014.i34.i1027.i to i64
  %shr213.i36.i1029.i = lshr i64 %spec.select.i1012.i, %sh_prom.i35.i1028.i
  %and3.i37.i1030.i = and i64 %shr213.i36.i1029.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1030.i, i64 %shr12.i33.i1025.i)
  %cmp5.not.i38.i1031.i = icmp eq i64 %and3.i37.i1030.i, %shr12.i33.i1025.i
  br i1 %cmp5.not.i38.i1031.i, label %for.inc.i42.i1035.i, label %for.body.i39.i1032.i.drm_fixp_msbset.exit44.i1039.i_crit_edge

for.body.i39.i1032.i.drm_fixp_msbset.exit44.i1039.i_crit_edge: ; preds = %for.body.i39.i1032.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1039.i

for.inc.i42.i1035.i:                              ; preds = %for.body.i39.i1032.i
  %dec.i40.i1033.i = add nsw i32 %shift.014.i34.i1027.i, -1
  %cmp.not.i41.i1034.i = icmp eq i32 %dec.i40.i1033.i, 0
  br i1 %cmp.not.i41.i1034.i, label %for.inc.i42.i1035.i.drm_fixp_msbset.exit44.i1039.i_crit_edge, label %for.inc.i42.i1035.i.for.body.i39.i1032.i_crit_edge

for.inc.i42.i1035.i.for.body.i39.i1032.i_crit_edge: ; preds = %for.inc.i42.i1035.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1032.i

for.inc.i42.i1035.i.drm_fixp_msbset.exit44.i1039.i_crit_edge: ; preds = %for.inc.i42.i1035.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1039.i

drm_fixp_msbset.exit44.i1039.i:                   ; preds = %for.inc.i42.i1035.i.drm_fixp_msbset.exit44.i1039.i_crit_edge, %for.body.i39.i1032.i.drm_fixp_msbset.exit44.i1039.i_crit_edge
  %shift.0.lcssa.i43.i1036.i = phi i32 [ 0, %for.inc.i42.i1035.i.drm_fixp_msbset.exit44.i1039.i_crit_edge ], [ %shift.014.i34.i1027.i, %for.body.i39.i1032.i.drm_fixp_msbset.exit44.i1039.i_crit_edge ]
  %add.i1037.i = add i32 %shift.0.lcssa.i43.i1036.i, %shift.0.lcssa.i.i1024.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1037.i)
  %cmp.i1038.i = icmp ugt i32 %add.i1037.i, 61
  br i1 %cmp.i1038.i, label %if.end.i1052.i, label %if.end11.thread.i1041.i

if.end11.thread.i1041.i:                          ; preds = %drm_fixp_msbset.exit44.i1039.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1040.i = mul i64 %603, %spec.select.i1012.i
  br label %if.then13.i1064.i

if.end.i1052.i:                                   ; preds = %drm_fixp_msbset.exit44.i1039.i
  %sub.i1042.i = add i32 %add.i1037.i, -61
  %shr.i1043.i = lshr i32 %sub.i1042.i, 1
  %and.i1044.i = and i32 %sub.i1042.i, 1
  %add2.i1045.i = add nuw nsw i32 %shr.i1043.i, %and.i1044.i
  %sh_prom.i1046.i = zext i32 %add2.i1045.i to i64
  %shr3.i1047.i = ashr i64 %603, %sh_prom.i1046.i
  %sh_prom5.i1048.i = zext i32 %shr.i1043.i to i64
  %shr6.i1049.i = ashr i64 %spec.select.i1012.i, %sh_prom5.i1048.i
  %mul.i1050.i = mul i64 %shr3.i1047.i, %shr6.i1049.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1042.i)
  %cmp7.i1051.i = icmp ugt i32 %sub.i1042.i, 32
  br i1 %cmp7.i1051.i, label %if.then8.i1056.i, label %if.end11.i1058.i

if.then8.i1056.i:                                 ; preds = %if.end.i1052.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1053.i = add i32 %add.i1037.i, -93
  %sh_prom10.i1054.i = zext i32 %sub9.i1053.i to i64
  %shl.i1055.i = shl i64 %mul.i1050.i, %sh_prom10.i1054.i
  br label %drm_fixp_mul.exit1066.i

if.end11.i1058.i:                                 ; preds = %if.end.i1052.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1042.i)
  %cmp12.not.i1057.i = icmp eq i32 %sub.i1042.i, 32
  br i1 %cmp12.not.i1057.i, label %if.end11.i1058.i.drm_fixp_mul.exit1066.i_crit_edge, label %if.end11.i1058.i.if.then13.i1064.i_crit_edge

if.end11.i1058.i.if.then13.i1064.i_crit_edge:     ; preds = %if.end11.i1058.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1064.i

if.end11.i1058.i.drm_fixp_mul.exit1066.i_crit_edge: ; preds = %if.end11.i1058.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1066.i

if.then13.i1064.i:                                ; preds = %if.end11.i1058.i.if.then13.i1064.i_crit_edge, %if.end11.thread.i1041.i
  %shift.05056.i1059.i = phi i32 [ 0, %if.end11.thread.i1041.i ], [ %sub.i1042.i, %if.end11.i1058.i.if.then13.i1064.i_crit_edge ]
  %mul5155.i1060.i = phi i64 [ %mul48.i1040.i, %if.end11.thread.i1041.i ], [ %mul.i1050.i, %if.end11.i1058.i.if.then13.i1064.i_crit_edge ]
  %sub14.i1061.i = sub nuw nsw i32 32, %shift.05056.i1059.i
  %sh_prom15.i1062.i = zext i32 %sub14.i1061.i to i64
  %shr16.i1063.i = ashr i64 %mul5155.i1060.i, %sh_prom15.i1062.i
  br label %drm_fixp_mul.exit1066.i

drm_fixp_mul.exit1066.i:                          ; preds = %if.then13.i1064.i, %if.end11.i1058.i.drm_fixp_mul.exit1066.i_crit_edge, %if.then8.i1056.i
  %retval.0.i1065.i = phi i64 [ %shl.i1055.i, %if.then8.i1056.i ], [ %shr16.i1063.i, %if.then13.i1064.i ], [ %mul.i1050.i, %if.end11.i1058.i.drm_fixp_mul.exit1066.i_crit_edge ]
  %604 = ptrtoint ptr %effective_valid_fp.i to i32
  call void @__asan_load8_noabort(i32 %604)
  %605 = load i64, ptr %effective_valid_fp.i, align 8
  %sub120.i = sub i64 %605, %retval.0.i1065.i
  %606 = ptrtoint ptr %n_n_err_fp to i32
  call void @__asan_store8_noabort(i32 %606)
  store i64 %sub120.i, ptr %n_n_err_fp, align 8
  %607 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %tu_size, align 8
  %609 = call i32 @llvm.abs.i32(i32 %608, i1 false) #7
  %610 = zext i32 %609 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1067.i) #7
  %611 = ptrtoint ptr %rem.i1067.i to i32
  call void @__asan_store8_noabort(i32 %611)
  store i64 -1, ptr %rem.i1067.i, align 8, !annotation !176
  %call.i1068.i = call i64 @div64_u64_rem(i64 noundef %610, i64 noundef 1, ptr noundef nonnull %rem.i1067.i) #7
  %612 = ptrtoint ptr %rem.i1067.i to i32
  call void @__asan_load8_noabort(i32 %612)
  %rem.promoted.i1069.i = load i64, ptr %rem.i1067.i, align 8
  br label %do.body.i1083.i

do.body.i1083.i:                                  ; preds = %do.body.i1083.i.do.body.i1083.i_crit_edge, %drm_fixp_mul.exit1066.i
  %storemerge40.i1070.i = phi i64 [ %rem.promoted.i1069.i, %drm_fixp_mul.exit1066.i ], [ %storemerge.i1077.i, %do.body.i1083.i.do.body.i1083.i_crit_edge ]
  %res_abs.0.i1071.i = phi i64 [ %call.i1068.i, %drm_fixp_mul.exit1066.i ], [ %res_abs.1.i1080.i, %do.body.i1083.i.do.body.i1083.i_crit_edge ]
  %i.0.i1072.i = phi i32 [ 32, %drm_fixp_mul.exit1066.i ], [ %dec.i1081.i, %do.body.i1083.i.do.body.i1083.i_crit_edge ]
  %shl.i1073.i = shl i64 %storemerge40.i1070.i, 1
  %shl9.i1074.i = shl i64 %res_abs.0.i1071.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1073.i)
  %cmp10.not.i1075.i = icmp ne i64 %shl.i1073.i, 0
  %sub11.i1076.neg.i = sext i1 %cmp10.not.i1075.i to i64
  %storemerge.i1077.i = add i64 %shl.i1073.i, %sub11.i1076.neg.i
  %or.i1079.i = zext i1 %cmp10.not.i1075.i to i64
  %res_abs.1.i1080.i = or i64 %shl9.i1074.i, %or.i1079.i
  %dec.i1081.i = add nsw i32 %i.0.i1072.i, -1
  %cmp12.not.i1082.i = icmp eq i32 %dec.i1081.i, 0
  br i1 %cmp12.not.i1082.i, label %drm_fixp_from_fraction.exit1091.i, label %do.body.i1083.i.do.body.i1083.i_crit_edge

do.body.i1083.i.do.body.i1083.i_crit_edge:        ; preds = %do.body.i1083.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1083.i

drm_fixp_from_fraction.exit1091.i:                ; preds = %do.body.i1083.i
  %shl13.i1084.mask.i = and i64 %storemerge.i1077.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1084.mask.i)
  %cmp14.i1085.i = icmp ne i64 %shl13.i1084.mask.i, 0
  %613 = zext i1 %cmp14.i1085.i to i64
  %add.i1086.i = add i64 %res_abs.1.i1080.i, %613
  %sub22.i1088.i = sub i64 0, %add.i1086.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %608)
  %tobool20.not39.i1089.i = icmp slt i32 %608, 0
  %spec.select.i1090.i = select i1 %tobool20.not39.i1089.i, i64 %sub22.i1088.i, i64 %add.i1086.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1067.i) #7
  %614 = ptrtoint ptr %ratio_fp to i32
  call void @__asan_load8_noabort(i32 %614)
  %615 = load i64, ptr %ratio_fp, align 8
  %shr12.i.i1092.i = lshr i64 %615, 63
  br label %for.body.i.i1098.i

for.body.i.i1098.i:                               ; preds = %for.inc.i.i1101.i.for.body.i.i1098.i_crit_edge, %drm_fixp_from_fraction.exit1091.i
  %shift.014.i.i1093.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1091.i ], [ %dec.i.i1099.i, %for.inc.i.i1101.i.for.body.i.i1098.i_crit_edge ]
  %sh_prom.i.i1094.i = zext i32 %shift.014.i.i1093.i to i64
  %shr213.i.i1095.i = lshr i64 %615, %sh_prom.i.i1094.i
  %and3.i.i1096.i = and i64 %shr213.i.i1095.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1096.i, i64 %shr12.i.i1092.i)
  %cmp5.not.i.i1097.i = icmp eq i64 %and3.i.i1096.i, %shr12.i.i1092.i
  br i1 %cmp5.not.i.i1097.i, label %for.inc.i.i1101.i, label %for.body.i.i1098.i.drm_fixp_msbset.exit.i1104.i_crit_edge

for.body.i.i1098.i.drm_fixp_msbset.exit.i1104.i_crit_edge: ; preds = %for.body.i.i1098.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1104.i

for.inc.i.i1101.i:                                ; preds = %for.body.i.i1098.i
  %dec.i.i1099.i = add nsw i32 %shift.014.i.i1093.i, -1
  %cmp.not.i.i1100.i = icmp eq i32 %dec.i.i1099.i, 0
  br i1 %cmp.not.i.i1100.i, label %for.inc.i.i1101.i.drm_fixp_msbset.exit.i1104.i_crit_edge, label %for.inc.i.i1101.i.for.body.i.i1098.i_crit_edge

for.inc.i.i1101.i.for.body.i.i1098.i_crit_edge:   ; preds = %for.inc.i.i1101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1098.i

for.inc.i.i1101.i.drm_fixp_msbset.exit.i1104.i_crit_edge: ; preds = %for.inc.i.i1101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1104.i

drm_fixp_msbset.exit.i1104.i:                     ; preds = %for.inc.i.i1101.i.drm_fixp_msbset.exit.i1104.i_crit_edge, %for.body.i.i1098.i.drm_fixp_msbset.exit.i1104.i_crit_edge
  %shift.0.lcssa.i.i1102.i = phi i32 [ 0, %for.inc.i.i1101.i.drm_fixp_msbset.exit.i1104.i_crit_edge ], [ %shift.014.i.i1093.i, %for.body.i.i1098.i.drm_fixp_msbset.exit.i1104.i_crit_edge ]
  %shr12.i33.i1103.i = lshr i64 %spec.select.i1090.i, 63
  br label %for.body.i39.i1110.i

for.body.i39.i1110.i:                             ; preds = %for.inc.i42.i1113.i.for.body.i39.i1110.i_crit_edge, %drm_fixp_msbset.exit.i1104.i
  %shift.014.i34.i1105.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1104.i ], [ %dec.i40.i1111.i, %for.inc.i42.i1113.i.for.body.i39.i1110.i_crit_edge ]
  %sh_prom.i35.i1106.i = zext i32 %shift.014.i34.i1105.i to i64
  %shr213.i36.i1107.i = lshr i64 %spec.select.i1090.i, %sh_prom.i35.i1106.i
  %and3.i37.i1108.i = and i64 %shr213.i36.i1107.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1108.i, i64 %shr12.i33.i1103.i)
  %cmp5.not.i38.i1109.i = icmp eq i64 %and3.i37.i1108.i, %shr12.i33.i1103.i
  br i1 %cmp5.not.i38.i1109.i, label %for.inc.i42.i1113.i, label %for.body.i39.i1110.i.drm_fixp_msbset.exit44.i1117.i_crit_edge

for.body.i39.i1110.i.drm_fixp_msbset.exit44.i1117.i_crit_edge: ; preds = %for.body.i39.i1110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1117.i

for.inc.i42.i1113.i:                              ; preds = %for.body.i39.i1110.i
  %dec.i40.i1111.i = add nsw i32 %shift.014.i34.i1105.i, -1
  %cmp.not.i41.i1112.i = icmp eq i32 %dec.i40.i1111.i, 0
  br i1 %cmp.not.i41.i1112.i, label %for.inc.i42.i1113.i.drm_fixp_msbset.exit44.i1117.i_crit_edge, label %for.inc.i42.i1113.i.for.body.i39.i1110.i_crit_edge

for.inc.i42.i1113.i.for.body.i39.i1110.i_crit_edge: ; preds = %for.inc.i42.i1113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1110.i

for.inc.i42.i1113.i.drm_fixp_msbset.exit44.i1117.i_crit_edge: ; preds = %for.inc.i42.i1113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1117.i

drm_fixp_msbset.exit44.i1117.i:                   ; preds = %for.inc.i42.i1113.i.drm_fixp_msbset.exit44.i1117.i_crit_edge, %for.body.i39.i1110.i.drm_fixp_msbset.exit44.i1117.i_crit_edge
  %shift.0.lcssa.i43.i1114.i = phi i32 [ 0, %for.inc.i42.i1113.i.drm_fixp_msbset.exit44.i1117.i_crit_edge ], [ %shift.014.i34.i1105.i, %for.body.i39.i1110.i.drm_fixp_msbset.exit44.i1117.i_crit_edge ]
  %add.i1115.i = add i32 %shift.0.lcssa.i43.i1114.i, %shift.0.lcssa.i.i1102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1115.i)
  %cmp.i1116.i = icmp ugt i32 %add.i1115.i, 61
  br i1 %cmp.i1116.i, label %if.end.i1130.i, label %if.end11.thread.i1119.i

if.end11.thread.i1119.i:                          ; preds = %drm_fixp_msbset.exit44.i1117.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1118.i = mul i64 %615, %spec.select.i1090.i
  br label %if.then13.i1142.i

if.end.i1130.i:                                   ; preds = %drm_fixp_msbset.exit44.i1117.i
  %sub.i1120.i = add i32 %add.i1115.i, -61
  %shr.i1121.i = lshr i32 %sub.i1120.i, 1
  %and.i1122.i = and i32 %sub.i1120.i, 1
  %add2.i1123.i = add nuw nsw i32 %shr.i1121.i, %and.i1122.i
  %sh_prom.i1124.i = zext i32 %add2.i1123.i to i64
  %shr3.i1125.i = ashr i64 %615, %sh_prom.i1124.i
  %sh_prom5.i1126.i = zext i32 %shr.i1121.i to i64
  %shr6.i1127.i = ashr i64 %spec.select.i1090.i, %sh_prom5.i1126.i
  %mul.i1128.i = mul i64 %shr3.i1125.i, %shr6.i1127.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1120.i)
  %cmp7.i1129.i = icmp ugt i32 %sub.i1120.i, 32
  br i1 %cmp7.i1129.i, label %if.then8.i1134.i, label %if.end11.i1136.i

if.then8.i1134.i:                                 ; preds = %if.end.i1130.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1131.i = add i32 %add.i1115.i, -93
  %sh_prom10.i1132.i = zext i32 %sub9.i1131.i to i64
  %shl.i1133.i = shl i64 %mul.i1128.i, %sh_prom10.i1132.i
  br label %drm_fixp_mul.exit1144.i

if.end11.i1136.i:                                 ; preds = %if.end.i1130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1120.i)
  %cmp12.not.i1135.i = icmp eq i32 %sub.i1120.i, 32
  br i1 %cmp12.not.i1135.i, label %if.end11.i1136.i.drm_fixp_mul.exit1144.i_crit_edge, label %if.end11.i1136.i.if.then13.i1142.i_crit_edge

if.end11.i1136.i.if.then13.i1142.i_crit_edge:     ; preds = %if.end11.i1136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1142.i

if.end11.i1136.i.drm_fixp_mul.exit1144.i_crit_edge: ; preds = %if.end11.i1136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1144.i

if.then13.i1142.i:                                ; preds = %if.end11.i1136.i.if.then13.i1142.i_crit_edge, %if.end11.thread.i1119.i
  %shift.05056.i1137.i = phi i32 [ 0, %if.end11.thread.i1119.i ], [ %sub.i1120.i, %if.end11.i1136.i.if.then13.i1142.i_crit_edge ]
  %mul5155.i1138.i = phi i64 [ %mul48.i1118.i, %if.end11.thread.i1119.i ], [ %mul.i1128.i, %if.end11.i1136.i.if.then13.i1142.i_crit_edge ]
  %sub14.i1139.i = sub nuw nsw i32 32, %shift.05056.i1137.i
  %sh_prom15.i1140.i = zext i32 %sub14.i1139.i to i64
  %shr16.i1141.i = ashr i64 %mul5155.i1138.i, %sh_prom15.i1140.i
  br label %drm_fixp_mul.exit1144.i

drm_fixp_mul.exit1144.i:                          ; preds = %if.then13.i1142.i, %if.end11.i1136.i.drm_fixp_mul.exit1144.i_crit_edge, %if.then8.i1134.i
  %retval.0.i1143.i = phi i64 [ %shl.i1133.i, %if.then8.i1134.i ], [ %shr16.i1141.i, %if.then13.i1142.i ], [ %mul.i1128.i, %if.end11.i1136.i.drm_fixp_mul.exit1144.i_crit_edge ]
  %616 = ptrtoint ptr %average_valid2_fp.i to i32
  call void @__asan_load8_noabort(i32 %616)
  %617 = load i64, ptr %average_valid2_fp.i, align 8
  %sub127.i = sub i64 %617, %retval.0.i1143.i
  %618 = ptrtoint ptr %n_err_fp to i32
  call void @__asan_store8_noabort(i32 %618)
  store i64 %sub127.i, ptr %n_err_fp, align 8
  %619 = ptrtoint ptr %n_tus to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %n_tus, align 8
  %621 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %nlanes4.i, align 8
  %rem.i2597 = srem i32 %620, %622
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i2597)
  %cmp130.i = icmp eq i32 %rem.i2597, 0
  %cond.i = zext i1 %cmp130.i to i32
  %623 = ptrtoint ptr %even_distribution to i32
  call void @__asan_store4_noabort(i32 %623)
  store i32 %cond.i, ptr %even_distribution, align 8
  %624 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %bpp5.i, align 4
  %626 = call i32 @llvm.abs.i32(i32 %625, i1 false) #7
  %627 = zext i32 %626 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1145.i) #7
  %628 = ptrtoint ptr %rem.i1145.i to i32
  call void @__asan_store8_noabort(i32 %628)
  store i64 -1, ptr %rem.i1145.i, align 8, !annotation !176
  %call.i1146.i = call i64 @div64_u64_rem(i64 noundef %627, i64 noundef 8, ptr noundef nonnull %rem.i1145.i) #7
  %629 = ptrtoint ptr %rem.i1145.i to i32
  call void @__asan_load8_noabort(i32 %629)
  %rem.promoted.i1147.i = load i64, ptr %rem.i1145.i, align 8
  br label %do.body.i1161.i

do.body.i1161.i:                                  ; preds = %do.body.i1161.i.do.body.i1161.i_crit_edge, %drm_fixp_mul.exit1144.i
  %storemerge40.i1148.i = phi i64 [ %rem.promoted.i1147.i, %drm_fixp_mul.exit1144.i ], [ %storemerge.i1155.i, %do.body.i1161.i.do.body.i1161.i_crit_edge ]
  %res_abs.0.i1149.i = phi i64 [ %call.i1146.i, %drm_fixp_mul.exit1144.i ], [ %res_abs.1.i1158.i, %do.body.i1161.i.do.body.i1161.i_crit_edge ]
  %i.0.i1150.i = phi i32 [ 32, %drm_fixp_mul.exit1144.i ], [ %dec.i1159.i, %do.body.i1161.i.do.body.i1161.i_crit_edge ]
  %shl.i1151.i = shl i64 %storemerge40.i1148.i, 1
  %shl9.i1152.i = shl i64 %res_abs.0.i1149.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %shl.i1151.i)
  %cmp10.not.i1153.i = icmp ult i64 %shl.i1151.i, 8
  %sub11.i1154.neg.i = select i1 %cmp10.not.i1153.i, i64 0, i64 -8
  %storemerge.i1155.i = add i64 %sub11.i1154.neg.i, %shl.i1151.i
  %not.cmp10.not.i1156.i = xor i1 %cmp10.not.i1153.i, true
  %or.i1157.i = zext i1 %not.cmp10.not.i1156.i to i64
  %res_abs.1.i1158.i = or i64 %shl9.i1152.i, %or.i1157.i
  %dec.i1159.i = add nsw i32 %i.0.i1150.i, -1
  %cmp12.not.i1160.i = icmp eq i32 %dec.i1159.i, 0
  br i1 %cmp12.not.i1160.i, label %drm_fixp_from_fraction.exit1169.i, label %do.body.i1161.i.do.body.i1161.i_crit_edge

do.body.i1161.i.do.body.i1161.i_crit_edge:        ; preds = %do.body.i1161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1161.i

drm_fixp_from_fraction.exit1169.i:                ; preds = %do.body.i1161.i
  %630 = and i64 %storemerge.i1155.i, 9223372036854775804
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %630)
  %cmp14.i1163.i = icmp ne i64 %630, 0
  %631 = zext i1 %cmp14.i1163.i to i64
  %add.i1164.i = add i64 %res_abs.1.i1158.i, %631
  %sub22.i1166.i = sub i64 0, %add.i1164.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %625)
  %tobool20.not39.i1167.i = icmp slt i32 %625, 0
  %spec.select.i1168.i = select i1 %tobool20.not39.i1167.i, i64 %sub22.i1166.i, i64 %add.i1164.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1145.i) #7
  %632 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %632)
  %633 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i1170.i = lshr i64 %633, 63
  br label %for.body.i.i1176.i

for.body.i.i1176.i:                               ; preds = %for.inc.i.i1179.i.for.body.i.i1176.i_crit_edge, %drm_fixp_from_fraction.exit1169.i
  %shift.014.i.i1171.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1169.i ], [ %dec.i.i1177.i, %for.inc.i.i1179.i.for.body.i.i1176.i_crit_edge ]
  %sh_prom.i.i1172.i = zext i32 %shift.014.i.i1171.i to i64
  %shr213.i.i1173.i = lshr i64 %633, %sh_prom.i.i1172.i
  %and3.i.i1174.i = and i64 %shr213.i.i1173.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1174.i, i64 %shr12.i.i1170.i)
  %cmp5.not.i.i1175.i = icmp eq i64 %and3.i.i1174.i, %shr12.i.i1170.i
  br i1 %cmp5.not.i.i1175.i, label %for.inc.i.i1179.i, label %for.body.i.i1176.i.drm_fixp_msbset.exit.i1182.i_crit_edge

for.body.i.i1176.i.drm_fixp_msbset.exit.i1182.i_crit_edge: ; preds = %for.body.i.i1176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1182.i

for.inc.i.i1179.i:                                ; preds = %for.body.i.i1176.i
  %dec.i.i1177.i = add nsw i32 %shift.014.i.i1171.i, -1
  %cmp.not.i.i1178.i = icmp eq i32 %dec.i.i1177.i, 0
  br i1 %cmp.not.i.i1178.i, label %for.inc.i.i1179.i.drm_fixp_msbset.exit.i1182.i_crit_edge, label %for.inc.i.i1179.i.for.body.i.i1176.i_crit_edge

for.inc.i.i1179.i.for.body.i.i1176.i_crit_edge:   ; preds = %for.inc.i.i1179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1176.i

for.inc.i.i1179.i.drm_fixp_msbset.exit.i1182.i_crit_edge: ; preds = %for.inc.i.i1179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1182.i

drm_fixp_msbset.exit.i1182.i:                     ; preds = %for.inc.i.i1179.i.drm_fixp_msbset.exit.i1182.i_crit_edge, %for.body.i.i1176.i.drm_fixp_msbset.exit.i1182.i_crit_edge
  %shift.0.lcssa.i.i1180.i = phi i32 [ 0, %for.inc.i.i1179.i.drm_fixp_msbset.exit.i1182.i_crit_edge ], [ %shift.014.i.i1171.i, %for.body.i.i1176.i.drm_fixp_msbset.exit.i1182.i_crit_edge ]
  %shr12.i33.i1181.i = lshr i64 %spec.select.i1168.i, 63
  br label %for.body.i39.i1188.i

for.body.i39.i1188.i:                             ; preds = %for.inc.i42.i1191.i.for.body.i39.i1188.i_crit_edge, %drm_fixp_msbset.exit.i1182.i
  %shift.014.i34.i1183.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1182.i ], [ %dec.i40.i1189.i, %for.inc.i42.i1191.i.for.body.i39.i1188.i_crit_edge ]
  %sh_prom.i35.i1184.i = zext i32 %shift.014.i34.i1183.i to i64
  %shr213.i36.i1185.i = lshr i64 %spec.select.i1168.i, %sh_prom.i35.i1184.i
  %and3.i37.i1186.i = and i64 %shr213.i36.i1185.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1186.i, i64 %shr12.i33.i1181.i)
  %cmp5.not.i38.i1187.i = icmp eq i64 %and3.i37.i1186.i, %shr12.i33.i1181.i
  br i1 %cmp5.not.i38.i1187.i, label %for.inc.i42.i1191.i, label %for.body.i39.i1188.i.drm_fixp_msbset.exit44.i1195.i_crit_edge

for.body.i39.i1188.i.drm_fixp_msbset.exit44.i1195.i_crit_edge: ; preds = %for.body.i39.i1188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1195.i

for.inc.i42.i1191.i:                              ; preds = %for.body.i39.i1188.i
  %dec.i40.i1189.i = add nsw i32 %shift.014.i34.i1183.i, -1
  %cmp.not.i41.i1190.i = icmp eq i32 %dec.i40.i1189.i, 0
  br i1 %cmp.not.i41.i1190.i, label %for.inc.i42.i1191.i.drm_fixp_msbset.exit44.i1195.i_crit_edge, label %for.inc.i42.i1191.i.for.body.i39.i1188.i_crit_edge

for.inc.i42.i1191.i.for.body.i39.i1188.i_crit_edge: ; preds = %for.inc.i42.i1191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1188.i

for.inc.i42.i1191.i.drm_fixp_msbset.exit44.i1195.i_crit_edge: ; preds = %for.inc.i42.i1191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1195.i

drm_fixp_msbset.exit44.i1195.i:                   ; preds = %for.inc.i42.i1191.i.drm_fixp_msbset.exit44.i1195.i_crit_edge, %for.body.i39.i1188.i.drm_fixp_msbset.exit44.i1195.i_crit_edge
  %shift.0.lcssa.i43.i1192.i = phi i32 [ 0, %for.inc.i42.i1191.i.drm_fixp_msbset.exit44.i1195.i_crit_edge ], [ %shift.014.i34.i1183.i, %for.body.i39.i1188.i.drm_fixp_msbset.exit44.i1195.i_crit_edge ]
  %add.i1193.i = add i32 %shift.0.lcssa.i43.i1192.i, %shift.0.lcssa.i.i1180.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1193.i)
  %cmp.i1194.i = icmp ugt i32 %add.i1193.i, 61
  br i1 %cmp.i1194.i, label %if.end.i1208.i, label %if.end11.thread.i1197.i

if.end11.thread.i1197.i:                          ; preds = %drm_fixp_msbset.exit44.i1195.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1196.i = mul i64 %633, %spec.select.i1168.i
  br label %if.then13.i1220.i

if.end.i1208.i:                                   ; preds = %drm_fixp_msbset.exit44.i1195.i
  %sub.i1198.i = add i32 %add.i1193.i, -61
  %shr.i1199.i = lshr i32 %sub.i1198.i, 1
  %and.i1200.i = and i32 %sub.i1198.i, 1
  %add2.i1201.i = add nuw nsw i32 %shr.i1199.i, %and.i1200.i
  %sh_prom.i1202.i = zext i32 %add2.i1201.i to i64
  %shr3.i1203.i = ashr i64 %633, %sh_prom.i1202.i
  %sh_prom5.i1204.i = zext i32 %shr.i1199.i to i64
  %shr6.i1205.i = ashr i64 %spec.select.i1168.i, %sh_prom5.i1204.i
  %mul.i1206.i = mul i64 %shr3.i1203.i, %shr6.i1205.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1198.i)
  %cmp7.i1207.i = icmp ugt i32 %sub.i1198.i, 32
  br i1 %cmp7.i1207.i, label %if.then8.i1212.i, label %if.end11.i1214.i

if.then8.i1212.i:                                 ; preds = %if.end.i1208.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1209.i = add i32 %add.i1193.i, -93
  %sh_prom10.i1210.i = zext i32 %sub9.i1209.i to i64
  %shl.i1211.i = shl i64 %mul.i1206.i, %sh_prom10.i1210.i
  br label %drm_fixp_mul.exit1222.i

if.end11.i1214.i:                                 ; preds = %if.end.i1208.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1198.i)
  %cmp12.not.i1213.i = icmp eq i32 %sub.i1198.i, 32
  br i1 %cmp12.not.i1213.i, label %if.end11.i1214.i.drm_fixp_mul.exit1222.i_crit_edge, label %if.end11.i1214.i.if.then13.i1220.i_crit_edge

if.end11.i1214.i.if.then13.i1220.i_crit_edge:     ; preds = %if.end11.i1214.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1220.i

if.end11.i1214.i.drm_fixp_mul.exit1222.i_crit_edge: ; preds = %if.end11.i1214.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1222.i

if.then13.i1220.i:                                ; preds = %if.end11.i1214.i.if.then13.i1220.i_crit_edge, %if.end11.thread.i1197.i
  %shift.05056.i1215.i = phi i32 [ 0, %if.end11.thread.i1197.i ], [ %sub.i1198.i, %if.end11.i1214.i.if.then13.i1220.i_crit_edge ]
  %mul5155.i1216.i = phi i64 [ %mul48.i1196.i, %if.end11.thread.i1197.i ], [ %mul.i1206.i, %if.end11.i1214.i.if.then13.i1220.i_crit_edge ]
  %sub14.i1217.i = sub nuw nsw i32 32, %shift.05056.i1215.i
  %sh_prom15.i1218.i = zext i32 %sub14.i1217.i to i64
  %shr16.i1219.i = ashr i64 %mul5155.i1216.i, %sh_prom15.i1218.i
  br label %drm_fixp_mul.exit1222.i

drm_fixp_mul.exit1222.i:                          ; preds = %if.then13.i1220.i, %if.end11.i1214.i.drm_fixp_mul.exit1222.i_crit_edge, %if.then8.i1212.i
  %retval.0.i1221.i = phi i64 [ %shl.i1211.i, %if.then8.i1212.i ], [ %shr16.i1219.i, %if.then13.i1220.i ], [ %mul.i1206.i, %if.end11.i1214.i.drm_fixp_mul.exit1222.i_crit_edge ]
  %634 = ptrtoint ptr %average_valid2_fp.i to i32
  call void @__asan_load8_noabort(i32 %634)
  %635 = load i64, ptr %average_valid2_fp.i, align 8
  %shr12.i.i1223.i = lshr i64 %retval.0.i1221.i, 63
  br label %for.body.i.i1229.i

for.body.i.i1229.i:                               ; preds = %for.inc.i.i1232.i.for.body.i.i1229.i_crit_edge, %drm_fixp_mul.exit1222.i
  %shift.014.i.i1224.i = phi i32 [ 62, %drm_fixp_mul.exit1222.i ], [ %dec.i.i1230.i, %for.inc.i.i1232.i.for.body.i.i1229.i_crit_edge ]
  %sh_prom.i.i1225.i = zext i32 %shift.014.i.i1224.i to i64
  %shr213.i.i1226.i = lshr i64 %retval.0.i1221.i, %sh_prom.i.i1225.i
  %and3.i.i1227.i = and i64 %shr213.i.i1226.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1227.i, i64 %shr12.i.i1223.i)
  %cmp5.not.i.i1228.i = icmp eq i64 %and3.i.i1227.i, %shr12.i.i1223.i
  br i1 %cmp5.not.i.i1228.i, label %for.inc.i.i1232.i, label %for.body.i.i1229.i.drm_fixp_div.exit1249.i_crit_edge

for.body.i.i1229.i.drm_fixp_div.exit1249.i_crit_edge: ; preds = %for.body.i.i1229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1249.i

for.inc.i.i1232.i:                                ; preds = %for.body.i.i1229.i
  %dec.i.i1230.i = add nsw i32 %shift.014.i.i1224.i, -1
  %cmp.not.i.i1231.i = icmp eq i32 %dec.i.i1230.i, 0
  br i1 %cmp.not.i.i1231.i, label %for.inc.i.i1232.i.drm_fixp_div.exit1249.i_crit_edge, label %for.inc.i.i1232.i.for.body.i.i1229.i_crit_edge

for.inc.i.i1232.i.for.body.i.i1229.i_crit_edge:   ; preds = %for.inc.i.i1232.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1229.i

for.inc.i.i1232.i.drm_fixp_div.exit1249.i_crit_edge: ; preds = %for.inc.i.i1232.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1249.i

drm_fixp_div.exit1249.i:                          ; preds = %for.inc.i.i1232.i.drm_fixp_div.exit1249.i_crit_edge, %for.body.i.i1229.i.drm_fixp_div.exit1249.i_crit_edge
  %shift.0.lcssa.i.i1233.i = phi i32 [ 0, %for.inc.i.i1232.i.drm_fixp_div.exit1249.i_crit_edge ], [ %shift.014.i.i1224.i, %for.body.i.i1229.i.drm_fixp_div.exit1249.i_crit_edge ]
  %sub.i1234.i = sub i32 62, %shift.0.lcssa.i.i1233.i
  %sh_prom.i1235.i = zext i32 %sub.i1234.i to i64
  %shl.i1236.i = shl i64 %retval.0.i1221.i, %sh_prom.i1235.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1234.i)
  %cmp.i1237.i = icmp ult i32 %sub.i1234.i, 32
  %sub1.i1238.i = add i32 %shift.0.lcssa.i.i1233.i, -30
  %narrow.i1239.i = select i1 %cmp.i1237.i, i32 %sub1.i1238.i, i32 0
  %shr.i1240.i = zext i32 %narrow.i1239.i to i64
  %b.addr.0.i1241.i = ashr i64 %635, %shr.i1240.i
  %call3.i1242.i = call i64 @div64_s64(i64 noundef %shl.i1236.i, i64 noundef %b.addr.0.i1241.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1234.i)
  %cmp4.i1243.i = icmp ugt i32 %sub.i1234.i, 32
  %sub6.i1244.i = sub i32 30, %shift.0.lcssa.i.i1233.i
  %narrow19.i1245.i = select i1 %cmp4.i1243.i, i32 %sub6.i1244.i, i32 0
  %shr8.i1246.i = zext i32 %narrow19.i1245.i to i64
  %retval.0.i1247.i = ashr i64 %call3.i1242.i, %shr8.i1246.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1247.i)
  %tobool139.not.i = icmp eq i64 %retval.0.i1247.i, 0
  br i1 %tobool139.not.i, label %drm_fixp_div.exit1249.i.if.end144.i_crit_edge, label %if.then140.i

drm_fixp_div.exit1249.i.if.end144.i_crit_edge:    ; preds = %drm_fixp_div.exit1249.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144.i

if.then140.i:                                     ; preds = %drm_fixp_div.exit1249.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1247.i)
  %cmp.i1250.i = icmp sgt i64 %retval.0.i1247.i, 0
  %..i1251.i = select i1 %cmp.i1250.i, i64 4294967295, i64 -4294967295
  %sub.i1252.i = add i64 %..i1251.i, %retval.0.i1247.i
  %636 = lshr i64 %sub.i1252.i, 32
  %conv.i4.i1253.i = trunc i64 %636 to i32
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then140.i, %drm_fixp_div.exit1249.i.if.end144.i_crit_edge
  %conv.i4.i1253.sink.i = phi i32 [ %conv.i4.i1253.i, %if.then140.i ], [ 0, %drm_fixp_div.exit1249.i.if.end144.i_crit_edge ]
  %637 = ptrtoint ptr %436 to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 %conv.i4.i1253.sink.i, ptr %436, align 8
  %638 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %tu_size, align 8
  %640 = call i32 @llvm.abs.i32(i32 %639, i1 false) #7
  %641 = zext i32 %640 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1254.i) #7
  %642 = ptrtoint ptr %rem.i1254.i to i32
  call void @__asan_store8_noabort(i32 %642)
  store i64 -1, ptr %rem.i1254.i, align 8, !annotation !176
  %call.i1255.i = call i64 @div64_u64_rem(i64 noundef %641, i64 noundef 1, ptr noundef nonnull %rem.i1254.i) #7
  %643 = ptrtoint ptr %rem.i1254.i to i32
  call void @__asan_load8_noabort(i32 %643)
  %rem.promoted.i1256.i = load i64, ptr %rem.i1254.i, align 8
  br label %do.body.i1270.i

do.body.i1270.i:                                  ; preds = %do.body.i1270.i.do.body.i1270.i_crit_edge, %if.end144.i
  %storemerge40.i1257.i = phi i64 [ %rem.promoted.i1256.i, %if.end144.i ], [ %storemerge.i1264.i, %do.body.i1270.i.do.body.i1270.i_crit_edge ]
  %res_abs.0.i1258.i = phi i64 [ %call.i1255.i, %if.end144.i ], [ %res_abs.1.i1267.i, %do.body.i1270.i.do.body.i1270.i_crit_edge ]
  %i.0.i1259.i = phi i32 [ 32, %if.end144.i ], [ %dec.i1268.i, %do.body.i1270.i.do.body.i1270.i_crit_edge ]
  %shl.i1260.i = shl i64 %storemerge40.i1257.i, 1
  %shl9.i1261.i = shl i64 %res_abs.0.i1258.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1260.i)
  %cmp10.not.i1262.i = icmp ne i64 %shl.i1260.i, 0
  %sub11.i1263.neg.i = sext i1 %cmp10.not.i1262.i to i64
  %storemerge.i1264.i = add i64 %shl.i1260.i, %sub11.i1263.neg.i
  %or.i1266.i = zext i1 %cmp10.not.i1262.i to i64
  %res_abs.1.i1267.i = or i64 %shl9.i1261.i, %or.i1266.i
  %dec.i1268.i = add nsw i32 %i.0.i1259.i, -1
  %cmp12.not.i1269.i = icmp eq i32 %dec.i1268.i, 0
  br i1 %cmp12.not.i1269.i, label %drm_fixp_from_fraction.exit1278.i, label %do.body.i1270.i.do.body.i1270.i_crit_edge

do.body.i1270.i.do.body.i1270.i_crit_edge:        ; preds = %do.body.i1270.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1270.i

drm_fixp_from_fraction.exit1278.i:                ; preds = %do.body.i1270.i
  %shl13.i1271.mask.i = and i64 %storemerge.i1264.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1271.mask.i)
  %cmp14.i1272.i = icmp ne i64 %shl13.i1271.mask.i, 0
  %644 = zext i1 %cmp14.i1272.i to i64
  %add.i1273.i = add i64 %res_abs.1.i1267.i, %644
  %sub22.i1275.i = sub i64 0, %add.i1273.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %639)
  %tobool20.not39.i1276.i = icmp slt i32 %639, 0
  %spec.select.i1277.i = select i1 %tobool20.not39.i1276.i, i64 %sub22.i1275.i, i64 %add.i1273.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1254.i) #7
  %645 = ptrtoint ptr %original_ratio_fp to i32
  call void @__asan_load8_noabort(i32 %645)
  %646 = load i64, ptr %original_ratio_fp, align 8
  %shr12.i.i1279.i = lshr i64 %646, 63
  br label %for.body.i.i1285.i

for.body.i.i1285.i:                               ; preds = %for.inc.i.i1288.i.for.body.i.i1285.i_crit_edge, %drm_fixp_from_fraction.exit1278.i
  %shift.014.i.i1280.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1278.i ], [ %dec.i.i1286.i, %for.inc.i.i1288.i.for.body.i.i1285.i_crit_edge ]
  %sh_prom.i.i1281.i = zext i32 %shift.014.i.i1280.i to i64
  %shr213.i.i1282.i = lshr i64 %646, %sh_prom.i.i1281.i
  %and3.i.i1283.i = and i64 %shr213.i.i1282.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1283.i, i64 %shr12.i.i1279.i)
  %cmp5.not.i.i1284.i = icmp eq i64 %and3.i.i1283.i, %shr12.i.i1279.i
  br i1 %cmp5.not.i.i1284.i, label %for.inc.i.i1288.i, label %for.body.i.i1285.i.drm_fixp_msbset.exit.i1291.i_crit_edge

for.body.i.i1285.i.drm_fixp_msbset.exit.i1291.i_crit_edge: ; preds = %for.body.i.i1285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1291.i

for.inc.i.i1288.i:                                ; preds = %for.body.i.i1285.i
  %dec.i.i1286.i = add nsw i32 %shift.014.i.i1280.i, -1
  %cmp.not.i.i1287.i = icmp eq i32 %dec.i.i1286.i, 0
  br i1 %cmp.not.i.i1287.i, label %for.inc.i.i1288.i.drm_fixp_msbset.exit.i1291.i_crit_edge, label %for.inc.i.i1288.i.for.body.i.i1285.i_crit_edge

for.inc.i.i1288.i.for.body.i.i1285.i_crit_edge:   ; preds = %for.inc.i.i1288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1285.i

for.inc.i.i1288.i.drm_fixp_msbset.exit.i1291.i_crit_edge: ; preds = %for.inc.i.i1288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1291.i

drm_fixp_msbset.exit.i1291.i:                     ; preds = %for.inc.i.i1288.i.drm_fixp_msbset.exit.i1291.i_crit_edge, %for.body.i.i1285.i.drm_fixp_msbset.exit.i1291.i_crit_edge
  %shift.0.lcssa.i.i1289.i = phi i32 [ 0, %for.inc.i.i1288.i.drm_fixp_msbset.exit.i1291.i_crit_edge ], [ %shift.014.i.i1280.i, %for.body.i.i1285.i.drm_fixp_msbset.exit.i1291.i_crit_edge ]
  %shr12.i33.i1290.i = lshr i64 %spec.select.i1277.i, 63
  br label %for.body.i39.i1297.i

for.body.i39.i1297.i:                             ; preds = %for.inc.i42.i1300.i.for.body.i39.i1297.i_crit_edge, %drm_fixp_msbset.exit.i1291.i
  %shift.014.i34.i1292.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1291.i ], [ %dec.i40.i1298.i, %for.inc.i42.i1300.i.for.body.i39.i1297.i_crit_edge ]
  %sh_prom.i35.i1293.i = zext i32 %shift.014.i34.i1292.i to i64
  %shr213.i36.i1294.i = lshr i64 %spec.select.i1277.i, %sh_prom.i35.i1293.i
  %and3.i37.i1295.i = and i64 %shr213.i36.i1294.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1295.i, i64 %shr12.i33.i1290.i)
  %cmp5.not.i38.i1296.i = icmp eq i64 %and3.i37.i1295.i, %shr12.i33.i1290.i
  br i1 %cmp5.not.i38.i1296.i, label %for.inc.i42.i1300.i, label %for.body.i39.i1297.i.drm_fixp_msbset.exit44.i1304.i_crit_edge

for.body.i39.i1297.i.drm_fixp_msbset.exit44.i1304.i_crit_edge: ; preds = %for.body.i39.i1297.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1304.i

for.inc.i42.i1300.i:                              ; preds = %for.body.i39.i1297.i
  %dec.i40.i1298.i = add nsw i32 %shift.014.i34.i1292.i, -1
  %cmp.not.i41.i1299.i = icmp eq i32 %dec.i40.i1298.i, 0
  br i1 %cmp.not.i41.i1299.i, label %for.inc.i42.i1300.i.drm_fixp_msbset.exit44.i1304.i_crit_edge, label %for.inc.i42.i1300.i.for.body.i39.i1297.i_crit_edge

for.inc.i42.i1300.i.for.body.i39.i1297.i_crit_edge: ; preds = %for.inc.i42.i1300.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1297.i

for.inc.i42.i1300.i.drm_fixp_msbset.exit44.i1304.i_crit_edge: ; preds = %for.inc.i42.i1300.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1304.i

drm_fixp_msbset.exit44.i1304.i:                   ; preds = %for.inc.i42.i1300.i.drm_fixp_msbset.exit44.i1304.i_crit_edge, %for.body.i39.i1297.i.drm_fixp_msbset.exit44.i1304.i_crit_edge
  %shift.0.lcssa.i43.i1301.i = phi i32 [ 0, %for.inc.i42.i1300.i.drm_fixp_msbset.exit44.i1304.i_crit_edge ], [ %shift.014.i34.i1292.i, %for.body.i39.i1297.i.drm_fixp_msbset.exit44.i1304.i_crit_edge ]
  %add.i1302.i = add i32 %shift.0.lcssa.i43.i1301.i, %shift.0.lcssa.i.i1289.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1302.i)
  %cmp.i1303.i = icmp ugt i32 %add.i1302.i, 61
  br i1 %cmp.i1303.i, label %if.end.i1317.i, label %if.end11.thread.i1306.i

if.end11.thread.i1306.i:                          ; preds = %drm_fixp_msbset.exit44.i1304.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1305.i = mul i64 %646, %spec.select.i1277.i
  br label %if.then13.i1329.i

if.end.i1317.i:                                   ; preds = %drm_fixp_msbset.exit44.i1304.i
  %sub.i1307.i = add i32 %add.i1302.i, -61
  %shr.i1308.i = lshr i32 %sub.i1307.i, 1
  %and.i1309.i = and i32 %sub.i1307.i, 1
  %add2.i1310.i = add nuw nsw i32 %shr.i1308.i, %and.i1309.i
  %sh_prom.i1311.i = zext i32 %add2.i1310.i to i64
  %shr3.i1312.i = ashr i64 %646, %sh_prom.i1311.i
  %sh_prom5.i1313.i = zext i32 %shr.i1308.i to i64
  %shr6.i1314.i = ashr i64 %spec.select.i1277.i, %sh_prom5.i1313.i
  %mul.i1315.i = mul i64 %shr3.i1312.i, %shr6.i1314.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1307.i)
  %cmp7.i1316.i = icmp ugt i32 %sub.i1307.i, 32
  br i1 %cmp7.i1316.i, label %if.then8.i1321.i, label %if.end11.i1323.i

if.then8.i1321.i:                                 ; preds = %if.end.i1317.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1318.i = add i32 %add.i1302.i, -93
  %sh_prom10.i1319.i = zext i32 %sub9.i1318.i to i64
  %shl.i1320.i = shl i64 %mul.i1315.i, %sh_prom10.i1319.i
  br label %drm_fixp_mul.exit1331.i

if.end11.i1323.i:                                 ; preds = %if.end.i1317.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1307.i)
  %cmp12.not.i1322.i = icmp eq i32 %sub.i1307.i, 32
  br i1 %cmp12.not.i1322.i, label %if.end11.i1323.i.drm_fixp_mul.exit1331.i_crit_edge, label %if.end11.i1323.i.if.then13.i1329.i_crit_edge

if.end11.i1323.i.if.then13.i1329.i_crit_edge:     ; preds = %if.end11.i1323.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1329.i

if.end11.i1323.i.drm_fixp_mul.exit1331.i_crit_edge: ; preds = %if.end11.i1323.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1331.i

if.then13.i1329.i:                                ; preds = %if.end11.i1323.i.if.then13.i1329.i_crit_edge, %if.end11.thread.i1306.i
  %shift.05056.i1324.i = phi i32 [ 0, %if.end11.thread.i1306.i ], [ %sub.i1307.i, %if.end11.i1323.i.if.then13.i1329.i_crit_edge ]
  %mul5155.i1325.i = phi i64 [ %mul48.i1305.i, %if.end11.thread.i1306.i ], [ %mul.i1315.i, %if.end11.i1323.i.if.then13.i1329.i_crit_edge ]
  %sub14.i1326.i = sub nuw nsw i32 32, %shift.05056.i1324.i
  %sh_prom15.i1327.i = zext i32 %sub14.i1326.i to i64
  %shr16.i1328.i = ashr i64 %mul5155.i1325.i, %sh_prom15.i1327.i
  br label %drm_fixp_mul.exit1331.i

drm_fixp_mul.exit1331.i:                          ; preds = %if.then13.i1329.i, %if.end11.i1323.i.drm_fixp_mul.exit1331.i_crit_edge, %if.then8.i1321.i
  %retval.0.i1330.i = phi i64 [ %shl.i1320.i, %if.then8.i1321.i ], [ %shr16.i1328.i, %if.then13.i1329.i ], [ %mul.i1315.i, %if.end11.i1323.i.drm_fixp_mul.exit1331.i_crit_edge ]
  %647 = ptrtoint ptr %average_valid2_fp.i to i32
  call void @__asan_load8_noabort(i32 %647)
  %648 = load i64, ptr %average_valid2_fp.i, align 8
  %649 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %436, align 8
  %651 = call i32 @llvm.abs.i32(i32 %650, i1 false) #7
  %652 = zext i32 %651 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1332.i) #7
  %653 = ptrtoint ptr %rem.i1332.i to i32
  call void @__asan_store8_noabort(i32 %653)
  store i64 -1, ptr %rem.i1332.i, align 8, !annotation !176
  %call.i1333.i = call i64 @div64_u64_rem(i64 noundef %652, i64 noundef 1, ptr noundef nonnull %rem.i1332.i) #7
  %654 = ptrtoint ptr %rem.i1332.i to i32
  call void @__asan_load8_noabort(i32 %654)
  %rem.promoted.i1334.i = load i64, ptr %rem.i1332.i, align 8
  br label %do.body.i1348.i

do.body.i1348.i:                                  ; preds = %do.body.i1348.i.do.body.i1348.i_crit_edge, %drm_fixp_mul.exit1331.i
  %storemerge40.i1335.i = phi i64 [ %rem.promoted.i1334.i, %drm_fixp_mul.exit1331.i ], [ %storemerge.i1342.i, %do.body.i1348.i.do.body.i1348.i_crit_edge ]
  %res_abs.0.i1336.i = phi i64 [ %call.i1333.i, %drm_fixp_mul.exit1331.i ], [ %res_abs.1.i1345.i, %do.body.i1348.i.do.body.i1348.i_crit_edge ]
  %i.0.i1337.i = phi i32 [ 32, %drm_fixp_mul.exit1331.i ], [ %dec.i1346.i, %do.body.i1348.i.do.body.i1348.i_crit_edge ]
  %shl.i1338.i = shl i64 %storemerge40.i1335.i, 1
  %shl9.i1339.i = shl i64 %res_abs.0.i1336.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1338.i)
  %cmp10.not.i1340.i = icmp ne i64 %shl.i1338.i, 0
  %sub11.i1341.neg.i = sext i1 %cmp10.not.i1340.i to i64
  %storemerge.i1342.i = add i64 %shl.i1338.i, %sub11.i1341.neg.i
  %or.i1344.i = zext i1 %cmp10.not.i1340.i to i64
  %res_abs.1.i1345.i = or i64 %shl9.i1339.i, %or.i1344.i
  %dec.i1346.i = add nsw i32 %i.0.i1337.i, -1
  %cmp12.not.i1347.i = icmp eq i32 %dec.i1346.i, 0
  br i1 %cmp12.not.i1347.i, label %drm_fixp_from_fraction.exit1356.i, label %do.body.i1348.i.do.body.i1348.i_crit_edge

do.body.i1348.i.do.body.i1348.i_crit_edge:        ; preds = %do.body.i1348.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1348.i

drm_fixp_from_fraction.exit1356.i:                ; preds = %do.body.i1348.i
  %sub150.i = sub i64 %648, %retval.0.i1330.i
  %shl13.i1349.mask.i = and i64 %storemerge.i1342.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1349.mask.i)
  %cmp14.i1350.i = icmp ne i64 %shl13.i1349.mask.i, 0
  %655 = zext i1 %cmp14.i1350.i to i64
  %add.i1351.i = add i64 %res_abs.1.i1345.i, %655
  %sub22.i1353.i = sub i64 0, %add.i1351.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %650)
  %tobool20.not39.i1354.i = icmp slt i32 %650, 0
  %spec.select.i1355.i = select i1 %tobool20.not39.i1354.i, i64 %sub22.i1353.i, i64 %add.i1351.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1332.i) #7
  %shr12.i.i1357.i = lshr i64 %spec.select.i1355.i, 63
  br label %for.body.i.i1363.i

for.body.i.i1363.i:                               ; preds = %for.inc.i.i1366.i.for.body.i.i1363.i_crit_edge, %drm_fixp_from_fraction.exit1356.i
  %shift.014.i.i1358.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1356.i ], [ %dec.i.i1364.i, %for.inc.i.i1366.i.for.body.i.i1363.i_crit_edge ]
  %sh_prom.i.i1359.i = zext i32 %shift.014.i.i1358.i to i64
  %shr213.i.i1360.i = lshr i64 %spec.select.i1355.i, %sh_prom.i.i1359.i
  %and3.i.i1361.i = and i64 %shr213.i.i1360.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1361.i, i64 %shr12.i.i1357.i)
  %cmp5.not.i.i1362.i = icmp eq i64 %and3.i.i1361.i, %shr12.i.i1357.i
  br i1 %cmp5.not.i.i1362.i, label %for.inc.i.i1366.i, label %for.body.i.i1363.i.drm_fixp_msbset.exit.i1369.i_crit_edge

for.body.i.i1363.i.drm_fixp_msbset.exit.i1369.i_crit_edge: ; preds = %for.body.i.i1363.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1369.i

for.inc.i.i1366.i:                                ; preds = %for.body.i.i1363.i
  %dec.i.i1364.i = add nsw i32 %shift.014.i.i1358.i, -1
  %cmp.not.i.i1365.i = icmp eq i32 %dec.i.i1364.i, 0
  br i1 %cmp.not.i.i1365.i, label %for.inc.i.i1366.i.drm_fixp_msbset.exit.i1369.i_crit_edge, label %for.inc.i.i1366.i.for.body.i.i1363.i_crit_edge

for.inc.i.i1366.i.for.body.i.i1363.i_crit_edge:   ; preds = %for.inc.i.i1366.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1363.i

for.inc.i.i1366.i.drm_fixp_msbset.exit.i1369.i_crit_edge: ; preds = %for.inc.i.i1366.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1369.i

drm_fixp_msbset.exit.i1369.i:                     ; preds = %for.inc.i.i1366.i.drm_fixp_msbset.exit.i1369.i_crit_edge, %for.body.i.i1363.i.drm_fixp_msbset.exit.i1369.i_crit_edge
  %shift.0.lcssa.i.i1367.i = phi i32 [ 0, %for.inc.i.i1366.i.drm_fixp_msbset.exit.i1369.i_crit_edge ], [ %shift.014.i.i1358.i, %for.body.i.i1363.i.drm_fixp_msbset.exit.i1369.i_crit_edge ]
  %shr12.i33.i1368.i = lshr i64 %sub150.i, 63
  br label %for.body.i39.i1375.i

for.body.i39.i1375.i:                             ; preds = %for.inc.i42.i1378.i.for.body.i39.i1375.i_crit_edge, %drm_fixp_msbset.exit.i1369.i
  %shift.014.i34.i1370.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1369.i ], [ %dec.i40.i1376.i, %for.inc.i42.i1378.i.for.body.i39.i1375.i_crit_edge ]
  %sh_prom.i35.i1371.i = zext i32 %shift.014.i34.i1370.i to i64
  %shr213.i36.i1372.i = lshr i64 %sub150.i, %sh_prom.i35.i1371.i
  %and3.i37.i1373.i = and i64 %shr213.i36.i1372.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1373.i, i64 %shr12.i33.i1368.i)
  %cmp5.not.i38.i1374.i = icmp eq i64 %and3.i37.i1373.i, %shr12.i33.i1368.i
  br i1 %cmp5.not.i38.i1374.i, label %for.inc.i42.i1378.i, label %for.body.i39.i1375.i.drm_fixp_msbset.exit44.i1382.i_crit_edge

for.body.i39.i1375.i.drm_fixp_msbset.exit44.i1382.i_crit_edge: ; preds = %for.body.i39.i1375.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1382.i

for.inc.i42.i1378.i:                              ; preds = %for.body.i39.i1375.i
  %dec.i40.i1376.i = add nsw i32 %shift.014.i34.i1370.i, -1
  %cmp.not.i41.i1377.i = icmp eq i32 %dec.i40.i1376.i, 0
  br i1 %cmp.not.i41.i1377.i, label %for.inc.i42.i1378.i.drm_fixp_msbset.exit44.i1382.i_crit_edge, label %for.inc.i42.i1378.i.for.body.i39.i1375.i_crit_edge

for.inc.i42.i1378.i.for.body.i39.i1375.i_crit_edge: ; preds = %for.inc.i42.i1378.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1375.i

for.inc.i42.i1378.i.drm_fixp_msbset.exit44.i1382.i_crit_edge: ; preds = %for.inc.i42.i1378.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1382.i

drm_fixp_msbset.exit44.i1382.i:                   ; preds = %for.inc.i42.i1378.i.drm_fixp_msbset.exit44.i1382.i_crit_edge, %for.body.i39.i1375.i.drm_fixp_msbset.exit44.i1382.i_crit_edge
  %shift.0.lcssa.i43.i1379.i = phi i32 [ 0, %for.inc.i42.i1378.i.drm_fixp_msbset.exit44.i1382.i_crit_edge ], [ %shift.014.i34.i1370.i, %for.body.i39.i1375.i.drm_fixp_msbset.exit44.i1382.i_crit_edge ]
  %add.i1380.i = add i32 %shift.0.lcssa.i43.i1379.i, %shift.0.lcssa.i.i1367.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1380.i)
  %cmp.i1381.i = icmp ugt i32 %add.i1380.i, 61
  br i1 %cmp.i1381.i, label %if.end.i1395.i, label %if.end11.thread.i1384.i

if.end11.thread.i1384.i:                          ; preds = %drm_fixp_msbset.exit44.i1382.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1383.i = mul i64 %spec.select.i1355.i, %sub150.i
  br label %if.then13.i1407.i

if.end.i1395.i:                                   ; preds = %drm_fixp_msbset.exit44.i1382.i
  %sub.i1385.i = add i32 %add.i1380.i, -61
  %shr.i1386.i = lshr i32 %sub.i1385.i, 1
  %and.i1387.i = and i32 %sub.i1385.i, 1
  %add2.i1388.i = add nuw nsw i32 %shr.i1386.i, %and.i1387.i
  %sh_prom.i1389.i = zext i32 %add2.i1388.i to i64
  %shr3.i1390.i = ashr i64 %spec.select.i1355.i, %sh_prom.i1389.i
  %sh_prom5.i1391.i = zext i32 %shr.i1386.i to i64
  %shr6.i1392.i = ashr i64 %sub150.i, %sh_prom5.i1391.i
  %mul.i1393.i = mul i64 %shr3.i1390.i, %shr6.i1392.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1385.i)
  %cmp7.i1394.i = icmp ugt i32 %sub.i1385.i, 32
  br i1 %cmp7.i1394.i, label %if.then8.i1399.i, label %if.end11.i1401.i

if.then8.i1399.i:                                 ; preds = %if.end.i1395.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1396.i = add i32 %add.i1380.i, -93
  %sh_prom10.i1397.i = zext i32 %sub9.i1396.i to i64
  %shl.i1398.i = shl i64 %mul.i1393.i, %sh_prom10.i1397.i
  br label %drm_fixp_mul.exit1409.i

if.end11.i1401.i:                                 ; preds = %if.end.i1395.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1385.i)
  %cmp12.not.i1400.i = icmp eq i32 %sub.i1385.i, 32
  br i1 %cmp12.not.i1400.i, label %if.end11.i1401.i.drm_fixp_mul.exit1409.i_crit_edge, label %if.end11.i1401.i.if.then13.i1407.i_crit_edge

if.end11.i1401.i.if.then13.i1407.i_crit_edge:     ; preds = %if.end11.i1401.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1407.i

if.end11.i1401.i.drm_fixp_mul.exit1409.i_crit_edge: ; preds = %if.end11.i1401.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1409.i

if.then13.i1407.i:                                ; preds = %if.end11.i1401.i.if.then13.i1407.i_crit_edge, %if.end11.thread.i1384.i
  %shift.05056.i1402.i = phi i32 [ 0, %if.end11.thread.i1384.i ], [ %sub.i1385.i, %if.end11.i1401.i.if.then13.i1407.i_crit_edge ]
  %mul5155.i1403.i = phi i64 [ %mul48.i1383.i, %if.end11.thread.i1384.i ], [ %mul.i1393.i, %if.end11.i1401.i.if.then13.i1407.i_crit_edge ]
  %sub14.i1404.i = sub nuw nsw i32 32, %shift.05056.i1402.i
  %sh_prom15.i1405.i = zext i32 %sub14.i1404.i to i64
  %shr16.i1406.i = ashr i64 %mul5155.i1403.i, %sh_prom15.i1405.i
  br label %drm_fixp_mul.exit1409.i

drm_fixp_mul.exit1409.i:                          ; preds = %if.then13.i1407.i, %if.end11.i1401.i.drm_fixp_mul.exit1409.i_crit_edge, %if.then8.i1399.i
  %retval.0.i1408.i = phi i64 [ %shl.i1398.i, %if.then8.i1399.i ], [ %shr16.i1406.i, %if.then13.i1407.i ], [ %mul.i1393.i, %if.end11.i1401.i.drm_fixp_mul.exit1409.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1408.i)
  %tobool155.not.i = icmp eq i64 %retval.0.i1408.i, 0
  br i1 %tobool155.not.i, label %drm_fixp_mul.exit1409.i.if.end159.i_crit_edge, label %if.then156.i

drm_fixp_mul.exit1409.i.if.end159.i_crit_edge:    ; preds = %drm_fixp_mul.exit1409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159.i

if.then156.i:                                     ; preds = %drm_fixp_mul.exit1409.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1408.i)
  %cmp.i1410.i = icmp sgt i64 %retval.0.i1408.i, 0
  %..i1411.i = select i1 %cmp.i1410.i, i64 4294967295, i64 -4294967295
  %sub.i1412.i = add i64 %..i1411.i, %retval.0.i1408.i
  %656 = lshr i64 %sub.i1412.i, 32
  %conv.i4.i1413.i = trunc i64 %656 to i32
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then156.i, %drm_fixp_mul.exit1409.i.if.end159.i_crit_edge
  %temp1.0.i = phi i32 [ %conv.i4.i1413.i, %if.then156.i ], [ 0, %drm_fixp_mul.exit1409.i.if.end159.i_crit_edge ]
  %657 = ptrtoint ptr %i_upper_boundary_count to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %i_upper_boundary_count, align 4
  %659 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %nlanes4.i, align 8
  %661 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %tu_size, align 8
  %663 = call i32 @llvm.abs.i32(i32 %662, i1 false) #7
  %664 = zext i32 %663 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1414.i) #7
  %665 = ptrtoint ptr %rem.i1414.i to i32
  call void @__asan_store8_noabort(i32 %665)
  store i64 -1, ptr %rem.i1414.i, align 8, !annotation !176
  %call.i1415.i = call i64 @div64_u64_rem(i64 noundef %664, i64 noundef 1, ptr noundef nonnull %rem.i1414.i) #7
  %666 = ptrtoint ptr %rem.i1414.i to i32
  call void @__asan_load8_noabort(i32 %666)
  %rem.promoted.i1416.i = load i64, ptr %rem.i1414.i, align 8
  br label %do.body.i1430.i

do.body.i1430.i:                                  ; preds = %do.body.i1430.i.do.body.i1430.i_crit_edge, %if.end159.i
  %storemerge40.i1417.i = phi i64 [ %rem.promoted.i1416.i, %if.end159.i ], [ %storemerge.i1424.i, %do.body.i1430.i.do.body.i1430.i_crit_edge ]
  %res_abs.0.i1418.i = phi i64 [ %call.i1415.i, %if.end159.i ], [ %res_abs.1.i1427.i, %do.body.i1430.i.do.body.i1430.i_crit_edge ]
  %i.0.i1419.i = phi i32 [ 32, %if.end159.i ], [ %dec.i1428.i, %do.body.i1430.i.do.body.i1430.i_crit_edge ]
  %shl.i1420.i = shl i64 %storemerge40.i1417.i, 1
  %shl9.i1421.i = shl i64 %res_abs.0.i1418.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1420.i)
  %cmp10.not.i1422.i = icmp ne i64 %shl.i1420.i, 0
  %sub11.i1423.neg.i = sext i1 %cmp10.not.i1422.i to i64
  %storemerge.i1424.i = add i64 %shl.i1420.i, %sub11.i1423.neg.i
  %or.i1426.i = zext i1 %cmp10.not.i1422.i to i64
  %res_abs.1.i1427.i = or i64 %shl9.i1421.i, %or.i1426.i
  %dec.i1428.i = add nsw i32 %i.0.i1419.i, -1
  %cmp12.not.i1429.i = icmp eq i32 %dec.i1428.i, 0
  br i1 %cmp12.not.i1429.i, label %drm_fixp_from_fraction.exit1438.i, label %do.body.i1430.i.do.body.i1430.i_crit_edge

do.body.i1430.i.do.body.i1430.i_crit_edge:        ; preds = %do.body.i1430.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1430.i

drm_fixp_from_fraction.exit1438.i:                ; preds = %do.body.i1430.i
  %mul162.i = mul i32 %660, %658
  %shl13.i1431.mask.i = and i64 %storemerge.i1424.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1431.mask.i)
  %cmp14.i1432.i = icmp ne i64 %shl13.i1431.mask.i, 0
  %667 = zext i1 %cmp14.i1432.i to i64
  %add.i1433.i = add i64 %res_abs.1.i1427.i, %667
  %sub22.i1435.i = sub i64 0, %add.i1433.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %662)
  %tobool20.not39.i1436.i = icmp slt i32 %662, 0
  %spec.select.i1437.i = select i1 %tobool20.not39.i1436.i, i64 %sub22.i1435.i, i64 %add.i1433.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1414.i) #7
  %668 = ptrtoint ptr %original_ratio_fp to i32
  call void @__asan_load8_noabort(i32 %668)
  %669 = load i64, ptr %original_ratio_fp, align 8
  %shr12.i.i1439.i = lshr i64 %669, 63
  br label %for.body.i.i1445.i

for.body.i.i1445.i:                               ; preds = %for.inc.i.i1448.i.for.body.i.i1445.i_crit_edge, %drm_fixp_from_fraction.exit1438.i
  %shift.014.i.i1440.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1438.i ], [ %dec.i.i1446.i, %for.inc.i.i1448.i.for.body.i.i1445.i_crit_edge ]
  %sh_prom.i.i1441.i = zext i32 %shift.014.i.i1440.i to i64
  %shr213.i.i1442.i = lshr i64 %669, %sh_prom.i.i1441.i
  %and3.i.i1443.i = and i64 %shr213.i.i1442.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1443.i, i64 %shr12.i.i1439.i)
  %cmp5.not.i.i1444.i = icmp eq i64 %and3.i.i1443.i, %shr12.i.i1439.i
  br i1 %cmp5.not.i.i1444.i, label %for.inc.i.i1448.i, label %for.body.i.i1445.i.drm_fixp_msbset.exit.i1451.i_crit_edge

for.body.i.i1445.i.drm_fixp_msbset.exit.i1451.i_crit_edge: ; preds = %for.body.i.i1445.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1451.i

for.inc.i.i1448.i:                                ; preds = %for.body.i.i1445.i
  %dec.i.i1446.i = add nsw i32 %shift.014.i.i1440.i, -1
  %cmp.not.i.i1447.i = icmp eq i32 %dec.i.i1446.i, 0
  br i1 %cmp.not.i.i1447.i, label %for.inc.i.i1448.i.drm_fixp_msbset.exit.i1451.i_crit_edge, label %for.inc.i.i1448.i.for.body.i.i1445.i_crit_edge

for.inc.i.i1448.i.for.body.i.i1445.i_crit_edge:   ; preds = %for.inc.i.i1448.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1445.i

for.inc.i.i1448.i.drm_fixp_msbset.exit.i1451.i_crit_edge: ; preds = %for.inc.i.i1448.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1451.i

drm_fixp_msbset.exit.i1451.i:                     ; preds = %for.inc.i.i1448.i.drm_fixp_msbset.exit.i1451.i_crit_edge, %for.body.i.i1445.i.drm_fixp_msbset.exit.i1451.i_crit_edge
  %shift.0.lcssa.i.i1449.i = phi i32 [ 0, %for.inc.i.i1448.i.drm_fixp_msbset.exit.i1451.i_crit_edge ], [ %shift.014.i.i1440.i, %for.body.i.i1445.i.drm_fixp_msbset.exit.i1451.i_crit_edge ]
  %shr12.i33.i1450.i = lshr i64 %spec.select.i1437.i, 63
  br label %for.body.i39.i1457.i

for.body.i39.i1457.i:                             ; preds = %for.inc.i42.i1460.i.for.body.i39.i1457.i_crit_edge, %drm_fixp_msbset.exit.i1451.i
  %shift.014.i34.i1452.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1451.i ], [ %dec.i40.i1458.i, %for.inc.i42.i1460.i.for.body.i39.i1457.i_crit_edge ]
  %sh_prom.i35.i1453.i = zext i32 %shift.014.i34.i1452.i to i64
  %shr213.i36.i1454.i = lshr i64 %spec.select.i1437.i, %sh_prom.i35.i1453.i
  %and3.i37.i1455.i = and i64 %shr213.i36.i1454.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1455.i, i64 %shr12.i33.i1450.i)
  %cmp5.not.i38.i1456.i = icmp eq i64 %and3.i37.i1455.i, %shr12.i33.i1450.i
  br i1 %cmp5.not.i38.i1456.i, label %for.inc.i42.i1460.i, label %for.body.i39.i1457.i.drm_fixp_msbset.exit44.i1464.i_crit_edge

for.body.i39.i1457.i.drm_fixp_msbset.exit44.i1464.i_crit_edge: ; preds = %for.body.i39.i1457.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1464.i

for.inc.i42.i1460.i:                              ; preds = %for.body.i39.i1457.i
  %dec.i40.i1458.i = add nsw i32 %shift.014.i34.i1452.i, -1
  %cmp.not.i41.i1459.i = icmp eq i32 %dec.i40.i1458.i, 0
  br i1 %cmp.not.i41.i1459.i, label %for.inc.i42.i1460.i.drm_fixp_msbset.exit44.i1464.i_crit_edge, label %for.inc.i42.i1460.i.for.body.i39.i1457.i_crit_edge

for.inc.i42.i1460.i.for.body.i39.i1457.i_crit_edge: ; preds = %for.inc.i42.i1460.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1457.i

for.inc.i42.i1460.i.drm_fixp_msbset.exit44.i1464.i_crit_edge: ; preds = %for.inc.i42.i1460.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1464.i

drm_fixp_msbset.exit44.i1464.i:                   ; preds = %for.inc.i42.i1460.i.drm_fixp_msbset.exit44.i1464.i_crit_edge, %for.body.i39.i1457.i.drm_fixp_msbset.exit44.i1464.i_crit_edge
  %shift.0.lcssa.i43.i1461.i = phi i32 [ 0, %for.inc.i42.i1460.i.drm_fixp_msbset.exit44.i1464.i_crit_edge ], [ %shift.014.i34.i1452.i, %for.body.i39.i1457.i.drm_fixp_msbset.exit44.i1464.i_crit_edge ]
  %add.i1462.i = add i32 %shift.0.lcssa.i43.i1461.i, %shift.0.lcssa.i.i1449.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1462.i)
  %cmp.i1463.i = icmp ugt i32 %add.i1462.i, 61
  br i1 %cmp.i1463.i, label %if.end.i1477.i, label %if.end11.thread.i1466.i

if.end11.thread.i1466.i:                          ; preds = %drm_fixp_msbset.exit44.i1464.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1465.i = mul i64 %669, %spec.select.i1437.i
  br label %if.then13.i1489.i

if.end.i1477.i:                                   ; preds = %drm_fixp_msbset.exit44.i1464.i
  %sub.i1467.i = add i32 %add.i1462.i, -61
  %shr.i1468.i = lshr i32 %sub.i1467.i, 1
  %and.i1469.i = and i32 %sub.i1467.i, 1
  %add2.i1470.i = add nuw nsw i32 %shr.i1468.i, %and.i1469.i
  %sh_prom.i1471.i = zext i32 %add2.i1470.i to i64
  %shr3.i1472.i = ashr i64 %669, %sh_prom.i1471.i
  %sh_prom5.i1473.i = zext i32 %shr.i1468.i to i64
  %shr6.i1474.i = ashr i64 %spec.select.i1437.i, %sh_prom5.i1473.i
  %mul.i1475.i = mul i64 %shr3.i1472.i, %shr6.i1474.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1467.i)
  %cmp7.i1476.i = icmp ugt i32 %sub.i1467.i, 32
  br i1 %cmp7.i1476.i, label %if.then8.i1481.i, label %if.end11.i1483.i

if.then8.i1481.i:                                 ; preds = %if.end.i1477.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1478.i = add i32 %add.i1462.i, -93
  %sh_prom10.i1479.i = zext i32 %sub9.i1478.i to i64
  %shl.i1480.i = shl i64 %mul.i1475.i, %sh_prom10.i1479.i
  br label %drm_fixp_mul.exit1491.i

if.end11.i1483.i:                                 ; preds = %if.end.i1477.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1467.i)
  %cmp12.not.i1482.i = icmp eq i32 %sub.i1467.i, 32
  br i1 %cmp12.not.i1482.i, label %if.end11.i1483.i.drm_fixp_mul.exit1491.i_crit_edge, label %if.end11.i1483.i.if.then13.i1489.i_crit_edge

if.end11.i1483.i.if.then13.i1489.i_crit_edge:     ; preds = %if.end11.i1483.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1489.i

if.end11.i1483.i.drm_fixp_mul.exit1491.i_crit_edge: ; preds = %if.end11.i1483.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1491.i

if.then13.i1489.i:                                ; preds = %if.end11.i1483.i.if.then13.i1489.i_crit_edge, %if.end11.thread.i1466.i
  %shift.05056.i1484.i = phi i32 [ 0, %if.end11.thread.i1466.i ], [ %sub.i1467.i, %if.end11.i1483.i.if.then13.i1489.i_crit_edge ]
  %mul5155.i1485.i = phi i64 [ %mul48.i1465.i, %if.end11.thread.i1466.i ], [ %mul.i1475.i, %if.end11.i1483.i.if.then13.i1489.i_crit_edge ]
  %sub14.i1486.i = sub nuw nsw i32 32, %shift.05056.i1484.i
  %sh_prom15.i1487.i = zext i32 %sub14.i1486.i to i64
  %shr16.i1488.i = ashr i64 %mul5155.i1485.i, %sh_prom15.i1487.i
  br label %drm_fixp_mul.exit1491.i

drm_fixp_mul.exit1491.i:                          ; preds = %if.then13.i1489.i, %if.end11.i1483.i.drm_fixp_mul.exit1491.i_crit_edge, %if.then8.i1481.i
  %retval.0.i1490.i = phi i64 [ %shl.i1480.i, %if.then8.i1481.i ], [ %shr16.i1488.i, %if.then13.i1489.i ], [ %mul.i1475.i, %if.end11.i1483.i.drm_fixp_mul.exit1491.i_crit_edge ]
  %670 = ptrtoint ptr %new_valid_boundary_link.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %new_valid_boundary_link.i, align 8
  %672 = call i32 @llvm.abs.i32(i32 %671, i1 false) #7
  %673 = zext i32 %672 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1492.i) #7
  %674 = ptrtoint ptr %rem.i1492.i to i32
  call void @__asan_store8_noabort(i32 %674)
  store i64 -1, ptr %rem.i1492.i, align 8, !annotation !176
  %call.i1493.i = call i64 @div64_u64_rem(i64 noundef %673, i64 noundef 1, ptr noundef nonnull %rem.i1492.i) #7
  %675 = ptrtoint ptr %rem.i1492.i to i32
  call void @__asan_load8_noabort(i32 %675)
  %rem.promoted.i1494.i = load i64, ptr %rem.i1492.i, align 8
  br label %do.body.i1508.i

do.body.i1508.i:                                  ; preds = %do.body.i1508.i.do.body.i1508.i_crit_edge, %drm_fixp_mul.exit1491.i
  %storemerge40.i1495.i = phi i64 [ %rem.promoted.i1494.i, %drm_fixp_mul.exit1491.i ], [ %storemerge.i1502.i, %do.body.i1508.i.do.body.i1508.i_crit_edge ]
  %res_abs.0.i1496.i = phi i64 [ %call.i1493.i, %drm_fixp_mul.exit1491.i ], [ %res_abs.1.i1505.i, %do.body.i1508.i.do.body.i1508.i_crit_edge ]
  %i.0.i1497.i = phi i32 [ 32, %drm_fixp_mul.exit1491.i ], [ %dec.i1506.i, %do.body.i1508.i.do.body.i1508.i_crit_edge ]
  %shl.i1498.i = shl i64 %storemerge40.i1495.i, 1
  %shl9.i1499.i = shl i64 %res_abs.0.i1496.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1498.i)
  %cmp10.not.i1500.i = icmp ne i64 %shl.i1498.i, 0
  %sub11.i1501.neg.i = sext i1 %cmp10.not.i1500.i to i64
  %storemerge.i1502.i = add i64 %shl.i1498.i, %sub11.i1501.neg.i
  %or.i1504.i = zext i1 %cmp10.not.i1500.i to i64
  %res_abs.1.i1505.i = or i64 %shl9.i1499.i, %or.i1504.i
  %dec.i1506.i = add nsw i32 %i.0.i1497.i, -1
  %cmp12.not.i1507.i = icmp eq i32 %dec.i1506.i, 0
  br i1 %cmp12.not.i1507.i, label %drm_fixp_from_fraction.exit1516.i, label %do.body.i1508.i.do.body.i1508.i_crit_edge

do.body.i1508.i.do.body.i1508.i_crit_edge:        ; preds = %do.body.i1508.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1508.i

drm_fixp_from_fraction.exit1516.i:                ; preds = %do.body.i1508.i
  %shl13.i1509.mask.i = and i64 %storemerge.i1502.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1509.mask.i)
  %cmp14.i1510.i = icmp ne i64 %shl13.i1509.mask.i, 0
  %676 = zext i1 %cmp14.i1510.i to i64
  %add.i1511.i = add i64 %res_abs.1.i1505.i, %676
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1492.i) #7
  %677 = call i32 @llvm.abs.i32(i32 %mul162.i, i1 false) #7
  %678 = zext i32 %677 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1517.i) #7
  %679 = ptrtoint ptr %rem.i1517.i to i32
  call void @__asan_store8_noabort(i32 %679)
  store i64 -1, ptr %rem.i1517.i, align 8, !annotation !176
  %call.i1518.i = call i64 @div64_u64_rem(i64 noundef %678, i64 noundef 1, ptr noundef nonnull %rem.i1517.i) #7
  %680 = ptrtoint ptr %rem.i1517.i to i32
  call void @__asan_load8_noabort(i32 %680)
  %rem.promoted.i1519.i = load i64, ptr %rem.i1517.i, align 8
  br label %do.body.i1533.i

do.body.i1533.i:                                  ; preds = %do.body.i1533.i.do.body.i1533.i_crit_edge, %drm_fixp_from_fraction.exit1516.i
  %storemerge40.i1520.i = phi i64 [ %rem.promoted.i1519.i, %drm_fixp_from_fraction.exit1516.i ], [ %storemerge.i1527.i, %do.body.i1533.i.do.body.i1533.i_crit_edge ]
  %res_abs.0.i1521.i = phi i64 [ %call.i1518.i, %drm_fixp_from_fraction.exit1516.i ], [ %res_abs.1.i1530.i, %do.body.i1533.i.do.body.i1533.i_crit_edge ]
  %i.0.i1522.i = phi i32 [ 32, %drm_fixp_from_fraction.exit1516.i ], [ %dec.i1531.i, %do.body.i1533.i.do.body.i1533.i_crit_edge ]
  %shl.i1523.i = shl i64 %storemerge40.i1520.i, 1
  %shl9.i1524.i = shl i64 %res_abs.0.i1521.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1523.i)
  %cmp10.not.i1525.i = icmp ne i64 %shl.i1523.i, 0
  %sub11.i1526.neg.i = sext i1 %cmp10.not.i1525.i to i64
  %storemerge.i1527.i = add i64 %shl.i1523.i, %sub11.i1526.neg.i
  %or.i1529.i = zext i1 %cmp10.not.i1525.i to i64
  %res_abs.1.i1530.i = or i64 %shl9.i1524.i, %or.i1529.i
  %dec.i1531.i = add nsw i32 %i.0.i1522.i, -1
  %cmp12.not.i1532.i = icmp eq i32 %dec.i1531.i, 0
  br i1 %cmp12.not.i1532.i, label %drm_fixp_from_fraction.exit1541.i, label %do.body.i1533.i.do.body.i1533.i_crit_edge

do.body.i1533.i.do.body.i1533.i_crit_edge:        ; preds = %do.body.i1533.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1533.i

drm_fixp_from_fraction.exit1541.i:                ; preds = %do.body.i1533.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %671)
  %tobool20.not39.i1514.i = icmp slt i32 %671, 0
  %sub22.i1513.i = sub i64 0, %add.i1511.i
  %spec.select.i1515.i = select i1 %tobool20.not39.i1514.i, i64 %sub22.i1513.i, i64 %add.i1511.i
  %sub172.i = sub i64 %spec.select.i1515.i, %retval.0.i1490.i
  %shl13.i1534.mask.i = and i64 %storemerge.i1527.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1534.mask.i)
  %cmp14.i1535.i = icmp ne i64 %shl13.i1534.mask.i, 0
  %681 = zext i1 %cmp14.i1535.i to i64
  %add.i1536.i = add i64 %res_abs.1.i1530.i, %681
  %sub22.i1538.i = sub i64 0, %add.i1536.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul162.i)
  %tobool20.not39.i1539.i = icmp slt i32 %mul162.i, 0
  %spec.select.i1540.i = select i1 %tobool20.not39.i1539.i, i64 %sub22.i1538.i, i64 %add.i1536.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1517.i) #7
  %shr12.i.i1542.i = lshr i64 %spec.select.i1540.i, 63
  br label %for.body.i.i1548.i

for.body.i.i1548.i:                               ; preds = %for.inc.i.i1551.i.for.body.i.i1548.i_crit_edge, %drm_fixp_from_fraction.exit1541.i
  %shift.014.i.i1543.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1541.i ], [ %dec.i.i1549.i, %for.inc.i.i1551.i.for.body.i.i1548.i_crit_edge ]
  %sh_prom.i.i1544.i = zext i32 %shift.014.i.i1543.i to i64
  %shr213.i.i1545.i = lshr i64 %spec.select.i1540.i, %sh_prom.i.i1544.i
  %and3.i.i1546.i = and i64 %shr213.i.i1545.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1546.i, i64 %shr12.i.i1542.i)
  %cmp5.not.i.i1547.i = icmp eq i64 %and3.i.i1546.i, %shr12.i.i1542.i
  br i1 %cmp5.not.i.i1547.i, label %for.inc.i.i1551.i, label %for.body.i.i1548.i.drm_fixp_msbset.exit.i1554.i_crit_edge

for.body.i.i1548.i.drm_fixp_msbset.exit.i1554.i_crit_edge: ; preds = %for.body.i.i1548.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1554.i

for.inc.i.i1551.i:                                ; preds = %for.body.i.i1548.i
  %dec.i.i1549.i = add nsw i32 %shift.014.i.i1543.i, -1
  %cmp.not.i.i1550.i = icmp eq i32 %dec.i.i1549.i, 0
  br i1 %cmp.not.i.i1550.i, label %for.inc.i.i1551.i.drm_fixp_msbset.exit.i1554.i_crit_edge, label %for.inc.i.i1551.i.for.body.i.i1548.i_crit_edge

for.inc.i.i1551.i.for.body.i.i1548.i_crit_edge:   ; preds = %for.inc.i.i1551.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1548.i

for.inc.i.i1551.i.drm_fixp_msbset.exit.i1554.i_crit_edge: ; preds = %for.inc.i.i1551.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1554.i

drm_fixp_msbset.exit.i1554.i:                     ; preds = %for.inc.i.i1551.i.drm_fixp_msbset.exit.i1554.i_crit_edge, %for.body.i.i1548.i.drm_fixp_msbset.exit.i1554.i_crit_edge
  %shift.0.lcssa.i.i1552.i = phi i32 [ 0, %for.inc.i.i1551.i.drm_fixp_msbset.exit.i1554.i_crit_edge ], [ %shift.014.i.i1543.i, %for.body.i.i1548.i.drm_fixp_msbset.exit.i1554.i_crit_edge ]
  %shr12.i33.i1553.i = lshr i64 %sub172.i, 63
  br label %for.body.i39.i1560.i

for.body.i39.i1560.i:                             ; preds = %for.inc.i42.i1563.i.for.body.i39.i1560.i_crit_edge, %drm_fixp_msbset.exit.i1554.i
  %shift.014.i34.i1555.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1554.i ], [ %dec.i40.i1561.i, %for.inc.i42.i1563.i.for.body.i39.i1560.i_crit_edge ]
  %sh_prom.i35.i1556.i = zext i32 %shift.014.i34.i1555.i to i64
  %shr213.i36.i1557.i = lshr i64 %sub172.i, %sh_prom.i35.i1556.i
  %and3.i37.i1558.i = and i64 %shr213.i36.i1557.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1558.i, i64 %shr12.i33.i1553.i)
  %cmp5.not.i38.i1559.i = icmp eq i64 %and3.i37.i1558.i, %shr12.i33.i1553.i
  br i1 %cmp5.not.i38.i1559.i, label %for.inc.i42.i1563.i, label %for.body.i39.i1560.i.drm_fixp_msbset.exit44.i1567.i_crit_edge

for.body.i39.i1560.i.drm_fixp_msbset.exit44.i1567.i_crit_edge: ; preds = %for.body.i39.i1560.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1567.i

for.inc.i42.i1563.i:                              ; preds = %for.body.i39.i1560.i
  %dec.i40.i1561.i = add nsw i32 %shift.014.i34.i1555.i, -1
  %cmp.not.i41.i1562.i = icmp eq i32 %dec.i40.i1561.i, 0
  br i1 %cmp.not.i41.i1562.i, label %for.inc.i42.i1563.i.drm_fixp_msbset.exit44.i1567.i_crit_edge, label %for.inc.i42.i1563.i.for.body.i39.i1560.i_crit_edge

for.inc.i42.i1563.i.for.body.i39.i1560.i_crit_edge: ; preds = %for.inc.i42.i1563.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1560.i

for.inc.i42.i1563.i.drm_fixp_msbset.exit44.i1567.i_crit_edge: ; preds = %for.inc.i42.i1563.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1567.i

drm_fixp_msbset.exit44.i1567.i:                   ; preds = %for.inc.i42.i1563.i.drm_fixp_msbset.exit44.i1567.i_crit_edge, %for.body.i39.i1560.i.drm_fixp_msbset.exit44.i1567.i_crit_edge
  %shift.0.lcssa.i43.i1564.i = phi i32 [ 0, %for.inc.i42.i1563.i.drm_fixp_msbset.exit44.i1567.i_crit_edge ], [ %shift.014.i34.i1555.i, %for.body.i39.i1560.i.drm_fixp_msbset.exit44.i1567.i_crit_edge ]
  %add.i1565.i = add i32 %shift.0.lcssa.i43.i1564.i, %shift.0.lcssa.i.i1552.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1565.i)
  %cmp.i1566.i = icmp ugt i32 %add.i1565.i, 61
  br i1 %cmp.i1566.i, label %if.end.i1580.i, label %if.end11.thread.i1569.i

if.end11.thread.i1569.i:                          ; preds = %drm_fixp_msbset.exit44.i1567.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1568.i = mul i64 %spec.select.i1540.i, %sub172.i
  br label %if.then13.i1592.i

if.end.i1580.i:                                   ; preds = %drm_fixp_msbset.exit44.i1567.i
  %sub.i1570.i = add i32 %add.i1565.i, -61
  %shr.i1571.i = lshr i32 %sub.i1570.i, 1
  %and.i1572.i = and i32 %sub.i1570.i, 1
  %add2.i1573.i = add nuw nsw i32 %shr.i1571.i, %and.i1572.i
  %sh_prom.i1574.i = zext i32 %add2.i1573.i to i64
  %shr3.i1575.i = ashr i64 %spec.select.i1540.i, %sh_prom.i1574.i
  %sh_prom5.i1576.i = zext i32 %shr.i1571.i to i64
  %shr6.i1577.i = ashr i64 %sub172.i, %sh_prom5.i1576.i
  %mul.i1578.i = mul i64 %shr3.i1575.i, %shr6.i1577.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1570.i)
  %cmp7.i1579.i = icmp ugt i32 %sub.i1570.i, 32
  br i1 %cmp7.i1579.i, label %if.then8.i1584.i, label %if.end11.i1586.i

if.then8.i1584.i:                                 ; preds = %if.end.i1580.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1581.i = add i32 %add.i1565.i, -93
  %sh_prom10.i1582.i = zext i32 %sub9.i1581.i to i64
  %shl.i1583.i = shl i64 %mul.i1578.i, %sh_prom10.i1582.i
  br label %drm_fixp_mul.exit1594.i

if.end11.i1586.i:                                 ; preds = %if.end.i1580.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1570.i)
  %cmp12.not.i1585.i = icmp eq i32 %sub.i1570.i, 32
  br i1 %cmp12.not.i1585.i, label %if.end11.i1586.i.drm_fixp_mul.exit1594.i_crit_edge, label %if.end11.i1586.i.if.then13.i1592.i_crit_edge

if.end11.i1586.i.if.then13.i1592.i_crit_edge:     ; preds = %if.end11.i1586.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1592.i

if.end11.i1586.i.drm_fixp_mul.exit1594.i_crit_edge: ; preds = %if.end11.i1586.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1594.i

if.then13.i1592.i:                                ; preds = %if.end11.i1586.i.if.then13.i1592.i_crit_edge, %if.end11.thread.i1569.i
  %shift.05056.i1587.i = phi i32 [ 0, %if.end11.thread.i1569.i ], [ %sub.i1570.i, %if.end11.i1586.i.if.then13.i1592.i_crit_edge ]
  %mul5155.i1588.i = phi i64 [ %mul48.i1568.i, %if.end11.thread.i1569.i ], [ %mul.i1578.i, %if.end11.i1586.i.if.then13.i1592.i_crit_edge ]
  %sub14.i1589.i = sub nuw nsw i32 32, %shift.05056.i1587.i
  %sh_prom15.i1590.i = zext i32 %sub14.i1589.i to i64
  %shr16.i1591.i = ashr i64 %mul5155.i1588.i, %sh_prom15.i1590.i
  br label %drm_fixp_mul.exit1594.i

drm_fixp_mul.exit1594.i:                          ; preds = %if.then13.i1592.i, %if.end11.i1586.i.drm_fixp_mul.exit1594.i_crit_edge, %if.then8.i1584.i
  %retval.0.i1593.i = phi i64 [ %shl.i1583.i, %if.then8.i1584.i ], [ %shr16.i1591.i, %if.then13.i1592.i ], [ %mul.i1578.i, %if.end11.i1586.i.drm_fixp_mul.exit1594.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1593.i)
  %tobool175.not.i = icmp eq i64 %retval.0.i1593.i, 0
  br i1 %tobool175.not.i, label %drm_fixp_mul.exit1594.i.if.end180.i_crit_edge, label %if.then176.i

drm_fixp_mul.exit1594.i.if.end180.i_crit_edge:    ; preds = %drm_fixp_mul.exit1594.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180.i

if.then176.i:                                     ; preds = %drm_fixp_mul.exit1594.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1593.i)
  %cmp.i1595.i = icmp sgt i64 %retval.0.i1593.i, 0
  %..i1596.i = select i1 %cmp.i1595.i, i64 4294967295, i64 -4294967295
  %sub.i1597.i = add i64 %..i1596.i, %retval.0.i1593.i
  %682 = lshr i64 %sub.i1597.i, 32
  %conv.i4.i1598.i = trunc i64 %682 to i32
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.then176.i, %drm_fixp_mul.exit1594.i.if.end180.i_crit_edge
  %temp2.0.i = phi i32 [ %conv.i4.i1598.i, %if.then176.i ], [ 0, %drm_fixp_mul.exit1594.i.if.end180.i_crit_edge ]
  %add181.i = add i32 %temp2.0.i, %temp1.0.i
  %683 = ptrtoint ptr %extra_required_bytes_new_tmp.i to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 %add181.i, ptr %extra_required_bytes_new_tmp.i, align 4
  %684 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %bpp5.i, align 4
  %686 = call i32 @llvm.abs.i32(i32 %685, i1 false) #7
  %687 = zext i32 %686 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1599.i) #7
  %688 = ptrtoint ptr %rem.i1599.i to i32
  call void @__asan_store8_noabort(i32 %688)
  store i64 -1, ptr %rem.i1599.i, align 8, !annotation !176
  %call.i1600.i = call i64 @div64_u64_rem(i64 noundef 8, i64 noundef %687, ptr noundef nonnull %rem.i1599.i) #7
  %689 = ptrtoint ptr %rem.i1599.i to i32
  call void @__asan_load8_noabort(i32 %689)
  %rem.promoted.i1601.i = load i64, ptr %rem.i1599.i, align 8
  br label %do.body.i1615.i

do.body.i1615.i:                                  ; preds = %do.body.i1615.i.do.body.i1615.i_crit_edge, %if.end180.i
  %storemerge40.i1602.i = phi i64 [ %rem.promoted.i1601.i, %if.end180.i ], [ %storemerge.i1609.i, %do.body.i1615.i.do.body.i1615.i_crit_edge ]
  %res_abs.0.i1603.i = phi i64 [ %call.i1600.i, %if.end180.i ], [ %res_abs.1.i1612.i, %do.body.i1615.i.do.body.i1615.i_crit_edge ]
  %i.0.i1604.i = phi i32 [ 32, %if.end180.i ], [ %dec.i1613.i, %do.body.i1615.i.do.body.i1615.i_crit_edge ]
  %shl.i1605.i = shl i64 %storemerge40.i1602.i, 1
  %shl9.i1606.i = shl i64 %res_abs.0.i1603.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i1605.i, i64 %687)
  %cmp10.not.i1607.i = icmp ult i64 %shl.i1605.i, %687
  %sub11.i1608.i = select i1 %cmp10.not.i1607.i, i64 0, i64 %687
  %storemerge.i1609.i = sub i64 %shl.i1605.i, %sub11.i1608.i
  %not.cmp10.not.i1610.i = xor i1 %cmp10.not.i1607.i, true
  %or.i1611.i = zext i1 %not.cmp10.not.i1610.i to i64
  %res_abs.1.i1612.i = or i64 %shl9.i1606.i, %or.i1611.i
  %dec.i1613.i = add nsw i32 %i.0.i1604.i, -1
  %cmp12.not.i1614.i = icmp eq i32 %dec.i1613.i, 0
  br i1 %cmp12.not.i1614.i, label %drm_fixp_from_fraction.exit1623.i, label %do.body.i1615.i.do.body.i1615.i_crit_edge

do.body.i1615.i.do.body.i1615.i_crit_edge:        ; preds = %do.body.i1615.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1615.i

drm_fixp_from_fraction.exit1623.i:                ; preds = %do.body.i1615.i
  %shl13.i1616.i = shl i64 %storemerge.i1609.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl13.i1616.i, i64 %687)
  %cmp14.i1617.i = icmp uge i64 %shl13.i1616.i, %687
  %690 = zext i1 %cmp14.i1617.i to i64
  %add.i1618.i = add i64 %res_abs.1.i1612.i, %690
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1599.i) #7
  %691 = ptrtoint ptr %extra_required_bytes_new_tmp.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %extra_required_bytes_new_tmp.i, align 4
  %693 = call i32 @llvm.abs.i32(i32 %692, i1 false) #7
  %694 = zext i32 %693 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1624.i) #7
  %695 = ptrtoint ptr %rem.i1624.i to i32
  call void @__asan_store8_noabort(i32 %695)
  store i64 -1, ptr %rem.i1624.i, align 8, !annotation !176
  %call.i1625.i = call i64 @div64_u64_rem(i64 noundef %694, i64 noundef 1, ptr noundef nonnull %rem.i1624.i) #7
  %696 = ptrtoint ptr %rem.i1624.i to i32
  call void @__asan_load8_noabort(i32 %696)
  %rem.promoted.i1626.i = load i64, ptr %rem.i1624.i, align 8
  br label %do.body.i1640.i

do.body.i1640.i:                                  ; preds = %do.body.i1640.i.do.body.i1640.i_crit_edge, %drm_fixp_from_fraction.exit1623.i
  %storemerge40.i1627.i = phi i64 [ %rem.promoted.i1626.i, %drm_fixp_from_fraction.exit1623.i ], [ %storemerge.i1634.i, %do.body.i1640.i.do.body.i1640.i_crit_edge ]
  %res_abs.0.i1628.i = phi i64 [ %call.i1625.i, %drm_fixp_from_fraction.exit1623.i ], [ %res_abs.1.i1637.i, %do.body.i1640.i.do.body.i1640.i_crit_edge ]
  %i.0.i1629.i = phi i32 [ 32, %drm_fixp_from_fraction.exit1623.i ], [ %dec.i1638.i, %do.body.i1640.i.do.body.i1640.i_crit_edge ]
  %shl.i1630.i = shl i64 %storemerge40.i1627.i, 1
  %shl9.i1631.i = shl i64 %res_abs.0.i1628.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1630.i)
  %cmp10.not.i1632.i = icmp ne i64 %shl.i1630.i, 0
  %sub11.i1633.neg.i = sext i1 %cmp10.not.i1632.i to i64
  %storemerge.i1634.i = add i64 %shl.i1630.i, %sub11.i1633.neg.i
  %or.i1636.i = zext i1 %cmp10.not.i1632.i to i64
  %res_abs.1.i1637.i = or i64 %shl9.i1631.i, %or.i1636.i
  %dec.i1638.i = add nsw i32 %i.0.i1629.i, -1
  %cmp12.not.i1639.i = icmp eq i32 %dec.i1638.i, 0
  br i1 %cmp12.not.i1639.i, label %drm_fixp_from_fraction.exit1648.i, label %do.body.i1640.i.do.body.i1640.i_crit_edge

do.body.i1640.i.do.body.i1640.i_crit_edge:        ; preds = %do.body.i1640.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1640.i

drm_fixp_from_fraction.exit1648.i:                ; preds = %do.body.i1640.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %685)
  %tobool20.not39.i1621.i = icmp slt i32 %685, 0
  %sub22.i1620.i = sub i64 0, %add.i1618.i
  %spec.select.i1622.i = select i1 %tobool20.not39.i1621.i, i64 %sub22.i1620.i, i64 %add.i1618.i
  %shl13.i1641.mask.i = and i64 %storemerge.i1634.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1641.mask.i)
  %cmp14.i1642.i = icmp ne i64 %shl13.i1641.mask.i, 0
  %697 = zext i1 %cmp14.i1642.i to i64
  %add.i1643.i = add i64 %res_abs.1.i1637.i, %697
  %sub22.i1645.i = sub i64 0, %add.i1643.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %692)
  %tobool20.not39.i1646.i = icmp slt i32 %692, 0
  %spec.select.i1647.i = select i1 %tobool20.not39.i1646.i, i64 %sub22.i1645.i, i64 %add.i1643.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1624.i) #7
  %shr12.i.i1649.i = lshr i64 %spec.select.i1647.i, 63
  br label %for.body.i.i1655.i

for.body.i.i1655.i:                               ; preds = %for.inc.i.i1658.i.for.body.i.i1655.i_crit_edge, %drm_fixp_from_fraction.exit1648.i
  %shift.014.i.i1650.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1648.i ], [ %dec.i.i1656.i, %for.inc.i.i1658.i.for.body.i.i1655.i_crit_edge ]
  %sh_prom.i.i1651.i = zext i32 %shift.014.i.i1650.i to i64
  %shr213.i.i1652.i = lshr i64 %spec.select.i1647.i, %sh_prom.i.i1651.i
  %and3.i.i1653.i = and i64 %shr213.i.i1652.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1653.i, i64 %shr12.i.i1649.i)
  %cmp5.not.i.i1654.i = icmp eq i64 %and3.i.i1653.i, %shr12.i.i1649.i
  br i1 %cmp5.not.i.i1654.i, label %for.inc.i.i1658.i, label %for.body.i.i1655.i.drm_fixp_msbset.exit.i1661.i_crit_edge

for.body.i.i1655.i.drm_fixp_msbset.exit.i1661.i_crit_edge: ; preds = %for.body.i.i1655.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1661.i

for.inc.i.i1658.i:                                ; preds = %for.body.i.i1655.i
  %dec.i.i1656.i = add nsw i32 %shift.014.i.i1650.i, -1
  %cmp.not.i.i1657.i = icmp eq i32 %dec.i.i1656.i, 0
  br i1 %cmp.not.i.i1657.i, label %for.inc.i.i1658.i.drm_fixp_msbset.exit.i1661.i_crit_edge, label %for.inc.i.i1658.i.for.body.i.i1655.i_crit_edge

for.inc.i.i1658.i.for.body.i.i1655.i_crit_edge:   ; preds = %for.inc.i.i1658.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1655.i

for.inc.i.i1658.i.drm_fixp_msbset.exit.i1661.i_crit_edge: ; preds = %for.inc.i.i1658.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1661.i

drm_fixp_msbset.exit.i1661.i:                     ; preds = %for.inc.i.i1658.i.drm_fixp_msbset.exit.i1661.i_crit_edge, %for.body.i.i1655.i.drm_fixp_msbset.exit.i1661.i_crit_edge
  %shift.0.lcssa.i.i1659.i = phi i32 [ 0, %for.inc.i.i1658.i.drm_fixp_msbset.exit.i1661.i_crit_edge ], [ %shift.014.i.i1650.i, %for.body.i.i1655.i.drm_fixp_msbset.exit.i1661.i_crit_edge ]
  %shr12.i33.i1660.i = lshr i64 %spec.select.i1622.i, 63
  br label %for.body.i39.i1667.i

for.body.i39.i1667.i:                             ; preds = %for.inc.i42.i1670.i.for.body.i39.i1667.i_crit_edge, %drm_fixp_msbset.exit.i1661.i
  %shift.014.i34.i1662.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1661.i ], [ %dec.i40.i1668.i, %for.inc.i42.i1670.i.for.body.i39.i1667.i_crit_edge ]
  %sh_prom.i35.i1663.i = zext i32 %shift.014.i34.i1662.i to i64
  %shr213.i36.i1664.i = lshr i64 %spec.select.i1622.i, %sh_prom.i35.i1663.i
  %and3.i37.i1665.i = and i64 %shr213.i36.i1664.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1665.i, i64 %shr12.i33.i1660.i)
  %cmp5.not.i38.i1666.i = icmp eq i64 %and3.i37.i1665.i, %shr12.i33.i1660.i
  br i1 %cmp5.not.i38.i1666.i, label %for.inc.i42.i1670.i, label %for.body.i39.i1667.i.drm_fixp_msbset.exit44.i1674.i_crit_edge

for.body.i39.i1667.i.drm_fixp_msbset.exit44.i1674.i_crit_edge: ; preds = %for.body.i39.i1667.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1674.i

for.inc.i42.i1670.i:                              ; preds = %for.body.i39.i1667.i
  %dec.i40.i1668.i = add nsw i32 %shift.014.i34.i1662.i, -1
  %cmp.not.i41.i1669.i = icmp eq i32 %dec.i40.i1668.i, 0
  br i1 %cmp.not.i41.i1669.i, label %for.inc.i42.i1670.i.drm_fixp_msbset.exit44.i1674.i_crit_edge, label %for.inc.i42.i1670.i.for.body.i39.i1667.i_crit_edge

for.inc.i42.i1670.i.for.body.i39.i1667.i_crit_edge: ; preds = %for.inc.i42.i1670.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1667.i

for.inc.i42.i1670.i.drm_fixp_msbset.exit44.i1674.i_crit_edge: ; preds = %for.inc.i42.i1670.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1674.i

drm_fixp_msbset.exit44.i1674.i:                   ; preds = %for.inc.i42.i1670.i.drm_fixp_msbset.exit44.i1674.i_crit_edge, %for.body.i39.i1667.i.drm_fixp_msbset.exit44.i1674.i_crit_edge
  %shift.0.lcssa.i43.i1671.i = phi i32 [ 0, %for.inc.i42.i1670.i.drm_fixp_msbset.exit44.i1674.i_crit_edge ], [ %shift.014.i34.i1662.i, %for.body.i39.i1667.i.drm_fixp_msbset.exit44.i1674.i_crit_edge ]
  %add.i1672.i = add i32 %shift.0.lcssa.i43.i1671.i, %shift.0.lcssa.i.i1659.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1672.i)
  %cmp.i1673.i = icmp ugt i32 %add.i1672.i, 61
  br i1 %cmp.i1673.i, label %if.end.i1687.i, label %if.end11.thread.i1676.i

if.end11.thread.i1676.i:                          ; preds = %drm_fixp_msbset.exit44.i1674.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1675.i = mul i64 %spec.select.i1647.i, %spec.select.i1622.i
  br label %if.then13.i1699.i

if.end.i1687.i:                                   ; preds = %drm_fixp_msbset.exit44.i1674.i
  %sub.i1677.i = add i32 %add.i1672.i, -61
  %shr.i1678.i = lshr i32 %sub.i1677.i, 1
  %and.i1679.i = and i32 %sub.i1677.i, 1
  %add2.i1680.i = add nuw nsw i32 %shr.i1678.i, %and.i1679.i
  %sh_prom.i1681.i = zext i32 %add2.i1680.i to i64
  %shr3.i1682.i = ashr i64 %spec.select.i1647.i, %sh_prom.i1681.i
  %sh_prom5.i1683.i = zext i32 %shr.i1678.i to i64
  %shr6.i1684.i = ashr i64 %spec.select.i1622.i, %sh_prom5.i1683.i
  %mul.i1685.i = mul i64 %shr3.i1682.i, %shr6.i1684.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1677.i)
  %cmp7.i1686.i = icmp ugt i32 %sub.i1677.i, 32
  br i1 %cmp7.i1686.i, label %if.then8.i1691.i, label %if.end11.i1693.i

if.then8.i1691.i:                                 ; preds = %if.end.i1687.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1688.i = add i32 %add.i1672.i, -93
  %sh_prom10.i1689.i = zext i32 %sub9.i1688.i to i64
  %shl.i1690.i = shl i64 %mul.i1685.i, %sh_prom10.i1689.i
  br label %drm_fixp_mul.exit1701.i

if.end11.i1693.i:                                 ; preds = %if.end.i1687.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1677.i)
  %cmp12.not.i1692.i = icmp eq i32 %sub.i1677.i, 32
  br i1 %cmp12.not.i1692.i, label %if.end11.i1693.i.drm_fixp_mul.exit1701.i_crit_edge, label %if.end11.i1693.i.if.then13.i1699.i_crit_edge

if.end11.i1693.i.if.then13.i1699.i_crit_edge:     ; preds = %if.end11.i1693.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1699.i

if.end11.i1693.i.drm_fixp_mul.exit1701.i_crit_edge: ; preds = %if.end11.i1693.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1701.i

if.then13.i1699.i:                                ; preds = %if.end11.i1693.i.if.then13.i1699.i_crit_edge, %if.end11.thread.i1676.i
  %shift.05056.i1694.i = phi i32 [ 0, %if.end11.thread.i1676.i ], [ %sub.i1677.i, %if.end11.i1693.i.if.then13.i1699.i_crit_edge ]
  %mul5155.i1695.i = phi i64 [ %mul48.i1675.i, %if.end11.thread.i1676.i ], [ %mul.i1685.i, %if.end11.i1693.i.if.then13.i1699.i_crit_edge ]
  %sub14.i1696.i = sub nuw nsw i32 32, %shift.05056.i1694.i
  %sh_prom15.i1697.i = zext i32 %sub14.i1696.i to i64
  %shr16.i1698.i = ashr i64 %mul5155.i1695.i, %sh_prom15.i1697.i
  br label %drm_fixp_mul.exit1701.i

drm_fixp_mul.exit1701.i:                          ; preds = %if.then13.i1699.i, %if.end11.i1693.i.drm_fixp_mul.exit1701.i_crit_edge, %if.then8.i1691.i
  %retval.0.i1700.i = phi i64 [ %shl.i1690.i, %if.then8.i1691.i ], [ %shr16.i1698.i, %if.then13.i1699.i ], [ %mul.i1685.i, %if.end11.i1693.i.drm_fixp_mul.exit1701.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1700.i)
  %tobool190.not.i = icmp eq i64 %retval.0.i1700.i, 0
  br i1 %tobool190.not.i, label %drm_fixp_mul.exit1701.i.if.end195.i_crit_edge, label %if.then191.i

drm_fixp_mul.exit1701.i.if.end195.i_crit_edge:    ; preds = %drm_fixp_mul.exit1701.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195.i

if.then191.i:                                     ; preds = %drm_fixp_mul.exit1701.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1700.i)
  %cmp.i1702.i = icmp sgt i64 %retval.0.i1700.i, 0
  %..i1703.i = select i1 %cmp.i1702.i, i64 4294967295, i64 -4294967295
  %sub.i1704.i = add i64 %..i1703.i, %retval.0.i1700.i
  %698 = lshr i64 %sub.i1704.i, 32
  %conv.i4.i1705.i = trunc i64 %698 to i32
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then191.i, %drm_fixp_mul.exit1701.i.if.end195.i_crit_edge
  %conv.i4.i1705.sink.i = phi i32 [ %conv.i4.i1705.i, %if.then191.i ], [ 0, %drm_fixp_mul.exit1701.i.if.end195.i_crit_edge ]
  %699 = ptrtoint ptr %437 to i32
  call void @__asan_store4_noabort(i32 %699)
  store i32 %conv.i4.i1705.sink.i, ptr %437, align 4
  %700 = call i32 @llvm.abs.i32(i32 %conv.i4.i1705.sink.i, i1 false) #7
  %701 = zext i32 %700 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1706.i) #7
  %702 = ptrtoint ptr %rem.i1706.i to i32
  call void @__asan_store8_noabort(i32 %702)
  store i64 -1, ptr %rem.i1706.i, align 8, !annotation !176
  %call.i1707.i = call i64 @div64_u64_rem(i64 noundef %701, i64 noundef 1, ptr noundef nonnull %rem.i1706.i) #7
  %703 = ptrtoint ptr %rem.i1706.i to i32
  call void @__asan_load8_noabort(i32 %703)
  %rem.promoted.i1708.i = load i64, ptr %rem.i1706.i, align 8
  br label %do.body.i1722.i

do.body.i1722.i:                                  ; preds = %do.body.i1722.i.do.body.i1722.i_crit_edge, %if.end195.i
  %storemerge40.i1709.i = phi i64 [ %rem.promoted.i1708.i, %if.end195.i ], [ %storemerge.i1716.i, %do.body.i1722.i.do.body.i1722.i_crit_edge ]
  %res_abs.0.i1710.i = phi i64 [ %call.i1707.i, %if.end195.i ], [ %res_abs.1.i1719.i, %do.body.i1722.i.do.body.i1722.i_crit_edge ]
  %i.0.i1711.i = phi i32 [ 32, %if.end195.i ], [ %dec.i1720.i, %do.body.i1722.i.do.body.i1722.i_crit_edge ]
  %shl.i1712.i = shl i64 %storemerge40.i1709.i, 1
  %shl9.i1713.i = shl i64 %res_abs.0.i1710.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1712.i)
  %cmp10.not.i1714.i = icmp ne i64 %shl.i1712.i, 0
  %sub11.i1715.neg.i = sext i1 %cmp10.not.i1714.i to i64
  %storemerge.i1716.i = add i64 %shl.i1712.i, %sub11.i1715.neg.i
  %or.i1718.i = zext i1 %cmp10.not.i1714.i to i64
  %res_abs.1.i1719.i = or i64 %shl9.i1713.i, %or.i1718.i
  %dec.i1720.i = add nsw i32 %i.0.i1711.i, -1
  %cmp12.not.i1721.i = icmp eq i32 %dec.i1720.i, 0
  br i1 %cmp12.not.i1721.i, label %drm_fixp_from_fraction.exit1730.i, label %do.body.i1722.i.do.body.i1722.i_crit_edge

do.body.i1722.i.do.body.i1722.i_crit_edge:        ; preds = %do.body.i1722.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1722.i

drm_fixp_from_fraction.exit1730.i:                ; preds = %do.body.i1722.i
  %shl13.i1723.mask.i = and i64 %storemerge.i1716.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1723.mask.i)
  %cmp14.i1724.i = icmp ne i64 %shl13.i1723.mask.i, 0
  %704 = zext i1 %cmp14.i1724.i to i64
  %add.i1725.i = add i64 %res_abs.1.i1719.i, %704
  %sub22.i1727.i = sub i64 0, %add.i1725.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i4.i1705.sink.i)
  %tobool20.not39.i1728.i = icmp slt i32 %conv.i4.i1705.sink.i, 0
  %spec.select.i1729.i = select i1 %tobool20.not39.i1728.i, i64 %sub22.i1727.i, i64 %add.i1725.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1706.i) #7
  %705 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %705)
  %706 = load i64, ptr %call7.i.i, align 8
  %707 = ptrtoint ptr %pclk_fp.i to i32
  call void @__asan_load8_noabort(i32 %707)
  %708 = load i64, ptr %pclk_fp.i, align 8
  %shr12.i.i1731.i = lshr i64 %706, 63
  br label %for.body.i.i1737.i

for.body.i.i1737.i:                               ; preds = %for.inc.i.i1740.i.for.body.i.i1737.i_crit_edge, %drm_fixp_from_fraction.exit1730.i
  %shift.014.i.i1732.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1730.i ], [ %dec.i.i1738.i, %for.inc.i.i1740.i.for.body.i.i1737.i_crit_edge ]
  %sh_prom.i.i1733.i = zext i32 %shift.014.i.i1732.i to i64
  %shr213.i.i1734.i = lshr i64 %706, %sh_prom.i.i1733.i
  %and3.i.i1735.i = and i64 %shr213.i.i1734.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1735.i, i64 %shr12.i.i1731.i)
  %cmp5.not.i.i1736.i = icmp eq i64 %and3.i.i1735.i, %shr12.i.i1731.i
  br i1 %cmp5.not.i.i1736.i, label %for.inc.i.i1740.i, label %for.body.i.i1737.i.drm_fixp_div.exit1757.i_crit_edge

for.body.i.i1737.i.drm_fixp_div.exit1757.i_crit_edge: ; preds = %for.body.i.i1737.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1757.i

for.inc.i.i1740.i:                                ; preds = %for.body.i.i1737.i
  %dec.i.i1738.i = add nsw i32 %shift.014.i.i1732.i, -1
  %cmp.not.i.i1739.i = icmp eq i32 %dec.i.i1738.i, 0
  br i1 %cmp.not.i.i1739.i, label %for.inc.i.i1740.i.drm_fixp_div.exit1757.i_crit_edge, label %for.inc.i.i1740.i.for.body.i.i1737.i_crit_edge

for.inc.i.i1740.i.for.body.i.i1737.i_crit_edge:   ; preds = %for.inc.i.i1740.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1737.i

for.inc.i.i1740.i.drm_fixp_div.exit1757.i_crit_edge: ; preds = %for.inc.i.i1740.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1757.i

drm_fixp_div.exit1757.i:                          ; preds = %for.inc.i.i1740.i.drm_fixp_div.exit1757.i_crit_edge, %for.body.i.i1737.i.drm_fixp_div.exit1757.i_crit_edge
  %shift.0.lcssa.i.i1741.i = phi i32 [ 0, %for.inc.i.i1740.i.drm_fixp_div.exit1757.i_crit_edge ], [ %shift.014.i.i1732.i, %for.body.i.i1737.i.drm_fixp_div.exit1757.i_crit_edge ]
  %sub.i1742.i = sub i32 62, %shift.0.lcssa.i.i1741.i
  %sh_prom.i1743.i = zext i32 %sub.i1742.i to i64
  %shl.i1744.i = shl i64 %706, %sh_prom.i1743.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1742.i)
  %cmp.i1745.i = icmp ult i32 %sub.i1742.i, 32
  %sub1.i1746.i = add i32 %shift.0.lcssa.i.i1741.i, -30
  %narrow.i1747.i = select i1 %cmp.i1745.i, i32 %sub1.i1746.i, i32 0
  %shr.i1748.i = zext i32 %narrow.i1747.i to i64
  %b.addr.0.i1749.i = ashr i64 %708, %shr.i1748.i
  %call3.i1750.i = call i64 @div64_s64(i64 noundef %shl.i1744.i, i64 noundef %b.addr.0.i1749.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1742.i)
  %cmp4.i1751.i = icmp ugt i32 %sub.i1742.i, 32
  %sub6.i1752.i = sub i32 30, %shift.0.lcssa.i.i1741.i
  %narrow19.i1753.i = select i1 %cmp4.i1751.i, i32 %sub6.i1752.i, i32 0
  %shr8.i1754.i = zext i32 %narrow19.i1753.i to i64
  %retval.0.i1755.i = ashr i64 %call3.i1750.i, %shr8.i1754.i
  %shr12.i.i1758.i = lshr i64 %spec.select.i1729.i, 63
  br label %for.body.i.i1764.i

for.body.i.i1764.i:                               ; preds = %for.inc.i.i1767.i.for.body.i.i1764.i_crit_edge, %drm_fixp_div.exit1757.i
  %shift.014.i.i1759.i = phi i32 [ 62, %drm_fixp_div.exit1757.i ], [ %dec.i.i1765.i, %for.inc.i.i1767.i.for.body.i.i1764.i_crit_edge ]
  %sh_prom.i.i1760.i = zext i32 %shift.014.i.i1759.i to i64
  %shr213.i.i1761.i = lshr i64 %spec.select.i1729.i, %sh_prom.i.i1760.i
  %and3.i.i1762.i = and i64 %shr213.i.i1761.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1762.i, i64 %shr12.i.i1758.i)
  %cmp5.not.i.i1763.i = icmp eq i64 %and3.i.i1762.i, %shr12.i.i1758.i
  br i1 %cmp5.not.i.i1763.i, label %for.inc.i.i1767.i, label %for.body.i.i1764.i.drm_fixp_msbset.exit.i1770.i_crit_edge

for.body.i.i1764.i.drm_fixp_msbset.exit.i1770.i_crit_edge: ; preds = %for.body.i.i1764.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1770.i

for.inc.i.i1767.i:                                ; preds = %for.body.i.i1764.i
  %dec.i.i1765.i = add nsw i32 %shift.014.i.i1759.i, -1
  %cmp.not.i.i1766.i = icmp eq i32 %dec.i.i1765.i, 0
  br i1 %cmp.not.i.i1766.i, label %for.inc.i.i1767.i.drm_fixp_msbset.exit.i1770.i_crit_edge, label %for.inc.i.i1767.i.for.body.i.i1764.i_crit_edge

for.inc.i.i1767.i.for.body.i.i1764.i_crit_edge:   ; preds = %for.inc.i.i1767.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1764.i

for.inc.i.i1767.i.drm_fixp_msbset.exit.i1770.i_crit_edge: ; preds = %for.inc.i.i1767.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i1770.i

drm_fixp_msbset.exit.i1770.i:                     ; preds = %for.inc.i.i1767.i.drm_fixp_msbset.exit.i1770.i_crit_edge, %for.body.i.i1764.i.drm_fixp_msbset.exit.i1770.i_crit_edge
  %shift.0.lcssa.i.i1768.i = phi i32 [ 0, %for.inc.i.i1767.i.drm_fixp_msbset.exit.i1770.i_crit_edge ], [ %shift.014.i.i1759.i, %for.body.i.i1764.i.drm_fixp_msbset.exit.i1770.i_crit_edge ]
  %shr12.i33.i1769.i = lshr i64 %retval.0.i1755.i, 63
  br label %for.body.i39.i1776.i

for.body.i39.i1776.i:                             ; preds = %for.inc.i42.i1779.i.for.body.i39.i1776.i_crit_edge, %drm_fixp_msbset.exit.i1770.i
  %shift.014.i34.i1771.i = phi i32 [ 62, %drm_fixp_msbset.exit.i1770.i ], [ %dec.i40.i1777.i, %for.inc.i42.i1779.i.for.body.i39.i1776.i_crit_edge ]
  %sh_prom.i35.i1772.i = zext i32 %shift.014.i34.i1771.i to i64
  %shr213.i36.i1773.i = lshr i64 %retval.0.i1755.i, %sh_prom.i35.i1772.i
  %and3.i37.i1774.i = and i64 %shr213.i36.i1773.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i1774.i, i64 %shr12.i33.i1769.i)
  %cmp5.not.i38.i1775.i = icmp eq i64 %and3.i37.i1774.i, %shr12.i33.i1769.i
  br i1 %cmp5.not.i38.i1775.i, label %for.inc.i42.i1779.i, label %for.body.i39.i1776.i.drm_fixp_msbset.exit44.i1783.i_crit_edge

for.body.i39.i1776.i.drm_fixp_msbset.exit44.i1783.i_crit_edge: ; preds = %for.body.i39.i1776.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1783.i

for.inc.i42.i1779.i:                              ; preds = %for.body.i39.i1776.i
  %dec.i40.i1777.i = add nsw i32 %shift.014.i34.i1771.i, -1
  %cmp.not.i41.i1778.i = icmp eq i32 %dec.i40.i1777.i, 0
  br i1 %cmp.not.i41.i1778.i, label %for.inc.i42.i1779.i.drm_fixp_msbset.exit44.i1783.i_crit_edge, label %for.inc.i42.i1779.i.for.body.i39.i1776.i_crit_edge

for.inc.i42.i1779.i.for.body.i39.i1776.i_crit_edge: ; preds = %for.inc.i42.i1779.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i1776.i

for.inc.i42.i1779.i.drm_fixp_msbset.exit44.i1783.i_crit_edge: ; preds = %for.inc.i42.i1779.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i1783.i

drm_fixp_msbset.exit44.i1783.i:                   ; preds = %for.inc.i42.i1779.i.drm_fixp_msbset.exit44.i1783.i_crit_edge, %for.body.i39.i1776.i.drm_fixp_msbset.exit44.i1783.i_crit_edge
  %shift.0.lcssa.i43.i1780.i = phi i32 [ 0, %for.inc.i42.i1779.i.drm_fixp_msbset.exit44.i1783.i_crit_edge ], [ %shift.014.i34.i1771.i, %for.body.i39.i1776.i.drm_fixp_msbset.exit44.i1783.i_crit_edge ]
  %add.i1781.i = add i32 %shift.0.lcssa.i43.i1780.i, %shift.0.lcssa.i.i1768.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i1781.i)
  %cmp.i1782.i = icmp ugt i32 %add.i1781.i, 61
  br i1 %cmp.i1782.i, label %if.end.i1796.i, label %if.end11.thread.i1785.i

if.end11.thread.i1785.i:                          ; preds = %drm_fixp_msbset.exit44.i1783.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i1784.i = mul i64 %retval.0.i1755.i, %spec.select.i1729.i
  br label %if.then13.i1808.i

if.end.i1796.i:                                   ; preds = %drm_fixp_msbset.exit44.i1783.i
  %sub.i1786.i = add i32 %add.i1781.i, -61
  %shr.i1787.i = lshr i32 %sub.i1786.i, 1
  %and.i1788.i = and i32 %sub.i1786.i, 1
  %add2.i1789.i = add nuw nsw i32 %shr.i1787.i, %and.i1788.i
  %sh_prom.i1790.i = zext i32 %add2.i1789.i to i64
  %shr3.i1791.i = ashr i64 %spec.select.i1729.i, %sh_prom.i1790.i
  %sh_prom5.i1792.i = zext i32 %shr.i1787.i to i64
  %shr6.i1793.i = ashr i64 %retval.0.i1755.i, %sh_prom5.i1792.i
  %mul.i1794.i = mul i64 %shr3.i1791.i, %shr6.i1793.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1786.i)
  %cmp7.i1795.i = icmp ugt i32 %sub.i1786.i, 32
  br i1 %cmp7.i1795.i, label %if.then8.i1800.i, label %if.end11.i1802.i

if.then8.i1800.i:                                 ; preds = %if.end.i1796.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i1797.i = add i32 %add.i1781.i, -93
  %sh_prom10.i1798.i = zext i32 %sub9.i1797.i to i64
  %shl.i1799.i = shl i64 %mul.i1794.i, %sh_prom10.i1798.i
  br label %drm_fixp_mul.exit1810.i

if.end11.i1802.i:                                 ; preds = %if.end.i1796.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1786.i)
  %cmp12.not.i1801.i = icmp eq i32 %sub.i1786.i, 32
  br i1 %cmp12.not.i1801.i, label %if.end11.i1802.i.drm_fixp_mul.exit1810.i_crit_edge, label %if.end11.i1802.i.if.then13.i1808.i_crit_edge

if.end11.i1802.i.if.then13.i1808.i_crit_edge:     ; preds = %if.end11.i1802.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i1808.i

if.end11.i1802.i.drm_fixp_mul.exit1810.i_crit_edge: ; preds = %if.end11.i1802.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit1810.i

if.then13.i1808.i:                                ; preds = %if.end11.i1802.i.if.then13.i1808.i_crit_edge, %if.end11.thread.i1785.i
  %shift.05056.i1803.i = phi i32 [ 0, %if.end11.thread.i1785.i ], [ %sub.i1786.i, %if.end11.i1802.i.if.then13.i1808.i_crit_edge ]
  %mul5155.i1804.i = phi i64 [ %mul48.i1784.i, %if.end11.thread.i1785.i ], [ %mul.i1794.i, %if.end11.i1802.i.if.then13.i1808.i_crit_edge ]
  %sub14.i1805.i = sub nuw nsw i32 32, %shift.05056.i1803.i
  %sh_prom15.i1806.i = zext i32 %sub14.i1805.i to i64
  %shr16.i1807.i = ashr i64 %mul5155.i1804.i, %sh_prom15.i1806.i
  br label %drm_fixp_mul.exit1810.i

drm_fixp_mul.exit1810.i:                          ; preds = %if.then13.i1808.i, %if.end11.i1802.i.drm_fixp_mul.exit1810.i_crit_edge, %if.then8.i1800.i
  %retval.0.i1809.i = phi i64 [ %shl.i1799.i, %if.then8.i1800.i ], [ %shr16.i1807.i, %if.then13.i1808.i ], [ %mul.i1794.i, %if.end11.i1802.i.drm_fixp_mul.exit1810.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1809.i)
  %tobool201.not.i = icmp eq i64 %retval.0.i1809.i, 0
  br i1 %tobool201.not.i, label %drm_fixp_mul.exit1810.i.if.end206.i_crit_edge, label %if.then202.i

drm_fixp_mul.exit1810.i.if.end206.i_crit_edge:    ; preds = %drm_fixp_mul.exit1810.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

if.then202.i:                                     ; preds = %drm_fixp_mul.exit1810.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i1809.i)
  %cmp.i1811.i = icmp sgt i64 %retval.0.i1809.i, 0
  %..i1812.i = select i1 %cmp.i1811.i, i64 4294967295, i64 -4294967295
  %sub.i1813.i = add i64 %..i1812.i, %retval.0.i1809.i
  %709 = lshr i64 %sub.i1813.i, 32
  %conv.i4.i1814.i = trunc i64 %709 to i32
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then202.i, %drm_fixp_mul.exit1810.i.if.end206.i_crit_edge
  %conv.i4.i1814.sink.i = phi i32 [ %conv.i4.i1814.i, %if.then202.i ], [ 0, %drm_fixp_mul.exit1810.i.if.end206.i_crit_edge ]
  %710 = ptrtoint ptr %438 to i32
  call void @__asan_store4_noabort(i32 %710)
  store i32 %conv.i4.i1814.sink.i, ptr %438, align 8
  %711 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %tu_size, align 8
  %713 = ptrtoint ptr %new_valid_boundary_link.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %new_valid_boundary_link.i, align 8
  %sub209.i = sub i32 %712, %714
  %715 = ptrtoint ptr %filler_size_tmp.i to i32
  call void @__asan_store4_noabort(i32 %715)
  store i32 %sub209.i, ptr %filler_size_tmp.i, align 8
  %add211.i = add i32 %sub209.i, 1
  %716 = ptrtoint ptr %lower_filler_size_tmp.i to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 %add211.i, ptr %lower_filler_size_tmp.i, align 4
  %add214.i = add i32 %add211.i, %conv.i4.i1814.sink.i
  %717 = ptrtoint ptr %extra_buffer_margin to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %extra_buffer_margin, align 4
  %add215.i = add i32 %add214.i, %718
  %719 = ptrtoint ptr %delay_start_link_tmp.i to i32
  call void @__asan_store4_noabort(i32 %719)
  store i32 %add215.i, ptr %delay_start_link_tmp.i, align 8
  %720 = call i32 @llvm.abs.i32(i32 %add215.i, i1 false) #7
  %721 = zext i32 %720 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i1815.i) #7
  %722 = ptrtoint ptr %rem.i1815.i to i32
  call void @__asan_store8_noabort(i32 %722)
  store i64 -1, ptr %rem.i1815.i, align 8, !annotation !176
  %call.i1816.i = call i64 @div64_u64_rem(i64 noundef %721, i64 noundef 1, ptr noundef nonnull %rem.i1815.i) #7
  %723 = ptrtoint ptr %rem.i1815.i to i32
  call void @__asan_load8_noabort(i32 %723)
  %rem.promoted.i1817.i = load i64, ptr %rem.i1815.i, align 8
  br label %do.body.i1831.i

do.body.i1831.i:                                  ; preds = %do.body.i1831.i.do.body.i1831.i_crit_edge, %if.end206.i
  %storemerge40.i1818.i = phi i64 [ %rem.promoted.i1817.i, %if.end206.i ], [ %storemerge.i1825.i, %do.body.i1831.i.do.body.i1831.i_crit_edge ]
  %res_abs.0.i1819.i = phi i64 [ %call.i1816.i, %if.end206.i ], [ %res_abs.1.i1828.i, %do.body.i1831.i.do.body.i1831.i_crit_edge ]
  %i.0.i1820.i = phi i32 [ 32, %if.end206.i ], [ %dec.i1829.i, %do.body.i1831.i.do.body.i1831.i_crit_edge ]
  %shl.i1821.i = shl i64 %storemerge40.i1818.i, 1
  %shl9.i1822.i = shl i64 %res_abs.0.i1819.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i1821.i)
  %cmp10.not.i1823.i = icmp ne i64 %shl.i1821.i, 0
  %sub11.i1824.neg.i = sext i1 %cmp10.not.i1823.i to i64
  %storemerge.i1825.i = add i64 %shl.i1821.i, %sub11.i1824.neg.i
  %or.i1827.i = zext i1 %cmp10.not.i1823.i to i64
  %res_abs.1.i1828.i = or i64 %shl9.i1822.i, %or.i1827.i
  %dec.i1829.i = add nsw i32 %i.0.i1820.i, -1
  %cmp12.not.i1830.i = icmp eq i32 %dec.i1829.i, 0
  br i1 %cmp12.not.i1830.i, label %drm_fixp_from_fraction.exit1839.i, label %do.body.i1831.i.do.body.i1831.i_crit_edge

do.body.i1831.i.do.body.i1831.i_crit_edge:        ; preds = %do.body.i1831.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i1831.i

drm_fixp_from_fraction.exit1839.i:                ; preds = %do.body.i1831.i
  %shl13.i1832.mask.i = and i64 %storemerge.i1825.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i1832.mask.i)
  %cmp14.i1833.i = icmp ne i64 %shl13.i1832.mask.i, 0
  %724 = zext i1 %cmp14.i1833.i to i64
  %add.i1834.i = add i64 %res_abs.1.i1828.i, %724
  %sub22.i1836.i = sub i64 0, %add.i1834.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add215.i)
  %tobool20.not39.i1837.i = icmp slt i32 %add215.i, 0
  %spec.select.i1838.i = select i1 %tobool20.not39.i1837.i, i64 %sub22.i1836.i, i64 %add.i1834.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i1815.i) #7
  %725 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %725)
  %726 = load i64, ptr %call7.i.i, align 8
  %shr12.i.i1840.i = lshr i64 %spec.select.i1838.i, 63
  br label %for.body.i.i1846.i

for.body.i.i1846.i:                               ; preds = %for.inc.i.i1849.i.for.body.i.i1846.i_crit_edge, %drm_fixp_from_fraction.exit1839.i
  %shift.014.i.i1841.i = phi i32 [ 62, %drm_fixp_from_fraction.exit1839.i ], [ %dec.i.i1847.i, %for.inc.i.i1849.i.for.body.i.i1846.i_crit_edge ]
  %sh_prom.i.i1842.i = zext i32 %shift.014.i.i1841.i to i64
  %shr213.i.i1843.i = lshr i64 %spec.select.i1838.i, %sh_prom.i.i1842.i
  %and3.i.i1844.i = and i64 %shr213.i.i1843.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i1844.i, i64 %shr12.i.i1840.i)
  %cmp5.not.i.i1845.i = icmp eq i64 %and3.i.i1844.i, %shr12.i.i1840.i
  br i1 %cmp5.not.i.i1845.i, label %for.inc.i.i1849.i, label %for.body.i.i1846.i.drm_fixp_div.exit1866.i_crit_edge

for.body.i.i1846.i.drm_fixp_div.exit1866.i_crit_edge: ; preds = %for.body.i.i1846.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1866.i

for.inc.i.i1849.i:                                ; preds = %for.body.i.i1846.i
  %dec.i.i1847.i = add nsw i32 %shift.014.i.i1841.i, -1
  %cmp.not.i.i1848.i = icmp eq i32 %dec.i.i1847.i, 0
  br i1 %cmp.not.i.i1848.i, label %for.inc.i.i1849.i.drm_fixp_div.exit1866.i_crit_edge, label %for.inc.i.i1849.i.for.body.i.i1846.i_crit_edge

for.inc.i.i1849.i.for.body.i.i1846.i_crit_edge:   ; preds = %for.inc.i.i1849.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1846.i

for.inc.i.i1849.i.drm_fixp_div.exit1866.i_crit_edge: ; preds = %for.inc.i.i1849.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit1866.i

drm_fixp_div.exit1866.i:                          ; preds = %for.inc.i.i1849.i.drm_fixp_div.exit1866.i_crit_edge, %for.body.i.i1846.i.drm_fixp_div.exit1866.i_crit_edge
  %shift.0.lcssa.i.i1850.i = phi i32 [ 0, %for.inc.i.i1849.i.drm_fixp_div.exit1866.i_crit_edge ], [ %shift.014.i.i1841.i, %for.body.i.i1846.i.drm_fixp_div.exit1866.i_crit_edge ]
  %sub.i1851.i = sub i32 62, %shift.0.lcssa.i.i1850.i
  %sh_prom.i1852.i = zext i32 %sub.i1851.i to i64
  %shl.i1853.i = shl i64 %spec.select.i1838.i, %sh_prom.i1852.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1851.i)
  %cmp.i1854.i = icmp ult i32 %sub.i1851.i, 32
  %sub1.i1855.i = add i32 %shift.0.lcssa.i.i1850.i, -30
  %narrow.i1856.i = select i1 %cmp.i1854.i, i32 %sub1.i1855.i, i32 0
  %shr.i1857.i = zext i32 %narrow.i1856.i to i64
  %b.addr.0.i1858.i = ashr i64 %726, %shr.i1857.i
  %call3.i1859.i = call i64 @div64_s64(i64 noundef %shl.i1853.i, i64 noundef %b.addr.0.i1858.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i1851.i)
  %cmp4.i1860.i = icmp ugt i32 %sub.i1851.i, 32
  %sub6.i1861.i = sub i32 30, %shift.0.lcssa.i.i1850.i
  %narrow19.i1862.i = select i1 %cmp4.i1860.i, i32 %sub6.i1861.i, i32 0
  %shr8.i1863.i = zext i32 %narrow19.i1862.i to i64
  %retval.0.i1864.i = ashr i64 %call3.i1859.i, %shr8.i1863.i
  %727 = ptrtoint ptr %delay_start_time_fp to i32
  call void @__asan_store8_noabort(i32 %727)
  store i64 %retval.0.i1864.i, ptr %delay_start_time_fp, align 8
  %728 = ptrtoint ptr %n_n_err_fp to i32
  call void @__asan_load8_noabort(i32 %728)
  %729 = load i64, ptr %n_n_err_fp, align 8
  %730 = ptrtoint ptr %diff_abs_fp to i32
  call void @__asan_load8_noabort(i32 %730)
  %731 = load i64, ptr %diff_abs_fp, align 8
  %call222.i = call fastcc i32 @_tu_param_compare(i64 noundef %729, i64 noundef %731) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call222.i)
  %cmp223.i = icmp eq i32 %call222.i, 2
  %732 = ptrtoint ptr %n_n_err_fp to i32
  call void @__asan_load8_noabort(i32 %732)
  %733 = load i64, ptr %n_n_err_fp, align 8
  %734 = ptrtoint ptr %err_fp to i32
  call void @__asan_load8_noabort(i32 %734)
  %735 = load i64, ptr %err_fp, align 8
  %call229.i = call fastcc i32 @_tu_param_compare(i64 noundef %733, i64 noundef %735) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call229.i)
  %cmp230.i = icmp ne i32 %call229.i, 2
  %736 = ptrtoint ptr %hbp_time_fp to i32
  call void @__asan_load8_noabort(i32 %736)
  %737 = load i64, ptr %hbp_time_fp, align 8
  %738 = ptrtoint ptr %delay_start_time_fp to i32
  call void @__asan_load8_noabort(i32 %738)
  %739 = load i64, ptr %delay_start_time_fp, align 8
  %call236.i = call fastcc i32 @_tu_param_compare(i64 noundef %737, i64 noundef %739) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call236.i)
  %cmp237.i = icmp eq i32 %call236.i, 2
  %740 = ptrtoint ptr %even_distribution to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %even_distribution, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %741)
  %cmp243.i = icmp eq i32 %741, 1
  br i1 %cmp243.i, label %drm_fixp_div.exit1866.i.land.lhs.true249.i_crit_edge, label %lor.lhs.false.i

drm_fixp_div.exit1866.i.land.lhs.true249.i_crit_edge: ; preds = %drm_fixp_div.exit1866.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true249.i

lor.lhs.false.i:                                  ; preds = %drm_fixp_div.exit1866.i
  %742 = ptrtoint ptr %even_distribution_BF to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %even_distribution_BF, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %743)
  %cmp245.i = icmp eq i32 %743, 0
  br i1 %cmp245.i, label %land.lhs.true.i, label %lor.lhs.false.i.if.else285.i_crit_edge

lor.lhs.false.i.if.else285.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else285.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %744 = ptrtoint ptr %even_distribution_legacy to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %even_distribution_legacy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %745)
  %cmp247.i = icmp eq i32 %745, 0
  br i1 %cmp247.i, label %land.lhs.true.i.land.lhs.true249.i_crit_edge, label %land.lhs.true.i.if.else285.i_crit_edge

land.lhs.true.i.if.else285.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else285.i

land.lhs.true.i.land.lhs.true249.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true249.i

land.lhs.true249.i:                               ; preds = %land.lhs.true.i.land.lhs.true249.i_crit_edge, %drm_fixp_div.exit1866.i.land.lhs.true249.i_crit_edge
  %746 = ptrtoint ptr %n_err_fp to i32
  call void @__asan_load8_noabort(i32 %746)
  %747 = load i64, ptr %n_err_fp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %747)
  %cmp251.i = icmp sgt i64 %747, -1
  br i1 %cmp251.i, label %land.lhs.true253.i, label %land.lhs.true249.i.if.else285.i_crit_edge

land.lhs.true249.i.if.else285.i_crit_edge:        ; preds = %land.lhs.true249.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else285.i

land.lhs.true253.i:                               ; preds = %land.lhs.true249.i
  %748 = ptrtoint ptr %n_n_err_fp to i32
  call void @__asan_load8_noabort(i32 %748)
  %749 = load i64, ptr %n_n_err_fp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %749)
  %cmp255.i = icmp slt i64 %749, 0
  %brmerge.i = select i1 %cmp255.i, i1 true, i1 %cmp230.i
  br i1 %brmerge.i, label %land.lhs.true253.i.if.else285.i_crit_edge, label %land.lhs.true259.i

land.lhs.true253.i.if.else285.i_crit_edge:        ; preds = %land.lhs.true253.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else285.i

land.lhs.true259.i:                               ; preds = %land.lhs.true253.i
  br i1 %cmp223.i, label %land.lhs.true259.i.land.lhs.true264.i_crit_edge, label %lor.lhs.false261.i

land.lhs.true259.i.land.lhs.true264.i_crit_edge:  ; preds = %land.lhs.true259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true264.i

lor.lhs.false261.i:                               ; preds = %land.lhs.true259.i
  %750 = ptrtoint ptr %min_hblank_violated.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %min_hblank_violated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %751)
  %cmp262.i = icmp eq i32 %751, 1
  br i1 %cmp262.i, label %lor.lhs.false261.i.land.lhs.true264.i_crit_edge, label %lor.lhs.false261.i.if.else285.i_crit_edge

lor.lhs.false261.i.if.else285.i_crit_edge:        ; preds = %lor.lhs.false261.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else285.i

lor.lhs.false261.i.land.lhs.true264.i_crit_edge:  ; preds = %lor.lhs.false261.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true264.i

land.lhs.true264.i:                               ; preds = %lor.lhs.false261.i.land.lhs.true264.i_crit_edge, %land.lhs.true259.i.land.lhs.true264.i_crit_edge
  %752 = ptrtoint ptr %new_valid_boundary_link.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load i32, ptr %new_valid_boundary_link.i, align 8
  %sub266.i = add i32 %753, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub266.i)
  %cmp267.i = icmp slt i32 %sub266.i, 1
  %brmerge500.i = select i1 %cmp267.i, i1 true, i1 %cmp237.i
  br i1 %brmerge500.i, label %land.lhs.true264.i.if.else285.i_crit_edge, label %land.lhs.true271.i

land.lhs.true264.i.if.else285.i_crit_edge:        ; preds = %land.lhs.true264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else285.i

land.lhs.true271.i:                               ; preds = %land.lhs.true264.i
  %754 = ptrtoint ptr %delay_start_link_tmp.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %delay_start_link_tmp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %755)
  %cmp273.i = icmp slt i32 %755, 1024
  br i1 %cmp273.i, label %if.then275.i, label %land.lhs.true271.i.if.else285.i_crit_edge

land.lhs.true271.i.if.else285.i_crit_edge:        ; preds = %land.lhs.true271.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else285.i

if.then275.i:                                     ; preds = %land.lhs.true271.i
  call void @__sanitizer_cov_trace_pc() #9
  %756 = ptrtoint ptr %i_upper_boundary_count to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load i32, ptr %i_upper_boundary_count, align 4
  %758 = ptrtoint ptr %upper_boundary_count to i32
  call void @__asan_store4_noabort(i32 %758)
  store i32 %757, ptr %upper_boundary_count, align 4
  %759 = ptrtoint ptr %i_lower_boundary_count to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %i_lower_boundary_count, align 8
  %761 = ptrtoint ptr %lower_boundary_count to i32
  call void @__asan_store4_noabort(i32 %761)
  store i32 %760, ptr %lower_boundary_count, align 8
  %762 = ptrtoint ptr %err_fp to i32
  call void @__asan_store8_noabort(i32 %762)
  store i64 %749, ptr %err_fp, align 8
  %763 = ptrtoint ptr %boundary_moderation_en to i32
  call void @__asan_store1_noabort(i32 %763)
  store i8 1, ptr %boundary_moderation_en, align 4
  %764 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load i32, ptr %tu_size, align 8
  %766 = ptrtoint ptr %tu_size_desired to i32
  call void @__asan_store4_noabort(i32 %766)
  store i32 %765, ptr %tu_size_desired, align 4
  %767 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_store4_noabort(i32 %767)
  store i32 %753, ptr %valid_boundary_link, align 4
  %768 = ptrtoint ptr %effective_valid_fp.i to i32
  call void @__asan_load8_noabort(i32 %768)
  %769 = load i64, ptr %effective_valid_fp.i, align 8
  %770 = ptrtoint ptr %effective_valid_recorded_fp.i to i32
  call void @__asan_store8_noabort(i32 %770)
  store i64 %769, ptr %effective_valid_recorded_fp.i, align 8
  %771 = ptrtoint ptr %even_distribution_BF to i32
  call void @__asan_store4_noabort(i32 %771)
  store i32 1, ptr %even_distribution_BF, align 8
  %772 = ptrtoint ptr %delay_start_link to i32
  call void @__asan_store4_noabort(i32 %772)
  store i32 %755, ptr %delay_start_link, align 8
  br label %_tu_valid_boundary_calc.exit

if.else285.i:                                     ; preds = %land.lhs.true271.i.if.else285.i_crit_edge, %land.lhs.true264.i.if.else285.i_crit_edge, %lor.lhs.false261.i.if.else285.i_crit_edge, %land.lhs.true253.i.if.else285.i_crit_edge, %land.lhs.true249.i.if.else285.i_crit_edge, %land.lhs.true.i.if.else285.i_crit_edge, %lor.lhs.false.i.if.else285.i_crit_edge
  %773 = ptrtoint ptr %boundary_mod_lower_err3247 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %boundary_mod_lower_err3247, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %774)
  %cmp286.i = icmp eq i32 %774, 0
  br i1 %cmp286.i, label %if.then288.i, label %if.else285.i._tu_valid_boundary_calc.exit_crit_edge

if.else285.i._tu_valid_boundary_calc.exit_crit_edge: ; preds = %if.else285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_tu_valid_boundary_calc.exit

if.then288.i:                                     ; preds = %if.else285.i
  %775 = ptrtoint ptr %n_n_err_fp to i32
  call void @__asan_load8_noabort(i32 %775)
  %776 = load i64, ptr %n_n_err_fp, align 8
  %777 = ptrtoint ptr %diff_abs_fp to i32
  call void @__asan_load8_noabort(i32 %777)
  %778 = load i64, ptr %diff_abs_fp, align 8
  %call291.i = call fastcc i32 @_tu_param_compare(i64 noundef %776, i64 noundef %778) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call291.i)
  %cmp292.i = icmp eq i32 %call291.i, 2
  br i1 %cmp292.i, label %if.then294.i, label %if.then288.i._tu_valid_boundary_calc.exit_crit_edge

if.then288.i._tu_valid_boundary_calc.exit_crit_edge: ; preds = %if.then288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_tu_valid_boundary_calc.exit

if.then294.i:                                     ; preds = %if.then288.i
  call void @__sanitizer_cov_trace_pc() #9
  %779 = ptrtoint ptr %boundary_mod_lower_err3247 to i32
  call void @__asan_store4_noabort(i32 %779)
  store i32 1, ptr %boundary_mod_lower_err3247, align 8
  br label %_tu_valid_boundary_calc.exit

_tu_valid_boundary_calc.exit:                     ; preds = %if.then294.i, %if.then288.i._tu_valid_boundary_calc.exit_crit_edge, %if.else285.i._tu_valid_boundary_calc.exit_crit_edge, %if.then275.i
  %780 = ptrtoint ptr %i_lower_boundary_count to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %i_lower_boundary_count, align 8
  %inc334 = add i32 %781, 1
  store i32 %inc334, ptr %i_lower_boundary_count, align 8
  %cmp329 = icmp slt i32 %inc334, 16
  br i1 %cmp329, label %_tu_valid_boundary_calc.exit.for.body331_crit_edge, label %for.inc336

_tu_valid_boundary_calc.exit.for.body331_crit_edge: ; preds = %_tu_valid_boundary_calc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body331

for.inc336:                                       ; preds = %_tu_valid_boundary_calc.exit
  %782 = ptrtoint ptr %i_upper_boundary_count to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load i32, ptr %i_upper_boundary_count, align 4
  %inc338 = add i32 %783, 1
  store i32 %inc338, ptr %i_upper_boundary_count, align 4
  %cmp323 = icmp slt i32 %inc338, 16
  br i1 %cmp323, label %for.inc336.for.cond327.preheader_crit_edge, label %for.inc340

for.inc336.for.cond327.preheader_crit_edge:       ; preds = %for.inc336
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond327.preheader

for.inc340:                                       ; preds = %for.inc336
  %784 = ptrtoint ptr %tu_size to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %tu_size, align 8
  %inc342 = add i32 %785, 1
  store i32 %inc342, ptr %tu_size, align 8
  %cmp317 = icmp slt i32 %inc342, 65
  br i1 %cmp317, label %for.inc340.for.cond321.preheader_crit_edge, label %for.end343

for.inc340.for.cond321.preheader_crit_edge:       ; preds = %for.inc340
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond321.preheader

for.end343:                                       ; preds = %for.inc340
  %786 = ptrtoint ptr %delay_start_link_extra_pixclk to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %delay_start_link_extra_pixclk, align 8
  %dec = add i32 %787, -1
  store i32 %dec, ptr %delay_start_link_extra_pixclk, align 8
  %788 = ptrtoint ptr %boundary_moderation_en to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %boundary_moderation_en, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %789)
  %cmp348.not = icmp eq i8 %789, 1
  br i1 %cmp348.not, label %if.then362, label %land.lhs.true350

land.lhs.true350:                                 ; preds = %for.end343
  %790 = ptrtoint ptr %boundary_mod_lower_err3247 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %boundary_mod_lower_err3247, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %791)
  %cmp352 = icmp ne i32 %791, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp355.not = icmp eq i32 %dec, 0
  %or.cond765 = select i1 %cmp352, i1 true, i1 %cmp355.not
  br i1 %or.cond765, label %land.lhs.true350.if.end410_crit_edge, label %land.lhs.true350.do.body_crit_edge

land.lhs.true350.do.body_crit_edge:               ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true350.if.end410_crit_edge:             ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end410

if.then362:                                       ; preds = %for.end343
  %792 = ptrtoint ptr %upper_boundary_count to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load i32, ptr %upper_boundary_count, align 4
  %794 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %valid_boundary_link, align 4
  %mul = mul i32 %795, %793
  %796 = ptrtoint ptr %lower_boundary_count to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load i32, ptr %lower_boundary_count, align 8
  %sub367 = add i32 %795, -1
  %mul368 = mul i32 %797, %sub367
  %add369 = add i32 %mul368, %mul
  %798 = call i32 @llvm.abs.i32(i32 %add369, i1 false)
  %799 = zext i32 %798 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2599) #7
  %800 = ptrtoint ptr %rem.i2599 to i32
  call void @__asan_store8_noabort(i32 %800)
  store i64 -1, ptr %rem.i2599, align 8, !annotation !176
  %call.i2600 = call i64 @div64_u64_rem(i64 noundef %799, i64 noundef 1, ptr noundef nonnull %rem.i2599) #7
  %801 = ptrtoint ptr %rem.i2599 to i32
  call void @__asan_load8_noabort(i32 %801)
  %rem.promoted.i2601 = load i64, ptr %rem.i2599, align 8
  br label %do.body.i2615

do.body.i2615:                                    ; preds = %do.body.i2615.do.body.i2615_crit_edge, %if.then362
  %storemerge40.i2602 = phi i64 [ %rem.promoted.i2601, %if.then362 ], [ %storemerge.i2609, %do.body.i2615.do.body.i2615_crit_edge ]
  %res_abs.0.i2603 = phi i64 [ %call.i2600, %if.then362 ], [ %res_abs.1.i2612, %do.body.i2615.do.body.i2615_crit_edge ]
  %i.0.i2604 = phi i32 [ 32, %if.then362 ], [ %dec.i2613, %do.body.i2615.do.body.i2615_crit_edge ]
  %shl.i2605 = shl i64 %storemerge40.i2602, 1
  %shl9.i2606 = shl i64 %res_abs.0.i2603, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2605)
  %cmp10.not.i2607 = icmp ne i64 %shl.i2605, 0
  %sub11.i2608.neg = sext i1 %cmp10.not.i2607 to i64
  %storemerge.i2609 = add i64 %shl.i2605, %sub11.i2608.neg
  %or.i2611 = zext i1 %cmp10.not.i2607 to i64
  %res_abs.1.i2612 = or i64 %shl9.i2606, %or.i2611
  %dec.i2613 = add nsw i32 %i.0.i2604, -1
  %cmp12.not.i2614 = icmp eq i32 %dec.i2613, 0
  br i1 %cmp12.not.i2614, label %drm_fixp_from_fraction.exit2624, label %do.body.i2615.do.body.i2615_crit_edge

do.body.i2615.do.body.i2615_crit_edge:            ; preds = %do.body.i2615
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2615

drm_fixp_from_fraction.exit2624:                  ; preds = %do.body.i2615
  %shl13.i2616.mask = and i64 %storemerge.i2609, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2616.mask)
  %cmp14.i2617 = icmp ne i64 %shl13.i2616.mask, 0
  %802 = zext i1 %cmp14.i2617 to i64
  %add.i2618 = add i64 %res_abs.1.i2612, %802
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add369)
  %tobool20.not39.i2621 = icmp slt i32 %add369, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2599) #7
  %803 = ptrtoint ptr %upper_boundary_count to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %upper_boundary_count, align 4
  %805 = ptrtoint ptr %lower_boundary_count to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load i32, ptr %lower_boundary_count, align 8
  %add374 = add i32 %806, %804
  %807 = call i32 @llvm.abs.i32(i32 %add374, i1 false)
  %808 = zext i32 %807 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2625) #7
  %809 = ptrtoint ptr %rem.i2625 to i32
  call void @__asan_store8_noabort(i32 %809)
  store i64 -1, ptr %rem.i2625, align 8, !annotation !176
  %call.i2626 = call i64 @div64_u64_rem(i64 noundef %808, i64 noundef 1, ptr noundef nonnull %rem.i2625) #7
  %810 = ptrtoint ptr %rem.i2625 to i32
  call void @__asan_load8_noabort(i32 %810)
  %rem.promoted.i2627 = load i64, ptr %rem.i2625, align 8
  br label %do.body.i2641

do.body.i2641:                                    ; preds = %do.body.i2641.do.body.i2641_crit_edge, %drm_fixp_from_fraction.exit2624
  %storemerge40.i2628 = phi i64 [ %rem.promoted.i2627, %drm_fixp_from_fraction.exit2624 ], [ %storemerge.i2635, %do.body.i2641.do.body.i2641_crit_edge ]
  %res_abs.0.i2629 = phi i64 [ %call.i2626, %drm_fixp_from_fraction.exit2624 ], [ %res_abs.1.i2638, %do.body.i2641.do.body.i2641_crit_edge ]
  %i.0.i2630 = phi i32 [ 32, %drm_fixp_from_fraction.exit2624 ], [ %dec.i2639, %do.body.i2641.do.body.i2641_crit_edge ]
  %shl.i2631 = shl i64 %storemerge40.i2628, 1
  %shl9.i2632 = shl i64 %res_abs.0.i2629, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2631)
  %cmp10.not.i2633 = icmp ne i64 %shl.i2631, 0
  %sub11.i2634.neg = sext i1 %cmp10.not.i2633 to i64
  %storemerge.i2635 = add i64 %shl.i2631, %sub11.i2634.neg
  %or.i2637 = zext i1 %cmp10.not.i2633 to i64
  %res_abs.1.i2638 = or i64 %shl9.i2632, %or.i2637
  %dec.i2639 = add nsw i32 %i.0.i2630, -1
  %cmp12.not.i2640 = icmp eq i32 %dec.i2639, 0
  br i1 %cmp12.not.i2640, label %drm_fixp_from_fraction.exit2650, label %do.body.i2641.do.body.i2641_crit_edge

do.body.i2641.do.body.i2641_crit_edge:            ; preds = %do.body.i2641
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2641

drm_fixp_from_fraction.exit2650:                  ; preds = %do.body.i2641
  %sub22.i2620 = sub i64 0, %add.i2618
  %spec.select.i2622 = select i1 %tobool20.not39.i2621, i64 %sub22.i2620, i64 %add.i2618
  %shl13.i2642.mask = and i64 %storemerge.i2635, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2642.mask)
  %cmp14.i2643 = icmp ne i64 %shl13.i2642.mask, 0
  %811 = zext i1 %cmp14.i2643 to i64
  %add.i2644 = add i64 %res_abs.1.i2638, %811
  %sub22.i2646 = sub i64 0, %add.i2644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add374)
  %tobool20.not39.i2647 = icmp slt i32 %add374, 0
  %spec.select.i2648 = select i1 %tobool20.not39.i2647, i64 %sub22.i2646, i64 %add.i2644
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2625) #7
  %812 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %812)
  store i64 %spec.select.i2648, ptr %temp2_fp, align 8
  %shr12.i.i2651 = lshr i64 %spec.select.i2622, 63
  br label %for.body.i.i2657

for.body.i.i2657:                                 ; preds = %for.inc.i.i2660.for.body.i.i2657_crit_edge, %drm_fixp_from_fraction.exit2650
  %shift.014.i.i2652 = phi i32 [ 62, %drm_fixp_from_fraction.exit2650 ], [ %dec.i.i2658, %for.inc.i.i2660.for.body.i.i2657_crit_edge ]
  %sh_prom.i.i2653 = zext i32 %shift.014.i.i2652 to i64
  %shr213.i.i2654 = lshr i64 %spec.select.i2622, %sh_prom.i.i2653
  %and3.i.i2655 = and i64 %shr213.i.i2654, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2655, i64 %shr12.i.i2651)
  %cmp5.not.i.i2656 = icmp eq i64 %and3.i.i2655, %shr12.i.i2651
  br i1 %cmp5.not.i.i2656, label %for.inc.i.i2660, label %for.body.i.i2657.drm_fixp_div.exit2677_crit_edge

for.body.i.i2657.drm_fixp_div.exit2677_crit_edge: ; preds = %for.body.i.i2657
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2677

for.inc.i.i2660:                                  ; preds = %for.body.i.i2657
  %dec.i.i2658 = add nsw i32 %shift.014.i.i2652, -1
  %cmp.not.i.i2659 = icmp eq i32 %dec.i.i2658, 0
  br i1 %cmp.not.i.i2659, label %for.inc.i.i2660.drm_fixp_div.exit2677_crit_edge, label %for.inc.i.i2660.for.body.i.i2657_crit_edge

for.inc.i.i2660.for.body.i.i2657_crit_edge:       ; preds = %for.inc.i.i2660
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2657

for.inc.i.i2660.drm_fixp_div.exit2677_crit_edge:  ; preds = %for.inc.i.i2660
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2677

drm_fixp_div.exit2677:                            ; preds = %for.inc.i.i2660.drm_fixp_div.exit2677_crit_edge, %for.body.i.i2657.drm_fixp_div.exit2677_crit_edge
  %shift.0.lcssa.i.i2661 = phi i32 [ 0, %for.inc.i.i2660.drm_fixp_div.exit2677_crit_edge ], [ %shift.014.i.i2652, %for.body.i.i2657.drm_fixp_div.exit2677_crit_edge ]
  %sub.i2662 = sub i32 62, %shift.0.lcssa.i.i2661
  %sh_prom.i2663 = zext i32 %sub.i2662 to i64
  %shl.i2664 = shl i64 %spec.select.i2622, %sh_prom.i2663
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2662)
  %cmp.i2665 = icmp ult i32 %sub.i2662, 32
  %sub1.i2666 = add i32 %shift.0.lcssa.i.i2661, -30
  %narrow.i2667 = select i1 %cmp.i2665, i32 %sub1.i2666, i32 0
  %shr.i2668 = zext i32 %narrow.i2667 to i64
  %b.addr.0.i2669 = ashr i64 %spec.select.i2648, %shr.i2668
  %call3.i2670 = call i64 @div64_s64(i64 noundef %shl.i2664, i64 noundef %b.addr.0.i2669) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2662)
  %cmp4.i2671 = icmp ugt i32 %sub.i2662, 32
  %sub6.i2672 = sub i32 30, %shift.0.lcssa.i.i2661
  %narrow19.i2673 = select i1 %cmp4.i2671, i32 %sub6.i2672, i32 0
  %shr8.i2674 = zext i32 %narrow19.i2673 to i64
  %retval.0.i2675 = ashr i64 %call3.i2670, %shr8.i2674
  %813 = ptrtoint ptr %resulting_valid_fp to i32
  call void @__asan_store8_noabort(i32 %813)
  store i64 %retval.0.i2675, ptr %resulting_valid_fp, align 8
  %814 = ptrtoint ptr %tu_size_desired to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load i32, ptr %tu_size_desired, align 4
  %816 = call i32 @llvm.abs.i32(i32 %815, i1 false)
  %817 = zext i32 %816 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2678) #7
  %818 = ptrtoint ptr %rem.i2678 to i32
  call void @__asan_store8_noabort(i32 %818)
  store i64 -1, ptr %rem.i2678, align 8, !annotation !176
  %call.i2679 = call i64 @div64_u64_rem(i64 noundef %817, i64 noundef 1, ptr noundef nonnull %rem.i2678) #7
  %819 = ptrtoint ptr %rem.i2678 to i32
  call void @__asan_load8_noabort(i32 %819)
  %rem.promoted.i2680 = load i64, ptr %rem.i2678, align 8
  br label %do.body.i2694

do.body.i2694:                                    ; preds = %do.body.i2694.do.body.i2694_crit_edge, %drm_fixp_div.exit2677
  %storemerge40.i2681 = phi i64 [ %rem.promoted.i2680, %drm_fixp_div.exit2677 ], [ %storemerge.i2688, %do.body.i2694.do.body.i2694_crit_edge ]
  %res_abs.0.i2682 = phi i64 [ %call.i2679, %drm_fixp_div.exit2677 ], [ %res_abs.1.i2691, %do.body.i2694.do.body.i2694_crit_edge ]
  %i.0.i2683 = phi i32 [ 32, %drm_fixp_div.exit2677 ], [ %dec.i2692, %do.body.i2694.do.body.i2694_crit_edge ]
  %shl.i2684 = shl i64 %storemerge40.i2681, 1
  %shl9.i2685 = shl i64 %res_abs.0.i2682, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2684)
  %cmp10.not.i2686 = icmp ne i64 %shl.i2684, 0
  %sub11.i2687.neg = sext i1 %cmp10.not.i2686 to i64
  %storemerge.i2688 = add i64 %shl.i2684, %sub11.i2687.neg
  %or.i2690 = zext i1 %cmp10.not.i2686 to i64
  %res_abs.1.i2691 = or i64 %shl9.i2685, %or.i2690
  %dec.i2692 = add nsw i32 %i.0.i2683, -1
  %cmp12.not.i2693 = icmp eq i32 %dec.i2692, 0
  br i1 %cmp12.not.i2693, label %drm_fixp_from_fraction.exit2703, label %do.body.i2694.do.body.i2694_crit_edge

do.body.i2694.do.body.i2694_crit_edge:            ; preds = %do.body.i2694
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2694

drm_fixp_from_fraction.exit2703:                  ; preds = %do.body.i2694
  %shl13.i2695.mask = and i64 %storemerge.i2688, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2695.mask)
  %cmp14.i2696 = icmp ne i64 %shl13.i2695.mask, 0
  %820 = zext i1 %cmp14.i2696 to i64
  %add.i2697 = add i64 %res_abs.1.i2691, %820
  %sub22.i2699 = sub i64 0, %add.i2697
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %815)
  %tobool20.not39.i2700 = icmp slt i32 %815, 0
  %spec.select.i2701 = select i1 %tobool20.not39.i2700, i64 %sub22.i2699, i64 %add.i2697
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2678) #7
  %821 = ptrtoint ptr %original_ratio_fp to i32
  call void @__asan_load8_noabort(i32 %821)
  %822 = load i64, ptr %original_ratio_fp, align 8
  %shr12.i.i2704 = lshr i64 %822, 63
  br label %for.body.i.i2710

for.body.i.i2710:                                 ; preds = %for.inc.i.i2713.for.body.i.i2710_crit_edge, %drm_fixp_from_fraction.exit2703
  %shift.014.i.i2705 = phi i32 [ 62, %drm_fixp_from_fraction.exit2703 ], [ %dec.i.i2711, %for.inc.i.i2713.for.body.i.i2710_crit_edge ]
  %sh_prom.i.i2706 = zext i32 %shift.014.i.i2705 to i64
  %shr213.i.i2707 = lshr i64 %822, %sh_prom.i.i2706
  %and3.i.i2708 = and i64 %shr213.i.i2707, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2708, i64 %shr12.i.i2704)
  %cmp5.not.i.i2709 = icmp eq i64 %and3.i.i2708, %shr12.i.i2704
  br i1 %cmp5.not.i.i2709, label %for.inc.i.i2713, label %for.body.i.i2710.drm_fixp_msbset.exit.i2716_crit_edge

for.body.i.i2710.drm_fixp_msbset.exit.i2716_crit_edge: ; preds = %for.body.i.i2710
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2716

for.inc.i.i2713:                                  ; preds = %for.body.i.i2710
  %dec.i.i2711 = add nsw i32 %shift.014.i.i2705, -1
  %cmp.not.i.i2712 = icmp eq i32 %dec.i.i2711, 0
  br i1 %cmp.not.i.i2712, label %for.inc.i.i2713.drm_fixp_msbset.exit.i2716_crit_edge, label %for.inc.i.i2713.for.body.i.i2710_crit_edge

for.inc.i.i2713.for.body.i.i2710_crit_edge:       ; preds = %for.inc.i.i2713
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2710

for.inc.i.i2713.drm_fixp_msbset.exit.i2716_crit_edge: ; preds = %for.inc.i.i2713
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2716

drm_fixp_msbset.exit.i2716:                       ; preds = %for.inc.i.i2713.drm_fixp_msbset.exit.i2716_crit_edge, %for.body.i.i2710.drm_fixp_msbset.exit.i2716_crit_edge
  %shift.0.lcssa.i.i2714 = phi i32 [ 0, %for.inc.i.i2713.drm_fixp_msbset.exit.i2716_crit_edge ], [ %shift.014.i.i2705, %for.body.i.i2710.drm_fixp_msbset.exit.i2716_crit_edge ]
  %shr12.i33.i2715 = lshr i64 %spec.select.i2701, 63
  br label %for.body.i39.i2722

for.body.i39.i2722:                               ; preds = %for.inc.i42.i2725.for.body.i39.i2722_crit_edge, %drm_fixp_msbset.exit.i2716
  %shift.014.i34.i2717 = phi i32 [ 62, %drm_fixp_msbset.exit.i2716 ], [ %dec.i40.i2723, %for.inc.i42.i2725.for.body.i39.i2722_crit_edge ]
  %sh_prom.i35.i2718 = zext i32 %shift.014.i34.i2717 to i64
  %shr213.i36.i2719 = lshr i64 %spec.select.i2701, %sh_prom.i35.i2718
  %and3.i37.i2720 = and i64 %shr213.i36.i2719, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i2720, i64 %shr12.i33.i2715)
  %cmp5.not.i38.i2721 = icmp eq i64 %and3.i37.i2720, %shr12.i33.i2715
  br i1 %cmp5.not.i38.i2721, label %for.inc.i42.i2725, label %for.body.i39.i2722.drm_fixp_msbset.exit44.i2729_crit_edge

for.body.i39.i2722.drm_fixp_msbset.exit44.i2729_crit_edge: ; preds = %for.body.i39.i2722
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2729

for.inc.i42.i2725:                                ; preds = %for.body.i39.i2722
  %dec.i40.i2723 = add nsw i32 %shift.014.i34.i2717, -1
  %cmp.not.i41.i2724 = icmp eq i32 %dec.i40.i2723, 0
  br i1 %cmp.not.i41.i2724, label %for.inc.i42.i2725.drm_fixp_msbset.exit44.i2729_crit_edge, label %for.inc.i42.i2725.for.body.i39.i2722_crit_edge

for.inc.i42.i2725.for.body.i39.i2722_crit_edge:   ; preds = %for.inc.i42.i2725
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i2722

for.inc.i42.i2725.drm_fixp_msbset.exit44.i2729_crit_edge: ; preds = %for.inc.i42.i2725
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2729

drm_fixp_msbset.exit44.i2729:                     ; preds = %for.inc.i42.i2725.drm_fixp_msbset.exit44.i2729_crit_edge, %for.body.i39.i2722.drm_fixp_msbset.exit44.i2729_crit_edge
  %shift.0.lcssa.i43.i2726 = phi i32 [ 0, %for.inc.i42.i2725.drm_fixp_msbset.exit44.i2729_crit_edge ], [ %shift.014.i34.i2717, %for.body.i39.i2722.drm_fixp_msbset.exit44.i2729_crit_edge ]
  %add.i2727 = add i32 %shift.0.lcssa.i43.i2726, %shift.0.lcssa.i.i2714
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i2727)
  %cmp.i2728 = icmp ugt i32 %add.i2727, 61
  br i1 %cmp.i2728, label %if.end.i2742, label %if.end11.thread.i2731

if.end11.thread.i2731:                            ; preds = %drm_fixp_msbset.exit44.i2729
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i2730 = mul i64 %822, %spec.select.i2701
  br label %if.then13.i2754

if.end.i2742:                                     ; preds = %drm_fixp_msbset.exit44.i2729
  %sub.i2732 = add i32 %add.i2727, -61
  %shr.i2733 = lshr i32 %sub.i2732, 1
  %and.i2734 = and i32 %sub.i2732, 1
  %add2.i2735 = add nuw nsw i32 %shr.i2733, %and.i2734
  %sh_prom.i2736 = zext i32 %add2.i2735 to i64
  %shr3.i2737 = ashr i64 %822, %sh_prom.i2736
  %sh_prom5.i2738 = zext i32 %shr.i2733 to i64
  %shr6.i2739 = ashr i64 %spec.select.i2701, %sh_prom5.i2738
  %mul.i2740 = mul i64 %shr3.i2737, %shr6.i2739
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2732)
  %cmp7.i2741 = icmp ugt i32 %sub.i2732, 32
  br i1 %cmp7.i2741, label %if.then8.i2746, label %if.end11.i2748

if.then8.i2746:                                   ; preds = %if.end.i2742
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i2743 = add i32 %add.i2727, -93
  %sh_prom10.i2744 = zext i32 %sub9.i2743 to i64
  %shl.i2745 = shl i64 %mul.i2740, %sh_prom10.i2744
  br label %drm_fixp_mul.exit2756

if.end11.i2748:                                   ; preds = %if.end.i2742
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2732)
  %cmp12.not.i2747 = icmp eq i32 %sub.i2732, 32
  br i1 %cmp12.not.i2747, label %if.end11.i2748.drm_fixp_mul.exit2756_crit_edge, label %if.end11.i2748.if.then13.i2754_crit_edge

if.end11.i2748.if.then13.i2754_crit_edge:         ; preds = %if.end11.i2748
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i2754

if.end11.i2748.drm_fixp_mul.exit2756_crit_edge:   ; preds = %if.end11.i2748
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit2756

if.then13.i2754:                                  ; preds = %if.end11.i2748.if.then13.i2754_crit_edge, %if.end11.thread.i2731
  %shift.05056.i2749 = phi i32 [ 0, %if.end11.thread.i2731 ], [ %sub.i2732, %if.end11.i2748.if.then13.i2754_crit_edge ]
  %mul5155.i2750 = phi i64 [ %mul48.i2730, %if.end11.thread.i2731 ], [ %mul.i2740, %if.end11.i2748.if.then13.i2754_crit_edge ]
  %sub14.i2751 = sub nuw nsw i32 32, %shift.05056.i2749
  %sh_prom15.i2752 = zext i32 %sub14.i2751 to i64
  %shr16.i2753 = ashr i64 %mul5155.i2750, %sh_prom15.i2752
  br label %drm_fixp_mul.exit2756

drm_fixp_mul.exit2756:                            ; preds = %if.then13.i2754, %if.end11.i2748.drm_fixp_mul.exit2756_crit_edge, %if.then8.i2746
  %retval.0.i2755 = phi i64 [ %shl.i2745, %if.then8.i2746 ], [ %shr16.i2753, %if.then13.i2754 ], [ %mul.i2740, %if.end11.i2748.drm_fixp_mul.exit2756_crit_edge ]
  %823 = ptrtoint ptr %ratio_by_tu_fp to i32
  call void @__asan_store8_noabort(i32 %823)
  store i64 %retval.0.i2755, ptr %ratio_by_tu_fp, align 8
  %824 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %valid_boundary_link, align 4
  %sub386 = add i32 %825, -1
  %826 = ptrtoint ptr %valid_lower_boundary_link to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 %sub386, ptr %valid_lower_boundary_link, align 4
  %827 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %bpp5.i, align 4
  %829 = call i32 @llvm.abs.i32(i32 %828, i1 false)
  %830 = zext i32 %829 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2757) #7
  %831 = ptrtoint ptr %rem.i2757 to i32
  call void @__asan_store8_noabort(i32 %831)
  store i64 -1, ptr %rem.i2757, align 8, !annotation !176
  %call.i2758 = call i64 @div64_u64_rem(i64 noundef %830, i64 noundef 8, ptr noundef nonnull %rem.i2757) #7
  %832 = ptrtoint ptr %rem.i2757 to i32
  call void @__asan_load8_noabort(i32 %832)
  %rem.promoted.i2759 = load i64, ptr %rem.i2757, align 8
  br label %do.body.i2773

do.body.i2773:                                    ; preds = %do.body.i2773.do.body.i2773_crit_edge, %drm_fixp_mul.exit2756
  %storemerge40.i2760 = phi i64 [ %rem.promoted.i2759, %drm_fixp_mul.exit2756 ], [ %storemerge.i2767, %do.body.i2773.do.body.i2773_crit_edge ]
  %res_abs.0.i2761 = phi i64 [ %call.i2758, %drm_fixp_mul.exit2756 ], [ %res_abs.1.i2770, %do.body.i2773.do.body.i2773_crit_edge ]
  %i.0.i2762 = phi i32 [ 32, %drm_fixp_mul.exit2756 ], [ %dec.i2771, %do.body.i2773.do.body.i2773_crit_edge ]
  %shl.i2763 = shl i64 %storemerge40.i2760, 1
  %shl9.i2764 = shl i64 %res_abs.0.i2761, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %shl.i2763)
  %cmp10.not.i2765 = icmp ult i64 %shl.i2763, 8
  %sub11.i2766.neg = select i1 %cmp10.not.i2765, i64 0, i64 -8
  %storemerge.i2767 = add i64 %sub11.i2766.neg, %shl.i2763
  %not.cmp10.not.i2768 = xor i1 %cmp10.not.i2765, true
  %or.i2769 = zext i1 %not.cmp10.not.i2768 to i64
  %res_abs.1.i2770 = or i64 %shl9.i2764, %or.i2769
  %dec.i2771 = add nsw i32 %i.0.i2762, -1
  %cmp12.not.i2772 = icmp eq i32 %dec.i2771, 0
  br i1 %cmp12.not.i2772, label %drm_fixp_from_fraction.exit2782, label %do.body.i2773.do.body.i2773_crit_edge

do.body.i2773.do.body.i2773_crit_edge:            ; preds = %do.body.i2773
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2773

drm_fixp_from_fraction.exit2782:                  ; preds = %do.body.i2773
  %833 = and i64 %storemerge.i2767, 9223372036854775804
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %833)
  %cmp14.i2775 = icmp ne i64 %833, 0
  %834 = zext i1 %cmp14.i2775 to i64
  %add.i2776 = add i64 %res_abs.1.i2770, %834
  %sub22.i2778 = sub i64 0, %add.i2776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %828)
  %tobool20.not39.i2779 = icmp slt i32 %828, 0
  %spec.select.i2780 = select i1 %tobool20.not39.i2779, i64 %sub22.i2778, i64 %add.i2776
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2757) #7
  %835 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %835)
  %836 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i2783 = lshr i64 %836, 63
  br label %for.body.i.i2789

for.body.i.i2789:                                 ; preds = %for.inc.i.i2792.for.body.i.i2789_crit_edge, %drm_fixp_from_fraction.exit2782
  %shift.014.i.i2784 = phi i32 [ 62, %drm_fixp_from_fraction.exit2782 ], [ %dec.i.i2790, %for.inc.i.i2792.for.body.i.i2789_crit_edge ]
  %sh_prom.i.i2785 = zext i32 %shift.014.i.i2784 to i64
  %shr213.i.i2786 = lshr i64 %836, %sh_prom.i.i2785
  %and3.i.i2787 = and i64 %shr213.i.i2786, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2787, i64 %shr12.i.i2783)
  %cmp5.not.i.i2788 = icmp eq i64 %and3.i.i2787, %shr12.i.i2783
  br i1 %cmp5.not.i.i2788, label %for.inc.i.i2792, label %for.body.i.i2789.drm_fixp_msbset.exit.i2795_crit_edge

for.body.i.i2789.drm_fixp_msbset.exit.i2795_crit_edge: ; preds = %for.body.i.i2789
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2795

for.inc.i.i2792:                                  ; preds = %for.body.i.i2789
  %dec.i.i2790 = add nsw i32 %shift.014.i.i2784, -1
  %cmp.not.i.i2791 = icmp eq i32 %dec.i.i2790, 0
  br i1 %cmp.not.i.i2791, label %for.inc.i.i2792.drm_fixp_msbset.exit.i2795_crit_edge, label %for.inc.i.i2792.for.body.i.i2789_crit_edge

for.inc.i.i2792.for.body.i.i2789_crit_edge:       ; preds = %for.inc.i.i2792
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2789

for.inc.i.i2792.drm_fixp_msbset.exit.i2795_crit_edge: ; preds = %for.inc.i.i2792
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2795

drm_fixp_msbset.exit.i2795:                       ; preds = %for.inc.i.i2792.drm_fixp_msbset.exit.i2795_crit_edge, %for.body.i.i2789.drm_fixp_msbset.exit.i2795_crit_edge
  %shift.0.lcssa.i.i2793 = phi i32 [ 0, %for.inc.i.i2792.drm_fixp_msbset.exit.i2795_crit_edge ], [ %shift.014.i.i2784, %for.body.i.i2789.drm_fixp_msbset.exit.i2795_crit_edge ]
  %shr12.i33.i2794 = lshr i64 %spec.select.i2780, 63
  br label %for.body.i39.i2801

for.body.i39.i2801:                               ; preds = %for.inc.i42.i2804.for.body.i39.i2801_crit_edge, %drm_fixp_msbset.exit.i2795
  %shift.014.i34.i2796 = phi i32 [ 62, %drm_fixp_msbset.exit.i2795 ], [ %dec.i40.i2802, %for.inc.i42.i2804.for.body.i39.i2801_crit_edge ]
  %sh_prom.i35.i2797 = zext i32 %shift.014.i34.i2796 to i64
  %shr213.i36.i2798 = lshr i64 %spec.select.i2780, %sh_prom.i35.i2797
  %and3.i37.i2799 = and i64 %shr213.i36.i2798, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i2799, i64 %shr12.i33.i2794)
  %cmp5.not.i38.i2800 = icmp eq i64 %and3.i37.i2799, %shr12.i33.i2794
  br i1 %cmp5.not.i38.i2800, label %for.inc.i42.i2804, label %for.body.i39.i2801.drm_fixp_msbset.exit44.i2808_crit_edge

for.body.i39.i2801.drm_fixp_msbset.exit44.i2808_crit_edge: ; preds = %for.body.i39.i2801
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2808

for.inc.i42.i2804:                                ; preds = %for.body.i39.i2801
  %dec.i40.i2802 = add nsw i32 %shift.014.i34.i2796, -1
  %cmp.not.i41.i2803 = icmp eq i32 %dec.i40.i2802, 0
  br i1 %cmp.not.i41.i2803, label %for.inc.i42.i2804.drm_fixp_msbset.exit44.i2808_crit_edge, label %for.inc.i42.i2804.for.body.i39.i2801_crit_edge

for.inc.i42.i2804.for.body.i39.i2801_crit_edge:   ; preds = %for.inc.i42.i2804
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i2801

for.inc.i42.i2804.drm_fixp_msbset.exit44.i2808_crit_edge: ; preds = %for.inc.i42.i2804
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2808

drm_fixp_msbset.exit44.i2808:                     ; preds = %for.inc.i42.i2804.drm_fixp_msbset.exit44.i2808_crit_edge, %for.body.i39.i2801.drm_fixp_msbset.exit44.i2808_crit_edge
  %shift.0.lcssa.i43.i2805 = phi i32 [ 0, %for.inc.i42.i2804.drm_fixp_msbset.exit44.i2808_crit_edge ], [ %shift.014.i34.i2796, %for.body.i39.i2801.drm_fixp_msbset.exit44.i2808_crit_edge ]
  %add.i2806 = add i32 %shift.0.lcssa.i43.i2805, %shift.0.lcssa.i.i2793
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i2806)
  %cmp.i2807 = icmp ugt i32 %add.i2806, 61
  br i1 %cmp.i2807, label %if.end.i2821, label %if.end11.thread.i2810

if.end11.thread.i2810:                            ; preds = %drm_fixp_msbset.exit44.i2808
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i2809 = mul i64 %836, %spec.select.i2780
  br label %if.then13.i2833

if.end.i2821:                                     ; preds = %drm_fixp_msbset.exit44.i2808
  %sub.i2811 = add i32 %add.i2806, -61
  %shr.i2812 = lshr i32 %sub.i2811, 1
  %and.i2813 = and i32 %sub.i2811, 1
  %add2.i2814 = add nuw nsw i32 %shr.i2812, %and.i2813
  %sh_prom.i2815 = zext i32 %add2.i2814 to i64
  %shr3.i2816 = ashr i64 %836, %sh_prom.i2815
  %sh_prom5.i2817 = zext i32 %shr.i2812 to i64
  %shr6.i2818 = ashr i64 %spec.select.i2780, %sh_prom5.i2817
  %mul.i2819 = mul i64 %shr3.i2816, %shr6.i2818
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2811)
  %cmp7.i2820 = icmp ugt i32 %sub.i2811, 32
  br i1 %cmp7.i2820, label %if.then8.i2825, label %if.end11.i2827

if.then8.i2825:                                   ; preds = %if.end.i2821
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i2822 = add i32 %add.i2806, -93
  %sh_prom10.i2823 = zext i32 %sub9.i2822 to i64
  %shl.i2824 = shl i64 %mul.i2819, %sh_prom10.i2823
  br label %drm_fixp_mul.exit2835

if.end11.i2827:                                   ; preds = %if.end.i2821
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2811)
  %cmp12.not.i2826 = icmp eq i32 %sub.i2811, 32
  br i1 %cmp12.not.i2826, label %if.end11.i2827.drm_fixp_mul.exit2835_crit_edge, label %if.end11.i2827.if.then13.i2833_crit_edge

if.end11.i2827.if.then13.i2833_crit_edge:         ; preds = %if.end11.i2827
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i2833

if.end11.i2827.drm_fixp_mul.exit2835_crit_edge:   ; preds = %if.end11.i2827
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit2835

if.then13.i2833:                                  ; preds = %if.end11.i2827.if.then13.i2833_crit_edge, %if.end11.thread.i2810
  %shift.05056.i2828 = phi i32 [ 0, %if.end11.thread.i2810 ], [ %sub.i2811, %if.end11.i2827.if.then13.i2833_crit_edge ]
  %mul5155.i2829 = phi i64 [ %mul48.i2809, %if.end11.thread.i2810 ], [ %mul.i2819, %if.end11.i2827.if.then13.i2833_crit_edge ]
  %sub14.i2830 = sub nuw nsw i32 32, %shift.05056.i2828
  %sh_prom15.i2831 = zext i32 %sub14.i2830 to i64
  %shr16.i2832 = ashr i64 %mul5155.i2829, %sh_prom15.i2831
  br label %drm_fixp_mul.exit2835

drm_fixp_mul.exit2835:                            ; preds = %if.then13.i2833, %if.end11.i2827.drm_fixp_mul.exit2835_crit_edge, %if.then8.i2825
  %retval.0.i2834 = phi i64 [ %shl.i2824, %if.then8.i2825 ], [ %shr16.i2832, %if.then13.i2833 ], [ %mul.i2819, %if.end11.i2827.drm_fixp_mul.exit2835_crit_edge ]
  %837 = ptrtoint ptr %resulting_valid_fp to i32
  call void @__asan_load8_noabort(i32 %837)
  %838 = load i64, ptr %resulting_valid_fp, align 8
  %shr12.i.i2836 = lshr i64 %retval.0.i2834, 63
  br label %for.body.i.i2842

for.body.i.i2842:                                 ; preds = %for.inc.i.i2845.for.body.i.i2842_crit_edge, %drm_fixp_mul.exit2835
  %shift.014.i.i2837 = phi i32 [ 62, %drm_fixp_mul.exit2835 ], [ %dec.i.i2843, %for.inc.i.i2845.for.body.i.i2842_crit_edge ]
  %sh_prom.i.i2838 = zext i32 %shift.014.i.i2837 to i64
  %shr213.i.i2839 = lshr i64 %retval.0.i2834, %sh_prom.i.i2838
  %and3.i.i2840 = and i64 %shr213.i.i2839, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2840, i64 %shr12.i.i2836)
  %cmp5.not.i.i2841 = icmp eq i64 %and3.i.i2840, %shr12.i.i2836
  br i1 %cmp5.not.i.i2841, label %for.inc.i.i2845, label %for.body.i.i2842.drm_fixp_div.exit2862_crit_edge

for.body.i.i2842.drm_fixp_div.exit2862_crit_edge: ; preds = %for.body.i.i2842
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2862

for.inc.i.i2845:                                  ; preds = %for.body.i.i2842
  %dec.i.i2843 = add nsw i32 %shift.014.i.i2837, -1
  %cmp.not.i.i2844 = icmp eq i32 %dec.i.i2843, 0
  br i1 %cmp.not.i.i2844, label %for.inc.i.i2845.drm_fixp_div.exit2862_crit_edge, label %for.inc.i.i2845.for.body.i.i2842_crit_edge

for.inc.i.i2845.for.body.i.i2842_crit_edge:       ; preds = %for.inc.i.i2845
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2842

for.inc.i.i2845.drm_fixp_div.exit2862_crit_edge:  ; preds = %for.inc.i.i2845
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2862

drm_fixp_div.exit2862:                            ; preds = %for.inc.i.i2845.drm_fixp_div.exit2862_crit_edge, %for.body.i.i2842.drm_fixp_div.exit2862_crit_edge
  %shift.0.lcssa.i.i2846 = phi i32 [ 0, %for.inc.i.i2845.drm_fixp_div.exit2862_crit_edge ], [ %shift.014.i.i2837, %for.body.i.i2842.drm_fixp_div.exit2862_crit_edge ]
  %sub.i2847 = sub i32 62, %shift.0.lcssa.i.i2846
  %sh_prom.i2848 = zext i32 %sub.i2847 to i64
  %shl.i2849 = shl i64 %retval.0.i2834, %sh_prom.i2848
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2847)
  %cmp.i2850 = icmp ult i32 %sub.i2847, 32
  %sub1.i2851 = add i32 %shift.0.lcssa.i.i2846, -30
  %narrow.i2852 = select i1 %cmp.i2850, i32 %sub1.i2851, i32 0
  %shr.i2853 = zext i32 %narrow.i2852 to i64
  %b.addr.0.i2854 = ashr i64 %838, %shr.i2853
  %call3.i2855 = call i64 @div64_s64(i64 noundef %shl.i2849, i64 noundef %b.addr.0.i2854) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2847)
  %cmp4.i2856 = icmp ugt i32 %sub.i2847, 32
  %sub6.i2857 = sub i32 30, %shift.0.lcssa.i.i2846
  %narrow19.i2858 = select i1 %cmp4.i2856, i32 %sub6.i2857, i32 0
  %shr8.i2859 = zext i32 %narrow19.i2858 to i64
  %retval.0.i2860 = ashr i64 %call3.i2855, %shr8.i2859
  %839 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %839)
  store i64 %retval.0.i2860, ptr %temp2_fp, align 8
  %840 = lshr i64 %retval.0.i2860, 32
  %conv.i2863 = trunc i64 %840 to i32
  %841 = ptrtoint ptr %n_tus to i32
  call void @__asan_store4_noabort(i32 %841)
  store i32 %conv.i2863, ptr %n_tus, align 8
  %842 = ptrtoint ptr %tu_size_desired to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %tu_size_desired, align 4
  %sub398 = add i32 %843, -1
  %844 = ptrtoint ptr %tu_size_minus1 to i32
  call void @__asan_store4_noabort(i32 %844)
  store i32 %sub398, ptr %tu_size_minus1, align 8
  %845 = ptrtoint ptr %even_distribution_BF to i32
  call void @__asan_store4_noabort(i32 %845)
  store i32 1, ptr %even_distribution_BF, align 8
  %846 = call i32 @llvm.abs.i32(i32 %843, i1 false)
  %847 = zext i32 %846 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2864) #7
  %848 = ptrtoint ptr %rem.i2864 to i32
  call void @__asan_store8_noabort(i32 %848)
  store i64 -1, ptr %rem.i2864, align 8, !annotation !176
  %call.i2865 = call i64 @div64_u64_rem(i64 noundef %847, i64 noundef 1, ptr noundef nonnull %rem.i2864) #7
  %849 = ptrtoint ptr %rem.i2864 to i32
  call void @__asan_load8_noabort(i32 %849)
  %rem.promoted.i2866 = load i64, ptr %rem.i2864, align 8
  br label %do.body.i2880

do.body.i2880:                                    ; preds = %do.body.i2880.do.body.i2880_crit_edge, %drm_fixp_div.exit2862
  %storemerge40.i2867 = phi i64 [ %rem.promoted.i2866, %drm_fixp_div.exit2862 ], [ %storemerge.i2874, %do.body.i2880.do.body.i2880_crit_edge ]
  %res_abs.0.i2868 = phi i64 [ %call.i2865, %drm_fixp_div.exit2862 ], [ %res_abs.1.i2877, %do.body.i2880.do.body.i2880_crit_edge ]
  %i.0.i2869 = phi i32 [ 32, %drm_fixp_div.exit2862 ], [ %dec.i2878, %do.body.i2880.do.body.i2880_crit_edge ]
  %shl.i2870 = shl i64 %storemerge40.i2867, 1
  %shl9.i2871 = shl i64 %res_abs.0.i2868, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2870)
  %cmp10.not.i2872 = icmp ne i64 %shl.i2870, 0
  %sub11.i2873.neg = sext i1 %cmp10.not.i2872 to i64
  %storemerge.i2874 = add i64 %shl.i2870, %sub11.i2873.neg
  %or.i2876 = zext i1 %cmp10.not.i2872 to i64
  %res_abs.1.i2877 = or i64 %shl9.i2871, %or.i2876
  %dec.i2878 = add nsw i32 %i.0.i2869, -1
  %cmp12.not.i2879 = icmp eq i32 %dec.i2878, 0
  br i1 %cmp12.not.i2879, label %drm_fixp_from_fraction.exit2889, label %do.body.i2880.do.body.i2880_crit_edge

do.body.i2880.do.body.i2880_crit_edge:            ; preds = %do.body.i2880
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2880

drm_fixp_from_fraction.exit2889:                  ; preds = %do.body.i2880
  %shl13.i2881.mask = and i64 %storemerge.i2874, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2881.mask)
  %cmp14.i2882 = icmp ne i64 %shl13.i2881.mask, 0
  %850 = zext i1 %cmp14.i2882 to i64
  %add.i2883 = add i64 %res_abs.1.i2877, %850
  %sub22.i2885 = sub i64 0, %add.i2883
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %843)
  %tobool20.not39.i2886 = icmp slt i32 %843, 0
  %spec.select.i2887 = select i1 %tobool20.not39.i2886, i64 %sub22.i2885, i64 %add.i2883
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2864) #7
  %851 = ptrtoint ptr %resulting_valid_fp to i32
  call void @__asan_load8_noabort(i32 %851)
  %852 = load i64, ptr %resulting_valid_fp, align 8
  %shr12.i.i2890 = lshr i64 %852, 63
  br label %for.body.i.i2896

for.body.i.i2896:                                 ; preds = %for.inc.i.i2899.for.body.i.i2896_crit_edge, %drm_fixp_from_fraction.exit2889
  %shift.014.i.i2891 = phi i32 [ 62, %drm_fixp_from_fraction.exit2889 ], [ %dec.i.i2897, %for.inc.i.i2899.for.body.i.i2896_crit_edge ]
  %sh_prom.i.i2892 = zext i32 %shift.014.i.i2891 to i64
  %shr213.i.i2893 = lshr i64 %852, %sh_prom.i.i2892
  %and3.i.i2894 = and i64 %shr213.i.i2893, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2894, i64 %shr12.i.i2890)
  %cmp5.not.i.i2895 = icmp eq i64 %and3.i.i2894, %shr12.i.i2890
  br i1 %cmp5.not.i.i2895, label %for.inc.i.i2899, label %for.body.i.i2896.drm_fixp_div.exit2916_crit_edge

for.body.i.i2896.drm_fixp_div.exit2916_crit_edge: ; preds = %for.body.i.i2896
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2916

for.inc.i.i2899:                                  ; preds = %for.body.i.i2896
  %dec.i.i2897 = add nsw i32 %shift.014.i.i2891, -1
  %cmp.not.i.i2898 = icmp eq i32 %dec.i.i2897, 0
  br i1 %cmp.not.i.i2898, label %for.inc.i.i2899.drm_fixp_div.exit2916_crit_edge, label %for.inc.i.i2899.for.body.i.i2896_crit_edge

for.inc.i.i2899.for.body.i.i2896_crit_edge:       ; preds = %for.inc.i.i2899
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2896

for.inc.i.i2899.drm_fixp_div.exit2916_crit_edge:  ; preds = %for.inc.i.i2899
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit2916

drm_fixp_div.exit2916:                            ; preds = %for.inc.i.i2899.drm_fixp_div.exit2916_crit_edge, %for.body.i.i2896.drm_fixp_div.exit2916_crit_edge
  %shift.0.lcssa.i.i2900 = phi i32 [ 0, %for.inc.i.i2899.drm_fixp_div.exit2916_crit_edge ], [ %shift.014.i.i2891, %for.body.i.i2896.drm_fixp_div.exit2916_crit_edge ]
  %sub.i2901 = sub i32 62, %shift.0.lcssa.i.i2900
  %sh_prom.i2902 = zext i32 %sub.i2901 to i64
  %shl.i2903 = shl i64 %852, %sh_prom.i2902
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2901)
  %cmp.i2904 = icmp ult i32 %sub.i2901, 32
  %sub1.i2905 = add i32 %shift.0.lcssa.i.i2900, -30
  %narrow.i2906 = select i1 %cmp.i2904, i32 %sub1.i2905, i32 0
  %shr.i2907 = zext i32 %narrow.i2906 to i64
  %b.addr.0.i2908 = ashr i64 %spec.select.i2887, %shr.i2907
  %call3.i2909 = call i64 @div64_s64(i64 noundef %shl.i2903, i64 noundef %b.addr.0.i2908) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2901)
  %cmp4.i2910 = icmp ugt i32 %sub.i2901, 32
  %sub6.i2911 = sub i32 30, %shift.0.lcssa.i.i2900
  %narrow19.i2912 = select i1 %cmp4.i2910, i32 %sub6.i2911, i32 0
  %shr8.i2913 = zext i32 %narrow19.i2912 to i64
  %retval.0.i2914 = ashr i64 %call3.i2909, %shr8.i2913
  %853 = ptrtoint ptr %original_ratio_fp to i32
  call void @__asan_load8_noabort(i32 %853)
  %854 = load i64, ptr %original_ratio_fp, align 8
  %sub407 = sub i64 %retval.0.i2914, %854
  %855 = ptrtoint ptr %TU_ratio_err_fp to i32
  call void @__asan_store8_noabort(i32 %855)
  store i64 %sub407, ptr %TU_ratio_err_fp, align 8
  br label %if.end410

if.end410:                                        ; preds = %drm_fixp_div.exit2916, %land.lhs.true350.if.end410_crit_edge, %lor.lhs.false282.if.end410_crit_edge
  %856 = ptrtoint ptr %lwidth_fp.i to i32
  call void @__asan_load8_noabort(i32 %856)
  %857 = load i64, ptr %lwidth_fp.i, align 8
  %shr12.i.i2917 = lshr i64 %add.i, 63
  br label %for.body.i.i2923

for.body.i.i2923:                                 ; preds = %for.inc.i.i2926.for.body.i.i2923_crit_edge, %if.end410
  %shift.014.i.i2918 = phi i32 [ 62, %if.end410 ], [ %dec.i.i2924, %for.inc.i.i2926.for.body.i.i2923_crit_edge ]
  %sh_prom.i.i2919 = zext i32 %shift.014.i.i2918 to i64
  %shr213.i.i2920 = lshr i64 %add.i, %sh_prom.i.i2919
  %and3.i.i2921 = and i64 %shr213.i.i2920, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i2921, i64 %shr12.i.i2917)
  %cmp5.not.i.i2922 = icmp eq i64 %and3.i.i2921, %shr12.i.i2917
  br i1 %cmp5.not.i.i2922, label %for.inc.i.i2926, label %for.body.i.i2923.drm_fixp_msbset.exit.i2929_crit_edge

for.body.i.i2923.drm_fixp_msbset.exit.i2929_crit_edge: ; preds = %for.body.i.i2923
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2929

for.inc.i.i2926:                                  ; preds = %for.body.i.i2923
  %dec.i.i2924 = add nsw i32 %shift.014.i.i2918, -1
  %cmp.not.i.i2925 = icmp eq i32 %dec.i.i2924, 0
  br i1 %cmp.not.i.i2925, label %for.inc.i.i2926.drm_fixp_msbset.exit.i2929_crit_edge, label %for.inc.i.i2926.for.body.i.i2923_crit_edge

for.inc.i.i2926.for.body.i.i2923_crit_edge:       ; preds = %for.inc.i.i2926
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i2923

for.inc.i.i2926.drm_fixp_msbset.exit.i2929_crit_edge: ; preds = %for.inc.i.i2926
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i2929

drm_fixp_msbset.exit.i2929:                       ; preds = %for.inc.i.i2926.drm_fixp_msbset.exit.i2929_crit_edge, %for.body.i.i2923.drm_fixp_msbset.exit.i2929_crit_edge
  %shift.0.lcssa.i.i2927 = phi i32 [ 0, %for.inc.i.i2926.drm_fixp_msbset.exit.i2929_crit_edge ], [ %shift.014.i.i2918, %for.body.i.i2923.drm_fixp_msbset.exit.i2929_crit_edge ]
  %shr12.i33.i2928 = lshr i64 %857, 63
  br label %for.body.i39.i2935

for.body.i39.i2935:                               ; preds = %for.inc.i42.i2938.for.body.i39.i2935_crit_edge, %drm_fixp_msbset.exit.i2929
  %shift.014.i34.i2930 = phi i32 [ 62, %drm_fixp_msbset.exit.i2929 ], [ %dec.i40.i2936, %for.inc.i42.i2938.for.body.i39.i2935_crit_edge ]
  %sh_prom.i35.i2931 = zext i32 %shift.014.i34.i2930 to i64
  %shr213.i36.i2932 = lshr i64 %857, %sh_prom.i35.i2931
  %and3.i37.i2933 = and i64 %shr213.i36.i2932, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i2933, i64 %shr12.i33.i2928)
  %cmp5.not.i38.i2934 = icmp eq i64 %and3.i37.i2933, %shr12.i33.i2928
  br i1 %cmp5.not.i38.i2934, label %for.inc.i42.i2938, label %for.body.i39.i2935.drm_fixp_msbset.exit44.i2942_crit_edge

for.body.i39.i2935.drm_fixp_msbset.exit44.i2942_crit_edge: ; preds = %for.body.i39.i2935
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2942

for.inc.i42.i2938:                                ; preds = %for.body.i39.i2935
  %dec.i40.i2936 = add nsw i32 %shift.014.i34.i2930, -1
  %cmp.not.i41.i2937 = icmp eq i32 %dec.i40.i2936, 0
  br i1 %cmp.not.i41.i2937, label %for.inc.i42.i2938.drm_fixp_msbset.exit44.i2942_crit_edge, label %for.inc.i42.i2938.for.body.i39.i2935_crit_edge

for.inc.i42.i2938.for.body.i39.i2935_crit_edge:   ; preds = %for.inc.i42.i2938
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i2935

for.inc.i42.i2938.drm_fixp_msbset.exit44.i2942_crit_edge: ; preds = %for.inc.i42.i2938
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i2942

drm_fixp_msbset.exit44.i2942:                     ; preds = %for.inc.i42.i2938.drm_fixp_msbset.exit44.i2942_crit_edge, %for.body.i39.i2935.drm_fixp_msbset.exit44.i2942_crit_edge
  %shift.0.lcssa.i43.i2939 = phi i32 [ 0, %for.inc.i42.i2938.drm_fixp_msbset.exit44.i2942_crit_edge ], [ %shift.014.i34.i2930, %for.body.i39.i2935.drm_fixp_msbset.exit44.i2942_crit_edge ]
  %add.i2940 = add i32 %shift.0.lcssa.i43.i2939, %shift.0.lcssa.i.i2927
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i2940)
  %cmp.i2941 = icmp ugt i32 %add.i2940, 61
  br i1 %cmp.i2941, label %if.end.i2955, label %if.end11.thread.i2944

if.end11.thread.i2944:                            ; preds = %drm_fixp_msbset.exit44.i2942
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i2943 = mul i64 %857, %add.i
  br label %if.then13.i2967

if.end.i2955:                                     ; preds = %drm_fixp_msbset.exit44.i2942
  %sub.i2945 = add i32 %add.i2940, -61
  %shr.i2946 = lshr i32 %sub.i2945, 1
  %and.i2947 = and i32 %sub.i2945, 1
  %add2.i2948 = add nuw nsw i32 %shr.i2946, %and.i2947
  %sh_prom.i2949 = zext i32 %add2.i2948 to i64
  %shr3.i2950 = ashr i64 %add.i, %sh_prom.i2949
  %sh_prom5.i2951 = zext i32 %shr.i2946 to i64
  %shr6.i2952 = ashr i64 %857, %sh_prom5.i2951
  %mul.i2953 = mul i64 %shr3.i2950, %shr6.i2952
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2945)
  %cmp7.i2954 = icmp ugt i32 %sub.i2945, 32
  br i1 %cmp7.i2954, label %if.then8.i2959, label %if.end11.i2961

if.then8.i2959:                                   ; preds = %if.end.i2955
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i2956 = add i32 %add.i2940, -93
  %sh_prom10.i2957 = zext i32 %sub9.i2956 to i64
  %shl.i2958 = shl i64 %mul.i2953, %sh_prom10.i2957
  br label %drm_fixp_mul.exit2969

if.end11.i2961:                                   ; preds = %if.end.i2955
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i2945)
  %cmp12.not.i2960 = icmp eq i32 %sub.i2945, 32
  br i1 %cmp12.not.i2960, label %if.end11.i2961.drm_fixp_mul.exit2969_crit_edge, label %if.end11.i2961.if.then13.i2967_crit_edge

if.end11.i2961.if.then13.i2967_crit_edge:         ; preds = %if.end11.i2961
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i2967

if.end11.i2961.drm_fixp_mul.exit2969_crit_edge:   ; preds = %if.end11.i2961
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit2969

if.then13.i2967:                                  ; preds = %if.end11.i2961.if.then13.i2967_crit_edge, %if.end11.thread.i2944
  %shift.05056.i2962 = phi i32 [ 0, %if.end11.thread.i2944 ], [ %sub.i2945, %if.end11.i2961.if.then13.i2967_crit_edge ]
  %mul5155.i2963 = phi i64 [ %mul48.i2943, %if.end11.thread.i2944 ], [ %mul.i2953, %if.end11.i2961.if.then13.i2967_crit_edge ]
  %sub14.i2964 = sub nuw nsw i32 32, %shift.05056.i2962
  %sh_prom15.i2965 = zext i32 %sub14.i2964 to i64
  %shr16.i2966 = ashr i64 %mul5155.i2963, %sh_prom15.i2965
  br label %drm_fixp_mul.exit2969

drm_fixp_mul.exit2969:                            ; preds = %if.then13.i2967, %if.end11.i2961.drm_fixp_mul.exit2969_crit_edge, %if.then8.i2959
  %retval.0.i2968 = phi i64 [ %shl.i2958, %if.then8.i2959 ], [ %shr16.i2966, %if.then13.i2967 ], [ %mul.i2953, %if.end11.i2961.drm_fixp_mul.exit2969_crit_edge ]
  %858 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %858)
  store i64 %retval.0.i2968, ptr %temp2_fp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i2968)
  %tobool413.not = icmp eq i64 %retval.0.i2968, 0
  br i1 %tobool413.not, label %drm_fixp_mul.exit2969.if.end418_crit_edge, label %if.then414

drm_fixp_mul.exit2969.if.end418_crit_edge:        ; preds = %drm_fixp_mul.exit2969
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end418

if.then414:                                       ; preds = %drm_fixp_mul.exit2969
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i2968)
  %cmp.i2970 = icmp sgt i64 %retval.0.i2968, 0
  %..i2971 = select i1 %cmp.i2970, i64 4294967295, i64 -4294967295
  %sub.i2972 = add i64 %..i2971, %retval.0.i2968
  %conv416 = ashr i64 %sub.i2972, 32
  br label %if.end418

if.end418:                                        ; preds = %if.then414, %drm_fixp_mul.exit2969.if.end418_crit_edge
  %temp.0 = phi i64 [ %conv416, %if.then414 ], [ 0, %drm_fixp_mul.exit2969.if.end418_crit_edge ]
  %859 = ptrtoint ptr %nlanes4.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %nlanes4.i, align 8
  %861 = call i32 @llvm.abs.i32(i32 %860, i1 false)
  %862 = zext i32 %861 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i2974) #7
  %863 = ptrtoint ptr %rem.i2974 to i32
  call void @__asan_store8_noabort(i32 %863)
  store i64 -1, ptr %rem.i2974, align 8, !annotation !176
  %call.i2975 = call i64 @div64_u64_rem(i64 noundef %862, i64 noundef 1, ptr noundef nonnull %rem.i2974) #7
  %864 = ptrtoint ptr %rem.i2974 to i32
  call void @__asan_load8_noabort(i32 %864)
  %rem.promoted.i2976 = load i64, ptr %rem.i2974, align 8
  br label %do.body.i2990

do.body.i2990:                                    ; preds = %do.body.i2990.do.body.i2990_crit_edge, %if.end418
  %storemerge40.i2977 = phi i64 [ %rem.promoted.i2976, %if.end418 ], [ %storemerge.i2984, %do.body.i2990.do.body.i2990_crit_edge ]
  %res_abs.0.i2978 = phi i64 [ %call.i2975, %if.end418 ], [ %res_abs.1.i2987, %do.body.i2990.do.body.i2990_crit_edge ]
  %i.0.i2979 = phi i32 [ 32, %if.end418 ], [ %dec.i2988, %do.body.i2990.do.body.i2990_crit_edge ]
  %shl.i2980 = shl i64 %storemerge40.i2977, 1
  %shl9.i2981 = shl i64 %res_abs.0.i2978, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i2980)
  %cmp10.not.i2982 = icmp ne i64 %shl.i2980, 0
  %sub11.i2983.neg = sext i1 %cmp10.not.i2982 to i64
  %storemerge.i2984 = add i64 %shl.i2980, %sub11.i2983.neg
  %or.i2986 = zext i1 %cmp10.not.i2982 to i64
  %res_abs.1.i2987 = or i64 %shl9.i2981, %or.i2986
  %dec.i2988 = add nsw i32 %i.0.i2979, -1
  %cmp12.not.i2989 = icmp eq i32 %dec.i2988, 0
  br i1 %cmp12.not.i2989, label %drm_fixp_from_fraction.exit2999, label %do.body.i2990.do.body.i2990_crit_edge

do.body.i2990.do.body.i2990_crit_edge:            ; preds = %do.body.i2990
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i2990

drm_fixp_from_fraction.exit2999:                  ; preds = %do.body.i2990
  %shl13.i2991.mask = and i64 %storemerge.i2984, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i2991.mask)
  %cmp14.i2992 = icmp ne i64 %shl13.i2991.mask, 0
  %865 = zext i1 %cmp14.i2992 to i64
  %add.i2993 = add i64 %res_abs.1.i2987, %865
  %sub22.i2995 = sub i64 0, %add.i2993
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %860)
  %tobool20.not39.i2996 = icmp slt i32 %860, 0
  %spec.select.i2997 = select i1 %tobool20.not39.i2996, i64 %sub22.i2995, i64 %add.i2993
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i2974) #7
  %866 = ptrtoint ptr %original_ratio_fp to i32
  call void @__asan_load8_noabort(i32 %866)
  %867 = load i64, ptr %original_ratio_fp, align 8
  %shr12.i.i3000 = lshr i64 %867, 63
  br label %for.body.i.i3006

for.body.i.i3006:                                 ; preds = %for.inc.i.i3009.for.body.i.i3006_crit_edge, %drm_fixp_from_fraction.exit2999
  %shift.014.i.i3001 = phi i32 [ 62, %drm_fixp_from_fraction.exit2999 ], [ %dec.i.i3007, %for.inc.i.i3009.for.body.i.i3006_crit_edge ]
  %sh_prom.i.i3002 = zext i32 %shift.014.i.i3001 to i64
  %shr213.i.i3003 = lshr i64 %867, %sh_prom.i.i3002
  %and3.i.i3004 = and i64 %shr213.i.i3003, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i3004, i64 %shr12.i.i3000)
  %cmp5.not.i.i3005 = icmp eq i64 %and3.i.i3004, %shr12.i.i3000
  br i1 %cmp5.not.i.i3005, label %for.inc.i.i3009, label %for.body.i.i3006.drm_fixp_msbset.exit.i3012_crit_edge

for.body.i.i3006.drm_fixp_msbset.exit.i3012_crit_edge: ; preds = %for.body.i.i3006
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i3012

for.inc.i.i3009:                                  ; preds = %for.body.i.i3006
  %dec.i.i3007 = add nsw i32 %shift.014.i.i3001, -1
  %cmp.not.i.i3008 = icmp eq i32 %dec.i.i3007, 0
  br i1 %cmp.not.i.i3008, label %for.inc.i.i3009.drm_fixp_msbset.exit.i3012_crit_edge, label %for.inc.i.i3009.for.body.i.i3006_crit_edge

for.inc.i.i3009.for.body.i.i3006_crit_edge:       ; preds = %for.inc.i.i3009
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i3006

for.inc.i.i3009.drm_fixp_msbset.exit.i3012_crit_edge: ; preds = %for.inc.i.i3009
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i3012

drm_fixp_msbset.exit.i3012:                       ; preds = %for.inc.i.i3009.drm_fixp_msbset.exit.i3012_crit_edge, %for.body.i.i3006.drm_fixp_msbset.exit.i3012_crit_edge
  %shift.0.lcssa.i.i3010 = phi i32 [ 0, %for.inc.i.i3009.drm_fixp_msbset.exit.i3012_crit_edge ], [ %shift.014.i.i3001, %for.body.i.i3006.drm_fixp_msbset.exit.i3012_crit_edge ]
  %shr12.i33.i3011 = lshr i64 %spec.select.i2997, 63
  br label %for.body.i39.i3018

for.body.i39.i3018:                               ; preds = %for.inc.i42.i3021.for.body.i39.i3018_crit_edge, %drm_fixp_msbset.exit.i3012
  %shift.014.i34.i3013 = phi i32 [ 62, %drm_fixp_msbset.exit.i3012 ], [ %dec.i40.i3019, %for.inc.i42.i3021.for.body.i39.i3018_crit_edge ]
  %sh_prom.i35.i3014 = zext i32 %shift.014.i34.i3013 to i64
  %shr213.i36.i3015 = lshr i64 %spec.select.i2997, %sh_prom.i35.i3014
  %and3.i37.i3016 = and i64 %shr213.i36.i3015, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i3016, i64 %shr12.i33.i3011)
  %cmp5.not.i38.i3017 = icmp eq i64 %and3.i37.i3016, %shr12.i33.i3011
  br i1 %cmp5.not.i38.i3017, label %for.inc.i42.i3021, label %for.body.i39.i3018.drm_fixp_msbset.exit44.i3025_crit_edge

for.body.i39.i3018.drm_fixp_msbset.exit44.i3025_crit_edge: ; preds = %for.body.i39.i3018
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i3025

for.inc.i42.i3021:                                ; preds = %for.body.i39.i3018
  %dec.i40.i3019 = add nsw i32 %shift.014.i34.i3013, -1
  %cmp.not.i41.i3020 = icmp eq i32 %dec.i40.i3019, 0
  br i1 %cmp.not.i41.i3020, label %for.inc.i42.i3021.drm_fixp_msbset.exit44.i3025_crit_edge, label %for.inc.i42.i3021.for.body.i39.i3018_crit_edge

for.inc.i42.i3021.for.body.i39.i3018_crit_edge:   ; preds = %for.inc.i42.i3021
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i3018

for.inc.i42.i3021.drm_fixp_msbset.exit44.i3025_crit_edge: ; preds = %for.inc.i42.i3021
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i3025

drm_fixp_msbset.exit44.i3025:                     ; preds = %for.inc.i42.i3021.drm_fixp_msbset.exit44.i3025_crit_edge, %for.body.i39.i3018.drm_fixp_msbset.exit44.i3025_crit_edge
  %shift.0.lcssa.i43.i3022 = phi i32 [ 0, %for.inc.i42.i3021.drm_fixp_msbset.exit44.i3025_crit_edge ], [ %shift.014.i34.i3013, %for.body.i39.i3018.drm_fixp_msbset.exit44.i3025_crit_edge ]
  %add.i3023 = add i32 %shift.0.lcssa.i43.i3022, %shift.0.lcssa.i.i3010
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i3023)
  %cmp.i3024 = icmp ugt i32 %add.i3023, 61
  br i1 %cmp.i3024, label %if.end.i3038, label %if.end11.thread.i3027

if.end11.thread.i3027:                            ; preds = %drm_fixp_msbset.exit44.i3025
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i3026 = mul i64 %867, %spec.select.i2997
  br label %if.then13.i3050

if.end.i3038:                                     ; preds = %drm_fixp_msbset.exit44.i3025
  %sub.i3028 = add i32 %add.i3023, -61
  %shr.i3029 = lshr i32 %sub.i3028, 1
  %and.i3030 = and i32 %sub.i3028, 1
  %add2.i3031 = add nuw nsw i32 %shr.i3029, %and.i3030
  %sh_prom.i3032 = zext i32 %add2.i3031 to i64
  %shr3.i3033 = ashr i64 %867, %sh_prom.i3032
  %sh_prom5.i3034 = zext i32 %shr.i3029 to i64
  %shr6.i3035 = ashr i64 %spec.select.i2997, %sh_prom5.i3034
  %mul.i3036 = mul i64 %shr3.i3033, %shr6.i3035
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i3028)
  %cmp7.i3037 = icmp ugt i32 %sub.i3028, 32
  br i1 %cmp7.i3037, label %if.then8.i3042, label %if.end11.i3044

if.then8.i3042:                                   ; preds = %if.end.i3038
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i3039 = add i32 %add.i3023, -93
  %sh_prom10.i3040 = zext i32 %sub9.i3039 to i64
  %shl.i3041 = shl i64 %mul.i3036, %sh_prom10.i3040
  br label %drm_fixp_mul.exit3052

if.end11.i3044:                                   ; preds = %if.end.i3038
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i3028)
  %cmp12.not.i3043 = icmp eq i32 %sub.i3028, 32
  br i1 %cmp12.not.i3043, label %if.end11.i3044.drm_fixp_mul.exit3052_crit_edge, label %if.end11.i3044.if.then13.i3050_crit_edge

if.end11.i3044.if.then13.i3050_crit_edge:         ; preds = %if.end11.i3044
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i3050

if.end11.i3044.drm_fixp_mul.exit3052_crit_edge:   ; preds = %if.end11.i3044
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit3052

if.then13.i3050:                                  ; preds = %if.end11.i3044.if.then13.i3050_crit_edge, %if.end11.thread.i3027
  %shift.05056.i3045 = phi i32 [ 0, %if.end11.thread.i3027 ], [ %sub.i3028, %if.end11.i3044.if.then13.i3050_crit_edge ]
  %mul5155.i3046 = phi i64 [ %mul48.i3026, %if.end11.thread.i3027 ], [ %mul.i3036, %if.end11.i3044.if.then13.i3050_crit_edge ]
  %sub14.i3047 = sub nuw nsw i32 32, %shift.05056.i3045
  %sh_prom15.i3048 = zext i32 %sub14.i3047 to i64
  %shr16.i3049 = ashr i64 %mul5155.i3046, %sh_prom15.i3048
  br label %drm_fixp_mul.exit3052

drm_fixp_mul.exit3052:                            ; preds = %if.then13.i3050, %if.end11.i3044.drm_fixp_mul.exit3052_crit_edge, %if.then8.i3042
  %retval.0.i3051 = phi i64 [ %shl.i3041, %if.then8.i3042 ], [ %shr16.i3049, %if.then13.i3050 ], [ %mul.i3036, %if.end11.i3044.drm_fixp_mul.exit3052_crit_edge ]
  %868 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %868)
  store i64 %retval.0.i3051, ptr %temp2_fp, align 8
  %869 = ptrtoint ptr %bpp5.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load i32, ptr %bpp5.i, align 4
  %871 = call i32 @llvm.abs.i32(i32 %870, i1 false)
  %872 = zext i32 %871 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i3053) #7
  %873 = ptrtoint ptr %rem.i3053 to i32
  call void @__asan_store8_noabort(i32 %873)
  store i64 -1, ptr %rem.i3053, align 8, !annotation !176
  %call.i3054 = call i64 @div64_u64_rem(i64 noundef %872, i64 noundef 8, ptr noundef nonnull %rem.i3053) #7
  %874 = ptrtoint ptr %rem.i3053 to i32
  call void @__asan_load8_noabort(i32 %874)
  %rem.promoted.i3055 = load i64, ptr %rem.i3053, align 8
  br label %do.body.i3069

do.body.i3069:                                    ; preds = %do.body.i3069.do.body.i3069_crit_edge, %drm_fixp_mul.exit3052
  %storemerge40.i3056 = phi i64 [ %rem.promoted.i3055, %drm_fixp_mul.exit3052 ], [ %storemerge.i3063, %do.body.i3069.do.body.i3069_crit_edge ]
  %res_abs.0.i3057 = phi i64 [ %call.i3054, %drm_fixp_mul.exit3052 ], [ %res_abs.1.i3066, %do.body.i3069.do.body.i3069_crit_edge ]
  %i.0.i3058 = phi i32 [ 32, %drm_fixp_mul.exit3052 ], [ %dec.i3067, %do.body.i3069.do.body.i3069_crit_edge ]
  %shl.i3059 = shl i64 %storemerge40.i3056, 1
  %shl9.i3060 = shl i64 %res_abs.0.i3057, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %shl.i3059)
  %cmp10.not.i3061 = icmp ult i64 %shl.i3059, 8
  %sub11.i3062.neg = select i1 %cmp10.not.i3061, i64 0, i64 -8
  %storemerge.i3063 = add i64 %sub11.i3062.neg, %shl.i3059
  %not.cmp10.not.i3064 = xor i1 %cmp10.not.i3061, true
  %or.i3065 = zext i1 %not.cmp10.not.i3064 to i64
  %res_abs.1.i3066 = or i64 %shl9.i3060, %or.i3065
  %dec.i3067 = add nsw i32 %i.0.i3058, -1
  %cmp12.not.i3068 = icmp eq i32 %dec.i3067, 0
  br i1 %cmp12.not.i3068, label %drm_fixp_from_fraction.exit3078, label %do.body.i3069.do.body.i3069_crit_edge

do.body.i3069.do.body.i3069_crit_edge:            ; preds = %do.body.i3069
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i3069

drm_fixp_from_fraction.exit3078:                  ; preds = %do.body.i3069
  %875 = and i64 %storemerge.i3063, 9223372036854775804
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %875)
  %cmp14.i3071 = icmp ne i64 %875, 0
  %876 = zext i1 %cmp14.i3071 to i64
  %add.i3072 = add i64 %res_abs.1.i3066, %876
  %sub22.i3074 = sub i64 0, %add.i3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %870)
  %tobool20.not39.i3075 = icmp slt i32 %870, 0
  %spec.select.i3076 = select i1 %tobool20.not39.i3075, i64 %sub22.i3074, i64 %add.i3072
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i3053) #7
  %877 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_load8_noabort(i32 %877)
  %878 = load i64, ptr %temp2_fp, align 8
  %shr12.i.i3079 = lshr i64 %spec.select.i3076, 63
  br label %for.body.i.i3085

for.body.i.i3085:                                 ; preds = %for.inc.i.i3088.for.body.i.i3085_crit_edge, %drm_fixp_from_fraction.exit3078
  %shift.014.i.i3080 = phi i32 [ 62, %drm_fixp_from_fraction.exit3078 ], [ %dec.i.i3086, %for.inc.i.i3088.for.body.i.i3085_crit_edge ]
  %sh_prom.i.i3081 = zext i32 %shift.014.i.i3080 to i64
  %shr213.i.i3082 = lshr i64 %spec.select.i3076, %sh_prom.i.i3081
  %and3.i.i3083 = and i64 %shr213.i.i3082, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i3083, i64 %shr12.i.i3079)
  %cmp5.not.i.i3084 = icmp eq i64 %and3.i.i3083, %shr12.i.i3079
  br i1 %cmp5.not.i.i3084, label %for.inc.i.i3088, label %for.body.i.i3085.drm_fixp_div.exit3105_crit_edge

for.body.i.i3085.drm_fixp_div.exit3105_crit_edge: ; preds = %for.body.i.i3085
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit3105

for.inc.i.i3088:                                  ; preds = %for.body.i.i3085
  %dec.i.i3086 = add nsw i32 %shift.014.i.i3080, -1
  %cmp.not.i.i3087 = icmp eq i32 %dec.i.i3086, 0
  br i1 %cmp.not.i.i3087, label %for.inc.i.i3088.drm_fixp_div.exit3105_crit_edge, label %for.inc.i.i3088.for.body.i.i3085_crit_edge

for.inc.i.i3088.for.body.i.i3085_crit_edge:       ; preds = %for.inc.i.i3088
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i3085

for.inc.i.i3088.drm_fixp_div.exit3105_crit_edge:  ; preds = %for.inc.i.i3088
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit3105

drm_fixp_div.exit3105:                            ; preds = %for.inc.i.i3088.drm_fixp_div.exit3105_crit_edge, %for.body.i.i3085.drm_fixp_div.exit3105_crit_edge
  %shift.0.lcssa.i.i3089 = phi i32 [ 0, %for.inc.i.i3088.drm_fixp_div.exit3105_crit_edge ], [ %shift.014.i.i3080, %for.body.i.i3085.drm_fixp_div.exit3105_crit_edge ]
  %sub.i3090 = sub i32 62, %shift.0.lcssa.i.i3089
  %sh_prom.i3091 = zext i32 %sub.i3090 to i64
  %shl.i3092 = shl i64 %spec.select.i3076, %sh_prom.i3091
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i3090)
  %cmp.i3093 = icmp ult i32 %sub.i3090, 32
  %sub1.i3094 = add i32 %shift.0.lcssa.i.i3089, -30
  %narrow.i3095 = select i1 %cmp.i3093, i32 %sub1.i3094, i32 0
  %shr.i3096 = zext i32 %narrow.i3095 to i64
  %b.addr.0.i3097 = ashr i64 %878, %shr.i3096
  %call3.i3098 = call i64 @div64_s64(i64 noundef %shl.i3092, i64 noundef %b.addr.0.i3097) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i3090)
  %cmp4.i3099 = icmp ugt i32 %sub.i3090, 32
  %sub6.i3100 = sub i32 30, %shift.0.lcssa.i.i3089
  %narrow19.i3101 = select i1 %cmp4.i3099, i32 %sub6.i3100, i32 0
  %shr8.i3102 = zext i32 %narrow19.i3101 to i64
  %retval.0.i3103 = ashr i64 %call3.i3098, %shr8.i3102
  %879 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %879)
  store i64 %retval.0.i3103, ptr %temp2_fp, align 8
  %880 = call i64 @llvm.abs.i64(i64 %temp.0, i1 false) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i3106) #7
  %881 = ptrtoint ptr %rem.i3106 to i32
  call void @__asan_store8_noabort(i32 %881)
  store i64 -1, ptr %rem.i3106, align 8, !annotation !176
  %call.i3107 = call i64 @div64_u64_rem(i64 noundef %880, i64 noundef 1, ptr noundef nonnull %rem.i3106) #7
  %882 = ptrtoint ptr %rem.i3106 to i32
  call void @__asan_load8_noabort(i32 %882)
  %rem.promoted.i3108 = load i64, ptr %rem.i3106, align 8
  br label %do.body.i3122

do.body.i3122:                                    ; preds = %do.body.i3122.do.body.i3122_crit_edge, %drm_fixp_div.exit3105
  %storemerge40.i3109 = phi i64 [ %rem.promoted.i3108, %drm_fixp_div.exit3105 ], [ %storemerge.i3116, %do.body.i3122.do.body.i3122_crit_edge ]
  %res_abs.0.i3110 = phi i64 [ %call.i3107, %drm_fixp_div.exit3105 ], [ %res_abs.1.i3119, %do.body.i3122.do.body.i3122_crit_edge ]
  %i.0.i3111 = phi i32 [ 32, %drm_fixp_div.exit3105 ], [ %dec.i3120, %do.body.i3122.do.body.i3122_crit_edge ]
  %shl.i3112 = shl i64 %storemerge40.i3109, 1
  %shl9.i3113 = shl i64 %res_abs.0.i3110, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i3112)
  %cmp10.not.i3114 = icmp ne i64 %shl.i3112, 0
  %sub11.i3115.neg = sext i1 %cmp10.not.i3114 to i64
  %storemerge.i3116 = add i64 %shl.i3112, %sub11.i3115.neg
  %or.i3118 = zext i1 %cmp10.not.i3114 to i64
  %res_abs.1.i3119 = or i64 %shl9.i3113, %or.i3118
  %dec.i3120 = add nsw i32 %i.0.i3111, -1
  %cmp12.not.i3121 = icmp eq i32 %dec.i3120, 0
  br i1 %cmp12.not.i3121, label %drm_fixp_from_fraction.exit3131, label %do.body.i3122.do.body.i3122_crit_edge

do.body.i3122.do.body.i3122_crit_edge:            ; preds = %do.body.i3122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i3122

drm_fixp_from_fraction.exit3131:                  ; preds = %do.body.i3122
  %shl13.i3123.mask = and i64 %storemerge.i3116, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i3123.mask)
  %cmp14.i3124 = icmp ne i64 %shl13.i3123.mask, 0
  %883 = zext i1 %cmp14.i3124 to i64
  %add.i3125 = add i64 %res_abs.1.i3119, %883
  %sub22.i3127 = sub i64 0, %add.i3125
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %temp.0)
  %tobool20.not39.i3128 = icmp slt i64 %temp.0, 0
  %spec.select.i3129 = select i1 %tobool20.not39.i3128, i64 %sub22.i3127, i64 %add.i3125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i3106) #7
  %884 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_load8_noabort(i32 %884)
  %885 = load i64, ptr %temp2_fp, align 8
  %shr12.i.i3132 = lshr i64 %spec.select.i3129, 63
  br label %for.body.i.i3138

for.body.i.i3138:                                 ; preds = %for.inc.i.i3141.for.body.i.i3138_crit_edge, %drm_fixp_from_fraction.exit3131
  %shift.014.i.i3133 = phi i32 [ 62, %drm_fixp_from_fraction.exit3131 ], [ %dec.i.i3139, %for.inc.i.i3141.for.body.i.i3138_crit_edge ]
  %sh_prom.i.i3134 = zext i32 %shift.014.i.i3133 to i64
  %shr213.i.i3135 = lshr i64 %spec.select.i3129, %sh_prom.i.i3134
  %and3.i.i3136 = and i64 %shr213.i.i3135, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i3136, i64 %shr12.i.i3132)
  %cmp5.not.i.i3137 = icmp eq i64 %and3.i.i3136, %shr12.i.i3132
  br i1 %cmp5.not.i.i3137, label %for.inc.i.i3141, label %for.body.i.i3138.drm_fixp_msbset.exit.i3144_crit_edge

for.body.i.i3138.drm_fixp_msbset.exit.i3144_crit_edge: ; preds = %for.body.i.i3138
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i3144

for.inc.i.i3141:                                  ; preds = %for.body.i.i3138
  %dec.i.i3139 = add nsw i32 %shift.014.i.i3133, -1
  %cmp.not.i.i3140 = icmp eq i32 %dec.i.i3139, 0
  br i1 %cmp.not.i.i3140, label %for.inc.i.i3141.drm_fixp_msbset.exit.i3144_crit_edge, label %for.inc.i.i3141.for.body.i.i3138_crit_edge

for.inc.i.i3141.for.body.i.i3138_crit_edge:       ; preds = %for.inc.i.i3141
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i3138

for.inc.i.i3141.drm_fixp_msbset.exit.i3144_crit_edge: ; preds = %for.inc.i.i3141
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i3144

drm_fixp_msbset.exit.i3144:                       ; preds = %for.inc.i.i3141.drm_fixp_msbset.exit.i3144_crit_edge, %for.body.i.i3138.drm_fixp_msbset.exit.i3144_crit_edge
  %shift.0.lcssa.i.i3142 = phi i32 [ 0, %for.inc.i.i3141.drm_fixp_msbset.exit.i3144_crit_edge ], [ %shift.014.i.i3133, %for.body.i.i3138.drm_fixp_msbset.exit.i3144_crit_edge ]
  %shr12.i33.i3143 = lshr i64 %885, 63
  br label %for.body.i39.i3150

for.body.i39.i3150:                               ; preds = %for.inc.i42.i3153.for.body.i39.i3150_crit_edge, %drm_fixp_msbset.exit.i3144
  %shift.014.i34.i3145 = phi i32 [ 62, %drm_fixp_msbset.exit.i3144 ], [ %dec.i40.i3151, %for.inc.i42.i3153.for.body.i39.i3150_crit_edge ]
  %sh_prom.i35.i3146 = zext i32 %shift.014.i34.i3145 to i64
  %shr213.i36.i3147 = lshr i64 %885, %sh_prom.i35.i3146
  %and3.i37.i3148 = and i64 %shr213.i36.i3147, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i3148, i64 %shr12.i33.i3143)
  %cmp5.not.i38.i3149 = icmp eq i64 %and3.i37.i3148, %shr12.i33.i3143
  br i1 %cmp5.not.i38.i3149, label %for.inc.i42.i3153, label %for.body.i39.i3150.drm_fixp_msbset.exit44.i3157_crit_edge

for.body.i39.i3150.drm_fixp_msbset.exit44.i3157_crit_edge: ; preds = %for.body.i39.i3150
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i3157

for.inc.i42.i3153:                                ; preds = %for.body.i39.i3150
  %dec.i40.i3151 = add nsw i32 %shift.014.i34.i3145, -1
  %cmp.not.i41.i3152 = icmp eq i32 %dec.i40.i3151, 0
  br i1 %cmp.not.i41.i3152, label %for.inc.i42.i3153.drm_fixp_msbset.exit44.i3157_crit_edge, label %for.inc.i42.i3153.for.body.i39.i3150_crit_edge

for.inc.i42.i3153.for.body.i39.i3150_crit_edge:   ; preds = %for.inc.i42.i3153
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i3150

for.inc.i42.i3153.drm_fixp_msbset.exit44.i3157_crit_edge: ; preds = %for.inc.i42.i3153
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i3157

drm_fixp_msbset.exit44.i3157:                     ; preds = %for.inc.i42.i3153.drm_fixp_msbset.exit44.i3157_crit_edge, %for.body.i39.i3150.drm_fixp_msbset.exit44.i3157_crit_edge
  %shift.0.lcssa.i43.i3154 = phi i32 [ 0, %for.inc.i42.i3153.drm_fixp_msbset.exit44.i3157_crit_edge ], [ %shift.014.i34.i3145, %for.body.i39.i3150.drm_fixp_msbset.exit44.i3157_crit_edge ]
  %add.i3155 = add i32 %shift.0.lcssa.i43.i3154, %shift.0.lcssa.i.i3142
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i3155)
  %cmp.i3156 = icmp ugt i32 %add.i3155, 61
  br i1 %cmp.i3156, label %if.end.i3170, label %if.end11.thread.i3159

if.end11.thread.i3159:                            ; preds = %drm_fixp_msbset.exit44.i3157
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i3158 = mul i64 %885, %spec.select.i3129
  br label %if.then13.i3182

if.end.i3170:                                     ; preds = %drm_fixp_msbset.exit44.i3157
  %sub.i3160 = add i32 %add.i3155, -61
  %shr.i3161 = lshr i32 %sub.i3160, 1
  %and.i3162 = and i32 %sub.i3160, 1
  %add2.i3163 = add nuw nsw i32 %shr.i3161, %and.i3162
  %sh_prom.i3164 = zext i32 %add2.i3163 to i64
  %shr3.i3165 = ashr i64 %spec.select.i3129, %sh_prom.i3164
  %sh_prom5.i3166 = zext i32 %shr.i3161 to i64
  %shr6.i3167 = ashr i64 %885, %sh_prom5.i3166
  %mul.i3168 = mul i64 %shr3.i3165, %shr6.i3167
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i3160)
  %cmp7.i3169 = icmp ugt i32 %sub.i3160, 32
  br i1 %cmp7.i3169, label %if.then8.i3174, label %if.end11.i3176

if.then8.i3174:                                   ; preds = %if.end.i3170
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i3171 = add i32 %add.i3155, -93
  %sh_prom10.i3172 = zext i32 %sub9.i3171 to i64
  %shl.i3173 = shl i64 %mul.i3168, %sh_prom10.i3172
  br label %drm_fixp_mul.exit3184

if.end11.i3176:                                   ; preds = %if.end.i3170
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i3160)
  %cmp12.not.i3175 = icmp eq i32 %sub.i3160, 32
  br i1 %cmp12.not.i3175, label %if.end11.i3176.drm_fixp_mul.exit3184_crit_edge, label %if.end11.i3176.if.then13.i3182_crit_edge

if.end11.i3176.if.then13.i3182_crit_edge:         ; preds = %if.end11.i3176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i3182

if.end11.i3176.drm_fixp_mul.exit3184_crit_edge:   ; preds = %if.end11.i3176
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit3184

if.then13.i3182:                                  ; preds = %if.end11.i3176.if.then13.i3182_crit_edge, %if.end11.thread.i3159
  %shift.05056.i3177 = phi i32 [ 0, %if.end11.thread.i3159 ], [ %sub.i3160, %if.end11.i3176.if.then13.i3182_crit_edge ]
  %mul5155.i3178 = phi i64 [ %mul48.i3158, %if.end11.thread.i3159 ], [ %mul.i3168, %if.end11.i3176.if.then13.i3182_crit_edge ]
  %sub14.i3179 = sub nuw nsw i32 32, %shift.05056.i3177
  %sh_prom15.i3180 = zext i32 %sub14.i3179 to i64
  %shr16.i3181 = ashr i64 %mul5155.i3178, %sh_prom15.i3180
  br label %drm_fixp_mul.exit3184

drm_fixp_mul.exit3184:                            ; preds = %if.then13.i3182, %if.end11.i3176.drm_fixp_mul.exit3184_crit_edge, %if.then8.i3174
  %retval.0.i3183 = phi i64 [ %shl.i3173, %if.then8.i3174 ], [ %shr16.i3181, %if.then13.i3182 ], [ %mul.i3168, %if.end11.i3176.drm_fixp_mul.exit3184_crit_edge ]
  %886 = ptrtoint ptr %temp2_fp to i32
  call void @__asan_store8_noabort(i32 %886)
  store i64 %retval.0.i3183, ptr %temp2_fp, align 8
  %887 = ptrtoint ptr %async_en7.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load i32, ptr %async_en7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %888)
  %tobool432.not = icmp eq i32 %888, 0
  br i1 %tobool432.not, label %drm_fixp_mul.exit3184.if.end437_crit_edge, label %if.then433

drm_fixp_mul.exit3184.if.end437_crit_edge:        ; preds = %drm_fixp_mul.exit3184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end437

if.then433:                                       ; preds = %drm_fixp_mul.exit3184
  call void @__sanitizer_cov_trace_pc() #9
  %889 = lshr i64 %retval.0.i3183, 32
  %conv.i3185 = trunc i64 %889 to i32
  %890 = ptrtoint ptr %delay_start_link to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %delay_start_link, align 8
  %add436 = add i32 %891, %conv.i3185
  store i32 %add436, ptr %delay_start_link, align 8
  br label %if.end437

if.end437:                                        ; preds = %if.then433, %drm_fixp_mul.exit3184.if.end437_crit_edge
  %892 = ptrtoint ptr %delay_start_link to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load i32, ptr %delay_start_link, align 8
  %894 = call i32 @llvm.abs.i32(i32 %893, i1 false)
  %895 = zext i32 %894 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i3186) #7
  %896 = ptrtoint ptr %rem.i3186 to i32
  call void @__asan_store8_noabort(i32 %896)
  store i64 -1, ptr %rem.i3186, align 8, !annotation !176
  %call.i3187 = call i64 @div64_u64_rem(i64 noundef %895, i64 noundef 1, ptr noundef nonnull %rem.i3186) #7
  %897 = ptrtoint ptr %rem.i3186 to i32
  call void @__asan_load8_noabort(i32 %897)
  %rem.promoted.i3188 = load i64, ptr %rem.i3186, align 8
  br label %do.body.i3202

do.body.i3202:                                    ; preds = %do.body.i3202.do.body.i3202_crit_edge, %if.end437
  %storemerge40.i3189 = phi i64 [ %rem.promoted.i3188, %if.end437 ], [ %storemerge.i3196, %do.body.i3202.do.body.i3202_crit_edge ]
  %res_abs.0.i3190 = phi i64 [ %call.i3187, %if.end437 ], [ %res_abs.1.i3199, %do.body.i3202.do.body.i3202_crit_edge ]
  %i.0.i3191 = phi i32 [ 32, %if.end437 ], [ %dec.i3200, %do.body.i3202.do.body.i3202_crit_edge ]
  %shl.i3192 = shl i64 %storemerge40.i3189, 1
  %shl9.i3193 = shl i64 %res_abs.0.i3190, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i3192)
  %cmp10.not.i3194 = icmp ne i64 %shl.i3192, 0
  %sub11.i3195.neg = sext i1 %cmp10.not.i3194 to i64
  %storemerge.i3196 = add i64 %shl.i3192, %sub11.i3195.neg
  %or.i3198 = zext i1 %cmp10.not.i3194 to i64
  %res_abs.1.i3199 = or i64 %shl9.i3193, %or.i3198
  %dec.i3200 = add nsw i32 %i.0.i3191, -1
  %cmp12.not.i3201 = icmp eq i32 %dec.i3200, 0
  br i1 %cmp12.not.i3201, label %drm_fixp_from_fraction.exit3211, label %do.body.i3202.do.body.i3202_crit_edge

do.body.i3202.do.body.i3202_crit_edge:            ; preds = %do.body.i3202
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i3202

drm_fixp_from_fraction.exit3211:                  ; preds = %do.body.i3202
  %shl13.i3203.mask = and i64 %storemerge.i3196, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i3203.mask)
  %cmp14.i3204 = icmp ne i64 %shl13.i3203.mask, 0
  %898 = zext i1 %cmp14.i3204 to i64
  %add.i3205 = add i64 %res_abs.1.i3199, %898
  %sub22.i3207 = sub i64 0, %add.i3205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %893)
  %tobool20.not39.i3208 = icmp slt i32 %893, 0
  %spec.select.i3209 = select i1 %tobool20.not39.i3208, i64 %sub22.i3207, i64 %add.i3205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i3186) #7
  %899 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %899)
  %900 = load i64, ptr %call7.i.i, align 8
  %shr12.i.i3212 = lshr i64 %spec.select.i3209, 63
  br label %for.body.i.i3218

for.body.i.i3218:                                 ; preds = %for.inc.i.i3221.for.body.i.i3218_crit_edge, %drm_fixp_from_fraction.exit3211
  %shift.014.i.i3213 = phi i32 [ 62, %drm_fixp_from_fraction.exit3211 ], [ %dec.i.i3219, %for.inc.i.i3221.for.body.i.i3218_crit_edge ]
  %sh_prom.i.i3214 = zext i32 %shift.014.i.i3213 to i64
  %shr213.i.i3215 = lshr i64 %spec.select.i3209, %sh_prom.i.i3214
  %and3.i.i3216 = and i64 %shr213.i.i3215, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i3216, i64 %shr12.i.i3212)
  %cmp5.not.i.i3217 = icmp eq i64 %and3.i.i3216, %shr12.i.i3212
  br i1 %cmp5.not.i.i3217, label %for.inc.i.i3221, label %for.body.i.i3218.drm_fixp_div.exit3238_crit_edge

for.body.i.i3218.drm_fixp_div.exit3238_crit_edge: ; preds = %for.body.i.i3218
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit3238

for.inc.i.i3221:                                  ; preds = %for.body.i.i3218
  %dec.i.i3219 = add nsw i32 %shift.014.i.i3213, -1
  %cmp.not.i.i3220 = icmp eq i32 %dec.i.i3219, 0
  br i1 %cmp.not.i.i3220, label %for.inc.i.i3221.drm_fixp_div.exit3238_crit_edge, label %for.inc.i.i3221.for.body.i.i3218_crit_edge

for.inc.i.i3221.for.body.i.i3218_crit_edge:       ; preds = %for.inc.i.i3221
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i3218

for.inc.i.i3221.drm_fixp_div.exit3238_crit_edge:  ; preds = %for.inc.i.i3221
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_div.exit3238

drm_fixp_div.exit3238:                            ; preds = %for.inc.i.i3221.drm_fixp_div.exit3238_crit_edge, %for.body.i.i3218.drm_fixp_div.exit3238_crit_edge
  %shift.0.lcssa.i.i3222 = phi i32 [ 0, %for.inc.i.i3221.drm_fixp_div.exit3238_crit_edge ], [ %shift.014.i.i3213, %for.body.i.i3218.drm_fixp_div.exit3238_crit_edge ]
  %sub.i3223 = sub i32 62, %shift.0.lcssa.i.i3222
  %sh_prom.i3224 = zext i32 %sub.i3223 to i64
  %shl.i3225 = shl i64 %spec.select.i3209, %sh_prom.i3224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i3223)
  %cmp.i3226 = icmp ult i32 %sub.i3223, 32
  %sub1.i3227 = add i32 %shift.0.lcssa.i.i3222, -30
  %narrow.i3228 = select i1 %cmp.i3226, i32 %sub1.i3227, i32 0
  %shr.i3229 = zext i32 %narrow.i3228 to i64
  %b.addr.0.i3230 = ashr i64 %900, %shr.i3229
  %call3.i3231 = call i64 @div64_s64(i64 noundef %shl.i3225, i64 noundef %b.addr.0.i3230) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i3223)
  %cmp4.i3232 = icmp ugt i32 %sub.i3223, 32
  %sub6.i3233 = sub i32 30, %shift.0.lcssa.i.i3222
  %narrow19.i3234 = select i1 %cmp4.i3232, i32 %sub6.i3233, i32 0
  %shr8.i3235 = zext i32 %narrow19.i3234 to i64
  %retval.0.i3236 = ashr i64 %call3.i3231, %shr8.i3235
  %901 = ptrtoint ptr %delay_start_time_fp to i32
  call void @__asan_store8_noabort(i32 %901)
  store i64 %retval.0.i3236, ptr %delay_start_time_fp, align 8
  %902 = ptrtoint ptr %valid_boundary_link to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load i32, ptr %valid_boundary_link, align 4
  %conv445 = trunc i32 %903 to i8
  %valid_boundary_link446 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_table, i32 0, i32 4
  %904 = ptrtoint ptr %valid_boundary_link446 to i32
  call void @__asan_store1_noabort(i32 %904)
  store i8 %conv445, ptr %valid_boundary_link446, align 1
  %905 = ptrtoint ptr %delay_start_link to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load i32, ptr %delay_start_link, align 8
  %conv448 = trunc i32 %906 to i16
  %delay_start_link449 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_table, i32 0, i32 5
  %907 = ptrtoint ptr %delay_start_link449 to i32
  call void @__asan_store2_noabort(i32 %907)
  store i16 %conv448, ptr %delay_start_link449, align 4
  %908 = ptrtoint ptr %boundary_moderation_en to i32
  call void @__asan_load1_noabort(i32 %908)
  %909 = load i8, ptr %boundary_moderation_en, align 4, !range !177
  %boundary_moderation_en452 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_table, i32 0, i32 6
  %910 = ptrtoint ptr %boundary_moderation_en452 to i32
  call void @__asan_store1_noabort(i32 %910)
  store i8 %909, ptr %boundary_moderation_en452, align 2
  %911 = ptrtoint ptr %valid_lower_boundary_link to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load i32, ptr %valid_lower_boundary_link, align 4
  %conv454 = trunc i32 %912 to i8
  %valid_lower_boundary_link455 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_table, i32 0, i32 7
  %913 = ptrtoint ptr %valid_lower_boundary_link455 to i32
  call void @__asan_store1_noabort(i32 %913)
  store i8 %conv454, ptr %valid_lower_boundary_link455, align 1
  %914 = ptrtoint ptr %upper_boundary_count to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %upper_boundary_count, align 4
  %conv457 = trunc i32 %915 to i8
  %upper_boundary_count458 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_table, i32 0, i32 8
  %916 = ptrtoint ptr %upper_boundary_count458 to i32
  call void @__asan_store1_noabort(i32 %916)
  store i8 %conv457, ptr %upper_boundary_count458, align 4
  %917 = ptrtoint ptr %lower_boundary_count to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load i32, ptr %lower_boundary_count, align 8
  %conv460 = trunc i32 %918 to i8
  %lower_boundary_count461 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_table, i32 0, i32 9
  %919 = ptrtoint ptr %lower_boundary_count461 to i32
  call void @__asan_store1_noabort(i32 %919)
  store i8 %conv460, ptr %lower_boundary_count461, align 1
  %920 = ptrtoint ptr %tu_size_minus1 to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %tu_size_minus1, align 8
  %conv463 = trunc i32 %921 to i8
  %tu_size_minus1464 = getelementptr inbounds %struct.dp_vc_tu_mapping_table, ptr %tu_table, i32 0, i32 10
  %922 = ptrtoint ptr %tu_size_minus1464 to i32
  call void @__asan_store1_noabort(i32 %922)
  store i8 %conv463, ptr %tu_size_minus1464, align 2
  %conv466 = and i32 %903, 255
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.76, i32 noundef %conv466) #7
  %923 = ptrtoint ptr %delay_start_link449 to i32
  call void @__asan_load2_noabort(i32 %923)
  %924 = load i16, ptr %delay_start_link449, align 4
  %conv468 = zext i16 %924 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.77, i32 noundef %conv468) #7
  %925 = ptrtoint ptr %boundary_moderation_en452 to i32
  call void @__asan_load1_noabort(i32 %925)
  %926 = load i8, ptr %boundary_moderation_en452, align 2, !range !177
  %927 = zext i8 %926 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.78, i32 noundef %927) #7
  %928 = ptrtoint ptr %valid_lower_boundary_link455 to i32
  call void @__asan_load1_noabort(i32 %928)
  %929 = load i8, ptr %valid_lower_boundary_link455, align 1
  %conv473 = zext i8 %929 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.79, i32 noundef %conv473) #7
  %930 = ptrtoint ptr %upper_boundary_count458 to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %upper_boundary_count458, align 4
  %conv475 = zext i8 %931 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.80, i32 noundef %conv475) #7
  %932 = ptrtoint ptr %lower_boundary_count461 to i32
  call void @__asan_load1_noabort(i32 %932)
  %933 = load i8, ptr %lower_boundary_count461, align 1
  %conv477 = zext i8 %933 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.81, i32 noundef %conv477) #7
  %934 = ptrtoint ptr %tu_size_minus1464 to i32
  call void @__asan_load1_noabort(i32 %934)
  %935 = load i8, ptr %tu_size_minus1464, align 2
  %conv479 = zext i8 %935 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.82, i32 noundef %conv479) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %drm_fixp_div.exit3238, %drm_fixp_from_fraction.exit831.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %temp2_fp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_tu_param_compare(i64 noundef %a, i64 noundef %b) unnamed_addr #0 align 64 {
entry:
  %rem.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp = icmp eq i64 %a, %b
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i) #7
  %0 = ptrtoint ptr %rem.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rem.i, align 8, !annotation !176
  %call.i = call i64 @div64_u64_rem(i64 noundef 1, i64 noundef 1, ptr noundef nonnull %rem.i) #7
  %1 = ptrtoint ptr %rem.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %rem.promoted.i = load i64, ptr %rem.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %storemerge40.i = phi i64 [ %rem.promoted.i, %if.end ], [ %storemerge.i, %do.body.i.do.body.i_crit_edge ]
  %res_abs.0.i = phi i64 [ %call.i, %if.end ], [ %res_abs.1.i, %do.body.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ 32, %if.end ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %shl.i = shl i64 %storemerge40.i, 1
  %shl9.i = shl i64 %res_abs.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp10.not.i = icmp ne i64 %shl.i, 0
  %sub11.i.neg = sext i1 %cmp10.not.i to i64
  %storemerge.i = add i64 %shl.i, %sub11.i.neg
  %or.i = zext i1 %cmp10.not.i to i64
  %res_abs.1.i = or i64 %shl9.i, %or.i
  %dec.i = add nsw i32 %i.0.i, -1
  %cmp12.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp12.not.i, label %drm_fixp_from_fraction.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

drm_fixp_from_fraction.exit:                      ; preds = %do.body.i
  %shl13.i.mask = and i64 %storemerge.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.i.mask)
  %cmp14.i = icmp ne i64 %shl13.i.mask, 0
  %.neg = sext i1 %cmp14.i to i64
  %add.i.neg = sub i64 %.neg, %res_abs.1.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %a)
  %tobool.not = icmp sgt i64 %a, -1
  %not.tobool.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %b)
  %tobool3.not = icmp sgt i64 %b, -1
  %cmp5 = and i1 %tobool3.not, %not.tobool.not
  br i1 %cmp5, label %drm_fixp_from_fraction.exit.cleanup_crit_edge, label %if.else

drm_fixp_from_fraction.exit.cleanup_crit_edge:    ; preds = %drm_fixp_from_fraction.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %drm_fixp_from_fraction.exit
  %not.tobool3.not = xor i1 %tobool3.not, true
  %cmp7 = and i1 %tobool.not, %not.tobool3.not
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.end10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %2 = or i64 %b, %a
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %2)
  %3 = icmp sgt i64 %2, -1
  br i1 %3, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp14 = icmp sgt i64 %a, %b
  %. = select i1 %cmp14, i32 1, i32 2
  br label %cleanup

if.else17:                                        ; preds = %if.end10
  %shr12.i.i = lshr i64 %a, 63
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else17
  %shift.014.i.i = phi i32 [ 62, %if.else17 ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sh_prom.i.i = zext i32 %shift.014.i.i to i64
  %shr213.i.i = lshr i64 %a, %sh_prom.i.i
  %and3.i.i = and i64 %shr213.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i, i64 %shr12.i.i)
  %cmp5.not.i.i = icmp eq i64 %and3.i.i, %shr12.i.i
  br i1 %cmp5.not.i.i, label %for.inc.i.i, label %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge

for.body.i.i.drm_fixp_msbset.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %shift.014.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i

drm_fixp_msbset.exit.i:                           ; preds = %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge, %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge
  %shift.0.lcssa.i.i = phi i32 [ 0, %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge ], [ %shift.014.i.i, %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge ]
  %shr12.i33.i = lshr i64 %add.i.neg, 63
  br label %for.body.i39.i

for.body.i39.i:                                   ; preds = %for.inc.i42.i.for.body.i39.i_crit_edge, %drm_fixp_msbset.exit.i
  %shift.014.i34.i = phi i32 [ 62, %drm_fixp_msbset.exit.i ], [ %dec.i40.i, %for.inc.i42.i.for.body.i39.i_crit_edge ]
  %sh_prom.i35.i = zext i32 %shift.014.i34.i to i64
  %shr213.i36.i = lshr i64 %add.i.neg, %sh_prom.i35.i
  %and3.i37.i = and i64 %shr213.i36.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i, i64 %shr12.i33.i)
  %cmp5.not.i38.i = icmp eq i64 %and3.i37.i, %shr12.i33.i
  br i1 %cmp5.not.i38.i, label %for.inc.i42.i, label %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge

for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge: ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i

for.inc.i42.i:                                    ; preds = %for.body.i39.i
  %dec.i40.i = add nsw i32 %shift.014.i34.i, -1
  %cmp.not.i41.i = icmp eq i32 %dec.i40.i, 0
  br i1 %cmp.not.i41.i, label %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge, label %for.inc.i42.i.for.body.i39.i_crit_edge

for.inc.i42.i.for.body.i39.i_crit_edge:           ; preds = %for.inc.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i

for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge: ; preds = %for.inc.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i

drm_fixp_msbset.exit44.i:                         ; preds = %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge, %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge
  %shift.0.lcssa.i43.i = phi i32 [ 0, %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge ], [ %shift.014.i34.i, %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge ]
  %add.i39 = add i32 %shift.0.lcssa.i43.i, %shift.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i39)
  %cmp.i = icmp ugt i32 %add.i39, 61
  br i1 %cmp.i, label %if.end.i, label %if.end11.thread.i

if.end11.thread.i:                                ; preds = %drm_fixp_msbset.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i = mul i64 %add.i.neg, %a
  br label %if.then13.i

if.end.i:                                         ; preds = %drm_fixp_msbset.exit44.i
  %sub.i = add i32 %add.i39, -61
  %shr.i = lshr i32 %sub.i, 1
  %and.i = and i32 %sub.i, 1
  %add2.i = add nuw nsw i32 %shr.i, %and.i
  %sh_prom.i = zext i32 %add2.i to i64
  %shr3.i = ashr i64 %a, %sh_prom.i
  %sh_prom5.i = zext i32 %shr.i to i64
  %shr6.i = ashr i64 %add.i.neg, %sh_prom5.i
  %mul.i = mul i64 %shr3.i, %shr6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %sub.i, 32
  br i1 %cmp7.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i = add i32 %add.i39, -93
  %sh_prom10.i = zext i32 %sub9.i to i64
  %shl.i40 = shl i64 %mul.i, %sh_prom10.i
  br label %drm_fixp_mul.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp12.not.i41 = icmp eq i32 %sub.i, 32
  br i1 %cmp12.not.i41, label %if.end11.i.drm_fixp_mul.exit_crit_edge, label %if.end11.i.if.then13.i_crit_edge

if.end11.i.if.then13.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.end11.i.drm_fixp_mul.exit_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit

if.then13.i:                                      ; preds = %if.end11.i.if.then13.i_crit_edge, %if.end11.thread.i
  %shift.05056.i = phi i32 [ 0, %if.end11.thread.i ], [ %sub.i, %if.end11.i.if.then13.i_crit_edge ]
  %mul5155.i = phi i64 [ %mul48.i, %if.end11.thread.i ], [ %mul.i, %if.end11.i.if.then13.i_crit_edge ]
  %sub14.i = sub nuw nsw i32 32, %shift.05056.i
  %sh_prom15.i = zext i32 %sub14.i to i64
  %shr16.i = ashr i64 %mul5155.i, %sh_prom15.i
  br label %drm_fixp_mul.exit

drm_fixp_mul.exit:                                ; preds = %if.then13.i, %if.end11.i.drm_fixp_mul.exit_crit_edge, %if.then8.i
  %retval.0.i = phi i64 [ %shl.i40, %if.then8.i ], [ %shr16.i, %if.then13.i ], [ %mul.i, %if.end11.i.drm_fixp_mul.exit_crit_edge ]
  %shr12.i.i42 = lshr i64 %b, 63
  br label %for.body.i.i48

for.body.i.i48:                                   ; preds = %for.inc.i.i51.for.body.i.i48_crit_edge, %drm_fixp_mul.exit
  %shift.014.i.i43 = phi i32 [ 62, %drm_fixp_mul.exit ], [ %dec.i.i49, %for.inc.i.i51.for.body.i.i48_crit_edge ]
  %sh_prom.i.i44 = zext i32 %shift.014.i.i43 to i64
  %shr213.i.i45 = lshr i64 %b, %sh_prom.i.i44
  %and3.i.i46 = and i64 %shr213.i.i45, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i46, i64 %shr12.i.i42)
  %cmp5.not.i.i47 = icmp eq i64 %and3.i.i46, %shr12.i.i42
  br i1 %cmp5.not.i.i47, label %for.inc.i.i51, label %for.body.i.i48.drm_fixp_msbset.exit.i54_crit_edge

for.body.i.i48.drm_fixp_msbset.exit.i54_crit_edge: ; preds = %for.body.i.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i54

for.inc.i.i51:                                    ; preds = %for.body.i.i48
  %dec.i.i49 = add nsw i32 %shift.014.i.i43, -1
  %cmp.not.i.i50 = icmp eq i32 %dec.i.i49, 0
  br i1 %cmp.not.i.i50, label %for.inc.i.i51.drm_fixp_msbset.exit.i54_crit_edge, label %for.inc.i.i51.for.body.i.i48_crit_edge

for.inc.i.i51.for.body.i.i48_crit_edge:           ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i48

for.inc.i.i51.drm_fixp_msbset.exit.i54_crit_edge: ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit.i54

drm_fixp_msbset.exit.i54:                         ; preds = %for.inc.i.i51.drm_fixp_msbset.exit.i54_crit_edge, %for.body.i.i48.drm_fixp_msbset.exit.i54_crit_edge
  %shift.0.lcssa.i.i52 = phi i32 [ 0, %for.inc.i.i51.drm_fixp_msbset.exit.i54_crit_edge ], [ %shift.014.i.i43, %for.body.i.i48.drm_fixp_msbset.exit.i54_crit_edge ]
  br label %for.body.i39.i60

for.body.i39.i60:                                 ; preds = %for.inc.i42.i63.for.body.i39.i60_crit_edge, %drm_fixp_msbset.exit.i54
  %shift.014.i34.i55 = phi i32 [ 62, %drm_fixp_msbset.exit.i54 ], [ %dec.i40.i61, %for.inc.i42.i63.for.body.i39.i60_crit_edge ]
  %sh_prom.i35.i56 = zext i32 %shift.014.i34.i55 to i64
  %shr213.i36.i57 = lshr i64 %add.i.neg, %sh_prom.i35.i56
  %and3.i37.i58 = and i64 %shr213.i36.i57, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i58, i64 %shr12.i33.i)
  %cmp5.not.i38.i59 = icmp eq i64 %and3.i37.i58, %shr12.i33.i
  br i1 %cmp5.not.i38.i59, label %for.inc.i42.i63, label %for.body.i39.i60.drm_fixp_msbset.exit44.i67_crit_edge

for.body.i39.i60.drm_fixp_msbset.exit44.i67_crit_edge: ; preds = %for.body.i39.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i67

for.inc.i42.i63:                                  ; preds = %for.body.i39.i60
  %dec.i40.i61 = add nsw i32 %shift.014.i34.i55, -1
  %cmp.not.i41.i62 = icmp eq i32 %dec.i40.i61, 0
  br i1 %cmp.not.i41.i62, label %for.inc.i42.i63.drm_fixp_msbset.exit44.i67_crit_edge, label %for.inc.i42.i63.for.body.i39.i60_crit_edge

for.inc.i42.i63.for.body.i39.i60_crit_edge:       ; preds = %for.inc.i42.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i39.i60

for.inc.i42.i63.drm_fixp_msbset.exit44.i67_crit_edge: ; preds = %for.inc.i42.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_msbset.exit44.i67

drm_fixp_msbset.exit44.i67:                       ; preds = %for.inc.i42.i63.drm_fixp_msbset.exit44.i67_crit_edge, %for.body.i39.i60.drm_fixp_msbset.exit44.i67_crit_edge
  %shift.0.lcssa.i43.i64 = phi i32 [ 0, %for.inc.i42.i63.drm_fixp_msbset.exit44.i67_crit_edge ], [ %shift.014.i34.i55, %for.body.i39.i60.drm_fixp_msbset.exit44.i67_crit_edge ]
  %add.i65 = add i32 %shift.0.lcssa.i43.i64, %shift.0.lcssa.i.i52
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i65)
  %cmp.i66 = icmp ugt i32 %add.i65, 61
  br i1 %cmp.i66, label %if.end.i80, label %if.end11.thread.i69

if.end11.thread.i69:                              ; preds = %drm_fixp_msbset.exit44.i67
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.i68 = mul i64 %add.i.neg, %b
  br label %if.then13.i92

if.end.i80:                                       ; preds = %drm_fixp_msbset.exit44.i67
  %sub.i70 = add i32 %add.i65, -61
  %shr.i71 = lshr i32 %sub.i70, 1
  %and.i72 = and i32 %sub.i70, 1
  %add2.i73 = add nuw nsw i32 %shr.i71, %and.i72
  %sh_prom.i74 = zext i32 %add2.i73 to i64
  %shr3.i75 = ashr i64 %b, %sh_prom.i74
  %sh_prom5.i76 = zext i32 %shr.i71 to i64
  %shr6.i77 = ashr i64 %add.i.neg, %sh_prom5.i76
  %mul.i78 = mul i64 %shr3.i75, %shr6.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i70)
  %cmp7.i79 = icmp ugt i32 %sub.i70, 32
  br i1 %cmp7.i79, label %if.then8.i84, label %if.end11.i86

if.then8.i84:                                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i81 = add i32 %add.i65, -93
  %sh_prom10.i82 = zext i32 %sub9.i81 to i64
  %shl.i83 = shl i64 %mul.i78, %sh_prom10.i82
  br label %drm_fixp_mul.exit94

if.end11.i86:                                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i70)
  %cmp12.not.i85 = icmp eq i32 %sub.i70, 32
  br i1 %cmp12.not.i85, label %if.end11.i86.drm_fixp_mul.exit94_crit_edge, label %if.end11.i86.if.then13.i92_crit_edge

if.end11.i86.if.then13.i92_crit_edge:             ; preds = %if.end11.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i92

if.end11.i86.drm_fixp_mul.exit94_crit_edge:       ; preds = %if.end11.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_fixp_mul.exit94

if.then13.i92:                                    ; preds = %if.end11.i86.if.then13.i92_crit_edge, %if.end11.thread.i69
  %shift.05056.i87 = phi i32 [ 0, %if.end11.thread.i69 ], [ %sub.i70, %if.end11.i86.if.then13.i92_crit_edge ]
  %mul5155.i88 = phi i64 [ %mul48.i68, %if.end11.thread.i69 ], [ %mul.i78, %if.end11.i86.if.then13.i92_crit_edge ]
  %sub14.i89 = sub nuw nsw i32 32, %shift.05056.i87
  %sh_prom15.i90 = zext i32 %sub14.i89 to i64
  %shr16.i91 = ashr i64 %mul5155.i88, %sh_prom15.i90
  br label %drm_fixp_mul.exit94

drm_fixp_mul.exit94:                              ; preds = %if.then13.i92, %if.end11.i86.drm_fixp_mul.exit94_crit_edge, %if.then8.i84
  %retval.0.i93 = phi i64 [ %shl.i83, %if.then8.i84 ], [ %shr16.i91, %if.then13.i92 ], [ %mul.i78, %if.end11.i86.drm_fixp_mul.exit94_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %retval.0.i93)
  %cmp20 = icmp sgt i64 %retval.0.i, %retval.0.i93
  %.38 = select i1 %cmp20, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %drm_fixp_mul.exit94, %if.then13, %if.else.cleanup_crit_edge, %drm_fixp_from_fraction.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 2, %drm_fixp_from_fraction.exit.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ %., %if.then13 ], [ %.38, %drm_fixp_mul.exit94 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !160, !161, !162, !164, !166}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 114, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dp_ctrl_push_idle._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dp_ctrl_push_idle._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 116, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1375, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1388, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1421, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1608, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1616, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1618, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1625, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1688, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1698, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1712, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1817, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1830, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1860, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1885, i32 4}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1892, i32 3}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1902, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1920, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1943, i32 3}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1953, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1970, i32 3}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1975, i32 3}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1996, i32 3}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 2000, i32 37}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 2002, i32 3}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dp_ctrl_get._entry, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @dp_ctrl_get._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 2010, i32 3}
!65 = !{ptr @dp_ctrl_get._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @dp_ctrl_get._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1526, i32 3}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1537, i32 3}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1545, i32 3}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1343, i32 3}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1345, i32 2}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1315, i32 2}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1320, i32 3}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1456, i32 3}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1465, i32 3}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1261, i32 3}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1266, i32 2}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1270, i32 3}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1275, i32 2}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 135, i32 3}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @dp_ctrl_config_ctrl.__UNIQUE_ID_ddebug335, !94, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!98 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1112, i32 4}
!101 = !{ptr @dp_ctrl_link_train_1._rs, !100, !"_rs", i1 false, i1 false}
!102 = !{ptr @__func__.dp_ctrl_link_train_1, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1121, i32 3}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1129, i32 2}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1050, i32 2}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1007, i32 2}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1016, i32 3}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1022, i32 3}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1034, i32 2}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1068, i32 3}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1154, i32 3}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1355, i32 45}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1360, i32 3}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1556, i32 2}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1561, i32 3}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 1597, i32 2}
!132 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 979, i32 2}
!136 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @dp_ctrl_setup_tr_unit.__UNIQUE_ID_ddebug336, !135, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!138 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 689, i32 3}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 724, i32 2}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 918, i32 2}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 920, i32 2}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 922, i32 2}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 924, i32 2}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 926, i32 2}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 928, i32 2}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 930, i32 2}
!157 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 371, i32 3}
!159 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @dp_panel_update_tu_timings._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @dp_panel_update_tu_timings._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/msm/dp/dp_ctrl.c", i32 992, i32 3}
!164 = !{ptr @init_completion.__key, !165, !"__key", i1 false, i1 false}
!165 = !{!"../include/linux/completion.h", i32 87, i32 2}
!166 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{!"auto-init"}
!177 = !{i8 0, i8 2}
!178 = !{i64 2148367452, i64 2148367457, i64 2148367470, i64 2148367514, i64 2148367548, i64 2148367569}
