; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/vpbe.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/vpbe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vpbe_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
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
%struct.vpbe_config = type { [32 x i8], i32, %struct.osd_config_info, %struct.encoder_config_info, i32, ptr, ptr, i32, ptr }
%struct.osd_config_info = type { [32 x i8] }
%struct.encoder_config_info = type { [32 x i8], i8, %struct.i2c_board_info }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.vpbe_device = type { %struct.v4l2_device, ptr, ptr, ptr, i32, ptr, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.vpbe_enc_mode_info, ptr, %struct.vpbe_device_ops }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vpbe_enc_mode_info = type { ptr, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, %struct.v4l2_fract, %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.109 }
%union.anon.109 = type { [32 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.vpbe_output = type { %struct.v4l2_output, ptr, ptr, i32, ptr, i32 }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.venc_platform_data = type { ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.osd_state = type { i32, %struct.spinlock, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x [3 x i8]], %struct.osd_cursor_state, [4 x %struct.osd_window_state], [2 x %struct.osd_osdwin_state], %struct.vpbe_osd_ops }
%struct.osd_cursor_state = type { i32, %struct.osd_cursor_config }
%struct.osd_cursor_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.osd_window_state = type { i32, i32, i32, i32, i32, %struct.osd_layer_config }
%struct.osd_layer_config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.osd_osdwin_state = type { i32, i32, i32, i32, i32, [16 x i8] }
%struct.vpbe_osd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.amp_config_info = type { [32 x i8], i8, %struct.i2c_board_info }

@__param_str_def_output = internal constant [16 x i8] c"vpbe.def_output\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@def_output = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_def_output = internal constant %struct.kernel_param { ptr @__param_str_def_output, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @def_output } }, section "__param", align 4
@__UNIQUE_ID_def_outputtype292 = internal constant [31 x i8] c"vpbe.parmtype=def_output:charp\00", section ".modinfo", align 1
@__param_str_def_mode = internal constant [14 x i8] c"vpbe.def_mode\00", align 1
@def_mode = internal global { ptr, [28 x i8] } { ptr @.str.1, [28 x i8] zeroinitializer }, align 32
@__param_def_mode = internal constant %struct.kernel_param { ptr @__param_str_def_mode, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @def_mode } }, section "__param", align 4
@__UNIQUE_ID_def_modetype293 = internal constant [29 x i8] c"vpbe.parmtype=def_mode:charp\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"vpbe.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype294 = internal constant [24 x i8] c"vpbe.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_def_output295 = internal constant [58 x i8] c"vpbe.parm=def_output:vpbe output name (default:Composite)\00", section ".modinfo", align 1
@__UNIQUE_ID_def_mode296 = internal constant [55 x i8] c"vpbe.parm=def_mode:vpbe output mode name (default:ntsc\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [32 x i8] c"vpbe.parm=debug:Debug level 0-1\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [50 x i8] c"vpbe.description=TI DMXXX VPBE Display controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [46 x i8] c"vpbe.file=drivers/media/platform/davinci/vpbe\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [17 x i8] c"vpbe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [30 x i8] c"vpbe.author=Texas Instruments\00", section ".modinfo", align 1
@__initcall__kmod_vpbe__302_840_vpbe_driver_init6 = internal global ptr @vpbe_driver_init, section ".initcall6.init", align 4
@vpbe_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vpbe_probe, ptr @vpbe_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vpbe_driver_exit = internal global ptr @vpbe_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ntsc\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpbe_controller\00", [16 x i8] zeroinitializer }, align 32
@vpbe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: No platform data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpbe_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/platform/davinci/vpbe.c\00", [58 x i8] zeroinitializer }, align 32
@vpbe_probe._entry_ptr = internal global ptr @vpbe_probe._entry, section ".printk_index", align 4
@vpbe_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: vpbe display module names not defined\0A\00", [51 x i8] zeroinitializer }, align 32
@vpbe_probe._entry_ptr.8 = internal global ptr @vpbe_probe._entry.6, section ".printk_index", align 4
@vpbe_dev_ops = internal constant { %struct.vpbe_device_ops, [40 x i8] } { %struct.vpbe_device_ops { ptr @vpbe_enum_outputs, ptr @vpbe_set_output, ptr @vpbe_get_output, ptr @vpbe_s_dv_timings, ptr @vpbe_g_dv_timings, ptr @vpbe_enum_dv_timings, ptr @vpbe_s_std, ptr @vpbe_g_std, ptr @vpbe_initialize, ptr @vpbe_deinitialize, ptr @vpbe_get_current_mode_info, ptr @vpbe_set_mode, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpbe_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vpbe_dev->lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vpbe_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Null device pointers.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpbe_initialize\00", [16 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr = internal global ptr @vpbe_initialize._entry, section ".printk_index", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm644x-vpbe-display\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpss_dac\00", [23 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.5, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Unable to register v4l2 device.\0A\00", [57 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.16 = internal global ptr @vpbe_initialize._entry.14, section ".printk_index", align 4
@vpbe_initialize._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.5, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: vpbe v4l2 device registered\0A\00", [61 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.19 = internal global ptr @vpbe_initialize._entry.17, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@vpbe_initialize._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.5, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: vpbe unable to init venc sub device\0A\00", [53 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.22 = internal global ptr @vpbe_initialize._entry.20, section ".printk_index", align 4
@vpbe_initialize._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.5, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: unable to initialize the OSD device\00", [54 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.25 = internal global ptr @vpbe_initialize._entry.23, section ".printk_index", align 4
@vpbe_initialize._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.5, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: v4l2 sub device %s registered\0A\00", [59 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.28 = internal global ptr @vpbe_initialize._entry.26, section ".printk_index", align 4
@vpbe_initialize._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.11, ptr @.str.5, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: encoder %s failed to register\00", [60 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.31 = internal global ptr @vpbe_initialize._entry.29, section ".printk_index", align 4
@vpbe_initialize._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.11, ptr @.str.5, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: non-i2c encoders currently not supported\00", [49 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.34 = internal global ptr @vpbe_initialize._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm365-vpbe-display\00", [45 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.11, ptr @.str.5, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: amplifier %s failed to register\00", [58 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.38 = internal global ptr @vpbe_initialize._entry.36, section ".printk_index", align 4
@vpbe_initialize._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.5, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.40 = internal global ptr @vpbe_initialize._entry.39, section ".printk_index", align 4
@vpbe_initialize._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.11, ptr @.str.5, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: non-i2c amplifiers currently not supported\00", [47 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.43 = internal global ptr @vpbe_initialize._entry.41, section ".printk_index", align 4
@vpbe_initialize._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.11, ptr @.str.5, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015Setting default output to %s\0A\00", [32 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.46 = internal global ptr @vpbe_initialize._entry.44, section ".printk_index", align 4
@vpbe_initialize._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.11, ptr @.str.5, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Failed to set default output %s\00", [58 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.49 = internal global ptr @vpbe_initialize._entry.47, section ".printk_index", align 4
@vpbe_initialize._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.11, ptr @.str.5, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015Setting default mode to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.52 = internal global ptr @vpbe_initialize._entry.50, section ".printk_index", align 4
@vpbe_initialize._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.11, ptr @.str.5, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed to set default mode %s\00", [60 x i8] zeroinitializer }, align 32
@vpbe_initialize._entry_ptr.55 = internal global ptr @vpbe_initialize._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpbe-osd\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpbe-venc\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"def_output\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 28, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"def_mode\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 29, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 30, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"vpbe_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 832, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 28, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 29, i32 25 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 834, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 789, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 797, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"vpbe_dev_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 768, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 818, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 573, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 582, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 584, i32 47 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 602, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 606, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 619, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 629, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 664, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 668, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 674, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 677, i32 42 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 685, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 691, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 696, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 708, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 711, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 716, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 719, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 535, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [41 x i8] c"../drivers/media/platform/davinci/vpbe.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 537, i32 25 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype294, ptr @__UNIQUE_ID_def_mode296, ptr @__UNIQUE_ID_def_modetype293, ptr @__UNIQUE_ID_def_output295, ptr @__UNIQUE_ID_def_outputtype292, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_vpbe_driver_exit, ptr @__initcall__kmod_vpbe__302_840_vpbe_driver_init6, ptr @__param_debug, ptr @__param_def_mode, ptr @__param_def_output, ptr @vpbe_driver_exit, ptr @vpbe_initialize._entry, ptr @vpbe_initialize._entry.14, ptr @vpbe_initialize._entry.17, ptr @vpbe_initialize._entry.20, ptr @vpbe_initialize._entry.23, ptr @vpbe_initialize._entry.26, ptr @vpbe_initialize._entry.29, ptr @vpbe_initialize._entry.32, ptr @vpbe_initialize._entry.36, ptr @vpbe_initialize._entry.39, ptr @vpbe_initialize._entry.41, ptr @vpbe_initialize._entry.44, ptr @vpbe_initialize._entry.47, ptr @vpbe_initialize._entry.50, ptr @vpbe_initialize._entry.53, ptr @vpbe_initialize._entry_ptr, ptr @vpbe_initialize._entry_ptr.16, ptr @vpbe_initialize._entry_ptr.19, ptr @vpbe_initialize._entry_ptr.22, ptr @vpbe_initialize._entry_ptr.25, ptr @vpbe_initialize._entry_ptr.28, ptr @vpbe_initialize._entry_ptr.31, ptr @vpbe_initialize._entry_ptr.34, ptr @vpbe_initialize._entry_ptr.38, ptr @vpbe_initialize._entry_ptr.40, ptr @vpbe_initialize._entry_ptr.43, ptr @vpbe_initialize._entry_ptr.46, ptr @vpbe_initialize._entry_ptr.49, ptr @vpbe_initialize._entry_ptr.52, ptr @vpbe_initialize._entry_ptr.55, ptr @vpbe_probe._entry, ptr @vpbe_probe._entry.6, ptr @vpbe_probe._entry_ptr, ptr @vpbe_probe._entry_ptr.8, ptr @def_output, ptr @def_mode, ptr @debug, ptr @vpbe_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @vpbe_dev_ops, ptr @vpbe_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_output to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_dev_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_initialize._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vpbe_driver, ptr noundef null) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vpbe_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @platform_driver_unregister(ptr noundef nonnull @vpbe_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %5) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.do.end15_crit_edge, label %lor.lhs.false

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %osd = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %osd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %osd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %lor.lhs.false.do.end15_crit_edge, label %lor.lhs.false8

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end15

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %venc = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %venc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %venc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %lor.lhs.false8.do.end15_crit_edge, label %if.end21

lor.lhs.false8.do.end15_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false8.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %driver18 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %driver18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver18, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %15) #19
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 536) #20
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %cfg26 = getelementptr inbounds %struct.vpbe_device, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %cfg26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %cfg26, align 8
  %ops = getelementptr inbounds %struct.vpbe_device, ptr %call7.i.i, i32 0, i32 14
  %18 = call ptr @memcpy(ptr %ops, ptr @vpbe_dev_ops, i32 56)
  %pdev28 = getelementptr inbounds %struct.vpbe_device, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %pdev28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %pdev28, align 4
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %outputs, align 4
  %num_modes = getelementptr inbounds %struct.vpbe_output, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_modes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not = icmp eq i32 %23, 0
  br i1 %cmp.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %current_timings = getelementptr inbounds %struct.vpbe_device, ptr %call7.i.i, i32 0, i32 12
  %modes = getelementptr inbounds %struct.vpbe_output, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %modes, align 4
  %26 = call ptr @memcpy(ptr %current_timings, ptr %25, i32 208)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.vpbe_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @vpbe_probe.__key) #16
  br label %cleanup

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then29, %if.end21.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ 0, %if.then29 ], [ -19, %if.else ], [ -22, %do.end15 ], [ -19, %do.end ], [ -12, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_remove(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %device, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpbe_enum_outputs(ptr nocapture noundef readonly %vpbe_dev, ptr nocapture noundef %output) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output, align 8
  %num_outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %outputs, align 4
  %arrayidx = getelementptr %struct.vpbe_output, ptr %7, i32 %3
  %8 = call ptr @memcpy(ptr %output, ptr %arrayidx, i32 72)
  %9 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %output, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_set_output(ptr noundef %vpbe_dev, i32 noundef %index) #2 align 64 {
entry:
  %var.sroa.6.i = alloca [204 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1.i, align 8
  %current_sd_index.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 4
  %2 = ptrtoint ptr %current_sd_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_sd_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %venc.i = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 3
  br label %vpbe_current_encoder_info.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ext_encoders.i = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ext_encoders.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_encoders.i, align 4
  %sub.i = add i32 %3, -1
  %arrayidx.i = getelementptr %struct.encoder_config_info, ptr %5, i32 %sub.i
  br label %vpbe_current_encoder_info.exit

vpbe_current_encoder_info.exit:                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %venc.i, %cond.true.i ], [ %arrayidx.i, %cond.false.i ]
  %venc_device2 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 10
  %6 = ptrtoint ptr %venc_device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %venc_device2, align 4
  %num_outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %index)
  %cmp.not = icmp ugt i32 %9, %index
  br i1 %cmp.not, label %if.end, label %vpbe_current_encoder_info.exit.cleanup_crit_edge

vpbe_current_encoder_info.exit.cleanup_crit_edge: ; preds = %vpbe_current_encoder_info.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %vpbe_current_encoder_info.exit
  %lock = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %10 = ptrtoint ptr %current_sd_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_sd_index.i, align 4
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %outputs, align 4
  %arrayidx = getelementptr %struct.vpbe_output, ptr %13, i32 %index
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  %subdev_name = getelementptr %struct.vpbe_output, ptr %13, i32 %index, i32 1
  %16 = ptrtoint ptr %subdev_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %subdev_name, align 8
  %call6 = tail call i32 @strcmp(ptr noundef %cond.i, ptr noundef %17) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then7

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then7:                                         ; preds = %if.end
  %venc.i104 = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @strcmp(ptr noundef %17, ptr noundef %venc.i104) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then7.if.end11_crit_edge, label %for.cond.preheader.i

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.cond.preheader.i:                             ; preds = %if.then7
  %num_ext_encoders.i = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %num_ext_encoders.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_ext_encoders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17.i = icmp sgt i32 %19, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.unlock_crit_edge

for.cond.preheader.i.unlock_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ext_encoders.i105 = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %ext_encoders.i105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ext_encoders.i105, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr %struct.encoder_config_info, ptr %21, i32 %i.018.i
  %call4.i = tail call i32 @strcmp(ptr noundef %17, ptr noundef %arrayidx1.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %add.i = add nuw nsw i32 %i.018.i, 1
  br i1 %tobool5.not.i, label %for.body.i.if.end11_crit_edge, label %for.inc.i

for.body.i.if.end11_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.inc.i:                                        ; preds = %for.body.i
  %exitcond.not.i = icmp eq i32 %add.i, %19
  br i1 %exitcond.not.i, label %for.inc.i.unlock_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.unlock_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end11:                                         ; preds = %for.body.i.if.end11_crit_edge, %if.then7.if.end11_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then7.if.end11_crit_edge ], [ %add.i, %for.body.i.if.end11_crit_edge ]
  %setup_if_config = getelementptr inbounds %struct.venc_platform_data, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %setup_if_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setup_if_config, align 4
  %if_params = getelementptr %struct.vpbe_output, ptr %13, i32 %index, i32 5
  %24 = ptrtoint ptr %if_params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %if_params, align 8
  %call14 = tail call i32 %23(i32 noundef %25) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end11.if.end18_crit_edge, label %if.end11.unlock_crit_edge

if.end11.unlock_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end18:                                         ; preds = %if.end11.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %sd_index.0 = phi i32 [ %retval.0.i, %if.end11.if.end18_crit_edge ], [ %11, %if.end.if.end18_crit_edge ]
  %encoders = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 3
  %26 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %encoders, align 8
  %arrayidx19 = getelementptr ptr, ptr %27, i32 %sd_index.0
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %29, null
  br i1 %tobool20.not, label %if.end18.unlock_crit_edge, label %if.else

if.end18.unlock_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.else:                                          ; preds = %if.end18
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %video, align 4
  %tobool22.not = icmp eq ptr %33, null
  br i1 %tobool22.not, label %if.else.unlock_crit_edge, label %land.lhs.true

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

land.lhs.true:                                    ; preds = %if.else
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool25.not = icmp eq ptr %35, null
  br i1 %tobool25.not, label %land.lhs.true.unlock_crit_edge, label %if.else27

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.else27:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool28.not = icmp eq ptr %36, null
  br i1 %tobool28.not, label %if.else27.if.else35_crit_edge, label %land.lhs.true29

if.else27.if.else35_crit_edge:                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else35

land.lhs.true29:                                  ; preds = %if.else27
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %tobool31.not = icmp eq ptr %38, null
  br i1 %tobool31.not, label %land.lhs.true29.if.else35_crit_edge, label %land.lhs.true29.if.end42_crit_edge

land.lhs.true29.if.end42_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

land.lhs.true29.if.else35_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else35

if.else35:                                        ; preds = %land.lhs.true29.if.else35_crit_edge, %if.else27.if.else35_crit_edge
  br label %if.end42

if.end42:                                         ; preds = %if.else35, %land.lhs.true29.if.end42_crit_edge
  %.sink = phi ptr [ %35, %if.else35 ], [ %38, %land.lhs.true29.if.end42_crit_edge ]
  %call39 = tail call i32 %.sink(ptr noundef nonnull %29, i32 noundef 0, i32 noundef %15, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool43.not = icmp eq i32 %call39, 0
  br i1 %tobool43.not, label %if.end45, label %if.end42.unlock_crit_edge

if.end42.unlock_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end45:                                         ; preds = %if.end42
  %39 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %outputs, align 4
  %default_mode = getelementptr %struct.vpbe_output, ptr %40, i32 %index, i32 2
  %41 = ptrtoint ptr %default_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %default_mode, align 4
  %43 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg1.i, align 8
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %var.sroa.6.i)
  %tobool.not.i107 = icmp eq ptr %42, null
  br i1 %tobool.not.i107, label %if.end45.vpbe_get_mode_info.exit.thread_crit_edge, label %for.cond.preheader.i109

if.end45.vpbe_get_mode_info.exit.thread_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpbe_get_mode_info.exit.thread

for.cond.preheader.i109:                          ; preds = %if.end45
  %outputs.i108 = getelementptr inbounds %struct.vpbe_config, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %outputs.i108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %outputs.i108, align 4
  %num_modes.i = getelementptr %struct.vpbe_output, ptr %46, i32 %index, i32 3
  %47 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_modes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp18.not.i = icmp eq i32 %48, 0
  br i1 %cmp18.not.i, label %for.cond.preheader.i109.vpbe_get_mode_info.exit.thread_crit_edge, label %for.body.lr.ph.i110

for.cond.preheader.i109.vpbe_get_mode_info.exit.thread_crit_edge: ; preds = %for.cond.preheader.i109
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpbe_get_mode_info.exit.thread

for.body.lr.ph.i110:                              ; preds = %for.cond.preheader.i109
  %modes.i = getelementptr %struct.vpbe_output, ptr %46, i32 %index, i32 4
  %49 = ptrtoint ptr %modes.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %modes.i, align 4
  br label %for.body.i115

for.cond.i:                                       ; preds = %for.body.i115
  %inc.i111 = add nuw i32 %i.019.i, 1
  %exitcond.not.i112 = icmp eq i32 %inc.i111, %48
  br i1 %exitcond.not.i112, label %for.cond.i.vpbe_get_mode_info.exit.thread_crit_edge, label %for.cond.i.for.body.i115_crit_edge

for.cond.i.for.body.i115_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i115

for.cond.i.vpbe_get_mode_info.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpbe_get_mode_info.exit.thread

for.body.i115:                                    ; preds = %for.cond.i.for.body.i115_crit_edge, %for.body.lr.ph.i110
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i110 ], [ %inc.i111, %for.cond.i.for.body.i115_crit_edge ]
  %arrayidx4.i = getelementptr %struct.vpbe_enc_mode_info, ptr %50, i32 %i.019.i
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %var.sroa.0.0.copyload.i = load ptr, ptr %arrayidx4.i, align 8
  %var.sroa.6.0.arrayidx4.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx4.i, i32 4
  %52 = call ptr @memcpy(ptr %var.sroa.6.i, ptr %var.sroa.6.0.arrayidx4.sroa_idx.i, i32 204)
  %call.i113 = tail call i32 @strcmp(ptr noundef nonnull %42, ptr noundef %var.sroa.0.0.copyload.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool5.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool5.not.i114, label %if.then50, label %for.cond.i

vpbe_get_mode_info.exit.thread:                   ; preds = %for.cond.i.vpbe_get_mode_info.exit.thread_crit_edge, %for.cond.preheader.i109.vpbe_get_mode_info.exit.thread_crit_edge, %if.end45.vpbe_get_mode_info.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %var.sroa.6.i)
  br label %unlock

if.then50:                                        ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #18
  %current_timings.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12
  %53 = ptrtoint ptr %current_timings.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %var.sroa.0.0.copyload.i, ptr %current_timings.i, align 8
  %var.sroa.6.0.current_timings.sroa_idx.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 1
  %54 = call ptr @memcpy(ptr %var.sroa.6.0.current_timings.sroa_idx.i, ptr %var.sroa.6.i, i32 204)
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %var.sroa.6.i)
  %osd_device51 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 9
  %55 = ptrtoint ptr %osd_device51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %osd_device51, align 8
  %set_left_margin = getelementptr inbounds %struct.osd_state, ptr %56, i32 0, i32 23, i32 8
  %57 = ptrtoint ptr %set_left_margin to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_left_margin, align 4
  %left_margin = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 9
  %59 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %left_margin, align 8
  tail call void %58(ptr noundef %56, i32 noundef %60) #16
  %set_top_margin = getelementptr inbounds %struct.osd_state, ptr %56, i32 0, i32 23, i32 9
  %61 = ptrtoint ptr %set_top_margin to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_top_margin, align 4
  %upper_margin = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 11
  %63 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %upper_margin, align 8
  tail call void %62(ptr noundef %56, i32 noundef %64) #16
  %65 = ptrtoint ptr %current_sd_index.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sd_index.0, ptr %current_sd_index.i, align 4
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %66 = ptrtoint ptr %current_out_index to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %index, ptr %current_out_index, align 8
  br label %unlock

unlock:                                           ; preds = %if.then50, %vpbe_get_mode_info.exit.thread, %if.end42.unlock_crit_edge, %land.lhs.true.unlock_crit_edge, %if.else.unlock_crit_edge, %if.end18.unlock_crit_edge, %if.end11.unlock_crit_edge, %for.inc.i.unlock_crit_edge, %for.cond.preheader.i.unlock_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end11.unlock_crit_edge ], [ %call39, %if.end42.unlock_crit_edge ], [ 0, %if.then50 ], [ -22, %vpbe_get_mode_info.exit.thread ], [ -22, %for.cond.preheader.i.unlock_crit_edge ], [ -515, %if.else.unlock_crit_edge ], [ -515, %land.lhs.true.unlock_crit_edge ], [ -19, %if.end18.unlock_crit_edge ], [ -22, %for.inc.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %unlock, %vpbe_current_encoder_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %vpbe_current_encoder_info.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpbe_get_output(ptr nocapture noundef readonly %vpbe_dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %0 = ptrtoint ptr %current_out_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_out_index, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_s_dv_timings(ptr noundef %vpbe_dev, ptr noundef %dv_timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %2 = ptrtoint ptr %current_out_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_out_index, align 8
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outputs, align 4
  %current_sd_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 4
  %6 = ptrtoint ptr %current_sd_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_sd_index, align 4
  %capabilities = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 0, i32 6
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capabilities, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_modes = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 3
  %10 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_modes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp153.not = icmp eq i32 %11, 0
  br i1 %cmp153.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %modes = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 4
  %12 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %modes, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %timings_type = getelementptr %struct.vpbe_enc_mode_info, ptr %13, i32 %i.0154, i32 1
  %14 = ptrtoint ptr %timings_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timings_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp6 = icmp eq i32 %15, 4
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dv_timings9 = getelementptr %struct.vpbe_enc_mode_info, ptr %13, i32 %i.0154, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(132) %dv_timings9, ptr noundef dereferenceable(132) %dv_timings, i32 132) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.end16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true
  %current_timings = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12
  %16 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %modes, align 4
  %arrayidx18 = getelementptr %struct.vpbe_enc_mode_info, ptr %17, i32 %i.0154
  %18 = call ptr @memcpy(ptr %current_timings, ptr %arrayidx18, i32 208)
  %lock = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %encoders = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 3
  %19 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %encoders, align 8
  %arrayidx19 = getelementptr ptr, ptr %20, i32 %7
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %if.end16.if.end88_crit_edge, label %if.else

if.end16.if.end88_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.else:                                          ; preds = %if.end16
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %video, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %if.else.if.end88_crit_edge, label %land.lhs.true23

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

land.lhs.true23:                                  ; preds = %if.else
  %s_dv_timings = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %s_dv_timings to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_dv_timings, align 4
  %tobool26.not = icmp eq ptr %28, null
  br i1 %tobool26.not, label %land.lhs.true23.if.end88_crit_edge, label %if.else28

land.lhs.true23.if.end88_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.else28:                                        ; preds = %land.lhs.true23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool29.not = icmp eq ptr %29, null
  br i1 %tobool29.not, label %if.else28.if.else36_crit_edge, label %land.lhs.true30

if.else28.if.else36_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else36

land.lhs.true30:                                  ; preds = %if.else28
  %s_dv_timings31 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %s_dv_timings31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_dv_timings31, align 4
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %land.lhs.true30.if.else36_crit_edge, label %land.lhs.true30.if.end43_crit_edge

land.lhs.true30.if.end43_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

land.lhs.true30.if.else36_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else36

if.else36:                                        ; preds = %land.lhs.true30.if.else36_crit_edge, %if.else28.if.else36_crit_edge
  br label %if.end43

if.end43:                                         ; preds = %if.else36, %land.lhs.true30.if.end43_crit_edge
  %.sink = phi ptr [ %28, %if.else36 ], [ %31, %land.lhs.true30.if.end43_crit_edge ]
  %call40 = tail call i32 %.sink(ptr noundef nonnull %22, ptr noundef %dv_timings) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool44.not = icmp eq i32 %call40, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %if.end43.if.end88_crit_edge

if.end43.if.end88_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

land.lhs.true45:                                  ; preds = %if.end43
  %amp = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 5
  %32 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %amp, align 8
  %tobool46.not = icmp eq ptr %33, null
  br i1 %tobool46.not, label %land.lhs.true45.if.then82_crit_edge, label %if.else53

land.lhs.true45.if.then82_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then82

if.else53:                                        ; preds = %land.lhs.true45
  %ops54 = getelementptr inbounds %struct.v4l2_subdev, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %ops54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops54, align 4
  %video55 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %video55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %video55, align 4
  %tobool56.not = icmp eq ptr %37, null
  br i1 %tobool56.not, label %if.else53.if.end88_crit_edge, label %land.lhs.true57

if.else53.if.end88_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

land.lhs.true57:                                  ; preds = %if.else53
  %s_dv_timings60 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %s_dv_timings60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_dv_timings60, align 4
  %tobool61.not = icmp eq ptr %39, null
  br i1 %tobool61.not, label %land.lhs.true57.if.end88_crit_edge, label %if.else63

land.lhs.true57.if.end88_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.else63:                                        ; preds = %land.lhs.true57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool64.not = icmp eq ptr %40, null
  br i1 %tobool64.not, label %if.else63.if.else71_crit_edge, label %land.lhs.true65

if.else63.if.else71_crit_edge:                    ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else71

land.lhs.true65:                                  ; preds = %if.else63
  %s_dv_timings66 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %s_dv_timings66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_dv_timings66, align 4
  %tobool67.not = icmp eq ptr %42, null
  br i1 %tobool67.not, label %land.lhs.true65.if.else71_crit_edge, label %land.lhs.true65.if.end80_crit_edge

land.lhs.true65.if.end80_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

land.lhs.true65.if.else71_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else71

if.else71:                                        ; preds = %land.lhs.true65.if.else71_crit_edge, %if.else63.if.else71_crit_edge
  br label %if.end80

if.end80:                                         ; preds = %if.else71, %land.lhs.true65.if.end80_crit_edge
  %.sink158 = phi ptr [ %39, %if.else71 ], [ %42, %land.lhs.true65.if.end80_crit_edge ]
  %call70 = tail call i32 %.sink158(ptr noundef nonnull %33, ptr noundef %dv_timings) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool81.not = icmp eq i32 %call70, 0
  br i1 %tobool81.not, label %if.end80.if.then82_crit_edge, label %if.end80.if.end88_crit_edge

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.end80.if.then82_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then82

if.then82:                                        ; preds = %if.end80.if.then82_crit_edge, %land.lhs.true45.if.then82_crit_edge
  %osd_device83 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 9
  %43 = ptrtoint ptr %osd_device83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %osd_device83, align 8
  %set_left_margin = getelementptr inbounds %struct.osd_state, ptr %44, i32 0, i32 23, i32 8
  %45 = ptrtoint ptr %set_left_margin to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_left_margin, align 4
  %left_margin = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 9
  %47 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %left_margin, align 8
  tail call void %46(ptr noundef %44, i32 noundef %48) #16
  %set_top_margin = getelementptr inbounds %struct.osd_state, ptr %44, i32 0, i32 23, i32 9
  %49 = ptrtoint ptr %set_top_margin to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_top_margin, align 4
  %upper_margin = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 11
  %51 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %upper_margin, align 8
  tail call void %50(ptr noundef %44, i32 noundef %52) #16
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end80.if.end88_crit_edge, %land.lhs.true57.if.end88_crit_edge, %if.else53.if.end88_crit_edge, %if.end43.if.end88_crit_edge, %land.lhs.true23.if.end88_crit_edge, %if.else.if.end88_crit_edge, %if.end16.if.end88_crit_edge
  %ret.0147 = phi i32 [ 0, %if.then82 ], [ %call70, %if.end80.if.end88_crit_edge ], [ -515, %if.else53.if.end88_crit_edge ], [ -515, %land.lhs.true57.if.end88_crit_edge ], [ %call40, %if.end43.if.end88_crit_edge ], [ -515, %if.else.if.end88_crit_edge ], [ -515, %land.lhs.true23.if.end88_crit_edge ], [ -19, %if.end16.if.end88_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0147, %if.end88 ], [ -61, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpbe_g_dv_timings(ptr nocapture noundef readonly %vpbe_dev, ptr nocapture noundef writeonly %dv_timings) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %2 = ptrtoint ptr %current_out_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_out_index, align 8
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outputs, align 4
  %capabilities = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 0, i32 6
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %timings_type = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %timings_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timings_type, align 4
  %and2 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dv_timings6 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 3
  %10 = call ptr @memcpy(ptr %dv_timings, ptr %dv_timings6, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -61, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_enum_dv_timings(ptr nocapture noundef readonly %vpbe_dev, ptr nocapture noundef %timings) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %2 = ptrtoint ptr %current_out_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_out_index, align 8
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outputs, align 4
  %capabilities = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 0, i32 6
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_modes = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 3
  %8 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_modes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp33.not = icmp eq i32 %9, 0
  br i1 %cmp33.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %modes = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 4
  %10 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modes, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.inc.for.body_crit_edge ]
  %j.034 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %timings_type = getelementptr %struct.vpbe_enc_mode_info, ptr %11, i32 %i.035, i32 1
  %12 = ptrtoint ptr %timings_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timings_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp4 = icmp eq i32 %13, 4
  br i1 %cmp4, label %if.then5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %14 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timings, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.034, i32 %15)
  %cmp6 = icmp eq i32 %j.034, %15
  br i1 %cmp6, label %if.then5.for.end_crit_edge, label %if.end8

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i32 %j.034, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end8 ], [ %j.034, %for.body.for.inc_crit_edge ]
  %inc10 = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc10, %9
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end:                                          ; preds = %if.then5.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.035, %if.then5.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %9)
  %cmp12 = icmp eq i32 %i.0.lcssa, %9
  br i1 %cmp12, label %for.end.cleanup_crit_edge, label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %timings15 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 3
  %modes16 = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 4
  %16 = ptrtoint ptr %modes16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %modes16, align 4
  %dv_timings = getelementptr %struct.vpbe_enc_mode_info, ptr %17, i32 %i.0.lcssa, i32 3
  %18 = call ptr @memcpy(ptr %timings15, ptr %dv_timings, i32 132)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -61, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_s_std(ptr noundef %vpbe_dev, i64 noundef %std_id) #2 align 64 {
