; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/inno_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/inno_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.inno_hdmi = type { ptr, ptr, i32, ptr, ptr, %struct.drm_connector, %struct.drm_encoder, ptr, ptr, i32, %struct.hdmi_data_info, %struct.drm_display_mode }
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
%struct.hdmi_data_info = type { i32, i8, i8, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.inno_hdmi_i2c = type { %struct.i2c_adapter, i8, i8, %struct.mutex, %struct.completion }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"innohdmi-rockchip\00", [46 x i8] zeroinitializer }, align 32
@inno_hdmi_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-inno-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@inno_hdmi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @inno_hdmi_probe, ptr @inno_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @inno_hdmi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@inno_hdmi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @inno_hdmi_bind, ptr @inno_hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Unable to get HDMI pclk clk\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* Cannot enable HDMI pclk clock: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@inno_hdmi_i2c_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@inno_hdmi_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @inno_hdmi_i2c_xfer, ptr null, ptr null, ptr null, ptr @inno_hdmi_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Inno HDMI\00", [22 x i8] zeroinitializer }, align 32
@inno_hdmi_i2c_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 795, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot add %s I2C adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"inno_hdmi_i2c_adapter\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/rockchip/inno_hdmi.c\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@inno_hdmi_i2c_adapter._entry_ptr = internal global ptr @inno_hdmi_i2c_adapter._entry, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"registered %s I2C bus driver\0A\00", [34 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xfer: num: %d/%d, len: %d, flags: %#x\0A\00", [57 x i8] zeroinitializer }, align 32
@inno_hdmi_encoder_helper_funcs = internal global { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @inno_hdmi_encoder_mode_fixup, ptr null, ptr null, ptr @inno_hdmi_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @inno_hdmi_encoder_disable, ptr @inno_hdmi_encoder_enable, ptr @inno_hdmi_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@inno_hdmi_connector_helper_funcs = internal global { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @inno_hdmi_connector_get_modes, ptr null, ptr @inno_hdmi_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@inno_hdmi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @inno_hdmi_connector_detect, ptr null, ptr @inno_hdmi_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @inno_hdmi_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@coeff_csc = internal constant { [6 x [24 x i8]], [48 x i8] } { [6 x [24 x i8]] [[24 x i8] c"\04\A7\00\00\06b\02\CC\04\A7\11\90\13@\00\9A\04\A7\08\12\00\00\03\02", [24 x i8] c"\04\00\00\00\05\9B\02\F8\04\00\11`\12\DB\00\87\04\00\07\16\00\00\02\E3", [24 x i8] c"\04\A7\00\00\07,\02\F8\04\A7\10\DA\12\22\00M\04\A7\08t\00\00\03!", [24 x i8] c"\11_\01\82\10#\00\80\02\1C\00\A1\006\00\1E\11)\10Y\01\82\00\80", [24 x i8] c"\11\98\01\C1\10(\00\80\02t\00\BB\00?\00\10\11Z\10g\01\C1\00\80", [24 x i8] c"\00\00\03o\00\00\00\10\03o\00\00\00\00\00\10\00\00\00\00\03o\00\10"], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 48, i64 80]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 8, i64 2, i64 3, i64 6, i64 7, i64 17, i64 18, i64 21, i64 22]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 930, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"inno_hdmi_dt_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 919, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"inno_hdmi_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 926, i32 24 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"inno_hdmi_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 902, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 827, i32 39 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 829, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 835, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 781, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"inno_hdmi_algorithm\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 766, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 790, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 795, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 802, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 87, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 737, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [31 x i8] c"inno_hdmi_encoder_helper_funcs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 528, i32 40 }
@___asan_gen_.92 = private unnamed_addr constant [33 x i8] c"inno_hdmi_connector_helper_funcs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 595, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"inno_hdmi_connector_funcs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 586, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"coeff_csc\00", align 1
@___asan_gen_.99 = private constant [40 x i8] c"../drivers/gpu/drm/rockchip/inno_hdmi.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 79, i32 19 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @inno_hdmi_i2c_adapter._entry, ptr @inno_hdmi_i2c_adapter._entry_ptr, ptr @.str, ptr @inno_hdmi_dt_ids, ptr @inno_hdmi_driver, ptr @inno_hdmi_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @inno_hdmi_i2c_adapter.__key, ptr @.str.6, ptr @inno_hdmi_algorithm, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @init_completion.__key, ptr @.str.15, ptr @.str.16, ptr @inno_hdmi_encoder_helper_funcs, ptr @inno_hdmi_connector_helper_funcs, ptr @inno_hdmi_connector_funcs, ptr @coeff_csc], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_i2c_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_i2c_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_hdmi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coeff_csc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @inno_hdmi_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @inno_hdmi_ops) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
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
  %drm_dev = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %drm_dev, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 8
  %call10 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  %pclk = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %pclk, align 4
  %cmp.i101 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  %9 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pclk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call.i102 = tail call i32 @clk_prepare(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.if.then21_crit_edge

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call10) #8
  br label %if.then21

if.then21:                                        ; preds = %if.then3.i, %if.end17.if.then21_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i102, %if.end17.if.then21_crit_edge ]
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  %call24 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.err_disable_clk_crit_edge, label %if.end26

if.end23.err_disable_clk_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clk

if.end26:                                         ; preds = %if.end23
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !57
  %17 = and i32 %16, -553648128
  %conv5.i.i = or i32 %17, 536870912
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %conv5.i.i) #8, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #8
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !57
  %24 = and i32 %23, -1090519040
  %conv5.i6.i = or i32 %24, 1073741824
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %conv5.i6.i) #8, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #8
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !57
  %conv1.i8.i = and i32 %30, -402653184
  %conv5.i9.i = or i32 %conv1.i8.i, 352321536
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %conv5.i9.i) #8, !srcloc !58
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8
  %conv1.i.i.i.i = and i32 %35, -50331648
  %conv5.i.i.i.i = or i32 %conv1.i.i.i.i, 33554432
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %conv5.i.i.i.i) #8, !srcloc !58
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 1862270976) #8, !srcloc !58
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  %add.ptr.i19.i.i = getelementptr i8, ptr %41, i32 904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 -1157627904) #8, !srcloc !58
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %add.ptr.i21.i.i = getelementptr i8, ptr %43, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 352321536) #8, !srcloc !58
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr.i23.i.i = getelementptr i8, ptr %45, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 335544320) #8, !srcloc !58
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %add.ptr.i25.i.i = getelementptr i8, ptr %47, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 268435456) #8, !srcloc !58
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %add.ptr.i27.i.i = getelementptr i8, ptr %49, i32 900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 251658240) #8, !srcloc !58
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %add.ptr.i29.i.i = getelementptr i8, ptr %51, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 0) #8, !srcloc !58
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 8
  %add.ptr.i31.i.i = getelementptr i8, ptr %53, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 16777216) #8, !srcloc !58
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 8
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8
  %conv1.i.i33.i.i = and i32 %56, -50331648
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %conv1.i.i33.i.i) #8, !srcloc !58
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %60, i32 noundef 1512, i32 noundef 3520) #8
  %tobool.not.i103 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i103, label %inno_hdmi_i2c_adapter.exit.thread, label %do.body.i

