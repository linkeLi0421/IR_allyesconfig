; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ths7303.c_pt.bc'
source_filename = "../drivers/media/i2c/ths7303.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ths7303_state = type { %struct.v4l2_subdev, ptr, %struct.v4l2_bt_timings, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.ths7303_platform_data = type { i8, i8, i8 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.91 }
%union.anon.91 = type { i32, [28 x i8] }
%struct.v4l2_dv_timings = type { i32, %union.anon.92 }
%union.anon.92 = type { [32 x i32] }

@__UNIQUE_ID_description292 = internal constant [54 x i8] c"ths7303.description=TI THS7303 video amplifier driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [30 x i8] c"ths7303.author=Chaithrika U S\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"ths7303.file=drivers/media/i2c/ths7303\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"ths7303.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ths7303__296_387_ths7303_driver_init6 = internal global ptr @ths7303_driver_init, section ".initcall6.init", align 4
@ths7303_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ths7303_probe, ptr @ths7303_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ths7303_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ths7303_driver_exit = internal global ptr @ths7303_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ths73x3\00", [24 x i8] zeroinitializer }, align 32
@ths7303_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ths7303\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ths7353\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ths7303_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ths7303_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/ths7303.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ths7303_probe._entry_ptr = internal global ptr @ths7303_probe._entry, section ".printk_index", align 4
@ths7303_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@ths7303_probe._entry_ptr.8 = internal global ptr @ths7303_probe._entry.6, section ".printk_index", align 4
@ths7303_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ths7303_core_ops, ptr null, ptr null, ptr @ths7303_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ths7303_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s %d-%04x: Setting to 480I_576I filter mode failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@ths7303_probe._entry_ptr.11 = internal global ptr @ths7303_probe._entry.9, section ".printk_index", align 4
@ths7303_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @ths7303_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ths7303_g_register, ptr @ths7303_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ths7303_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr @ths7303_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ths7303_s_stream, ptr null, ptr null, ptr null, ptr @ths7303_s_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ths7303_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: stream %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ths7303_log_status\00", [45 x i8] zeroinitializer }, align 32
@ths7303_log_status._entry_ptr = internal global ptr @ths7303_log_status._entry, section ".printk_index", align 4
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@ths7303_log_status._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016%s: timings: %dx%d%s%d (%dx%d). Pix freq. = %d Hz. Polarities = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@ths7303_log_status._entry_ptr.18 = internal global ptr @ths7303_log_status._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"p\00", [30 x i8] zeroinitializer }, align 32
@ths7303_log_status._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.3, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: no timings set\0A\00", [42 x i8] zeroinitializer }, align 32
@ths7303_log_status._entry_ptr.23 = internal global ptr @ths7303_log_status._entry.21, section ".printk_index", align 4
@ths7303_log_channel_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: Channel %d Off\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ths7303_log_channel_status\00", [37 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry_ptr = internal global ptr @ths7303_log_channel_status._entry, section ".printk_index", align 4
@ths7303_log_channel_status._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: Channel %d On\0A\00", [43 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry_ptr.28 = internal global ptr @ths7303_log_channel_status._entry.26, section ".printk_index", align 4
@ths7303_log_channel_status._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s:   value 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry_ptr.31 = internal global ptr @ths7303_log_channel_status._entry.29, section ".printk_index", align 4
@ths7303_log_channel_status._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016%s:   %s\0A\00", [20 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry_ptr.34 = internal global ptr @ths7303_log_channel_status._entry.32, section ".printk_index", align 4
@stc_lpf_sel_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry_ptr.36 = internal global ptr @ths7303_log_channel_status._entry.35, section ".printk_index", align 4
@in_mux_sel_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.44, ptr @.str.45], [24 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry_ptr.38 = internal global ptr @ths7303_log_channel_status._entry.37, section ".printk_index", align 4
@lpf_freq_sel_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ths7303_log_channel_status._entry_ptr.40 = internal global ptr @ths7303_log_channel_status._entry.39, section ".printk_index", align 4
@in_bias_sel_dis_cont_txt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"500-kHz Filter\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"2.5-MHz Filter\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"5-MHz Filter\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Input A Select\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Input B Select\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"9-MHz LPF\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"16-MHz LPF\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"35-MHz LPF\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Bypass LPF\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Disable Channel\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mute Function - No Output\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DC Bias Select\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DC Bias + 250 mV Offset Select\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AC Bias Select\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sync Tip Clamp with low bias\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sync Tip Clamp with mid bias\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sync Tip Clamp with high bias\00", [34 x i8] zeroinitializer }, align 32
@ths7303_setval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016write byte data failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ths7303_setval\00", [17 x i8] zeroinitializer }, align 32
@ths7303_setval._entry_ptr = internal global ptr @ths7303_setval._entry, section ".printk_index", align 4
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"ths7303_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 378, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 380, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"ths7303_id\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 370, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 333, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 340, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"ths7303_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 320, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 354, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"ths7303_core_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 312, i32 42 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"ths7303_video_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 210, i32 43 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 285, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 293, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 302, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 269, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 273, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 274, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 275, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"stc_lpf_sel_txt\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 234, i32 27 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 276, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [15 x i8] c"in_mux_sel_txt\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 241, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 277, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"lpf_freq_sel_txt\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 246, i32 27 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 278, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [25 x i8] c"in_bias_sel_dis_cont_txt\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 253, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 235, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 236, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 237, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 242, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 243, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 247, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 248, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 249, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 250, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 254, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 255, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 256, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 257, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 258, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 259, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 260, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 261, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [31 x i8] c"../drivers/media/i2c/ths7303.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 135, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ths7303_driver_exit, ptr @__initcall__kmod_ths7303__296_387_ths7303_driver_init6, ptr @ths7303_driver_exit, ptr @ths7303_log_channel_status._entry, ptr @ths7303_log_channel_status._entry.26, ptr @ths7303_log_channel_status._entry.29, ptr @ths7303_log_channel_status._entry.32, ptr @ths7303_log_channel_status._entry.35, ptr @ths7303_log_channel_status._entry.37, ptr @ths7303_log_channel_status._entry.39, ptr @ths7303_log_channel_status._entry_ptr, ptr @ths7303_log_channel_status._entry_ptr.28, ptr @ths7303_log_channel_status._entry_ptr.31, ptr @ths7303_log_channel_status._entry_ptr.34, ptr @ths7303_log_channel_status._entry_ptr.36, ptr @ths7303_log_channel_status._entry_ptr.38, ptr @ths7303_log_channel_status._entry_ptr.40, ptr @ths7303_log_status._entry, ptr @ths7303_log_status._entry.16, ptr @ths7303_log_status._entry.21, ptr @ths7303_log_status._entry_ptr, ptr @ths7303_log_status._entry_ptr.18, ptr @ths7303_log_status._entry_ptr.23, ptr @ths7303_probe._entry, ptr @ths7303_probe._entry.6, ptr @ths7303_probe._entry.9, ptr @ths7303_probe._entry_ptr, ptr @ths7303_probe._entry_ptr.11, ptr @ths7303_probe._entry_ptr.8, ptr @ths7303_setval._entry, ptr @ths7303_setval._entry_ptr, ptr @ths7303_driver, ptr @.str, ptr @ths7303_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ths7303_ops, ptr @.str.10, ptr @ths7303_core_ops, ptr @ths7303_video_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @stc_lpf_sel_txt, ptr @in_mux_sel_txt, ptr @lpf_freq_sel_txt, ptr @in_bias_sel_dis_cont_txt, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_status._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_status._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_channel_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_channel_status._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_channel_status._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_channel_status._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stc_lpf_sel_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_channel_status._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_mux_sel_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_channel_status._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpf_freq_sel_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_log_channel_status._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_bias_sel_dis_cont_txt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths7303_setval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ths7303_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ths7303_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @ths7303_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #4
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end6:                                          ; preds = %if.end
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr, align 2
  %conv = zext i16 %17 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name13 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %11, i32 noundef %15, i32 noundef %conv, i32 noundef %shl, ptr noundef %name13) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 332, i32 noundef 3520) #4
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end6.cleanup_crit_edge, label %if.end19

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %do.end6
  %pdata20 = getelementptr inbounds %struct.ths7303_state, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %pdata20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %pdata20, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ths7303_ops) #4
  %call22 = tail call fastcc i32 @ths7303_setval(ptr noundef nonnull %call.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end28, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %nr.i57 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %nr.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr.i57, align 4
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr, align 2
  %conv36 = zext i16 %28 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %22, i32 noundef %26, i32 noundef %conv36) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end19.cleanup_crit_edge, %do.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end28 ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %do.end6.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ths7303_setval(ptr nocapture noundef readonly %sd, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pdata2 = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 1
  %2 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %switch = icmp ult i32 %mode, 4
  br i1 %switch, label %if.then10, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %shl106 = shl nuw nsw i32 %mode, 6
  %shl7107 = shl nuw nsw i32 %mode, 3
  %or108 = or i32 %shl106, %shl7107
  %conv8109 = trunc i32 %or108 to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 39
  %conv14 = or i8 %6, %conv8109
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %conv8112 = phi i8 [ %conv8109, %if.then10 ], [ 0, %if.end.if.end15_crit_edge ]
  %val.0 = phi i8 [ %conv14, %if.then10 ], [ 0, %if.end.if.end15_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext %val.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end15.if.end19_crit_edge, label %for.cond.i

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

for.cond.i:                                       ; preds = %if.end15
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext %val.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.if.end19_crit_edge, label %ths7303_write.exit

for.cond.i.if.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

ths7303_write.exit:                               ; preds = %for.cond.i
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext %val.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %tobool17.not = icmp eq i32 %call1.2.i, 0
  br i1 %tobool17.not, label %ths7303_write.exit.if.end19_crit_edge, label %ths7303_write.exit.do.end_crit_edge

ths7303_write.exit.do.end_crit_edge:              ; preds = %ths7303_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

ths7303_write.exit.if.end19_crit_edge:            ; preds = %ths7303_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end19:                                         ; preds = %ths7303_write.exit.if.end19_crit_edge, %for.cond.i.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  br i1 %switch, label %if.then27, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %ch_2 = getelementptr inbounds %struct.ths7303_platform_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %ch_2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ch_2, align 1
  %9 = and i8 %8, 39
  %conv32 = or i8 %9, %conv8112
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end19.if.end33_crit_edge
  %val.1 = phi i8 [ %conv8112, %if.end19.if.end33_crit_edge ], [ %conv32, %if.then27 ]
  %10 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i, align 4
  %call1.i85 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %val.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %cmp2.i86 = icmp eq i32 %call1.i85, 0
  br i1 %cmp2.i86, label %if.end33.if.end37_crit_edge, label %for.cond.i89

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

for.cond.i89:                                     ; preds = %if.end33
  %call1.1.i87 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %val.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i87)
  %cmp2.1.i88 = icmp eq i32 %call1.1.i87, 0
  br i1 %cmp2.1.i88, label %for.cond.i89.if.end37_crit_edge, label %ths7303_write.exit93

for.cond.i89.if.end37_crit_edge:                  ; preds = %for.cond.i89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

ths7303_write.exit93:                             ; preds = %for.cond.i89
  %call1.2.i90 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %val.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i90)
  %tobool35.not = icmp eq i32 %call1.2.i90, 0
  br i1 %tobool35.not, label %ths7303_write.exit93.if.end37_crit_edge, label %ths7303_write.exit93.do.end_crit_edge

