; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ths8200.c_pt.bc'
source_filename = "../drivers/media/i2c/ths8200.c"
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
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.94 }
%union.anon.94 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ths8200_state = type <{ %struct.v4l2_subdev, i8, i8, %struct.v4l2_dv_timings, [2 x i8] }>
%struct.v4l2_dv_timings = type { i32, %union.anon.92 }
%union.anon.92 = type { [32 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }

@__param_str_debug = internal constant [14 x i8] c"ths8200.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"ths8200.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [37 x i8] c"ths8200.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [67 x i8] c"ths8200.description=Texas Instruments THS8200 video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [57 x i8] c"ths8200.author=Mats Randgaard <mats.randgaard@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [53 x i8] c"ths8200.author=Martin Bugge <martin.bugge@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [39 x i8] c"ths8200.file=drivers/media/i2c/ths8200\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [23 x i8] c"ths8200.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_ths8200__299_509_ths8200_driver_init6 = internal global ptr @ths8200_driver_init, section ".initcall6.init", align 4
@ths8200_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ths8200_remove, ptr @ths8200_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ths8200_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ths8200_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ths8200_driver_exit = internal global ptr @ths8200_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ths8200\00", [24 x i8] zeroinitializer }, align 32
@ths8200_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ths8200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ths8200_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ths8200\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ths8200_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s removed @ 0x%x (%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ths8200_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/ths8200.c\00", [36 x i8] zeroinitializer }, align 32
@ths8200_remove._entry_ptr = internal global ptr @ths8200_remove._entry, section ".printk_index", align 4
@ths8200_s_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: power %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ths8200_s_power\00", [16 x i8] zeroinitializer }, align 32
@ths8200_s_power._entry_ptr = internal global ptr @ths8200_s_power._entry, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@ths8200_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: I2C Write Problem\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ths8200_write\00", [18 x i8] zeroinitializer }, align 32
@ths8200_write._entry_ptr = internal global ptr @ths8200_write._entry, section ".printk_index", align 4
@ths8200_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ths8200_core_ops, ptr null, ptr null, ptr @ths8200_video_ops, ptr null, ptr null, ptr null, ptr @ths8200_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ths8200_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: chip version 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ths8200_probe\00", [18 x i8] zeroinitializer }, align 32
@ths8200_probe._entry_ptr = internal global ptr @ths8200_probe._entry, section ".printk_index", align 4
@ths8200_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@ths8200_probe._entry_ptr.14 = internal global ptr @ths8200_probe._entry.12, section ".printk_index", align 4
@ths8200_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @ths8200_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ths8200_g_register, ptr @ths8200_s_register, ptr @ths8200_s_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ths8200_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ths8200_s_stream, ptr null, ptr null, ptr null, ptr @ths8200_s_dv_timings, ptr @ths8200_g_dv_timings, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ths8200_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ths8200_dv_timings_cap, ptr @ths8200_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ths8200_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: ----- Chip status -----\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ths8200_log_status\00", [45 x i8] zeroinitializer }, align 32
@ths8200_log_status._entry_ptr = internal global ptr @ths8200_log_status._entry, section ".printk_index", align 4
@ths8200_log_status._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: version: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@ths8200_log_status._entry_ptr.19 = internal global ptr @ths8200_log_status._entry.17, section ".printk_index", align 4
@ths8200_log_status._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: power: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@ths8200_log_status._entry_ptr.22 = internal global ptr @ths8200_log_status._entry.20, section ".printk_index", align 4
@ths8200_log_status._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: reset: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@ths8200_log_status._entry_ptr.25 = internal global ptr @ths8200_log_status._entry.23, section ".printk_index", align 4
@ths8200_log_status._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: test pattern: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ths8200_log_status._entry_ptr.28 = internal global ptr @ths8200_log_status._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@ths8200_log_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.16, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: format: %ux%u\0A\00", [43 x i8] zeroinitializer }, align 32
@ths8200_log_status._entry_ptr.33 = internal global ptr @ths8200_log_status._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Configured format:\00", [45 x i8] zeroinitializer }, align 32
@ths8200_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: %s: %sable\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ths8200_s_stream\00", [47 x i8] zeroinitializer }, align 32
@ths8200_s_stream._entry_ptr = internal global ptr @ths8200_s_stream._entry, section ".printk_index", align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@ths8200_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: %s:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ths8200_s_dv_timings\00", [43 x i8] zeroinitializer }, align 32
@ths8200_s_dv_timings._entry_ptr = internal global ptr @ths8200_s_dv_timings._entry, section ".printk_index", align 4
@ths8200_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.94 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1080, i64 25000000, i64 148500000, i32 1, i32 2, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@ths8200_s_dv_timings._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Unsupported format\0A\00", [38 x i8] zeroinitializer }, align 32
@ths8200_s_dv_timings._entry_ptr.43 = internal global ptr @ths8200_s_dv_timings._entry.41, section ".printk_index", align 4
@ths8200_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\017%s: %s: frame %dx%d, polarity %d\0Ahorizontal: front porch %d, back porch %d, sync %d\0Avertical: sync %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ths8200_setup\00", [18 x i8] zeroinitializer }, align 32
@ths8200_setup._entry_ptr = internal global ptr @ths8200_setup._entry, section ".printk_index", align 4
@ths8200_g_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.46, ptr @.str.3, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ths8200_g_dv_timings\00", [43 x i8] zeroinitializer }, align 32
@ths8200_g_dv_timings._entry_ptr = internal global ptr @ths8200_g_dv_timings._entry, section ".printk_index", align 4
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 31, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"ths8200_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 499, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 501, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"ths8200_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 492, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"ths8200_id\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 485, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 476, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 149, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 89, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"ths8200_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 433, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 457, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 465, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"ths8200_core_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 159, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"ths8200_video_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 421, i32 43 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"ths8200_pad_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 427, i32 41 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 128, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 129, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 130, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 131, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 132, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 134, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 139, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 182, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 366, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"ths8200_timings_cap\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 48, i32 41 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 374, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 354, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [31 x i8] c"../drivers/media/i2c/ths8200.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 393, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ths8200_driver_exit, ptr @__initcall__kmod_ths8200__299_509_ths8200_driver_init6, ptr @__param_debug, ptr @ths8200_driver_exit, ptr @ths8200_g_dv_timings._entry, ptr @ths8200_g_dv_timings._entry_ptr, ptr @ths8200_log_status._entry, ptr @ths8200_log_status._entry.17, ptr @ths8200_log_status._entry.20, ptr @ths8200_log_status._entry.23, ptr @ths8200_log_status._entry.26, ptr @ths8200_log_status._entry.31, ptr @ths8200_log_status._entry_ptr, ptr @ths8200_log_status._entry_ptr.19, ptr @ths8200_log_status._entry_ptr.22, ptr @ths8200_log_status._entry_ptr.25, ptr @ths8200_log_status._entry_ptr.28, ptr @ths8200_log_status._entry_ptr.33, ptr @ths8200_probe._entry, ptr @ths8200_probe._entry.12, ptr @ths8200_probe._entry_ptr, ptr @ths8200_probe._entry_ptr.14, ptr @ths8200_remove._entry, ptr @ths8200_remove._entry_ptr, ptr @ths8200_s_dv_timings._entry, ptr @ths8200_s_dv_timings._entry.41, ptr @ths8200_s_dv_timings._entry_ptr, ptr @ths8200_s_dv_timings._entry_ptr.43, ptr @ths8200_s_power._entry, ptr @ths8200_s_power._entry_ptr, ptr @ths8200_s_stream._entry, ptr @ths8200_s_stream._entry_ptr, ptr @ths8200_setup._entry, ptr @ths8200_setup._entry_ptr, ptr @ths8200_write._entry, ptr @ths8200_write._entry_ptr, ptr @debug, ptr @ths8200_driver, ptr @.str, ptr @ths8200_of_match, ptr @ths8200_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ths8200_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ths8200_core_ops, ptr @ths8200_video_ops, ptr @ths8200_pad_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @ths8200_timings_cap, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_s_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_log_status._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_log_status._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_log_status._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_log_status._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_log_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_s_dv_timings._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths8200_g_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ths8200_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ths8200_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ths8200_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %name3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  %conv = zext i16 %4 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %name5 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef %name3, i32 noundef %shl, ptr noundef %name5) #8
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %call10 = tail call i32 @ths8200_s_power(ptr noundef %1, i32 noundef 0)
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 332, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ths8200_ops) #5
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 2) #5
  %conv = trunc i32 %call1.i to i8
  %chip_version = getelementptr inbounds %struct.ths8200_state, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %chip_version to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %chip_version, align 4
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %do.end, label %if.end4.do.end15_crit_edge

if.end4.do.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %conv11 = and i32 %call1.i, 255
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %conv11) #8
  br label %do.end15

do.end15:                                         ; preds = %do.end, %if.end4.do.end15_crit_edge
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 3) #5
  %12 = trunc i32 %call1.i.i.i to i8
  %conv2.i.i = or i8 %12, -64
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i7.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %cmp2.i.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %cmp2.i.i.i, label %do.end15.ths8200_write_and_or.exit.i_crit_edge, label %for.cond.i.i.i

do.end15.ths8200_write_and_or.exit.i_crit_edge:   ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit.i

for.cond.i.i.i:                                   ; preds = %do.end15
  %call1.1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %call1.1.i.i.i, 0
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.ths8200_write_and_or.exit.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.ths8200_write_and_or.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %call1.2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %call1.2.i.i.i, 0
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.ths8200_write_and_or.exit.i_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.ths8200_write_and_or.exit.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i.i) #8
  br label %ths8200_write_and_or.exit.i

ths8200_write_and_or.exit.i:                      ; preds = %for.cond.2.i.i.i, %for.cond.1.i.i.i.ths8200_write_and_or.exit.i_crit_edge, %for.cond.i.i.i.ths8200_write_and_or.exit.i_crit_edge, %do.end15.ths8200_write_and_or.exit.i_crit_edge
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 28, i8 noundef zeroext 112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %ths8200_write_and_or.exit.i.ths8200_write.exit.i_crit_edge, label %for.cond.i.i

ths8200_write_and_or.exit.i.ths8200_write.exit.i_crit_edge: ; preds = %ths8200_write_and_or.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit.i

for.cond.i.i:                                     ; preds = %ths8200_write_and_or.exit.i
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 28, i8 noundef zeroext 112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.ths8200_write.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.ths8200_write.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 28, i8 noundef zeroext 112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.ths8200_write.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.ths8200_write.exit.i_crit_edge:    ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i) #8
  br label %ths8200_write.exit.i

ths8200_write.exit.i:                             ; preds = %for.cond.2.i.i, %for.cond.1.i.i.ths8200_write.exit.i_crit_edge, %for.cond.i.i.ths8200_write.exit.i_crit_edge, %ths8200_write_and_or.exit.i.ths8200_write.exit.i_crit_edge
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 56, i8 noundef zeroext -121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %cmp2.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %cmp2.i10.i, label %ths8200_write.exit.i.ths8200_write.exit20.i_crit_edge, label %for.cond.i13.i

ths8200_write.exit.i.ths8200_write.exit20.i_crit_edge: ; preds = %ths8200_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit20.i

for.cond.i13.i:                                   ; preds = %ths8200_write.exit.i
  %call1.1.i11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 56, i8 noundef zeroext -121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i11.i)
  %cmp2.1.i12.i = icmp eq i32 %call1.1.i11.i, 0
  br i1 %cmp2.1.i12.i, label %for.cond.i13.i.ths8200_write.exit20.i_crit_edge, label %for.cond.1.i16.i

for.cond.i13.i.ths8200_write.exit20.i_crit_edge:  ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit20.i

for.cond.1.i16.i:                                 ; preds = %for.cond.i13.i
  %call1.2.i14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 56, i8 noundef zeroext -121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i14.i)
  %cmp2.2.i15.i = icmp eq i32 %call1.2.i14.i, 0
  br i1 %cmp2.2.i15.i, label %for.cond.1.i16.i.ths8200_write.exit20.i_crit_edge, label %for.cond.2.i19.i

for.cond.1.i16.i.ths8200_write.exit20.i_crit_edge: ; preds = %for.cond.1.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit20.i

for.cond.2.i19.i:                                 ; preds = %for.cond.1.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i17.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call3.i18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i17.i) #8
  br label %ths8200_write.exit20.i

ths8200_write.exit20.i:                           ; preds = %for.cond.2.i19.i, %for.cond.1.i16.i.ths8200_write.exit20.i_crit_edge, %for.cond.i13.i.ths8200_write.exit20.i_crit_edge, %ths8200_write.exit.i.ths8200_write.exit20.i_crit_edge
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 35, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %cmp2.i23.i = icmp eq i32 %call1.i22.i, 0
  br i1 %cmp2.i23.i, label %ths8200_write.exit20.i.ths8200_write.exit33.i_crit_edge, label %for.cond.i26.i

ths8200_write.exit20.i.ths8200_write.exit33.i_crit_edge: ; preds = %ths8200_write.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit33.i

for.cond.i26.i:                                   ; preds = %ths8200_write.exit20.i
  %call1.1.i24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 35, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i24.i)
  %cmp2.1.i25.i = icmp eq i32 %call1.1.i24.i, 0
  br i1 %cmp2.1.i25.i, label %for.cond.i26.i.ths8200_write.exit33.i_crit_edge, label %for.cond.1.i29.i

for.cond.i26.i.ths8200_write.exit33.i_crit_edge:  ; preds = %for.cond.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit33.i

for.cond.1.i29.i:                                 ; preds = %for.cond.i26.i
  %call1.2.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 35, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i27.i)
  %cmp2.2.i28.i = icmp eq i32 %call1.2.i27.i, 0
  br i1 %cmp2.2.i28.i, label %for.cond.1.i29.i.ths8200_write.exit33.i_crit_edge, label %for.cond.2.i32.i

for.cond.1.i29.i.ths8200_write.exit33.i_crit_edge: ; preds = %for.cond.1.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit33.i

for.cond.2.i32.i:                                 ; preds = %for.cond.1.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i30.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call3.i31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i30.i) #8
  br label %ths8200_write.exit33.i

ths8200_write.exit33.i:                           ; preds = %for.cond.2.i32.i, %for.cond.1.i29.i.ths8200_write.exit33.i_crit_edge, %for.cond.i26.i.ths8200_write.exit33.i_crit_edge, %ths8200_write.exit20.i.ths8200_write.exit33.i_crit_edge
  %21 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i35.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 36, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.i)
  %cmp2.i36.i = icmp eq i32 %call1.i35.i, 0
  br i1 %cmp2.i36.i, label %ths8200_write.exit33.i.ths8200_core_init.exit_crit_edge, label %for.cond.i39.i