inno_hdmi_i2c_adapter.exit.thread:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %ddc114 = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 8
  br label %if.then30

do.body.i:                                        ; preds = %if.end26
  %lock.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %call.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @inno_hdmi_i2c_adapter.__key) #8
  %cmp.i104 = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %call.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %cmp.i104 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %cmp.i104, align 4
  %wait.i.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %call.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #8
  %class.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 8, ptr %class.i, align 4
  %63 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %call.i.i, align 8
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 8
  %parent.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i.i, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 27
  %67 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node.i, align 8
  %of_node7.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i.i, i32 0, i32 9, i32 27
  %69 = ptrtoint ptr %of_node7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %of_node7.i, align 8
  %algo.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @inno_hdmi_algorithm, ptr %algo.i, align 8
  %name.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i.i, i32 0, i32 12
  %call8.i = tail call i32 @strlcpy(ptr noundef %name.i, ptr noundef nonnull @.str.7, i32 noundef 48) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i.i, i32 0, i32 9, i32 8
  %71 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %call9.i = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end20.i, label %do.end14.i

do.end14.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.8, ptr noundef %name.i) #11
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 8
  tail call void @devm_kfree(ptr noundef %75, ptr noundef nonnull %call.i.i) #8
  %76 = inttoptr i32 %call9.i to ptr
  br label %inno_hdmi_i2c_adapter.exit

if.end20.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c21.i = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 7
  %77 = ptrtoint ptr %i2c21.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i.i, ptr %i2c21.i, align 8
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %79, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %name.i) #8
  br label %inno_hdmi_i2c_adapter.exit

inno_hdmi_i2c_adapter.exit:                       ; preds = %if.end20.i, %do.end14.i
  %retval.0.i105 = phi ptr [ %76, %do.end14.i ], [ %call.i.i, %if.end20.i ]
  %ddc = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 8
  %80 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %retval.0.i105, ptr %ddc, align 4
  %cmp.i106 = icmp ugt ptr %retval.0.i105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %inno_hdmi_i2c_adapter.exit.if.then30_crit_edge, label %if.end34

inno_hdmi_i2c_adapter.exit.if.then30_crit_edge:   ; preds = %inno_hdmi_i2c_adapter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %inno_hdmi_i2c_adapter.exit.if.then30_crit_edge, %inno_hdmi_i2c_adapter.exit.thread
  %ddc117 = phi ptr [ %ddc114, %inno_hdmi_i2c_adapter.exit.thread ], [ %ddc, %inno_hdmi_i2c_adapter.exit.if.then30_crit_edge ]
  %retval.0.i105116 = phi ptr [ inttoptr (i32 -12 to ptr), %inno_hdmi_i2c_adapter.exit.thread ], [ %retval.0.i105, %inno_hdmi_i2c_adapter.exit.if.then30_crit_edge ]
  %81 = ptrtoint ptr %retval.0.i105116 to i32
  %82 = ptrtoint ptr %ddc117 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %ddc117, align 4
  br label %err_disable_clk

if.end34:                                         ; preds = %inno_hdmi_i2c_adapter.exit
  %83 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pclk, align 4
  %call36 = tail call i32 @clk_get_rate(ptr noundef %84) #8
  %tmds_rate = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 9
  %85 = ptrtoint ptr %tmds_rate to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call36, ptr %tmds_rate, align 8
  tail call fastcc void @inno_hdmi_i2c_init(ptr noundef nonnull %call.i)
  %call37 = tail call fastcc i32 @inno_hdmi_register(ptr noundef %data, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.err_put_adapter_crit_edge

if.end34.err_put_adapter_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_adapter

if.end40:                                         ; preds = %if.end34
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %86 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %driver_data.i, align 4
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 8
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 800
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !57
  %90 = and i32 %89, -553648128
  %conv5.i = or i32 %90, 536870912
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %92, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %conv5.i) #8, !srcloc !58
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %93 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i107 = icmp eq ptr %94, null
  br i1 %tobool.not.i107, label %if.end.i108, label %if.end40.dev_name.exit_crit_edge

if.end40.dev_name.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i108:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i108, %if.end40.dev_name.exit_crit_edge
  %retval.0.i109 = phi ptr [ %96, %if.end.i108 ], [ %94, %if.end40.dev_name.exit_crit_edge ]
  %call42 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call24, ptr noundef nonnull @inno_hdmi_hardirq, ptr noundef nonnull @inno_hdmi_irq, i32 noundef 128, ptr noundef %retval.0.i109, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %err_cleanup_hdmi, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_cleanup_hdmi:                                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %connector = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 5
  %funcs = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 5, i32 21
  %97 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %funcs, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %destroy, align 4
  tail call void %100(ptr noundef %connector) #8
  %encoder = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 6
  %funcs47 = getelementptr inbounds %struct.inno_hdmi, ptr %call.i, i32 0, i32 6, i32 10
  %101 = ptrtoint ptr %funcs47 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %funcs47, align 8
  %destroy48 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %destroy48 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %destroy48, align 4
  tail call void %104(ptr noundef %encoder) #8
  br label %err_put_adapter