ths7303_write.exit93.do.end_crit_edge:            ; preds = %ths7303_write.exit93
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

ths7303_write.exit93.if.end37_crit_edge:          ; preds = %ths7303_write.exit93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.end37:                                         ; preds = %ths7303_write.exit93.if.end37_crit_edge, %for.cond.i89.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  br i1 %switch, label %if.then45, label %if.end37.if.end51_crit_edge

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %ch_3 = getelementptr inbounds %struct.ths7303_platform_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %ch_3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ch_3, align 1
  %14 = and i8 %13, 39
  %conv50 = or i8 %14, %conv8112
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.end37.if.end51_crit_edge
  %val.2 = phi i8 [ %conv8112, %if.end37.if.end51_crit_edge ], [ %conv50, %if.then45 ]
  %15 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i, align 4
  %call1.i95 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 3, i8 noundef zeroext %val.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %cmp2.i96 = icmp eq i32 %call1.i95, 0
  br i1 %cmp2.i96, label %if.end51.cleanup_crit_edge, label %for.cond.i99

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.i99:                                     ; preds = %if.end51
  %call1.1.i97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 3, i8 noundef zeroext %val.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i97)
  %cmp2.1.i98 = icmp eq i32 %call1.1.i97, 0
  br i1 %cmp2.1.i98, label %for.cond.i99.cleanup_crit_edge, label %ths7303_write.exit103

