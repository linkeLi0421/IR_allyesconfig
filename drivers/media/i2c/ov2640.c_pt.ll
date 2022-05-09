; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov2640.c_pt.bc'
source_filename = "../drivers/media/i2c/ov2640.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.ov2640_win_size = type { ptr, i32, i32, ptr }
%struct.regval_list = type { i8, i8 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ov2640_priv = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, i32, ptr, ptr, ptr, ptr, %struct.mutex, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_ov2640__306_1309_ov2640_i2c_driver_init6 = internal global ptr @ov2640_i2c_driver_init, section ".initcall6.init", align 4
@ov2640_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov2640_remove, ptr @ov2640_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov2640_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ov2640_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov2640_i2c_driver_exit = internal global ptr @ov2640_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [54 x i8] c"ov2640.description=Driver for Omni Vision 2640 sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [30 x i8] c"ov2640.author=Alberto Panizzo\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [37 x i8] c"ov2640.file=drivers/media/i2c/ov2640\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [22 x i8] c"ov2640.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov2640\00", [25 x i8] zeroinitializer }, align 32
@ov2640_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov2640\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov2640_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ov2640\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov2640_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"OV2640: I2C-Adapter doesn't support SMBUS\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov2640_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov2640.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov2640_probe._entry_ptr = internal global ptr @ov2640_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xvclk\00", [26 x i8] zeroinitializer }, align 32
@ov2640_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @ov2640_subdev_core_ops, ptr null, ptr null, ptr @ov2640_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ov2640_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov2640_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@ov2640_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ov2640:1229:(&priv->hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@ov2640_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov2640_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov2640_test_pattern_menu = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.42, ptr @.str.43], [24 x i8] zeroinitializer }, align 32
@ov2640_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1260, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OV2640 Probed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov2640_probe._entry_ptr.12 = internal global ptr @ov2640_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resetb\00", [25 x i8] zeroinitializer }, align 32
@ov2640_probe_dt.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 1, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov2640_probe_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"resetb gpio is not assigned!\0A\00", [34 x i8] zeroinitializer }, align 32
@ov2640_probe_dt.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error %d while getting resetb gpio\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwdn\00", [27 x i8] zeroinitializer }, align 32
@ov2640_probe_dt.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.18, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pwdn gpio is not assigned!\0A\00", [36 x i8] zeroinitializer }, align 32
@ov2640_probe_dt.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.19, i8 1, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error %d while getting pwdn gpio\0A\00", [62 x i8] zeroinitializer }, align 32
@ov2640_supported_win_sizes = internal constant { [8 x %struct.ov2640_win_size], [32 x i8] } { [8 x %struct.ov2640_win_size] [%struct.ov2640_win_size { ptr @.str.20, i32 176, i32 144, ptr @ov2640_qcif_regs }, %struct.ov2640_win_size { ptr @.str.21, i32 320, i32 240, ptr @ov2640_qvga_regs }, %struct.ov2640_win_size { ptr @.str.22, i32 352, i32 288, ptr @ov2640_cif_regs }, %struct.ov2640_win_size { ptr @.str.23, i32 640, i32 480, ptr @ov2640_vga_regs }, %struct.ov2640_win_size { ptr @.str.24, i32 800, i32 600, ptr @ov2640_svga_regs }, %struct.ov2640_win_size { ptr @.str.25, i32 1024, i32 768, ptr @ov2640_xga_regs }, %struct.ov2640_win_size { ptr @.str.26, i32 1280, i32 1024, ptr @ov2640_sxga_regs }, %struct.ov2640_win_size { ptr @.str.27, i32 1600, i32 1200, ptr @ov2640_uxga_regs }], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QCIF\00", [27 x i8] zeroinitializer }, align 32
@ov2640_qcif_regs = internal constant { [7 x %struct.regval_list], [18 x i8] } { [7 x %struct.regval_list] [%struct.regval_list { i8 80, i8 -101 }, %struct.regval_list { i8 90, i8 44 }, %struct.regval_list { i8 91, i8 36 }, %struct.regval_list { i8 92, i8 0 }, %struct.regval_list { i8 -45, i8 4 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QVGA\00", [27 x i8] zeroinitializer }, align 32
@ov2640_qvga_regs = internal constant { [7 x %struct.regval_list], [18 x i8] } { [7 x %struct.regval_list] [%struct.regval_list { i8 80, i8 -110 }, %struct.regval_list { i8 90, i8 80 }, %struct.regval_list { i8 91, i8 60 }, %struct.regval_list { i8 92, i8 0 }, %struct.regval_list { i8 -45, i8 4 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CIF\00", [28 x i8] zeroinitializer }, align 32
@ov2640_cif_regs = internal constant { [7 x %struct.regval_list], [18 x i8] } { [7 x %struct.regval_list] [%struct.regval_list { i8 80, i8 -110 }, %struct.regval_list { i8 90, i8 88 }, %struct.regval_list { i8 91, i8 72 }, %struct.regval_list { i8 92, i8 0 }, %struct.regval_list { i8 -45, i8 8 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VGA\00", [28 x i8] zeroinitializer }, align 32
@ov2640_vga_regs = internal constant { [7 x %struct.regval_list], [18 x i8] } { [7 x %struct.regval_list] [%struct.regval_list { i8 80, i8 -128 }, %struct.regval_list { i8 90, i8 -96 }, %struct.regval_list { i8 91, i8 120 }, %struct.regval_list { i8 92, i8 0 }, %struct.regval_list { i8 -45, i8 2 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SVGA\00", [27 x i8] zeroinitializer }, align 32
@ov2640_svga_regs = internal constant { [7 x %struct.regval_list], [18 x i8] } { [7 x %struct.regval_list] [%struct.regval_list { i8 80, i8 -119 }, %struct.regval_list { i8 90, i8 -56 }, %struct.regval_list { i8 91, i8 -106 }, %struct.regval_list { i8 92, i8 0 }, %struct.regval_list { i8 -45, i8 2 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XGA\00", [28 x i8] zeroinitializer }, align 32
@ov2640_xga_regs = internal constant { [8 x %struct.regval_list], [16 x i8] } { [8 x %struct.regval_list] [%struct.regval_list { i8 80, i8 -128 }, %struct.regval_list { i8 90, i8 0 }, %struct.regval_list { i8 91, i8 -64 }, %struct.regval_list { i8 92, i8 1 }, %struct.regval_list { i8 -45, i8 2 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 80, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SXGA\00", [27 x i8] zeroinitializer }, align 32
@ov2640_sxga_regs = internal constant { [9 x %struct.regval_list], [46 x i8] } { [9 x %struct.regval_list] [%struct.regval_list { i8 80, i8 -128 }, %struct.regval_list { i8 90, i8 64 }, %struct.regval_list { i8 91, i8 0 }, %struct.regval_list { i8 92, i8 5 }, %struct.regval_list { i8 -45, i8 2 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 80, i8 0 }, %struct.regval_list { i8 -45, i8 -126 }, %struct.regval_list { i8 -1, i8 -1 }], [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UXGA\00", [27 x i8] zeroinitializer }, align 32
@ov2640_uxga_regs = internal constant { [9 x %struct.regval_list], [46 x i8] } { [9 x %struct.regval_list] [%struct.regval_list { i8 80, i8 -128 }, %struct.regval_list { i8 90, i8 -112 }, %struct.regval_list { i8 91, i8 44 }, %struct.regval_list { i8 92, i8 5 }, %struct.regval_list { i8 -45, i8 0 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 80, i8 0 }, %struct.regval_list { i8 -45, i8 -128 }, %struct.regval_list { i8 -1, i8 -1 }], [46 x i8] zeroinitializer }, align 32
@ov2640_subdev_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2640_g_register, ptr @ov2640_s_register, ptr @ov2640_s_power, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@ov2640_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov2640_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov2640_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @ov2640_init_cfg, ptr @ov2640_enum_mbus_code, ptr null, ptr null, ptr @ov2640_get_fmt, ptr @ov2640_set_fmt, ptr @ov2640_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ov2640_set_params\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Selected cfmt RGB565 BE\00", [36 x i8] zeroinitializer }, align 32
@ov2640_rgb565_be_regs = internal constant { [5 x %struct.regval_list], [22 x i8] } { [5 x %struct.regval_list] [%struct.regval_list { i8 -38, i8 8 }, %struct.regval_list { i8 -41, i8 3 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 5, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [22 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Selected cfmt RGB565 LE\00", [36 x i8] zeroinitializer }, align 32
@ov2640_rgb565_le_regs = internal constant { [5 x %struct.regval_list], [22 x i8] } { [5 x %struct.regval_list] [%struct.regval_list { i8 -38, i8 9 }, %struct.regval_list { i8 -41, i8 3 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 5, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [22 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Selected cfmt YUYV (YUV422)\00", [32 x i8] zeroinitializer }, align 32
@ov2640_yuyv_regs = internal constant { [8 x %struct.regval_list], [16 x i8] } { [8 x %struct.regval_list] [%struct.regval_list { i8 -38, i8 0 }, %struct.regval_list { i8 -41, i8 3 }, %struct.regval_list { i8 51, i8 -96 }, %struct.regval_list { i8 -27, i8 31 }, %struct.regval_list { i8 -31, i8 103 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 5, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [16 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.32, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Selected cfmt UYVY\00", [41 x i8] zeroinitializer }, align 32
@ov2640_uyvy_regs = internal constant { [7 x %struct.regval_list], [18 x i8] } { [7 x %struct.regval_list] [%struct.regval_list { i8 -38, i8 1 }, %struct.regval_list { i8 -41, i8 1 }, %struct.regval_list { i8 51, i8 -96 }, %struct.regval_list { i8 -31, i8 103 }, %struct.regval_list { i8 -32, i8 0 }, %struct.regval_list { i8 5, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [18 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.33, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Selected cfmt YVYU\00", [41 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.34, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Selected cfmt VYUY\00", [41 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.35, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Init default\00", [47 x i8] zeroinitializer }, align 32
@ov2640_init_regs = internal constant { [172 x %struct.regval_list], [72 x i8] } { [172 x %struct.regval_list] [%struct.regval_list { i8 -1, i8 0 }, %struct.regval_list { i8 44, i8 -1 }, %struct.regval_list { i8 46, i8 -33 }, %struct.regval_list { i8 -1, i8 1 }, %struct.regval_list { i8 60, i8 50 }, %struct.regval_list { i8 17, i8 0 }, %struct.regval_list { i8 9, i8 2 }, %struct.regval_list { i8 4, i8 40 }, %struct.regval_list { i8 19, i8 -27 }, %struct.regval_list { i8 20, i8 72 }, %struct.regval_list { i8 44, i8 12 }, %struct.regval_list { i8 51, i8 120 }, %struct.regval_list { i8 58, i8 51 }, %struct.regval_list { i8 59, i8 -5 }, %struct.regval_list { i8 62, i8 0 }, %struct.regval_list { i8 67, i8 17 }, %struct.regval_list { i8 22, i8 16 }, %struct.regval_list { i8 57, i8 2 }, %struct.regval_list { i8 53, i8 -120 }, %struct.regval_list { i8 34, i8 10 }, %struct.regval_list { i8 55, i8 64 }, %struct.regval_list { i8 35, i8 0 }, %struct.regval_list { i8 52, i8 -96 }, %struct.regval_list { i8 6, i8 2 }, %struct.regval_list { i8 6, i8 -120 }, %struct.regval_list { i8 7, i8 -64 }, %struct.regval_list { i8 13, i8 -73 }, %struct.regval_list { i8 14, i8 1 }, %struct.regval_list { i8 76, i8 0 }, %struct.regval_list { i8 74, i8 -127 }, %struct.regval_list { i8 33, i8 -103 }, %struct.regval_list { i8 36, i8 64 }, %struct.regval_list { i8 37, i8 56 }, %struct.regval_list { i8 38, i8 -126 }, %struct.regval_list { i8 92, i8 0 }, %struct.regval_list { i8 99, i8 0 }, %struct.regval_list { i8 70, i8 34 }, %struct.regval_list { i8 12, i8 58 }, %struct.regval_list { i8 93, i8 85 }, %struct.regval_list { i8 94, i8 125 }, %struct.regval_list { i8 95, i8 125 }, %struct.regval_list { i8 96, i8 85 }, %struct.regval_list { i8 97, i8 112 }, %struct.regval_list { i8 98, i8 -128 }, %struct.regval_list { i8 124, i8 5 }, %struct.regval_list { i8 32, i8 -128 }, %struct.regval_list { i8 40, i8 48 }, %struct.regval_list { i8 108, i8 0 }, %struct.regval_list { i8 109, i8 -128 }, %struct.regval_list { i8 110, i8 0 }, %struct.regval_list { i8 112, i8 2 }, %struct.regval_list { i8 113, i8 -108 }, %struct.regval_list { i8 115, i8 -63 }, %struct.regval_list { i8 61, i8 52 }, %struct.regval_list { i8 18, i8 4 }, %struct.regval_list { i8 90, i8 87 }, %struct.regval_list { i8 78, i8 0 }, %struct.regval_list { i8 79, i8 -69 }, %struct.regval_list { i8 80, i8 -100 }, %struct.regval_list { i8 -1, i8 0 }, %struct.regval_list { i8 -27, i8 127 }, %struct.regval_list { i8 -7, i8 -64 }, %struct.regval_list { i8 65, i8 36 }, %struct.regval_list { i8 -32, i8 20 }, %struct.regval_list { i8 118, i8 -1 }, %struct.regval_list { i8 51, i8 -96 }, %struct.regval_list { i8 66, i8 32 }, %struct.regval_list { i8 67, i8 24 }, %struct.regval_list { i8 76, i8 0 }, %struct.regval_list { i8 -121, i8 -48 }, %struct.regval_list { i8 -120, i8 63 }, %struct.regval_list { i8 -41, i8 3 }, %struct.regval_list { i8 -39, i8 16 }, %struct.regval_list { i8 -45, i8 -126 }, %struct.regval_list { i8 -56, i8 8 }, %struct.regval_list { i8 -55, i8 -128 }, %struct.regval_list { i8 124, i8 0 }, %struct.regval_list { i8 125, i8 0 }, %struct.regval_list { i8 124, i8 3 }, %struct.regval_list { i8 125, i8 72 }, %struct.regval_list { i8 125, i8 72 }, %struct.regval_list { i8 124, i8 8 }, %struct.regval_list { i8 125, i8 32 }, %struct.regval_list { i8 125, i8 16 }, %struct.regval_list { i8 125, i8 14 }, %struct.regval_list { i8 -112, i8 0 }, %struct.regval_list { i8 -111, i8 14 }, %struct.regval_list { i8 -111, i8 26 }, %struct.regval_list { i8 -111, i8 49 }, %struct.regval_list { i8 -111, i8 90 }, %struct.regval_list { i8 -111, i8 105 }, %struct.regval_list { i8 -111, i8 117 }, %struct.regval_list { i8 -111, i8 126 }, %struct.regval_list { i8 -111, i8 -120 }, %struct.regval_list { i8 -111, i8 -113 }, %struct.regval_list { i8 -111, i8 -106 }, %struct.regval_list { i8 -111, i8 -93 }, %struct.regval_list { i8 -111, i8 -81 }, %struct.regval_list { i8 -111, i8 -60 }, %struct.regval_list { i8 -111, i8 -41 }, %struct.regval_list { i8 -111, i8 -24 }, %struct.regval_list { i8 -111, i8 32 }, %struct.regval_list { i8 -110, i8 0 }, %struct.regval_list { i8 -109, i8 6 }, %struct.regval_list { i8 -109, i8 -29 }, %struct.regval_list { i8 -109, i8 3 }, %struct.regval_list { i8 -109, i8 3 }, %struct.regval_list { i8 -109, i8 0 }, %struct.regval_list { i8 -109, i8 2 }, %struct.regval_list { i8 -109, i8 0 }, %struct.regval_list { i8 -109, i8 0 }, %struct.regval_list { i8 -109, i8 0 }, %struct.regval_list { i8 -109, i8 0 }, %struct.regval_list { i8 -109, i8 0 }, %struct.regval_list { i8 -109, i8 0 }, %struct.regval_list { i8 -109, i8 0 }, %struct.regval_list { i8 -106, i8 0 }, %struct.regval_list { i8 -105, i8 8 }, %struct.regval_list { i8 -105, i8 25 }, %struct.regval_list { i8 -105, i8 2 }, %struct.regval_list { i8 -105, i8 12 }, %struct.regval_list { i8 -105, i8 36 }, %struct.regval_list { i8 -105, i8 48 }, %struct.regval_list { i8 -105, i8 40 }, %struct.regval_list { i8 -105, i8 38 }, %struct.regval_list { i8 -105, i8 2 }, %struct.regval_list { i8 -105, i8 -104 }, %struct.regval_list { i8 -105, i8 -128 }, %struct.regval_list { i8 -105, i8 0 }, %struct.regval_list { i8 -105, i8 0 }, %struct.regval_list { i8 -92, i8 0 }, %struct.regval_list { i8 -88, i8 0 }, %struct.regval_list { i8 -59, i8 17 }, %struct.regval_list { i8 -58, i8 81 }, %struct.regval_list { i8 -65, i8 -128 }, %struct.regval_list { i8 -57, i8 16 }, %struct.regval_list { i8 -74, i8 102 }, %struct.regval_list { i8 -72, i8 -91 }, %struct.regval_list { i8 -73, i8 100 }, %struct.regval_list { i8 -71, i8 124 }, %struct.regval_list { i8 -77, i8 -81 }, %struct.regval_list { i8 -76, i8 -105 }, %struct.regval_list { i8 -75, i8 -1 }, %struct.regval_list { i8 -80, i8 -59 }, %struct.regval_list { i8 -79, i8 -108 }, %struct.regval_list { i8 -78, i8 15 }, %struct.regval_list { i8 -60, i8 92 }, %struct.regval_list { i8 -90, i8 0 }, %struct.regval_list { i8 -89, i8 32 }, %struct.regval_list { i8 -89, i8 -40 }, %struct.regval_list { i8 -89, i8 27 }, %struct.regval_list { i8 -89, i8 49 }, %struct.regval_list { i8 -89, i8 0 }, %struct.regval_list { i8 -89, i8 24 }, %struct.regval_list { i8 -89, i8 32 }, %struct.regval_list { i8 -89, i8 -40 }, %struct.regval_list { i8 -89, i8 25 }, %struct.regval_list { i8 -89, i8 49 }, %struct.regval_list { i8 -89, i8 0 }, %struct.regval_list { i8 -89, i8 24 }, %struct.regval_list { i8 -89, i8 32 }, %struct.regval_list { i8 -89, i8 -40 }, %struct.regval_list { i8 -89, i8 25 }, %struct.regval_list { i8 -89, i8 49 }, %struct.regval_list { i8 -89, i8 0 }, %struct.regval_list { i8 -89, i8 24 }, %struct.regval_list { i8 127, i8 0 }, %struct.regval_list { i8 -27, i8 31 }, %struct.regval_list { i8 -31, i8 119 }, %struct.regval_list { i8 -35, i8 127 }, %struct.regval_list { i8 -62, i8 14 }, %struct.regval_list { i8 -1, i8 -1 }], [72 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.36, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Set size to %s\00", [45 x i8] zeroinitializer }, align 32
@ov2640_size_change_preamble_regs = internal constant { [13 x %struct.regval_list], [38 x i8] } { [13 x %struct.regval_list] [%struct.regval_list { i8 -1, i8 0 }, %struct.regval_list { i8 -32, i8 4 }, %struct.regval_list { i8 -116, i8 0 }, %struct.regval_list { i8 -64, i8 -56 }, %struct.regval_list { i8 -63, i8 -106 }, %struct.regval_list { i8 -122, i8 61 }, %struct.regval_list { i8 81, i8 -112 }, %struct.regval_list { i8 82, i8 44 }, %struct.regval_list { i8 83, i8 0 }, %struct.regval_list { i8 84, i8 0 }, %struct.regval_list { i8 85, i8 -120 }, %struct.regval_list { i8 87, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [38 x i8] zeroinitializer }, align 32
@ov2640_set_params.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.37, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Set cfmt\00", [19 x i8] zeroinitializer }, align 32
@ov2640_format_change_preamble_regs = internal constant { [3 x %struct.regval_list], [26 x i8] } { [3 x %struct.regval_list] [%struct.regval_list { i8 -1, i8 0 }, %struct.regval_list { i8 5, i8 0 }, %struct.regval_list { i8 -1, i8 -1 }], [26 x i8] zeroinitializer }, align 32
@ov2640_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.3, i32 909, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Error %d\00", [19 x i8] zeroinitializer }, align 32
@ov2640_set_params._entry_ptr = internal global ptr @ov2640_set_params._entry, section ".printk_index", align 4
@ov2640_reset.reset_seq = internal constant { [3 x %struct.regval_list], [26 x i8] } { [3 x %struct.regval_list] [%struct.regval_list { i8 -1, i8 1 }, %struct.regval_list { i8 18, i8 -128 }, %struct.regval_list { i8 -1, i8 -1 }], [26 x i8] zeroinitializer }, align 32
@ov2640_reset.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov2640_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: (ret %d)\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov2640_codes = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8200, i32 8198, i32 8201, i32 8199, i32 4103, i32 4104], [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Eight Vertical Colour Bars\00", [37 x i8] zeroinitializer }, align 32
@ov2640_video_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Product ID error %x:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov2640_video_probe\00", [45 x i8] zeroinitializer }, align 32
@ov2640_video_probe._entry_ptr = internal global ptr @ov2640_video_probe._entry, section ".printk_index", align 4
@ov2640_video_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 1114, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s Product ID %0x:%0x Manufacturer ID %x:%x\0A\00", [51 x i8] zeroinitializer }, align 32
@ov2640_video_probe._entry_ptr.48 = internal global ptr @ov2640_video_probe._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 4103, i64 4104, i64 8199, i64 8200, i64 8201]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 4103, i64 4104, i64 8198, i64 8199, i64 8200, i64 8201]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 9963796, i64 9963797, i64 10422531]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"ov2640_i2c_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1299, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1301, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"ov2640_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1293, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"ov2640_id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1287, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1200, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1210, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"ov2640_subdev_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1148, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1228, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1229, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"ov2640_ctrl_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1121, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"ov2640_test_pattern_menu\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 706, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1260, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1160, i32 60 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1164, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1168, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1174, i32 58 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1178, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1182, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"ov2640_supported_win_sizes\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 579, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 580, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"ov2640_qcif_regs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 531, i32 33 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 581, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"ov2640_qvga_regs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 536, i32 33 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 582, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"ov2640_cif_regs\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 541, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 583, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"ov2640_vga_regs\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 546, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 584, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"ov2640_svga_regs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 551, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 585, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"ov2640_xga_regs\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 556, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 586, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"ov2640_sxga_regs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 562, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 587, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"ov2640_uxga_regs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 569, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant [23 x i8] c"ov2640_subdev_core_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1125, i32 42 }
@___asan_gen_.192 = private unnamed_addr constant [24 x i8] c"ov2640_subdev_video_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1144, i32 43 }
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"ov2640_subdev_pad_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1136, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 844, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [22 x i8] c"ov2640_rgb565_be_regs\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 620, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 848, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"ov2640_rgb565_le_regs\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 628, i32 33 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 852, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"ov2640_yuyv_regs\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 599, i32 33 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 857, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"ov2640_uyvy_regs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 610, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 861, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 865, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 874, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"ov2640_init_regs\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 320, i32 33 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 880, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [33 x i8] c"ov2640_size_change_preamble_regs\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 502, i32 33 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 891, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [35 x i8] c"ov2640_format_change_preamble_regs\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 593, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 909, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [10 x i8] c"reset_seq\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 690, i32 34 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 702, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 998, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"ov2640_codes\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 636, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 707, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 708, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1106, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [30 x i8] c"../drivers/media/i2c/ov2640.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1112, i32 2 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_ov2640_i2c_driver_exit, ptr @__initcall__kmod_ov2640__306_1309_ov2640_i2c_driver_init6, ptr @ov2640_i2c_driver_exit, ptr @ov2640_probe._entry, ptr @ov2640_probe._entry.9, ptr @ov2640_probe._entry_ptr, ptr @ov2640_probe._entry_ptr.12, ptr @ov2640_set_params._entry, ptr @ov2640_set_params._entry_ptr, ptr @ov2640_video_probe._entry, ptr @ov2640_video_probe._entry.46, ptr @ov2640_video_probe._entry_ptr, ptr @ov2640_video_probe._entry_ptr.48, ptr @ov2640_i2c_driver, ptr @.str, ptr @ov2640_of_match, ptr @ov2640_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ov2640_subdev_ops, ptr @ov2640_probe.__key, ptr @.str.7, ptr @ov2640_probe._key, ptr @.str.8, ptr @ov2640_ctrl_ops, ptr @ov2640_test_pattern_menu, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ov2640_supported_win_sizes, ptr @.str.20, ptr @ov2640_qcif_regs, ptr @.str.21, ptr @ov2640_qvga_regs, ptr @.str.22, ptr @ov2640_cif_regs, ptr @.str.23, ptr @ov2640_vga_regs, ptr @.str.24, ptr @ov2640_svga_regs, ptr @.str.25, ptr @ov2640_xga_regs, ptr @.str.26, ptr @ov2640_sxga_regs, ptr @.str.27, ptr @ov2640_uxga_regs, ptr @ov2640_subdev_core_ops, ptr @ov2640_subdev_video_ops, ptr @ov2640_subdev_pad_ops, ptr @.str.28, ptr @.str.29, ptr @ov2640_rgb565_be_regs, ptr @.str.30, ptr @ov2640_rgb565_le_regs, ptr @.str.31, ptr @ov2640_yuyv_regs, ptr @.str.32, ptr @ov2640_uyvy_regs, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ov2640_init_regs, ptr @.str.36, ptr @ov2640_size_change_preamble_regs, ptr @.str.37, ptr @ov2640_format_change_preamble_regs, ptr @.str.38, ptr @ov2640_reset.reset_seq, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ov2640_codes, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_test_pattern_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_supported_win_sizes to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_qcif_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_qvga_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_cif_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_vga_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_svga_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_xga_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_sxga_regs to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_uxga_regs to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_subdev_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_rgb565_be_regs to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_rgb565_le_regs to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_yuyv_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_uyvy_regs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_init_regs to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_size_change_preamble_regs to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_format_change_preamble_regs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_reset.reset_seq to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_codes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_video_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_video_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov2640_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov2640_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ov2640_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #5
  %hdl = getelementptr inbounds %struct.ov2640_priv, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  %lock = getelementptr inbounds %struct.ov2640_priv, ptr %1, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %lock) #5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.ov2640_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
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
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 532, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end6.if.end23_crit_edge, label %if.then9

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then9:                                         ; preds = %if.end6
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.6) #5
  %clk = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %clk, align 4
  %cmp.i122 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.then9
  %call.i123 = tail call i32 @clk_prepare(ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end23_crit_edge, label %if.then3.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call11) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end.i.if.end23_crit_edge, %if.end6.if.end23_crit_edge
  %call24 = tail call fastcc i32 @ov2640_probe_dt(ptr noundef %client, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.err_clk_crit_edge

if.end23.err_clk_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end27:                                         ; preds = %if.end23
  %win = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %win to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr getelementptr inbounds ([8 x %struct.ov2640_win_size], ptr @ov2640_supported_win_sizes, i32 0, i32 4), ptr %win, align 4
  %cfmt_code = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %cfmt_code to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8198, ptr %cfmt_code, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @ov2640_subdev_ops) #5
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 12
  store i32 %or, ptr %flags, align 4
  %lock = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ov2640_probe.__key) #5
  %hdl = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 2
  %call33 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 3, ptr noundef nonnull @ov2640_probe._key, ptr noundef nonnull @.str.8) #5
  %lock36 = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %lock36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock36, align 4
  %call38 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov2640_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %call40 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @ov2640_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %call42 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %hdl, ptr noundef nonnull @ov2640_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov2640_test_pattern_menu) #5
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 2, i32 9
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool46.not = icmp eq i32 %17, 0
  br i1 %tobool46.not, label %if.end50, label %if.end27.err_hdl_crit_edge

if.end27.err_hdl_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_hdl

if.end50:                                         ; preds = %if.end27
  %pad = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 1
  %flags51 = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %flags51 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %flags51, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 131073, ptr %function, align 4
  %call56 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp = icmp slt i32 %call56, 0
  br i1 %cmp, label %if.end50.err_hdl_crit_edge, label %if.end58

if.end50.err_hdl_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_hdl

if.end58:                                         ; preds = %if.end50
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %call1.i125 = tail call i32 @ov2640_s_power(ptr noundef %21, i32 noundef 1) #5
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 1) #5
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 10) #5
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 11) #5
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 28) #5
  %call8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 29) #5
  %conv10.i = and i32 %call3.i, 255
  %shl.i = shl nuw nsw i32 %conv10.i, 8
  %conv11.i = and i32 %call4.i, 255
  %or.i = or i32 %shl.i, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9794, i32 %or.i)
  %cond.i = icmp eq i32 %or.i, 9794
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %conv20.i = and i32 %call6.i, 255
  %conv21.i = and i32 %call8.i, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str, i32 noundef %conv10.i, i32 noundef %conv11.i, i32 noundef %conv20.i, i32 noundef %conv21.i) #8
  br label %done.i

do.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.44, i32 noundef %conv10.i, i32 noundef %conv11.i) #8
  br label %done.i

done.i:                                           ; preds = %do.end.i, %sw.bb.i
  %ret.0.i = phi i32 [ 0, %sw.bb.i ], [ -19, %do.end.i ]
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.ov2640_priv, ptr %25, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #5
  %power_count.i.i = getelementptr inbounds %struct.ov2640_priv, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %power_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %done.i.if.end.i.i_crit_edge

done.i.if.end.i.i_crit_edge:                      ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %done.i
  %pwdn_gpio.i.i.i = getelementptr inbounds %struct.ov2640_priv, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %pwdn_gpio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwdn_gpio.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 @gpiod_direction_output(ptr noundef nonnull %29, i32 noundef 1) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i_crit_edge, %done.i.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %power_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %power_count.i.i, align 4
  %add.i.i = add i32 %31, -1
  store i32 %add.i.i, ptr %power_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp5.i.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i.i, label %if.end.i.i.ov2640_video_probe.exit_crit_edge, !prof !180

if.end.i.i.ov2640_video_probe.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ov2640_video_probe.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 815, i32 noundef 9, ptr noundef null) #5
  br label %ov2640_video_probe.exit

ov2640_video_probe.exit:                          ; preds = %do.end.i.i, %if.end.i.i.ov2640_video_probe.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #5
  br i1 %cond.i, label %if.end62, label %ov2640_video_probe.exit.err_hdl_crit_edge

ov2640_video_probe.exit.err_hdl_crit_edge:        ; preds = %ov2640_video_probe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_hdl

if.end62:                                         ; preds = %ov2640_video_probe.exit
  %call64 = tail call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end62.err_hdl_crit_edge, label %do.end70

if.end62.err_hdl_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_hdl

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %dev71 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.10) #8
  br label %cleanup

err_hdl:                                          ; preds = %if.end62.err_hdl_crit_edge, %ov2640_video_probe.exit.err_hdl_crit_edge, %if.end50.err_hdl_crit_edge, %if.end27.err_hdl_crit_edge
  %ret.1 = phi i32 [ %call56, %if.end50.err_hdl_crit_edge ], [ %17, %if.end27.err_hdl_crit_edge ], [ %ret.0.i, %ov2640_video_probe.exit.err_hdl_crit_edge ], [ %call64, %if.end62.err_hdl_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  tail call void @mutex_destroy(ptr noundef %lock) #5
  br label %err_clk

err_clk:                                          ; preds = %err_hdl, %if.end23.err_clk_crit_edge
  %ret.2 = phi i32 [ %call24, %if.end23.err_clk_crit_edge ], [ %ret.1, %err_hdl ]
  %clk76 = getelementptr inbounds %struct.ov2640_priv, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %clk76 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk76, align 4
  tail call void @clk_disable(ptr noundef %33) #5
  tail call void @clk_unprepare(ptr noundef %33) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %do.end70, %if.then3.i, %if.end17.cleanup_crit_edge, %if.then14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %9, %if.then14 ], [ %ret.2, %err_clk ], [ 0, %do.end70 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i123, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2640_probe_dt(ptr noundef %client, ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 3) #5
  %resetb_gpio = getelementptr inbounds %struct.ov2640_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %resetb_gpio, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_probe_dt.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_probe_dt, %if.then6)) #5
          to label %if.end8 [label %if.then6], !srcloc !181

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_probe_dt.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.15) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body, %entry.if.end8_crit_edge
  %1 = ptrtoint ptr %resetb_gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resetb_gpio, align 4
  %cmp.i.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %2 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  %4 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %do.body13 [
    i32 0, label %if.end8.if.end30_crit_edge
    i32 -38, label %if.end8.if.end30_crit_edge110
  ]

if.end8.if.end30_crit_edge110:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end8.if.end30_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_probe_dt.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_probe_dt, %if.then25)) #5
          to label %cleanup [label %if.then25], !srcloc !181

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_probe_dt.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %spec.select.i) #5
  br label %cleanup

if.end30:                                         ; preds = %if.end8.if.end30_crit_edge, %if.end8.if.end30_crit_edge110
  %call32 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 7) #5
  %pwdn_gpio = getelementptr inbounds %struct.ov2640_priv, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call32, ptr %pwdn_gpio, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %do.body36, label %if.end30.if.end53_crit_edge

if.end30.if.end53_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.body36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_probe_dt.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_probe_dt, %if.then48)) #5
          to label %if.end53 [label %if.then48], !srcloc !181

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_probe_dt.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.18) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %do.body36, %if.end30.if.end53_crit_edge
  %6 = ptrtoint ptr %pwdn_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwdn_gpio, align 4
  %cmp.i.i104 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %7 to i32
  %spec.select.i105 = select i1 %cmp.i.i104, i32 %8, i32 0
  %9 = zext i32 %spec.select.i105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %spec.select.i105, label %do.body60 [
    i32 0, label %if.end53.cleanup_crit_edge
    i32 -38, label %if.end53.cleanup_crit_edge111
  ]

if.end53.cleanup_crit_edge111:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_probe_dt.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_probe_dt, %if.then72)) #5
          to label %cleanup [label %if.then72], !srcloc !181

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_probe_dt.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %spec.select.i105) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body60, %if.end53.cleanup_crit_edge, %if.end53.cleanup_crit_edge111, %if.then25, %do.body13
  %retval.0 = phi i32 [ %spec.select.i, %if.then25 ], [ %spec.select.i105, %if.then72 ], [ 0, %if.end53.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge111 ], [ %spec.select.i, %do.body13 ], [ %spec.select.i105, %do.body60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 1, ptr %size, align 1
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %3 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %4)
  %cmp = icmp ugt i64 %4, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %4 to i8
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv815 = zext i32 %call3 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %conv815, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %3)
  %cmp = icmp ugt i64 %3, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %5)
  %cmp2 = icmp ugt i64 %5, 255
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i64 %3 to i8
  %conv5 = trunc i64 %5 to i8
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_s_power(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %power_count = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %lnot.ext)
  %cmp = icmp eq i32 %5, %lnot.ext
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %pwdn_gpio.i = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %pwdn_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwdn_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef nonnull %7, i32 noundef %5) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  br i1 %tobool.not, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %resetb_gpio.i = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %resetb_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resetb_gpio.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then5.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 @gpiod_direction_output(ptr noundef nonnull %9, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #5
  %10 = ptrtoint ptr %resetb_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resetb_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %12 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_count, align 4
  %add = add i32 %13, %cond
  store i32 %add, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp5 = icmp slt i32 %add, 0
  br i1 %cmp5, label %do.end, label %if.end.if.end23_crit_edge, !prof !180

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 815, i32 noundef 9, ptr noundef null) #5
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_s_stream(ptr nocapture noundef readonly %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %streaming = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %streaming, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool2 = icmp ne i32 %on, 0
  %lnot = xor i1 %tobool2, true
  %6 = zext i1 %lnot to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp = icmp eq i8 %5, %6
  %7 = and i1 %tobool2, %cmp
  br i1 %7, label %if.then5, label %entry.if.then13_crit_edge

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then5:                                         ; preds = %entry
  %win = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %win, align 4
  %cfmt_code = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %cfmt_code to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cfmt_code, align 4
  %call6 = tail call fastcc i32 @ov2640_set_params(ptr noundef %1, ptr noundef %9, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %if.then5.if.end16_crit_edge

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end11:                                         ; preds = %if.then5
  %hdl = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 2
  %call9 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %hdl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool12.not = icmp eq i32 %call9, 0
  br i1 %tobool12.not, label %if.end11.if.then13_crit_edge, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %entry.if.then13_crit_edge
  %frombool = zext i1 %tobool2 to i8
  %12 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %streaming, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge, %if.then5.if.end16_crit_edge
  %ret.031 = phi i32 [ 0, %if.then13 ], [ %call9, %if.end11.if.end16_crit_edge ], [ %call6, %if.then5.if.end16_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.031
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov2640_set_params(ptr noundef %client, ptr nocapture noundef readonly %win, i32 noundef %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %code, label %do.body40 [
    i32 4103, label %do.body
    i32 4104, label %do.body4
    i32 8200, label %do.body22
    i32 8199, label %do.body76
    i32 8201, label %do.body58
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !181

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #5
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then16)) #5
          to label %sw.epilog [label %if.then16], !srcloc !181

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug294, ptr noundef %dev17, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #5
  br label %sw.epilog

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then34)) #5
          to label %sw.epilog [label %if.then34], !srcloc !181

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug295, ptr noundef %dev35, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28) #5
  br label %sw.epilog

do.body40:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then52)) #5
          to label %sw.epilog [label %if.then52], !srcloc !181

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug296, ptr noundef %dev53, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28) #5
  br label %sw.epilog

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then70)) #5
          to label %sw.epilog [label %if.then70], !srcloc !181

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %dev71 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug297, ptr noundef %dev71, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.28) #5
  br label %sw.epilog

do.body76:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then88)) #5
          to label %sw.epilog [label %if.then88], !srcloc !181

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  %dev89 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug298, ptr noundef %dev89, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.28) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then88, %do.body76, %if.then70, %do.body58, %if.then52, %do.body40, %if.then34, %do.body22, %if.then16, %do.body4, %if.then, %do.body
  %selected_cfmt_regs.0 = phi ptr [ @ov2640_rgb565_be_regs, %if.then ], [ @ov2640_rgb565_le_regs, %if.then16 ], [ @ov2640_yuyv_regs, %if.then34 ], [ @ov2640_uyvy_regs, %if.then52 ], [ @ov2640_yuyv_regs, %if.then70 ], [ @ov2640_uyvy_regs, %if.then88 ], [ @ov2640_rgb565_be_regs, %do.body ], [ @ov2640_rgb565_le_regs, %do.body4 ], [ @ov2640_yuyv_regs, %do.body22 ], [ @ov2640_uyvy_regs, %do.body40 ], [ @ov2640_yuyv_regs, %do.body58 ], [ @ov2640_uyvy_regs, %do.body76 ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %sw.epilog
  %vals.addr.0.i.i = phi ptr [ @ov2640_reset.reset_seq, %sw.epilog ], [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %1 = ptrtoint ptr %vals.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vals.addr.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp.not.i.i = icmp eq i8 %2, -1
  br i1 %cmp.not.i.i, label %lor.rhs.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %while.cond.i.i
  %value.i.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp3.not.i.i = icmp eq i8 %4, -1
  br i1 %cmp3.not.i.i, label %if.end.i, label %lor.rhs.i.i.while.body.i.i_crit_edge

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  %value6.i.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %value6.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value6.i.i, align 1
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %2, i8 noundef zeroext %6) #5
  %cmp7.i.i = icmp slt i32 %call.i.i, 0
  %incdec.ptr.i.i = getelementptr %struct.regval_list, ptr %vals.addr.0.i.i, i32 1
  br i1 %cmp7.i.i, label %while.body.i.i.do.body.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

while.body.i.i.do.body.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i:                                         ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 5) #5
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %while.body.i.i.do.body.i_crit_edge
  %retval.0.i14.i = phi i32 [ 0, %if.end.i ], [ %call.i.i, %while.body.i.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_reset.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then5.i)) #5
          to label %ov2640_reset.exit [label %if.then5.i], !srcloc !181

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_reset.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i14.i) #5
  br label %ov2640_reset.exit

