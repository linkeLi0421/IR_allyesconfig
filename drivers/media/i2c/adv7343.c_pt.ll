; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv7343.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7343.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7343_std_info = type { i32, i32, i64 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.adv7343_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i8, i8, i8, i8, i8, i8, i32, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7343_power_mode = type { i8, i8, [6 x i32] }
%struct.adv7343_platform_data = type { %struct.adv7343_power_mode, %struct.adv7343_sd_config }
%struct.adv7343_sd_config = type { [2 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [49 x i8] c"adv7343.description=ADV7343 video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"adv7343.file=drivers/media/i2c/adv7343\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [20 x i8] c"adv7343.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"adv7343.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype295 = internal constant [27 x i8] c"adv7343.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug296 = internal constant [35 x i8] c"adv7343.parm=debug:Debug level 0-1\00", section ".modinfo", align 1
@__initcall__kmod_adv7343__297_531_adv7343_driver_init6 = internal global ptr @adv7343_driver_init, section ".initcall6.init", align 4
@adv7343_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @adv7343_remove, ptr @adv7343_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adv7343_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7343_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv7343_driver_exit = internal global ptr @adv7343_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7343\00", [24 x i8] zeroinitializer }, align 32
@adv7343_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7343\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adv7343_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7343\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adv7343_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7343_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/adv7343.c\00", [36 x i8] zeroinitializer }, align 32
@adv7343_probe._entry_ptr = internal global ptr @adv7343_probe._entry, section ".printk_index", align 4
@adv7343_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @adv7343_core_ops, ptr null, ptr null, ptr @adv7343_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@adv7343_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"adv7343:462:(&state->hdl)->_lock\00", [63 x i8] zeroinitializer }, align 32
@adv7343_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv7343_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,power-mode-sleep-mode\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,power-mode-pll-ctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,dac-enable\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adi,sd-dac-enable\00", [46 x i8] zeroinitializer }, align 32
@adv7343_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @adv7343_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7343_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @adv7343_s_routing, ptr null, ptr null, ptr null, ptr @adv7343_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv7343_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: Standard: %llx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7343_log_status\00", [45 x i8] zeroinitializer }, align 32
@adv7343_log_status._entry_ptr = internal global ptr @adv7343_log_status._entry, section ".printk_index", align 4
@adv7343_log_status._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: Output: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@adv7343_log_status._entry_ptr.13 = internal global ptr @adv7343_log_status._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Component\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@adv7343_setoutput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: Invalid output type or output type not supported:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv7343_setoutput\00", [46 x i8] zeroinitializer }, align 32
@adv7343_setoutput._entry_ptr = internal global ptr @adv7343_setoutput._entry, section ".printk_index", align 4
@adv7343_setoutput._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Error setting output, write failed\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7343_setoutput._entry_ptr.21 = internal global ptr @adv7343_setoutput._entry.19, section ".printk_index", align 4
@stdinfo = internal constant { [7 x %struct.adv7343_std_info], [48 x i8] } { [7 x %struct.adv7343_std_info] [%struct.adv7343_std_info { i32 0, i32 569408542, i64 45056 }, %struct.adv7343_std_info { i32 2, i32 568782678, i64 256 }, %struct.adv7343_std_info { i32 3, i32 569807903, i64 1024 }, %struct.adv7343_std_info { i32 3, i32 705268427, i64 512 }, %struct.adv7343_std_info { i32 1, i32 705268427, i64 255 }, %struct.adv7343_std_info { i32 0, i32 705268427, i64 16384 }, %struct.adv7343_std_info { i32 2, i32 705268427, i64 2048 }], [48 x i8] zeroinitializer }, align 32
@adv7343_setstd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: Invalid std or std is not supported: %llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adv7343_setstd\00", [17 x i8] zeroinitializer }, align 32
@adv7343_setstd._entry_ptr = internal global ptr @adv7343_setstd._entry, section ".printk_index", align 4
@adv7343_setstd._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Error setting std, write failed\0A\00", [57 x i8] zeroinitializer }, align 32
@adv7343_setstd._entry_ptr.26 = internal global ptr @adv7343_setstd._entry.24, section ".printk_index", align 4
@adv7343_init_reg_val = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\17\02\00\100<1\012\003\E84\085\009\00\80\00\82\C9\83\10\84\01\86\02\87\0C\88\04\89\00\A0\7F\99\10\A1\03", [56 x i8] zeroinitializer }, align 32
@adv7343_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: Error initializing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7343_initialize\00", [45 x i8] zeroinitializer }, align 32
@adv7343_initialize._entry_ptr = internal global ptr @adv7343_initialize._entry, section ".printk_index", align 4
@adv7343_initialize._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error setting output during init\0A\00", [56 x i8] zeroinitializer }, align 32
@adv7343_initialize._entry_ptr.31 = internal global ptr @adv7343_initialize._entry.29, section ".printk_index", align 4
@adv7343_initialize._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error setting std during init\0A\00", [59 x i8] zeroinitializer }, align 32
@adv7343_initialize._entry_ptr.34 = internal global ptr @adv7343_initialize._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 9963776, i64 9963779, i64 9963795]
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 41, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"adv7343_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 521, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 524, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"adv7343_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 514, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"adv7343_id\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 506, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 439, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"adv7343_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 360, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 462, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"adv7343_ctrl_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 316, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 415, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 418, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 420, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 423, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"adv7343_core_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 320, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"adv7343_video_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 355, i32 43 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 292, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 293, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 212, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 283, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [8 x i8] c"stdinfo\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 107, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 151, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 200, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"adv7343_init_reg_val\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 76, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 376, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 384, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [31 x i8] c"../drivers/media/i2c/adv7343.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 390, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_debug296, ptr @__UNIQUE_ID_debugtype295, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_adv7343_driver_exit, ptr @__initcall__kmod_adv7343__297_531_adv7343_driver_init6, ptr @__param_debug, ptr @adv7343_driver_exit, ptr @adv7343_initialize._entry, ptr @adv7343_initialize._entry.29, ptr @adv7343_initialize._entry.32, ptr @adv7343_initialize._entry_ptr, ptr @adv7343_initialize._entry_ptr.31, ptr @adv7343_initialize._entry_ptr.34, ptr @adv7343_log_status._entry, ptr @adv7343_log_status._entry.11, ptr @adv7343_log_status._entry_ptr, ptr @adv7343_log_status._entry_ptr.13, ptr @adv7343_probe._entry, ptr @adv7343_probe._entry_ptr, ptr @adv7343_setoutput._entry, ptr @adv7343_setoutput._entry.19, ptr @adv7343_setoutput._entry_ptr, ptr @adv7343_setoutput._entry_ptr.21, ptr @adv7343_setstd._entry, ptr @adv7343_setstd._entry.24, ptr @adv7343_setstd._entry_ptr, ptr @adv7343_setstd._entry_ptr.26, ptr @debug, ptr @adv7343_driver, ptr @.str, ptr @adv7343_of_match, ptr @adv7343_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @adv7343_ops, ptr @adv7343_probe._key, ptr @.str.4, ptr @adv7343_ctrl_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @adv7343_core_ops, ptr @adv7343_video_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @stdinfo, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @adv7343_init_reg_val, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_log_status._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_setoutput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_setoutput._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdinfo to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_setstd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_setstd._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_init_reg_val to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_initialize._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7343_initialize._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7343_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7343_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7343_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7343_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7343_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #4
  %hdl = getelementptr inbounds %struct.adv7343_state, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7343_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name6 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 408, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %18 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i, align 8
  br label %adv7343_get_pdata.exit

if.end.i:                                         ; preds = %if.end12
  %call.i77 = tail call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %17, ptr noundef null) #4
  %tobool4.not.i = icmp eq ptr %call.i77, null
  br i1 %tobool4.not.i, label %if.end.i.adv7343_get_pdata.exit_crit_edge, label %if.end6.i