for.cond.i99.cleanup_crit_edge:                   ; preds = %for.cond.i99
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ths7303_write.exit103:                            ; preds = %for.cond.i99
  %call1.2.i100 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 3, i8 noundef zeroext %val.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i100)
  %tobool53.not = icmp eq i32 %call1.2.i100, 0
  br i1 %tobool53.not, label %ths7303_write.exit103.cleanup_crit_edge, label %ths7303_write.exit103.do.end_crit_edge

ths7303_write.exit103.do.end_crit_edge:           ; preds = %ths7303_write.exit103
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

ths7303_write.exit103.cleanup_crit_edge:          ; preds = %ths7303_write.exit103
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %ths7303_write.exit103.do.end_crit_edge, %ths7303_write.exit93.do.end_crit_edge, %ths7303_write.exit.do.end_crit_edge
  %err.0 = phi i32 [ %call1.2.i, %ths7303_write.exit.do.end_crit_edge ], [ %call1.2.i90, %ths7303_write.exit93.do.end_crit_edge ], [ %call1.2.i100, %ths7303_write.exit103.do.end_crit_edge ]
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ths7303_write.exit103.cleanup_crit_edge, %for.cond.i99.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %ths7303_write.exit103.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %for.cond.i99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %stream_on = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %stream_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.15, ptr @.str.14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull %cond) #7
  %pixelclock = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %pixelclock, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %do.end31, label %if.then

