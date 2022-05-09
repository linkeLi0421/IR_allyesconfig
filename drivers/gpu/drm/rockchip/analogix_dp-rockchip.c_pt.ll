; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rockchip_dp_chip_data = type { i32, i32, i32, i32 }
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
%struct.rockchip_dp_device = type { ptr, ptr, %struct.drm_encoder, %struct.drm_display_mode, ptr, ptr, ptr, ptr, ptr, ptr, %struct.analogix_dp_plat_data }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.analogix_dp_plat_data = type { i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rockchip-dp\00", [20 x i8] zeroinitializer }, align 32
@rockchip_dp_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-dp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_dp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-edp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_edp }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rockchip_dp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_dp_suspend, ptr @rockchip_dp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_dp_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_dp_probe, ptr @rockchip_dp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_dp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_dp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@rockchip_dp_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @rockchip_dp_bind, ptr @rockchip_dp_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* failed to enable pclk %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Swapping display color format from YUV to RGB\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to get rockchip,grf property\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"grf\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* failed to get grf clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to get pclk property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dp\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to get dp reset control\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create drm encoder\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"possible_crtcs = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize encoder with drm\0A\00", [57 x i8] zeroinitializer }, align 32
@rockchip_dp_encoder_helper_funcs = internal global { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @rockchip_dp_drm_encoder_mode_fixup, ptr null, ptr null, ptr @rockchip_dp_drm_encoder_mode_set, ptr null, ptr null, ptr @rockchip_dp_drm_encoder_disable, ptr @rockchip_dp_drm_encoder_enable, ptr null, ptr null, ptr @rockchip_dp_drm_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* line flag irq timed out\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vop %s output to dp\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LIT\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BIG\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to enable grfclk %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Could not write to GRF: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rk3288_dp = internal constant { %struct.rockchip_dp_chip_data, [16 x i8] } { %struct.rockchip_dp_chip_data { i32 604, i32 2097152, i32 2097184, i32 1 }, [16 x i8] zeroinitializer }, align 32
@rk3399_edp = internal constant { %struct.rockchip_dp_chip_data, [16 x i8] } { %struct.rockchip_dp_chip_data { i32 25168, i32 2097152, i32 2097184, i32 2 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 468, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"rockchip_dp_dt_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 457, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"rockchip_dp_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 436, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"rockchip_dp_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 464, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"rockchip_dp_component_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 357, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 92, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 123, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 267, i32 48 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 269, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 273, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 279, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 283, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 285, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 289, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 291, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 332, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 307, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 312, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [33 x i8] c"rockchip_dp_encoder_helper_funcs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 254, i32 40 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 228, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 193, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 197, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 203, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"rk3288_dp\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 450, i32 43 }
@___asan_gen_.103 = private unnamed_addr constant [11 x i8] c"rk3399_edp\00", align 1
@___asan_gen_.104 = private constant [51 x i8] c"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 443, i32 43 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @rockchip_dp_dt_ids, ptr @rockchip_dp_pm_ops, ptr @rockchip_dp_driver, ptr @rockchip_dp_component_ops, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rockchip_dp_encoder_helper_funcs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rk3288_dp, ptr @rk3399_edp], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dp_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dp_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_dp_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_dp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_edp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #5
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %panel, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call2 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #5
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %dev9 = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev9, align 4
  %adp = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %adp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -19 to ptr), ptr %adp, align 4
  %data = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %data, align 4
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %plat_data = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 10
  %panel11 = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %panel11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %panel11, align 4
  %chip_type = getelementptr inbounds %struct.rockchip_dp_chip_data, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip_type, align 4
  %11 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %plat_data, align 4
  %power_on_start = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 10, i32 5
  %12 = ptrtoint ptr %power_on_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rockchip_dp_poweron_start, ptr %power_on_start, align 4
  %power_off = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 10, i32 7
  %13 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rockchip_dp_powerdown, ptr %power_off, align 4
  %get_modes = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 10, i32 9
  %14 = ptrtoint ptr %get_modes to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rockchip_dp_get_modes, ptr %get_modes, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call.i60 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %16, ptr noundef nonnull @.str.5) #5
  %grf.i = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %grf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i60, ptr %grf.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end8.rockchip_dp_of_probe.exit_crit_edge, label %if.end.i

if.end8.rockchip_dp_of_probe.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_dp_of_probe.exit