if.end.i.adv7343_get_pdata.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %adv7343_get_pdata.exit

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i78 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #4
  %tobool9.not.i = icmp eq ptr %call.i.i78, null
  br i1 %tobool9.not.i, label %if.end6.i.done.i_crit_edge, label %if.end11.i

if.end6.i.done.i_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.i

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i34.i = tail call ptr @of_find_property(ptr noundef nonnull %call.i77, ptr noundef nonnull @.str.5, ptr noundef null) #4
  %tobool.i.i = icmp ne ptr %call.i34.i, null
  %frombool.i = zext i1 %tobool.i.i to i8
  %20 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %call.i.i78, align 4
  %call.i35.i = tail call ptr @of_find_property(ptr noundef nonnull %call.i77, ptr noundef nonnull @.str.6, ptr noundef null) #4
  %tobool.i36.i = icmp ne ptr %call.i35.i, null
  %pll_control.i = getelementptr inbounds %struct.adv7343_power_mode, ptr %call.i.i78, i32 0, i32 1
  %frombool15.i = zext i1 %tobool.i36.i to i8
  %21 = ptrtoint ptr %pll_control.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool15.i, ptr %pll_control.i, align 1
  %dac.i = getelementptr inbounds %struct.adv7343_power_mode, ptr %call.i.i78, i32 0, i32 2
  %call.i37.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i77, ptr noundef nonnull @.str.7, ptr noundef %dac.i, i32 noundef 6, i32 noundef 0) #4
  %sd_config.i = getelementptr inbounds %struct.adv7343_platform_data, ptr %call.i.i78, i32 0, i32 1
  %call.i38.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i77, ptr noundef nonnull @.str.8, ptr noundef %sd_config.i, i32 noundef 2, i32 noundef 0) #4
  br label %done.i

