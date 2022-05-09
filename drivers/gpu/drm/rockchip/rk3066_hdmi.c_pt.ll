; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/rk3066_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rk3066_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rk3066_hdmi = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_connector, %struct.drm_encoder, ptr, ptr, i32, %struct.hdmi_data_info, %struct.drm_display_mode }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.hdmi_data_info = type { i32, i8, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.rk3066_hdmi_i2c = type { %struct.i2c_adapter, i8, i8, i8, %struct.mutex, %struct.completion }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rockchip-rk3066-hdmi\00", [43 x i8] zeroinitializer }, align 32
@rk3066_hdmi_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rk3066_hdmi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk3066_hdmi_probe, ptr @rk3066_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk3066_hdmi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@rk3066_hdmi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @rk3066_hdmi_bind, ptr @rk3066_hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* unable to get HDMI hclk clock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* cannot enable HDMI hclk clock: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* unable to get rockchip,grf\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to request hdmi irq: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@rk3066_hdmi_i2c_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&i2c->i2c_lock\00", [17 x i8] zeroinitializer }, align 32
@rk3066_hdmi_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @rk3066_hdmi_i2c_xfer, ptr null, ptr null, ptr null, ptr @rk3066_hdmi_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RK3066 HDMI\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* cannot add %s I2C adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"registered %s I2C bus driver\0A\00", [34 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xfer: num: %d/%d, len: %d, flags: %#x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mode         :%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"current_mode :%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d: next_mode :%d\0A\00", [45 x i8] zeroinitializer }, align 32
@rk3066_hdmi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @rk3066_hdmi_encoder_mode_fixup, ptr null, ptr null, ptr @rk3066_hdmi_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rk3066_hdmi_encoder_disable, ptr @rk3066_hdmi_encoder_enable, ptr @rk3066_hdmi_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@rk3066_hdmi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @rk3066_hdmi_connector_get_modes, ptr null, ptr @rk3066_hdmi_connector_mode_valid, ptr null, ptr @rk3066_hdmi_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rk3066_hdmi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @rk3066_hdmi_connector_detect, ptr null, ptr @rk3066_hdmi_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @rk3066_hdmi_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hdmi encoder disable\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hdmi encoder enable select: vop%s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 48, i64 80]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 8, i64 2, i64 3, i64 6, i64 7, i64 17, i64 18, i64 21, i64 22]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 867, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"rk3066_hdmi_dt_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 857, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"rk3066_hdmi_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 863, i32 24 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"rk3066_hdmi_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 840, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 763, i32 33 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 765, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 771, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 776, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 778, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 811, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 713, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"rk3066_hdmi_algorithm\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 698, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 722, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 727, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 735, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 87, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 669, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 108, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 109, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 124, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [33 x i8] c"rk3066_hdmi_encoder_helper_funcs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 447, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant [35 x i8] c"rk3066_hdmi_connector_helper_funcs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 532, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"rk3066_hdmi_connector_funcs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 522, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 412, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [42 x i8] c"../drivers/gpu/drm/rockchip/rk3066_hdmi.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 402, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @rk3066_hdmi_dt_ids, ptr @rk3066_hdmi_driver, ptr @rk3066_hdmi_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rk3066_hdmi_i2c_adapter.__key, ptr @.str.8, ptr @rk3066_hdmi_algorithm, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rk3066_hdmi_encoder_helper_funcs, ptr @rk3066_hdmi_connector_helper_funcs, ptr @rk3066_hdmi_connector_funcs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_hdmi_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_hdmi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_hdmi_i2c_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_hdmi_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_hdmi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_hdmi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_hdmi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @rk3066_hdmi_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @rk3066_hdmi_ops) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1280, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %drm_dev = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %drm_dev, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %hclk = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %hclk, align 8
  %cmp.i112 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  %5 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hclk, align 8
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call.i113 = tail call i32 @clk_prepare(ptr noundef %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.if.then22_crit_edge

if.end18.if.then22_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call12) #8
  br label %if.then22

if.then22:                                        ; preds = %if.then3.i, %if.end18.if.then22_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i113, %if.end18.if.then22_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call24 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %9, ptr noundef nonnull @.str.5) #8
  %grf_regmap = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call24, ptr %grf_regmap, align 8
  %cmp.i114 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #8
  %11 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %grf_regmap, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %err_disable_hclk

if.end30:                                         ; preds = %if.end23
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 419430400) #8, !srcloc !64
  %call31 = tail call fastcc ptr @rk3066_hdmi_i2c_adapter(ptr noundef nonnull %call.i)
  %ddc = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31, ptr %ddc, align 4
  %cmp.i115 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call31 to i32
  %18 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ddc, align 4
  br label %err_disable_hclk

if.end38:                                         ; preds = %if.end30
  tail call fastcc void @rk3066_hdmi_set_power_mode(ptr noundef nonnull %call.i, i32 noundef 32)
  tail call void @usleep_range_state(i32 noundef 999, i32 noundef 1000, i32 noundef 2) #8
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr.i117 = getelementptr i8, ptr %20, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 -2147483648) #8, !srcloc !64
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr.i119 = getelementptr i8, ptr %22, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 0) #8, !srcloc !64
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr.i121 = getelementptr i8, ptr %24, i32 600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 0) #8, !srcloc !64
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr.i123 = getelementptr i8, ptr %26, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 0) #8, !srcloc !64
  tail call fastcc void @rk3066_hdmi_set_power_mode(ptr noundef nonnull %call.i, i32 noundef 16)
  %call39 = tail call fastcc i32 @rk3066_hdmi_register(ptr noundef %data, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_disable_i2c_crit_edge

if.end38.err_disable_i2c_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_i2c

if.end42:                                         ; preds = %if.end38
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i124 = icmp eq ptr %29, null
  br i1 %tobool.not.i124, label %if.end.i125, label %if.end42.dev_name.exit_crit_edge

if.end42.dev_name.exit_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i125:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i125, %if.end42.dev_name.exit_crit_edge
  %retval.0.i126 = phi ptr [ %31, %if.end.i125 ], [ %29, %if.end42.dev_name.exit_crit_edge ]
  %call44 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call9, ptr noundef nonnull @rk3066_hdmi_hardirq, ptr noundef nonnull @rk3066_hdmi_irq, i32 noundef 128, ptr noundef %retval.0.i126, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %dev_name.exit.cleanup_crit_edge, label %if.then46

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then46:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, i32 noundef %call44) #8
  %connector = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 6
  %funcs = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 6, i32 21
  %32 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %destroy, align 4
  tail call void %35(ptr noundef %connector) #8
  %encoder = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 7
  %funcs49 = getelementptr inbounds %struct.rk3066_hdmi, ptr %call.i, i32 0, i32 7, i32 10
  %36 = ptrtoint ptr %funcs49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs49, align 8
  %destroy50 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %destroy50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %destroy50, align 4
  tail call void %39(ptr noundef %encoder) #8
  br label %err_disable_i2c