ov2640_reset.exit:                                ; preds = %if.then5.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then106)) #5
          to label %while.cond.i [label %if.then106], !srcloc !181

if.then106:                                       ; preds = %ov2640_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev107 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug299, ptr noundef %dev107, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28) #5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then106, %ov2640_reset.exit
  %vals.addr.0.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ], [ @ov2640_init_regs, %ov2640_reset.exit ], [ @ov2640_init_regs, %if.then106 ]
  %7 = ptrtoint ptr %vals.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vals.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.not.i = icmp eq i8 %8, -1
  br i1 %cmp.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %value.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp3.not.i = icmp eq i8 %10, -1
  br i1 %cmp3.not.i, label %do.body114, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %value6.i = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %value6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value6.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %8, i8 noundef zeroext %12) #5
  %cmp7.i = icmp slt i32 %call.i, 0
  %incdec.ptr.i = getelementptr %struct.regval_list, ptr %vals.addr.0.i, i32 1
  br i1 %cmp7.i, label %while.body.i.do.end173_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.do.end173_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end173

do.body114:                                       ; preds = %lor.rhs.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then126)) #5
          to label %while.cond.i232 [label %if.then126], !srcloc !181

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  %dev127 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %13 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %win, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug300, ptr noundef %dev127, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.28, ptr noundef %14) #5
  br label %while.cond.i232