if.then:                                          ; preds = %entry
  %bt = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %bt to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %bt, align 1
  %hfrontporch = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %hfrontporch, align 1
  %hsync = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %hsync to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %hsync, align 1
  %hbackporch = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 7
  %10 = ptrtoint ptr %hbackporch to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %hbackporch, align 1
  %add = add i32 %7, %5
  %add5 = add i32 %add, %9
  %add6 = add i32 %add5, %11
  %height = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %height, align 1
  %vfrontporch = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %vfrontporch, align 1
  %vsync = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 9
  %16 = ptrtoint ptr %vsync to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %vsync, align 1
  %vbackporch = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 10
  %18 = ptrtoint ptr %vbackporch to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %vbackporch, align 1
  %il_vfrontporch = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 11
  %20 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 12
  %22 = ptrtoint ptr %il_vsync to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %il_vsync, align 1
  %il_vbackporch = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 13
  %24 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %il_vbackporch, align 1
  %add7 = add i32 %15, %13
  %add8 = add i32 %add7, %17
  %add9 = add i32 %add8, %19
  %add10 = add i32 %add9, %21
  %add11 = add i32 %add10, %23
  %add12 = add i32 %add11, %25
  %interlaced = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %interlaced to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %interlaced, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool21.not = icmp eq i32 %27, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.20, ptr @.str.19
  %mul = mul i32 %add12, %add6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not = icmp eq i32 %mul, 0
  %.pre = trunc i64 %3 to i32
  br i1 %cmp.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %div = udiv i32 %.pre, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond25 = phi i32 [ %div, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %polarities = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %polarities to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %polarities, align 1
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %5, i32 noundef %13, ptr noundef nonnull %cond22, i32 noundef %cond25, i32 noundef %add6, i32 noundef %add12, i32 noundef %.pre, i32 noundef %29) #7
  br label %if.end

do.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name) #7
  br label %if.end