err_put_adapter:                                  ; preds = %err_cleanup_hdmi, %if.end34.err_put_adapter_crit_edge
  %ret.0 = phi i32 [ %call37, %if.end34.err_put_adapter_crit_edge ], [ %call42, %err_cleanup_hdmi ]
  %105 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ddc, align 4
  tail call void @i2c_put_adapter(ptr noundef %106) #8
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_put_adapter, %if.then30, %if.end23.err_disable_clk_crit_edge
  %ret.1 = phi i32 [ %81, %if.then30 ], [ %ret.0, %err_put_adapter ], [ %call24, %if.end23.err_disable_clk_crit_edge ]
  %107 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %108) #8
  tail call void @clk_unprepare(ptr noundef %108) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %dev_name.exit.cleanup_crit_edge, %if.then21, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %11, %if.then13 ], [ %retval.0.i.ph, %if.then21 ], [ %ret.1, %err_disable_clk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %connector = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 5
  %funcs = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 5, i32 21
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 8
  %destroy = getelementptr inbounds %struct.drm_connector_funcs, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy, align 4
  tail call void %5(ptr noundef %connector) #8
  %encoder = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 6
  %funcs2 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 6, i32 10
  %6 = ptrtoint ptr %funcs2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs2, align 8
  %destroy3 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %destroy3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destroy3, align 4
  tail call void %9(ptr noundef %encoder) #8
  %ddc = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc, align 4
  tail call void @i2c_put_adapter(ptr noundef %11) #8
  %pclk = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk, align 4
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inno_hdmi_i2c_init(ptr nocapture noundef readonly %hdmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tmds_rate = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 9
  %0 = ptrtoint ptr %tmds_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tmds_rate, align 8
  %div = udiv i32 %1, 400000
  %and = shl i32 %div, 24
  %regs.i = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #8, !srcloc !58
  %4 = tail call i32 @llvm.bswap.i32(i32 %div)
  %5 = shl i32 %4, 8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %7, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %5) #8, !srcloc !58
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #8, !srcloc !58
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %11, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 67108864) #8, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inno_hdmi_register(ptr noundef %drm, ptr noundef %hdmi) unnamed_addr #0 align 64 {
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
  %possible_crtcs = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 6, i32 6
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
  %encoder1 = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 6
  %helper_private.i = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 6, i32 11
  %5 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @inno_hdmi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call4 = tail call i32 @drm_simple_encoder_init(ptr noundef %drm, ptr noundef %encoder1, i32 noundef 2) #8
  %connector = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 5
  %polled = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 5, i32 33
  %6 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %polled, align 4
  %helper_private.i23 = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 5, i32 35
  %7 = ptrtoint ptr %helper_private.i23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @inno_hdmi_connector_helper_funcs, ptr %helper_private.i23, align 4
  %ddc = getelementptr inbounds %struct.inno_hdmi, ptr %hdmi, i32 0, i32 8
  %8 = ptrtoint ptr %ddc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc, align 4
  %call7 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %drm, ptr noundef %connector, ptr noundef nonnull @inno_hdmi_connector_funcs, i32 noundef 11, ptr noundef %9) #8
  %call9 = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector, ptr noundef %encoder1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_hardirq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.inno_hdmi, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.inno_hdmi, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 772
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !57
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %7, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 67108864) #8, !srcloc !58
  %cmp.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %cmp.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end.i ], [ 0, %if.then.if.end_crit_edge ]
  %regs.i = getelementptr inbounds %struct.inno_hdmi, ptr %dev_id, i32 0, i32 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 800
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !57
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i9 = getelementptr i8, ptr %13, i32 800
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #8, !srcloc !57
  %15 = and i32 %14, -50331648
  %conv5.i = or i32 %15, 33554432
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %17, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %conv5.i) #8, !srcloc !58
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %ret.1 = phi i32 [ 2, %if.then3 ], [ %ret.0, %if.end.if.end4_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr inbounds %struct.inno_hdmi, ptr %dev_id, i32 0, i32 5
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c1 = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 8
  %lock = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %regs.i = getelementptr inbounds %struct.inno_hdmi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #8, !srcloc !58
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %7, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 67108864) #8, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp54 = icmp sgt i32 %num, 0
  br i1 %cmp54, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.055 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add = add nuw nsw i32 %i.055, 1
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.055
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.055, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  %conv = zext i16 %11 to i32
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.055, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %conv3 = zext i16 %13 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %add, i32 noundef %num, i32 noundef %conv, i32 noundef %conv3) #8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %buf1.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.055, i32 3
  %19 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf1.i, align 4
  %21 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c1, align 8
  %cmp.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %22, i32 0, i32 4
  %call.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmp.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.for.end_crit_edge, label %while.cond.preheader.i

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.cond.preheader.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool2.not8.i = icmp eq i16 %18, 0
  br i1 %tobool2.not8.i, label %while.cond.preheader.i.if.end_crit_edge, label %while.body.i.preheader

while.cond.preheader.i.if.end_crit_edge:          ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  %conv.i = zext i16 %18 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %buf.010.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %20, %while.body.i.preheader ]
  %length.09.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i, %while.body.i.preheader ]
  %dec.i = add nsw i32 %length.09.i, -1
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 320
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !57
  %26 = lshr i32 %25, 24
  %conv1.i.i = trunc i32 %26 to i8
  %incdec.ptr.i = getelementptr i8, ptr %buf.010.i, i32 1
  %27 = ptrtoint ptr %buf.010.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv1.i.i, ptr %buf.010.i, align 1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp.not.i = icmp eq i16 %18, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false.i:                                  ; preds = %if.else
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx, align 4
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i16 %29, label %lor.lhs.false.i.for.end_crit_edge [
    i16 80, label %lor.lhs.false.i.if.end.i_crit_edge
    i16 48, label %lor.lhs.false.i.if.end.i_crit_edge60
  ]

lor.lhs.false.i.if.end.i_crit_edge60:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.lhs.false.i.for.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge60
  %31 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c1, align 8
  %cmp9.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %cmp9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cmp9.i, align 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %35)
  %cmp12.i = icmp eq i16 %35, 48
  br i1 %cmp12.i, label %if.then14.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.055, i32 3
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %40 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c1, align 8
  %segment_addr.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %segment_addr.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %segment_addr.i, align 1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %43)
  %.pr.i = load i16, ptr %arrayidx, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end.i.if.end16.i_crit_edge
  %44 = phi i16 [ %.pr.i, %if.then14.i ], [ %35, %if.end.i.if.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %44)
  %cmp19.i = icmp eq i16 %44, 80
  br i1 %cmp19.i, label %if.then21.i, label %if.end16.i.if.end25.i_crit_edge

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf22.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.055, i32 3
  %45 = ptrtoint ptr %buf22.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf22.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %49 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c1, align 8
  %ddc_addr.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %ddc_addr.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %ddc_addr.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end16.i.if.end25.i_crit_edge
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i46 = getelementptr i8, ptr %53, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46, i32 0) #8, !srcloc !58
  %54 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c1, align 8
  %ddc_addr27.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %ddc_addr27.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ddc_addr27.i, align 8
  %conv28.i = zext i8 %57 to i32
  %58 = shl nuw i32 %conv28.i, 24
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %60, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %58) #8, !srcloc !58
  %61 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c1, align 8
  %segment_addr30.i = getelementptr inbounds %struct.inno_hdmi_i2c, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %segment_addr30.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %segment_addr30.i, align 1
  %conv31.i = zext i8 %64 to i32
  %65 = shl nuw i32 %conv31.i, 24
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 8
  %add.ptr.i48.i = getelementptr i8, ptr %67, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %65) #8, !srcloc !58
  br label %if.end

