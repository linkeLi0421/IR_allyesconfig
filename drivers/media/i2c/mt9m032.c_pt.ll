; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/mt9m032.c_pt.bc'
source_filename = "../drivers/media/i2c/mt9m032.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aptina_pll_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt9m032 = type { %struct.v4l2_subdev, %struct.media_pad, ptr, i32, %struct.v4l2_ctrl_handler, %struct.anon.100, %struct.mutex, i8, %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.mt9m032_platform_data = type { i32, i32, i8 }
%struct.aptina_pll = type { i32, i32, i32, i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_mt9m032__317_889_mt9m032_i2c_driver_init6 = internal global ptr @mt9m032_i2c_driver_init, section ".initcall6.init", align 4
@mt9m032_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mt9m032_probe, ptr @mt9m032_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt9m032_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt9m032_i2c_driver_exit = internal global ptr @mt9m032_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author318 = internal constant [65 x i8] c"mt9m032.author=Martin Hostettler <martin@neutronstar.dyndns.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description319 = internal constant [49 x i8] c"mt9m032.description=MT9M032 camera sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [39 x i8] c"mt9m032.file=drivers/media/i2c/mt9m032\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [23 x i8] c"mt9m032.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9m032\00", [24 x i8] zeroinitializer }, align 32
@mt9m032_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt9m032\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt9m032_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 714, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9m032_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/mt9m032.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt9m032_probe._entry_ptr = internal global ptr @mt9m032_probe._entry, section ".printk_index", align 4
@mt9m032_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 720, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt9m032_probe._entry_ptr.9 = internal global ptr @mt9m032_probe._entry.6, section ".printk_index", align 4
@mt9m032_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sensor->lock\00", [18 x i8] zeroinitializer }, align 32
@mt9m032_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @mt9m032_core_ops, ptr null, ptr null, ptr @mt9m032_video_ops, ptr null, ptr null, ptr null, ptr @mt9m032_pad_ops }, [32 x i8] zeroinitializer }, align 32
@mt9m032_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MT9M032 not detected, wrong version 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@mt9m032_probe._entry_ptr.13 = internal global ptr @mt9m032_probe._entry.11, section ".printk_index", align 4
@mt9m032_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 747, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MT9M032 detected at address 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt9m032_probe._entry_ptr.17 = internal global ptr @mt9m032_probe._entry.14, section ".printk_index", align 4
@mt9m032_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mt9m032:763:(&sensor->ctrls)->_lock\00", [60 x i8] zeroinitializer }, align 32
@mt9m032_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @mt9m032_try_ctrl, ptr @mt9m032_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9m032_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 785, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"control initialization error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mt9m032_probe._entry_ptr.21 = internal global ptr @mt9m032_probe._entry.19, section ".printk_index", align 4
@mt9m032_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m032_g_register, ptr @mt9m032_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9m032_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt9m032_s_stream, ptr null, ptr @mt9m032_get_frame_interval, ptr @mt9m032_set_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mt9m032_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @mt9m032_enum_mbus_code, ptr @mt9m032_enum_frame_size, ptr null, ptr @mt9m032_get_pad_format, ptr @mt9m032_set_pad_format, ptr @mt9m032_get_pad_selection, ptr @mt9m032_set_pad_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mt9m032_row_time.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt9m032_row_time\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MT9M032 line time: %u ns\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mt9m032_setup_pll.limits = internal constant { %struct.aptina_pll_limits, [44 x i8] } { %struct.aptina_pll_limits { i32 8000000, i32 16500000, i32 2000000, i32 24000000, i32 322000000, i32 693000000, i32 99000000, i32 1, i32 64, i32 16, i32 255, i32 6, i32 7 }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 9963793, i64 9963795, i64 9963796]
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"mt9m032_i2c_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 880, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 882, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"mt9m032_id_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 873, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 714, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 719, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 731, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"mt9m032_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 694, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 740, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 746, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 763, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"mt9m032_ctrl_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 665, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 785, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"mt9m032_core_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 672, i32 42 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"mt9m032_video_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 679, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"mt9m032_pad_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 685, i32 41 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 175, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 998, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@___asan_gen_.124 = private constant [31 x i8] c"../drivers/media/i2c/mt9m032.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 251, i32 40 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__exitcall_mt9m032_i2c_driver_exit, ptr @__initcall__kmod_mt9m032__317_889_mt9m032_i2c_driver_init6, ptr @mt9m032_i2c_driver_exit, ptr @mt9m032_probe._entry, ptr @mt9m032_probe._entry.11, ptr @mt9m032_probe._entry.14, ptr @mt9m032_probe._entry.19, ptr @mt9m032_probe._entry.6, ptr @mt9m032_probe._entry_ptr, ptr @mt9m032_probe._entry_ptr.13, ptr @mt9m032_probe._entry_ptr.17, ptr @mt9m032_probe._entry_ptr.21, ptr @mt9m032_probe._entry_ptr.9, ptr @mt9m032_i2c_driver, ptr @.str, ptr @mt9m032_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @mt9m032_probe.__key, ptr @.str.10, ptr @mt9m032_ops, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @mt9m032_probe._key, ptr @.str.18, ptr @mt9m032_ctrl_ops, ptr @.str.20, ptr @mt9m032_core_ops, ptr @mt9m032_video_ops, ptr @mt9m032_pad_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mt9m032_setup_pll.limits], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m032_setup_pll.limits to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt9m032_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt9m032_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mt9m032_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_probe(ptr noundef %client, ptr nocapture noundef readnone %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #7
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 8
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 596, i32 noundef 3520) #7
  %cmp16 = icmp eq ptr %call.i, null
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %do.body19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body19:                                        ; preds = %if.end13
  %lock = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mt9m032_probe.__key) #7
  %pdata22 = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %pdata22, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @mt9m032_ops) #7
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or = or i32 %12, 4
  store i32 %or, ptr %flags, align 4
  %call.i.i251 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i251)
  %cmp.i.i = icmp slt i32 %call.i.i251, 0
  %conv.i.i = trunc i32 %call.i.i251 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %conv1.i.i = zext i16 %13 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i251, i32 %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5122, i32 %cond.i.i)
  %cmp25.not = icmp eq i32 %cond.i.i, 5122
  br i1 %cmp25.not, label %do.end34, label %do.end29