err_disable_i2c:                                  ; preds = %if.then46, %if.end38.err_disable_i2c_crit_edge
  %ret.0 = phi i32 [ %call39, %if.end38.err_disable_i2c_crit_edge ], [ %call44, %if.then46 ]
  %40 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ddc, align 4
  tail call void @i2c_put_adapter(ptr noundef %41) #8
  br label %err_disable_hclk

err_disable_hclk:                                 ; preds = %err_disable_i2c, %if.then34, %if.then27
  %ret.1 = phi i32 [ %13, %if.then27 ], [ %17, %if.then34 ], [ %ret.0, %err_disable_i2c ]
  %42 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hclk, align 8
  tail call void @clk_disable(ptr noundef %43) #8
  tail call void @clk_unprepare(ptr noundef %43) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_hclk, %dev_name.exit.cleanup_crit_edge, %if.then22, %if.then15, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %7, %if.then15 ], [ %retval.0.i.ph, %if.then22 ], [ %ret.1, %err_disable_hclk ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3066_hdmi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %connector = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 6
  %funcs = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 6, i32 21
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy, align 4
  tail call void %5(ptr noundef %connector) #8
  %encoder = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 7
  %funcs2 = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 7, i32 10
  %6 = ptrtoint ptr %funcs2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs2, align 8
  %destroy3 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %destroy3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destroy3, align 4
  tail call void %9(ptr noundef %encoder) #8
  %ddc = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc, align 4
  tail call void @i2c_put_adapter(ptr noundef %11) #8
  %hclk = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hclk, align 8
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rk3066_hdmi_i2c_adapter(ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 1512, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %i2c_lock = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @rk3066_hdmi_i2c_adapter.__key) #8
  %cmpltn = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %cmpltn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmpltn, align 4
  %wait.i = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %class, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call.i, align 8
  %5 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdmi, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %of_node7 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %10 = ptrtoint ptr %of_node7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %of_node7, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rk3066_hdmi_algorithm, ptr %algo, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call8 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.9, i32 noundef 48) #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hdmi, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdmi, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, ptr noundef %name) #8
  %15 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdmi, align 8
  tail call void @devm_kfree(ptr noundef %16, ptr noundef nonnull %call.i) #8
  %17 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end17:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %i2c18 = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 8
  %18 = ptrtoint ptr %i2c18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %i2c18, align 8
  %19 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdmi, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %20, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.then11 ], [ %call.i, %if.end17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk3066_hdmi_set_power_mode(ptr nocapture noundef %hdmi, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 5
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !65
  %3 = lshr i32 %2, 24
  %conv1.i.i = trunc i32 %3 to i8
  %4 = and i8 %conv1.i.i, -16
  %5 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdmi, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %mode) #8
  %7 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdmi, align 8
  %conv = zext i8 %4 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %mode)
  %cmp = icmp eq i32 %conv, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry.do.body_crit_edge
  %current_mode.0 = phi i8 [ %next_mode.0, %land.rhs.do.body_crit_edge ], [ %4, %entry.do.body_crit_edge ]
  %i.0 = phi i32 [ %add, %land.rhs.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %conv4 = zext i8 %current_mode.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %mode)
  %cmp5 = icmp sgt i32 %conv4, %mode
  %div66 = lshr i8 %current_mode.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %current_mode.0)
  %cmp11 = icmp ult i8 %current_mode.0, 16
  %mul = shl i8 %current_mode.0, 1
  %spec.select = select i1 %cmp11, i8 16, i8 %mul
  %next_mode.0 = select i1 %cmp5, i8 %div66, i8 %spec.select
  %9 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdmi, align 8
  %conv20 = and i32 %i.0, 255
  %conv21 = zext i8 %next_mode.0 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %conv20, i32 noundef %conv21) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %next_mode.0)
  %cmp23.not = icmp eq i8 %next_mode.0, 64
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  br i1 %cmp23.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !65
  %and2.masked.i = shl nuw i32 %conv21, 24
  %conv5.i70 = and i32 %and2.masked.i, -268435456
  %.mask = and i32 %13, 251658240
  %14 = or i32 %.mask, %conv5.i70
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !64
  br label %if.end28

if.else27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1275068416) #8, !srcloc !64
  tail call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1207959552) #8, !srcloc !64
  tail call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1073741824) #8, !srcloc !64
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then25
  call void @__sanitizer_cov_trace_cmp4(i32 %conv21, i32 %mode)
  %cmp32.not = icmp eq i32 %conv21, %mode
  br i1 %cmp32.not, label %if.end28.do.end_crit_edge, label %land.rhs

if.end28.do.end_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs:                                         ; preds = %if.end28
  %add = add nuw nsw i32 %conv20, 1
  %conv34 = and i32 %add, 255
  %cmp35 = icmp ult i32 %conv34, 5
  br i1 %cmp35, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %if.end28.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mode)
  %cmp37 = icmp slt i32 %mode, 64
  br i1 %cmp37, label %if.then39, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %tmdsclk = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 10
  %21 = ptrtoint ptr %tmdsclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 30000000, ptr %tmdsclk, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk3066_hdmi_register(ptr noundef %drm, ptr noundef %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %drm, ptr noundef %3) #8
  %possible_crtcs = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 7, i32 6
  %4 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %possible_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %encoder1 = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 7
  %helper_private.i = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 7, i32 11
  %5 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rk3066_hdmi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call4 = tail call i32 @drm_simple_encoder_init(ptr noundef %drm, ptr noundef %encoder1, i32 noundef 2) #8
  %connector = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 6
  %polled = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 6, i32 33
  %6 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %polled, align 4
  %helper_private.i23 = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 6, i32 35
  %7 = ptrtoint ptr %helper_private.i23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rk3066_hdmi_connector_helper_funcs, ptr %helper_private.i23, align 4
  %ddc = getelementptr inbounds %struct.rk3066_hdmi, ptr %hdmi, i32 0, i32 9
  %8 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc, align 4
  %call7 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %drm, ptr noundef %connector, ptr noundef nonnull @rk3066_hdmi_connector_funcs, i32 noundef 11, ptr noundef %9) #8
  %call9 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %encoder1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_hardirq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.rk3066_hdmi, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !65
  %3 = and i32 %2, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %3)
  %cmp = icmp eq i32 %3, 268435456
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 536870912) #8, !srcloc !64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 592
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !65
  %9 = lshr i32 %8, 24
  %conv1.i = trunc i32 %9 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool.not = icmp eq i8 %conv1.i, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.end5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end5:                                          ; preds = %if.end
  %10 = and i32 %8, -16777216
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %12, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %10) #8, !srcloc !64
  %13 = and i32 %8, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.rk3066_hdmi, ptr %dev_id, i32 0, i32 8
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 8
  %stat = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv1.i, ptr %stat, align 2
  %17 = load ptr, ptr %i2c, align 8
  %cmpltn = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %17, i32 0, i32 5
  tail call void @complete(ptr noundef %cmpltn) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %conv631 = phi i32 [ %9, %if.then8 ], [ %9, %if.end5.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ]
  %and12 = and i32 %conv631, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 2
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr inbounds %struct.rk3066_hdmi, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %1) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c1 = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 8
  %i2c_lock = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #8
  %tmdsclk.i = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %tmdsclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tmdsclk.i, align 8
  %div.i = udiv i32 %5, 200000
  %and.i = shl i32 %div.i, 24
  %regs.i.i = getelementptr inbounds %struct.rk3066_hdmi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and.i) #8, !srcloc !64
  %8 = tail call i32 @llvm.bswap.i32(i32 %div.i) #8
  %9 = shl i32 %8, 8
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %11, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %9) #8, !srcloc !64
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 584
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !65
  %conv1.i.i = and i32 %14, -117440512
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %16, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %conv1.i.i) #8, !srcloc !64
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %18, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 100663296) #8, !srcloc !64
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %20, i32 584
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #8, !srcloc !65
  %22 = and i32 %21, -117440512
  %conv5.i = or i32 %22, 100663296
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %24, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %conv5.i) #8, !srcloc !64
  %stat = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %stat, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp62 = icmp sgt i32 %num, 0
  br i1 %cmp62, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.063 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %add = add nuw nsw i32 %i.063, 1
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.063
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.063, i32 2
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len, align 4
  %conv = zext i16 %29 to i32
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.063, i32 1
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags, align 2
  %conv3 = zext i16 %31 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %27, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %add, i32 noundef %num, i32 noundef %conv, i32 noundef %conv3) #8
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags, align 2
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not = icmp eq i16 %34, 0
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %buf1.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.063, i32 3
  %37 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf1.i, align 4
  %39 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c1, align 8
  %cmpltn.i = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %40, i32 0, i32 5
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmpltn.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.for.end_crit_edge, label %lor.lhs.false.i

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false.i:                                  ; preds = %if.then
  %41 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c1, align 8
  %stat.i = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %stat.i, align 2
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool4.not.i = icmp eq i8 %45, 0
  br i1 %tobool4.not.i, label %while.cond.preheader.i, label %lor.lhs.false.i.for.end_crit_edge