if.end:                                           ; preds = %if.end25.i, %while.body.i.if.end_crit_edge, %while.cond.preheader.i.if.end_crit_edge
  %exitcond.not = icmp eq i32 %add, %num
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %lor.lhs.false.i.for.end_crit_edge, %if.else.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %68 = phi i32 [ %num, %entry.for.end_crit_edge ], [ -11, %if.then.for.end_crit_edge ], [ -22, %lor.lhs.false.i.for.end_crit_edge ], [ -22, %if.else.for.end_crit_edge ], [ %num, %if.end.for.end_crit_edge ]
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %70, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #8, !srcloc !58
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inno_hdmi_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @inno_hdmi_encoder_mode_fixup(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adj_mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_encoder_mode_set(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adj_mode) #0 align 64 {
entry:
  %packed_frame.i.i9.i = alloca [17 x i8], align 1
  %frame.i10.i = alloca %union.hdmi_infoframe, align 4
  %packed_frame.i.i.i = alloca [17 x i8], align 1
  %frame.i.i = alloca %union.hdmi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %adj_mode) #8
  %conv.i = zext i8 %call.i to i32
  %hdmi_data.i = getelementptr i8, ptr %encoder, i32 84
  %0 = ptrtoint ptr %hdmi_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv.i, ptr %hdmi_data.i, align 4
  %enc_in_format.i = getelementptr i8, ptr %encoder, i32 92
  %1 = ptrtoint ptr %enc_in_format.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %enc_in_format.i, align 4
  %enc_out_format.i = getelementptr i8, ptr %encoder, i32 96
  %2 = ptrtoint ptr %enc_out_format.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %enc_out_format.i, align 4
  %3 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %call.i, label %if.else.i [
    i8 6, label %entry.if.end.i_crit_edge
    i8 7, label %entry.if.end.i_crit_edge3
    i8 21, label %entry.if.end.i_crit_edge4
    i8 22, label %entry.if.end.i_crit_edge5
    i8 2, label %entry.if.end.i_crit_edge6
    i8 3, label %entry.if.end.i_crit_edge7
    i8 17, label %entry.if.end.i_crit_edge8
    i8 18, label %entry.if.end.i_crit_edge9
  ]