do.end29:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %cond.i.i) #10
  br label %error_sensor

do.end34:                                         ; preds = %do.body19
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv) #10
  %frame_interval = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %frame_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %frame_interval, align 4
  %denominator = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 30, ptr %denominator, align 4
  %crop = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %crop, align 4
  %top = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 60, ptr %top, align 4
  %width = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1440, ptr %width, align 4
  %height = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1080, ptr %height, align 4
  %format = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1440, ptr %format, align 4
  %height46 = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %height46 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1080, ptr %height46, align 4
  %code = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 8, i32 2
  %24 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8193, ptr %code, align 4
  %field = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 8, i32 3
  %25 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 8, i32 4
  %26 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %colorspace, align 4
  %ctrls = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 4
  %call50 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 5, ptr noundef nonnull @mt9m032_probe._key, ptr noundef nonnull @.str.18) #7
  %call52 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9m032_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #7
  %call54 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9m032_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %27 = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call54, ptr %27, align 4
  %call56 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9m032_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call56, ptr %vflip, align 4
  %call58 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9m032_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 1048575, i64 noundef 1, i64 noundef 1943) #7
  %pix_clock = getelementptr inbounds %struct.mt9m032_platform_data, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %pix_clock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pix_clock, align 4
  %conv60 = zext i32 %31 to i64
  %call65 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @mt9m032_ctrl_ops, i32 noundef 10422530, i64 noundef %conv60, i64 noundef %conv60, i64 noundef 1, i64 noundef %conv60) #7
  %error = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool67.not = icmp eq i32 %33, 0
  br i1 %tobool67.not, label %if.end75, label %if.then68

if.then68:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %33) #10
  br label %error_ctrl

if.end75:                                         ; preds = %do.end34
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %27) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 1
  %flags80 = getelementptr inbounds %struct.mt9m032, ptr %call.i, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %flags80 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %flags80, align 4
  %call84 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end75.error_ctrl_crit_edge, label %if.end88

if.end75.error_ctrl_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end88:                                         ; preds = %if.end75
  %call.i.i252 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 13, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i252)
  %cmp90 = icmp slt i32 %call.i.i252, 0
  br i1 %cmp90, label %if.end88.error_ctrl_crit_edge, label %if.end93

if.end88.error_ctrl_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end93:                                         ; preds = %if.end88
  %call.i.i253 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 13, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i253)
  %cmp95 = icmp slt i32 %call.i.i253, 0
  br i1 %cmp95, label %if.end93.error_ctrl_crit_edge, label %if.end98