while.cond.i232:                                  ; preds = %while.body.i240.while.cond.i232_crit_edge, %if.then126, %do.body114
  %vals.addr.0.i230 = phi ptr [ %incdec.ptr.i239, %while.body.i240.while.cond.i232_crit_edge ], [ @ov2640_size_change_preamble_regs, %do.body114 ], [ @ov2640_size_change_preamble_regs, %if.then126 ]
  %15 = ptrtoint ptr %vals.addr.0.i230 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vals.addr.0.i230, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp.not.i231 = icmp eq i8 %16, -1
  br i1 %cmp.not.i231, label %lor.rhs.i235, label %while.cond.i232.while.body.i240_crit_edge

while.cond.i232.while.body.i240_crit_edge:        ; preds = %while.cond.i232
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i240

lor.rhs.i235:                                     ; preds = %while.cond.i232
  %value.i233 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i230, i32 0, i32 1
  %17 = ptrtoint ptr %value.i233 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %value.i233, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp3.not.i234 = icmp eq i8 %18, -1
  br i1 %cmp3.not.i234, label %if.end134, label %lor.rhs.i235.while.body.i240_crit_edge

lor.rhs.i235.while.body.i240_crit_edge:           ; preds = %lor.rhs.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i240

while.body.i240:                                  ; preds = %lor.rhs.i235.while.body.i240_crit_edge, %while.cond.i232.while.body.i240_crit_edge
  %value6.i236 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i230, i32 0, i32 1
  %19 = ptrtoint ptr %value6.i236 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %value6.i236, align 1
  %call.i237 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %16, i8 noundef zeroext %20) #5
  %cmp7.i238 = icmp slt i32 %call.i237, 0
  %incdec.ptr.i239 = getelementptr %struct.regval_list, ptr %vals.addr.0.i230, i32 1
  br i1 %cmp7.i238, label %while.body.i240.do.end173_crit_edge, label %while.body.i240.while.cond.i232_crit_edge