entry.if.end.i_crit_edge9:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.end.i_crit_edge8:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.end.i_crit_edge7:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.end.i_crit_edge6:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.end.i_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.end.i_crit_edge4:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.end.i_crit_edge3:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge3, %entry.if.end.i_crit_edge4, %entry.if.end.i_crit_edge5, %entry.if.end.i_crit_edge6, %entry.if.end.i_crit_edge7, %entry.if.end.i_crit_edge8, %entry.if.end.i_crit_edge9
  %.sink.i = phi i32 [ 2, %if.else.i ], [ 1, %entry.if.end.i_crit_edge ], [ 1, %entry.if.end.i_crit_edge3 ], [ 1, %entry.if.end.i_crit_edge4 ], [ 1, %entry.if.end.i_crit_edge5 ], [ 1, %entry.if.end.i_crit_edge6 ], [ 1, %entry.if.end.i_crit_edge7 ], [ 1, %entry.if.end.i_crit_edge8 ], [ 1, %entry.if.end.i_crit_edge9 ]
  %colorimetry42.i = getelementptr i8, ptr %encoder, i32 100
  %4 = ptrtoint ptr %colorimetry42.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink.i, ptr %colorimetry42.i, align 4
  %regs.i.i.i = getelementptr i8, ptr %encoder, i32 -1048
  %5 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !57
  %8 = and i32 %7, -67108864
  %conv5.i.i = or i32 %8, 50331648
  %9 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i13.i.i = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i, i32 %conv5.i.i) #8, !srcloc !58
  %sink_is_hdmi.i = getelementptr i8, ptr %encoder, i32 88
  %11 = ptrtoint ptr %sink_is_hdmi.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sink_is_hdmi.i, align 4, !range !59
  %13 = shl nuw nsw i8 %12, 1
  %shl.i = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %shl.i, 24
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #8, !srcloc !58
  %flags.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 11
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %and.i.i = shl i32 %18, 3
  %19 = and i32 %and.i.i, 8
  %and2.i.i = and i32 %18, 4
  %or.i.i = or i32 %and2.i.i, %19
  %and7.i.i = lshr i32 %18, 3
  %20 = and i32 %and7.i.i, 2
  %or5.i.i = or i32 %or.i.i, %20
  %or10.i.i = shl nuw nsw i32 %or5.i.i, 24
  %21 = or i32 %or10.i.i, 16777216
  %22 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i2.i = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %21) #8, !srcloc !58
  %htotal.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 4
  %24 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %htotal.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %and11.i.i = shl i32 %conv.i.i, 24
  %26 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %27, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %and11.i.i) #8, !srcloc !58
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #8
  %29 = shl i32 %28, 8
  %30 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %31, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %29) #8, !srcloc !58
  %32 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %htotal.i.i, align 2
  %conv14.i.i = zext i16 %33 to i32
  %hdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 1
  %34 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hdisplay.i.i, align 4
  %conv15.i.i = zext i16 %35 to i32
  %sub.i.i = sub nsw i32 %conv14.i.i, %conv15.i.i
  %and16.i.i = shl i32 %sub.i.i, 24
  %36 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %37, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %and16.i.i) #8, !srcloc !58
  %38 = shl i32 %sub.i.i, 16
  %and18.i.i = and i32 %38, -16777216
  %39 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %and18.i.i) #8, !srcloc !58
  %hsync_start.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 2
  %41 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hsync_start.i.i, align 2
  %conv19.i.i = zext i16 %42 to i32
  %43 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hdisplay.i.i, align 4
  %conv21.i.i = zext i16 %44 to i32
  %sub22.i.i = sub nsw i32 %conv19.i.i, %conv21.i.i
  %and23.i.i = shl i32 %sub22.i.i, 24
  %45 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %46, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %and23.i.i) #8, !srcloc !58
  %47 = shl i32 %sub22.i.i, 16
  %and25.i.i = and i32 %47, -16777216
  %48 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %49, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %and25.i.i) #8, !srcloc !58
  %hsync_end.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 3
  %50 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hsync_end.i.i, align 4
  %conv26.i.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hsync_start.i.i, align 2
  %conv28.i.i = zext i16 %53 to i32
  %sub29.i.i = sub nsw i32 %conv26.i.i, %conv28.i.i
  %and30.i.i = shl i32 %sub29.i.i, 24
  %54 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i14.i.i = getelementptr i8, ptr %55, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %and30.i.i) #8, !srcloc !58
  %56 = shl i32 %sub29.i.i, 16
  %and32.i.i = and i32 %56, -16777216
  %57 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %58, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %and32.i.i) #8, !srcloc !58
  %vtotal.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 9
  %59 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vtotal.i.i, align 4
  %conv33.i.i = zext i16 %60 to i32
  %and34.i.i = shl i32 %conv33.i.i, 24
  %61 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i18.i.i = getelementptr i8, ptr %62, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %and34.i.i) #8, !srcloc !58
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv33.i.i) #8
  %64 = shl i32 %63, 8
  %65 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i20.i.i = getelementptr i8, ptr %66, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 %64) #8, !srcloc !58
  %67 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vtotal.i.i, align 4
  %conv38.i.i = zext i16 %68 to i32
  %vdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 6
  %69 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vdisplay.i.i, align 2
  %conv39.i.i = zext i16 %70 to i32
  %sub40.i.i = sub nsw i32 %conv38.i.i, %conv39.i.i
  %and41.i.i = shl i32 %sub40.i.i, 24
  %71 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %72, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %and41.i.i) #8, !srcloc !58
  %vsync_start.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 7
  %73 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vsync_start.i.i, align 4
  %conv42.i.i = zext i16 %74 to i32
  %75 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vdisplay.i.i, align 2
  %conv44.i.i = zext i16 %76 to i32
  %sub45.i.i = sub nsw i32 %conv42.i.i, %conv44.i.i
  %and46.i.i = shl i32 %sub45.i.i, 24
  %77 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i24.i.i = getelementptr i8, ptr %78, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %and46.i.i) #8, !srcloc !58
  %vsync_end.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj_mode, i32 0, i32 8
  %79 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vsync_end.i.i, align 2
  %conv47.i.i = zext i16 %80 to i32
  %81 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vsync_start.i.i, align 4
  %conv49.i.i = zext i16 %82 to i32
  %sub50.i.i = sub nsw i32 %conv47.i.i, %conv49.i.i
  %and51.i.i = shl i32 %sub50.i.i, 24
  %83 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i26.i.i = getelementptr i8, ptr %84, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %and51.i.i) #8, !srcloc !58
  %85 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i28.i.i = getelementptr i8, ptr %86, i32 948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i.i, i32 503316480) #8, !srcloc !58
  %87 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i30.i.i = getelementptr i8, ptr %88, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 738197504) #8, !srcloc !58
  %89 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i32.i.i = getelementptr i8, ptr %90, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i, i32 16777216) #8, !srcloc !58
  %91 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i4.i = getelementptr i8, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 16777216) #8, !srcloc !58
  %93 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i3.i.i = getelementptr i8, ptr %94, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 805306368) #8, !srcloc !58
  %95 = ptrtoint ptr %enc_in_format.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %enc_in_format.i, align 4
  %97 = ptrtoint ptr %enc_out_format.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %enc_out_format.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp.i.i = icmp ne i32 %96, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cond.i.i = icmp eq i32 %96, 1
  %or.cond.i.i = or i1 %cond.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i5.i.i = getelementptr i8, ptr %100, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 402653184) #8, !srcloc !58
  %101 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %102, i32 12
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !57
  %conv1.i.i.i = and i32 %103, 2113929216
  %conv5.i.i.i = or i32 %conv1.i.i.i, 16777216
  %104 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i13.i.i.i = getelementptr i8, ptr %105, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i.i, i32 %conv5.i.i.i) #8, !srcloc !58
  br label %inno_hdmi_config_video_csc.exit.i

if.end6.i.i:                                      ; preds = %if.end.i
  %106 = ptrtoint ptr %colorimetry42.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %colorimetry42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp7.i.i = icmp eq i32 %107, 1
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else22.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  %108 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %96, label %if.then8.i.i.if.end38.i.i_crit_edge [
    i32 0, label %land.lhs.true.i.i
    i32 2, label %land.lhs.true16.i.i
  ]

if.then8.i.i.if.end38.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

land.lhs.true.i.i:                                ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp12.i.i = icmp eq i32 %98, 2
  br i1 %cmp12.i.i, label %land.lhs.true.i.i.if.end38.i.i_crit_edge, label %if.else.thread.i.i

land.lhs.true.i.i.if.end38.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

if.else.thread.i.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

land.lhs.true16.i.i:                              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp18.i.i = icmp eq i32 %98, 0
  %spec.select.i.i = select i1 %cmp18.i.i, i32 16777216, i32 0
  %spec.select1.i.i = select i1 %cmp18.i.i, i32 -2147483648, i32 0
  br label %if.end38.i.i

if.else22.i.i:                                    ; preds = %if.end6.i.i
  %109 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %96, label %if.else22.i.i.if.end38.i.i_crit_edge [
    i32 0, label %land.lhs.true25.i.i
    i32 2, label %land.lhs.true32.i.i
  ]

if.else22.i.i.if.end38.i.i_crit_edge:             ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

land.lhs.true25.i.i:                              ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp27.i.i = icmp eq i32 %98, 2
  br i1 %cmp27.i.i, label %land.lhs.true25.i.i.if.end38.i.i_crit_edge, label %if.else29.thread.i.i

land.lhs.true25.i.i.if.end38.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

if.else29.thread.i.i:                             ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