done.i:                                           ; preds = %if.end11.i, %if.end6.i.done.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i77) #4
  br label %adv7343_get_pdata.exit

adv7343_get_pdata.exit:                           ; preds = %done.i, %if.end.i.adv7343_get_pdata.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %call.i.i78, %done.i ], [ %19, %if.then.i ], [ null, %if.end.i.adv7343_get_pdata.exit_crit_edge ]
  %pdata = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i, ptr %pdata, align 4
  %reg00 = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %reg00 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -128, ptr %reg00, align 8
  %reg01 = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %reg01 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %reg01, align 1
  %reg02 = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %reg02 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 32, ptr %reg02, align 2
  %reg35 = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %reg35 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %reg35, align 1
  %reg80 = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %reg80 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %reg80, align 4
  %reg82 = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %reg82 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -55, ptr %reg82, align 1
  %output = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %output, align 8
  %std = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 45056, ptr %std, align 8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @adv7343_ops) #4
  %hdl = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 1
  %call15 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @adv7343_probe._key, ptr noundef nonnull @.str.4) #4
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @adv7343_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 3) #4
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @adv7343_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #4
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @adv7343_ctrl_ops, i32 noundef 9963795, i64 noundef -64, i64 noundef 64, i64 noundef 1, i64 noundef 0) #4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %error = getelementptr inbounds %struct.adv7343_state, ptr %call.i, i32 0, i32 1, i32 9
  %32 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool25.not = icmp eq i32 %33, 0
  br i1 %tobool25.not, label %if.end29, label %adv7343_get_pdata.exit.done_crit_edge