while.body.i240.while.cond.i232_crit_edge:        ; preds = %while.body.i240
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i232

while.body.i240.do.end173_crit_edge:              ; preds = %while.body.i240
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end173

if.end134:                                        ; preds = %lor.rhs.i235
  %regs = getelementptr inbounds %struct.ov2640_win_size, ptr %win, i32 0, i32 3
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  br label %while.cond.i245

while.cond.i245:                                  ; preds = %while.body.i253.while.cond.i245_crit_edge, %if.end134
  %vals.addr.0.i243 = phi ptr [ %22, %if.end134 ], [ %incdec.ptr.i252, %while.body.i253.while.cond.i245_crit_edge ]
  %23 = ptrtoint ptr %vals.addr.0.i243 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vals.addr.0.i243, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp.not.i244 = icmp eq i8 %24, -1
  br i1 %cmp.not.i244, label %lor.rhs.i248, label %while.cond.i245.while.body.i253_crit_edge

while.cond.i245.while.body.i253_crit_edge:        ; preds = %while.cond.i245
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i253

lor.rhs.i248:                                     ; preds = %while.cond.i245
  %value.i246 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i243, i32 0, i32 1
  %25 = ptrtoint ptr %value.i246 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %value.i246, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp3.not.i247 = icmp eq i8 %26, -1
  br i1 %cmp3.not.i247, label %do.body139, label %lor.rhs.i248.while.body.i253_crit_edge

