; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_panel.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_panel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dp_panel = type { [16 x i8], [16 x i8], i32, i32, %struct.dp_link_info, %struct.drm_dp_desc, ptr, ptr, %struct.dp_display_mode, i8, i32, i32, i32, i32 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.dp_display_mode = type { %struct.drm_display_mode, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.96, ptr, i32, ptr, i8, i32 }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.96 = type { i32, ptr }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon }
%union.anon = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.dp_catalog = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_panel_in = type { ptr, ptr, ptr, ptr }
%struct.dp_panel_private = type { ptr, %struct.dp_panel, ptr, ptr, ptr, i8, i8 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read dpcd failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Illegal link rate=%d lane=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no downstream ports connected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panel edid read failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"read DPCD with updated AUX config\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DP panel not enabled, handle TPG on next on\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: calling catalog tpg_enable\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.dp_panel_tpg_config = private unnamed_addr constant [20 x i8] c"dp_panel_tpg_config\00", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"width=%d hporch= %d %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"height=%d vporch= %d %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SET NEW RESOLUTION:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%dx%d@%dfps\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"h_porches(back|front|width) = (%d|%d|%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"v_porches(back|front|width) = (%d|%d|%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pixel clock (KHz)=(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bpp = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"updated bpp = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpcd read failed, rlen=%zd\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"using EXTENDED_RECEIVER_CAPABILITY_FIELD\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"version: %d.%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link_rate=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lane_count=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ds port status failed, rlen=%zd\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to update edid property %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid block, no checksum\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 10, i64 20, i64 30]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 10, i64 20, i64 30]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 162, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 170, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 178, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 189, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 203, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 218, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 332, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 341, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 367, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 372, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 423, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 424, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 426, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 430, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 434, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 435, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 439, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 40, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 53, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 83, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 84, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 85, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 101, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 140, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [37 x i8] c"../drivers/gpu/drm/msm/dp/dp_panel.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 290, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_panel_read_sink_caps(ptr noundef %dp_panel, ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %count, align 4, !annotation !62
  %tobool.not = icmp eq ptr %dp_panel, null
  %tobool1.not = icmp eq ptr %connector, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @dp_panel_read_dpcd(ptr noundef nonnull %dp_panel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %call) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rate = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rate, align 4
  %call5 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %2) #4
  %conv = zext i8 %call5 to i32
  %3 = zext i8 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call5, label %if.end4.if.then12_crit_edge [
    i8 6, label %if.end4.lor.lhs.false7_crit_edge
    i8 10, label %if.end4.lor.lhs.false7_crit_edge115
    i8 20, label %if.end4.lor.lhs.false7_crit_edge116
    i8 30, label %if.end4.lor.lhs.false7_crit_edge117
  ]

if.end4.lor.lhs.false7_crit_edge117:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false7

if.end4.lor.lhs.false7_crit_edge116:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false7

if.end4.lor.lhs.false7_crit_edge115:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false7

if.end4.lor.lhs.false7_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false7

if.end4.if.then12_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

lor.lhs.false7:                                   ; preds = %if.end4.lor.lhs.false7_crit_edge, %if.end4.lor.lhs.false7_crit_edge115, %if.end4.lor.lhs.false7_crit_edge116, %if.end4.lor.lhs.false7_crit_edge117
  %num_lanes = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_lanes, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %5, label %lor.lhs.false7.if.then12_crit_edge [
    i32 1, label %lor.lhs.false7.lor.lhs.false10_crit_edge
    i32 2, label %lor.lhs.false7.lor.lhs.false10_crit_edge118
    i32 4, label %lor.lhs.false7.lor.lhs.false10_crit_edge119
  ]

lor.lhs.false7.lor.lhs.false10_crit_edge119:      ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false10

lor.lhs.false7.lor.lhs.false10_crit_edge118:      ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false10

lor.lhs.false7.lor.lhs.false10_crit_edge:         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false10