entry:
  %var.sroa.7.i = alloca [192 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %2 = ptrtoint ptr %current_out_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_out_index, align 8
  %current_sd_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 4
  %4 = ptrtoint ptr %current_sd_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_sd_index, align 4
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %outputs, align 4
  %capabilities = getelementptr %struct.vpbe_output, ptr %7, i32 %3, i32 0, i32 6
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capabilities, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %var.sroa.7.i)
  %num_modes.i = getelementptr %struct.vpbe_output, ptr %7, i32 %3, i32 3
  %10 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_modes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp23.not.i = icmp eq i32 %11, 0
  br i1 %cmp23.not.i, label %if.end.vpbe_get_std_info.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.vpbe_get_std_info.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpbe_get_std_info.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  %modes.i = getelementptr %struct.vpbe_output, ptr %7, i32 %3, i32 4
  %12 = ptrtoint ptr %modes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %modes.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.vpbe_get_std_info.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.vpbe_get_std_info.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpbe_get_std_info.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.vpbe_enc_mode_info, ptr %13, i32 %i.024.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %var.sroa.0.0.copyload.i = load ptr, ptr %arrayidx5.i, align 8
  %var.sroa.5.0.arrayidx5.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx5.i, i32 4
  %15 = ptrtoint ptr %var.sroa.5.0.arrayidx5.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %var.sroa.5.0.copyload.i = load i32, ptr %var.sroa.5.0.arrayidx5.sroa_idx.i, align 4
  %var.sroa.6.0.arrayidx5.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx5.i, i32 8
  %16 = ptrtoint ptr %var.sroa.6.0.arrayidx5.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %var.sroa.6.0.copyload.i = load i64, ptr %var.sroa.6.0.arrayidx5.sroa_idx.i, align 8
  %var.sroa.7.0.arrayidx5.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx5.i, i32 16
  %17 = call ptr @memcpy(ptr %var.sroa.7.i, ptr %var.sroa.7.0.arrayidx5.sroa_idx.i, i32 192)
  %and.i = and i32 %var.sroa.5.0.copyload.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and7.i = and i64 %var.sroa.6.0.copyload.i, %std_id
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool8.not.i = icmp eq i64 %and7.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %for.cond.i, label %if.end4