if.end:                                           ; preds = %do.end31, %cond.end
  tail call fastcc void @ths7303_log_channel_status(ptr noundef %sd, i8 noundef zeroext 1)
  tail call fastcc void @ths7303_log_channel_status(ptr noundef %sd, i8 noundef zeroext 2)
  tail call fastcc void @ths7303_log_channel_status(ptr noundef %sd, i8 noundef zeroext 3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1, ptr %size, align 1
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %1 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %2 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext %conv) #4
  %conv2 = sext i32 %call1.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %conv2, ptr %val, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %conv2 = trunc i64 %3 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %entry.ths7303_write.exit_crit_edge, label %for.cond.i

entry.ths7303_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ths7303_write.exit

for.cond.i:                                       ; preds = %entry
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ths7303_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.ths7303_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ths7303_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv2) #4
  br label %ths7303_write.exit

ths7303_write.exit:                               ; preds = %for.cond.1.i, %for.cond.i.ths7303_write.exit_crit_edge, %entry.ths7303_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ths7303_log_channel_status(ptr noundef %sd, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %reg) #4
  %and = and i32 %call1.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv3 = zext i8 %reg to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %conv3) #7
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv1 = and i32 %call1.i, 255
  %name9 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %conv11 = zext i8 %reg to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name9, i32 noundef %conv11) #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name9, i32 noundef %conv1) #7
  %2 = lshr i32 %call1.i, 6
  %and28 = and i32 %2, 3
  %arrayidx = getelementptr [4 x ptr], ptr @stc_lpf_sel_txt, i32 0, i32 %and28
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name9, ptr noundef %4) #7
  %5 = lshr i32 %call1.i, 5
  %and38 = and i32 %5, 1
  %arrayidx39 = getelementptr [2 x ptr], ptr @in_mux_sel_txt, i32 0, i32 %and38
  %6 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx39, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name9, ptr noundef %7) #7
  %8 = lshr i32 %call1.i, 3
  %and49 = and i32 %8, 3
  %arrayidx50 = getelementptr [4 x ptr], ptr @lpf_freq_sel_txt, i32 0, i32 %and49
  %9 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx50, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name9, ptr noundef %10) #7
  %arrayidx61 = getelementptr [8 x ptr], ptr @in_bias_sel_dis_cont_txt, i32 0, i32 %and
  %11 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name9, ptr noundef %12) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_s_std_output(ptr nocapture noundef %sd, i64 noundef %norm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %norm, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %std_id = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %std_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %std_id, align 4
  %pixelclock = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 4
  %1 = ptrtoint ptr %pixelclock to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %pixelclock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 0, %if.then ], [ 4, %entry.cleanup_crit_edge ]
  %call2 = tail call fastcc i32 @ths7303_setval(ptr noundef %sd, i32 noundef %.sink)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_s_stream(ptr nocapture noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_on = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %stream_on to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %enable, ptr %stream_on, align 4
  %call1 = tail call fastcc i32 @ths7303_config(ptr noundef %sd)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ths7303_s_dv_timings(ptr nocapture noundef %sd, ptr noundef readonly %dv_timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dv_timings, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %dv_timings to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %dv_timings, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %bt = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %dv_timings, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %bt, ptr %2, i32 124)
  %std_id = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 3
  %4 = ptrtoint ptr %std_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %std_id, align 4
  %call1 = tail call fastcc i32 @ths7303_config(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ths7303_config(ptr nocapture noundef readonly %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_on = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %stream_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #4
  %4 = trunc i32 %call1.i to i8
  %conv = and i8 %4, -8
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i56 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %cmp2.i = icmp eq i32 %call1.i56, 0
  br i1 %cmp2.i, label %if.then.ths7303_write.exit_crit_edge, label %for.cond.i

if.then.ths7303_write.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %ths7303_write.exit

for.cond.i:                                       ; preds = %if.then
  %call1.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.ths7303_write.exit_crit_edge, label %for.cond.1.i

for.cond.i.ths7303_write.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ths7303_write.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %conv) #4
  br label %ths7303_write.exit

ths7303_write.exit:                               ; preds = %for.cond.1.i, %for.cond.i.ths7303_write.exit_crit_edge, %if.then.ths7303_write.exit_crit_edge
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i58 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 2) #4
  %9 = trunc i32 %call1.i58 to i8
  %conv6 = and i8 %9, -8
  %10 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %conv6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %cmp2.i61 = icmp eq i32 %call1.i60, 0
  br i1 %cmp2.i61, label %ths7303_write.exit.ths7303_write.exit68_crit_edge, label %for.cond.i64

ths7303_write.exit.ths7303_write.exit68_crit_edge: ; preds = %ths7303_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ths7303_write.exit68

for.cond.i64:                                     ; preds = %ths7303_write.exit
  %call1.1.i62 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %conv6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i62)
  %cmp2.1.i63 = icmp eq i32 %call1.1.i62, 0
  br i1 %cmp2.1.i63, label %for.cond.i64.ths7303_write.exit68_crit_edge, label %for.cond.1.i66