lor.lhs.false7.if.then12_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

lor.lhs.false10:                                  ; preds = %lor.lhs.false7.lor.lhs.false10_crit_edge, %lor.lhs.false7.lor.lhs.false10_crit_edge118, %lor.lhs.false7.lor.lhs.false10_crit_edge119
  %max_bw_code = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 13
  %7 = ptrtoint ptr %max_bw_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_bw_code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp = icmp ult i32 %8, %conv
  br i1 %cmp, label %lor.lhs.false10.if.then12_crit_edge, label %if.end17

lor.lhs.false10.if.then12_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false10.if.then12_crit_edge, %lor.lhs.false7.if.then12_crit_edge, %if.end4.if.then12_crit_edge
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate, align 4
  %num_lanes16 = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %num_lanes16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_lanes16, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %10, i32 noundef %12) #4
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false10
  %dfp_present = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 3
  %13 = ptrtoint ptr %dfp_present to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dfp_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %if.end17.if.end29_crit_edge, label %if.then19

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then19:                                        ; preds = %if.end17
  %aux = getelementptr i8, ptr %dp_panel, i32 228
  %15 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux, align 4
  %call20 = call i32 @drm_dp_dpcd_read(ptr noundef %16, i32 noundef 512, ptr noundef nonnull %count, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %if.then23, label %if.then19.if.end29_crit_edge

if.then19.if.end29_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then23:                                        ; preds = %if.then19
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  %and = lshr i32 %18, 1
  %19 = and i32 %and, 64
  %and24 = and i32 %18, 63
  %or = or i32 %19, %and24
  store i32 %or, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool25.not = icmp eq i32 %or, 0
  br i1 %tobool25.not, label %if.then26, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #4
  %link = getelementptr i8, ptr %dp_panel, i32 232
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link, align 4
  %sink_count = getelementptr inbounds %struct.dp_link, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %sink_count to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %sink_count, align 1
  br label %cleanup

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.then19.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %edid = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 6
  %23 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %edid, align 4
  call void @kfree(ptr noundef %24) #4
  %25 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %edid, align 4
  %aux31 = getelementptr i8, ptr %dp_panel, i32 228
  %26 = ptrtoint ptr %aux31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aux31, align 4
  %ddc = getelementptr inbounds %struct.drm_dp_aux, ptr %27, i32 0, i32 1
  %call32 = call ptr @drm_get_edid(ptr noundef nonnull %connector, ptr noundef %ddc) #4
  %28 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call32, ptr %edid, align 4
  %tobool35.not = icmp eq ptr %call32, null
  br i1 %tobool35.not, label %if.then36, label %if.end29.if.end48_crit_edge

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then36:                                        ; preds = %if.end29
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  %catalog = getelementptr i8, ptr %dp_panel, i32 236
  %29 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %catalog, align 4
  %call37 = call i32 @dp_catalog_link_is_connected(ptr noundef %30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.cleanup_crit_edge, label %if.end40

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.then36
  %31 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connector, align 8
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #4
  %call41 = call i32 @drm_add_modes_noedid(ptr noundef nonnull %connector, i32 noundef 640, i32 noundef 480) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  call void @drm_set_preferred_mode(ptr noundef nonnull %connector, i32 noundef 640, i32 noundef 480) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  %33 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %connector, align 8
  %mode_config46 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %mode_config46) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.end29.if.end48_crit_edge
  %aux_cfg_update_done = getelementptr i8, ptr %dp_panel, i32 241
  %35 = ptrtoint ptr %aux_cfg_update_done to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %aux_cfg_update_done, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool49.not = icmp eq i8 %36, 0
  br i1 %tobool49.not, label %if.end48.cleanup_crit_edge, label %if.then50

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then50:                                        ; preds = %if.end48
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5) #4
  %call51 = call fastcc i32 @dp_panel_read_dpcd(ptr noundef nonnull %dp_panel)
  %37 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate, align 4
  %call54 = call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %38) #4
  %conv55 = zext i8 %call54 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool56.not = icmp eq i32 %call51, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %if.then50.if.then67_crit_edge