if.end93.error_ctrl_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end98:                                         ; preds = %if.end93
  %call99 = tail call fastcc i32 @mt9m032_setup_pll(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.end98.error_ctrl_crit_edge, label %if.end103

if.end98.error_ctrl_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end103:                                        ; preds = %if.end98
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %call105 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.end103.error_ctrl_crit_edge, label %if.end109

if.end103.error_ctrl_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end109:                                        ; preds = %if.end103
  %call110 = tail call fastcc i32 @mt9m032_update_geom_timing(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end109.error_ctrl_crit_edge, label %if.end114

if.end109.error_ctrl_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end114:                                        ; preds = %if.end109
  %call.i.i254 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 65, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i254)
  %cmp116 = icmp slt i32 %call.i.i254, 0
  br i1 %cmp116, label %if.end114.error_ctrl_crit_edge, label %if.end119

if.end114.error_ctrl_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end119:                                        ; preds = %if.end114
  %call.i.i255 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 66, i16 noundef zeroext 768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i255)
  %cmp121 = icmp slt i32 %call.i.i255, 0
  br i1 %cmp121, label %if.end119.error_ctrl_crit_edge, label %if.end124

if.end119.error_ctrl_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end124:                                        ; preds = %if.end119
  %call.i.i256 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 67, i16 noundef zeroext 768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256)
  %cmp126 = icmp slt i32 %call.i.i256, 0
  br i1 %cmp126, label %if.end124.error_ctrl_crit_edge, label %if.end129

if.end124.error_ctrl_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end129:                                        ; preds = %if.end124
  %call.i.i257 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 127, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i257)
  %cmp131 = icmp slt i32 %call.i.i257, 0
  br i1 %cmp131, label %if.end129.error_ctrl_crit_edge, label %if.end134

if.end129.error_ctrl_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end134:                                        ; preds = %if.end129
  %37 = ptrtoint ptr %pdata22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata22, align 4
  %invert_pixclock = getelementptr inbounds %struct.mt9m032_platform_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %invert_pixclock to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %invert_pixclock, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool136.not = icmp eq i8 %40, 0
  br i1 %tobool136.not, label %if.end134.if.end143_crit_edge, label %if.then137

if.end134.if.end143_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then137:                                       ; preds = %if.end134
  %call.i.i258 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 10, i16 noundef zeroext 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i258)
  %cmp139 = icmp slt i32 %call.i.i258, 0
  br i1 %cmp139, label %if.then137.error_ctrl_crit_edge, label %if.then137.if.end143_crit_edge

if.then137.if.end143_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then137.error_ctrl_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end143:                                        ; preds = %if.then137.if.end143_crit_edge, %if.end134.if.end143_crit_edge
  %call.i.i259 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 11, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i259)
  %cmp145 = icmp slt i32 %call.i.i259, 0
  br i1 %cmp145, label %if.end143.error_ctrl_crit_edge, label %if.end148

if.end143.error_ctrl_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end148:                                        ; preds = %if.end143
  tail call void @msleep(i32 noundef 100) #7
  %call.i.i260 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 11, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i260)
  %cmp150 = icmp slt i32 %call.i.i260, 0
  br i1 %cmp150, label %if.end148.error_ctrl_crit_edge, label %if.end153

if.end148.error_ctrl_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

if.end153:                                        ; preds = %if.end148
  tail call void @msleep(i32 noundef 100) #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %41 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %42, i8 noundef zeroext -97, i16 noundef zeroext 28688) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp155 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp155, label %if.end153.error_ctrl_crit_edge, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end153.error_ctrl_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ctrl