for.cond.i64.ths7303_write.exit68_crit_edge:      ; preds = %for.cond.i64
  call void @__sanitizer_cov_trace_pc() #6
  br label %ths7303_write.exit68

for.cond.1.i66:                                   ; preds = %for.cond.i64
  call void @__sanitizer_cov_trace_pc() #6
  %call1.2.i65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext %conv6) #4
  br label %ths7303_write.exit68

ths7303_write.exit68:                             ; preds = %for.cond.1.i66, %for.cond.i64.ths7303_write.exit68_crit_edge, %ths7303_write.exit.ths7303_write.exit68_crit_edge
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i70 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 3) #4
  %14 = trunc i32 %call1.i70 to i8
  %conv11 = and i8 %14, -8
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i72 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 3, i8 noundef zeroext %conv11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %cmp2.i73 = icmp eq i32 %call1.i72, 0
  br i1 %cmp2.i73, label %ths7303_write.exit68.cleanup_crit_edge, label %for.cond.i76

ths7303_write.exit68.cleanup_crit_edge:           ; preds = %ths7303_write.exit68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.i76:                                     ; preds = %ths7303_write.exit68
  %call1.1.i74 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 3, i8 noundef zeroext %conv11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i74)
  %cmp2.1.i75 = icmp eq i32 %call1.1.i74, 0
  br i1 %cmp2.1.i75, label %for.cond.i76.cleanup_crit_edge, label %for.cond.1.i78

for.cond.i76.cleanup_crit_edge:                   ; preds = %for.cond.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.1.i78:                                   ; preds = %for.cond.i76
  call void @__sanitizer_cov_trace_pc() #6
  %call1.2.i77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 3, i8 noundef zeroext %conv11) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixelclock = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %pixelclock, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 120000000, i64 %18)
  %cmp = icmp ugt i64 %18, 120000000
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call fastcc i32 @ths7303_setval(ptr noundef %sd, i32 noundef 3)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 70000000, i64 %18)
  %cmp18 = icmp ugt i64 %18, 70000000
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call fastcc i32 @ths7303_setval(ptr noundef %sd, i32 noundef 2)
  br label %cleanup

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 20000000, i64 %18)
  %cmp25 = icmp ugt i64 %18, 20000000
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call fastcc i32 @ths7303_setval(ptr noundef %sd, i32 noundef 1)
  br label %cleanup