ths8200_write.exit33.i.ths8200_core_init.exit_crit_edge: ; preds = %ths8200_write.exit33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_core_init.exit

for.cond.i39.i:                                   ; preds = %ths8200_write.exit33.i
  %call1.1.i37.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 36, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i37.i)
  %cmp2.1.i38.i = icmp eq i32 %call1.1.i37.i, 0
  br i1 %cmp2.1.i38.i, label %for.cond.i39.i.ths8200_core_init.exit_crit_edge, label %for.cond.1.i42.i

for.cond.i39.i.ths8200_core_init.exit_crit_edge:  ; preds = %for.cond.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_core_init.exit

for.cond.1.i42.i:                                 ; preds = %for.cond.i39.i
  %call1.2.i40.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 36, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i40.i)
  %cmp2.2.i41.i = icmp eq i32 %call1.2.i40.i, 0
  br i1 %cmp2.2.i41.i, label %for.cond.1.i42.i.ths8200_core_init.exit_crit_edge, label %for.cond.2.i45.i

for.cond.1.i42.i.ths8200_core_init.exit_crit_edge: ; preds = %for.cond.1.i42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_core_init.exit

for.cond.2.i45.i:                                 ; preds = %for.cond.1.i42.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i43.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call3.i44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i43.i) #8
  br label %ths8200_core_init.exit

ths8200_core_init.exit:                           ; preds = %for.cond.2.i45.i, %for.cond.1.i42.i.ths8200_core_init.exit_crit_edge, %for.cond.i39.i.ths8200_core_init.exit_crit_edge, %ths8200_write.exit33.i.ths8200_core_init.exit_crit_edge
  %call17 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end23, label %ths8200_core_init.exit.cleanup_crit_edge

ths8200_core_init.exit.cleanup_crit_edge:         ; preds = %ths8200_core_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %ths8200_core_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name25 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %name27 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr, align 2
  %conv29 = zext i16 %24 to i32
  %shl = shl nuw nsw i32 %conv29, 1
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %name31 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name25, ptr noundef %name27, i32 noundef %shl, ptr noundef %name31) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %ths8200_core_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call17, %ths8200_core_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_s_power(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5 = icmp ne i32 %on, 0
  %power_on = getelementptr inbounds %struct.ths8200_state, ptr %sd, i32 0, i32 2
  %frombool = zext i1 %tobool5 to i8
  %1 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %power_on, align 1
  %conv = select i1 %tobool5, i8 0, i8 12
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #5
  %4 = trunc i32 %call1.i.i to i8
  %5 = and i8 %4, -14
  %conv2.i = or i8 %5, %conv
  %6 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %do.end4.ths8200_write_and_or.exit_crit_edge, label %for.cond.i.i

do.end4.ths8200_write_and_or.exit_crit_edge:      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit

for.cond.i.i:                                     ; preds = %do.end4
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.ths8200_write_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.ths8200_write_and_or.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.ths8200_write_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.ths8200_write_and_or.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i) #8
  br label %ths8200_write_and_or.exit

ths8200_write_and_or.exit:                        ; preds = %for.cond.2.i.i, %for.cond.1.i.i.ths8200_write_and_or.exit_crit_edge, %for.cond.i.i.ths8200_write_and_or.exit_crit_edge, %do.end4.ths8200_write_and_or.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 3) #5
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name) #8
  %chip_version = getelementptr inbounds %struct.ths8200_state, ptr %sd, i32 0, i32 1
  %2 = ptrtoint ptr %chip_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_version, align 4
  %conv9 = zext i8 %3 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %conv9) #8
  %and = and i32 %call1.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.6, ptr @.str.7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, ptr noundef nonnull %cond) #8
  %and26 = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, ptr @.str.6, ptr @.str.7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull %cond28) #8
  %and37 = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.30, ptr @.str.29
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef nonnull %cond39) #8
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i73 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 125) #5
  %mul = shl i32 %call1.i73, 8
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i75 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 126) #5
  %add = add i32 %call1.i75, %mul
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i77 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 127) #5
  %and50 = shl i32 %call1.i77, 8
  %mul51 = and i32 %and50, 1792
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i79 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -128) #5
  %add53 = add i32 %mul51, %call1.i79
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %add, i32 noundef %add53) #8
  %dv_timings = getelementptr inbounds %struct.ths8200_state, ptr %sd, i32 0, i32 3
  tail call void @v4l2_print_dv_timings(ptr noundef %name, ptr noundef nonnull @.str.34, ptr noundef %dv_timings, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #5
  %conv2 = sext i32 %call1.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv2, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %3 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %entry.ths8200_write.exit_crit_edge, label %for.cond.i

entry.ths8200_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit

for.cond.i:                                       ; preds = %entry
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ths8200_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.ths8200_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.ths8200_write.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ths8200_write.exit_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i) #8
  br label %ths8200_write.exit

ths8200_write.exit:                               ; preds = %for.cond.2.i, %for.cond.1.i.ths8200_write.exit_crit_edge, %for.cond.i.ths8200_write.exit_crit_edge, %entry.ths8200_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_print_dv_timings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %power_on = getelementptr inbounds %struct.ths8200_state, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_on, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @ths8200_s_power(ptr noundef %sd, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %not.tobool.not = xor i1 %tobool.not, true
  %conv = zext i1 %not.tobool.not to i8
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #5
  %4 = trunc i32 %call1.i.i to i8
  %5 = and i8 %4, -2
  %conv2.i = or i8 %5, %conv
  %6 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %cmp2.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %cmp2.i.i, label %if.end.ths8200_write_and_or.exit_crit_edge, label %for.cond.i.i

if.end.ths8200_write_and_or.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit

for.cond.i.i:                                     ; preds = %if.end
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.ths8200_write_and_or.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.ths8200_write_and_or.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 3, i8 noundef zeroext %conv2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.ths8200_write_and_or.exit_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.ths8200_write_and_or.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i) #8
  br label %ths8200_write_and_or.exit

ths8200_write_and_or.exit:                        ; preds = %for.cond.2.i.i, %for.cond.1.i.i.ths8200_write_and_or.exit_crit_edge, %for.cond.i.i.ths8200_write_and_or.exit_crit_edge, %if.end.ths8200_write_and_or.exit_crit_edge
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %ths8200_write_and_or.exit.do.end12_crit_edge

ths8200_write_and_or.exit.do.end12_crit_edge:     ; preds = %ths8200_write_and_or.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end:                                           ; preds = %ths8200_write_and_or.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond8 = select i1 %tobool.not, ptr @.str.38, ptr @.str.37
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond8) #8
  br label %do.end12

do.end12:                                         ; preds = %do.end, %ths8200_write_and_or.exit.do.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_s_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef nonnull @.str.40) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull @ths8200_timings_cap, ptr noundef null, ptr noundef null) #5
  br i1 %call5, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %call8 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @ths8200_timings_cap, i32 noundef 10, ptr noundef null, ptr noundef null) #5
  br i1 %call8, label %if.end23, label %do.body10

do.body10:                                        ; preds = %if.end7
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %do.end15, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %name17 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name17) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end7
  %2 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %flags = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 16
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %flags, align 1
  %and = and i32 %4, -5
  store i32 %and, ptr %flags, align 1
  %dv_timings = getelementptr inbounds %struct.ths8200_state, ptr %sd, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %dv_timings, ptr %timings, i32 132)
  %vsync.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %6 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %vsync.i, align 1
  %vbackporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 11
  %8 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %vbackporch.i, align 1
  %add.i = add i32 %9, %7
  %height.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %height.i.i, align 1
  %vfrontporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 9
  %il_vfrontporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %12 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %il_vfrontporch.i.i, align 1
  %il_vsync.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %14 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %il_vsync.i.i, align 1
  %il_vbackporch.i.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 14
  %16 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %il_vbackporch.i.i, align 1
  %add3.i.i = add i32 %add.i, %11
  %add4.i.i = add i32 %add3.i.i, %13
  %add5.i.i = add i32 %add4.i.i, %15
  %sub.i = add i32 %add5.i.i, %17
  %call2.i = tail call i32 @ths8200_s_stream(ptr noundef %sd, i32 noundef 0) #5
  %hsync.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %18 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %hsync.i, align 1
  %conv3.i = trunc i32 %19 to i8
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %20 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 37, i8 noundef zeroext %conv3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end23.ths8200_write.exit.i_crit_edge, label %for.cond.i.i

if.end23.ths8200_write.exit.i_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit.i

for.cond.i.i:                                     ; preds = %if.end23
  %call1.1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 37, i8 noundef zeroext %conv3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i)
  %cmp2.1.i.i = icmp eq i32 %call1.1.i.i, 0
  br i1 %cmp2.1.i.i, label %for.cond.i.i.ths8200_write.exit.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.ths8200_write.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call1.2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 37, i8 noundef zeroext %conv3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i)
  %cmp2.2.i.i = icmp eq i32 %call1.2.i.i, 0
  br i1 %cmp2.2.i.i, label %for.cond.1.i.i.ths8200_write.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.ths8200_write.exit.i_crit_edge:    ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i) #8
  br label %ths8200_write.exit.i

ths8200_write.exit.i:                             ; preds = %for.cond.2.i.i, %for.cond.1.i.i.ths8200_write.exit.i_crit_edge, %for.cond.i.i.ths8200_write.exit.i_crit_edge, %if.end23.ths8200_write.exit.i_crit_edge
  %hfrontporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 6
  %22 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %hfrontporch.i, align 1
  %conv5.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i255.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 38, i8 noundef zeroext %conv5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i255.i)
  %cmp2.i256.i = icmp eq i32 %call1.i255.i, 0
  br i1 %cmp2.i256.i, label %ths8200_write.exit.i.ths8200_write.exit266.i_crit_edge, label %for.cond.i259.i

ths8200_write.exit.i.ths8200_write.exit266.i_crit_edge: ; preds = %ths8200_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit266.i

for.cond.i259.i:                                  ; preds = %ths8200_write.exit.i
  %call1.1.i257.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 38, i8 noundef zeroext %conv5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i257.i)
  %cmp2.1.i258.i = icmp eq i32 %call1.1.i257.i, 0
  br i1 %cmp2.1.i258.i, label %for.cond.i259.i.ths8200_write.exit266.i_crit_edge, label %for.cond.1.i262.i

for.cond.i259.i.ths8200_write.exit266.i_crit_edge: ; preds = %for.cond.i259.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit266.i

for.cond.1.i262.i:                                ; preds = %for.cond.i259.i
  %call1.2.i260.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 38, i8 noundef zeroext %conv5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i260.i)
  %cmp2.2.i261.i = icmp eq i32 %call1.2.i260.i, 0
  br i1 %cmp2.2.i261.i, label %for.cond.1.i262.i.ths8200_write.exit266.i_crit_edge, label %for.cond.2.i265.i

for.cond.1.i262.i.ths8200_write.exit266.i_crit_edge: ; preds = %for.cond.1.i262.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit266.i

for.cond.2.i265.i:                                ; preds = %for.cond.1.i262.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i263.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i264.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i263.i) #8
  br label %ths8200_write.exit266.i

ths8200_write.exit266.i:                          ; preds = %for.cond.2.i265.i, %for.cond.1.i262.i.ths8200_write.exit266.i_crit_edge, %for.cond.i259.i.ths8200_write.exit266.i_crit_edge, %ths8200_write.exit.i.ths8200_write.exit266.i_crit_edge
  %interlaced.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %interlaced.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then.i, label %ths8200_write.exit266.i.if.end.i_crit_edge

ths8200_write.exit266.i.if.end.i_crit_edge:       ; preds = %ths8200_write.exit266.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %ths8200_write.exit266.i
  %28 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i268.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 39, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i268.i)
  %cmp2.i269.i = icmp eq i32 %call1.i268.i, 0
  br i1 %cmp2.i269.i, label %if.then.i.if.end.i_crit_edge, label %for.cond.i272.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.cond.i272.i:                                  ; preds = %if.then.i
  %call1.1.i270.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 39, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i270.i)
  %cmp2.1.i271.i = icmp eq i32 %call1.1.i270.i, 0
  br i1 %cmp2.1.i271.i, label %for.cond.i272.i.if.end.i_crit_edge, label %for.cond.1.i275.i

for.cond.i272.i.if.end.i_crit_edge:               ; preds = %for.cond.i272.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.cond.1.i275.i:                                ; preds = %for.cond.i272.i
  %call1.2.i273.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 39, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i273.i)
  %cmp2.2.i274.i = icmp eq i32 %call1.2.i273.i, 0
  br i1 %cmp2.2.i274.i, label %for.cond.1.i275.i.if.end.i_crit_edge, label %for.cond.2.i278.i

for.cond.1.i275.i.if.end.i_crit_edge:             ; preds = %for.cond.1.i275.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.cond.2.i278.i:                                ; preds = %for.cond.1.i275.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i276.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i277.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i276.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.cond.2.i278.i, %for.cond.1.i275.i.if.end.i_crit_edge, %for.cond.i272.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %ths8200_write.exit266.i.if.end.i_crit_edge
  %hbackporch.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 8
  %30 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %hbackporch.i, align 1
  %32 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %hsync.i, align 1
  %add9.i = add i32 %33, %31
  %conv10.i = trunc i32 %add9.i to i8
  %34 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i281.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 40, i8 noundef zeroext %conv10.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i281.i)
  %cmp2.i282.i = icmp eq i32 %call1.i281.i, 0
  br i1 %cmp2.i282.i, label %if.end.i.ths8200_write.exit292.i_crit_edge, label %for.cond.i285.i

if.end.i.ths8200_write.exit292.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit292.i

for.cond.i285.i:                                  ; preds = %if.end.i
  %call1.1.i283.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 40, i8 noundef zeroext %conv10.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i283.i)
  %cmp2.1.i284.i = icmp eq i32 %call1.1.i283.i, 0
  br i1 %cmp2.1.i284.i, label %for.cond.i285.i.ths8200_write.exit292.i_crit_edge, label %for.cond.1.i288.i

for.cond.i285.i.ths8200_write.exit292.i_crit_edge: ; preds = %for.cond.i285.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit292.i

for.cond.1.i288.i:                                ; preds = %for.cond.i285.i
  %call1.2.i286.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 40, i8 noundef zeroext %conv10.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i286.i)
  %cmp2.2.i287.i = icmp eq i32 %call1.2.i286.i, 0
  br i1 %cmp2.2.i287.i, label %for.cond.1.i288.i.ths8200_write.exit292.i_crit_edge, label %for.cond.2.i291.i

for.cond.1.i288.i.ths8200_write.exit292.i_crit_edge: ; preds = %for.cond.1.i288.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit292.i

for.cond.2.i291.i:                                ; preds = %for.cond.1.i288.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i289.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i290.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i289.i) #8
  br label %ths8200_write.exit292.i