lor.lhs.false.i.for.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool5.not12.i = icmp eq i16 %36, 0
  br i1 %tobool5.not12.i, label %while.cond.preheader.i.if.end_crit_edge, label %while.body.i.preheader

while.cond.preheader.i.if.end_crit_edge:          ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  %conv.i = zext i16 %36 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %buf.014.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %38, %while.body.i.preheader ]
  %length.013.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i, %while.body.i.preheader ]
  %dec.i = add nsw i32 %length.013.i, -1
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %47, i32 512
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #8, !srcloc !65
  %49 = lshr i32 %48, 24
  %conv1.i.i46 = trunc i32 %49 to i8
  %incdec.ptr.i = getelementptr i8, ptr %buf.014.i, i32 1
  %50 = ptrtoint ptr %buf.014.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv1.i.i46, ptr %buf.014.i, align 1
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %36)
  %cmp.not.i = icmp eq i16 %36, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i48, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false.i48:                                ; preds = %if.else
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx, align 4
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i16 %52, label %lor.lhs.false.i48.for.end_crit_edge [
    i16 80, label %lor.lhs.false.i48.if.end.i_crit_edge
    i16 48, label %lor.lhs.false.i48.if.end.i_crit_edge69
  ]

lor.lhs.false.i48.if.end.i_crit_edge69:           ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i48.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i48.for.end_crit_edge:              ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i:                                         ; preds = %lor.lhs.false.i48.if.end.i_crit_edge, %lor.lhs.false.i48.if.end.i_crit_edge69
  %54 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c1, align 8
  %cmpltn.i50 = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %cmpltn.i50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %cmpltn.i50, align 4
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %58)
  %cmp11.i = icmp eq i16 %58, 48
  br i1 %cmp11.i, label %if.then13.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.063, i32 3
  %59 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %63 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c1, align 8
  %segment_addr.i = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %segment_addr.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %62, ptr %segment_addr.i, align 1
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %66)
  %.pr.i = load i16, ptr %arrayidx, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end.i.if.end15.i_crit_edge
  %67 = phi i16 [ %.pr.i, %if.then13.i ], [ %58, %if.end.i.if.end15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %67)
  %cmp18.i = icmp eq i16 %67, 80
  br i1 %cmp18.i, label %if.then20.i, label %if.end15.i.if.end24.i_crit_edge

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf21.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.063, i32 3
  %68 = ptrtoint ptr %buf21.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf21.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %72 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c1, align 8
  %ddc_addr.i = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %ddc_addr.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %71, ptr %ddc_addr.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.end15.i.if.end24.i_crit_edge
  %75 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %76, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 0) #8, !srcloc !64
  %77 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c1, align 8
  %ddc_addr26.i = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %ddc_addr26.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ddc_addr26.i, align 8
  %conv27.i = zext i8 %80 to i32
  %81 = shl nuw i32 %conv27.i, 24
  %82 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %83, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %81) #8, !srcloc !64
  %84 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c1, align 8
  %segment_addr29.i = getelementptr inbounds %struct.rk3066_hdmi_i2c, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %segment_addr29.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %segment_addr29.i, align 1
  %conv30.i = zext i8 %87 to i32
  %88 = shl nuw i32 %conv30.i, 24
  %89 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %90, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 %88) #8, !srcloc !64
  br label %if.end