adv7343_get_pdata.exit.done_crit_edge:            ; preds = %adv7343_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end29:                                         ; preds = %adv7343_get_pdata.exit
  %call31 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #4
  %call33 = tail call fastcc i32 @adv7343_initialize(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end29.done_crit_edge

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #4
  br label %done

done:                                             ; preds = %if.end36, %if.end29.done_crit_edge, %adv7343_get_pdata.exit.done_crit_edge
  %err.0 = phi i32 [ %call33, %if.end29.done_crit_edge ], [ %call38, %if.end36 ], [ %33, %adv7343_get_pdata.exit.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp39 = icmp slt i32 %err.0, 0
  br i1 %cmp39, label %if.then41, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then41:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %done.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ %err.0, %if.then41 ], [ %err.0, %done.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7343_initialize(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add4 = add nuw nsw i32 %i.043, 2
  %cmp = icmp ult i32 %i.043, 38
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.043 = phi i32 [ 0, %entry ], [ %add4, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [40 x i8], ptr @adv7343_init_reg_val, i32 0, i32 %i.043
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %add = or i32 %i.043, 1
  %arrayidx1 = getelementptr [40 x i8], ptr @adv7343_init_reg_val, i32 0, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %1, i8 noundef zeroext %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  %output = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 9
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output, align 8
  %call5 = tail call fastcc i32 @adv7343_setoutput(ptr noundef %sd, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %for.end.cleanup.sink.split_crit_edge, label %if.end15

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end15:                                         ; preds = %for.end
  %std = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 10
  %8 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std, align 8
  %call16 = tail call fastcc i32 @adv7343_setstd(ptr noundef %sd, i64 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup.sink.split_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.30, %for.end.cleanup.sink.split_crit_edge ], [ @.str.33, %if.end15.cleanup.sink.split_crit_edge ], [ @.str.27, %for.body.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %for.end.cleanup.sink.split_crit_edge ], [ -22, %if.end15.cleanup.sink.split_crit_edge ], [ %call1.i, %for.body.cleanup.sink.split_crit_edge ]
  %name23 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.33.sink, ptr noundef %name23) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7343_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %std = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 10
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, i64 noundef %1) #7
  %output = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 9
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp9 = icmp eq i32 %3, 1
  %cond = select i1 %cmp9, ptr @.str.15, ptr @.str.16
  %cond10 = select i1 %cmp, ptr @.str.14, ptr %cond
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull %cond10) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7343_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %output1 = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %output)
  %cmp = icmp eq i32 %1, %output
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @adv7343_setoutput(ptr noundef %sd, i32 noundef %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %output1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %output, ptr %output1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7343_s_std_output(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %std1 = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 10
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %std)
  %cmp = icmp eq i64 %1, %std
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @adv7343_setstd(ptr noundef %sd, i64 noundef %std)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %std1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %std, ptr %std1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7343_setoutput(ptr noundef %sd, i32 noundef %output_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %output_type)
  %cmp = icmp ugt i32 %output_type, 2
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %output_type) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %reg00 = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 3
  %1 = ptrtoint ptr %reg00 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg00, align 8
  %3 = and i8 %2, 3
  %pdata = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then9, label %if.else27

if.then9:                                         ; preds = %if.end7
  %6 = zext i32 %output_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %output_type, label %if.else21 [
    i32 0, label %if.then12
    i32 1, label %if.then17
  ]

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %7 = or i8 %3, -128
  br label %if.end72

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %8 = or i8 %3, 28
  br label %if.end72

if.else21:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %9 = or i8 %3, 96
  br label %if.end72

if.else27:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 4, !range !105
  %pll_control = getelementptr inbounds %struct.adv7343_power_mode, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %pll_control to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pll_control, align 1, !range !105
  %14 = shl nuw nsw i8 %13, 1
  %or36256 = or i8 %14, %11
  %or36 = zext i8 %or36256 to i32
  %dac = getelementptr inbounds %struct.adv7343_power_mode, ptr %5, i32 0, i32 2
  %arrayidx = getelementptr %struct.adv7343_power_mode, ptr %5, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %shl39 = shl i32 %16, 2
  %or40 = or i32 %shl39, %or36
  %arrayidx44 = getelementptr %struct.adv7343_power_mode, ptr %5, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx44, align 4
  %shl45 = shl i32 %18, 3
  %or46 = or i32 %or40, %shl45
  %19 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dac, align 4
  %shl51 = shl i32 %20, 4
  %or52 = or i32 %or46, %shl51
  %arrayidx56 = getelementptr %struct.adv7343_power_mode, ptr %5, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx56, align 4
  %shl57 = shl i32 %22, 5
  %or58 = or i32 %or52, %shl57
  %arrayidx62 = getelementptr %struct.adv7343_power_mode, ptr %5, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx62, align 4
  %shl63 = shl i32 %24, 6
  %or64 = or i32 %or58, %shl63
  %arrayidx68 = getelementptr %struct.adv7343_power_mode, ptr %5, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx68, align 4
  %shl69 = shl i32 %26, 7
  %or70 = or i32 %or64, %shl69
  %conv71 = trunc i32 %or70 to i8
  br label %if.end72

if.end72:                                         ; preds = %if.else27, %if.else21, %if.then17, %if.then12
  %val.0 = phi i8 [ %conv71, %if.else27 ], [ %7, %if.then12 ], [ %8, %if.then17 ], [ %9, %if.else21 ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %27 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 0, i8 noundef zeroext %val.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp74 = icmp slt i32 %call1.i, 0
  br i1 %cmp74, label %if.end72.do.end183_crit_edge, label %if.end77

if.end72.do.end183_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end183

if.end77:                                         ; preds = %if.end72
  %29 = ptrtoint ptr %reg00 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %val.0, ptr %reg00, align 8
  %reg02 = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 5
  %30 = ptrtoint ptr %reg02 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg02, align 2
  %32 = or i8 %31, 32
  %33 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i258 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 2, i8 noundef zeroext %32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i258)
  %cmp83 = icmp slt i32 %call1.i258, 0
  br i1 %cmp83, label %if.end77.do.end183_crit_edge, label %if.end86

if.end77.do.end183_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end183

if.end86:                                         ; preds = %if.end77
  %35 = ptrtoint ptr %reg02 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %reg02, align 2
  %reg82 = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 8
  %36 = ptrtoint ptr %reg82 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg82, align 1
  %38 = and i8 %37, -7
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 4
  %tobool92.not = icmp eq ptr %40, null
  br i1 %tobool92.not, label %if.end86.if.end162_crit_edge, label %land.lhs.true

if.end86.if.end162_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end162

land.lhs.true:                                    ; preds = %if.end86
  %sd_config = getelementptr inbounds %struct.adv7343_platform_data, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %sd_config to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sd_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool95.not = icmp eq i32 %42, 0
  %.tr255 = trunc i32 %42 to i8
  %43 = shl i8 %.tr255, 1
  %conv104 = select i1 %tobool95.not, i8 0, i8 %43
  %val.1.ph = or i8 %conv104, %38
  %arrayidx131 = getelementptr %struct.adv7343_platform_data, ptr %40, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool132.not = icmp eq i32 %45, 0
  br i1 %tobool132.not, label %land.lhs.true.if.end162_crit_edge, label %if.then133

land.lhs.true.if.end162_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end162

if.then133:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %.tr = trunc i32 %45 to i8
  %46 = shl i8 %.tr, 2
  %conv141 = or i8 %val.1.ph, %46
  br label %if.end162

if.end162:                                        ; preds = %if.then133, %land.lhs.true.if.end162_crit_edge, %if.end86.if.end162_crit_edge
  %val.2 = phi i8 [ %conv141, %if.then133 ], [ %val.1.ph, %land.lhs.true.if.end162_crit_edge ], [ %38, %if.end86.if.end162_crit_edge ]
  %47 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i260 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -126, i8 noundef zeroext %val.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i260)
  %cmp164 = icmp slt i32 %call1.i260, 0
  br i1 %cmp164, label %if.end162.do.end183_crit_edge, label %if.end167