ths8200_write.exit292.i:                          ; preds = %for.cond.2.i291.i, %for.cond.1.i288.i.ths8200_write.exit292.i_crit_edge, %for.cond.i285.i.ths8200_write.exit292.i_crit_edge, %if.end.i.ths8200_write.exit292.i_crit_edge
  %36 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i294.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 42, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i294.i)
  %cmp2.i295.i = icmp eq i32 %call1.i294.i, 0
  br i1 %cmp2.i295.i, label %ths8200_write.exit292.i.ths8200_write.exit305.i_crit_edge, label %for.cond.i298.i

ths8200_write.exit292.i.ths8200_write.exit305.i_crit_edge: ; preds = %ths8200_write.exit292.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit305.i

for.cond.i298.i:                                  ; preds = %ths8200_write.exit292.i
  %call1.1.i296.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 42, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i296.i)
  %cmp2.1.i297.i = icmp eq i32 %call1.1.i296.i, 0
  br i1 %cmp2.1.i297.i, label %for.cond.i298.i.ths8200_write.exit305.i_crit_edge, label %for.cond.1.i301.i

for.cond.i298.i.ths8200_write.exit305.i_crit_edge: ; preds = %for.cond.i298.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit305.i

for.cond.1.i301.i:                                ; preds = %for.cond.i298.i
  %call1.2.i299.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 42, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i299.i)
  %cmp2.2.i300.i = icmp eq i32 %call1.2.i299.i, 0
  br i1 %cmp2.2.i300.i, label %for.cond.1.i301.i.ths8200_write.exit305.i_crit_edge, label %for.cond.2.i304.i

for.cond.1.i301.i.ths8200_write.exit305.i_crit_edge: ; preds = %for.cond.1.i301.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit305.i

for.cond.2.i304.i:                                ; preds = %for.cond.1.i301.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i302.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i303.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i302.i) #8
  br label %ths8200_write.exit305.i

ths8200_write.exit305.i:                          ; preds = %for.cond.2.i304.i, %for.cond.1.i301.i.ths8200_write.exit305.i_crit_edge, %for.cond.i298.i.ths8200_write.exit305.i_crit_edge, %ths8200_write.exit292.i.ths8200_write.exit305.i_crit_edge
  %38 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %hbackporch.i, align 1
  %40 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %hsync.i, align 1
  %add15.i = add i32 %41, %39
  %and16.i = lshr i32 %add15.i, 1
  %42 = trunc i32 %and16.i to i8
  %conv17.i = and i8 %42, -128
  %43 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i307.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 43, i8 noundef zeroext %conv17.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i307.i)
  %cmp2.i308.i = icmp eq i32 %call1.i307.i, 0
  br i1 %cmp2.i308.i, label %ths8200_write.exit305.i.ths8200_write.exit318.i_crit_edge, label %for.cond.i311.i

ths8200_write.exit305.i.ths8200_write.exit318.i_crit_edge: ; preds = %ths8200_write.exit305.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit318.i

for.cond.i311.i:                                  ; preds = %ths8200_write.exit305.i
  %call1.1.i309.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 43, i8 noundef zeroext %conv17.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i309.i)
  %cmp2.1.i310.i = icmp eq i32 %call1.1.i309.i, 0
  br i1 %cmp2.1.i310.i, label %for.cond.i311.i.ths8200_write.exit318.i_crit_edge, label %for.cond.1.i314.i

for.cond.i311.i.ths8200_write.exit318.i_crit_edge: ; preds = %for.cond.i311.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit318.i

for.cond.1.i314.i:                                ; preds = %for.cond.i311.i
  %call1.2.i312.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 43, i8 noundef zeroext %conv17.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i312.i)
  %cmp2.2.i313.i = icmp eq i32 %call1.2.i312.i, 0
  br i1 %cmp2.2.i313.i, label %for.cond.1.i314.i.ths8200_write.exit318.i_crit_edge, label %for.cond.2.i317.i

for.cond.1.i314.i.ths8200_write.exit318.i_crit_edge: ; preds = %for.cond.1.i314.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit318.i

for.cond.2.i317.i:                                ; preds = %for.cond.1.i314.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i315.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i316.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i315.i) #8
  br label %ths8200_write.exit318.i

ths8200_write.exit318.i:                          ; preds = %for.cond.2.i317.i, %for.cond.1.i314.i.ths8200_write.exit318.i_crit_edge, %for.cond.i311.i.ths8200_write.exit318.i_crit_edge, %ths8200_write.exit305.i.ths8200_write.exit318.i_crit_edge
  %45 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %hfrontporch.i, align 1
  %conv21.i = trunc i32 %46 to i8
  %47 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i320.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 47, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i320.i)
  %cmp2.i321.i = icmp eq i32 %call1.i320.i, 0
  br i1 %cmp2.i321.i, label %ths8200_write.exit318.i.ths8200_write.exit331.i_crit_edge, label %for.cond.i324.i

ths8200_write.exit318.i.ths8200_write.exit331.i_crit_edge: ; preds = %ths8200_write.exit318.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit331.i

for.cond.i324.i:                                  ; preds = %ths8200_write.exit318.i
  %call1.1.i322.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 47, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i322.i)
  %cmp2.1.i323.i = icmp eq i32 %call1.1.i322.i, 0
  br i1 %cmp2.1.i323.i, label %for.cond.i324.i.ths8200_write.exit331.i_crit_edge, label %for.cond.1.i327.i

for.cond.i324.i.ths8200_write.exit331.i_crit_edge: ; preds = %for.cond.i324.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit331.i

for.cond.1.i327.i:                                ; preds = %for.cond.i324.i
  %call1.2.i325.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 47, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i325.i)
  %cmp2.2.i326.i = icmp eq i32 %call1.2.i325.i, 0
  br i1 %cmp2.2.i326.i, label %for.cond.1.i327.i.ths8200_write.exit331.i_crit_edge, label %for.cond.2.i330.i

for.cond.1.i327.i.ths8200_write.exit331.i_crit_edge: ; preds = %for.cond.1.i327.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit331.i

for.cond.2.i330.i:                                ; preds = %for.cond.1.i327.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i328.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i329.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i328.i) #8
  br label %ths8200_write.exit331.i

ths8200_write.exit331.i:                          ; preds = %for.cond.2.i330.i, %for.cond.1.i327.i.ths8200_write.exit331.i_crit_edge, %for.cond.i324.i.ths8200_write.exit331.i_crit_edge, %ths8200_write.exit318.i.ths8200_write.exit331.i_crit_edge
  %49 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %hfrontporch.i, align 1
  %and24.i = lshr i32 %50, 8
  %51 = trunc i32 %and24.i to i8
  %conv26.i = and i8 %51, 7
  %52 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i333.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 48, i8 noundef zeroext %conv26.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i333.i)
  %cmp2.i334.i = icmp eq i32 %call1.i333.i, 0
  br i1 %cmp2.i334.i, label %ths8200_write.exit331.i.ths8200_write.exit344.i_crit_edge, label %for.cond.i337.i

ths8200_write.exit331.i.ths8200_write.exit344.i_crit_edge: ; preds = %ths8200_write.exit331.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit344.i

for.cond.i337.i:                                  ; preds = %ths8200_write.exit331.i
  %call1.1.i335.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 48, i8 noundef zeroext %conv26.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i335.i)
  %cmp2.1.i336.i = icmp eq i32 %call1.1.i335.i, 0
  br i1 %cmp2.1.i336.i, label %for.cond.i337.i.ths8200_write.exit344.i_crit_edge, label %for.cond.1.i340.i

for.cond.i337.i.ths8200_write.exit344.i_crit_edge: ; preds = %for.cond.i337.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit344.i

for.cond.1.i340.i:                                ; preds = %for.cond.i337.i
  %call1.2.i338.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 48, i8 noundef zeroext %conv26.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i338.i)
  %cmp2.2.i339.i = icmp eq i32 %call1.2.i338.i, 0
  br i1 %cmp2.2.i339.i, label %for.cond.1.i340.i.ths8200_write.exit344.i_crit_edge, label %for.cond.2.i343.i

for.cond.1.i340.i.ths8200_write.exit344.i_crit_edge: ; preds = %for.cond.1.i340.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit344.i

for.cond.2.i343.i:                                ; preds = %for.cond.1.i340.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i341.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i342.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i341.i) #8
  br label %ths8200_write.exit344.i

ths8200_write.exit344.i:                          ; preds = %for.cond.2.i343.i, %for.cond.1.i340.i.ths8200_write.exit344.i_crit_edge, %for.cond.i337.i.ths8200_write.exit344.i_crit_edge, %ths8200_write.exit331.i.ths8200_write.exit344.i_crit_edge
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %2, align 1
  %56 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %hfrontporch.i, align 1
  %58 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %hsync.i, align 1
  %60 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %hbackporch.i, align 1
  %add.i345.i = add i32 %57, %55
  %add1.i346.i = add i32 %add.i345.i, %59
  %add2.i347.i = add i32 %add1.i346.i, %61
  %div252.i = lshr i32 %add2.i347.i, 1
  %conv30.i = trunc i32 %div252.i to i8
  %62 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i349.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 50, i8 noundef zeroext %conv30.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i349.i)
  %cmp2.i350.i = icmp eq i32 %call1.i349.i, 0
  br i1 %cmp2.i350.i, label %ths8200_write.exit344.i.ths8200_write.exit360.i_crit_edge, label %for.cond.i353.i

ths8200_write.exit344.i.ths8200_write.exit360.i_crit_edge: ; preds = %ths8200_write.exit344.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit360.i

for.cond.i353.i:                                  ; preds = %ths8200_write.exit344.i
  %call1.1.i351.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 50, i8 noundef zeroext %conv30.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i351.i)
  %cmp2.1.i352.i = icmp eq i32 %call1.1.i351.i, 0
  br i1 %cmp2.1.i352.i, label %for.cond.i353.i.ths8200_write.exit360.i_crit_edge, label %for.cond.1.i356.i

for.cond.i353.i.ths8200_write.exit360.i_crit_edge: ; preds = %for.cond.i353.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit360.i

for.cond.1.i356.i:                                ; preds = %for.cond.i353.i
  %call1.2.i354.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 50, i8 noundef zeroext %conv30.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i354.i)
  %cmp2.2.i355.i = icmp eq i32 %call1.2.i354.i, 0
  br i1 %cmp2.2.i355.i, label %for.cond.1.i356.i.ths8200_write.exit360.i_crit_edge, label %for.cond.2.i359.i

for.cond.1.i356.i.ths8200_write.exit360.i_crit_edge: ; preds = %for.cond.1.i356.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit360.i

for.cond.2.i359.i:                                ; preds = %for.cond.1.i356.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i357.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i358.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i357.i) #8
  br label %ths8200_write.exit360.i

ths8200_write.exit360.i:                          ; preds = %for.cond.2.i359.i, %for.cond.1.i356.i.ths8200_write.exit360.i_crit_edge, %for.cond.i353.i.ths8200_write.exit360.i_crit_edge, %ths8200_write.exit344.i.ths8200_write.exit360.i_crit_edge
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %2, align 1
  %66 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %hfrontporch.i, align 1
  %68 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %hsync.i, align 1
  %70 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %hbackporch.i, align 1
  %add.i364.i = add i32 %67, %65
  %add1.i365.i = add i32 %add.i364.i, %69
  %add2.i366.i = add i32 %add1.i365.i, %71
  %div33253.i = lshr i32 %add2.i366.i, 9
  %72 = trunc i32 %div33253.i to i8
  %conv36.i = and i8 %72, 15
  %73 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i368.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 51, i8 noundef zeroext %conv36.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i368.i)
  %cmp2.i369.i = icmp eq i32 %call1.i368.i, 0
  br i1 %cmp2.i369.i, label %ths8200_write.exit360.i.ths8200_write.exit379.i_crit_edge, label %for.cond.i372.i

ths8200_write.exit360.i.ths8200_write.exit379.i_crit_edge: ; preds = %ths8200_write.exit360.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit379.i

for.cond.i372.i:                                  ; preds = %ths8200_write.exit360.i
  %call1.1.i370.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 51, i8 noundef zeroext %conv36.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i370.i)
  %cmp2.1.i371.i = icmp eq i32 %call1.1.i370.i, 0
  br i1 %cmp2.1.i371.i, label %for.cond.i372.i.ths8200_write.exit379.i_crit_edge, label %for.cond.1.i375.i

for.cond.i372.i.ths8200_write.exit379.i_crit_edge: ; preds = %for.cond.i372.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit379.i

for.cond.1.i375.i:                                ; preds = %for.cond.i372.i
  %call1.2.i373.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext 51, i8 noundef zeroext %conv36.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i373.i)
  %cmp2.2.i374.i = icmp eq i32 %call1.2.i373.i, 0
  br i1 %cmp2.2.i374.i, label %for.cond.1.i375.i.ths8200_write.exit379.i_crit_edge, label %for.cond.2.i378.i

for.cond.1.i375.i.ths8200_write.exit379.i_crit_edge: ; preds = %for.cond.1.i375.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit379.i

for.cond.2.i378.i:                                ; preds = %for.cond.1.i375.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i376.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i377.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i376.i) #8
  br label %ths8200_write.exit379.i

ths8200_write.exit379.i:                          ; preds = %for.cond.2.i378.i, %for.cond.1.i375.i.ths8200_write.exit379.i_crit_edge, %for.cond.i372.i.ths8200_write.exit379.i_crit_edge, %ths8200_write.exit360.i.ths8200_write.exit379.i_crit_edge
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %2, align 1
  %77 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %hfrontporch.i, align 1
  %79 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %hsync.i, align 1
  %81 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %hbackporch.i, align 1
  %add.i383.i = add i32 %78, %76
  %add1.i384.i = add i32 %add.i383.i, %80
  %add2.i385.i = add i32 %add1.i384.i, %82
  %shr39.i = lshr i32 %add2.i385.i, 8
  %conv40.i = trunc i32 %shr39.i to i8
  %83 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i387.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext 52, i8 noundef zeroext %conv40.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i387.i)
  %cmp2.i388.i = icmp eq i32 %call1.i387.i, 0
  br i1 %cmp2.i388.i, label %ths8200_write.exit379.i.ths8200_write.exit398.i_crit_edge, label %for.cond.i391.i

ths8200_write.exit379.i.ths8200_write.exit398.i_crit_edge: ; preds = %ths8200_write.exit379.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit398.i

for.cond.i391.i:                                  ; preds = %ths8200_write.exit379.i
  %call1.1.i389.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext 52, i8 noundef zeroext %conv40.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i389.i)
  %cmp2.1.i390.i = icmp eq i32 %call1.1.i389.i, 0
  br i1 %cmp2.1.i390.i, label %for.cond.i391.i.ths8200_write.exit398.i_crit_edge, label %for.cond.1.i394.i