if.end:                                           ; preds = %if.end24.i, %while.body.i.if.end_crit_edge, %while.cond.preheader.i.if.end_crit_edge
  %exitcond.not = icmp eq i32 %add, %num
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %lor.lhs.false.i48.for.end_crit_edge, %if.else.for.end_crit_edge, %lor.lhs.false.i.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %91 = phi i32 [ %num, %entry.for.end_crit_edge ], [ -11, %lor.lhs.false.i.for.end_crit_edge ], [ -11, %if.then.for.end_crit_edge ], [ -22, %lor.lhs.false.i48.for.end_crit_edge ], [ -22, %if.else.for.end_crit_edge ], [ %num, %if.end.for.end_crit_edge ]
  %92 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %93, i32 584
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #8, !srcloc !65
  %conv1.i56 = and i32 %94, -117440512
  %95 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i57 = getelementptr i8, ptr %96, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i57, i32 %conv1.i56) #8, !srcloc !64
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #8
  ret i32 %91
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk3066_hdmi_i2c_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rk3066_hdmi_encoder_mode_fixup(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adj_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3066_hdmi_encoder_mode_set(ptr nocapture noundef writeonly %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adj_mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %previous_mode = getelementptr i8, ptr %encoder, i32 100
  %0 = call ptr @memcpy(ptr %previous_mode, ptr %adj_mode, i32 112)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3066_hdmi_encoder_disable(ptr nocapture noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -1064
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.17) #8
  %regs.i.i = getelementptr i8, ptr %encoder, i32 -1044
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !65
  %5 = and i32 %4, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %5)
  %cmp = icmp eq i32 %5, -2147483648
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #8, !srcloc !64
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 276
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !65
  %11 = and i32 %10, -83886080
  %conv5.i = or i32 %11, 67108864
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %13, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %conv5.i) #8, !srcloc !64
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 510, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @rk3066_hdmi_set_power_mode(ptr noundef %add.ptr, i32 noundef 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3066_hdmi_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  %packed_frame.i.i.i = alloca [17 x i8], align 1
  %frame.i.i = alloca %union.hdmi_infoframe, align 4
  %endpoint.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %encoder, i32 -1064
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i) #8
  %4 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %endpoint.i, align 4, !annotation !66
  %5 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !66
  %7 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !66
  %call.i = call i32 @drm_of_encoder_active_endpoint(ptr noundef %3, ptr noundef %encoder, ptr noundef nonnull %endpoint.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge

entry.drm_of_encoder_active_endpoint_id.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_of_encoder_active_endpoint_id.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  br label %drm_of_encoder_active_endpoint_id.exit

drm_of_encoder_active_endpoint_id.exit:           ; preds = %cond.false.i, %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ %call.i, %entry.drm_of_encoder_active_endpoint_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not = icmp eq i32 %cond.i, 0
  %.str.20..str.19 = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  %. = select i1 %tobool.not, i32 1073741824, i32 1073758208
  %grf_regmap = getelementptr i8, ptr %encoder, i32 -1056
  %11 = ptrtoint ptr %grf_regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %grf_regmap, align 8
  %call1 = call i32 @regmap_write(ptr noundef %12, i32 noundef 336, i32 noundef %.) #8
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef nonnull %.str.20..str.19) #8
  %previous_mode = getelementptr i8, ptr %encoder, i32 100
  %call.i11 = call zeroext i8 @drm_match_cea_mode(ptr noundef %previous_mode) #8
  %conv.i = zext i8 %call.i11 to i32
  %hdmi_data.i = getelementptr i8, ptr %encoder, i32 84
  %15 = ptrtoint ptr %hdmi_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i, ptr %hdmi_data.i, align 4
  %enc_out_format.i = getelementptr i8, ptr %encoder, i32 92
  %16 = ptrtoint ptr %enc_out_format.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %enc_out_format.i, align 4
  %17 = zext i8 %call.i11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %call.i11, label %if.else.i [
    i8 6, label %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge
    i8 7, label %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge13
    i8 21, label %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge14
    i8 22, label %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge15
    i8 2, label %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge16
    i8 3, label %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge17
    i8 17, label %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge18
    i8 18, label %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge19
  ]

drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge19: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge18: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge17: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge16: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge15: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge14: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge13: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge: ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %drm_of_encoder_active_endpoint_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge13, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge14, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge15, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge16, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge17, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge18, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge19
  %.sink.i = phi i32 [ 2, %if.else.i ], [ 1, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge ], [ 1, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge13 ], [ 1, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge14 ], [ 1, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge15 ], [ 1, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge16 ], [ 1, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge17 ], [ 1, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge18 ], [ 1, %drm_of_encoder_active_endpoint_id.exit.if.end.i_crit_edge19 ]
  %colorimetry41.i = getelementptr i8, ptr %encoder, i32 96
  %18 = ptrtoint ptr %colorimetry41.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i, ptr %colorimetry41.i, align 4
  %19 = ptrtoint ptr %previous_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %previous_mode, align 4
  %mul.i = mul i32 %20, 1000
  %tmdsclk.i = getelementptr i8, ptr %encoder, i32 80
  %21 = ptrtoint ptr %tmdsclk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %tmdsclk.i, align 8
  %regs.i.i.i = getelementptr i8, ptr %encoder, i32 -1044
  %22 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 276
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !65
  %25 = and i32 %24, -67108864
  %conv5.i.i = or i32 %25, 50331648
  %26 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %27, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %conv5.i.i) #8, !srcloc !64
  %28 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i.i, align 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !65
  %31 = and i32 %30, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %31)
  %cmp44.not.i = icmp eq i32 %31, 536870912
  br i1 %cmp44.not.i, label %if.end.i.if.end47.i_crit_edge, label %if.then46.i

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then46.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rk3066_hdmi_set_power_mode(ptr noundef %add.ptr, i32 noundef 32) #8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then46.i, %if.end.i.if.end47.i_crit_edge
  %32 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %33, i32 84
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i3.i) #8, !srcloc !65
  %35 = and i32 %34, -33554432
  %conv5.i5.i = or i32 %35, 16777216
  %36 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i12.i6.i = getelementptr i8, ptr %37, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i6.i, i32 %conv5.i5.i) #8, !srcloc !64
  %38 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 805306368) #8, !srcloc !64
  %40 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %41, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 536870912) #8, !srcloc !64
  %flags.i.i = getelementptr i8, ptr %encoder, i32 124
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.i, align 4
  %44 = ptrtoint ptr %hdmi_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hdmi_data.i, align 4
  %46 = and i32 %45, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %switch.i.i = icmp eq i32 %46, 2
  %spec.select.i.i = select i1 %switch.i.i, i32 6, i32 0
  %and7.i.i = lshr i32 %43, 3
  %47 = and i32 %and7.i.i, 2
  %and.i.i = shl i32 %43, 2
  %48 = and i32 %and.i.i, 4
  %and2.i.i = shl i32 %43, 1
  %49 = and i32 %and2.i.i, 8
  %or.i.i = or i32 %48, %49
  %or5.i.i = or i32 %or.i.i, %47
  %50 = shl nuw nsw i32 %spec.select.i.i, 28
  %51 = shl nuw nsw i32 %or5.i.i, 24
  %or14.i.i = or i32 %50, %51
  %52 = or i32 %or14.i.i, 16777216
  %53 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %54, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 %52) #8, !srcloc !64
  %htotal.i.i = getelementptr i8, ptr %encoder, i32 110
  %55 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %htotal.i.i, align 2
  %conv.i.i = zext i16 %56 to i32
  %and15.i.i = shl i32 %conv.i.i, 24
  %57 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %58, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and15.i.i) #8, !srcloc !64
  %59 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #8
  %60 = shl i32 %59, 8
  %61 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %62, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %60) #8, !srcloc !64
  %63 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %htotal.i.i, align 2
  %conv18.i.i = zext i16 %64 to i32
  %hdisplay.i.i = getelementptr i8, ptr %encoder, i32 104
  %65 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hdisplay.i.i, align 4
  %conv19.i.i = zext i16 %66 to i32
  %sub.i.i = sub nsw i32 %conv18.i.i, %conv19.i.i
  %and20.i.i = shl i32 %sub.i.i, 24
  %67 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %68, i32 204
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %and20.i.i) #8, !srcloc !64
  %69 = shl i32 %sub.i.i, 16
  %and22.i.i = and i32 %69, -16777216
  %70 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %71, i32 208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %and22.i.i) #8, !srcloc !64
  %72 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %htotal.i.i, align 2
  %conv24.i.i = zext i16 %73 to i32
  %hsync_start.i.i = getelementptr i8, ptr %encoder, i32 106
  %74 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %hsync_start.i.i, align 2
  %conv25.i.i = zext i16 %75 to i32
  %sub26.i.i = sub nsw i32 %conv24.i.i, %conv25.i.i
  %and27.i.i = shl i32 %sub26.i.i, 24
  %76 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %77, i32 212
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %and27.i.i) #8, !srcloc !64
  %78 = shl i32 %sub26.i.i, 16
  %and29.i.i = and i32 %78, -16777216
  %79 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i12.i11.i = getelementptr i8, ptr %80, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i11.i, i32 %and29.i.i) #8, !srcloc !64
  %hsync_end.i.i = getelementptr i8, ptr %encoder, i32 108
  %81 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %hsync_end.i.i, align 4
  %conv30.i.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %hsync_start.i.i, align 2
  %conv32.i.i = zext i16 %84 to i32
  %sub33.i.i = sub nsw i32 %conv30.i.i, %conv32.i.i
  %and34.i.i = shl i32 %sub33.i.i, 24
  %85 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %86, i32 220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %and34.i.i) #8, !srcloc !64
  %87 = shl i32 %sub33.i.i, 16
  %and36.i.i = and i32 %87, -16777216
  %88 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %89, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %and36.i.i) #8, !srcloc !64
  %vtotal.i.i = getelementptr i8, ptr %encoder, i32 120
  %90 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vtotal.i.i, align 4
  %conv37.i.i = zext i16 %91 to i32
  %and38.i.i = shl i32 %conv37.i.i, 24
  %92 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %93, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %and38.i.i) #8, !srcloc !64
  %94 = call i32 @llvm.bswap.i32(i32 %conv37.i.i) #8
  %95 = shl i32 %94, 8
  %96 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %97, i32 232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 %95) #8, !srcloc !64
  %98 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vtotal.i.i, align 4
  %conv42.i.i = zext i16 %99 to i32
  %vdisplay.i.i = getelementptr i8, ptr %encoder, i32 114
  %100 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %vdisplay.i.i, align 2
  %conv43.i.i = zext i16 %101 to i32
  %sub44.i.i = sub nsw i32 %conv42.i.i, %conv43.i.i
  %and45.i.i = shl i32 %sub44.i.i, 24
  %102 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %103, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %and45.i.i) #8, !srcloc !64
  %104 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vtotal.i.i, align 4
  %conv47.i.i = zext i16 %105 to i32
  %vsync_start.i.i = getelementptr i8, ptr %encoder, i32 116
  %106 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vsync_start.i.i, align 4
  %conv48.i.i = zext i16 %107 to i32
  %sub49.i.i = add nuw nsw i32 %spec.select.i.i, %conv47.i.i
  %add.i.i = sub nsw i32 %sub49.i.i, %conv48.i.i
  %and50.i.i = shl i32 %add.i.i, 24
  %108 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %109, i32 248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %and50.i.i) #8, !srcloc !64
  %vsync_end.i.i = getelementptr i8, ptr %encoder, i32 118
  %110 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %vsync_end.i.i, align 2
  %conv51.i.i = zext i16 %111 to i32
  %112 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %vsync_start.i.i, align 4
  %conv53.i.i = zext i16 %113 to i32
  %sub54.i.i = sub nsw i32 %conv51.i.i, %conv53.i.i
  %and55.i.i = shl i32 %sub54.i.i, 24
  %114 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %115, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %and55.i.i) #8, !srcloc !64
  %sink_is_hdmi.i = getelementptr i8, ptr %encoder, i32 88
  %116 = ptrtoint ptr %sink_is_hdmi.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sink_is_hdmi.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i12 = icmp eq i8 %117, 0
  %118 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %119, i32 700
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #8
  %conv1.i19.i = and i32 %120, -50331648
  br i1 %tobool.not.i12, label %if.else52.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end47.i
  %conv5.i15.i = or i32 %conv1.i19.i, 33554432
  %121 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i12.i16.i = getelementptr i8, ptr %122, i32 700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i16.i, i32 %conv5.i15.i) #8, !srcloc !64
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i.i) #8
  %123 = call ptr @memset(ptr %frame.i.i, i32 255, i32 68)
  %connector.i.i = getelementptr i8, ptr %encoder, i32 -1040
  %call.i.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i.i, ptr noundef %connector.i.i, ptr noundef %previous_mode) #8
  %124 = ptrtoint ptr %enc_out_format.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %enc_out_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %switch.selectcmp.i.i = icmp eq i32 %125, 1
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %125)
  %switch.selectcmp1.i.i = icmp eq i32 %125, 2
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i32 2, i32 %switch.select.i.i
  %colorspace5.i.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frame.i.i, i32 0, i32 3
  %126 = ptrtoint ptr %colorspace5.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %switch.select2.i.i, ptr %colorspace5.i.i, align 4
  %127 = ptrtoint ptr %colorimetry41.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %colorimetry41.i, align 4
  %colorimetry10.i.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frame.i.i, i32 0, i32 5
  %129 = ptrtoint ptr %colorimetry10.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %colorimetry10.i.i, align 4
  %scan_mode.i.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frame.i.i, i32 0, i32 4
  %130 = ptrtoint ptr %scan_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %scan_mode.i.i, align 4
  %131 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %132, i32 380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 100663296) #8, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %if.then50.i.rk3066_hdmi_config_avi.exit.i_crit_edge

if.then50.i.rk3066_hdmi_config_avi.exit.i_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rk3066_hdmi_config_avi.exit.i

if.then1.i.i.i:                                   ; preds = %if.then50.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %packed_frame.i.i.i) #8
  %133 = call ptr @memset(ptr %packed_frame.i.i.i, i32 255, i32 17)
  %call.i.i.i = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %frame.i.i, ptr noundef nonnull %packed_frame.i.i.i, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp53.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp53.i.i.i, label %if.then1.i.i.i.for.body.i.i.i_crit_edge, label %if.then1.i.i.i.cleanup.i.i.i_crit_edge

if.then1.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

if.then1.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.then1.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then1.i.i.i.for.body.i.i.i_crit_edge
  %i.04.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then1.i.i.i.for.body.i.i.i_crit_edge ]
  %134 = shl i32 %i.04.i.i.i, 2
  %conv.i.i.i = add i32 %134, 384
  %arrayidx.i.i.i = getelementptr [17 x i8], ptr %packed_frame.i.i.i, i32 0, i32 %i.04.i.i.i
  %135 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv6.i.i.i = zext i8 %136 to i32
  %137 = shl nuw i32 %conv6.i.i.i, 24
  %138 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i.i.i, align 4
  %conv.i.i.i.i = and i32 %conv.i.i.i, 65532
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %139, i32 %conv.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %137) #8, !srcloc !64
  %inc.i.i.i = add nuw nsw i32 %i.04.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %call.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.cleanup.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %for.body.i.i.i.cleanup.i.i.i_crit_edge, %if.then1.i.i.i.cleanup.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %packed_frame.i.i.i) #8
  br label %rk3066_hdmi_config_avi.exit.i