lor.rhs.i248.while.body.i253_crit_edge:           ; preds = %lor.rhs.i248
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i253

while.body.i253:                                  ; preds = %lor.rhs.i248.while.body.i253_crit_edge, %while.cond.i245.while.body.i253_crit_edge
  %value6.i249 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i243, i32 0, i32 1
  %27 = ptrtoint ptr %value6.i249 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %value6.i249, align 1
  %call.i250 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %24, i8 noundef zeroext %28) #5
  %cmp7.i251 = icmp slt i32 %call.i250, 0
  %incdec.ptr.i252 = getelementptr %struct.regval_list, ptr %vals.addr.0.i243, i32 1
  br i1 %cmp7.i251, label %while.body.i253.do.end173_crit_edge, label %while.body.i253.while.cond.i245_crit_edge

while.body.i253.while.cond.i245_crit_edge:        ; preds = %while.body.i253
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i245

while.body.i253.do.end173_crit_edge:              ; preds = %while.body.i253
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end173

do.body139:                                       ; preds = %lor.rhs.i248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_set_params.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then151)) #5
          to label %while.cond.i258 [label %if.then151], !srcloc !181

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  %dev152 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_set_params.__UNIQUE_ID_ddebug301, ptr noundef %dev152, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.28) #5
  br label %while.cond.i258

while.cond.i258:                                  ; preds = %while.body.i266.while.cond.i258_crit_edge, %if.then151, %do.body139
  %vals.addr.0.i256 = phi ptr [ %incdec.ptr.i265, %while.body.i266.while.cond.i258_crit_edge ], [ @ov2640_format_change_preamble_regs, %do.body139 ], [ @ov2640_format_change_preamble_regs, %if.then151 ]
  %29 = ptrtoint ptr %vals.addr.0.i256 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vals.addr.0.i256, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp.not.i257 = icmp eq i8 %30, -1
  br i1 %cmp.not.i257, label %lor.rhs.i261, label %while.cond.i258.while.body.i266_crit_edge

while.cond.i258.while.body.i266_crit_edge:        ; preds = %while.cond.i258
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i266

lor.rhs.i261:                                     ; preds = %while.cond.i258
  %value.i259 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i256, i32 0, i32 1
  %31 = ptrtoint ptr %value.i259 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %value.i259, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp3.not.i260 = icmp eq i8 %32, -1
  br i1 %cmp3.not.i260, label %lor.rhs.i261.while.cond.i271_crit_edge, label %lor.rhs.i261.while.body.i266_crit_edge

lor.rhs.i261.while.body.i266_crit_edge:           ; preds = %lor.rhs.i261
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i266

lor.rhs.i261.while.cond.i271_crit_edge:           ; preds = %lor.rhs.i261
  br label %while.cond.i271

while.body.i266:                                  ; preds = %lor.rhs.i261.while.body.i266_crit_edge, %while.cond.i258.while.body.i266_crit_edge
  %value6.i262 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i256, i32 0, i32 1
  %33 = ptrtoint ptr %value6.i262 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %value6.i262, align 1
  %call.i263 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %30, i8 noundef zeroext %34) #5
  %cmp7.i264 = icmp slt i32 %call.i263, 0
  %incdec.ptr.i265 = getelementptr %struct.regval_list, ptr %vals.addr.0.i256, i32 1
  br i1 %cmp7.i264, label %while.body.i266.do.end173_crit_edge, label %while.body.i266.while.cond.i258_crit_edge

while.body.i266.while.cond.i258_crit_edge:        ; preds = %while.body.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i258

while.body.i266.do.end173_crit_edge:              ; preds = %while.body.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end173

while.cond.i271:                                  ; preds = %while.body.i279.while.cond.i271_crit_edge, %lor.rhs.i261.while.cond.i271_crit_edge
  %vals.addr.0.i269 = phi ptr [ %incdec.ptr.i278, %while.body.i279.while.cond.i271_crit_edge ], [ %selected_cfmt_regs.0, %lor.rhs.i261.while.cond.i271_crit_edge ]
  %35 = ptrtoint ptr %vals.addr.0.i269 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vals.addr.0.i269, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.not.i270 = icmp eq i8 %36, -1
  br i1 %cmp.not.i270, label %lor.rhs.i274, label %while.cond.i271.while.body.i279_crit_edge

while.cond.i271.while.body.i279_crit_edge:        ; preds = %while.cond.i271
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i279