vpbe_get_std_info.exit.thread:                    ; preds = %for.cond.i.vpbe_get_std_info.exit.thread_crit_edge, %if.end.vpbe_get_std_info.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %var.sroa.7.i)
  br label %cleanup

if.end4:                                          ; preds = %for.body.i
  %current_timings.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12
  %18 = ptrtoint ptr %current_timings.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %var.sroa.0.0.copyload.i, ptr %current_timings.i, align 8
  %var.sroa.5.0.current_timings.sroa_idx.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %var.sroa.5.0.current_timings.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %var.sroa.5.0.copyload.i, ptr %var.sroa.5.0.current_timings.sroa_idx.i, align 4
  %var.sroa.6.0.current_timings.sroa_idx.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %var.sroa.6.0.current_timings.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %var.sroa.6.0.copyload.i, ptr %var.sroa.6.0.current_timings.sroa_idx.i, align 8
  %var.sroa.7.0.current_timings.sroa_idx.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 3
  %21 = call ptr @memcpy(ptr %var.sroa.7.0.current_timings.sroa_idx.i, ptr %var.sroa.7.i, i32 192)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %var.sroa.7.i)
  %lock = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %encoders = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 3
  %22 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %encoders, align 8
  %arrayidx5 = getelementptr ptr, ptr %23, i32 %5
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.end4.if.end35_crit_edge, label %if.else