land.lhs.true32.i.i:                              ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp34.i.i = icmp eq i32 %98, 0
  br i1 %cmp34.i.i, label %if.then35.i.i, label %land.lhs.true32.i.i.if.end38.i.i_crit_edge

land.lhs.true32.i.i.if.end38.i.i_crit_edge:       ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

if.then35.i.i:                                    ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then35.i.i, %land.lhs.true32.i.i.if.end38.i.i_crit_edge, %if.else29.thread.i.i, %land.lhs.true25.i.i.if.end38.i.i_crit_edge, %if.else22.i.i.if.end38.i.i_crit_edge, %land.lhs.true16.i.i, %if.else.thread.i.i, %land.lhs.true.i.i.if.end38.i.i_crit_edge, %if.then8.i.i.if.end38.i.i_crit_edge
  %c0_c2_change.0.i.i = phi i32 [ 16777216, %if.then35.i.i ], [ 0, %land.lhs.true32.i.i.if.end38.i.i_crit_edge ], [ 16777216, %land.lhs.true.i.i.if.end38.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true16.i.i ], [ 16777216, %land.lhs.true25.i.i.if.end38.i.i_crit_edge ], [ 0, %if.else.thread.i.i ], [ 0, %if.else29.thread.i.i ], [ 0, %if.then8.i.i.if.end38.i.i_crit_edge ], [ 0, %if.else22.i.i.if.end38.i.i_crit_edge ]
  %csc_enable.0.i.i = phi i32 [ 402653184, %if.then35.i.i ], [ 402653184, %land.lhs.true32.i.i.if.end38.i.i_crit_edge ], [ 419430400, %land.lhs.true.i.i.if.end38.i.i_crit_edge ], [ 402653184, %land.lhs.true16.i.i ], [ 419430400, %land.lhs.true25.i.i.if.end38.i.i_crit_edge ], [ 402653184, %if.else.thread.i.i ], [ 402653184, %if.else29.thread.i.i ], [ 402653184, %if.then8.i.i.if.end38.i.i_crit_edge ], [ 402653184, %if.else22.i.i.if.end38.i.i_crit_edge ]
  %csc_mode.0.i.i = phi i32 [ 2, %if.then35.i.i ], [ 0, %land.lhs.true32.i.i.if.end38.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.if.end38.i.i_crit_edge ], [ 0, %land.lhs.true16.i.i ], [ 4, %land.lhs.true25.i.i.if.end38.i.i_crit_edge ], [ 0, %if.else.thread.i.i ], [ 0, %if.else29.thread.i.i ], [ 0, %if.then8.i.i.if.end38.i.i_crit_edge ], [ 0, %if.else22.i.i.if.end38.i.i_crit_edge ]
  %auto_csc.0.i.i = phi i32 [ -2147483648, %if.then35.i.i ], [ 0, %land.lhs.true32.i.i.if.end38.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end38.i.i_crit_edge ], [ %spec.select1.i.i, %land.lhs.true16.i.i ], [ 0, %land.lhs.true25.i.i.if.end38.i.i_crit_edge ], [ 0, %if.else.thread.i.i ], [ 0, %if.else29.thread.i.i ], [ 0, %if.then8.i.i.if.end38.i.i_crit_edge ], [ 0, %if.else22.i.i.if.end38.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end38.i.i
  %i.017.i.i = phi i32 [ 0, %if.end38.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx40.i.i = getelementptr [6 x [24 x i8]], ptr @coeff_csc, i32 0, i32 %csc_mode.0.i.i, i32 %i.017.i.i
  %110 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx40.i.i, align 1
  %conv41.i.i = zext i8 %111 to i32
  %112 = shl nuw i32 %conv41.i.i, 24
  %113 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i.i, align 8
  %conv.i5.i = shl i32 %i.017.i.i, 2
  %conv.i.i.i = add nuw nsw i32 %conv.i5.i, 96
  %add.ptr.i7.i.i = getelementptr i8, ptr %114, i32 %conv.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %112) #8, !srcloc !58
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 24
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i9.i.i = getelementptr i8, ptr %116, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %csc_enable.0.i.i) #8, !srcloc !58
  %or44.i.i = or i32 %auto_csc.0.i.i, %c0_c2_change.0.i.i
  %117 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i11.i.i = getelementptr i8, ptr %118, i32 12
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11.i.i) #8, !srcloc !57
  %conv1.i12.i.i = and i32 %119, 2113929216
  %conv5.i13.i.i = or i32 %or44.i.i, %conv1.i12.i.i
  %120 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i13.i14.i.i = getelementptr i8, ptr %121, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i14.i.i, i32 %conv5.i13.i.i) #8, !srcloc !58
  br label %inno_hdmi_config_video_csc.exit.i

inno_hdmi_config_video_csc.exit.i:                ; preds = %for.end.i.i, %if.then5.i.i
  %122 = ptrtoint ptr %sink_is_hdmi.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %sink_is_hdmi.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool49.not.i = icmp eq i8 %123, 0
  br i1 %tobool49.not.i, label %inno_hdmi_config_video_csc.exit.i.inno_hdmi_setup.exit_crit_edge, label %if.then50.i

inno_hdmi_config_video_csc.exit.i.inno_hdmi_setup.exit_crit_edge: ; preds = %inno_hdmi_config_video_csc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inno_hdmi_setup.exit

if.then50.i:                                      ; preds = %inno_hdmi_config_video_csc.exit.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i.i) #8
  %124 = call ptr @memset(ptr %frame.i.i, i32 255, i32 68)
  %connector.i.i = getelementptr i8, ptr %encoder, i32 -1040
  %call.i.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i.i, ptr noundef %connector.i.i, ptr noundef %adj_mode) #8
  %125 = ptrtoint ptr %enc_out_format.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %enc_out_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %switch.selectcmp.i.i = icmp eq i32 %126, 1
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %switch.selectcmp1.i.i = icmp eq i32 %126, 2
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i32 2, i32 %switch.select.i.i
  %colorspace5.i.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frame.i.i, i32 0, i32 3
  %127 = ptrtoint ptr %colorspace5.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %switch.select2.i.i, ptr %colorspace5.i.i, align 4
  %128 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i7.i = getelementptr i8, ptr %129, i32 636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i7.i, i32 100663296) #8, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %if.then50.i.inno_hdmi_config_video_avi.exit.i_crit_edge

if.then50.i.inno_hdmi_config_video_avi.exit.i_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inno_hdmi_config_video_avi.exit.i