if.else29:                                        ; preds = %if.else22
  %std_id = getelementptr inbounds %struct.ths7303_state, ptr %sd, i32 0, i32 3
  %19 = ptrtoint ptr %std_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %std_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp eq i32 %20, 0
  br i1 %tobool30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call fastcc i32 @ths7303_setval(ptr noundef %sd, i32 noundef 0)
  br label %cleanup

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call fastcc i32 @ths7303_setval(ptr noundef %sd, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.else33, %if.then31, %if.then27, %if.then20, %if.then14, %for.cond.1.i78, %for.cond.i76.cleanup_crit_edge, %ths7303_write.exit68.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then14 ], [ %call21, %if.then20 ], [ %call28, %if.then27 ], [ %call32, %if.then31 ], [ %call34, %if.else33 ], [ 0, %ths7303_write.exit68.cleanup_crit_edge ], [ 0, %for.cond.i76.cleanup_crit_edge ], [ 0, %for.cond.1.i78 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ths7303.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/ths7303.c", i32 52, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/ths7303.c", i32 53, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ths7303__296_387_ths7303_driver_init6, !8, !"__initcall__kmod_ths7303__296_387_ths7303_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ths7303.c", i32 387, i32 1}
!9 = !{ptr @__exitcall_ths7303_driver_exit, !8, !"__exitcall_ths7303_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ths7303.c", i32 380, i32 11}
!12 = !{ptr @ths7303_driver, !13, !"ths7303_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ths7303.c", i32 378, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ths7303.c", i32 333, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ths7303_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ths7303_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ths7303.c", i32 340, i32 2}
!24 = !{ptr @ths7303_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ths7303_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ths7303.c", i32 354, i32 3}
!28 = !{ptr @ths7303_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ths7303_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ths7303_ops, !31, !"ths7303_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ths7303.c", i32 320, i32 37}
!32 = !{ptr @ths7303_core_ops, !33, !"ths7303_core_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ths7303.c", i32 312, i32 42}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ths7303.c", i32 285, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ths7303_log_status._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ths7303_log_status._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ths7303.c", i32 293, i32 3}
!43 = !{ptr @ths7303_log_status._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ths7303_log_status._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/ths7303.c", i32 302, i32 3}
!49 = !{ptr @ths7303_log_status._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ths7303_log_status._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ths7303.c", i32 269, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ths7303_log_channel_status._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ths7303_log_channel_status._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ths7303.c", i32 273, i32 2}
!58 = !{ptr @ths7303_log_channel_status._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ths7303_log_channel_status._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ths7303.c", i32 274, i32 2}
!62 = !{ptr @ths7303_log_channel_status._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ths7303_log_channel_status._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ths7303.c", i32 275, i32 2}
!66 = !{ptr @ths7303_log_channel_status._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ths7303_log_channel_status._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @ths7303_log_channel_status._entry.35, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ths7303.c", i32 276, i32 2}
!70 = !{ptr @ths7303_log_channel_status._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ths7303_log_channel_status._entry.37, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/ths7303.c", i32 277, i32 2}
!73 = !{ptr @ths7303_log_channel_status._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ths7303_log_channel_status._entry.39, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ths7303.c", i32 278, i32 2}
!76 = !{ptr @ths7303_log_channel_status._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ths7303.c", i32 235, i32 2}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ths7303.c", i32 236, i32 2}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ths7303.c", i32 237, i32 2}
!83 = !{ptr @stc_lpf_sel_txt, !84, !"stc_lpf_sel_txt", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/ths7303.c", i32 234, i32 27}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/ths7303.c", i32 242, i32 2}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/ths7303.c", i32 243, i32 2}
!89 = !{ptr @in_mux_sel_txt, !90, !"in_mux_sel_txt", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/ths7303.c", i32 241, i32 27}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/ths7303.c", i32 247, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ths7303.c", i32 248, i32 2}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/ths7303.c", i32 249, i32 2}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ths7303.c", i32 250, i32 2}
!99 = !{ptr @lpf_freq_sel_txt, !100, !"lpf_freq_sel_txt", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ths7303.c", i32 246, i32 27}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/ths7303.c", i32 254, i32 2}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/ths7303.c", i32 255, i32 2}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ths7303.c", i32 256, i32 2}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/ths7303.c", i32 257, i32 2}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ths7303.c", i32 258, i32 2}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ths7303.c", i32 259, i32 2}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ths7303.c", i32 260, i32 2}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ths7303.c", i32 261, i32 2}
!117 = !{ptr @in_bias_sel_dis_cont_txt, !118, !"in_bias_sel_dis_cont_txt", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ths7303.c", i32 253, i32 27}
!119 = !{ptr @ths7303_video_ops, !120, !"ths7303_video_ops", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ths7303.c", i32 210, i32 43}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ths7303.c", i32 135, i32 2}
!123 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ths7303_setval._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @ths7303_setval._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @ths7303_id, !127, !"ths7303_id", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ths7303.c", i32 370, i32 35}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