if.then50.if.then67_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

lor.lhs.false57:                                  ; preds = %if.then50
  %39 = zext i8 %call54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %call54, label %lor.lhs.false57.if.then67_crit_edge [
    i8 6, label %lor.lhs.false57.lor.lhs.false59_crit_edge
    i8 10, label %lor.lhs.false57.lor.lhs.false59_crit_edge120
    i8 20, label %lor.lhs.false57.lor.lhs.false59_crit_edge121
    i8 30, label %lor.lhs.false57.lor.lhs.false59_crit_edge122
  ]

lor.lhs.false57.lor.lhs.false59_crit_edge122:     ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false59

lor.lhs.false57.lor.lhs.false59_crit_edge121:     ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false59

lor.lhs.false57.lor.lhs.false59_crit_edge120:     ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false59

lor.lhs.false57.lor.lhs.false59_crit_edge:        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false59

lor.lhs.false57.if.then67_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

lor.lhs.false59:                                  ; preds = %lor.lhs.false57.lor.lhs.false59_crit_edge, %lor.lhs.false57.lor.lhs.false59_crit_edge120, %lor.lhs.false57.lor.lhs.false59_crit_edge121, %lor.lhs.false57.lor.lhs.false59_crit_edge122
  %40 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_lanes, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %41, label %lor.lhs.false59.if.then67_crit_edge [
    i32 1, label %lor.lhs.false59.lor.lhs.false63_crit_edge
    i32 2, label %lor.lhs.false59.lor.lhs.false63_crit_edge123
    i32 4, label %lor.lhs.false59.lor.lhs.false63_crit_edge124
  ]

lor.lhs.false59.lor.lhs.false63_crit_edge124:     ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false63

lor.lhs.false59.lor.lhs.false63_crit_edge123:     ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false63

lor.lhs.false59.lor.lhs.false63_crit_edge:        ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false63

lor.lhs.false59.if.then67_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

lor.lhs.false63:                                  ; preds = %lor.lhs.false59.lor.lhs.false63_crit_edge, %lor.lhs.false59.lor.lhs.false63_crit_edge123, %lor.lhs.false59.lor.lhs.false63_crit_edge124
  %43 = ptrtoint ptr %max_bw_code to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_bw_code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv55)
  %cmp65 = icmp ult i32 %44, %conv55
  br i1 %cmp65, label %lor.lhs.false63.if.then67_crit_edge, label %if.end68

lor.lhs.false63.if.then67_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false63.if.then67_crit_edge, %lor.lhs.false59.if.then67_crit_edge, %lor.lhs.false57.if.then67_crit_edge, %if.then50.if.then67_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %call51) #4
  br label %cleanup