if.end162.do.end183_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end183

if.end167:                                        ; preds = %if.end162
  %49 = ptrtoint ptr %reg82 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %val.2, ptr %reg82, align 1
  %reg35 = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 6
  %50 = ptrtoint ptr %reg35 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg35, align 1
  %52 = and i8 %51, -11
  %53 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i262 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 53, i8 noundef zeroext %52) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i262)
  %cmp173 = icmp slt i32 %call1.i262, 0
  br i1 %cmp173, label %if.end167.do.end183_crit_edge, label %setoutput_exit

if.end167.do.end183_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end183

setoutput_exit:                                   ; preds = %if.end167
  %55 = ptrtoint ptr %reg35 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %reg35, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i262)
  %cmp178.not = icmp eq i32 %call1.i262, 0
  br i1 %cmp178.not, label %setoutput_exit.cleanup_crit_edge, label %setoutput_exit.do.end183_crit_edge

setoutput_exit.do.end183_crit_edge:               ; preds = %setoutput_exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end183

setoutput_exit.cleanup_crit_edge:                 ; preds = %setoutput_exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end183:                                        ; preds = %setoutput_exit.do.end183_crit_edge, %if.end167.do.end183_crit_edge, %if.end162.do.end183_crit_edge, %if.end77.do.end183_crit_edge, %if.end72.do.end183_crit_edge
  %err.0267 = phi i32 [ %call1.i262, %setoutput_exit.do.end183_crit_edge ], [ %call1.i262, %if.end167.do.end183_crit_edge ], [ %call1.i260, %if.end162.do.end183_crit_edge ], [ %call1.i258, %if.end77.do.end183_crit_edge ], [ %call1.i, %if.end72.do.end183_crit_edge ]
  %name185 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name185) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end183, %setoutput_exit.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %err.0267, %do.end183 ], [ 0, %setoutput_exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7343_setstd(ptr noundef %sd, i64 noundef %std) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.inc:                                          ; preds = %entry
  %and.1 = and i64 %std, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i64 %std, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %tobool.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.end10_crit_edge

for.inc.1.if.end10_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i64 %std, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3)
  %tobool.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.end10_crit_edge