rk3066_hdmi_config_avi.exit.i:                    ; preds = %cleanup.i.i.i, %if.then50.i.rk3066_hdmi_config_avi.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i.i) #8
  br label %if.end53.i

if.else52.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i12.i20.i = getelementptr i8, ptr %141, i32 700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i20.i, i32 %conv1.i19.i) #8, !srcloc !64
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else52.i, %rk3066_hdmi_config_avi.exit.i
  %142 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i22.i = getelementptr i8, ptr %143, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22.i, i32 570425344) #8, !srcloc !64
  %144 = ptrtoint ptr %tmdsclk.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tmdsclk.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %145)
  %cmp.i.i = icmp ugt i32 %145, 100000000
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i23.i = getelementptr i8, ptr %147, i32 344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i23.i, i32 234881024) #8, !srcloc !64
  %148 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i.i.i, align 4
  %150 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #8, !srcloc !65
  %151 = and i32 %150, -218103808
  %conv5.i.i.i.i = or i32 %151, 201326592
  %152 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %conv5.i.i.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %154 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i.i.i, align 4
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #8, !srcloc !65
  %conv1.i4.i.i.i = and i32 %156, -218103808
  %157 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %conv1.i4.i.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %159 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i36.i.i = getelementptr i8, ptr %160, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36.i.i, i32 0) #8, !srcloc !64
  %161 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i.i.i, align 4
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #8, !srcloc !65
  %164 = and i32 %163, -218103808
  %conv5.i.i37.i.i = or i32 %164, 201326592
  %165 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %conv5.i.i37.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %167 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs.i.i.i, align 4
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #8, !srcloc !65
  %conv1.i4.i38.i.i = and i32 %169, -218103808
  %170 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %conv1.i4.i38.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %172 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i40.i.i = getelementptr i8, ptr %173, i32 352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40.i.i, i32 1610612736) #8, !srcloc !64
  %174 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i.i.i, align 4
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #8, !srcloc !65
  %177 = and i32 %176, -218103808
  %conv5.i.i41.i.i = or i32 %177, 201326592
  %178 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %conv5.i.i41.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %180 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i.i.i, align 4
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #8, !srcloc !65
  %conv1.i4.i42.i.i = and i32 %182, -218103808
  %183 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %conv1.i4.i42.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %185 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %186, i32 356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44.i.i, i32 0) #8, !srcloc !64
  %187 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i.i.i, align 4
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #8, !srcloc !65
  %190 = and i32 %189, -218103808
  %conv5.i.i45.i.i = or i32 %190, 201326592
  %191 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %conv5.i.i45.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %193 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs.i.i.i, align 4
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #8, !srcloc !65
  %conv1.i4.i46.i.i = and i32 %195, -218103808
  %196 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %conv1.i4.i46.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %198 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i48.i.i = getelementptr i8, ptr %199, i32 360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48.i.i, i32 -637534208) #8, !srcloc !64
  %200 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i.i.i, align 4
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #8, !srcloc !65
  %203 = and i32 %202, -218103808
  %conv5.i.i49.i.i = or i32 %203, 201326592
  %204 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %conv5.i.i49.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %206 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i.i.i, align 4
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #8, !srcloc !65
  %conv1.i4.i50.i.i = and i32 %208, -218103808
  %209 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %conv1.i4.i50.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %211 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i52.i.i = getelementptr i8, ptr %212, i32 364
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52.i.i, i32 -1593835520) #8, !srcloc !64
  %213 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs.i.i.i, align 4
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #8, !srcloc !65
  %216 = and i32 %215, -218103808
  %conv5.i.i53.i.i = or i32 %216, 201326592
  %217 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %conv5.i.i53.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %219 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i.i.i, align 4
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #8, !srcloc !65
  %conv1.i4.i54.i.i = and i32 %221, -218103808
  %222 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %conv1.i4.i54.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %224 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i56.i.i = getelementptr i8, ptr %225, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56.i.i, i32 234881024) #8, !srcloc !64
  %226 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regs.i.i.i, align 4
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #8, !srcloc !65
  %229 = and i32 %228, -218103808
  %conv5.i.i57.i.i = or i32 %229, 201326592
  %230 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %conv5.i.i57.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %232 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs.i.i.i, align 4
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #8, !srcloc !65
  %conv1.i4.i58.i.i = and i32 %234, -218103808
  %235 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %conv1.i4.i58.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %237 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i60.i.i = getelementptr i8, ptr %238, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60.i.i, i32 570425344) #8, !srcloc !64
  %239 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regs.i.i.i, align 4
  %241 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #8, !srcloc !65
  %242 = and i32 %241, -218103808
  %conv5.i.i61.i.i = or i32 %242, 201326592
  %243 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %conv5.i.i61.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %245 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regs.i.i.i, align 4
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #8, !srcloc !65
  %conv1.i4.i62.i.i = and i32 %247, -218103808
  %248 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %conv1.i4.i62.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %250 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i64.i.i = getelementptr i8, ptr %251, i32 376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64.i.i, i32 0) #8, !srcloc !64
  %252 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs.i.i.i, align 4
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #8, !srcloc !65
  %255 = and i32 %254, -218103808
  %conv5.i.i65.i.i = or i32 %255, 201326592
  %256 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %conv5.i.i65.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %258 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regs.i.i.i, align 4
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #8, !srcloc !65
  %conv1.i4.i66.i.i = and i32 %260, -218103808
  %261 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %conv1.i4.i66.i.i) #8, !srcloc !64
  br label %rk3066_hdmi_setup.exit