if.end68:                                         ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %aux_cfg_update_done to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %aux_cfg_update_done, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then67, %if.end48.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then26, %if.then12, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then3 ], [ -22, %if.then12 ], [ %call51, %if.then67 ], [ -22, %if.then ], [ 0, %if.end68 ], [ 0, %if.end48.cleanup_crit_edge ], [ -107, %if.then26 ], [ -110, %if.then36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_panel_read_dpcd(ptr noundef %dp_panel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %link_info2 = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4
  %aux = getelementptr i8, ptr %dp_panel, i32 228
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %call = tail call i32 @drm_dp_dpcd_read(ptr noundef %1, i32 noundef 0, ptr noundef %dp_panel, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp = icmp slt i32 %call, 16
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp3 = icmp eq i32 %call, -110
  %. = select i1 %cmp3, i32 -110, i32 -22
  br label %end

if.end5:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %dp_panel, i32 14
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %if.end5.if.end7_crit_edge, label %if.then6

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.18) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5.if.end7_crit_edge
  %offset.0 = phi i32 [ 8704, %if.then6 ], [ 0, %if.end5.if.end7_crit_edge ]
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 4
  %call9 = tail call i32 @drm_dp_dpcd_read(ptr noundef %5, i32 noundef %offset.0, ptr noundef %dp_panel, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 16
  br i1 %cmp10, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %call9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call9)
  %cmp13 = icmp eq i32 %call9, -110
  %.121 = select i1 %cmp13, i32 -110, i32 -22
  br label %end

if.end18:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %dp_panel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_panel, align 1
  %8 = ptrtoint ptr %link_info2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %link_info2, align 4
  %9 = lshr i8 %7, 4
  %10 = and i8 %7, 15
  %arrayidx28 = getelementptr i8, ptr %dp_panel, i32 1
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx28, align 1
  %call29 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %12) #4
  %rate = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call29, ptr %rate, align 4
  %arrayidx30 = getelementptr i8, ptr %dp_panel, i32 2
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx30, align 1
  %16 = and i8 %15, 31
  %and32 = zext i8 %16 to i32
  %num_lanes = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4, i32 2
  %max_dp_lanes = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 12
  %17 = ptrtoint ptr %max_dp_lanes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_dp_lanes, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %and32)
  %20 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_lanes, align 4
  %call41 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext 20) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %call41)
  %cmp42.not = icmp ult i32 %call29, %call41
  br i1 %cmp42.not, label %if.end18.if.end47_crit_edge, label %if.then44

if.end18.if.end47_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then44:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %call45 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext 20) #4
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call45, ptr %rate, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end18.if.end47_crit_edge
  %conv48 = zext i8 %9 to i32
  %conv49 = zext i8 %10 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %conv48, i32 noundef %conv49) #4
  %22 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %23) #4
  %24 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_lanes, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.21, i32 noundef %25) #4
  %26 = ptrtoint ptr %dp_panel to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_panel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %27)
  %cmp.i = icmp ugt i8 %27, 16
  br i1 %cmp.i, label %drm_dp_enhanced_frame_cap.exit, label %if.end54.thread

drm_dp_enhanced_frame_cap.exit:                   ; preds = %if.end47
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i = icmp slt i8 %29, 0
  br i1 %tobool.i, label %if.then53, label %drm_dp_enhanced_frame_cap.exit.if.end54_crit_edge

drm_dp_enhanced_frame_cap.exit.if.end54_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then53:                                        ; preds = %drm_dp_enhanced_frame_cap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %capabilities = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %capabilities, align 4
  %or = or i32 %31, 1
  store i32 %or, ptr %capabilities, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %drm_dp_enhanced_frame_cap.exit.if.end54_crit_edge
  %arrayidx55 = getelementptr i8, ptr %dp_panel, i32 5
  %32 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx55, align 1
  %dfp_present = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 3
  %34 = and i8 %33, 1
  %and58 = zext i8 %34 to i32
  %35 = ptrtoint ptr %dfp_present to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and58, ptr %dfp_present, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool60.not = icmp eq i8 %34, 0
  br i1 %tobool60.not, label %if.end54.end_crit_edge, label %if.then65.critedge

if.end54.end_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %end

if.end54.thread:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx55122 = getelementptr i8, ptr %dp_panel, i32 5
  %36 = ptrtoint ptr %arrayidx55122 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx55122, align 1
  %dfp_present123 = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 3
  %38 = and i8 %37, 1
  %and58124 = zext i8 %38 to i32
  %39 = ptrtoint ptr %dfp_present123 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and58124, ptr %dfp_present123, align 4
  br label %end