error_ctrl:                                       ; preds = %if.end153.error_ctrl_crit_edge, %if.end148.error_ctrl_crit_edge, %if.end143.error_ctrl_crit_edge, %if.then137.error_ctrl_crit_edge, %if.end129.error_ctrl_crit_edge, %if.end124.error_ctrl_crit_edge, %if.end119.error_ctrl_crit_edge, %if.end114.error_ctrl_crit_edge, %if.end109.error_ctrl_crit_edge, %if.end103.error_ctrl_crit_edge, %if.end98.error_ctrl_crit_edge, %if.end93.error_ctrl_crit_edge, %if.end88.error_ctrl_crit_edge, %if.end75.error_ctrl_crit_edge, %if.then68
  %ret.1 = phi i32 [ %33, %if.then68 ], [ %call84, %if.end75.error_ctrl_crit_edge ], [ %call.i.i252, %if.end88.error_ctrl_crit_edge ], [ %call.i.i253, %if.end93.error_ctrl_crit_edge ], [ %call99, %if.end98.error_ctrl_crit_edge ], [ %call105, %if.end103.error_ctrl_crit_edge ], [ %call110, %if.end109.error_ctrl_crit_edge ], [ %call.i.i254, %if.end114.error_ctrl_crit_edge ], [ %call.i.i255, %if.end119.error_ctrl_crit_edge ], [ %call.i.i256, %if.end124.error_ctrl_crit_edge ], [ %call.i.i257, %if.end129.error_ctrl_crit_edge ], [ %call.i.i258, %if.then137.error_ctrl_crit_edge ], [ %call.i.i259, %if.end143.error_ctrl_crit_edge ], [ %call.i.i260, %if.end148.error_ctrl_crit_edge ], [ %call.i.i.i, %if.end153.error_ctrl_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  br label %error_sensor

error_sensor:                                     ; preds = %error_ctrl, %do.end29
  %ret.2 = phi i32 [ -19, %do.end29 ], [ %ret.1, %error_ctrl ]
  tail call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %error_sensor, %if.end153.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.2, %error_sensor ], [ -5, %do.end6 ], [ -19, %if.end8.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ %call.i.i.i, %if.end153.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %ctrls = getelementptr inbounds %struct.mt9m032, ptr %1, i32 0, i32 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #7
  %lock = getelementptr inbounds %struct.mt9m032, ptr %1, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m032_setup_pll(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %pll = alloca %struct.aptina_pll, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pdata1 = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pll) #7
  %4 = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 1
  %5 = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 4
  %6 = getelementptr inbounds i8, ptr %pll, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 12)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pll, align 4
  %pix_clock = getelementptr inbounds %struct.mt9m032_platform_data, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %pix_clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pix_clock, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %4, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call4 = call i32 @aptina_pll_calculate(ptr noundef %dev, ptr noundef nonnull @mt9m032_setup_pll.limits, ptr noundef nonnull %pll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 3
  %15 = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 2
  %16 = ptrtoint ptr %pix_clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pix_clock, align 4
  %pix_clock6 = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 3
  %18 = ptrtoint ptr %pix_clock6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pix_clock6, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 4
  %shl = shl i32 %20, 8
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %15, align 4
  %sub = add i32 %22, 63
  %and = and i32 %sub, 63
  %or = or i32 %and, %shl
  %conv = trunc i32 %or to i16
  %23 = call i16 @llvm.bswap.i16(i16 %conv) #7
  %call.i.i = call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 17, i16 noundef zeroext %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i.i41 = call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 16, i16 noundef zeroext 21248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %tobool11.not = icmp eq i32 %call.i.i41, 0
  br i1 %tobool11.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call.i.i42 = call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 30, i16 noundef zeroext 1664) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %tobool15.not = icmp eq i32 %call.i.i42, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp17 = icmp eq i32 %25, 6
  %conv21 = select i1 %cmp17, i16 4382, i16 4126
  %26 = call i16 @llvm.bswap.i16(i16 %conv21) #7
  %call.i.i43 = call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -98, i16 noundef zeroext %26) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ %call.i.i42, %if.end14.cleanup_crit_edge ], [ %call.i.i43, %if.then16 ], [ %call.i.i41, %if.end10.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pll) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m032_update_geom_timing(ptr nocapture noundef %sensor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %crop = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 9
  %width = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, -1
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end:                                           ; preds = %entry
  %height = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %8 = trunc i32 %7 to i16
  %conv4 = add i16 %8, -1
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv4) #7
  %call.i.i34 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 3, i16 noundef zeroext %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool6.not = icmp eq i32 %call.i.i34, 0
  br i1 %tobool6.not, label %if.end11, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crop, align 4
  %conv9 = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv9) #7
  %call.i.i35 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool12.not = icmp eq i32 %call.i.i35, 0
  br i1 %tobool12.not, label %if.end17, label %if.end11.if.end21_crit_edge

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end17:                                         ; preds = %if.end11
  %top = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %top, align 4
  %conv15 = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv15) #7
  %call.i.i36 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool18.not = icmp eq i32 %call.i.i36, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call fastcc i32 @mt9m032_update_timing(ptr noundef %sensor, ptr noundef null)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge, %if.end11.if.end21_crit_edge, %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %ret.3 = phi i32 [ %call.i.i36, %if.end17.if.end21_crit_edge ], [ %call20, %if.then19 ], [ %call.i.i35, %if.end11.if.end21_crit_edge ], [ %call.i.i34, %if.end.if.end21_crit_edge ], [ %call.i.i, %entry.if.end21_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %1)
  %cmp = icmp ugt i64 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %conv = trunc i64 %1 to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = trunc i32 %call.i.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #7
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 2, ptr %size, align 1
  %conv8 = zext i16 %4 to i64
  %val9 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %6 = ptrtoint ptr %val9 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %conv8, ptr %val9, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %1)
  %cmp = icmp ugt i64 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %conv = trunc i64 %1 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv3) #7
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %conv, i16 noundef zeroext %6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_s_stream(ptr noundef %subdev, i32 noundef %streaming) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %streaming)
  %tobool = icmp ne i32 %streaming, 0
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %spec.select.i = select i1 %tobool, i16 12400, i16 4208
  %2 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i) #7
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext -97, i16 noundef zeroext %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %streaming3 = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 7
  %frombool = zext i1 %tobool to i8
  %3 = ptrtoint ptr %streaming3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %streaming3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_get_frame_interval(ptr noundef %subdev, ptr nocapture noundef writeonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = call ptr @memset(ptr %fi, i32 0, i32 48)
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %frame_interval = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 10
  %1 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %frame_interval, align 4
  %3 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_set_frame_interval(ptr noundef %subdev, ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 7
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %denominator, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %call = tail call fastcc i32 @mt9m032_update_timing(ptr noundef %subdev, ptr noundef %interval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.done_crit_edge

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %frame_interval = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 10
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %interval, align 4
  %7 = ptrtoint ptr %frame_interval to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %frame_interval, align 4
  br label %done

done:                                             ; preds = %if.then7, %if.end4.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ %call, %if.end4.done_crit_edge ], [ 0, %if.then7 ], [ -16, %entry.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m032_update_timing(ptr nocapture noundef %sensor, ptr noundef %interval) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %tobool.not = icmp eq ptr %interval, null
  %frame_interval = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 10
  %spec.select = select i1 %tobool.not, ptr %frame_interval, ptr %interval
  %width = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %add.i = add i32 %3, 716
  %conv.i = zext i32 %add.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000000
  %pix_clock.i = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 3
  %4 = ptrtoint ptr %pix_clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pix_clock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !76

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %5
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %mul.i) #11, !srcloc !77
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %6, 1
  %extract.t10.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t10.i, %if.else174.i.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt9m032_row_time.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt9m032_update_timing, %if.then.i)) #7
          to label %mt9m032_row_time.exit [label %if.then.i], !srcloc !78