if.end4.if.end35_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.else:                                          ; preds = %if.end4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %video, align 4
  %tobool8.not = icmp eq ptr %29, null
  br i1 %tobool8.not, label %if.else.if.end35_crit_edge, label %land.lhs.true

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true:                                    ; preds = %if.else
  %s_std_output = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %s_std_output to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_std_output, align 4
  %tobool11.not = icmp eq ptr %31, null
  br i1 %tobool11.not, label %land.lhs.true.if.end35_crit_edge, label %if.else13

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.else13:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool14.not = icmp eq ptr %32, null
  br i1 %tobool14.not, label %if.else13.if.else21_crit_edge, label %land.lhs.true15

if.else13.if.else21_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else21

land.lhs.true15:                                  ; preds = %if.else13
  %s_std_output16 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %s_std_output16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_std_output16, align 4
  %tobool17.not = icmp eq ptr %34, null
  br i1 %tobool17.not, label %land.lhs.true15.if.else21_crit_edge, label %land.lhs.true15.if.end28_crit_edge

land.lhs.true15.if.end28_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true15.if.else21_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true15.if.else21_crit_edge, %if.else13.if.else21_crit_edge
  br label %if.end28

if.end28:                                         ; preds = %if.else21, %land.lhs.true15.if.end28_crit_edge
  %.sink = phi ptr [ %31, %if.else21 ], [ %34, %land.lhs.true15.if.end28_crit_edge ]
  %call25 = tail call i32 %.sink(ptr noundef nonnull %25, i64 noundef %std_id) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %osd_device31 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 9
  %35 = ptrtoint ptr %osd_device31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %osd_device31, align 8
  %set_left_margin = getelementptr inbounds %struct.osd_state, ptr %36, i32 0, i32 23, i32 8
  %37 = ptrtoint ptr %set_left_margin to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_left_margin, align 4
  %left_margin = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 9
  %39 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %left_margin, align 8
  tail call void %38(ptr noundef %36, i32 noundef %40) #16
  %set_top_margin = getelementptr inbounds %struct.osd_state, ptr %36, i32 0, i32 23, i32 9
  %41 = ptrtoint ptr %set_top_margin to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_top_margin, align 4
  %upper_margin = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 11
  %43 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %upper_margin, align 8
  tail call void %42(ptr noundef %36, i32 noundef %44) #16
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end28.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.else.if.end35_crit_edge, %if.end4.if.end35_crit_edge
  %__result.069 = phi i32 [ 0, %if.then30 ], [ %call25, %if.end28.if.end35_crit_edge ], [ -515, %if.else.if.end35_crit_edge ], [ -515, %land.lhs.true.if.end35_crit_edge ], [ -19, %if.end4.if.end35_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %vpbe_get_std_info.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %__result.069, %if.end35 ], [ -61, %entry.cleanup_crit_edge ], [ -22, %vpbe_get_std_info.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpbe_g_std(ptr nocapture noundef readonly %vpbe_dev, ptr nocapture noundef writeonly %std_id) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %2 = ptrtoint ptr %current_out_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_out_index, align 8
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outputs, align 4
  %capabilities = getelementptr %struct.vpbe_output, ptr %5, i32 %3, i32 0, i32 6
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 8
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %timings_type = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %timings_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timings_type, align 4
  %and2 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %std_id5 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %std_id5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %std_id5, align 8
  %12 = ptrtoint ptr %std_id to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %std_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ -61, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_initialize(ptr noundef %dev, ptr noundef %vpbe_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vpbe_dev, null
  %tobool1.not = icmp eq ptr %dev, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %initialized = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 7
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initialized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %cfg = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %call5 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(20) @.str.12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end4.if.end20_crit_edge, label %if.then6

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then6:                                         ; preds = %if.end4
  %pdev = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %call7 = tail call ptr @clk_get(ptr noundef %5, ptr noundef nonnull @.str.13) #16
  %dac_clk = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 8
  %6 = ptrtoint ptr %dac_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %dac_clk, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %call7 to i32
  br label %fail_mutex_unlock

if.end13:                                         ; preds = %if.then6
  %call.i = tail call i32 @clk_prepare(ptr noundef %call7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.if.then17_crit_edge

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

if.end.i:                                         ; preds = %if.end13
  %call1.i = tail call i32 @clk_enable(ptr noundef %call7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end20_crit_edge, label %if.then3.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @clk_unprepare(ptr noundef %call7) #16
  br label %if.then17

if.then17:                                        ; preds = %if.then3.i, %if.end13.if.then17_crit_edge
  %8 = ptrtoint ptr %dac_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dac_clk, align 4
  tail call void @clk_put(ptr noundef %9) #16
  br label %fail_mutex_unlock

if.end20:                                         ; preds = %if.end.i.if.end20_crit_edge, %if.end4.if.end20_crit_edge
  %call21 = tail call i32 @vpss_enable_clock(i32 noundef 5, i32 noundef 1) #16
  %call22 = tail call i32 @v4l2_device_register(ptr noundef nonnull %dev, ptr noundef nonnull %vpbe_dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end33, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %13) #19
  br label %fail_clk_put

do.end33:                                         ; preds = %if.end20
  %name36 = getelementptr inbounds %struct.v4l2_device, ptr %vpbe_dev, i32 0, i32 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name36) #19
  %call39 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef nonnull %vpbe_dev, ptr noundef nonnull @platform_device_get) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end33.fail_dev_unregister_crit_edge, label %if.end42

do.end33.fail_dev_unregister_crit_edge:           ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_dev_unregister

if.end42:                                         ; preds = %do.end33
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %venc = getelementptr inbounds %struct.vpbe_config, ptr %15, i32 0, i32 3
  %call47 = tail call ptr @venc_sub_dev_init(ptr noundef nonnull %vpbe_dev, ptr noundef %venc) #16
  %venc48 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 13
  %16 = ptrtoint ptr %venc48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call47, ptr %venc48, align 8
  %tobool50.not = icmp eq ptr %call47, null
  br i1 %tobool50.not, label %do.end54, label %if.end60

do.end54:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name36) #19
  br label %fail_dev_unregister

if.end60:                                         ; preds = %if.end42
  %osd_device61 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 9
  %17 = ptrtoint ptr %osd_device61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %osd_device61, align 8
  %ops = getelementptr inbounds %struct.osd_state, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %tobool62.not = icmp eq ptr %20, null
  br i1 %tobool62.not, label %if.end60.if.end78_crit_edge, label %if.then63

if.end60.if.end78_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.then63:                                        ; preds = %if.end60
  %call66 = tail call i32 %20(ptr noundef %18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then63.if.end78_crit_edge, label %do.end71

if.then63.if.end78_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

do.end71:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #18
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name36) #19
  br label %fail_dev_unregister

if.end78:                                         ; preds = %if.then63.if.end78_crit_edge, %if.end60.if.end78_crit_edge
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg, align 8
  %num_ext_encoders = getelementptr inbounds %struct.vpbe_config, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %num_ext_encoders to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ext_encoders, align 4
  %add = add i32 %24, 1
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #16
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !136

kmalloc_array.exit.thread:                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  %encoders341 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 3
  %27 = ptrtoint ptr %encoders341 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %encoders341, align 8
  br label %fail_dev_unregister

if.end7.i:                                        ; preds = %if.end78
  %28 = extractvalue { i32, i1 } %25, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3264) #23
  %encoders = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 3
  %29 = ptrtoint ptr %encoders to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i, ptr %encoders, align 8
  %tobool82.not = icmp eq ptr %call8.i, null
  br i1 %tobool82.not, label %if.end7.i.fail_dev_unregister_crit_edge, label %if.end84