if.then65.critedge:                               ; preds = %if.end54
  %arrayidx66 = getelementptr i8, ptr %dp_panel, i32 7
  %40 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx66, align 1
  %ds_port_cnt = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 2
  %42 = and i8 %41, 15
  %and69 = zext i8 %42 to i32
  %43 = ptrtoint ptr %ds_port_cnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and69, ptr %ds_port_cnt, align 4
  %44 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aux, align 4
  %ds_cap_info = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 1
  %call72 = tail call i32 @drm_dp_dpcd_read(ptr noundef %45, i32 noundef 128, ptr noundef %ds_cap_info, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call72)
  %cmp73 = icmp ult i32 %call72, 16
  br i1 %cmp73, label %if.then75, label %if.then65.critedge.end_crit_edge

if.then65.critedge.end_crit_edge:                 ; preds = %if.then65.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %end

if.then75:                                        ; preds = %if.then65.critedge
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %call72) #4
  br label %end

end:                                              ; preds = %if.then75, %if.then65.critedge.end_crit_edge, %if.end54.thread, %if.end54.end_crit_edge, %if.then12, %if.then
  %rc.0 = phi i32 [ -22, %if.then75 ], [ 0, %if.then65.critedge.end_crit_edge ], [ 0, %if.end54.end_crit_edge ], [ %., %if.then ], [ %.121, %if.then12 ], [ 0, %if.end54.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_link_is_connected(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_panel_get_mode_bpp(ptr noundef readonly %dp_panel, i32 noundef %mode_edid_bpp, i32 noundef %mode_pclk_khz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_panel, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_edid_bpp)
  %tobool1.not = icmp eq i32 %mode_edid_bpp, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_pclk_khz)
  %tobool3.not = icmp eq i32 %mode_pclk_khz, 0
  %or.cond14 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond14, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %video_test = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 9
  %0 = ptrtoint ptr %video_test to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %video_test, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not = icmp eq i8 %1, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %link = getelementptr i8, ptr %dp_panel, i32 232
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %test_bit_depth = getelementptr inbounds %struct.dp_link, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %test_bit_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %test_bit_depth, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %sw.default.i [
    i32 0, label %if.then5.cleanup_crit_edge
    i32 32, label %sw.bb1.i
    i32 64, label %sw.bb2.i
  ]

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %num_lanes.i = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %num_lanes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_lanes.i, align 4
  %rate.i = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate.i, align 4
  %mul.i = shl i32 %8, 3
  %mul2.i = mul i32 %mul.i, %10
  %11 = tail call i32 @llvm.umin.i32(i32 %mode_edid_bpp, i32 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %11)
  %cmp3.i = icmp ugt i32 %11, 18
  %mul4.i = mul i32 %11, %mode_pclk_khz
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.i, i32 %mul2.i)
  %cmp5.not.i = icmp ugt i32 %mul4.i, %mul2.i
  %or.cond.i = select i1 %cmp3.i, i1 %cmp5.not.i, i1 false
  br i1 %or.cond.i, label %while.cond.i.1, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.i.1:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = add nsw i32 %11, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i)
  %cmp3.i.1 = icmp ugt i32 %sub.i, 18
  %mul4.i.1 = mul i32 %sub.i, %mode_pclk_khz
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.i.1, i32 %mul2.i)
  %cmp5.not.i.1 = icmp ugt i32 %mul4.i.1, %mul2.i
  %or.cond.i.1 = select i1 %cmp3.i.1, i1 %cmp5.not.i.1, i1 false
  %sub.i.1 = add nsw i32 %11, -12
  %spec.select = select i1 %or.cond.i.1, i32 %sub.i.1, i32 %sub.i
  br label %cleanup

cleanup:                                          ; preds = %while.cond.i.1, %if.else.cleanup_crit_edge, %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %sw.default.i ], [ 30, %sw.bb2.i ], [ 24, %sw.bb1.i ], [ 18, %if.then5.cleanup_crit_edge ], [ %11, %if.else.cleanup_crit_edge ], [ %spec.select, %while.cond.i.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_panel_get_modes(ptr noundef readonly %dp_panel, ptr noundef %connector, ptr nocapture noundef readnone %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_panel, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %return

if.end:                                           ; preds = %entry
  %edid = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 6
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.then.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %call.i) #4
  br label %return

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %1) #4
  br label %return