if.then.i:                                        ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt9m032_row_time.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %dividend.addr.0.i.i.off0.i) #7
  br label %mt9m032_row_time.exit

mt9m032_row_time.exit:                            ; preds = %if.then.i, %div_u64.exit.i
  %9 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spec.select, align 4
  %conv = zext i32 %10 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %spec.select, i32 0, i32 1
  %11 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %denominator, align 4
  %mul5 = mul i32 %12, %dividend.addr.0.i.i.off0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !76

if.then168.i.i:                                   ; preds = %mt9m032_row_time.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul5
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %mt9m032_row_time.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul5, i64 %mul) #11, !srcloc !77
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  %extract.t217 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t217, %if.else174.i.i ]
  %height = getelementptr inbounds %struct.mt9m032, ptr %sensor, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %conv9 = sub i32 %dividend.addr.0.i.i.off0, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv9)
  %cmp = icmp ugt i32 %conv9, 2047
  br i1 %cmp, label %if.then11, label %div_u64.exit.if.end36_crit_edge

div_u64.exit.if.end36_crit_edge:                  ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then11:                                        ; preds = %div_u64.exit
  %conv3 = zext i32 %dividend.addr.0.i.i.off0.i to i64
  %16 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1000, ptr %denominator, align 4
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %add = add i32 %18, 2047
  %conv14 = zext i32 %add to i64
  %mul16 = mul nuw nsw i64 %conv3, 1000
  %mul19 = mul i64 %mul16, %conv14
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul19, i32 0) #11, !srcloc !79
  %asmresult.i.i.i81 = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i.i82 = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul19, i64 %asmresult.i.i.i81, i32 %asmresult4.i.i.i82) #11, !srcloc !80
  %asmresult10.i.i.i94 = extractvalue { i64, i32 } %20, 0
  %div158.i.i99219 = lshr i64 %asmresult10.i.i.i94, 29
  %conv21 = trunc i64 %div158.i.i99219 to i32
  %21 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv21, ptr %spec.select, align 4
  %conv24 = and i64 %div158.i.i99219, 4294967295
  %mul25 = mul nuw nsw i64 %conv24, 1000000000
  %mul29 = mul i32 %dividend.addr.0.i.i.off0.i, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul25)
  %cmp164.i.i206 = icmp ult i64 %mul25, 4294967296
  br i1 %cmp164.i.i206, label %if.then168.i.i211, label %if.else174.i.i213, !prof !76

if.then168.i.i211:                                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i208 = trunc i64 %mul25 to i32
  %div172.i.i209 = udiv i32 %conv169.i.i208, %mul29
  br label %div_u64.exit215

if.else174.i.i213:                                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul29, i64 %mul25) #11, !srcloc !77
  %asmresult1.i.i.i212 = extractvalue { i64, i64 } %22, 1
  %extract.t222 = trunc i64 %asmresult1.i.i.i212 to i32
  br label %div_u64.exit215