if.else.i.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %145)
  %cmp2.i.i = icmp ugt i32 %145, 50000000
  %263 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i68.i.i = getelementptr i8, ptr %264, i32 344
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else4.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68.i.i, i32 100663296) #8, !srcloc !64
  %265 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs.i.i.i, align 4
  %267 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #8, !srcloc !65
  %268 = and i32 %267, -218103808
  %conv5.i.i69.i.i = or i32 %268, 201326592
  %269 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %conv5.i.i69.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %271 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs.i.i.i, align 4
  %273 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #8, !srcloc !65
  %conv1.i4.i70.i.i = and i32 %273, -218103808
  %274 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %conv1.i4.i70.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %276 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i72.i.i = getelementptr i8, ptr %277, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72.i.i, i32 0) #8, !srcloc !64
  %278 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %regs.i.i.i, align 4
  %280 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %279) #8, !srcloc !65
  %281 = and i32 %280, -218103808
  %conv5.i.i73.i.i = or i32 %281, 201326592
  %282 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 %conv5.i.i73.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %284 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %regs.i.i.i, align 4
  %286 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %285) #8, !srcloc !65
  %conv1.i4.i74.i.i = and i32 %286, -218103808
  %287 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %conv1.i4.i74.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %289 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i76.i.i = getelementptr i8, ptr %290, i32 352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76.i.i, i32 1610612736) #8, !srcloc !64
  %291 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %regs.i.i.i, align 4
  %293 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %292) #8, !srcloc !65
  %294 = and i32 %293, -218103808
  %conv5.i.i77.i.i = or i32 %294, 201326592
  %295 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %conv5.i.i77.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %297 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %regs.i.i.i, align 4
  %299 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %298) #8, !srcloc !65
  %conv1.i4.i78.i.i = and i32 %299, -218103808
  %300 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 %conv1.i4.i78.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %302 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i80.i.i = getelementptr i8, ptr %303, i32 356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80.i.i, i32 0) #8, !srcloc !64
  %304 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %regs.i.i.i, align 4
  %306 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #8, !srcloc !65
  %307 = and i32 %306, -218103808
  %conv5.i.i81.i.i = or i32 %307, 201326592
  %308 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 %conv5.i.i81.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %310 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs.i.i.i, align 4
  %312 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %311) #8, !srcloc !65
  %conv1.i4.i82.i.i = and i32 %312, -218103808
  %313 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %conv1.i4.i82.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %315 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i84.i.i = getelementptr i8, ptr %316, i32 360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.i.i, i32 -905969664) #8, !srcloc !64
  %317 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i.i.i, align 4
  %319 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #8, !srcloc !65
  %320 = and i32 %319, -218103808
  %conv5.i.i85.i.i = or i32 %320, 201326592
  %321 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %322, i32 %conv5.i.i85.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %323 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regs.i.i.i, align 4
  %325 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #8, !srcloc !65
  %conv1.i4.i86.i.i = and i32 %325, -218103808
  %326 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 %conv1.i4.i86.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %328 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i88.i.i = getelementptr i8, ptr %329, i32 364
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88.i.i, i32 -1560281088) #8, !srcloc !64
  %330 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %regs.i.i.i, align 4
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %331) #8, !srcloc !65
  %333 = and i32 %332, -218103808
  %conv5.i.i89.i.i = or i32 %333, 201326592
  %334 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %conv5.i.i89.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %336 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs.i.i.i, align 4
  %338 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %337) #8, !srcloc !65
  %conv1.i4.i90.i.i = and i32 %338, -218103808
  %339 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %conv1.i4.i90.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %341 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i92.i.i = getelementptr i8, ptr %342, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i92.i.i, i32 234881024) #8, !srcloc !64
  %343 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %regs.i.i.i, align 4
  %345 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %344) #8, !srcloc !65
  %346 = and i32 %345, -218103808
  %conv5.i.i93.i.i = or i32 %346, 201326592
  %347 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %conv5.i.i93.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %349 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %regs.i.i.i, align 4
  %351 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %350) #8, !srcloc !65
  %conv1.i4.i94.i.i = and i32 %351, -218103808
  %352 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %conv1.i4.i94.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %354 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i96.i.i = getelementptr i8, ptr %355, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96.i.i, i32 536870912) #8, !srcloc !64
  %356 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %regs.i.i.i, align 4
  %358 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %357) #8, !srcloc !65
  %359 = and i32 %358, -218103808
  %conv5.i.i97.i.i = or i32 %359, 201326592
  %360 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 %conv5.i.i97.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %362 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %regs.i.i.i, align 4
  %364 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %363) #8, !srcloc !65
  %conv1.i4.i98.i.i = and i32 %364, -218103808
  %365 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 %conv1.i4.i98.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %367 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i100.i.i = getelementptr i8, ptr %368, i32 376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i100.i.i, i32 0) #8, !srcloc !64
  %369 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %regs.i.i.i, align 4
  %371 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %370) #8, !srcloc !65
  %372 = and i32 %371, -218103808
  %conv5.i.i101.i.i = or i32 %372, 201326592
  %373 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %conv5.i.i101.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %375 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %regs.i.i.i, align 4
  %377 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %376) #8, !srcloc !65
  %conv1.i4.i102.i.i = and i32 %377, -218103808
  %378 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %379, i32 %conv1.i4.i102.i.i) #8, !srcloc !64
  br label %rk3066_hdmi_setup.exit

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68.i.i, i32 33554432) #8, !srcloc !64
  %380 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %regs.i.i.i, align 4
  %382 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %381) #8, !srcloc !65
  %383 = and i32 %382, -218103808
  %conv5.i.i105.i.i = or i32 %383, 201326592
  %384 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 %conv5.i.i105.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %386 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %regs.i.i.i, align 4
  %388 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #8, !srcloc !65
  %conv1.i4.i106.i.i = and i32 %388, -218103808
  %389 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 %conv1.i4.i106.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %391 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i108.i.i = getelementptr i8, ptr %392, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108.i.i, i32 0) #8, !srcloc !64
  %393 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %regs.i.i.i, align 4
  %395 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %394) #8, !srcloc !65
  %396 = and i32 %395, -218103808
  %conv5.i.i109.i.i = or i32 %396, 201326592
  %397 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %conv5.i.i109.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %399 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %regs.i.i.i, align 4
  %401 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %400) #8, !srcloc !65
  %conv1.i4.i110.i.i = and i32 %401, -218103808
  %402 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %403, i32 %conv1.i4.i110.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %404 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i112.i.i = getelementptr i8, ptr %405, i32 352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i112.i.i, i32 1610612736) #8, !srcloc !64
  %406 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %regs.i.i.i, align 4
  %408 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %407) #8, !srcloc !65
  %409 = and i32 %408, -218103808
  %conv5.i.i113.i.i = or i32 %409, 201326592
  %410 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 %conv5.i.i113.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %412 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %regs.i.i.i, align 4
  %414 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %413) #8, !srcloc !65
  %conv1.i4.i114.i.i = and i32 %414, -218103808
  %415 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %416, i32 %conv1.i4.i114.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %417 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i116.i.i = getelementptr i8, ptr %418, i32 356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i116.i.i, i32 0) #8, !srcloc !64
  %419 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %regs.i.i.i, align 4
  %421 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %420) #8, !srcloc !65
  %422 = and i32 %421, -218103808
  %conv5.i.i117.i.i = or i32 %422, 201326592
  %423 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %424, i32 %conv5.i.i117.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %425 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %regs.i.i.i, align 4
  %427 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %426) #8, !srcloc !65
  %conv1.i4.i118.i.i = and i32 %427, -218103808
  %428 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %429, i32 %conv1.i4.i118.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %430 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i120.i.i = getelementptr i8, ptr %431, i32 360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i120.i.i, i32 -1040187392) #8, !srcloc !64
  %432 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %regs.i.i.i, align 4
  %434 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #8, !srcloc !65
  %435 = and i32 %434, -218103808
  %conv5.i.i121.i.i = or i32 %435, 201326592
  %436 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %437, i32 %conv5.i.i121.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %438 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %regs.i.i.i, align 4
  %440 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %439) #8, !srcloc !65
  %conv1.i4.i122.i.i = and i32 %440, -218103808
  %441 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %442, i32 %conv1.i4.i122.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %443 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i124.i.i = getelementptr i8, ptr %444, i32 364
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124.i.i, i32 -1577058304) #8, !srcloc !64
  %445 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %regs.i.i.i, align 4
  %447 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %446) #8, !srcloc !65
  %448 = and i32 %447, -218103808
  %conv5.i.i125.i.i = or i32 %448, 201326592
  %449 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %450, i32 %conv5.i.i125.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %451 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %regs.i.i.i, align 4
  %453 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %452) #8, !srcloc !65
  %conv1.i4.i126.i.i = and i32 %453, -218103808
  %454 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %455, i32 %conv1.i4.i126.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %456 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i128.i.i = getelementptr i8, ptr %457, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i128.i.i, i32 234881024) #8, !srcloc !64
  %458 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %regs.i.i.i, align 4
  %460 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %459) #8, !srcloc !65
  %461 = and i32 %460, -218103808
  %conv5.i.i129.i.i = or i32 %461, 201326592
  %462 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %463, i32 %conv5.i.i129.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %464 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %regs.i.i.i, align 4
  %466 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %465) #8, !srcloc !65
  %conv1.i4.i130.i.i = and i32 %466, -218103808
  %467 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %468, i32 %conv1.i4.i130.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %469 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i132.i.i = getelementptr i8, ptr %470, i32 372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i132.i.i, i32 536870912) #8, !srcloc !64
  %471 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %regs.i.i.i, align 4
  %473 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %472) #8, !srcloc !65
  %474 = and i32 %473, -218103808
  %conv5.i.i133.i.i = or i32 %474, 201326592
  %475 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %476, i32 %conv5.i.i133.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %477 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %regs.i.i.i, align 4
  %479 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %478) #8, !srcloc !65
  %conv1.i4.i134.i.i = and i32 %479, -218103808
  %480 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %481, i32 %conv1.i4.i134.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  %482 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i136.i.i = getelementptr i8, ptr %483, i32 376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i136.i.i, i32 0) #8, !srcloc !64
  %484 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %regs.i.i.i, align 4
  %486 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %485) #8, !srcloc !65
  %487 = and i32 %486, -218103808
  %conv5.i.i137.i.i = or i32 %487, 201326592
  %488 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %489, i32 %conv5.i.i137.i.i) #8, !srcloc !64
  call void @usleep_range_state(i32 noundef 90, i32 noundef 100, i32 noundef 2) #8
  %490 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %regs.i.i.i, align 4
  %492 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %491) #8, !srcloc !65
  %conv1.i4.i138.i.i = and i32 %492, -218103808
  %493 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %regs.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %494, i32 %conv1.i4.i138.i.i) #8, !srcloc !64
  br label %rk3066_hdmi_setup.exit