for.inc.2.if.end10_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4)
  %tobool.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.end10_crit_edge

for.inc.3.if.end10_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i64 %std, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.5)
  %tobool.not.5 = icmp eq i64 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.end10_crit_edge

for.inc.4.if.end10_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i64 %std, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.6)
  %tobool.not.6 = icmp eq i64 %and.6, 0
  br i1 %tobool.not.6, label %do.body, label %for.inc.5.if.end10_crit_edge

for.inc.5.if.end10_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body:                                          ; preds = %for.inc.5
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, i64 noundef %std) #7
  br label %cleanup

if.end10:                                         ; preds = %for.inc.5.if.end10_crit_edge, %for.inc.4.if.end10_crit_edge, %for.inc.3.if.end10_crit_edge, %for.inc.2.if.end10_crit_edge, %for.inc.1.if.end10_crit_edge, %for.inc.if.end10_crit_edge, %entry.if.end10_crit_edge
  %i.0139.lcssa = phi i32 [ 0, %entry.if.end10_crit_edge ], [ 1, %for.inc.if.end10_crit_edge ], [ 2, %for.inc.1.if.end10_crit_edge ], [ 3, %for.inc.2.if.end10_crit_edge ], [ 4, %for.inc.3.if.end10_crit_edge ], [ 5, %for.inc.4.if.end10_crit_edge ], [ 6, %for.inc.5.if.end10_crit_edge ]
  %reg80 = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 7
  %1 = ptrtoint ptr %reg80 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg80, align 4
  %3 = and i8 %2, -4
  %arrayidx13 = getelementptr %struct.adv7343_std_info, ptr @stdinfo, i32 %i.0139.lcssa
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx13, align 8
  %6 = trunc i32 %5 to i8
  %conv15 = or i8 %3, %6
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -128, i8 noundef zeroext %conv15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp17 = icmp slt i32 %call1.i, 0
  br i1 %cmp17, label %if.end10.do.end74_crit_edge, label %if.end20

if.end10.do.end74_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

if.end20:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %reg80 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv15, ptr %reg80, align 4
  %reg01 = getelementptr inbounds %struct.adv7343_state, ptr %sd, i32 0, i32 4
  %10 = ptrtoint ptr %reg01 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg01, align 1
  %12 = and i8 %11, -113
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i128 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 1, i8 noundef zeroext %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %cmp29 = icmp slt i32 %call1.i128, 0
  br i1 %cmp29, label %if.end20.do.end74_crit_edge, label %if.end32

if.end20.do.end74_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

if.end32:                                         ; preds = %if.end20
  %15 = ptrtoint ptr %reg01 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %reg01, align 1
  %fsc_val = getelementptr %struct.adv7343_std_info, ptr @stdinfo, i32 %i.0139.lcssa, i32 1
  %16 = ptrtoint ptr %fsc_val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fsc_val, align 4
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i130 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -116, i8 noundef zeroext %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130)
  %cmp40 = icmp slt i32 %call1.i130, 0
  br i1 %cmp40, label %if.end32.do.end74_crit_edge, label %for.inc44

if.end32.do.end74_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