div_u64.exit215:                                  ; preds = %if.else174.i.i213, %if.then168.i.i211
  %dividend.addr.0.i.i214.off0 = phi i32 [ %div172.i.i209, %if.then168.i.i211 ], [ %extract.t222, %if.else174.i.i213 ]
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %conv35 = sub i32 %dividend.addr.0.i.i214.off0, %24
  br label %if.end36

if.end36:                                         ; preds = %div_u64.exit215, %div_u64.exit.if.end36_crit_edge
  %vblank.0 = phi i32 [ %conv35, %div_u64.exit215 ], [ %conv9, %div_u64.exit.if.end36_crit_edge ]
  %div = udiv i32 1600000, %dividend.addr.0.i.i.off0.i
  %25 = tail call i32 @llvm.umax.i32(i32 %vblank.0, i32 %div)
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 2047)
  %conv46 = trunc i32 %26 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv46) #7
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext 6, i16 noundef zeroext %27) #7
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m032_enum_mbus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8193, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m032_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %3)
  %cmp1.not = icmp eq i32 %3, 8193
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %4 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1440, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %5 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1440, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %6 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1080, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %7 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1080, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_get_pad_format(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.__mt9m032_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.__mt9m032_get_pad_format.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9m032_get_pad_format.exit

sw.bb.i:                                          ; preds = %entry
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %3 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i.i = icmp eq i16 %4, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !81

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  br label %__mt9m032_get_pad_format.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 8
  br label %__mt9m032_get_pad_format.exit

__mt9m032_get_pad_format.exit:                    ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %entry.__mt9m032_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %format.i, %sw.bb1.i ], [ %6, %v4l2_subdev_get_try_format.exit.i ], [ null, %entry.__mt9m032_get_pad_format.exit_crit_edge ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_set_pad_format(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 7
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 1
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %3 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %.pr, label %if.end.__mt9m032_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9m032_get_pad_format.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9m032_get_pad_format.exit

sw.bb.i:                                          ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i.i = icmp eq i16 %5, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !81

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  br label %__mt9m032_get_pad_format.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 8
  br label %__mt9m032_get_pad_format.exit

__mt9m032_get_pad_format.exit:                    ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i, %if.end.__mt9m032_get_pad_format.exit_crit_edge
  %retval.0.i = phi ptr [ %format.i, %sw.bb1.i ], [ %7, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.end.__mt9m032_get_pad_format.exit_crit_edge ]
  %8 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  br label %done

done:                                             ; preds = %__mt9m032_get_pad_format.exit, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %__mt9m032_get_pad_format.exit ], [ -16, %entry.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_get_pad_selection(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %3, label %if.end.__mt9m032_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.__mt9m032_get_pad_crop.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9m032_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.i = icmp eq i16 %6, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !81

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %8, i32 0, i32 1
  br label %__mt9m032_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 9
  br label %__mt9m032_get_pad_crop.exit

__mt9m032_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end.__mt9m032_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end.__mt9m032_get_pad_crop.exit_crit_edge ]
  %9 = call ptr @memcpy(ptr %r, ptr %retval.0.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %__mt9m032_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__mt9m032_get_pad_crop.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_set_pad_selection(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 7
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %land.lhs.true.done_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %6 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r, align 4
  %add = add i32 %7, 1
  %and = and i32 %add, -2
  %8 = tail call i32 @llvm.smax.i32(i32 %and, i32 0)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1600)
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top, align 4
  %add14 = add i32 %11, 1
  %and15 = and i32 %add14, -2
  %12 = tail call i32 @llvm.smax.i32(i32 %and15, i32 0)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 1152)
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %add30 = add i32 %15, 1
  %and31 = and i32 %add30, -2
  %16 = tail call i32 @llvm.umax.i32(i32 %and31, i32 32)
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %add46 = add i32 %18, 1
  %and47 = and i32 %add46, -2
  %19 = tail call i32 @llvm.umax.i32(i32 %and47, i32 32)
  %sub = sub nuw nsw i32 1600, %9
  %20 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub)
  %sub72 = sub nuw nsw i32 1152, %13
  %21 = tail call i32 @llvm.umin.i32(i32 %19, i32 %sub72)
  %22 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sel, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %23, label %if.end3.__mt9m032_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end3.__mt9m032_get_pad_crop.exit_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9m032_get_pad_crop.exit

sw.bb.i:                                          ; preds = %if.end3
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %25 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.i.i = icmp eq i16 %26, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !81

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %27 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %28, i32 0, i32 1
  br label %__mt9m032_get_pad_crop.exit

sw.bb1.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %crop.i = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 9
  br label %__mt9m032_get_pad_crop.exit

__mt9m032_get_pad_crop.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_crop.exit.i, %if.end3.__mt9m032_get_pad_crop.exit_crit_edge
  %retval.0.i = phi ptr [ %crop.i, %sw.bb1.i ], [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ null, %if.end3.__mt9m032_get_pad_crop.exit_crit_edge ]
  %width82 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %width82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %30)
  %cmp83.not = icmp eq i32 %20, %30
  br i1 %cmp83.not, label %lor.lhs.false, label %__mt9m032_get_pad_crop.exit.if.then87_crit_edge