if.then1.i.i.i:                                   ; preds = %if.then50.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %packed_frame.i.i.i) #8
  %130 = call ptr @memset(ptr %packed_frame.i.i.i, i32 255, i32 17)
  %call.i.i.i = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %frame.i.i, ptr noundef nonnull %packed_frame.i.i.i, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %131 = icmp slt i32 %call.i.i.i, 1
  br i1 %131, label %if.then1.i.i.i.cleanup.i.i.i_crit_edge, label %if.then1.i.i.i.for.body.i.i.i_crit_edge

if.then1.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.then1.i.i.i
  br label %for.body.i.i.i

if.then1.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then1.i.i.i.for.body.i.i.i_crit_edge
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then1.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [17 x i8], ptr %packed_frame.i.i.i, i32 0, i32 %i.010.i.i.i
  %132 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv6.i.i.i = zext i8 %133 to i32
  %134 = shl nuw i32 %conv6.i.i.i, 24
  %135 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i.i.i, align 8
  %conv.i.i8.i = shl i32 %i.010.i.i.i, 2
  %conv.i.i.i.i = add i32 %conv.i.i8.i, 640
  %mul.i.i.i.i = and i32 %conv.i.i.i.i, 262140
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %136, i32 %mul.i.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %134) #8, !srcloc !58
  %inc.i.i.i = add nuw nsw i32 %i.010.i.i.i, 1
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
  br label %inno_hdmi_config_video_avi.exit.i

inno_hdmi_config_video_avi.exit.i:                ; preds = %cleanup.i.i.i, %if.then50.i.inno_hdmi_config_video_avi.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i.i) #8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i10.i) #8
  %137 = call ptr @memset(ptr %frame.i10.i, i32 255, i32 68)
  %call.i12.i = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %frame.i10.i, ptr noundef %connector.i.i, ptr noundef %adj_mode) #8
  %138 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %139, i32 628
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #8, !srcloc !57
  %141 = and i32 %140, -285212672
  %142 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i13.i.i.i.i = getelementptr i8, ptr %143, i32 628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i.i.i.i, i32 %141) #8, !srcloc !58
  %144 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %145, i32 636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i13.i, i32 83886080) #8, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i12.i)
  %cmp.i.i14.i = icmp sgt i32 %call.i12.i, -1
  br i1 %cmp.i.i14.i, label %if.then1.i.i16.i, label %inno_hdmi_config_video_avi.exit.i.inno_hdmi_config_video_vsi.exit.i_crit_edge

inno_hdmi_config_video_avi.exit.i.inno_hdmi_config_video_vsi.exit.i_crit_edge: ; preds = %inno_hdmi_config_video_avi.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inno_hdmi_config_video_vsi.exit.i

if.then1.i.i16.i:                                 ; preds = %inno_hdmi_config_video_avi.exit.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %packed_frame.i.i9.i) #8
  %146 = call ptr @memset(ptr %packed_frame.i.i9.i, i32 255, i32 17)
  %call.i.i15.i = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %frame.i10.i, ptr noundef nonnull %packed_frame.i.i9.i, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %cmp2.i.i.i = icmp slt i32 %call.i.i15.i, 0
  br i1 %cmp2.i.i.i, label %if.then1.i.i16.i.cleanup.i.i27.i_crit_edge, label %for.cond.preheader.i.i.i

if.then1.i.i16.i.cleanup.i.i27.i_crit_edge:       ; preds = %if.then1.i.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.i27.i

for.cond.preheader.i.i.i:                         ; preds = %if.then1.i.i16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %cmp59.not.i.i.i = icmp eq i32 %call.i.i15.i, 0
  br i1 %cmp59.not.i.i.i, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i26.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i26.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i26.i

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.i.i26.i:                                 ; preds = %for.body.i.i26.i.for.body.i.i26.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i26.i_crit_edge
  %i.010.i.i17.i = phi i32 [ %inc.i.i24.i, %for.body.i.i26.i.for.body.i.i26.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i26.i_crit_edge ]
  %arrayidx.i.i18.i = getelementptr [17 x i8], ptr %packed_frame.i.i9.i, i32 0, i32 %i.010.i.i17.i
  %147 = ptrtoint ptr %arrayidx.i.i18.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i.i18.i, align 1
  %conv6.i.i19.i = zext i8 %148 to i32
  %149 = shl nuw i32 %conv6.i.i19.i, 24
  %150 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs.i.i.i, align 8
  %conv.i.i20.i = shl i32 %i.010.i.i17.i, 2
  %conv.i.i.i21.i = add i32 %conv.i.i20.i, 640
  %mul.i.i.i22.i = and i32 %conv.i.i.i21.i, 262140
  %add.ptr.i2.i.i23.i = getelementptr i8, ptr %151, i32 %mul.i.i.i22.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i23.i, i32 %149) #8, !srcloc !58
  %inc.i.i24.i = add nuw nsw i32 %i.010.i.i17.i, 1
  %exitcond.not.i.i25.i = icmp eq i32 %inc.i.i24.i, %call.i.i15.i
  br i1 %exitcond.not.i.i25.i, label %for.body.i.i26.i.for.end.i.i.i_crit_edge, label %for.body.i.i26.i.for.body.i.i26.i_crit_edge

for.body.i.i26.i.for.body.i.i26.i_crit_edge:      ; preds = %for.body.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i26.i

for.body.i.i26.i.for.end.i.i.i_crit_edge:         ; preds = %for.body.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i26.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %152 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i4.i.i.i = getelementptr i8, ptr %153, i32 628
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i.i.i) #8, !srcloc !57
  %155 = and i32 %154, -285212672
  %conv5.i.i.i.i = or i32 %155, 268435456
  %156 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i13.i7.i.i.i = getelementptr i8, ptr %157, i32 628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i7.i.i.i, i32 %conv5.i.i.i.i) #8, !srcloc !58
  br label %cleanup.i.i27.i

cleanup.i.i27.i:                                  ; preds = %for.end.i.i.i, %if.then1.i.i16.i.cleanup.i.i27.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %packed_frame.i.i9.i) #8
  br label %inno_hdmi_config_video_vsi.exit.i

inno_hdmi_config_video_vsi.exit.i:                ; preds = %cleanup.i.i27.i, %inno_hdmi_config_video_avi.exit.i.inno_hdmi_config_video_vsi.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i10.i) #8
  br label %inno_hdmi_setup.exit