for.cond.i391.i.ths8200_write.exit398.i_crit_edge: ; preds = %for.cond.i391.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit398.i

for.cond.1.i394.i:                                ; preds = %for.cond.i391.i
  %call1.2.i392.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext 52, i8 noundef zeroext %conv40.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i392.i)
  %cmp2.2.i393.i = icmp eq i32 %call1.2.i392.i, 0
  br i1 %cmp2.2.i393.i, label %for.cond.1.i394.i.ths8200_write.exit398.i_crit_edge, label %for.cond.2.i397.i

for.cond.1.i394.i.ths8200_write.exit398.i_crit_edge: ; preds = %for.cond.1.i394.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit398.i

for.cond.2.i397.i:                                ; preds = %for.cond.1.i394.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i395.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i396.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i395.i) #8
  br label %ths8200_write.exit398.i

ths8200_write.exit398.i:                          ; preds = %for.cond.2.i397.i, %for.cond.1.i394.i.ths8200_write.exit398.i_crit_edge, %for.cond.i391.i.ths8200_write.exit398.i_crit_edge, %ths8200_write.exit379.i.ths8200_write.exit398.i_crit_edge
  %85 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %2, align 1
  %87 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %hfrontporch.i, align 1
  %89 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %hsync.i, align 1
  %91 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %hbackporch.i, align 1
  %add.i402.i = add i32 %88, %86
  %add1.i403.i = add i32 %add.i402.i, %90
  %add2.i404.i = add i32 %add1.i403.i, %92
  %conv44.i = trunc i32 %add2.i404.i to i8
  %93 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i406.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %94, i8 noundef zeroext 53, i8 noundef zeroext %conv44.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i406.i)
  %cmp2.i407.i = icmp eq i32 %call1.i406.i, 0
  br i1 %cmp2.i407.i, label %ths8200_write.exit398.i.ths8200_write.exit417.i_crit_edge, label %for.cond.i410.i

ths8200_write.exit398.i.ths8200_write.exit417.i_crit_edge: ; preds = %ths8200_write.exit398.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit417.i

for.cond.i410.i:                                  ; preds = %ths8200_write.exit398.i
  %call1.1.i408.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %94, i8 noundef zeroext 53, i8 noundef zeroext %conv44.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i408.i)
  %cmp2.1.i409.i = icmp eq i32 %call1.1.i408.i, 0
  br i1 %cmp2.1.i409.i, label %for.cond.i410.i.ths8200_write.exit417.i_crit_edge, label %for.cond.1.i413.i

for.cond.i410.i.ths8200_write.exit417.i_crit_edge: ; preds = %for.cond.i410.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit417.i

for.cond.1.i413.i:                                ; preds = %for.cond.i410.i
  %call1.2.i411.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %94, i8 noundef zeroext 53, i8 noundef zeroext %conv44.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i411.i)
  %cmp2.2.i412.i = icmp eq i32 %call1.2.i411.i, 0
  br i1 %cmp2.2.i412.i, label %for.cond.1.i413.i.ths8200_write.exit417.i_crit_edge, label %for.cond.2.i416.i

for.cond.1.i413.i.ths8200_write.exit417.i_crit_edge: ; preds = %for.cond.1.i413.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit417.i

for.cond.2.i416.i:                                ; preds = %for.cond.1.i413.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i414.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i415.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i414.i) #8
  br label %ths8200_write.exit417.i

ths8200_write.exit417.i:                          ; preds = %for.cond.2.i416.i, %for.cond.1.i413.i.ths8200_write.exit417.i_crit_edge, %for.cond.i410.i.ths8200_write.exit417.i_crit_edge, %ths8200_write.exit398.i.ths8200_write.exit417.i_crit_edge
  %95 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %height.i.i, align 1
  %97 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %vfrontporch.i.i, align 1
  %99 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %vsync.i, align 1
  %101 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %vbackporch.i, align 1
  %103 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %il_vfrontporch.i.i, align 1
  %105 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %il_vsync.i.i, align 1
  %107 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i425.i = add i32 %98, %96
  %add1.i426.i = add i32 %add.i425.i, %100
  %add2.i427.i = add i32 %add1.i426.i, %102
  %add3.i428.i = add i32 %add2.i427.i, %104
  %add4.i429.i = add i32 %add3.i428.i, %106
  %add5.i430.i = add i32 %add4.i429.i, %108
  %shr47.i = lshr i32 %add5.i430.i, 4
  %109 = trunc i32 %shr47.i to i8
  %110 = and i8 %109, -16
  %conv50.i = or i8 %110, 7
  %111 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i432.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 57, i8 noundef zeroext %conv50.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i432.i)
  %cmp2.i433.i = icmp eq i32 %call1.i432.i, 0
  br i1 %cmp2.i433.i, label %ths8200_write.exit417.i.ths8200_write.exit443.i_crit_edge, label %for.cond.i436.i

ths8200_write.exit417.i.ths8200_write.exit443.i_crit_edge: ; preds = %ths8200_write.exit417.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit443.i

for.cond.i436.i:                                  ; preds = %ths8200_write.exit417.i
  %call1.1.i434.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 57, i8 noundef zeroext %conv50.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i434.i)
  %cmp2.1.i435.i = icmp eq i32 %call1.1.i434.i, 0
  br i1 %cmp2.1.i435.i, label %for.cond.i436.i.ths8200_write.exit443.i_crit_edge, label %for.cond.1.i439.i

for.cond.i436.i.ths8200_write.exit443.i_crit_edge: ; preds = %for.cond.i436.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit443.i

for.cond.1.i439.i:                                ; preds = %for.cond.i436.i
  %call1.2.i437.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 57, i8 noundef zeroext %conv50.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i437.i)
  %cmp2.2.i438.i = icmp eq i32 %call1.2.i437.i, 0
  br i1 %cmp2.2.i438.i, label %for.cond.1.i439.i.ths8200_write.exit443.i_crit_edge, label %for.cond.2.i442.i

for.cond.1.i439.i.ths8200_write.exit443.i_crit_edge: ; preds = %for.cond.1.i439.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit443.i

for.cond.2.i442.i:                                ; preds = %for.cond.1.i439.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i440.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i441.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i440.i) #8
  br label %ths8200_write.exit443.i

ths8200_write.exit443.i:                          ; preds = %for.cond.2.i442.i, %for.cond.1.i439.i.ths8200_write.exit443.i_crit_edge, %for.cond.i436.i.ths8200_write.exit443.i_crit_edge, %ths8200_write.exit417.i.ths8200_write.exit443.i_crit_edge
  %113 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %height.i.i, align 1
  %115 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %vfrontporch.i.i, align 1
  %117 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %vsync.i, align 1
  %119 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %vbackporch.i, align 1
  %121 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %il_vfrontporch.i.i, align 1
  %123 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %il_vsync.i.i, align 1
  %125 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i451.i = add i32 %116, %114
  %add1.i452.i = add i32 %add.i451.i, %118
  %add2.i453.i = add i32 %add1.i452.i, %120
  %add3.i454.i = add i32 %add2.i453.i, %122
  %add4.i455.i = add i32 %add3.i454.i, %124
  %add5.i456.i = add i32 %add4.i455.i, %126
  %conv54.i = trunc i32 %add5.i456.i to i8
  %127 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i458.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext 58, i8 noundef zeroext %conv54.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i458.i)
  %cmp2.i459.i = icmp eq i32 %call1.i458.i, 0
  br i1 %cmp2.i459.i, label %ths8200_write.exit443.i.ths8200_write.exit469.i_crit_edge, label %for.cond.i462.i

ths8200_write.exit443.i.ths8200_write.exit469.i_crit_edge: ; preds = %ths8200_write.exit443.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit469.i

for.cond.i462.i:                                  ; preds = %ths8200_write.exit443.i
  %call1.1.i460.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext 58, i8 noundef zeroext %conv54.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i460.i)
  %cmp2.1.i461.i = icmp eq i32 %call1.1.i460.i, 0
  br i1 %cmp2.1.i461.i, label %for.cond.i462.i.ths8200_write.exit469.i_crit_edge, label %for.cond.1.i465.i

for.cond.i462.i.ths8200_write.exit469.i_crit_edge: ; preds = %for.cond.i462.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit469.i

for.cond.1.i465.i:                                ; preds = %for.cond.i462.i
  %call1.2.i463.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext 58, i8 noundef zeroext %conv54.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i463.i)
  %cmp2.2.i464.i = icmp eq i32 %call1.2.i463.i, 0
  br i1 %cmp2.2.i464.i, label %for.cond.1.i465.i.ths8200_write.exit469.i_crit_edge, label %for.cond.2.i468.i

for.cond.1.i465.i.ths8200_write.exit469.i_crit_edge: ; preds = %for.cond.1.i465.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit469.i

for.cond.2.i468.i:                                ; preds = %for.cond.1.i465.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i466.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i467.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i466.i) #8
  br label %ths8200_write.exit469.i

ths8200_write.exit469.i:                          ; preds = %for.cond.2.i468.i, %for.cond.1.i465.i.ths8200_write.exit469.i_crit_edge, %for.cond.i462.i.ths8200_write.exit469.i_crit_edge, %ths8200_write.exit443.i.ths8200_write.exit469.i_crit_edge
  %129 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %interlaced.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool57.not.i = icmp eq i32 %130, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %ths8200_write.exit469.i.if.end60.i_crit_edge

ths8200_write.exit469.i.if.end60.i_crit_edge:     ; preds = %ths8200_write.exit469.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then58.i:                                      ; preds = %ths8200_write.exit469.i
  %131 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i471.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %132, i8 noundef zeroext 59, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i471.i)
  %cmp2.i472.i = icmp eq i32 %call1.i471.i, 0
  br i1 %cmp2.i472.i, label %if.then58.i.if.end60.i_crit_edge, label %for.cond.i475.i

if.then58.i.if.end60.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

for.cond.i475.i:                                  ; preds = %if.then58.i
  %call1.1.i473.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %132, i8 noundef zeroext 59, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i473.i)
  %cmp2.1.i474.i = icmp eq i32 %call1.1.i473.i, 0
  br i1 %cmp2.1.i474.i, label %for.cond.i475.i.if.end60.i_crit_edge, label %for.cond.1.i478.i

for.cond.i475.i.if.end60.i_crit_edge:             ; preds = %for.cond.i475.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

for.cond.1.i478.i:                                ; preds = %for.cond.i475.i
  %call1.2.i476.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %132, i8 noundef zeroext 59, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i476.i)
  %cmp2.2.i477.i = icmp eq i32 %call1.2.i476.i, 0
  br i1 %cmp2.2.i477.i, label %for.cond.1.i478.i.if.end60.i_crit_edge, label %for.cond.2.i481.i

for.cond.1.i478.i.if.end60.i_crit_edge:           ; preds = %for.cond.1.i478.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

for.cond.2.i481.i:                                ; preds = %for.cond.1.i478.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i479.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i480.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i479.i) #8
  br label %if.end60.i

if.end60.i:                                       ; preds = %for.cond.2.i481.i, %for.cond.1.i478.i.if.end60.i_crit_edge, %for.cond.i475.i.if.end60.i_crit_edge, %if.then58.i.if.end60.i_crit_edge, %ths8200_write.exit469.i.if.end60.i_crit_edge
  %133 = lshr i32 %add.i, 4
  %and63.i = and i32 %133, 112
  %134 = lshr i32 %sub.i, 8
  %and66.i = and i32 %134, 7
  %add67.i = or i32 %and66.i, %and63.i
  %conv68.i = trunc i32 %add67.i to i8
  %135 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %136, i8 noundef zeroext 80) #5
  %137 = trunc i32 %call1.i.i.i to i8
  %138 = and i8 %137, -120
  %conv2.i.i = or i8 %138, %conv68.i
  %139 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %140, i8 noundef zeroext 80, i8 noundef zeroext %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %cmp2.i.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end60.i.ths8200_write_and_or.exit.i_crit_edge, label %for.cond.i.i.i

if.end60.i.ths8200_write_and_or.exit.i_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit.i

for.cond.i.i.i:                                   ; preds = %if.end60.i
  %call1.1.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %140, i8 noundef zeroext 80, i8 noundef zeroext %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %call1.1.i.i.i, 0
  br i1 %cmp2.1.i.i.i, label %for.cond.i.i.i.ths8200_write_and_or.exit.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.ths8200_write_and_or.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %call1.2.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %140, i8 noundef zeroext 80, i8 noundef zeroext %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %call1.2.i.i.i, 0
  br i1 %cmp2.2.i.i.i, label %for.cond.1.i.i.i.ths8200_write_and_or.exit.i_crit_edge, label %for.cond.2.i.i.i

for.cond.1.i.i.i.ths8200_write_and_or.exit.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i.i) #8
  br label %ths8200_write_and_or.exit.i

ths8200_write_and_or.exit.i:                      ; preds = %for.cond.2.i.i.i, %for.cond.1.i.i.i.ths8200_write_and_or.exit.i_crit_edge, %for.cond.i.i.i.ths8200_write_and_or.exit.i_crit_edge, %if.end60.i.ths8200_write_and_or.exit.i_crit_edge
  %141 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %height.i.i, align 1
  %143 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %vfrontporch.i.i, align 1
  %145 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %vsync.i, align 1
  %147 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %vbackporch.i, align 1
  %149 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %il_vfrontporch.i.i, align 1
  %151 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %il_vsync.i.i, align 1
  %153 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i490.i = add i32 %144, %142
  %add1.i491.i = add i32 %add.i490.i, %146
  %add2.i492.i = add i32 %add1.i491.i, %148
  %add3.i493.i = add i32 %add2.i492.i, %150
  %add4.i494.i = add i32 %add3.i493.i, %152
  %add5.i495.i = add i32 %add4.i494.i, %154
  %shr70.i = lshr i32 %add5.i495.i, 4
  %155 = trunc i32 %shr70.i to i8
  %conv72.i = and i8 %155, 112
  %156 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i497.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %157, i8 noundef zeroext 81, i8 noundef zeroext %conv72.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i497.i)
  %cmp2.i498.i = icmp eq i32 %call1.i497.i, 0
  br i1 %cmp2.i498.i, label %ths8200_write_and_or.exit.i.ths8200_write.exit508.i_crit_edge, label %for.cond.i501.i

ths8200_write_and_or.exit.i.ths8200_write.exit508.i_crit_edge: ; preds = %ths8200_write_and_or.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit508.i