__mt9m032_get_pad_crop.exit.if.then87_crit_edge:  ; preds = %__mt9m032_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

lor.lhs.false:                                    ; preds = %__mt9m032_get_pad_crop.exit
  %height85 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %height85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %32)
  %cmp86.not = icmp eq i32 %21, %32
  br i1 %cmp86.not, label %lor.lhs.false.if.end94_crit_edge, label %lor.lhs.false.if.then87_crit_edge

lor.lhs.false.if.then87_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then87:                                        ; preds = %lor.lhs.false.if.then87_crit_edge, %__mt9m032_get_pad_crop.exit.if.then87_crit_edge
  %33 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sel, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %34, label %if.then87.__mt9m032_get_pad_format.exit_crit_edge [
    i32 0, label %sw.bb.i154
    i32 1, label %sw.bb1.i156
  ]

if.then87.__mt9m032_get_pad_format.exit_crit_edge: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt9m032_get_pad_format.exit

sw.bb.i154:                                       ; preds = %if.then87
  %num_pads.i.i152 = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %36 = ptrtoint ptr %num_pads.i.i152 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_pads.i.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp.i.i153 = icmp eq i16 %37, 0
  br i1 %cmp.i.i153, label %do.end.i.i155, label %sw.bb.i154.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !81

sw.bb.i154.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i155:                                    ; preds = %sw.bb.i154
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i155, %sw.bb.i154.v4l2_subdev_get_try_format.exit.i_crit_edge
  %38 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sd_state, align 4
  br label %__mt9m032_get_pad_format.exit

sw.bb1.i156:                                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %format.i = getelementptr inbounds %struct.mt9m032, ptr %subdev, i32 0, i32 8
  br label %__mt9m032_get_pad_format.exit

__mt9m032_get_pad_format.exit:                    ; preds = %sw.bb1.i156, %v4l2_subdev_get_try_format.exit.i, %if.then87.__mt9m032_get_pad_format.exit_crit_edge
  %retval.0.i157 = phi ptr [ %format.i, %sw.bb1.i156 ], [ %39, %v4l2_subdev_get_try_format.exit.i ], [ null, %if.then87.__mt9m032_get_pad_format.exit_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i157 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %20, ptr %retval.0.i157, align 4
  %height93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i157, i32 0, i32 1
  %41 = ptrtoint ptr %height93 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %21, ptr %height93, align 4
  br label %if.end94

if.end94:                                         ; preds = %__mt9m032_get_pad_format.exit, %lor.lhs.false.if.end94_crit_edge
  %42 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %9, ptr %retval.0.i, align 4
  %rect.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 4
  %43 = ptrtoint ptr %rect.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %13, ptr %rect.sroa.7.0..sroa_idx, align 4
  %44 = ptrtoint ptr %width82 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %20, ptr %width82, align 4
  %rect.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 12
  %45 = ptrtoint ptr %rect.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %21, ptr %rect.sroa.16.0..sroa_idx, align 4
  %46 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %9, ptr %r, align 4
  %47 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %13, ptr %top, align 4
  %48 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %20, ptr %width, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %21, ptr %height, align 4
  %50 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp97 = icmp eq i32 %51, 1
  br i1 %cmp97, label %if.then98, label %if.end94.done_crit_edge

if.end94.done_crit_edge:                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %call99 = tail call fastcc i32 @mt9m032_update_geom_timing(ptr noundef %subdev)
  br label %done

done:                                             ; preds = %if.then98, %if.end94.done_crit_edge, %land.lhs.true.done_crit_edge
  %ret.0 = phi i32 [ %call99, %if.then98 ], [ 0, %if.end94.done_crit_edge ], [ -16, %land.lhs.true.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt9m032_try_ctrl(ptr nocapture noundef %ctrl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963795, i32 %1)
  %cmp = icmp eq i32 %1, 9963795
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %3)
  %cmp1 = icmp sgt i32 %3, 62
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %3, -2
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m032_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -84
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963795, label %sw.bb
    i32 9963796, label %sw.bb2
    i32 9963793, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %8)
  %cmp.i = icmp slt i32 %8, 63
  %div.i = sdiv i32 %8, 2
  %analog_mul.0.i = select i1 %cmp.i, i32 13056, i32 13120
  %analog_gain_val.0.i = select i1 %cmp.i, i32 %8, i32 %div.i
  %and3.i = and i32 %analog_gain_val.0.i, 63
  %or4.i = or i32 %and3.i, %analog_mul.0.i
  %conv.i = trunc i32 %or4.i to i16
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = getelementptr i8, ptr %1, i32 184
  %vflip = getelementptr i8, ptr %1, i32 188
  %10 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vflip, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  %shl4.i = select i1 %tobool5.not, i16 0, i16 16384
  %or.i = select i1 %tobool.not, i16 71, i16 -32697
  %or6.i = or i16 %shl4.i, %or.i
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %18 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val8, align 4
  %20 = lshr i32 %19, 16
  %conv = trunc i32 %20 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 8, i16 noundef zeroext %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %sw.bb7.cleanup_crit_edge, label %if.end

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val8, align 4
  %conv13 = trunc i32 %23 to i16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %sw.bb2, %sw.bb
  %conv13.sink = phi i16 [ %conv13, %if.end ], [ %or6.i, %sw.bb2 ], [ %conv.i, %sw.bb ]
  %.sink = phi i8 [ 9, %if.end ], [ 32, %sw.bb2 ], [ 53, %sw.bb ]
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv13.sink) #7
  %call.i.i29 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %.sink, i16 noundef zeroext %24) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %sw.bb7.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i29, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aptina_pll_calculate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_mt9m032__317_889_mt9m032_i2c_driver_init6, !1, !"__initcall__kmod_mt9m032__317_889_mt9m032_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/mt9m032.c", i32 889, i32 1}