lor.rhs.i274:                                     ; preds = %while.cond.i271
  %value.i272 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i269, i32 0, i32 1
  %37 = ptrtoint ptr %value.i272 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %value.i272, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %cmp3.not.i273 = icmp eq i8 %38, -1
  br i1 %cmp3.not.i273, label %if.end163, label %lor.rhs.i274.while.body.i279_crit_edge

lor.rhs.i274.while.body.i279_crit_edge:           ; preds = %lor.rhs.i274
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i279

while.body.i279:                                  ; preds = %lor.rhs.i274.while.body.i279_crit_edge, %while.cond.i271.while.body.i279_crit_edge
  %value6.i275 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i269, i32 0, i32 1
  %39 = ptrtoint ptr %value6.i275 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %value6.i275, align 1
  %call.i276 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %36, i8 noundef zeroext %40) #5
  %cmp7.i277 = icmp slt i32 %call.i276, 0
  %incdec.ptr.i278 = getelementptr %struct.regval_list, ptr %vals.addr.0.i269, i32 1
  br i1 %cmp7.i277, label %while.body.i279.do.end173_crit_edge, label %while.body.i279.while.cond.i271_crit_edge

while.body.i279.while.cond.i271_crit_edge:        ; preds = %while.body.i279
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i271

while.body.i279.do.end173_crit_edge:              ; preds = %while.body.i279
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end173

if.end163:                                        ; preds = %lor.rhs.i274
  %call.i282 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %cmp.i = icmp slt i32 %call.i282, 0
  br i1 %cmp.i, label %if.end163.do.end173_crit_edge, label %ov2640_mask_set.exit

if.end163.do.end173_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end173

ov2640_mask_set.exit:                             ; preds = %if.end163
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %code)
  %cmp164 = icmp eq i32 %code, 8201
  call void @__sanitizer_cov_trace_const_cmp4(i32 8199, i32 %code)
  %cmp165 = icmp eq i32 %code, 8199
  %41 = or i1 %cmp164, %cmp165
  %42 = select i1 %41, i8 16, i8 0
  %43 = trunc i32 %call.i282 to i8
  %44 = and i8 %43, -17
  %conv4.i = or i8 %44, %42
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -62, i8 noundef zeroext %conv4.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp167 = icmp slt i32 %call5.i, 0
  br i1 %cmp167, label %ov2640_mask_set.exit.do.end173_crit_edge, label %ov2640_mask_set.exit.cleanup_crit_edge

ov2640_mask_set.exit.cleanup_crit_edge:           ; preds = %ov2640_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ov2640_mask_set.exit.do.end173_crit_edge:         ; preds = %ov2640_mask_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end173

do.end173:                                        ; preds = %ov2640_mask_set.exit.do.end173_crit_edge, %if.end163.do.end173_crit_edge, %while.body.i279.do.end173_crit_edge, %while.body.i266.do.end173_crit_edge, %while.body.i253.do.end173_crit_edge, %while.body.i240.do.end173_crit_edge, %while.body.i.do.end173_crit_edge
  %ret.0 = phi i32 [ %call5.i, %ov2640_mask_set.exit.do.end173_crit_edge ], [ %call.i282, %if.end163.do.end173_crit_edge ], [ %call.i276, %while.body.i279.do.end173_crit_edge ], [ %call.i263, %while.body.i266.do.end173_crit_edge ], [ %call.i250, %while.body.i253.do.end173_crit_edge ], [ %call.i237, %while.body.i240.do.end173_crit_edge ], [ %call.i, %while.body.i.do.end173_crit_edge ]
  %dev174 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev174, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.28, i32 noundef %ret.0) #8
  br label %while.cond.i.i287

while.cond.i.i287:                                ; preds = %while.body.i.i295.while.cond.i.i287_crit_edge, %do.end173
  %vals.addr.0.i.i285 = phi ptr [ @ov2640_reset.reset_seq, %do.end173 ], [ %incdec.ptr.i.i294, %while.body.i.i295.while.cond.i.i287_crit_edge ]
  %45 = ptrtoint ptr %vals.addr.0.i.i285 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vals.addr.0.i.i285, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %cmp.not.i.i286 = icmp eq i8 %46, -1
  br i1 %cmp.not.i.i286, label %lor.rhs.i.i290, label %while.cond.i.i287.while.body.i.i295_crit_edge

while.cond.i.i287.while.body.i.i295_crit_edge:    ; preds = %while.cond.i.i287
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i295

lor.rhs.i.i290:                                   ; preds = %while.cond.i.i287
  %value.i.i288 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i.i285, i32 0, i32 1
  %47 = ptrtoint ptr %value.i.i288 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %value.i.i288, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp3.not.i.i289 = icmp eq i8 %48, -1
  br i1 %cmp3.not.i.i289, label %if.end.i296, label %lor.rhs.i.i290.while.body.i.i295_crit_edge

lor.rhs.i.i290.while.body.i.i295_crit_edge:       ; preds = %lor.rhs.i.i290
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i295

while.body.i.i295:                                ; preds = %lor.rhs.i.i290.while.body.i.i295_crit_edge, %while.cond.i.i287.while.body.i.i295_crit_edge
  %value6.i.i291 = getelementptr inbounds %struct.regval_list, ptr %vals.addr.0.i.i285, i32 0, i32 1
  %49 = ptrtoint ptr %value6.i.i291 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %value6.i.i291, align 1
  %call.i.i292 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %46, i8 noundef zeroext %50) #5
  %cmp7.i.i293 = icmp slt i32 %call.i.i292, 0
  %incdec.ptr.i.i294 = getelementptr %struct.regval_list, ptr %vals.addr.0.i.i285, i32 1
  br i1 %cmp7.i.i293, label %while.body.i.i295.do.body.i298_crit_edge, label %while.body.i.i295.while.cond.i.i287_crit_edge

while.body.i.i295.while.cond.i.i287_crit_edge:    ; preds = %while.body.i.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i287

while.body.i.i295.do.body.i298_crit_edge:         ; preds = %while.body.i.i295
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i298

if.end.i296:                                      ; preds = %lor.rhs.i.i290
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 5) #5
  br label %do.body.i298

do.body.i298:                                     ; preds = %if.end.i296, %while.body.i.i295.do.body.i298_crit_edge
  %retval.0.i14.i297 = phi i32 [ 0, %if.end.i296 ], [ %call.i.i292, %while.body.i.i295.do.body.i298_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov2640_reset.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov2640_set_params, %if.then5.i300)) #5
          to label %cleanup [label %if.then5.i300], !srcloc !181

if.then5.i300:                                    ; preds = %do.body.i298
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov2640_reset.__UNIQUE_ID_ddebug292, ptr noundef %dev174, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i14.i297) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i300, %do.body.i298, %ov2640_mask_set.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ov2640_mask_set.exit.cleanup_crit_edge ], [ %ret.0, %do.body.i298 ], [ %ret.0, %if.then5.i300 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_init_cfg(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  br i1 %cmp.i, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !180

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 800, ptr %3, align 4
  %height3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 600, ptr %height3, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8198, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field, align 4
  %9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %9, align 4
  %quantization = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %xfer_func, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2640_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ugt i32 %3, 5
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [6 x i32], ptr @ov2640_codes, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code2 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code2, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i = icmp eq i16 %9, 0
  br i1 %cmp.i, label %do.end.i, label %if.then3.v4l2_subdev_get_try_format.exit_crit_edge, !prof !180

if.then3.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then3.v4l2_subdev_get_try_format.exit_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %12 = call ptr @memcpy(ptr %format1, ptr %11, i32 48)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %win = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %win, align 4
  %width = getelementptr inbounds %struct.ov2640_win_size, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %17 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format1, align 4
  %18 = load ptr, ptr %win, align 4
  %height = getelementptr inbounds %struct.ov2640_win_size, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %height9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height9, align 4
  %cfmt_code = getelementptr inbounds %struct.ov2640_priv, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %cfmt_code to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfmt_code, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %field, align 4
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %27, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %29 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %30 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %xfer_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %v4l2_subdev_get_try_format.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup19_crit_edge

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup19

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.ov2640_priv, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %7)
  %cmp2.not.i = icmp ugt i32 %7, 176
  br i1 %cmp2.not.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %9)
  %cmp5.not.i = icmp ugt i32 %9, 144
  br i1 %cmp5.not.i, label %land.lhs.true.i.land.lhs.true.1.i_crit_edge, label %land.lhs.true.i.cleanup.split.loop.exit13.i_crit_edge

land.lhs.true.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

land.lhs.true.i.land.lhs.true.1.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.1.i

for.inc.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %7)
  %cmp2.not.1.i = icmp ugt i32 %7, 320
  br i1 %cmp2.not.1.i, label %for.inc.1.i, label %for.inc.i.land.lhs.true.1.i_crit_edge

for.inc.i.land.lhs.true.1.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i.land.lhs.true.1.i_crit_edge, %land.lhs.true.i.land.lhs.true.1.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %9)
  %cmp5.not.1.i = icmp ugt i32 %9, 240
  br i1 %cmp5.not.1.i, label %land.lhs.true.1.i.land.lhs.true.2.i_crit_edge, label %land.lhs.true.1.i.cleanup.split.loop.exit13.i_crit_edge

land.lhs.true.1.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

land.lhs.true.1.i.land.lhs.true.2.i_crit_edge:    ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.2.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %7)
  %cmp2.not.2.i = icmp ugt i32 %7, 352
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.land.lhs.true.2.i_crit_edge

for.inc.1.i.land.lhs.true.2.i_crit_edge:          ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i.land.lhs.true.2.i_crit_edge, %land.lhs.true.1.i.land.lhs.true.2.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %9)
  %cmp5.not.2.i = icmp ugt i32 %9, 288
  br i1 %cmp5.not.2.i, label %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge, label %land.lhs.true.2.i.cleanup.split.loop.exit13.i_crit_edge

land.lhs.true.2.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

land.lhs.true.2.i.land.lhs.true.3.i_crit_edge:    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.3.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %7)
  %cmp2.not.3.i = icmp ugt i32 %7, 640
  br i1 %cmp2.not.3.i, label %for.inc.3.i, label %for.inc.2.i.land.lhs.true.3.i_crit_edge