inno_hdmi_setup.exit:                             ; preds = %inno_hdmi_config_video_vsi.exit.i, %inno_hdmi_config_video_csc.exit.i.inno_hdmi_setup.exit_crit_edge
  %158 = ptrtoint ptr %adj_mode to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %adj_mode, align 4
  %mul.i = mul i32 %159, 1000
  %tmds_rate.i = getelementptr i8, ptr %encoder, i32 80
  %160 = ptrtoint ptr %tmds_rate.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %mul.i, ptr %tmds_rate.i, align 8
  %div.i.i = udiv i32 %mul.i, 400000
  %and.i28.i = shl i32 %div.i.i, 24
  %161 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i30.i = getelementptr i8, ptr %162, i32 300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30.i, i32 %and.i28.i) #8, !srcloc !58
  %163 = call i32 @llvm.bswap.i32(i32 %div.i.i) #8
  %164 = shl i32 %163, 8
  %165 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i9.i31.i = getelementptr i8, ptr %166, i32 304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i31.i, i32 %164) #8, !srcloc !58
  %167 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i11.i.i = getelementptr i8, ptr %168, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 0) #8, !srcloc !58
  %169 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i13.i32.i = getelementptr i8, ptr %170, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i32.i, i32 67108864) #8, !srcloc !58
  %171 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i34.i = getelementptr i8, ptr %172, i32 20
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34.i) #8, !srcloc !57
  %conv1.i35.i = and i32 %173, -67108864
  %174 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i13.i36.i = getelementptr i8, ptr %175, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i36.i, i32 %conv1.i35.i) #8, !srcloc !58
  %previous_mode = getelementptr i8, ptr %encoder, i32 104
  %176 = call ptr @memcpy(ptr %previous_mode, ptr %adj_mode, i32 112)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i.i34.i = getelementptr i8, ptr %encoder, i32 -1048
  %0 = ptrtoint ptr %regs.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i.i34.i, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8
  %conv1.i.i35.i = and i32 %2, -50331648
  %conv5.i.i36.i = or i32 %conv1.i.i35.i, 33554432
  %3 = ptrtoint ptr %regs.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i.i34.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %conv5.i.i36.i) #8, !srcloc !58
  %5 = ptrtoint ptr %regs.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i34.i, align 8
  %add.ptr.i38.i = getelementptr i8, ptr %6, i32 904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 0) #8, !srcloc !58
  %7 = ptrtoint ptr %regs.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i.i34.i, align 8
  %add.ptr.i40.i = getelementptr i8, ptr %8, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 0) #8, !srcloc !58
  %9 = ptrtoint ptr %regs.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i.i34.i, align 8
  %add.ptr.i42.i = getelementptr i8, ptr %10, i32 900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 0) #8, !srcloc !58
  %11 = ptrtoint ptr %regs.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i.i34.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %12, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 352321536) #8, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_encoder_enable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i.i.i = getelementptr i8, ptr %encoder, i32 -1048
  %0 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i.i.i, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8
  %conv1.i.i.i = and i32 %2, -50331648
  %conv5.i.i.i = or i32 %conv1.i.i.i, 33554432
  %3 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %conv5.i.i.i) #8, !srcloc !58
  %5 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1862270976) #8, !srcloc !58
  %7 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %8, i32 904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 -1157627904) #8, !srcloc !58
  %9 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %10, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 352321536) #8, !srcloc !58
  %11 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %12, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 335544320) #8, !srcloc !58
  %13 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i25.i = getelementptr i8, ptr %14, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 268435456) #8, !srcloc !58
  %15 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i27.i = getelementptr i8, ptr %16, i32 900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 251658240) #8, !srcloc !58
  %17 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %18, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #8, !srcloc !58
  %19 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i31.i = getelementptr i8, ptr %20, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 16777216) #8, !srcloc !58
  %21 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i.i.i, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8
  %conv1.i.i33.i = and i32 %23, -50331648
  %24 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %conv1.i.i33.i) #8, !srcloc !58
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @inno_hdmi_encoder_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readnone %conn_state) #7 align 64 {
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
declare dso_local zeroext i8 @drm_match_cea_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_connector_get_modes(ptr noundef %connector) #0 align 64 {
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
  %call5 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef nonnull %call) #8
  %sink_has_audio = getelementptr i8, ptr %connector, i32 1129
  %frombool7 = zext i1 %call5 to i8
  %3 = ptrtoint ptr %sink_has_audio to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool7, ptr %sink_has_audio, align 1
  %call8 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %call) #8
  %call9 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %call) #8
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inno_hdmi_connector_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readnone %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %connector, i32 -8
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 800
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_hdmi_probe_single_connector_modes(ptr noundef %connector, i32 noundef %maxX, i32 noundef %maxY) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_helper_probe_single_connector_modes(ptr noundef %connector, i32 noundef 1920, i32 noundef 1080) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inno_hdmi_connector_destroy(ptr noundef %connector) #0 align 64 {
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 930, i32 11}
!2 = !{ptr @inno_hdmi_driver, !3, !"inno_hdmi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 926, i32 24}
!4 = !{ptr @inno_hdmi_ops, !5, !"inno_hdmi_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 902, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 827, i32 39}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 829, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 835, i32 3}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 219, i32 3}
!15 = !{ptr @inno_hdmi_i2c_adapter.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 781, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 790, i32 22}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 795, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @inno_hdmi_i2c_adapter._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @inno_hdmi_i2c_adapter._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 802, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @init_completion.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../include/linux/completion.h", i32 87, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @inno_hdmi_algorithm, !35, !"inno_hdmi_algorithm", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 766, i32 35}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 737, i32 3}
!38 = !{ptr @inno_hdmi_encoder_helper_funcs, !39, !"inno_hdmi_encoder_helper_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 528, i32 40}
!40 = !{ptr @coeff_csc, !41, !"coeff_csc", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 79, i32 19}
!42 = !{ptr @inno_hdmi_connector_helper_funcs, !43, !"inno_hdmi_connector_helper_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 595, i32 42}
!44 = !{ptr @inno_hdmi_connector_funcs, !45, !"inno_hdmi_connector_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 586, i32 41}
!46 = !{ptr @inno_hdmi_dt_ids, !47, !"inno_hdmi_dt_ids", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/rockchip/inno_hdmi.c", i32 919, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 3652719}
!58 = !{i64 3652301}
!59 = !{i8 0, i8 2}