for.inc44:                                        ; preds = %if.end32
  %incdec.ptr = getelementptr i8, ptr %fsc_val, i32 1
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr, align 1
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i130.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -115, i8 noundef zeroext %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130.1)
  %cmp40.1 = icmp slt i32 %call1.i130.1, 0
  br i1 %cmp40.1, label %for.inc44.do.end74_crit_edge, label %for.inc44.1

for.inc44.do.end74_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

for.inc44.1:                                      ; preds = %for.inc44
  %incdec.ptr.1 = getelementptr i8, ptr %fsc_val, i32 2
  %24 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.1, align 2
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i130.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -114, i8 noundef zeroext %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130.2)
  %cmp40.2 = icmp slt i32 %call1.i130.2, 0
  br i1 %cmp40.2, label %for.inc44.1.do.end74_crit_edge, label %for.inc44.2

for.inc44.1.do.end74_crit_edge:                   ; preds = %for.inc44.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

for.inc44.2:                                      ; preds = %for.inc44.1
  %incdec.ptr.2 = getelementptr i8, ptr %fsc_val, i32 3
  %28 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.2, align 1
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i130.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -113, i8 noundef zeroext %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i130.3)
  %cmp40.3 = icmp slt i32 %call1.i130.3, 0
  br i1 %cmp40.3, label %for.inc44.2.do.end74_crit_edge, label %for.inc44.3

for.inc44.2.do.end74_crit_edge:                   ; preds = %for.inc44.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

for.inc44.3:                                      ; preds = %for.inc44.2
  %32 = ptrtoint ptr %reg80 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg80, align 4
  %and49 = and i64 %std, 61440
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and49)
  %tobool50.not = icmp eq i64 %and49, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %for.inc44.3
  call void @__sanitizer_cov_trace_pc() #6
  %34 = and i8 %33, 3
  br label %if.end62

if.else:                                          ; preds = %for.inc44.3
  call void @__sanitizer_cov_trace_pc() #6
  %and55 = and i64 %std, -16711681
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55)
  %tobool56.not = icmp eq i64 %and55, 0
  %35 = or i8 %33, 4
  %spec.select = select i1 %tobool56.not, i8 %33, i8 %35
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then51
  %val.0 = phi i8 [ %34, %if.then51 ], [ %spec.select, %if.else ]
  %36 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i132 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext -128, i8 noundef zeroext %val.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %cmp64 = icmp slt i32 %call1.i132, 0
  br i1 %cmp64, label %if.end62.do.end74_crit_edge, label %setstd_exit

if.end62.do.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

setstd_exit:                                      ; preds = %if.end62
  %38 = ptrtoint ptr %reg80 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %val.0, ptr %reg80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %cmp69.not = icmp eq i32 %call1.i132, 0
  br i1 %cmp69.not, label %setstd_exit.cleanup_crit_edge, label %setstd_exit.do.end74_crit_edge

setstd_exit.do.end74_crit_edge:                   ; preds = %setstd_exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

setstd_exit.cleanup_crit_edge:                    ; preds = %setstd_exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end74:                                         ; preds = %setstd_exit.do.end74_crit_edge, %if.end62.do.end74_crit_edge, %for.inc44.2.do.end74_crit_edge, %for.inc44.1.do.end74_crit_edge, %for.inc44.do.end74_crit_edge, %if.end32.do.end74_crit_edge, %if.end20.do.end74_crit_edge, %if.end10.do.end74_crit_edge
  %err.0136 = phi i32 [ %call1.i132, %setstd_exit.do.end74_crit_edge ], [ %call1.i132, %if.end62.do.end74_crit_edge ], [ %call1.i128, %if.end20.do.end74_crit_edge ], [ %call1.i, %if.end10.do.end74_crit_edge ], [ %call1.i130, %if.end32.do.end74_crit_edge ], [ %call1.i130.1, %for.inc44.do.end74_crit_edge ], [ %call1.i130.2, %for.inc44.1.do.end74_crit_edge ], [ %call1.i130.3, %for.inc44.2.do.end74_crit_edge ]
  %name76 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name76) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %setstd_exit.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %err.0136, %do.end74 ], [ 0, %setstd_exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7343_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %entry.cleanup.sink.split_crit_edge
    i32 9963779, label %sw.bb2
    i32 9963795, label %sw.bb6
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6, %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink20 = phi i8 [ 11, %sw.bb6 ], [ -96, %sw.bb2 ], [ -95, %entry.cleanup.sink.split_crit_edge ]
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val7, align 4
  %conv8 = trunc i32 %6 to i8
  %dev_priv.i.i18 = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i18, align 4
  %call1.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %.sink20, i8 noundef zeroext %conv8) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.i19, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv7343.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_file293, !3, !"__UNIQUE_ID_file293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/adv7343.c", i32 39, i32 1}