for.cond.i501.i:                                  ; preds = %ths8200_write_and_or.exit.i
  %call1.1.i499.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %157, i8 noundef zeroext 81, i8 noundef zeroext %conv72.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i499.i)
  %cmp2.1.i500.i = icmp eq i32 %call1.1.i499.i, 0
  br i1 %cmp2.1.i500.i, label %for.cond.i501.i.ths8200_write.exit508.i_crit_edge, label %for.cond.1.i504.i

for.cond.i501.i.ths8200_write.exit508.i_crit_edge: ; preds = %for.cond.i501.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit508.i

for.cond.1.i504.i:                                ; preds = %for.cond.i501.i
  %call1.2.i502.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %157, i8 noundef zeroext 81, i8 noundef zeroext %conv72.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i502.i)
  %cmp2.2.i503.i = icmp eq i32 %call1.2.i502.i, 0
  br i1 %cmp2.2.i503.i, label %for.cond.1.i504.i.ths8200_write.exit508.i_crit_edge, label %for.cond.2.i507.i

for.cond.1.i504.i.ths8200_write.exit508.i_crit_edge: ; preds = %for.cond.1.i504.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit508.i

for.cond.2.i507.i:                                ; preds = %for.cond.1.i504.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i505.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i506.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i505.i) #8
  br label %ths8200_write.exit508.i

ths8200_write.exit508.i:                          ; preds = %for.cond.2.i507.i, %for.cond.1.i504.i.ths8200_write.exit508.i_crit_edge, %for.cond.i501.i.ths8200_write.exit508.i_crit_edge, %ths8200_write_and_or.exit.i.ths8200_write.exit508.i_crit_edge
  %conv76.i = trunc i32 %add.i to i8
  %158 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i510.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %159, i8 noundef zeroext 88, i8 noundef zeroext %conv76.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i510.i)
  %cmp2.i511.i = icmp eq i32 %call1.i510.i, 0
  br i1 %cmp2.i511.i, label %ths8200_write.exit508.i.ths8200_write.exit521.i_crit_edge, label %for.cond.i514.i

ths8200_write.exit508.i.ths8200_write.exit521.i_crit_edge: ; preds = %ths8200_write.exit508.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit521.i

for.cond.i514.i:                                  ; preds = %ths8200_write.exit508.i
  %call1.1.i512.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %159, i8 noundef zeroext 88, i8 noundef zeroext %conv76.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i512.i)
  %cmp2.1.i513.i = icmp eq i32 %call1.1.i512.i, 0
  br i1 %cmp2.1.i513.i, label %for.cond.i514.i.ths8200_write.exit521.i_crit_edge, label %for.cond.1.i517.i

for.cond.i514.i.ths8200_write.exit521.i_crit_edge: ; preds = %for.cond.i514.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit521.i

for.cond.1.i517.i:                                ; preds = %for.cond.i514.i
  %call1.2.i515.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %159, i8 noundef zeroext 88, i8 noundef zeroext %conv76.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i515.i)
  %cmp2.2.i516.i = icmp eq i32 %call1.2.i515.i, 0
  br i1 %cmp2.2.i516.i, label %for.cond.1.i517.i.ths8200_write.exit521.i_crit_edge, label %for.cond.2.i520.i

for.cond.1.i517.i.ths8200_write.exit521.i_crit_edge: ; preds = %for.cond.1.i517.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit521.i

for.cond.2.i520.i:                                ; preds = %for.cond.1.i517.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i518.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i519.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i518.i) #8
  br label %ths8200_write.exit521.i

ths8200_write.exit521.i:                          ; preds = %for.cond.2.i520.i, %for.cond.1.i517.i.ths8200_write.exit521.i_crit_edge, %for.cond.i514.i.ths8200_write.exit521.i_crit_edge, %ths8200_write.exit508.i.ths8200_write.exit521.i_crit_edge
  %conv80.i = trunc i32 %sub.i to i8
  %160 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i523.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %161, i8 noundef zeroext 89, i8 noundef zeroext %conv80.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i523.i)
  %cmp2.i524.i = icmp eq i32 %call1.i523.i, 0
  br i1 %cmp2.i524.i, label %ths8200_write.exit521.i.ths8200_write.exit534.i_crit_edge, label %for.cond.i527.i

ths8200_write.exit521.i.ths8200_write.exit534.i_crit_edge: ; preds = %ths8200_write.exit521.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit534.i

for.cond.i527.i:                                  ; preds = %ths8200_write.exit521.i
  %call1.1.i525.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %161, i8 noundef zeroext 89, i8 noundef zeroext %conv80.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i525.i)
  %cmp2.1.i526.i = icmp eq i32 %call1.1.i525.i, 0
  br i1 %cmp2.1.i526.i, label %for.cond.i527.i.ths8200_write.exit534.i_crit_edge, label %for.cond.1.i530.i

for.cond.i527.i.ths8200_write.exit534.i_crit_edge: ; preds = %for.cond.i527.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit534.i

for.cond.1.i530.i:                                ; preds = %for.cond.i527.i
  %call1.2.i528.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %161, i8 noundef zeroext 89, i8 noundef zeroext %conv80.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i528.i)
  %cmp2.2.i529.i = icmp eq i32 %call1.2.i528.i, 0
  br i1 %cmp2.2.i529.i, label %for.cond.1.i530.i.ths8200_write.exit534.i_crit_edge, label %for.cond.2.i533.i

for.cond.1.i530.i.ths8200_write.exit534.i_crit_edge: ; preds = %for.cond.1.i530.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit534.i

for.cond.2.i533.i:                                ; preds = %for.cond.1.i530.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i531.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i532.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i531.i) #8
  br label %ths8200_write.exit534.i

ths8200_write.exit534.i:                          ; preds = %for.cond.2.i533.i, %for.cond.1.i530.i.ths8200_write.exit534.i_crit_edge, %for.cond.i527.i.ths8200_write.exit534.i_crit_edge, %ths8200_write.exit521.i.ths8200_write.exit534.i_crit_edge
  %162 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %height.i.i, align 1
  %164 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %vfrontporch.i.i, align 1
  %166 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %vsync.i, align 1
  %168 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %vbackporch.i, align 1
  %170 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %il_vfrontporch.i.i, align 1
  %172 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %il_vsync.i.i, align 1
  %174 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i542.i = add i32 %165, %163
  %add1.i543.i = add i32 %add.i542.i, %167
  %add2.i544.i = add i32 %add1.i543.i, %169
  %add3.i545.i = add i32 %add2.i544.i, %171
  %add4.i546.i = add i32 %add3.i545.i, %173
  %add5.i547.i = add i32 %add4.i546.i, %175
  %conv84.i = trunc i32 %add5.i547.i to i8
  %176 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i549.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %177, i8 noundef zeroext 90, i8 noundef zeroext %conv84.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i549.i)
  %cmp2.i550.i = icmp eq i32 %call1.i549.i, 0
  br i1 %cmp2.i550.i, label %ths8200_write.exit534.i.ths8200_write.exit560.i_crit_edge, label %for.cond.i553.i

ths8200_write.exit534.i.ths8200_write.exit560.i_crit_edge: ; preds = %ths8200_write.exit534.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit560.i

for.cond.i553.i:                                  ; preds = %ths8200_write.exit534.i
  %call1.1.i551.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %177, i8 noundef zeroext 90, i8 noundef zeroext %conv84.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i551.i)
  %cmp2.1.i552.i = icmp eq i32 %call1.1.i551.i, 0
  br i1 %cmp2.1.i552.i, label %for.cond.i553.i.ths8200_write.exit560.i_crit_edge, label %for.cond.1.i556.i

for.cond.i553.i.ths8200_write.exit560.i_crit_edge: ; preds = %for.cond.i553.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit560.i

for.cond.1.i556.i:                                ; preds = %for.cond.i553.i
  %call1.2.i554.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %177, i8 noundef zeroext 90, i8 noundef zeroext %conv84.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i554.i)
  %cmp2.2.i555.i = icmp eq i32 %call1.2.i554.i, 0
  br i1 %cmp2.2.i555.i, label %for.cond.1.i556.i.ths8200_write.exit560.i_crit_edge, label %for.cond.2.i559.i

for.cond.1.i556.i.ths8200_write.exit560.i_crit_edge: ; preds = %for.cond.1.i556.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit560.i

for.cond.2.i559.i:                                ; preds = %for.cond.1.i556.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i557.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i558.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i557.i) #8
  br label %ths8200_write.exit560.i

ths8200_write.exit560.i:                          ; preds = %for.cond.2.i559.i, %for.cond.1.i556.i.ths8200_write.exit560.i_crit_edge, %for.cond.i553.i.ths8200_write.exit560.i_crit_edge, %ths8200_write.exit534.i.ths8200_write.exit560.i_crit_edge
  %178 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i562.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %179, i8 noundef zeroext 104, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i562.i)
  %cmp2.i563.i = icmp eq i32 %call1.i562.i, 0
  br i1 %cmp2.i563.i, label %ths8200_write.exit560.i.ths8200_write.exit573.i_crit_edge, label %for.cond.i566.i

ths8200_write.exit560.i.ths8200_write.exit573.i_crit_edge: ; preds = %ths8200_write.exit560.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit573.i

for.cond.i566.i:                                  ; preds = %ths8200_write.exit560.i
  %call1.1.i564.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %179, i8 noundef zeroext 104, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i564.i)
  %cmp2.1.i565.i = icmp eq i32 %call1.1.i564.i, 0
  br i1 %cmp2.1.i565.i, label %for.cond.i566.i.ths8200_write.exit573.i_crit_edge, label %for.cond.1.i569.i

for.cond.i566.i.ths8200_write.exit573.i_crit_edge: ; preds = %for.cond.i566.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit573.i

for.cond.1.i569.i:                                ; preds = %for.cond.i566.i
  %call1.2.i567.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %179, i8 noundef zeroext 104, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i567.i)
  %cmp2.2.i568.i = icmp eq i32 %call1.2.i567.i, 0
  br i1 %cmp2.2.i568.i, label %for.cond.1.i569.i.ths8200_write.exit573.i_crit_edge, label %for.cond.2.i572.i

for.cond.1.i569.i.ths8200_write.exit573.i_crit_edge: ; preds = %for.cond.1.i569.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit573.i

for.cond.2.i572.i:                                ; preds = %for.cond.1.i569.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i570.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i571.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i570.i) #8
  br label %ths8200_write.exit573.i

ths8200_write.exit573.i:                          ; preds = %for.cond.2.i572.i, %for.cond.1.i569.i.ths8200_write.exit573.i_crit_edge, %for.cond.i566.i.ths8200_write.exit573.i_crit_edge, %ths8200_write.exit560.i.ths8200_write.exit573.i_crit_edge
  %180 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i575.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %181, i8 noundef zeroext 105, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i575.i)
  %cmp2.i576.i = icmp eq i32 %call1.i575.i, 0
  br i1 %cmp2.i576.i, label %ths8200_write.exit573.i.ths8200_write.exit586.i_crit_edge, label %for.cond.i579.i

ths8200_write.exit573.i.ths8200_write.exit586.i_crit_edge: ; preds = %ths8200_write.exit573.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit586.i

for.cond.i579.i:                                  ; preds = %ths8200_write.exit573.i
  %call1.1.i577.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %181, i8 noundef zeroext 105, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i577.i)
  %cmp2.1.i578.i = icmp eq i32 %call1.1.i577.i, 0
  br i1 %cmp2.1.i578.i, label %for.cond.i579.i.ths8200_write.exit586.i_crit_edge, label %for.cond.1.i582.i

for.cond.i579.i.ths8200_write.exit586.i_crit_edge: ; preds = %for.cond.i579.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit586.i

for.cond.1.i582.i:                                ; preds = %for.cond.i579.i
  %call1.2.i580.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %181, i8 noundef zeroext 105, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i580.i)
  %cmp2.2.i581.i = icmp eq i32 %call1.2.i580.i, 0
  br i1 %cmp2.2.i581.i, label %for.cond.1.i582.i.ths8200_write.exit586.i_crit_edge, label %for.cond.2.i585.i

for.cond.1.i582.i.ths8200_write.exit586.i_crit_edge: ; preds = %for.cond.1.i582.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit586.i

for.cond.2.i585.i:                                ; preds = %for.cond.1.i582.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i583.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i584.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i583.i) #8
  br label %ths8200_write.exit586.i

ths8200_write.exit586.i:                          ; preds = %for.cond.2.i585.i, %for.cond.1.i582.i.ths8200_write.exit586.i_crit_edge, %for.cond.i579.i.ths8200_write.exit586.i_crit_edge, %ths8200_write.exit573.i.ths8200_write.exit586.i_crit_edge
  %182 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %hsync.i, align 1
  %conv90.i = trunc i32 %183 to i8
  %184 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i588.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %185, i8 noundef zeroext 112, i8 noundef zeroext %conv90.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i588.i)
  %cmp2.i589.i = icmp eq i32 %call1.i588.i, 0
  br i1 %cmp2.i589.i, label %ths8200_write.exit586.i.ths8200_write.exit599.i_crit_edge, label %for.cond.i592.i

ths8200_write.exit586.i.ths8200_write.exit599.i_crit_edge: ; preds = %ths8200_write.exit586.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit599.i

for.cond.i592.i:                                  ; preds = %ths8200_write.exit586.i
  %call1.1.i590.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %185, i8 noundef zeroext 112, i8 noundef zeroext %conv90.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i590.i)
  %cmp2.1.i591.i = icmp eq i32 %call1.1.i590.i, 0
  br i1 %cmp2.1.i591.i, label %for.cond.i592.i.ths8200_write.exit599.i_crit_edge, label %for.cond.1.i595.i

for.cond.i592.i.ths8200_write.exit599.i_crit_edge: ; preds = %for.cond.i592.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit599.i

for.cond.1.i595.i:                                ; preds = %for.cond.i592.i
  %call1.2.i593.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %185, i8 noundef zeroext 112, i8 noundef zeroext %conv90.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i593.i)
  %cmp2.2.i594.i = icmp eq i32 %call1.2.i593.i, 0
  br i1 %cmp2.2.i594.i, label %for.cond.1.i595.i.ths8200_write.exit599.i_crit_edge, label %for.cond.2.i598.i

for.cond.1.i595.i.ths8200_write.exit599.i_crit_edge: ; preds = %for.cond.1.i595.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit599.i

for.cond.2.i598.i:                                ; preds = %for.cond.1.i595.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i596.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i597.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i596.i) #8
  br label %ths8200_write.exit599.i