if.end7.i.fail_dev_unregister_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_dev_unregister

if.end84:                                         ; preds = %if.end7.i
  %30 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg, align 8
  %i2c_adapter_id = getelementptr inbounds %struct.vpbe_config, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %i2c_adapter_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i2c_adapter_id, align 4
  %call86 = tail call ptr @i2c_get_adapter(i32 noundef %33) #16
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg, align 8
  %num_ext_encoders88350 = getelementptr inbounds %struct.vpbe_config, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %num_ext_encoders88350 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_ext_encoders88350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %37)
  %cmp90352 = icmp ult i32 %37, 2147483647
  br i1 %cmp90352, label %if.end84.for.body_crit_edge, label %if.end84.for.end_crit_edge

if.end84.for.end_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end84.for.body_crit_edge:                      ; preds = %if.end84
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end84.for.body_crit_edge
  %38 = phi ptr [ %51, %for.inc.for.body_crit_edge ], [ %35, %if.end84.for.body_crit_edge ]
  %i.0353 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end84.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0353)
  %cmp91 = icmp eq i32 %i.0353, 0
  br i1 %cmp91, label %if.then92, label %if.end95

if.then92:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %encoders, align 8
  %41 = ptrtoint ptr %venc48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %venc48, align 8
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %40, align 4
  br label %for.inc