!2 = !{ptr @__exitcall_mt9m032_i2c_driver_exit, !1, !"__exitcall_mt9m032_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author318, !4, !"__UNIQUE_ID_author318", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/mt9m032.c", i32 891, i32 1}
!5 = !{ptr @__UNIQUE_ID_description319, !6, !"__UNIQUE_ID_description319", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/mt9m032.c", i32 892, i32 1}
!7 = !{ptr @__UNIQUE_ID_file320, !8, !"__UNIQUE_ID_file320", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/mt9m032.c", i32 893, i32 1}
!9 = !{ptr @__UNIQUE_ID_license321, !8, !"__UNIQUE_ID_license321", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/mt9m032.c", i32 882, i32 11}
!12 = !{ptr @mt9m032_i2c_driver, !13, !"mt9m032_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/mt9m032.c", i32 880, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/mt9m032.c", i32 714, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt9m032_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt9m032_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/mt9m032.c", i32 719, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mt9m032_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mt9m032_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mt9m032_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/mt9m032.c", i32 731, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/mt9m032.c", i32 740, i32 3}
!32 = !{ptr @mt9m032_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mt9m032_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/mt9m032.c", i32 746, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mt9m032_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mt9m032_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @mt9m032_probe._key, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/mt9m032.c", i32 763, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/mt9m032.c", i32 785, i32 3}
!44 = !{ptr @mt9m032_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt9m032_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mt9m032_ops, !47, !"mt9m032_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/mt9m032.c", i32 694, i32 37}
!48 = !{ptr @mt9m032_core_ops, !49, !"mt9m032_core_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/mt9m032.c", i32 672, i32 42}
!50 = !{ptr @mt9m032_video_ops, !51, !"mt9m032_video_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/mt9m032.c", i32 679, i32 43}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/mt9m032.c", i32 175, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mt9m032_row_time.__UNIQUE_ID_ddebug292, !53, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!56 = !{ptr @mt9m032_pad_ops, !57, !"mt9m032_pad_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/mt9m032.c", i32 685, i32 41}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!60 = !{ptr @mt9m032_ctrl_ops, !61, !"mt9m032_ctrl_ops", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/mt9m032.c", i32 665, i32 35}
!62 = !{ptr @mt9m032_setup_pll.limits, !63, !"limits", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/mt9m032.c", i32 251, i32 40}
!64 = !{ptr @mt9m032_id_table, !65, !"mt9m032_id_table", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/mt9m032.c", i32 873, i32 35}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i8 0, i8 2}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2148005211, i64 2148005491, i64 2148005825, i64 2148006159}
!78 = !{i64 2148779538, i64 2148779543, i64 2148779556, i64 2148779600, i64 2148779634, i64 2148779655}
!79 = !{i64 497483, i64 497510, i64 497532, i64 497560}
!80 = !{i64 497891, i64 497918, i64 497951, i64 497972, i64 497999, i64 498025}
!81 = !{!"branch_weights", i32 1, i32 2000}