if.end.i:                                         ; preds = %if.end8
  %call6.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  %grfclk.i = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %grfclk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6.i, ptr %grfclk.i, align 4
  %magicptr.i = ptrtoint ptr %call6.i to i32
  %19 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %if.else15.i [
    i32 -2, label %if.then9.i
    i32 -517, label %if.end.i.cleanup_crit_edge
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %grfclk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %grfclk.i, align 4
  br label %if.end23.i

if.else15.i:                                      ; preds = %if.end.i
  %cmp.i61.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61.i, label %if.else15.i.rockchip_dp_of_probe.exit_crit_edge, label %if.else15.i.if.end23.i_crit_edge

if.else15.i.if.end23.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.else15.i.rockchip_dp_of_probe.exit_crit_edge:  ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_dp_of_probe.exit

if.end23.i:                                       ; preds = %if.else15.i.if.end23.i_crit_edge, %if.then9.i
  %call24.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #5
  %pclk.i = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %pclk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call24.i, ptr %pclk.i, align 4
  %cmp.i62.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.end23.i.rockchip_dp_of_probe.exit_crit_edge, label %if.end30.i

if.end23.i.rockchip_dp_of_probe.exit_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_dp_of_probe.exit

if.end30.i:                                       ; preds = %if.end23.i
  %call.i.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %rst.i = getelementptr inbounds %struct.rockchip_dp_device, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %rst.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i.i, ptr %rst.i, align 4
  %cmp.i63.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.end30.i.rockchip_dp_of_probe.exit_crit_edge, label %if.end30.i.if.end20_crit_edge

if.end30.i.if.end20_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end30.i.rockchip_dp_of_probe.exit_crit_edge:   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_dp_of_probe.exit

rockchip_dp_of_probe.exit:                        ; preds = %if.end30.i.rockchip_dp_of_probe.exit_crit_edge, %if.end23.i.rockchip_dp_of_probe.exit_crit_edge, %if.else15.i.rockchip_dp_of_probe.exit_crit_edge, %if.end8.rockchip_dp_of_probe.exit_crit_edge
  %.str.12.sink.i = phi ptr [ @.str.6, %if.end8.rockchip_dp_of_probe.exit_crit_edge ], [ @.str.8, %if.else15.i.rockchip_dp_of_probe.exit_crit_edge ], [ @.str.10, %if.end23.i.rockchip_dp_of_probe.exit_crit_edge ], [ @.str.12, %if.end30.i.rockchip_dp_of_probe.exit_crit_edge ]
  %rst.sink.i = phi ptr [ %grf.i, %if.end8.rockchip_dp_of_probe.exit_crit_edge ], [ %grfclk.i, %if.else15.i.rockchip_dp_of_probe.exit_crit_edge ], [ %pclk.i, %if.end23.i.rockchip_dp_of_probe.exit_crit_edge ], [ %rst.i, %if.end30.i.rockchip_dp_of_probe.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.12.sink.i) #5
  %23 = ptrtoint ptr %rst.sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rst.sink.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %cmp18 = icmp slt ptr %24, null
  br i1 %cmp18, label %rockchip_dp_of_probe.exit.cleanup_crit_edge, label %rockchip_dp_of_probe.exit.if.end20_crit_edge

rockchip_dp_of_probe.exit.if.end20_crit_edge:     ; preds = %rockchip_dp_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

rockchip_dp_of_probe.exit.cleanup_crit_edge:      ; preds = %rockchip_dp_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %rockchip_dp_of_probe.exit.if.end20_crit_edge, %if.end30.i.if.end20_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call22 = call ptr @analogix_dp_probe(ptr noundef %dev1, ptr noundef %plat_data) #5
  %27 = ptrtoint ptr %adp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call22, ptr %adp, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @rockchip_dp_component_ops) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then26, %rockchip_dp_of_probe.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then26 ], [ %call30, %if.end29 ], [ -19, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %25, %rockchip_dp_of_probe.exit.cleanup_crit_edge ], [ %magicptr.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @rockchip_dp_component_ops) #5
  %adp = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %adp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adp, align 4
  tail call void @analogix_dp_remove(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_poweron_start(ptr nocapture noundef readonly %plat_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr i8, ptr %plat_data, i32 -24
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %1) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %plat_data, i32 -212
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i) #5
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %rst.i = getelementptr i8, ptr %plat_data, i32 -12
  %4 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst.i, align 4
  %call.i18 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %6 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst.i, align 4
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_powerdown(ptr nocapture noundef readonly %plat_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk = getelementptr i8, ptr %plat_data, i32 -24
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_get_modes(ptr nocapture noundef readnone %plat_data, ptr nocapture noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %color_formats = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 5
  %0 = ptrtoint ptr %color_formats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %color_formats, align 4
  %and = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #5
  %2 = ptrtoint ptr %color_formats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color_formats, align 4
  %and2 = and i32 %3, -8
  %or = or i32 %and2, 1
  store i32 %or, ptr %color_formats, align 4
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %4 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %bpc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @analogix_dp_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %1, align 4
  %encoder1.i = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 2
  %dev3.i = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %6) #5
  %possible_crtcs.i = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %possible_crtcs.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %call.i) #5
  %call5.i = tail call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder1.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %helper_private.i.i = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 2, i32 11
  %8 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rockchip_dp_encoder_helper_funcs, ptr %helper_private.i.i, align 4
  %encoder3 = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %encoder3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %encoder1.i, ptr %encoder3, align 4
  %adp = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %adp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adp, align 4
  %call4 = tail call i32 @analogix_dp_bind(ptr noundef %11, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %err_cleanup_encoder

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_cleanup_encoder:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %funcs = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 2, i32 10
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %destroy = getelementptr inbounds %struct.drm_encoder_funcs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %destroy, align 4
  tail call void %15(ptr noundef %encoder1.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup_encoder, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5.i, %if.then ], [ %call4, %err_cleanup_encoder ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_dp_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adp = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %adp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adp, align 4
  tail call void @analogix_dp_unbind(ptr noundef %3) #5
  %encoder = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 2
  %funcs = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 2, i32 10
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %destroy = getelementptr inbounds %struct.drm_encoder_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy, align 4
  tail call void %7(ptr noundef %encoder) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_dp_drm_encoder_mode_fixup(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rockchip_dp_drm_encoder_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef %mode, ptr nocapture noundef %adjusted) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_dp_drm_encoder_disable(ptr noundef %encoder, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %state, ptr noundef %encoder) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %index.i.i.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i.i, align 4
  %num_connector.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i.i, label %drm_atomic_get_new_connector_state.exit.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

drm_atomic_get_new_connector_state.exit.i:        ; preds = %if.end.i
  %connectors.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i.i, align 4
  %new_state.i.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %drm_atomic_get_new_connector_state.exit.i.cleanup_crit_edge, label %rockchip_dp_drm_get_new_crtc.exit

drm_atomic_get_new_connector_state.exit.i.cleanup_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rockchip_dp_drm_get_new_crtc.exit:                ; preds = %drm_atomic_get_new_connector_state.exit.i
  %crtc.i = getelementptr inbounds %struct.drm_connector_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %rockchip_dp_drm_get_new_crtc.exit.cleanup_crit_edge, label %if.end

rockchip_dp_drm_get_new_crtc.exit.cleanup_crit_edge: ; preds = %rockchip_dp_drm_get_new_crtc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %rockchip_dp_drm_get_new_crtc.exit
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %13, i32 3
  %14 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %new_state.i, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %self_refresh_active to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %self_refresh_active, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call i32 @rockchip_drm_wait_vact_end(ptr noundef nonnull %9, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %encoder, i32 -4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rockchip_dp_drm_get_new_crtc.exit.cleanup_crit_edge, %drm_atomic_get_new_connector_state.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_dp_drm_encoder_enable(ptr noundef %encoder, ptr noundef %state) #0 align 64 {
entry:
  %endpoint.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %state, ptr noundef %encoder) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %index.i.i.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i.i, align 4
  %num_connector.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i.i, label %drm_atomic_get_new_connector_state.exit.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

drm_atomic_get_new_connector_state.exit.i:        ; preds = %if.end.i
  %connectors.i.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i.i, align 4
  %new_state.i.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %drm_atomic_get_new_connector_state.exit.i.cleanup_crit_edge, label %rockchip_dp_drm_get_new_crtc.exit

drm_atomic_get_new_connector_state.exit.i.cleanup_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rockchip_dp_drm_get_new_crtc.exit:                ; preds = %drm_atomic_get_new_connector_state.exit.i
  %crtc.i = getelementptr inbounds %struct.drm_connector_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %rockchip_dp_drm_get_new_crtc.exit.cleanup_crit_edge, label %if.end

rockchip_dp_drm_get_new_crtc.exit.cleanup_crit_edge: ; preds = %rockchip_dp_drm_get_new_crtc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %rockchip_dp_drm_get_new_crtc.exit
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %13, i32 2
  %14 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %old_state.i, align 8
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %self_refresh_active to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %self_refresh_active, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %dev = getelementptr i8, ptr %encoder, i32 -4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i) #5
  %22 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %endpoint.i, align 4, !annotation !65
  %23 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !65
  %25 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %25, align 4, !annotation !65
  %call.i51 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %21, ptr noundef %encoder, ptr noundef nonnull %endpoint.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i52, label %cond.false.i, label %if.end5.drm_of_encoder_active_endpoint_id.exit_crit_edge

if.end5.drm_of_encoder_active_endpoint_id.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_of_encoder_active_endpoint_id.exit

cond.false.i:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %23, align 4
  br label %drm_of_encoder_active_endpoint_id.exit

drm_of_encoder_active_endpoint_id.exit:           ; preds = %cond.false.i, %if.end5.drm_of_encoder_active_endpoint_id.exit_crit_edge
  %cond.i = phi i32 [ %28, %cond.false.i ], [ %call.i51, %if.end5.drm_of_encoder_active_endpoint_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp slt i32 %cond.i, 0
  br i1 %cmp, label %drm_of_encoder_active_endpoint_id.exit.cleanup_crit_edge, label %if.end8

drm_of_encoder_active_endpoint_id.exit.cleanup_crit_edge: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool9.not = icmp eq i32 %cond.i, 0
  %data11 = getelementptr i8, ptr %encoder, i32 200
  %29 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data11, align 4
  %lcdsel_big = getelementptr inbounds %struct.rockchip_dp_chip_data, ptr %30, i32 0, i32 1
  %lcdsel_lit = getelementptr inbounds %struct.rockchip_dp_chip_data, ptr %30, i32 0, i32 2
  %cond = select i1 %tobool9.not, ptr @.str.19, ptr @.str.18
  %val.0.in = select i1 %tobool9.not, ptr %lcdsel_big, ptr %lcdsel_lit
  %31 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %val.0 = load i32, ptr %val.0.in, align 4
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %33, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond) #5
  %grfclk = getelementptr i8, ptr %encoder, i32 188
  %34 = ptrtoint ptr %grfclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %grfclk, align 4
  %call.i53 = call i32 @clk_prepare(ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i56, label %if.end8.clk_prepare_enable.exit_crit_edge

if.end8.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i56:                                       ; preds = %if.end8
  %call1.i = call i32 @clk_enable(ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i55 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i55, label %if.end.i56.if.end19_crit_edge, label %if.then3.i

if.end.i56.if.end19_crit_edge:                    ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then3.i:                                       ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %35) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end8.clk_prepare_enable.exit_crit_edge
  %retval.0.i57 = phi i32 [ %call.i53, %if.end8.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i57)
  %cmp16 = icmp slt i32 %retval.0.i57, 0
  br i1 %cmp16, label %if.then17, label %clk_prepare_enable.exit.if.end19_crit_edge

clk_prepare_enable.exit.if.end19_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i57) #5
  br label %cleanup

if.end19:                                         ; preds = %clk_prepare_enable.exit.if.end19_crit_edge, %if.end.i56.if.end19_crit_edge
  %grf = getelementptr i8, ptr %encoder, i32 192
  %38 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %grf, align 4
  %data20 = getelementptr i8, ptr %encoder, i32 200
  %40 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data20, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %call21 = call i32 @regmap_write(ptr noundef %39, i32 noundef %43, i32 noundef %val.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end19.if.end25_crit_edge, label %if.then23

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef %call21) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19.if.end25_crit_edge
  %46 = ptrtoint ptr %grfclk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %grfclk, align 4
  call void @clk_disable(ptr noundef %47) #5
  call void @clk_unprepare(ptr noundef %47) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then17, %drm_of_encoder_active_endpoint_id.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %rockchip_dp_drm_get_new_crtc.exit.cleanup_crit_edge, %drm_atomic_get_new_connector_state.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_dp_drm_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readonly %conn_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_state, align 4
  %output_mode = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 2
  %2 = ptrtoint ptr %output_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %output_mode, align 4
  %output_type = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 1
  %3 = ptrtoint ptr %output_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 14, ptr %output_type, align 4
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  %4 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bpc, align 8
  %output_bpc = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 3
  %6 = ptrtoint ptr %output_bpc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %output_bpc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_drm_wait_vact_end(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adp = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %adp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adp, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @analogix_dp_suspend(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dp_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adp = getelementptr inbounds %struct.rockchip_dp_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %adp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adp, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @analogix_dp_resume(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 468, i32 14}
!2 = !{ptr @rockchip_dp_driver, !3, !"rockchip_dp_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 464, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 92, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 98, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 123, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 267, i32 48}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 269, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 273, i32 33}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 279, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 283, i32 31}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 285, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 289, i32 40}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 291, i32 3}
!27 = !{ptr @rockchip_dp_component_ops, !28, !"rockchip_dp_component_ops", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 357, i32 35}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 332, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 307, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 312, i32 3}
!35 = !{ptr @rockchip_dp_encoder_helper_funcs, !36, !"rockchip_dp_encoder_helper_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 254, i32 40}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 228, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 193, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 197, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 203, i32 3}
!47 = !{ptr @rockchip_dp_dt_ids, !48, !"rockchip_dp_dt_ids", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 457, i32 34}
!49 = !{ptr @rk3288_dp, !50, !"rk3288_dp", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 450, i32 43}
!51 = !{ptr @rk3399_edp, !52, !"rk3399_edp", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 443, i32 43}
!53 = !{ptr @rockchip_dp_pm_ops, !54, !"rockchip_dp_pm_ops", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/rockchip/analogix_dp-rockchip.c", i32 436, i32 32}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i8 0, i8 2}
!65 = !{!"auto-init"}