return:                                           ; preds = %if.end.i, %if.then2.i, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end.return_crit_edge ], [ %call.i, %if.then2.i ], [ %call3.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_panel_handle_sink_request(ptr noundef readonly %dp_panel) local_unnamed_addr #0 align 64 {
entry:
  %is_edid_corrupt.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_panel, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr i8, ptr %dp_panel, i32 232
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %edid = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 6
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_edid_corrupt.i) #4
  %6 = ptrtoint ptr %is_edid_corrupt.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_edid_corrupt.i, align 1
  %extensions.i = getelementptr inbounds %struct.edid, ptr %5, i32 0, i32 26
  %7 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %extensions.i, align 1
  %conv.i = zext i8 %8 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %call.i = call zeroext i1 @drm_edid_block_valid(ptr noundef %add.ptr.i, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull %is_edid_corrupt.i) #4
  %9 = ptrtoint ptr %is_edid_corrupt.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_edid_corrupt.i, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %checksum.i = getelementptr inbounds %struct.edid, ptr %add.ptr.i, i32 0, i32 27
  %11 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %checksum.i, align 1
  br label %dp_panel_get_edid_checksum.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #4
  br label %dp_panel_get_edid_checksum.exit

dp_panel_get_edid_checksum.exit:                  ; preds = %if.end3.i, %if.then2.i
  %retval.0.i = phi i8 [ 0, %if.end3.i ], [ %12, %if.then2.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_edid_corrupt.i) #4
  br label %if.end6

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %connector = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 7
  %13 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connector, align 4
  %real_edid_checksum = getelementptr inbounds %struct.drm_connector, ptr %14, i32 0, i32 50
  %15 = ptrtoint ptr %real_edid_checksum to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %real_edid_checksum, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.else, %dp_panel_get_edid_checksum.exit
  %checksum.0 = phi i8 [ %retval.0.i, %dp_panel_get_edid_checksum.exit ], [ %16, %if.else ]
  %17 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link, align 4
  %call8 = call zeroext i1 @dp_link_send_edid_checksum(ptr noundef %18, i8 noundef zeroext %checksum.0) #4
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link, align 4
  %call10 = call zeroext i1 @dp_link_send_test_response(ptr noundef %20) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_link_send_edid_checksum(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_link_send_test_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_panel_tpg_config(ptr noundef %dp_panel, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_panel, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %catalog1 = getelementptr i8, ptr %dp_panel, i32 236
  %0 = ptrtoint ptr %catalog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog1, align 4
  %panel_on = getelementptr i8, ptr %dp_panel, i32 240
  %2 = ptrtoint ptr %panel_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %panel_on, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.6) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  br i1 %enable, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dp_catalog_panel_tpg_disable(ptr noundef %1) #4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dp_panel_tpg_config) #4
  %dp_mode = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8
  tail call void @dp_catalog_panel_tpg_enable(ptr noundef %1, ptr noundef %dp_mode) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_panel_tpg_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_panel_tpg_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_panel_dump_regs(ptr nocapture noundef readonly %dp_panel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %catalog1 = getelementptr i8, ptr %dp_panel, i32 236
  %0 = ptrtoint ptr %catalog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog1, align 4
  tail call void @dp_catalog_dump_regs(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_dump_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_panel_timing_cfg(ptr nocapture noundef %dp_panel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %catalog1 = getelementptr i8, ptr %dp_panel, i32 236
  %0 = ptrtoint ptr %catalog1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catalog1, align 4
  %hdisplay = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %htotal = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 4
  %4 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %htotal, align 2
  %conv4 = zext i16 %5 to i32
  %hsync_end = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 3
  %6 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hsync_end, align 4
  %conv5 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv4, %conv5
  %hsync_start = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_start, align 2
  %conv6 = zext i16 %9 to i32
  %sub9 = sub nsw i32 %conv6, %conv
  %sub14 = sub nsw i32 %conv5, %conv6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %sub, i32 noundef %sub9, i32 noundef %sub14) #4
  %vdisplay = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %conv15 = zext i16 %11 to i32
  %vtotal = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 9
  %12 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vtotal, align 4
  %conv16 = zext i16 %13 to i32
  %vsync_end = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 8
  %14 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsync_end, align 2
  %conv17 = zext i16 %15 to i32
  %sub18 = sub nsw i32 %conv16, %conv17
  %vsync_start = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 7
  %16 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsync_start, align 4
  %conv19 = zext i16 %17 to i32
  %sub22 = sub nsw i32 %conv19, %conv15
  %sub27 = sub nsw i32 %conv17, %conv19
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %conv15, i32 noundef %sub18, i32 noundef %sub22, i32 noundef %sub27) #4
  %18 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %htotal, align 2
  %conv29 = zext i16 %19 to i32
  %20 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vtotal, align 4
  %conv31 = zext i16 %21 to i32
  %shl = shl nuw i32 %conv31, 16
  %or = or i32 %shl, %conv29
  %total = getelementptr inbounds %struct.dp_catalog, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %total, align 4
  %23 = load i16, ptr %vtotal, align 4
  %conv33 = zext i16 %23 to i32
  %24 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_start, align 4
  %conv35 = zext i16 %25 to i32
  %sub36 = sub nsw i32 %conv33, %conv35
  %shl37 = shl i32 %sub36, 16
  %26 = load i16, ptr %htotal, align 2
  %conv39 = zext i16 %26 to i32
  %27 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hsync_start, align 2
  %conv41 = zext i16 %28 to i32
  %sub42 = sub nsw i32 %conv39, %conv41
  %or43 = or i32 %sub42, %shl37
  %sync_start = getelementptr inbounds %struct.dp_catalog, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %sync_start to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or43, ptr %sync_start, align 4
  %30 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsync_end, align 2
  %conv45 = zext i16 %31 to i32
  %32 = load i16, ptr %vsync_start, align 4
  %conv47 = zext i16 %32 to i32
  %sub48 = sub nsw i32 %conv45, %conv47
  %shl49 = shl i32 %sub48, 16
  %v_active_low = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 4
  %33 = ptrtoint ptr %v_active_low to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %v_active_low, align 4
  %shl52 = shl i32 %34, 31
  %or53 = or i32 %shl49, %shl52
  %35 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hsync_end, align 4
  %conv55 = zext i16 %36 to i32
  %37 = load i16, ptr %hsync_start, align 2
  %conv57 = zext i16 %37 to i32
  %sub58 = sub nsw i32 %conv55, %conv57
  %or59 = or i32 %or53, %sub58
  %h_active_low = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 3
  %38 = ptrtoint ptr %h_active_low to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %h_active_low, align 4
  %shl62 = shl i32 %39, 15
  %or63 = or i32 %or59, %shl62
  %width_blanking = getelementptr inbounds %struct.dp_catalog, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %width_blanking to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or63, ptr %width_blanking, align 4
  %41 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vdisplay, align 2
  %conv65 = zext i16 %42 to i32
  %shl66 = shl nuw i32 %conv65, 16
  %43 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hdisplay, align 4
  %conv68 = zext i16 %44 to i32
  %or69 = or i32 %shl66, %conv68
  %dp_active = getelementptr inbounds %struct.dp_catalog, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %dp_active to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or69, ptr %dp_active, align 4
  %call = tail call i32 @dp_catalog_panel_timing_cfg(ptr noundef %1) #4
  %panel_on = getelementptr i8, ptr %dp_panel, i32 240
  %46 = ptrtoint ptr %panel_on to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %panel_on, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_panel_timing_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_panel_init_panel_info(ptr noundef %dp_panel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_mode = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10) #4
  %hdisplay = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %1 to i32
  %vdisplay = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 6
  %2 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vdisplay, align 2
  %conv2 = zext i16 %3 to i32
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %dp_mode) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv2, i32 noundef %call) #4
  %htotal = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 4
  %4 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %htotal, align 2
  %conv3 = zext i16 %5 to i32
  %hsync_end = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 3
  %6 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hsync_end, align 4
  %conv4 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv3, %conv4
  %hsync_start = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_start, align 2
  %conv5 = zext i16 %9 to i32
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  %conv7 = zext i16 %11 to i32
  %sub8 = sub nsw i32 %conv5, %conv7
  %sub13 = sub nsw i32 %conv4, %conv5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %sub, i32 noundef %sub8, i32 noundef %sub13) #4
  %vtotal = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 9
  %12 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vtotal, align 4
  %conv14 = zext i16 %13 to i32
  %vsync_end = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 8
  %14 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsync_end, align 2
  %conv15 = zext i16 %15 to i32
  %sub16 = sub nsw i32 %conv14, %conv15
  %vsync_start = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 0, i32 7
  %16 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsync_start, align 4
  %conv17 = zext i16 %17 to i32
  %18 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdisplay, align 2
  %conv19 = zext i16 %19 to i32
  %sub20 = sub nsw i32 %conv17, %conv19
  %sub25 = sub nsw i32 %conv15, %conv17
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %sub16, i32 noundef %sub20, i32 noundef %sub25) #4
  %20 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dp_mode, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %21) #4
  %bpp = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bpp, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %23) #4
  %24 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bpp, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 30)
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 18)
  %28 = ptrtoint ptr %bpp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %bpp, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %27) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_panel_get(ptr nocapture noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %catalog = getelementptr inbounds %struct.dp_panel_in, ptr %in, i32 0, i32 3
  %2 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %catalog, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %aux = getelementptr inbounds %struct.dp_panel_in, ptr %in, i32 0, i32 1
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.if.then_crit_edge, label %lor.lhs.false4

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %link = getelementptr inbounds %struct.dp_panel_in, ptr %in, i32 0, i32 2
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false4.if.then_crit_edge, label %if.end

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %1, i32 noundef 248, i32 noundef 3520) #4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call.i, align 4
  %11 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aux, align 4
  %aux15 = getelementptr inbounds %struct.dp_panel_private, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %aux15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %aux15, align 4
  %14 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %catalog, align 4
  %catalog17 = getelementptr inbounds %struct.dp_panel_private, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %catalog17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %catalog17, align 4
  %17 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link, align 4
  %link19 = getelementptr inbounds %struct.dp_panel_private, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %link19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %link19, align 4
  %dp_panel20 = getelementptr inbounds %struct.dp_panel_private, ptr %call.i, i32 0, i32 1
  %max_bw_code = getelementptr inbounds %struct.dp_panel_private, ptr %call.i, i32 0, i32 1, i32 13
  %20 = ptrtoint ptr %max_bw_code to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 30, ptr %max_bw_code, align 4
  %aux_cfg_update_done = getelementptr inbounds %struct.dp_panel_private, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %aux_cfg_update_done to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %aux_cfg_update_done, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %dp_panel20, %if.end11 ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_panel_put(ptr noundef readonly %dp_panel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_panel, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %edid = getelementptr inbounds %struct.dp_panel, ptr %dp_panel, i32 0, i32 6
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid, align 4
  tail call void @kfree(ptr noundef %1) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_block_valid(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 162, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 170, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 178, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 189, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 203, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 218, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 332, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 341, i32 2}
!16 = !{ptr @__func__.dp_panel_tpg_config, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 367, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 372, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 423, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 424, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 426, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 430, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 434, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 435, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 439, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 40, i32 3}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 53, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 83, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 84, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 85, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 101, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 140, i32 4}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 277, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/dp/dp_panel.c", i32 290, i32 2}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i8 0, i8 2}