!4 = !{ptr @__UNIQUE_ID_license294, !3, !"__UNIQUE_ID_license294", i1 false, i1 false}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/adv7343.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype295, !6, !"__UNIQUE_ID_debugtype295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug296, !9, !"__UNIQUE_ID_debug296", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/adv7343.c", i32 43, i32 1}
!10 = !{ptr @__initcall__kmod_adv7343__297_531_adv7343_driver_init6, !11, !"__initcall__kmod_adv7343__297_531_adv7343_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/adv7343.c", i32 531, i32 1}
!12 = !{ptr @__exitcall_adv7343_driver_exit, !11, !"__exitcall_adv7343_driver_exit", i1 false, i1 false}
!13 = !{ptr @debug, !14, !"debug", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/adv7343.c", i32 41, i32 12}
!15 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/adv7343.c", i32 524, i32 11}
!18 = !{ptr @adv7343_driver, !19, !"adv7343_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/adv7343.c", i32 521, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/adv7343.c", i32 439, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @adv7343_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @adv7343_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @adv7343_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/adv7343.c", i32 462, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/adv7343.c", i32 415, i32 30}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/adv7343.c", i32 418, i32 30}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/adv7343.c", i32 420, i32 33}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/adv7343.c", i32 423, i32 33}
!37 = !{ptr @adv7343_ops, !38, !"adv7343_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/adv7343.c", i32 360, i32 37}
!39 = !{ptr @adv7343_core_ops, !40, !"adv7343_core_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/adv7343.c", i32 320, i32 42}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/adv7343.c", i32 292, i32 2}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @adv7343_log_status._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @adv7343_log_status._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/adv7343.c", i32 293, i32 2}
!48 = !{ptr @adv7343_log_status._entry.11, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @adv7343_log_status._entry_ptr.13, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @adv7343_video_ops, !54, !"adv7343_video_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/adv7343.c", i32 355, i32 43}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/adv7343.c", i32 212, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @adv7343_setoutput._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @adv7343_setoutput._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/adv7343.c", i32 283, i32 3}
!62 = !{ptr @adv7343_setoutput._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @adv7343_setoutput._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/adv7343.c", i32 151, i32 3}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @adv7343_setstd._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @adv7343_setstd._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/adv7343.c", i32 200, i32 3}
!71 = !{ptr @adv7343_setstd._entry.24, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @adv7343_setstd._entry_ptr.26, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @stdinfo, !74, !"stdinfo", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/adv7343.c", i32 107, i32 38}
!75 = !{ptr @adv7343_ctrl_ops, !76, !"adv7343_ctrl_ops", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/adv7343.c", i32 316, i32 35}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/adv7343.c", i32 376, i32 4}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @adv7343_initialize._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @adv7343_initialize._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/adv7343.c", i32 384, i32 3}
!84 = !{ptr @adv7343_initialize._entry.29, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @adv7343_initialize._entry_ptr.31, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/adv7343.c", i32 390, i32 3}
!88 = !{ptr @adv7343_initialize._entry.32, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @adv7343_initialize._entry_ptr.34, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @adv7343_init_reg_val, !91, !"adv7343_init_reg_val", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/adv7343.c", i32 76, i32 17}
!92 = !{ptr @adv7343_of_match, !93, !"adv7343_of_match", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/adv7343.c", i32 514, i32 34}
!94 = !{ptr @adv7343_id, !95, !"adv7343_id", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/adv7343.c", i32 506, i32 35}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i8 0, i8 2}