if.end95:                                         ; preds = %for.body
  %ext_encoders = getelementptr inbounds %struct.vpbe_config, ptr %38, i32 0, i32 5
  %44 = ptrtoint ptr %ext_encoders to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ext_encoders, align 4
  %arrayidx97 = getelementptr %struct.encoder_config_info, ptr %45, i32 %i.0353
  %is_i2c = getelementptr %struct.encoder_config_info, ptr %45, i32 %i.0353, i32 1
  %46 = ptrtoint ptr %is_i2c to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %is_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool98.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool98.not, label %do.end130, label %if.then99

if.then99:                                        ; preds = %if.end95
  %47 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %encoders, align 8
  %arrayidx101 = getelementptr ptr, ptr %48, i32 %i.0353
  %board_info = getelementptr %struct.encoder_config_info, ptr %45, i32 %i.0353, i32 2
  %call103 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %vpbe_dev, ptr noundef %call86, ptr noundef %board_info, ptr noundef null) #16
  %49 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call103, ptr %arrayidx101, align 4
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %do.end118, label %do.end108

do.end108:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name36, ptr noundef %arrayidx97) #19
  br label %for.inc

do.end118:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name36, ptr noundef %arrayidx97) #19
  br label %fail_kfree_encoders

do.end130:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name36) #19
  br label %for.inc

for.inc:                                          ; preds = %do.end130, %do.end108, %if.then92
  %inc = add nuw nsw i32 %i.0353, 1
  %50 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg, align 8
  %num_ext_encoders88 = getelementptr inbounds %struct.vpbe_config, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %num_ext_encoders88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_ext_encoders88, align 4
  %add89 = add i32 %53, 1
  %cmp90 = icmp slt i32 %inc, %add89
  br i1 %cmp90, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end84.for.end_crit_edge
  %.lcssa = phi ptr [ %35, %if.end84.for.end_crit_edge ], [ %51, %for.inc.for.end_crit_edge ]
  %call140 = tail call i32 @strcmp(ptr noundef %.lcssa, ptr noundef nonnull dereferenceable(19) @.str.35) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %land.lhs.true, label %for.end.if.else192_crit_edge

for.end.if.else192_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else192

land.lhs.true:                                    ; preds = %for.end
  %amp = getelementptr inbounds %struct.vpbe_config, ptr %.lcssa, i32 0, i32 6
  %54 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %amp, align 4
  %tobool143.not = icmp eq ptr %55, null
  br i1 %tobool143.not, label %land.lhs.true.if.else192_crit_edge, label %if.then144

land.lhs.true.if.else192_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else192

if.then144:                                       ; preds = %land.lhs.true
  %is_i2c147 = getelementptr inbounds %struct.amp_config_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %is_i2c147 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load148 = load i8, ptr %is_i2c147, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load148)
  %tobool151.not = icmp sgt i8 %bf.load148, -1
  br i1 %tobool151.not, label %if.else181, label %if.then152

if.then152:                                       ; preds = %if.then144
  %board_info154 = getelementptr inbounds %struct.amp_config_info, ptr %55, i32 0, i32 2
  %call155 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %vpbe_dev, ptr noundef %call86, ptr noundef %board_info154, ptr noundef null) #16
  %amp156 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 5
  %57 = ptrtoint ptr %amp156 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call155, ptr %amp156, align 8
  %tobool158.not = icmp eq ptr %call155, null
  br i1 %tobool158.not, label %do.end162, label %do.end173

do.end162:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #18
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name36, ptr noundef nonnull %55) #19
  br label %fail_kfree_encoders

do.end173:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #18
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name36, ptr noundef nonnull %55) #19
  br label %if.end194

if.else181:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #18
  %amp182 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 5
  %58 = ptrtoint ptr %amp182 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %amp182, align 8
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name36) #19
  br label %if.end194

if.else192:                                       ; preds = %land.lhs.true.if.else192_crit_edge, %for.end.if.else192_crit_edge
  %amp193 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 5
  %59 = ptrtoint ptr %amp193 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %amp193, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.else192, %if.else181, %do.end173
  %current_sd_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 4
  %60 = ptrtoint ptr %current_sd_index to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %current_sd_index, align 4
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %61 = ptrtoint ptr %current_out_index to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %current_out_index, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #16
  %62 = load ptr, ptr @def_output, align 4
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %62) #19
  %call201 = tail call fastcc i32 @vpbe_set_default_output(ptr noundef %vpbe_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %do.end215, label %if.end194.fail_kfree_amp_crit_edge

if.end194.fail_kfree_amp_crit_edge:               ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_kfree_amp

do.end215:                                        ; preds = %if.end194
  %63 = load ptr, ptr @def_mode, align 4
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %63) #19
  %call218 = tail call fastcc i32 @vpbe_set_default_mode(ptr noundef %vpbe_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end229, label %do.end215.fail_kfree_amp_crit_edge

do.end215.fail_kfree_amp_crit_edge:               ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_kfree_amp

if.end229:                                        ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %initialized, align 8
  br label %cleanup

fail_kfree_amp:                                   ; preds = %do.end215.fail_kfree_amp_crit_edge, %if.end194.fail_kfree_amp_crit_edge
  %def_mode.sink = phi ptr [ @def_output, %if.end194.fail_kfree_amp_crit_edge ], [ @def_mode, %do.end215.fail_kfree_amp_crit_edge ]
  %.str.54.sink = phi ptr [ @.str.48, %if.end194.fail_kfree_amp_crit_edge ], [ @.str.54, %do.end215.fail_kfree_amp_crit_edge ]
  %ret.0 = phi i32 [ %call201, %if.end194.fail_kfree_amp_crit_edge ], [ %call218, %do.end215.fail_kfree_amp_crit_edge ]
  %65 = ptrtoint ptr %def_mode.sink to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %def_mode.sink, align 4
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.54.sink, ptr noundef %name36, ptr noundef %66) #19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %amp232 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 5
  %67 = ptrtoint ptr %amp232 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %amp232, align 8
  tail call void @kfree(ptr noundef %68) #16
  br label %fail_kfree_encoders