ths8200_write.exit599.i:                          ; preds = %for.cond.2.i598.i, %for.cond.1.i595.i.ths8200_write.exit599.i_crit_edge, %for.cond.i592.i.ths8200_write.exit599.i_crit_edge, %ths8200_write.exit586.i.ths8200_write.exit599.i_crit_edge
  %186 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %hsync.i, align 1
  %shr93.i = lshr i32 %187, 2
  %188 = trunc i32 %shr93.i to i8
  %conv95.i = and i8 %188, -64
  %189 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i601.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %190, i8 noundef zeroext 113) #5
  %191 = trunc i32 %call1.i.i601.i to i8
  %192 = and i8 %191, 63
  %conv2.i602.i = or i8 %192, %conv95.i
  %193 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i603.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %194, i8 noundef zeroext 113, i8 noundef zeroext %conv2.i602.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i603.i)
  %cmp2.i.i604.i = icmp eq i32 %call1.i7.i603.i, 0
  br i1 %cmp2.i.i604.i, label %ths8200_write.exit599.i.ths8200_write_and_or.exit614.i_crit_edge, label %for.cond.i.i607.i

ths8200_write.exit599.i.ths8200_write_and_or.exit614.i_crit_edge: ; preds = %ths8200_write.exit599.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit614.i

for.cond.i.i607.i:                                ; preds = %ths8200_write.exit599.i
  %call1.1.i.i605.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %194, i8 noundef zeroext 113, i8 noundef zeroext %conv2.i602.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i605.i)
  %cmp2.1.i.i606.i = icmp eq i32 %call1.1.i.i605.i, 0
  br i1 %cmp2.1.i.i606.i, label %for.cond.i.i607.i.ths8200_write_and_or.exit614.i_crit_edge, label %for.cond.1.i.i610.i

for.cond.i.i607.i.ths8200_write_and_or.exit614.i_crit_edge: ; preds = %for.cond.i.i607.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit614.i

for.cond.1.i.i610.i:                              ; preds = %for.cond.i.i607.i
  %call1.2.i.i608.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %194, i8 noundef zeroext 113, i8 noundef zeroext %conv2.i602.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i608.i)
  %cmp2.2.i.i609.i = icmp eq i32 %call1.2.i.i608.i, 0
  br i1 %cmp2.2.i.i609.i, label %for.cond.1.i.i610.i.ths8200_write_and_or.exit614.i_crit_edge, label %for.cond.2.i.i613.i

for.cond.1.i.i610.i.ths8200_write_and_or.exit614.i_crit_edge: ; preds = %for.cond.1.i.i610.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit614.i

for.cond.2.i.i613.i:                              ; preds = %for.cond.1.i.i610.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i611.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i612.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i611.i) #8
  br label %ths8200_write_and_or.exit614.i

ths8200_write_and_or.exit614.i:                   ; preds = %for.cond.2.i.i613.i, %for.cond.1.i.i610.i.ths8200_write_and_or.exit614.i_crit_edge, %for.cond.i.i607.i.ths8200_write_and_or.exit614.i_crit_edge, %ths8200_write.exit599.i.ths8200_write_and_or.exit614.i_crit_edge
  %195 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %196 = load i32, ptr %2, align 1
  %197 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %hfrontporch.i, align 1
  %199 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %hsync.i, align 1
  %201 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %202 = load i32, ptr %hbackporch.i, align 1
  %add.i618.i = add i32 %198, %196
  %add1.i619.i = add i32 %add.i618.i, %200
  %add2.i620.i = add i32 %add1.i619.i, %202
  %shr97.i = lshr i32 %add2.i620.i, 8
  %203 = trunc i32 %shr97.i to i8
  %conv99.i = and i8 %203, 31
  %204 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i622.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %205, i8 noundef zeroext 113) #5
  %206 = trunc i32 %call1.i.i622.i to i8
  %207 = and i8 %206, -32
  %conv2.i623.i = or i8 %207, %conv99.i
  %208 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i624.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %209, i8 noundef zeroext 113, i8 noundef zeroext %conv2.i623.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i624.i)
  %cmp2.i.i625.i = icmp eq i32 %call1.i7.i624.i, 0
  br i1 %cmp2.i.i625.i, label %ths8200_write_and_or.exit614.i.ths8200_write_and_or.exit635.i_crit_edge, label %for.cond.i.i628.i

ths8200_write_and_or.exit614.i.ths8200_write_and_or.exit635.i_crit_edge: ; preds = %ths8200_write_and_or.exit614.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit635.i

for.cond.i.i628.i:                                ; preds = %ths8200_write_and_or.exit614.i
  %call1.1.i.i626.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %209, i8 noundef zeroext 113, i8 noundef zeroext %conv2.i623.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i626.i)
  %cmp2.1.i.i627.i = icmp eq i32 %call1.1.i.i626.i, 0
  br i1 %cmp2.1.i.i627.i, label %for.cond.i.i628.i.ths8200_write_and_or.exit635.i_crit_edge, label %for.cond.1.i.i631.i

for.cond.i.i628.i.ths8200_write_and_or.exit635.i_crit_edge: ; preds = %for.cond.i.i628.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit635.i

for.cond.1.i.i631.i:                              ; preds = %for.cond.i.i628.i
  %call1.2.i.i629.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %209, i8 noundef zeroext 113, i8 noundef zeroext %conv2.i623.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i629.i)
  %cmp2.2.i.i630.i = icmp eq i32 %call1.2.i.i629.i, 0
  br i1 %cmp2.2.i.i630.i, label %for.cond.1.i.i631.i.ths8200_write_and_or.exit635.i_crit_edge, label %for.cond.2.i.i634.i

for.cond.1.i.i631.i.ths8200_write_and_or.exit635.i_crit_edge: ; preds = %for.cond.1.i.i631.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit635.i

for.cond.2.i.i634.i:                              ; preds = %for.cond.1.i.i631.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i632.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i633.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i632.i) #8
  br label %ths8200_write_and_or.exit635.i

ths8200_write_and_or.exit635.i:                   ; preds = %for.cond.2.i.i634.i, %for.cond.1.i.i631.i.ths8200_write_and_or.exit635.i_crit_edge, %for.cond.i.i628.i.ths8200_write_and_or.exit635.i_crit_edge, %ths8200_write_and_or.exit614.i.ths8200_write_and_or.exit635.i_crit_edge
  %210 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %2, align 1
  %212 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %hfrontporch.i, align 1
  %214 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %hsync.i, align 1
  %216 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %217 = load i32, ptr %hbackporch.i, align 1
  %add.i639.i = add i32 %213, %211
  %add1.i640.i = add i32 %add.i639.i, %215
  %add2.i641.i = add i32 %add1.i640.i, %217
  %conv101.i = trunc i32 %add2.i641.i to i8
  %218 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i643.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %219, i8 noundef zeroext 114, i8 noundef zeroext %conv101.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i643.i)
  %cmp2.i644.i = icmp eq i32 %call1.i643.i, 0
  br i1 %cmp2.i644.i, label %ths8200_write_and_or.exit635.i.ths8200_write.exit654.i_crit_edge, label %for.cond.i647.i

ths8200_write_and_or.exit635.i.ths8200_write.exit654.i_crit_edge: ; preds = %ths8200_write_and_or.exit635.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit654.i

for.cond.i647.i:                                  ; preds = %ths8200_write_and_or.exit635.i
  %call1.1.i645.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %219, i8 noundef zeroext 114, i8 noundef zeroext %conv101.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i645.i)
  %cmp2.1.i646.i = icmp eq i32 %call1.1.i645.i, 0
  br i1 %cmp2.1.i646.i, label %for.cond.i647.i.ths8200_write.exit654.i_crit_edge, label %for.cond.1.i650.i

for.cond.i647.i.ths8200_write.exit654.i_crit_edge: ; preds = %for.cond.i647.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit654.i

for.cond.1.i650.i:                                ; preds = %for.cond.i647.i
  %call1.2.i648.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %219, i8 noundef zeroext 114, i8 noundef zeroext %conv101.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i648.i)
  %cmp2.2.i649.i = icmp eq i32 %call1.2.i648.i, 0
  br i1 %cmp2.2.i649.i, label %for.cond.1.i650.i.ths8200_write.exit654.i_crit_edge, label %for.cond.2.i653.i

for.cond.1.i650.i.ths8200_write.exit654.i_crit_edge: ; preds = %for.cond.1.i650.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit654.i

for.cond.2.i653.i:                                ; preds = %for.cond.1.i650.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i651.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i652.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i651.i) #8
  br label %ths8200_write.exit654.i

ths8200_write.exit654.i:                          ; preds = %for.cond.2.i653.i, %for.cond.1.i650.i.ths8200_write.exit654.i_crit_edge, %for.cond.i647.i.ths8200_write.exit654.i_crit_edge, %ths8200_write_and_or.exit635.i.ths8200_write.exit654.i_crit_edge
  %220 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %vsync.i, align 1
  %222 = trunc i32 %221 to i8
  %conv106.i = add i8 %222, 1
  %223 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i656.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %224, i8 noundef zeroext 115, i8 noundef zeroext %conv106.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i656.i)
  %cmp2.i657.i = icmp eq i32 %call1.i656.i, 0
  br i1 %cmp2.i657.i, label %ths8200_write.exit654.i.ths8200_write.exit667.i_crit_edge, label %for.cond.i660.i

ths8200_write.exit654.i.ths8200_write.exit667.i_crit_edge: ; preds = %ths8200_write.exit654.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit667.i

for.cond.i660.i:                                  ; preds = %ths8200_write.exit654.i
  %call1.1.i658.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %224, i8 noundef zeroext 115, i8 noundef zeroext %conv106.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i658.i)
  %cmp2.1.i659.i = icmp eq i32 %call1.1.i658.i, 0
  br i1 %cmp2.1.i659.i, label %for.cond.i660.i.ths8200_write.exit667.i_crit_edge, label %for.cond.1.i663.i

for.cond.i660.i.ths8200_write.exit667.i_crit_edge: ; preds = %for.cond.i660.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit667.i

for.cond.1.i663.i:                                ; preds = %for.cond.i660.i
  %call1.2.i661.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %224, i8 noundef zeroext 115, i8 noundef zeroext %conv106.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i661.i)
  %cmp2.2.i662.i = icmp eq i32 %call1.2.i661.i, 0
  br i1 %cmp2.2.i662.i, label %for.cond.1.i663.i.ths8200_write.exit667.i_crit_edge, label %for.cond.2.i666.i

for.cond.1.i663.i.ths8200_write.exit667.i_crit_edge: ; preds = %for.cond.1.i663.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit667.i

for.cond.2.i666.i:                                ; preds = %for.cond.1.i663.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i664.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i665.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i664.i) #8
  br label %ths8200_write.exit667.i

ths8200_write.exit667.i:                          ; preds = %for.cond.2.i666.i, %for.cond.1.i663.i.ths8200_write.exit667.i_crit_edge, %for.cond.i660.i.ths8200_write.exit667.i_crit_edge, %ths8200_write.exit654.i.ths8200_write.exit667.i_crit_edge
  %225 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 4)
  %226 = load i32, ptr %vsync.i, align 1
  %add109.i = add i32 %226, 1
  %shr110.i = lshr i32 %add109.i, 2
  %227 = trunc i32 %shr110.i to i8
  %conv112.i = and i8 %227, -64
  %228 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i669.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %229, i8 noundef zeroext 116) #5
  %230 = trunc i32 %call1.i.i669.i to i8
  %231 = and i8 %230, 63
  %conv2.i670.i = or i8 %231, %conv112.i
  %232 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i671.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %233, i8 noundef zeroext 116, i8 noundef zeroext %conv2.i670.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i671.i)
  %cmp2.i.i672.i = icmp eq i32 %call1.i7.i671.i, 0
  br i1 %cmp2.i.i672.i, label %ths8200_write.exit667.i.ths8200_write_and_or.exit682.i_crit_edge, label %for.cond.i.i675.i

ths8200_write.exit667.i.ths8200_write_and_or.exit682.i_crit_edge: ; preds = %ths8200_write.exit667.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit682.i

for.cond.i.i675.i:                                ; preds = %ths8200_write.exit667.i
  %call1.1.i.i673.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %233, i8 noundef zeroext 116, i8 noundef zeroext %conv2.i670.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i673.i)
  %cmp2.1.i.i674.i = icmp eq i32 %call1.1.i.i673.i, 0
  br i1 %cmp2.1.i.i674.i, label %for.cond.i.i675.i.ths8200_write_and_or.exit682.i_crit_edge, label %for.cond.1.i.i678.i

for.cond.i.i675.i.ths8200_write_and_or.exit682.i_crit_edge: ; preds = %for.cond.i.i675.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit682.i

for.cond.1.i.i678.i:                              ; preds = %for.cond.i.i675.i
  %call1.2.i.i676.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %233, i8 noundef zeroext 116, i8 noundef zeroext %conv2.i670.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i676.i)
  %cmp2.2.i.i677.i = icmp eq i32 %call1.2.i.i676.i, 0
  br i1 %cmp2.2.i.i677.i, label %for.cond.1.i.i678.i.ths8200_write_and_or.exit682.i_crit_edge, label %for.cond.2.i.i681.i

for.cond.1.i.i678.i.ths8200_write_and_or.exit682.i_crit_edge: ; preds = %for.cond.1.i.i678.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit682.i

for.cond.2.i.i681.i:                              ; preds = %for.cond.1.i.i678.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i679.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i680.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i679.i) #8
  br label %ths8200_write_and_or.exit682.i

ths8200_write_and_or.exit682.i:                   ; preds = %for.cond.2.i.i681.i, %for.cond.1.i.i678.i.ths8200_write_and_or.exit682.i_crit_edge, %for.cond.i.i675.i.ths8200_write_and_or.exit682.i_crit_edge, %ths8200_write.exit667.i.ths8200_write_and_or.exit682.i_crit_edge
  %234 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %235 = load i32, ptr %height.i.i, align 1
  %236 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %vfrontporch.i.i, align 1
  %238 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %239 = load i32, ptr %vsync.i, align 1
  %240 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %vbackporch.i, align 1
  %242 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %il_vfrontporch.i.i, align 1
  %244 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %il_vsync.i.i, align 1
  %246 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i690.i = add i32 %235, 1
  %add1.i691.i = add i32 %add.i690.i, %237
  %add2.i692.i = add i32 %add1.i691.i, %239
  %add3.i693.i = add i32 %add2.i692.i, %241
  %add4.i694.i = add i32 %add3.i693.i, %243
  %add5.i695.i = add i32 %add4.i694.i, %245
  %add114.i = add i32 %add5.i695.i, %247
  %shr115.i = lshr i32 %add114.i, 8
  %248 = trunc i32 %shr115.i to i8
  %conv117.i = and i8 %248, 7
  %249 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i697.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %250, i8 noundef zeroext 116) #5
  %251 = trunc i32 %call1.i.i697.i to i8
  %252 = and i8 %251, -8
  %conv2.i698.i = or i8 %conv117.i, %252
  %253 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i7.i699.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %254, i8 noundef zeroext 116, i8 noundef zeroext %conv2.i698.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i699.i)
  %cmp2.i.i700.i = icmp eq i32 %call1.i7.i699.i, 0
  br i1 %cmp2.i.i700.i, label %ths8200_write_and_or.exit682.i.ths8200_write_and_or.exit710.i_crit_edge, label %for.cond.i.i703.i