for.inc.2.i.land.lhs.true.3.i_crit_edge:          ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i.land.lhs.true.3.i_crit_edge, %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %9)
  %cmp5.not.3.i = icmp ugt i32 %9, 480
  br i1 %cmp5.not.3.i, label %land.lhs.true.3.i.land.lhs.true.4.i_crit_edge, label %land.lhs.true.3.i.cleanup.split.loop.exit13.i_crit_edge

land.lhs.true.3.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

land.lhs.true.3.i.land.lhs.true.4.i_crit_edge:    ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.4.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %7)
  %cmp2.not.4.i = icmp ugt i32 %7, 800
  br i1 %cmp2.not.4.i, label %for.inc.4.i, label %for.inc.3.i.land.lhs.true.4.i_crit_edge

for.inc.3.i.land.lhs.true.4.i_crit_edge:          ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i.land.lhs.true.4.i_crit_edge, %land.lhs.true.3.i.land.lhs.true.4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %9)
  %cmp5.not.4.i = icmp ugt i32 %9, 600
  br i1 %cmp5.not.4.i, label %land.lhs.true.4.i.land.lhs.true.5.i_crit_edge, label %land.lhs.true.4.i.cleanup.split.loop.exit13.i_crit_edge

land.lhs.true.4.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

land.lhs.true.4.i.land.lhs.true.5.i_crit_edge:    ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.5.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %7)
  %cmp2.not.5.i = icmp ugt i32 %7, 1024
  br i1 %cmp2.not.5.i, label %for.inc.5.i, label %for.inc.4.i.land.lhs.true.5.i_crit_edge

for.inc.4.i.land.lhs.true.5.i_crit_edge:          ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i.land.lhs.true.5.i_crit_edge, %land.lhs.true.4.i.land.lhs.true.5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %9)
  %cmp5.not.5.i = icmp ugt i32 %9, 768
  br i1 %cmp5.not.5.i, label %land.lhs.true.5.i.land.lhs.true.6.i_crit_edge, label %land.lhs.true.5.i.cleanup.split.loop.exit13.i_crit_edge

land.lhs.true.5.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

land.lhs.true.5.i.land.lhs.true.6.i_crit_edge:    ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.6.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %7)
  %cmp2.not.6.i = icmp ugt i32 %7, 1280
  br i1 %cmp2.not.6.i, label %for.inc.6.i, label %for.inc.5.i.land.lhs.true.6.i_crit_edge

for.inc.5.i.land.lhs.true.6.i_crit_edge:          ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i.land.lhs.true.6.i_crit_edge, %land.lhs.true.5.i.land.lhs.true.6.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %9)
  %cmp5.not.6.i = icmp ugt i32 %9, 1024
  br i1 %cmp5.not.6.i, label %land.lhs.true.7.i, label %land.lhs.true.6.i.cleanup.split.loop.exit13.i_crit_edge

land.lhs.true.6.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %7)
  %cmp2.not.7.i = icmp ugt i32 %7, 1600
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %9)
  %cmp5.not.7.i = icmp ugt i32 %9, 1200
  %or.cond.i = or i1 %cmp2.not.7.i, %cmp5.not.7.i
  br i1 %or.cond.i, label %for.inc.6.i.ov2640_select_win.exit_crit_edge, label %for.inc.6.i.cleanup.split.loop.exit13.i_crit_edge

for.inc.6.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

for.inc.6.i.ov2640_select_win.exit_crit_edge:     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ov2640_select_win.exit

land.lhs.true.7.i:                                ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %9)
  %cmp5.not.7.old.i = icmp ugt i32 %9, 1200
  br i1 %cmp5.not.7.old.i, label %land.lhs.true.7.i.ov2640_select_win.exit_crit_edge, label %land.lhs.true.7.i.cleanup.split.loop.exit13.i_crit_edge

land.lhs.true.7.i.cleanup.split.loop.exit13.i_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit13.i

land.lhs.true.7.i.ov2640_select_win.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ov2640_select_win.exit

cleanup.split.loop.exit13.i:                      ; preds = %land.lhs.true.7.i.cleanup.split.loop.exit13.i_crit_edge, %for.inc.6.i.cleanup.split.loop.exit13.i_crit_edge, %land.lhs.true.6.i.cleanup.split.loop.exit13.i_crit_edge, %land.lhs.true.5.i.cleanup.split.loop.exit13.i_crit_edge, %land.lhs.true.4.i.cleanup.split.loop.exit13.i_crit_edge, %land.lhs.true.3.i.cleanup.split.loop.exit13.i_crit_edge, %land.lhs.true.2.i.cleanup.split.loop.exit13.i_crit_edge, %land.lhs.true.1.i.cleanup.split.loop.exit13.i_crit_edge, %land.lhs.true.i.cleanup.split.loop.exit13.i_crit_edge
  %i.015.lcssa.i = phi i32 [ 0, %land.lhs.true.i.cleanup.split.loop.exit13.i_crit_edge ], [ 1, %land.lhs.true.1.i.cleanup.split.loop.exit13.i_crit_edge ], [ 2, %land.lhs.true.2.i.cleanup.split.loop.exit13.i_crit_edge ], [ 3, %land.lhs.true.3.i.cleanup.split.loop.exit13.i_crit_edge ], [ 4, %land.lhs.true.4.i.cleanup.split.loop.exit13.i_crit_edge ], [ 5, %land.lhs.true.5.i.cleanup.split.loop.exit13.i_crit_edge ], [ 6, %land.lhs.true.6.i.cleanup.split.loop.exit13.i_crit_edge ], [ 7, %land.lhs.true.7.i.cleanup.split.loop.exit13.i_crit_edge ], [ 7, %for.inc.6.i.cleanup.split.loop.exit13.i_crit_edge ]
  %arrayidx.le.i = getelementptr [8 x %struct.ov2640_win_size], ptr @ov2640_supported_win_sizes, i32 0, i32 %i.015.lcssa.i
  br label %ov2640_select_win.exit

ov2640_select_win.exit:                           ; preds = %cleanup.split.loop.exit13.i, %land.lhs.true.7.i.ov2640_select_win.exit_crit_edge, %for.inc.6.i.ov2640_select_win.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.le.i, %cleanup.split.loop.exit13.i ], [ getelementptr inbounds ([8 x %struct.ov2640_win_size], ptr @ov2640_supported_win_sizes, i32 0, i32 7), %land.lhs.true.7.i.ov2640_select_win.exit_crit_edge ], [ getelementptr inbounds ([8 x %struct.ov2640_win_size], ptr @ov2640_supported_win_sizes, i32 0, i32 7), %for.inc.6.i.ov2640_select_win.exit_crit_edge ]
  %width4 = getelementptr inbounds %struct.ov2640_win_size, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width4, align 4
  %12 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %format1, align 4
  %height6 = getelementptr inbounds %struct.ov2640_win_size, ptr %retval.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %height6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height6, align 4
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %colorspace, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %18, align 4
  %quantization = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %quantization to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %quantization, align 2
  %xfer_func = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %21 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %xfer_func, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %23, label %sw.default [
    i32 4103, label %ov2640_select_win.exit.sw.epilog_crit_edge
    i32 4104, label %ov2640_select_win.exit.sw.epilog_crit_edge45
    i32 8200, label %ov2640_select_win.exit.sw.epilog_crit_edge46
    i32 8198, label %ov2640_select_win.exit.sw.epilog_crit_edge47
    i32 8201, label %ov2640_select_win.exit.sw.epilog_crit_edge48
    i32 8199, label %ov2640_select_win.exit.sw.epilog_crit_edge49
  ]

ov2640_select_win.exit.sw.epilog_crit_edge49:     ; preds = %ov2640_select_win.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

ov2640_select_win.exit.sw.epilog_crit_edge48:     ; preds = %ov2640_select_win.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

ov2640_select_win.exit.sw.epilog_crit_edge47:     ; preds = %ov2640_select_win.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

ov2640_select_win.exit.sw.epilog_crit_edge46:     ; preds = %ov2640_select_win.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

ov2640_select_win.exit.sw.epilog_crit_edge45:     ; preds = %ov2640_select_win.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

ov2640_select_win.exit.sw.epilog_crit_edge:       ; preds = %ov2640_select_win.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %ov2640_select_win.exit
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8198, ptr %code, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %ov2640_select_win.exit.sw.epilog_crit_edge, %ov2640_select_win.exit.sw.epilog_crit_edge45, %ov2640_select_win.exit.sw.epilog_crit_edge46, %ov2640_select_win.exit.sw.epilog_crit_edge47, %ov2640_select_win.exit.sw.epilog_crit_edge48, %ov2640_select_win.exit.sw.epilog_crit_edge49
  %26 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.epilog
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %streaming = getelementptr inbounds %struct.ov2640_priv, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %streaming, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool12.not = icmp eq i8 %31, 0
  br i1 %tobool12.not, label %if.end14, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %win15 = getelementptr inbounds %struct.ov2640_priv, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %win15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i, ptr %win15, align 4
  %33 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %code, align 4
  %cfmt_code = getelementptr inbounds %struct.ov2640_priv, ptr %29, i32 0, i32 3
  %35 = ptrtoint ptr %cfmt_code to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cfmt_code, align 4
  br label %out

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sd_state, align 4
  %38 = call ptr @memcpy(ptr %37, ptr %format1, i32 48)
  br label %out