fail_kfree_encoders:                              ; preds = %fail_kfree_amp, %do.end162, %do.end118
  %ret.1 = phi i32 [ -19, %do.end118 ], [ %ret.0, %fail_kfree_amp ], [ -19, %do.end162 ]
  %69 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %encoders, align 8
  tail call void @kfree(ptr noundef %70) #16
  br label %fail_dev_unregister

fail_dev_unregister:                              ; preds = %fail_kfree_encoders, %if.end7.i.fail_dev_unregister_crit_edge, %kmalloc_array.exit.thread, %do.end71, %do.end54, %do.end33.fail_dev_unregister_crit_edge
  %ret.2 = phi i32 [ -12, %do.end71 ], [ %ret.1, %fail_kfree_encoders ], [ -19, %do.end54 ], [ %call39, %do.end33.fail_dev_unregister_crit_edge ], [ -12, %if.end7.i.fail_dev_unregister_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  tail call void @v4l2_device_unregister(ptr noundef %vpbe_dev) #16
  br label %fail_clk_put

fail_clk_put:                                     ; preds = %fail_dev_unregister, %do.end27
  %ret.3 = phi i32 [ %call22, %do.end27 ], [ %ret.2, %fail_dev_unregister ]
  %71 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg, align 8
  %call238 = tail call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(20) @.str.12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp239.not = icmp eq i32 %call238, 0
  br i1 %cmp239.not, label %fail_clk_put.fail_mutex_unlock_crit_edge, label %if.then240

fail_clk_put.fail_mutex_unlock_crit_edge:         ; preds = %fail_clk_put
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_mutex_unlock

if.then240:                                       ; preds = %fail_clk_put
  call void @__sanitizer_cov_trace_pc() #18
  %dac_clk241 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 8
  %73 = ptrtoint ptr %dac_clk241 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dac_clk241, align 4
  tail call void @clk_disable(ptr noundef %74) #16
  tail call void @clk_unprepare(ptr noundef %74) #16
  %75 = ptrtoint ptr %dac_clk241 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dac_clk241, align 4
  tail call void @clk_put(ptr noundef %76) #16
  br label %fail_mutex_unlock

fail_mutex_unlock:                                ; preds = %if.then240, %fail_clk_put.fail_mutex_unlock_crit_edge, %if.then17, %if.then10
  %ret.4 = phi i32 [ %7, %if.then10 ], [ -19, %if.then17 ], [ %ret.3, %if.then240 ], [ %ret.3, %fail_clk_put.fail_mutex_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %fail_mutex_unlock, %if.end229, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.4, %fail_mutex_unlock ], [ 0, %if.end229 ], [ -19, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpbe_deinitialize(ptr nocapture noundef readnone %dev, ptr noundef %vpbe_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_device_unregister(ptr noundef %vpbe_dev) #16
  %cfg = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(20) @.str.12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dac_clk = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 8
  %2 = ptrtoint ptr %dac_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dac_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #16
  tail call void @clk_unprepare(ptr noundef %3) #16
  %4 = ptrtoint ptr %dac_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dac_clk, align 4
  tail call void @clk_put(ptr noundef %5) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %amp = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 5
  %6 = ptrtoint ptr %amp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %amp, align 8
  tail call void @kfree(ptr noundef %7) #16
  %encoders = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 3
  %8 = ptrtoint ptr %encoders to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoders, align 8
  tail call void @kfree(ptr noundef %9) #16
  %initialized = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 7
  %10 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %initialized, align 8
  %call2 = tail call i32 @vpss_enable_clock(i32 noundef 5, i32 noundef 0) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpbe_get_current_mode_info(ptr nocapture noundef readonly %vpbe_dev, ptr noundef writeonly %mode_info) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mode_info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %current_timings = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12
  %0 = call ptr @memcpy(ptr %mode_info, ptr %current_timings, i32 208)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpbe_set_mode(ptr noundef %vpbe_dev, ptr noundef readonly %mode_info) #2 align 64 {
entry:
  %dv_timings = alloca %struct.v4l2_dv_timings, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %dv_timings) #16
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %2 = ptrtoint ptr %current_out_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_out_index, align 8
  %tobool.not = icmp eq ptr %mode_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %outputs, align 4
  %num_modes = getelementptr %struct.vpbe_output, ptr %7, i32 %3, i32 3
  %8 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_modes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp70.not = icmp eq i32 %9, 0
  br i1 %cmp70.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %modes = getelementptr %struct.vpbe_output, ptr %7, i32 %3, i32 4
  %10 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modes, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %preset_mode.071 = phi ptr [ null, %for.body.lr.ph ], [ %preset_mode.1, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr %struct.vpbe_enc_mode_info, ptr %11, i32 %i.072
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 8
  %call = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef %13) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %timings_type = getelementptr %struct.vpbe_enc_mode_info, ptr %11, i32 %i.072, i32 1
  %14 = ptrtoint ptr %timings_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timings_type, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  %std_id = getelementptr %struct.vpbe_enc_mode_info, ptr %11, i32 %i.072, i32 2
  %16 = ptrtoint ptr %std_id to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %std_id, align 8
  %call16 = tail call i32 @vpbe_s_std(ptr noundef %vpbe_dev, i64 noundef %17)
  br label %cleanup

if.end17:                                         ; preds = %if.then9
  %and19 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.for.inc_crit_edge, label %if.then21

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %dv_timings22 = getelementptr %struct.vpbe_enc_mode_info, ptr %11, i32 %i.072, i32 3
  %18 = call ptr @memcpy(ptr %dv_timings, ptr %dv_timings22, i32 132)
  %call23 = call i32 @vpbe_s_dv_timings(ptr noundef %vpbe_dev, ptr noundef nonnull %dv_timings)
  br label %cleanup

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %preset_mode.1 = phi ptr [ %preset_mode.071, %for.body.for.inc_crit_edge ], [ %arrayidx6, %if.end17.for.inc_crit_edge ]
  %inc = add nuw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool26.not = icmp eq ptr %preset_mode.1, null
  br i1 %tobool26.not, label %for.end.cleanup_crit_edge, label %if.end28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #16
  %osd_device29 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 9
  %19 = ptrtoint ptr %osd_device29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %osd_device29, align 8
  %current_timings = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12
  %21 = call ptr @memcpy(ptr %current_timings, ptr %preset_mode.1, i32 208)
  %set_left_margin = getelementptr inbounds %struct.osd_state, ptr %20, i32 0, i32 23, i32 8
  %22 = ptrtoint ptr %set_left_margin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_left_margin, align 4
  %left_margin = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 9
  %24 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %left_margin, align 8
  tail call void %23(ptr noundef %20, i32 noundef %25) #16
  %set_top_margin = getelementptr inbounds %struct.osd_state, ptr %20, i32 0, i32 23, i32 9
  %26 = ptrtoint ptr %set_top_margin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_top_margin, align 4
  %upper_margin = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 11
  %28 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %upper_margin, align 8
  tail call void %27(ptr noundef %20, i32 noundef %29) #16
  tail call void @mutex_unlock(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.end.cleanup_crit_edge, %if.then21, %if.then15, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then15 ], [ %call23, %if.then21 ], [ 0, %if.end28 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %dv_timings) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpss_enable_clock(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @platform_device_get(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call ptr @strstr(ptr noundef %1, ptr noundef nonnull @.str.56)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %osd_device = getelementptr inbounds %struct.vpbe_device, ptr %data, i32 0, i32 9
  %4 = ptrtoint ptr %osd_device to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %osd_device, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %call3 = tail call ptr @strstr(ptr noundef %6, ptr noundef nonnull @.str.57)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %venc_device = getelementptr inbounds %struct.vpbe_device, ptr %data, i32 0, i32 10
  %9 = ptrtoint ptr %venc_device to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %venc_device, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @venc_sub_dev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpbe_set_default_output(ptr noundef %vpbe_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %num_outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not = icmp eq i32 %3, 0
  br i1 %cmp16.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %4 = load ptr, ptr @def_output, align 4
  %outputs = getelementptr inbounds %struct.vpbe_config, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %outputs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.vpbe_output, ptr %6, i32 %i.017, i32 0, i32 1
  %call = tail call i32 @strcmp(ptr noundef %4, ptr noundef %name) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call2 = tail call i32 @vpbe_set_output(ptr noundef %vpbe_dev, i32 noundef %i.017)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %current_out_index = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %7 = ptrtoint ptr %current_out_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.017, ptr %current_out_index, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then4, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call2, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpbe_set_default_mode(ptr noundef %vpbe_dev) unnamed_addr #2 align 64 {
entry:
  %var.sroa.6.i = alloca [204 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @def_mode, align 4
  %cfg1.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 1
  %1 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfg1.i, align 8
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %var.sroa.6.i)
  %current_out_index.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 11
  %3 = ptrtoint ptr %current_out_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_out_index.i, align 8
  %outputs.i = getelementptr inbounds %struct.vpbe_config, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %outputs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %outputs.i, align 4
  %num_modes.i = getelementptr %struct.vpbe_output, ptr %6, i32 %4, i32 3
  %7 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_modes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16.not.i = icmp eq i32 %8, 0
  br i1 %cmp16.not.i, label %entry.vpbe_get_std_info_by_name.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.vpbe_get_std_info_by_name.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpbe_get_std_info_by_name.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %modes.i = getelementptr %struct.vpbe_output, ptr %6, i32 %4, i32 4
  %9 = ptrtoint ptr %modes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %modes.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.cond.i.vpbe_get_std_info_by_name.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.vpbe_get_std_info_by_name.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vpbe_get_std_info_by_name.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.vpbe_enc_mode_info, ptr %10, i32 %i.017.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %var.sroa.0.0.copyload.i = load ptr, ptr %arrayidx5.i, align 8
  %var.sroa.6.0.arrayidx5.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx5.i, i32 4
  %12 = call ptr @memcpy(ptr %var.sroa.6.i, ptr %var.sroa.6.0.arrayidx5.sroa_idx.i, i32 204)
  %call.i = tail call i32 @strcmp(ptr noundef %var.sroa.0.0.copyload.i, ptr noundef %0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %for.cond.i

vpbe_get_std_info_by_name.exit.thread:            ; preds = %for.cond.i.vpbe_get_std_info_by_name.exit.thread_crit_edge, %entry.vpbe_get_std_info_by_name.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %var.sroa.6.i)
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %current_timings.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12
  %13 = ptrtoint ptr %current_timings.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %var.sroa.0.0.copyload.i, ptr %current_timings.i, align 8
  %var.sroa.6.0.current_timings.sroa_idx.i = getelementptr inbounds %struct.vpbe_device, ptr %vpbe_dev, i32 0, i32 12, i32 1
  %14 = call ptr @memcpy(ptr %var.sroa.6.0.current_timings.sroa_idx.i, ptr %var.sroa.6.i, i32 204)
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %var.sroa.6.i)
  %call1 = tail call i32 @vpbe_set_mode(ptr noundef %vpbe_dev, ptr noundef %current_timings.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vpbe_get_std_info_by_name.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %vpbe_get_std_info_by_name.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__param_def_output, !1, !"__param_def_output", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_def_outputtype292, !1, !"__UNIQUE_ID_def_outputtype292", i1 false, i1 false}
!3 = !{ptr @__param_def_mode, !4, !"__param_def_mode", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_def_modetype293, !4, !"__UNIQUE_ID_def_modetype293", i1 false, i1 false}
!6 = !{ptr @__param_debug, !7, !"__param_debug", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 34, i32 1}
!8 = !{ptr @__UNIQUE_ID_debugtype294, !7, !"__UNIQUE_ID_debugtype294", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_def_output295, !10, !"__UNIQUE_ID_def_output295", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 36, i32 1}
!11 = !{ptr @__UNIQUE_ID_def_mode296, !12, !"__UNIQUE_ID_def_mode296", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 37, i32 1}
!13 = !{ptr @__UNIQUE_ID_debug297, !14, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 38, i32 1}
!15 = !{ptr @__UNIQUE_ID_description298, !16, !"__UNIQUE_ID_description298", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 40, i32 1}
!17 = !{ptr @__UNIQUE_ID_file299, !18, !"__UNIQUE_ID_file299", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 41, i32 1}
!19 = !{ptr @__UNIQUE_ID_license300, !18, !"__UNIQUE_ID_license300", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author301, !21, !"__UNIQUE_ID_author301", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 42, i32 1}
!22 = !{ptr @__initcall__kmod_vpbe__302_840_vpbe_driver_init6, !23, !"__initcall__kmod_vpbe__302_840_vpbe_driver_init6", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 840, i32 1}
!24 = !{ptr @__exitcall_vpbe_driver_exit, !23, !"__exitcall_vpbe_driver_exit", i1 false, i1 false}
!25 = !{ptr @debug, !26, !"debug", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 30, i32 12}
!27 = !{ptr @__param_str_def_output, !1, !"__param_str_def_output", i1 false, i1 false}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 28, i32 27}
!30 = !{ptr @def_output, !31, !"def_output", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 28, i32 14}
!32 = !{ptr @__param_str_def_mode, !4, !"__param_str_def_mode", i1 false, i1 false}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 29, i32 25}
!35 = !{ptr @def_mode, !36, !"def_mode", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 29, i32 14}
!37 = !{ptr @__param_str_debug, !7, !"__param_str_debug", i1 false, i1 false}
!38 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 834, i32 11}
!40 = !{ptr @vpbe_driver, !41, !"vpbe_driver", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 832, i32 31}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 789, i32 3}
!44 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vpbe_probe._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @vpbe_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 797, i32 3}
!50 = !{ptr @vpbe_probe._entry.6, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vpbe_probe._entry_ptr.8, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @vpbe_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 818, i32 2}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vpbe_dev_ops, !56, !"vpbe_dev_ops", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 768, i32 37}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 573, i32 3}
!59 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vpbe_initialize._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @vpbe_initialize._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 582, i32 41}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 584, i32 47}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 602, i32 3}
!68 = !{ptr @vpbe_initialize._entry.14, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @vpbe_initialize._entry_ptr.16, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 606, i32 2}
!72 = !{ptr @vpbe_initialize._entry.17, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vpbe_initialize._entry_ptr.19, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 619, i32 3}
!76 = !{ptr @vpbe_initialize._entry.20, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @vpbe_initialize._entry_ptr.22, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 629, i32 4}
!80 = !{ptr @vpbe_initialize._entry.23, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @vpbe_initialize._entry_ptr.25, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 664, i32 5}
!84 = !{ptr @vpbe_initialize._entry.26, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @vpbe_initialize._entry_ptr.28, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 668, i32 5}
!88 = !{ptr @vpbe_initialize._entry.29, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @vpbe_initialize._entry_ptr.31, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 674, i32 4}
!92 = !{ptr @vpbe_initialize._entry.32, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vpbe_initialize._entry_ptr.34, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 677, i32 42}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 685, i32 5}
!98 = !{ptr @vpbe_initialize._entry.36, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vpbe_initialize._entry_ptr.38, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @vpbe_initialize._entry.39, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 691, i32 4}
!102 = !{ptr @vpbe_initialize._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 696, i32 8}
!105 = !{ptr @vpbe_initialize._entry.41, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @vpbe_initialize._entry_ptr.43, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 708, i32 2}
!109 = !{ptr @vpbe_initialize._entry.44, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @vpbe_initialize._entry_ptr.46, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 711, i32 3}
!113 = !{ptr @vpbe_initialize._entry.47, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @vpbe_initialize._entry_ptr.49, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 716, i32 2}
!117 = !{ptr @vpbe_initialize._entry.50, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @vpbe_initialize._entry_ptr.52, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 719, i32 3}
!121 = !{ptr @vpbe_initialize._entry.53, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @vpbe_initialize._entry_ptr.55, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 535, i32 25}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/davinci/vpbe.c", i32 537, i32 25}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"branch_weights", i32 1, i32 2000}