ths8200_write_and_or.exit682.i.ths8200_write_and_or.exit710.i_crit_edge: ; preds = %ths8200_write_and_or.exit682.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit710.i

for.cond.i.i703.i:                                ; preds = %ths8200_write_and_or.exit682.i
  %call1.1.i.i701.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %254, i8 noundef zeroext 116, i8 noundef zeroext %conv2.i698.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i.i701.i)
  %cmp2.1.i.i702.i = icmp eq i32 %call1.1.i.i701.i, 0
  br i1 %cmp2.1.i.i702.i, label %for.cond.i.i703.i.ths8200_write_and_or.exit710.i_crit_edge, label %for.cond.1.i.i706.i

for.cond.i.i703.i.ths8200_write_and_or.exit710.i_crit_edge: ; preds = %for.cond.i.i703.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit710.i

for.cond.1.i.i706.i:                              ; preds = %for.cond.i.i703.i
  %call1.2.i.i704.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %254, i8 noundef zeroext 116, i8 noundef zeroext %conv2.i698.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i.i704.i)
  %cmp2.2.i.i705.i = icmp eq i32 %call1.2.i.i704.i, 0
  br i1 %cmp2.2.i.i705.i, label %for.cond.1.i.i706.i.ths8200_write_and_or.exit710.i_crit_edge, label %for.cond.2.i.i709.i

for.cond.1.i.i706.i.ths8200_write_and_or.exit710.i_crit_edge: ; preds = %for.cond.1.i.i706.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write_and_or.exit710.i

for.cond.2.i.i709.i:                              ; preds = %for.cond.1.i.i706.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i707.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i.i708.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i707.i) #8
  br label %ths8200_write_and_or.exit710.i

ths8200_write_and_or.exit710.i:                   ; preds = %for.cond.2.i.i709.i, %for.cond.1.i.i706.i.ths8200_write_and_or.exit710.i_crit_edge, %for.cond.i.i703.i.ths8200_write_and_or.exit710.i_crit_edge, %ths8200_write_and_or.exit682.i.ths8200_write_and_or.exit710.i_crit_edge
  %255 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %256 = load i32, ptr %height.i.i, align 1
  %257 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %257, i32 4)
  %258 = load i32, ptr %vfrontporch.i.i, align 1
  %259 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %259, i32 4)
  %260 = load i32, ptr %vsync.i, align 1
  %261 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %261, i32 4)
  %262 = load i32, ptr %vbackporch.i, align 1
  %263 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %il_vfrontporch.i.i, align 1
  %265 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %266 = load i32, ptr %il_vsync.i.i, align 1
  %267 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %268 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i718.i = add i32 %258, %256
  %add1.i719.i = add i32 %add.i718.i, %260
  %add2.i720.i = add i32 %add1.i719.i, %262
  %add3.i721.i = add i32 %add2.i720.i, %264
  %add4.i722.i = add i32 %add3.i721.i, %266
  %add5.i723.i = add i32 %add4.i722.i, %268
  %269 = trunc i32 %add5.i723.i to i8
  %conv120.i = add i8 %269, 1
  %270 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i725.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %271, i8 noundef zeroext 117, i8 noundef zeroext %conv120.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i725.i)
  %cmp2.i726.i = icmp eq i32 %call1.i725.i, 0
  br i1 %cmp2.i726.i, label %ths8200_write_and_or.exit710.i.ths8200_write.exit736.i_crit_edge, label %for.cond.i729.i

ths8200_write_and_or.exit710.i.ths8200_write.exit736.i_crit_edge: ; preds = %ths8200_write_and_or.exit710.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit736.i

for.cond.i729.i:                                  ; preds = %ths8200_write_and_or.exit710.i
  %call1.1.i727.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %271, i8 noundef zeroext 117, i8 noundef zeroext %conv120.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i727.i)
  %cmp2.1.i728.i = icmp eq i32 %call1.1.i727.i, 0
  br i1 %cmp2.1.i728.i, label %for.cond.i729.i.ths8200_write.exit736.i_crit_edge, label %for.cond.1.i732.i

for.cond.i729.i.ths8200_write.exit736.i_crit_edge: ; preds = %for.cond.i729.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit736.i

for.cond.1.i732.i:                                ; preds = %for.cond.i729.i
  %call1.2.i730.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %271, i8 noundef zeroext 117, i8 noundef zeroext %conv120.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i730.i)
  %cmp2.2.i731.i = icmp eq i32 %call1.2.i730.i, 0
  br i1 %cmp2.2.i731.i, label %for.cond.1.i732.i.ths8200_write.exit736.i_crit_edge, label %for.cond.2.i735.i

for.cond.1.i732.i.ths8200_write.exit736.i_crit_edge: ; preds = %for.cond.1.i732.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit736.i

for.cond.2.i735.i:                                ; preds = %for.cond.1.i732.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i733.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i734.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i733.i) #8
  br label %ths8200_write.exit736.i

ths8200_write.exit736.i:                          ; preds = %for.cond.2.i735.i, %for.cond.1.i732.i.ths8200_write.exit736.i_crit_edge, %for.cond.i729.i.ths8200_write.exit736.i_crit_edge, %ths8200_write_and_or.exit710.i.ths8200_write.exit736.i_crit_edge
  %272 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i738.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %273, i8 noundef zeroext 118, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i738.i)
  %cmp2.i739.i = icmp eq i32 %call1.i738.i, 0
  br i1 %cmp2.i739.i, label %ths8200_write.exit736.i.ths8200_write.exit749.i_crit_edge, label %for.cond.i742.i

ths8200_write.exit736.i.ths8200_write.exit749.i_crit_edge: ; preds = %ths8200_write.exit736.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit749.i

for.cond.i742.i:                                  ; preds = %ths8200_write.exit736.i
  %call1.1.i740.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %273, i8 noundef zeroext 118, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i740.i)
  %cmp2.1.i741.i = icmp eq i32 %call1.1.i740.i, 0
  br i1 %cmp2.1.i741.i, label %for.cond.i742.i.ths8200_write.exit749.i_crit_edge, label %for.cond.1.i745.i

for.cond.i742.i.ths8200_write.exit749.i_crit_edge: ; preds = %for.cond.i742.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit749.i

for.cond.1.i745.i:                                ; preds = %for.cond.i742.i
  %call1.2.i743.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %273, i8 noundef zeroext 118, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i743.i)
  %cmp2.2.i744.i = icmp eq i32 %call1.2.i743.i, 0
  br i1 %cmp2.2.i744.i, label %for.cond.1.i745.i.ths8200_write.exit749.i_crit_edge, label %for.cond.2.i748.i

for.cond.1.i745.i.ths8200_write.exit749.i_crit_edge: ; preds = %for.cond.1.i745.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit749.i

for.cond.2.i748.i:                                ; preds = %for.cond.1.i745.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i746.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i747.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i746.i) #8
  br label %ths8200_write.exit749.i

ths8200_write.exit749.i:                          ; preds = %for.cond.2.i748.i, %for.cond.1.i745.i.ths8200_write.exit749.i_crit_edge, %for.cond.i742.i.ths8200_write.exit749.i_crit_edge, %ths8200_write.exit736.i.ths8200_write.exit749.i_crit_edge
  %274 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i751.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %275, i8 noundef zeroext 119, i8 noundef zeroext 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i751.i)
  %cmp2.i752.i = icmp eq i32 %call1.i751.i, 0
  br i1 %cmp2.i752.i, label %ths8200_write.exit749.i.ths8200_write.exit762.i_crit_edge, label %for.cond.i755.i

ths8200_write.exit749.i.ths8200_write.exit762.i_crit_edge: ; preds = %ths8200_write.exit749.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit762.i

for.cond.i755.i:                                  ; preds = %ths8200_write.exit749.i
  %call1.1.i753.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %275, i8 noundef zeroext 119, i8 noundef zeroext 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i753.i)
  %cmp2.1.i754.i = icmp eq i32 %call1.1.i753.i, 0
  br i1 %cmp2.1.i754.i, label %for.cond.i755.i.ths8200_write.exit762.i_crit_edge, label %for.cond.1.i758.i

for.cond.i755.i.ths8200_write.exit762.i_crit_edge: ; preds = %for.cond.i755.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit762.i

for.cond.1.i758.i:                                ; preds = %for.cond.i755.i
  %call1.2.i756.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %275, i8 noundef zeroext 119, i8 noundef zeroext 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i756.i)
  %cmp2.2.i757.i = icmp eq i32 %call1.2.i756.i, 0
  br i1 %cmp2.2.i757.i, label %for.cond.1.i758.i.ths8200_write.exit762.i_crit_edge, label %for.cond.2.i761.i

for.cond.1.i758.i.ths8200_write.exit762.i_crit_edge: ; preds = %for.cond.1.i758.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit762.i

for.cond.2.i761.i:                                ; preds = %for.cond.1.i758.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i759.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i760.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i759.i) #8
  br label %ths8200_write.exit762.i

ths8200_write.exit762.i:                          ; preds = %for.cond.2.i761.i, %for.cond.1.i758.i.ths8200_write.exit762.i_crit_edge, %for.cond.i755.i.ths8200_write.exit762.i_crit_edge, %ths8200_write.exit749.i.ths8200_write.exit762.i_crit_edge
  %276 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i764.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %277, i8 noundef zeroext 120, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i764.i)
  %cmp2.i765.i = icmp eq i32 %call1.i764.i, 0
  br i1 %cmp2.i765.i, label %ths8200_write.exit762.i.ths8200_write.exit775.i_crit_edge, label %for.cond.i768.i

ths8200_write.exit762.i.ths8200_write.exit775.i_crit_edge: ; preds = %ths8200_write.exit762.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit775.i

for.cond.i768.i:                                  ; preds = %ths8200_write.exit762.i
  %call1.1.i766.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %277, i8 noundef zeroext 120, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i766.i)
  %cmp2.1.i767.i = icmp eq i32 %call1.1.i766.i, 0
  br i1 %cmp2.1.i767.i, label %for.cond.i768.i.ths8200_write.exit775.i_crit_edge, label %for.cond.1.i771.i

for.cond.i768.i.ths8200_write.exit775.i_crit_edge: ; preds = %for.cond.i768.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit775.i

for.cond.1.i771.i:                                ; preds = %for.cond.i768.i
  %call1.2.i769.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %277, i8 noundef zeroext 120, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i769.i)
  %cmp2.2.i770.i = icmp eq i32 %call1.2.i769.i, 0
  br i1 %cmp2.2.i770.i, label %for.cond.1.i771.i.ths8200_write.exit775.i_crit_edge, label %for.cond.2.i774.i

for.cond.1.i771.i.ths8200_write.exit775.i_crit_edge: ; preds = %for.cond.1.i771.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit775.i

for.cond.2.i774.i:                                ; preds = %for.cond.1.i771.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i772.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i773.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i772.i) #8
  br label %ths8200_write.exit775.i

ths8200_write.exit775.i:                          ; preds = %for.cond.2.i774.i, %for.cond.1.i771.i.ths8200_write.exit775.i_crit_edge, %for.cond.i768.i.ths8200_write.exit775.i_crit_edge, %ths8200_write.exit762.i.ths8200_write.exit775.i_crit_edge
  %278 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i777.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %279, i8 noundef zeroext 121, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i777.i)
  %cmp2.i778.i = icmp eq i32 %call1.i777.i, 0
  br i1 %cmp2.i778.i, label %ths8200_write.exit775.i.ths8200_write.exit788.i_crit_edge, label %for.cond.i781.i

ths8200_write.exit775.i.ths8200_write.exit788.i_crit_edge: ; preds = %ths8200_write.exit775.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit788.i

for.cond.i781.i:                                  ; preds = %ths8200_write.exit775.i
  %call1.1.i779.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %279, i8 noundef zeroext 121, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i779.i)
  %cmp2.1.i780.i = icmp eq i32 %call1.1.i779.i, 0
  br i1 %cmp2.1.i780.i, label %for.cond.i781.i.ths8200_write.exit788.i_crit_edge, label %for.cond.1.i784.i

for.cond.i781.i.ths8200_write.exit788.i_crit_edge: ; preds = %for.cond.i781.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit788.i

for.cond.1.i784.i:                                ; preds = %for.cond.i781.i
  %call1.2.i782.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %279, i8 noundef zeroext 121, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i782.i)
  %cmp2.2.i783.i = icmp eq i32 %call1.2.i782.i, 0
  br i1 %cmp2.2.i783.i, label %for.cond.1.i784.i.ths8200_write.exit788.i_crit_edge, label %for.cond.2.i787.i

for.cond.1.i784.i.ths8200_write.exit788.i_crit_edge: ; preds = %for.cond.1.i784.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit788.i

for.cond.2.i787.i:                                ; preds = %for.cond.1.i784.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i785.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i786.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i785.i) #8
  br label %ths8200_write.exit788.i

ths8200_write.exit788.i:                          ; preds = %for.cond.2.i787.i, %for.cond.1.i784.i.ths8200_write.exit788.i_crit_edge, %for.cond.i781.i.ths8200_write.exit788.i_crit_edge, %ths8200_write.exit775.i.ths8200_write.exit788.i_crit_edge
  %280 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i790.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %281, i8 noundef zeroext 122, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i790.i)
  %cmp2.i791.i = icmp eq i32 %call1.i790.i, 0
  br i1 %cmp2.i791.i, label %ths8200_write.exit788.i.ths8200_write.exit801.i_crit_edge, label %for.cond.i794.i

ths8200_write.exit788.i.ths8200_write.exit801.i_crit_edge: ; preds = %ths8200_write.exit788.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit801.i

for.cond.i794.i:                                  ; preds = %ths8200_write.exit788.i
  %call1.1.i792.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %281, i8 noundef zeroext 122, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i792.i)
  %cmp2.1.i793.i = icmp eq i32 %call1.1.i792.i, 0
  br i1 %cmp2.1.i793.i, label %for.cond.i794.i.ths8200_write.exit801.i_crit_edge, label %for.cond.1.i797.i

for.cond.i794.i.ths8200_write.exit801.i_crit_edge: ; preds = %for.cond.i794.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit801.i

for.cond.1.i797.i:                                ; preds = %for.cond.i794.i
  %call1.2.i795.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %281, i8 noundef zeroext 122, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i795.i)
  %cmp2.2.i796.i = icmp eq i32 %call1.2.i795.i, 0
  br i1 %cmp2.2.i796.i, label %for.cond.1.i797.i.ths8200_write.exit801.i_crit_edge, label %for.cond.2.i800.i