out:                                              ; preds = %if.else, %if.end14, %if.then9.out_crit_edge
  %ret.1 = phi i32 [ 0, %if.else ], [ 0, %if.end14 ], [ -16, %if.then9.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup19

cleanup19:                                        ; preds = %out, %entry.cleanup19_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -22, %entry.cleanup19_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov2640_get_selection(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %sel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 0, label %if.end.sw.bb_crit_edge9
  ]

if.end.sw.bb_crit_edge9:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge9
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %5 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1600, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1200, ptr %height, align 4
  br label %return

return:                                           ; preds = %sw.bb, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov2640_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -76
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %power_count = getelementptr inbounds %struct.ov2640_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -1, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %9, label %if.end4.cleanup_crit_edge [
    i32 9963797, label %sw.bb
    i32 9963796, label %sw.bb8
    i32 10422531, label %sw.bb14
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val5, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb8:                                           ; preds = %if.end4
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val9, align 4
  %call.i35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i36 = icmp slt i32 %call.i35, 0
  br i1 %cmp.i36, label %sw.bb8.cleanup_crit_edge, label %sw.bb8.cleanup.sink.split_crit_edge

sw.bb8.cleanup.sink.split_crit_edge:              ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb14:                                          ; preds = %if.end4
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val15, align 4
  %call.i43 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i44 = icmp slt i32 %call.i43, 0
  br i1 %cmp.i44, label %sw.bb14.cleanup_crit_edge, label %sw.bb14.cleanup.sink.split_crit_edge

sw.bb14.cleanup.sink.split_crit_edge:             ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb14.cleanup.sink.split_crit_edge, %sw.bb8.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink55 = phi i32 [ %12, %sw.bb.cleanup.sink.split_crit_edge ], [ %14, %sw.bb8.cleanup.sink.split_crit_edge ], [ %16, %sw.bb14.cleanup.sink.split_crit_edge ]
  %.sink54 = phi i8 [ 80, %sw.bb.cleanup.sink.split_crit_edge ], [ -128, %sw.bb8.cleanup.sink.split_crit_edge ], [ 2, %sw.bb14.cleanup.sink.split_crit_edge ]
  %call.i43.sink = phi i32 [ %call.i, %sw.bb.cleanup.sink.split_crit_edge ], [ %call.i35, %sw.bb8.cleanup.sink.split_crit_edge ], [ %call.i43, %sw.bb14.cleanup.sink.split_crit_edge ]
  %.sink53 = phi i8 [ -81, %sw.bb.cleanup.sink.split_crit_edge ], [ 127, %sw.bb8.cleanup.sink.split_crit_edge ], [ -3, %sw.bb14.cleanup.sink.split_crit_edge ]
  %.sink = phi i8 [ 4, %sw.bb.cleanup.sink.split_crit_edge ], [ 4, %sw.bb8.cleanup.sink.split_crit_edge ], [ 18, %sw.bb14.cleanup.sink.split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink55)
  %tobool16.not = icmp eq i32 %.sink55, 0
  %conv18 = select i1 %tobool16.not, i8 0, i8 %.sink54
  %17 = trunc i32 %call.i43.sink to i8
  %18 = and i8 %.sink53, %17
  %conv4.i46 = or i8 %18, %conv18
  %call5.i47 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %.sink, i8 noundef zeroext %conv4.i46) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb14.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i35, %sw.bb8.cleanup_crit_edge ], [ %call.i43, %sw.bb14.cleanup_crit_edge ], [ %call5.i47, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !128, !130, !132, !134, !136, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_ov2640__306_1309_ov2640_i2c_driver_init6, !1, !"__initcall__kmod_ov2640__306_1309_ov2640_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov2640.c", i32 1309, i32 1}
!2 = !{ptr @__exitcall_ov2640_i2c_driver_exit, !1, !"__exitcall_ov2640_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description307, !4, !"__UNIQUE_ID_description307", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov2640.c", i32 1311, i32 1}
!5 = !{ptr @__UNIQUE_ID_author308, !6, !"__UNIQUE_ID_author308", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov2640.c", i32 1312, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov2640.c", i32 1313, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov2640.c", i32 1301, i32 11}
!12 = !{ptr @ov2640_i2c_driver, !13, !"ov2640_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov2640.c", i32 1299, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov2640.c", i32 1200, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov2640_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov2640_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov2640.c", i32 1210, i32 42}
!24 = !{ptr @ov2640_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ov2640.c", i32 1228, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ov2640_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/ov2640.c", i32 1229, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ov2640.c", i32 1260, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ov2640_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ov2640_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ov2640.c", i32 1160, i32 60}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/ov2640.c", i32 1164, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ov2640_probe_dt.__UNIQUE_ID_ddebug302, !38, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/ov2640.c", i32 1168, i32 3}
!43 = !{ptr @ov2640_probe_dt.__UNIQUE_ID_ddebug303, !42, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/ov2640.c", i32 1174, i32 58}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ov2640.c", i32 1178, i32 3}
!48 = !{ptr @ov2640_probe_dt.__UNIQUE_ID_ddebug304, !47, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ov2640.c", i32 1182, i32 3}
!51 = !{ptr @ov2640_probe_dt.__UNIQUE_ID_ddebug305, !50, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ov2640.c", i32 580, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov2640.c", i32 581, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/ov2640.c", i32 582, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov2640.c", i32 583, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov2640.c", i32 584, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov2640.c", i32 585, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov2640.c", i32 586, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov2640.c", i32 587, i32 2}
!68 = !{ptr @ov2640_supported_win_sizes, !69, !"ov2640_supported_win_sizes", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov2640.c", i32 579, i32 37}
!70 = !{ptr @ov2640_qcif_regs, !71, !"ov2640_qcif_regs", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov2640.c", i32 531, i32 33}
!72 = !{ptr @ov2640_qvga_regs, !73, !"ov2640_qvga_regs", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov2640.c", i32 536, i32 33}
!74 = !{ptr @ov2640_cif_regs, !75, !"ov2640_cif_regs", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov2640.c", i32 541, i32 33}
!76 = !{ptr @ov2640_vga_regs, !77, !"ov2640_vga_regs", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov2640.c", i32 546, i32 33}
!78 = !{ptr @ov2640_svga_regs, !79, !"ov2640_svga_regs", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov2640.c", i32 551, i32 33}
!80 = !{ptr @ov2640_xga_regs, !81, !"ov2640_xga_regs", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov2640.c", i32 556, i32 33}
!82 = !{ptr @ov2640_sxga_regs, !83, !"ov2640_sxga_regs", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov2640.c", i32 562, i32 33}
!84 = !{ptr @ov2640_uxga_regs, !85, !"ov2640_uxga_regs", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov2640.c", i32 569, i32 33}
!86 = !{ptr @ov2640_subdev_ops, !87, !"ov2640_subdev_ops", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ov2640.c", i32 1148, i32 37}
!88 = !{ptr @ov2640_subdev_core_ops, !89, !"ov2640_subdev_core_ops", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov2640.c", i32 1125, i32 42}
!90 = !{ptr @ov2640_subdev_video_ops, !91, !"ov2640_subdev_video_ops", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov2640.c", i32 1144, i32 43}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov2640.c", i32 844, i32 3}
!94 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug293, !93, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov2640.c", i32 848, i32 3}
!98 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug294, !97, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/ov2640.c", i32 852, i32 3}
!101 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug295, !100, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov2640.c", i32 857, i32 3}
!104 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug296, !103, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/ov2640.c", i32 861, i32 3}
!107 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug297, !106, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ov2640.c", i32 865, i32 3}
!110 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug298, !109, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov2640.c", i32 874, i32 2}
!113 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug299, !112, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/ov2640.c", i32 880, i32 2}
!116 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug300, !115, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov2640.c", i32 891, i32 2}
!119 = !{ptr @ov2640_set_params.__UNIQUE_ID_ddebug301, !118, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/ov2640.c", i32 909, i32 2}
!122 = !{ptr @ov2640_set_params._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ov2640_set_params._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ov2640_rgb565_be_regs, !125, !"ov2640_rgb565_be_regs", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov2640.c", i32 620, i32 33}
!126 = !{ptr @ov2640_rgb565_le_regs, !127, !"ov2640_rgb565_le_regs", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov2640.c", i32 628, i32 33}
!128 = !{ptr @ov2640_yuyv_regs, !129, !"ov2640_yuyv_regs", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ov2640.c", i32 599, i32 33}
!130 = !{ptr @ov2640_uyvy_regs, !131, !"ov2640_uyvy_regs", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/ov2640.c", i32 610, i32 33}
!132 = !{ptr @ov2640_reset.reset_seq, !133, !"reset_seq", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov2640.c", i32 690, i32 34}
!134 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov2640.c", i32 702, i32 2}
!136 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ov2640_reset.__UNIQUE_ID_ddebug292, !135, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!138 = !{ptr @ov2640_init_regs, !139, !"ov2640_init_regs", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ov2640.c", i32 320, i32 33}
!140 = !{ptr @ov2640_size_change_preamble_regs, !141, !"ov2640_size_change_preamble_regs", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/ov2640.c", i32 502, i32 33}
!142 = !{ptr @ov2640_format_change_preamble_regs, !143, !"ov2640_format_change_preamble_regs", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov2640.c", i32 593, i32 33}
!144 = !{ptr @ov2640_subdev_pad_ops, !145, !"ov2640_subdev_pad_ops", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ov2640.c", i32 1136, i32 41}
!146 = !{ptr @.str.41, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!148 = !{ptr @ov2640_codes, !149, !"ov2640_codes", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/ov2640.c", i32 636, i32 12}
!150 = !{ptr @ov2640_ctrl_ops, !151, !"ov2640_ctrl_ops", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ov2640.c", i32 1121, i32 35}
!152 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/ov2640.c", i32 707, i32 2}
!154 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/ov2640.c", i32 708, i32 2}
!156 = !{ptr @ov2640_test_pattern_menu, !157, !"ov2640_test_pattern_menu", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/ov2640.c", i32 706, i32 27}
!158 = !{ptr @.str.44, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/ov2640.c", i32 1106, i32 3}
!160 = !{ptr @.str.45, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ov2640_video_probe._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ov2640_video_probe._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.47, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/ov2640.c", i32 1112, i32 2}
!165 = !{ptr @ov2640_video_probe._entry.46, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ov2640_video_probe._entry_ptr.48, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @ov2640_of_match, !168, !"ov2640_of_match", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/ov2640.c", i32 1293, i32 34}
!169 = !{ptr @ov2640_id, !170, !"ov2640_id", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/ov2640.c", i32 1287, i32 35}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{i64 2148989895, i64 2148989900, i64 2148989913, i64 2148989957, i64 2148989991, i64 2148990012}
!182 = !{i8 0, i8 2}