rk3066_hdmi_setup.exit:                           ; preds = %if.else4.i.i, %if.then3.i.i, %if.then.i.i
  call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #8
  call fastcc void @rk3066_hdmi_set_power_mode(ptr noundef %add.ptr, i32 noundef 128) #8
  %495 = ptrtoint ptr %tmdsclk.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %tmdsclk.i, align 8
  %div.i.i = udiv i32 %496, 200000
  %and.i25.i = shl i32 %div.i.i, 24
  %497 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i27.i = getelementptr i8, ptr %498, i32 516
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27.i, i32 %and.i25.i) #8, !srcloc !64
  %499 = call i32 @llvm.bswap.i32(i32 %div.i.i) #8
  %500 = shl i32 %499, 8
  %501 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %502, i32 520
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %500) #8, !srcloc !64
  %503 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i28.i = getelementptr i8, ptr %504, i32 584
  %505 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i28.i) #8, !srcloc !65
  %conv1.i.i29.i = and i32 %505, -117440512
  %506 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %507, i32 584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i.i, i32 %conv1.i.i29.i) #8, !srcloc !64
  %508 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %509, i32 592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 100663296) #8, !srcloc !64
  %510 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i31.i = getelementptr i8, ptr %511, i32 276
  %512 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31.i) #8, !srcloc !65
  %conv1.i32.i = and i32 %512, -67108864
  %conv5.i33.i = or i32 %conv1.i32.i, 33554432
  %513 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i12.i34.i = getelementptr i8, ptr %514, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i34.i, i32 %conv5.i33.i) #8, !srcloc !64
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rk3066_hdmi_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readnone %conn_state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output_mode = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 2
  %0 = ptrtoint ptr %output_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %output_mode, align 4
  %output_type = getelementptr inbounds %struct.rockchip_crtc_state, ptr %crtc_state, i32 0, i32 1
  %1 = ptrtoint ptr %output_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 11, ptr %output_type, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_match_cea_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc = getelementptr i8, ptr %connector, i32 1116
  %0 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %1) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %call) #8
  %sink_is_hdmi = getelementptr i8, ptr %connector, i32 1128
  %frombool = zext i1 %call4 to i8
  %2 = ptrtoint ptr %sink_is_hdmi to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %sink_is_hdmi, align 4
  %call5 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call) #8
  %call6 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call) #8
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp = icmp ugt i8 %call, 1
  %. = select i1 %cmp, i32 0, i32 -2
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rk3066_hdmi_connector_best_encoder(ptr noundef readnone %connector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr i8, ptr %connector, i32 1040
  ret ptr %encoder
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %connector, i32 -4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 892
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_hdmi_probe_single_connector_modes(ptr noundef %connector, i32 noundef %maxX, i32 noundef %maxY) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %maxX, i32 1920)
  %1 = tail call i32 @llvm.umin.i32(i32 %maxY, i32 1080)
  %call = tail call i32 @drm_helper_probe_single_connector_modes(ptr noundef %connector, i32 noundef %0, i32 noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3066_hdmi_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #8
  tail call void @drm_connector_cleanup(ptr noundef %connector) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 867, i32 11}
!2 = !{ptr @rk3066_hdmi_driver, !3, !"rk3066_hdmi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 863, i32 24}
!4 = !{ptr @rk3066_hdmi_ops, !5, !"rk3066_hdmi_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 840, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 763, i32 33}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 765, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 771, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 776, i32 11}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 778, i32 3}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 811, i32 3}
!19 = !{ptr @rk3066_hdmi_i2c_adapter.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 713, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 722, i32 22}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 727, i32 3}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 735, i32 2}
!28 = !{ptr @init_completion.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/completion.h", i32 87, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rk3066_hdmi_algorithm, !32, !"rk3066_hdmi_algorithm", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 698, i32 35}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 669, i32 3}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 108, i32 2}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 109, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 124, i32 3}
!41 = !{ptr @rk3066_hdmi_encoder_helper_funcs, !42, !"rk3066_hdmi_encoder_helper_funcs", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 447, i32 33}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 412, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 402, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rk3066_hdmi_connector_helper_funcs, !50, !"rk3066_hdmi_connector_helper_funcs", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 532, i32 35}
!51 = !{ptr @rk3066_hdmi_connector_funcs, !52, !"rk3066_hdmi_connector_funcs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 522, i32 41}
!53 = !{ptr @rk3066_hdmi_dt_ids, !54, !"rk3066_hdmi_dt_ids", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/rockchip/rk3066_hdmi.c", i32 857, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 6975672}
!65 = !{i64 6976090}
!66 = !{!"auto-init"}
!67 = !{i8 0, i8 2}