for.cond.1.i797.i.ths8200_write.exit801.i_crit_edge: ; preds = %for.cond.1.i797.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit801.i

for.cond.2.i800.i:                                ; preds = %for.cond.1.i797.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i798.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i799.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i798.i) #8
  br label %ths8200_write.exit801.i

ths8200_write.exit801.i:                          ; preds = %for.cond.2.i800.i, %for.cond.1.i797.i.ths8200_write.exit801.i_crit_edge, %for.cond.i794.i.ths8200_write.exit801.i_crit_edge, %ths8200_write.exit788.i.ths8200_write.exit801.i_crit_edge
  %282 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i803.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %283, i8 noundef zeroext 123, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i803.i)
  %cmp2.i804.i = icmp eq i32 %call1.i803.i, 0
  br i1 %cmp2.i804.i, label %ths8200_write.exit801.i.ths8200_write.exit814.i_crit_edge, label %for.cond.i807.i

ths8200_write.exit801.i.ths8200_write.exit814.i_crit_edge: ; preds = %ths8200_write.exit801.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit814.i

for.cond.i807.i:                                  ; preds = %ths8200_write.exit801.i
  %call1.1.i805.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %283, i8 noundef zeroext 123, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i805.i)
  %cmp2.1.i806.i = icmp eq i32 %call1.1.i805.i, 0
  br i1 %cmp2.1.i806.i, label %for.cond.i807.i.ths8200_write.exit814.i_crit_edge, label %for.cond.1.i810.i

for.cond.i807.i.ths8200_write.exit814.i_crit_edge: ; preds = %for.cond.i807.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit814.i

for.cond.1.i810.i:                                ; preds = %for.cond.i807.i
  %call1.2.i808.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %283, i8 noundef zeroext 123, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i808.i)
  %cmp2.2.i809.i = icmp eq i32 %call1.2.i808.i, 0
  br i1 %cmp2.2.i809.i, label %for.cond.1.i810.i.ths8200_write.exit814.i_crit_edge, label %for.cond.2.i813.i

for.cond.1.i810.i.ths8200_write.exit814.i_crit_edge: ; preds = %for.cond.1.i810.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit814.i

for.cond.2.i813.i:                                ; preds = %for.cond.1.i810.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i811.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i812.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i811.i) #8
  br label %ths8200_write.exit814.i

ths8200_write.exit814.i:                          ; preds = %for.cond.2.i813.i, %for.cond.1.i810.i.ths8200_write.exit814.i_crit_edge, %for.cond.i807.i.ths8200_write.exit814.i_crit_edge, %ths8200_write.exit801.i.ths8200_write.exit814.i_crit_edge
  %284 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i816.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %285, i8 noundef zeroext 124, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i816.i)
  %cmp2.i817.i = icmp eq i32 %call1.i816.i, 0
  br i1 %cmp2.i817.i, label %ths8200_write.exit814.i.ths8200_write.exit827.i_crit_edge, label %for.cond.i820.i

ths8200_write.exit814.i.ths8200_write.exit827.i_crit_edge: ; preds = %ths8200_write.exit814.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit827.i

for.cond.i820.i:                                  ; preds = %ths8200_write.exit814.i
  %call1.1.i818.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %285, i8 noundef zeroext 124, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i818.i)
  %cmp2.1.i819.i = icmp eq i32 %call1.1.i818.i, 0
  br i1 %cmp2.1.i819.i, label %for.cond.i820.i.ths8200_write.exit827.i_crit_edge, label %for.cond.1.i823.i

for.cond.i820.i.ths8200_write.exit827.i_crit_edge: ; preds = %for.cond.i820.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit827.i

for.cond.1.i823.i:                                ; preds = %for.cond.i820.i
  %call1.2.i821.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %285, i8 noundef zeroext 124, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i821.i)
  %cmp2.2.i822.i = icmp eq i32 %call1.2.i821.i, 0
  br i1 %cmp2.2.i822.i, label %for.cond.1.i823.i.ths8200_write.exit827.i_crit_edge, label %for.cond.2.i826.i

for.cond.1.i823.i.ths8200_write.exit827.i_crit_edge: ; preds = %for.cond.1.i823.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit827.i

for.cond.2.i826.i:                                ; preds = %for.cond.1.i823.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i824.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i825.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i824.i) #8
  br label %ths8200_write.exit827.i

ths8200_write.exit827.i:                          ; preds = %for.cond.2.i826.i, %for.cond.1.i823.i.ths8200_write.exit827.i_crit_edge, %for.cond.i820.i.ths8200_write.exit827.i_crit_edge, %ths8200_write.exit814.i.ths8200_write.exit827.i_crit_edge
  %polarities.i = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 3
  %286 = ptrtoint ptr %polarities.i to i32
  call void @__asan_loadN_noabort(i32 %286, i32 4)
  %287 = load i32, ptr %polarities.i, align 1
  %and129.i = and i32 %287, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i)
  %tobool130.not.i = icmp eq i32 %and129.i, 0
  %spec.select.i = select i1 %tobool130.not.i, i8 0, i8 9
  %and139.i = and i32 %287, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  %288 = or i8 %spec.select.i, 18
  %polarity.1.i = select i1 %tobool140.not.i, i8 %spec.select.i, i8 %288
  %or150.i = or i8 %polarity.1.i, 68
  %289 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i829.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %290, i8 noundef zeroext -126, i8 noundef zeroext %or150.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i829.i)
  %cmp2.i830.i = icmp eq i32 %call1.i829.i, 0
  br i1 %cmp2.i830.i, label %ths8200_write.exit827.i.ths8200_write.exit840.i_crit_edge, label %for.cond.i833.i

ths8200_write.exit827.i.ths8200_write.exit840.i_crit_edge: ; preds = %ths8200_write.exit827.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit840.i

for.cond.i833.i:                                  ; preds = %ths8200_write.exit827.i
  %call1.1.i831.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %290, i8 noundef zeroext -126, i8 noundef zeroext %or150.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i831.i)
  %cmp2.1.i832.i = icmp eq i32 %call1.1.i831.i, 0
  br i1 %cmp2.1.i832.i, label %for.cond.i833.i.ths8200_write.exit840.i_crit_edge, label %for.cond.1.i836.i

for.cond.i833.i.ths8200_write.exit840.i_crit_edge: ; preds = %for.cond.i833.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit840.i

for.cond.1.i836.i:                                ; preds = %for.cond.i833.i
  %call1.2.i834.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %290, i8 noundef zeroext -126, i8 noundef zeroext %or150.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i834.i)
  %cmp2.2.i835.i = icmp eq i32 %call1.2.i834.i, 0
  br i1 %cmp2.2.i835.i, label %for.cond.1.i836.i.ths8200_write.exit840.i_crit_edge, label %for.cond.2.i839.i

for.cond.1.i836.i.ths8200_write.exit840.i_crit_edge: ; preds = %for.cond.1.i836.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ths8200_write.exit840.i

for.cond.2.i839.i:                                ; preds = %for.cond.1.i836.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i837.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call3.i838.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i837.i) #8
  br label %ths8200_write.exit840.i

ths8200_write.exit840.i:                          ; preds = %for.cond.2.i839.i, %for.cond.1.i836.i.ths8200_write.exit840.i_crit_edge, %for.cond.i833.i.ths8200_write.exit840.i_crit_edge, %ths8200_write.exit827.i.ths8200_write.exit840.i_crit_edge
  %call153.i = tail call i32 @ths8200_s_stream(ptr noundef %sd, i32 noundef 1) #5
  %291 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %cmp.i = icmp sgt i32 %291, 0
  br i1 %cmp.i, label %do.end.i, label %ths8200_write.exit840.i.cleanup_crit_edge

ths8200_write.exit840.i.cleanup_crit_edge:        ; preds = %ths8200_write.exit840.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %ths8200_write.exit840.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv149.i = zext i8 %polarity.1.i to i32
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %292 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %292, i32 4)
  %293 = load i32, ptr %2, align 1
  %294 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %294, i32 4)
  %295 = load i32, ptr %hfrontporch.i, align 1
  %296 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %hsync.i, align 1
  %298 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %299 = load i32, ptr %hbackporch.i, align 1
  %add.i844.i = add i32 %295, %293
  %add1.i845.i = add i32 %add.i844.i, %297
  %add2.i846.i = add i32 %add1.i845.i, %299
  %300 = ptrtoint ptr %height.i.i to i32
  call void @__asan_loadN_noabort(i32 %300, i32 4)
  %301 = load i32, ptr %height.i.i, align 1
  %302 = ptrtoint ptr %vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %302, i32 4)
  %303 = load i32, ptr %vfrontporch.i.i, align 1
  %304 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %304, i32 4)
  %305 = load i32, ptr %vsync.i, align 1
  %306 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %306, i32 4)
  %307 = load i32, ptr %vbackporch.i, align 1
  %308 = ptrtoint ptr %il_vfrontporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %308, i32 4)
  %309 = load i32, ptr %il_vfrontporch.i.i, align 1
  %310 = ptrtoint ptr %il_vsync.i.i to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %il_vsync.i.i, align 1
  %312 = ptrtoint ptr %il_vbackporch.i.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 4)
  %313 = load i32, ptr %il_vbackporch.i.i, align 1
  %add.i854.i = add i32 %303, %301
  %add1.i855.i = add i32 %add.i854.i, %305
  %add2.i856.i = add i32 %add1.i855.i, %307
  %add3.i857.i = add i32 %add2.i856.i, %309
  %add4.i858.i = add i32 %add3.i857.i, %311
  %add5.i859.i = add i32 %add4.i858.i, %313
  %call164.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name.i, ptr noundef nonnull @.str.45, i32 noundef %add2.i846.i, i32 noundef %add5.i859.i, i32 noundef %conv149.i, i32 noundef %295, i32 noundef %299, i32 noundef %297, i32 noundef %305) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %ths8200_write.exit840.i.cleanup_crit_edge, %do.end15, %do.body10.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ -22, %do.end15 ], [ -22, %do.body10.cleanup_crit_edge ], [ 0, %ths8200_write.exit840.i.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_g_dv_timings(ptr noundef %sd, ptr nocapture noundef writeonly %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef nonnull @.str.46) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dv_timings = getelementptr inbounds %struct.ths8200_state, ptr %sd, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %timings, ptr %dv_timings, i32 132)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ths8200_dv_timings_cap(ptr nocapture noundef readnone %sd, ptr nocapture noundef %cap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %cap, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = call ptr @memcpy(ptr %cap, ptr @ths8200_timings_cap, i32 144)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths8200_enum_dv_timings(ptr nocapture noundef readnone %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %timings, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @ths8200_timings_cap, ptr noundef null, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !84, !86, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ths8200.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ths8200.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ths8200.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_author295, !8, !"__UNIQUE_ID_author295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ths8200.c", i32 36, i32 1}
!9 = !{ptr @__UNIQUE_ID_author296, !10, !"__UNIQUE_ID_author296", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/ths8200.c", i32 37, i32 1}
!11 = !{ptr @__UNIQUE_ID_file297, !12, !"__UNIQUE_ID_file297", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/ths8200.c", i32 38, i32 1}
!13 = !{ptr @__UNIQUE_ID_license298, !12, !"__UNIQUE_ID_license298", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_ths8200__299_509_ths8200_driver_init6, !15, !"__initcall__kmod_ths8200__299_509_ths8200_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ths8200.c", i32 509, i32 1}
!16 = !{ptr @__exitcall_ths8200_driver_exit, !15, !"__exitcall_ths8200_driver_exit", i1 false, i1 false}
!17 = !{ptr @debug, !18, !"debug", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/ths8200.c", i32 31, i32 12}
!19 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ths8200.c", i32 501, i32 11}
!22 = !{ptr @ths8200_driver, !23, !"ths8200_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ths8200.c", i32 499, i32 26}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ths8200.c", i32 476, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ths8200_remove._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @ths8200_remove._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ths8200.c", i32 149, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ths8200_s_power._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ths8200_s_power._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ths8200.c", i32 89, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ths8200_write._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ths8200_write._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/ths8200.c", i32 457, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ths8200_probe._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ths8200_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/ths8200.c", i32 465, i32 2}
!49 = !{ptr @ths8200_probe._entry.12, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ths8200_probe._entry_ptr.14, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ths8200_ops, !52, !"ths8200_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ths8200.c", i32 433, i32 37}
!53 = !{ptr @ths8200_core_ops, !54, !"ths8200_core_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ths8200.c", i32 159, i32 42}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ths8200.c", i32 128, i32 2}
!57 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ths8200_log_status._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ths8200_log_status._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ths8200.c", i32 129, i32 2}
!62 = !{ptr @ths8200_log_status._entry.17, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ths8200_log_status._entry_ptr.19, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ths8200.c", i32 130, i32 2}
!66 = !{ptr @ths8200_log_status._entry.20, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ths8200_log_status._entry_ptr.22, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ths8200.c", i32 131, i32 2}
!70 = !{ptr @ths8200_log_status._entry.23, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ths8200_log_status._entry_ptr.25, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ths8200.c", i32 132, i32 2}
!74 = !{ptr @ths8200_log_status._entry.26, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ths8200_log_status._entry_ptr.28, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ths8200.c", i32 134, i32 2}
!80 = !{ptr @ths8200_log_status._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ths8200_log_status._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ths8200.c", i32 139, i32 34}
!84 = !{ptr @ths8200_video_ops, !85, !"ths8200_video_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ths8200.c", i32 421, i32 43}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ths8200.c", i32 182, i32 2}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ths8200_s_stream._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ths8200_s_stream._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ths8200.c", i32 366, i32 2}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ths8200_s_dv_timings._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ths8200_s_dv_timings._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ths8200.c", i32 374, i32 3}
!100 = !{ptr @ths8200_s_dv_timings._entry.41, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ths8200_s_dv_timings._entry_ptr.43, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @ths8200_timings_cap, !103, !"ths8200_timings_cap", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ths8200.c", i32 48, i32 41}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ths8200.c", i32 354, i32 2}
!106 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ths8200_setup._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @ths8200_setup._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ths8200.c", i32 393, i32 2}
!111 = !{ptr @ths8200_g_dv_timings._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ths8200_g_dv_timings._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @ths8200_pad_ops, !114, !"ths8200_pad_ops", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ths8200.c", i32 427, i32 41}
!115 = !{ptr @ths8200_of_match, !116, !"ths8200_of_match", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ths8200.c", i32 492, i32 34}
!117 = !{ptr @ths8200_id, !118, !"ths8200_id", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ths8200.c", i32 485, i32 35}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i8 0, i8 2}
