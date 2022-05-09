; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/imx274.c_pt.bc'
source_filename = "../drivers/media/i2c/imx274.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx274_mode = type { ptr, i8, i8, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.reg_8 = type { i16, i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.stimx274 = type { %struct.v4l2_subdev, %struct.media_pad, ptr, %struct.imx274_ctrls, %struct.v4l2_rect, %struct.v4l2_mbus_framefmt, %struct.v4l2_fract, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, %struct.mutex, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.imx274_ctrls = type { %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_fract = type { i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }

@__initcall__kmod_imx274__332_2180_imx274_i2c_driver_init6 = internal global ptr @imx274_i2c_driver_init, section ".initcall6.init", align 4
@imx274_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @imx274_remove, ptr @imx274_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx274_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx274_pm_ops, ptr null, ptr null }, ptr @imx274_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_imx274_i2c_driver_exit = internal global ptr @imx274_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author333 = internal constant [50 x i8] c"imx274.author=Leon Luo <leonl@leopardimaging.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description334 = internal constant [51 x i8] c"imx274.description=IMX274 CMOS Image Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file335 = internal constant [37 x i8] c"imx274.file=drivers/media/i2c/imx274\00", section ".modinfo", align 1
@__UNIQUE_ID_license336 = internal constant [22 x i8] c"imx274.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IMX274\00", [25 x i8] zeroinitializer }, align 32
@imx274_of_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sony,imx274\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx274_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx274_power_off, ptr @imx274_power_on, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx274_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"IMX274\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@imx274_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&imx274->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inck\00", [27 x i8] zeroinitializer }, align 32
@imx274_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2020, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get power regulators, err: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx274_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/imx274.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx274_probe._entry_ptr = internal global ptr @imx274_probe._entry, section ".printk_index", align 4
@imx274_modes = internal constant { [4 x %struct.imx274_mode], [32 x i8] } { [4 x %struct.imx274_mode] [%struct.imx274_mode { ptr @imx274_mode1_3840x2160_raw10, i8 1, i8 1, i32 4550, i32 12, i32 60, i32 112 }, %struct.imx274_mode { ptr @imx274_mode3_1920x1080_raw10, i8 2, i8 2, i32 2310, i32 8, i32 120, i32 112 }, %struct.imx274_mode { ptr @imx274_mode5_1280x720_raw10, i8 3, i8 3, i32 2310, i32 8, i32 120, i32 112 }, %struct.imx274_mode { ptr @imx274_mode6_1280x540_raw10, i8 3, i8 4, i32 2310, i32 4, i32 120, i32 112 }], [32 x i8] zeroinitializer }, align 32
@imx274_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@imx274_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"imx274:2037:(&imx274_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@imx274_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 2040, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regmap init failed: %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@imx274_probe._entry_ptr.11 = internal global ptr @imx274_probe._entry.9, section ".printk_index", align 4
@imx274_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @imx274_video_ops, ptr null, ptr null, ptr null, ptr @imx274_pad_ops }, [32 x i8] zeroinitializer }, align 32
@imx274_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 2057, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s : media entity init Failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@imx274_probe._entry_ptr.14 = internal global ptr @imx274_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@imx274_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 2066, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Reset GPIO not setup in DT\00", [37 x i8] zeroinitializer }, align 32
@imx274_probe._entry_ptr.18 = internal global ptr @imx274_probe._entry.16, section ".printk_index", align 4
@imx274_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 2074, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s : imx274 power on failed\0A\00", [35 x i8] zeroinitializer }, align 32
@imx274_probe._entry_ptr.21 = internal global ptr @imx274_probe._entry.19, section ".printk_index", align 4
@imx274_probe._key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"imx274:2079:(&imx274->ctrls.handler)->_lock\00", [52 x i8] zeroinitializer }, align 32
@imx274_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 2081, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s : ctrl handler init Failed\0A\00", [33 x i8] zeroinitializer }, align 32
@imx274_probe._entry_ptr.26 = internal global ptr @imx274_probe._entry.24, section ".printk_index", align 4
@imx274_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @imx274_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tp_qmenu = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], [44 x i8] zeroinitializer }, align 32
@imx274_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 2125, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s : v4l2_async_register_subdev failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@imx274_probe._entry_ptr.29 = internal global ptr @imx274_probe._entry.27, section ".printk_index", align 4
@imx274_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 2133, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"imx274 : imx274 probe success !\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx274_probe._entry_ptr.33 = internal global ptr @imx274_probe._entry.30, section ".printk_index", align 4
@imx274_fwnode_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 1972, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Endpoint node not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx274_fwnode_parse\00", [44 x i8] zeroinitializer }, align 32
@imx274_fwnode_parse._entry_ptr = internal global ptr @imx274_fwnode_parse._entry, section ".printk_index", align 4
@imx274_fwnode_parse._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 1979, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported bus type, should be CSI2\0A\00", [58 x i8] zeroinitializer }, align 32
@imx274_fwnode_parse._entry_ptr.38 = internal global ptr @imx274_fwnode_parse._entry.36, section ".printk_index", align 4
@imx274_fwnode_parse._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.5, i32 1982, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Parsing endpoint node failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx274_fwnode_parse._entry_ptr.41 = internal global ptr @imx274_fwnode_parse._entry.39, section ".printk_index", align 4
@imx274_fwnode_parse._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.5, i32 1989, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid data lanes: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@imx274_fwnode_parse._entry_ptr.44 = internal global ptr @imx274_fwnode_parse._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddl\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdig\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vana\00", [27 x i8] zeroinitializer }, align 32
@imx274_mode1_3840x2160_raw10 = internal constant { [28 x %struct.reg_8], [48 x i8] } { [28 x %struct.reg_8] [%struct.reg_8 { i16 12292, i8 1 }, %struct.reg_8 { i16 12293, i8 1 }, %struct.reg_8 { i16 12294, i8 0 }, %struct.reg_8 { i16 12295, i8 -94 }, %struct.reg_8 { i16 12312, i8 -94 }, %struct.reg_8 { i16 12395, i8 5 }, %struct.reg_8 { i16 12514, i8 1 }, %struct.reg_8 { i16 12526, i8 1 }, %struct.reg_8 { i16 13122, i8 10 }, %struct.reg_8 { i16 13123, i8 0 }, %struct.reg_8 { i16 13124, i8 22 }, %struct.reg_8 { i16 13125, i8 0 }, %struct.reg_8 { i16 13222, i8 1 }, %struct.reg_8 { i16 13608, i8 14 }, %struct.reg_8 { i16 13652, i8 31 }, %struct.reg_8 { i16 13653, i8 1 }, %struct.reg_8 { i16 13654, i8 1 }, %struct.reg_8 { i16 13655, i8 1 }, %struct.reg_8 { i16 13656, i8 1 }, %struct.reg_8 { i16 13657, i8 0 }, %struct.reg_8 { i16 13658, i8 0 }, %struct.reg_8 { i16 13754, i8 14 }, %struct.reg_8 { i16 13930, i8 27 }, %struct.reg_8 { i16 13931, i8 26 }, %struct.reg_8 { i16 13932, i8 25 }, %struct.reg_8 { i16 13933, i8 23 }, %struct.reg_8 { i16 14913, i8 8 }, %struct.reg_8 { i16 1, i8 0 }], [48 x i8] zeroinitializer }, align 32
@imx274_mode3_1920x1080_raw10 = internal constant { [28 x %struct.reg_8], [48 x i8] } { [28 x %struct.reg_8] [%struct.reg_8 { i16 12292, i8 2 }, %struct.reg_8 { i16 12293, i8 33 }, %struct.reg_8 { i16 12294, i8 0 }, %struct.reg_8 { i16 12295, i8 -79 }, %struct.reg_8 { i16 12312, i8 -94 }, %struct.reg_8 { i16 12395, i8 5 }, %struct.reg_8 { i16 12514, i8 2 }, %struct.reg_8 { i16 12526, i8 1 }, %struct.reg_8 { i16 13122, i8 10 }, %struct.reg_8 { i16 13123, i8 0 }, %struct.reg_8 { i16 13124, i8 26 }, %struct.reg_8 { i16 13125, i8 0 }, %struct.reg_8 { i16 13222, i8 1 }, %struct.reg_8 { i16 13608, i8 14 }, %struct.reg_8 { i16 13652, i8 0 }, %struct.reg_8 { i16 13653, i8 1 }, %struct.reg_8 { i16 13654, i8 1 }, %struct.reg_8 { i16 13655, i8 1 }, %struct.reg_8 { i16 13656, i8 1 }, %struct.reg_8 { i16 13657, i8 0 }, %struct.reg_8 { i16 13658, i8 0 }, %struct.reg_8 { i16 13754, i8 14 }, %struct.reg_8 { i16 13930, i8 27 }, %struct.reg_8 { i16 13931, i8 26 }, %struct.reg_8 { i16 13932, i8 25 }, %struct.reg_8 { i16 13933, i8 23 }, %struct.reg_8 { i16 14913, i8 8 }, %struct.reg_8 { i16 1, i8 0 }], [48 x i8] zeroinitializer }, align 32
@imx274_mode5_1280x720_raw10 = internal constant { [28 x %struct.reg_8], [48 x i8] } { [28 x %struct.reg_8] [%struct.reg_8 { i16 12292, i8 3 }, %struct.reg_8 { i16 12293, i8 49 }, %struct.reg_8 { i16 12294, i8 0 }, %struct.reg_8 { i16 12295, i8 -87 }, %struct.reg_8 { i16 12312, i8 -94 }, %struct.reg_8 { i16 12395, i8 5 }, %struct.reg_8 { i16 12514, i8 3 }, %struct.reg_8 { i16 12526, i8 1 }, %struct.reg_8 { i16 13122, i8 10 }, %struct.reg_8 { i16 13123, i8 0 }, %struct.reg_8 { i16 13124, i8 27 }, %struct.reg_8 { i16 13125, i8 0 }, %struct.reg_8 { i16 13222, i8 1 }, %struct.reg_8 { i16 13608, i8 14 }, %struct.reg_8 { i16 13652, i8 0 }, %struct.reg_8 { i16 13653, i8 1 }, %struct.reg_8 { i16 13654, i8 1 }, %struct.reg_8 { i16 13655, i8 1 }, %struct.reg_8 { i16 13656, i8 1 }, %struct.reg_8 { i16 13657, i8 0 }, %struct.reg_8 { i16 13658, i8 0 }, %struct.reg_8 { i16 13754, i8 14 }, %struct.reg_8 { i16 13930, i8 27 }, %struct.reg_8 { i16 13931, i8 25 }, %struct.reg_8 { i16 13932, i8 23 }, %struct.reg_8 { i16 13933, i8 23 }, %struct.reg_8 { i16 14913, i8 4 }, %struct.reg_8 { i16 1, i8 0 }], [48 x i8] zeroinitializer }, align 32
@imx274_mode6_1280x540_raw10 = internal constant { [28 x %struct.reg_8], [48 x i8] } { [28 x %struct.reg_8] [%struct.reg_8 { i16 12292, i8 4 }, %struct.reg_8 { i16 12293, i8 49 }, %struct.reg_8 { i16 12294, i8 0 }, %struct.reg_8 { i16 12295, i8 2 }, %struct.reg_8 { i16 12312, i8 -94 }, %struct.reg_8 { i16 12395, i8 5 }, %struct.reg_8 { i16 12514, i8 4 }, %struct.reg_8 { i16 12526, i8 1 }, %struct.reg_8 { i16 13122, i8 10 }, %struct.reg_8 { i16 13123, i8 0 }, %struct.reg_8 { i16 13124, i8 22 }, %struct.reg_8 { i16 13125, i8 0 }, %struct.reg_8 { i16 13222, i8 1 }, %struct.reg_8 { i16 13608, i8 14 }, %struct.reg_8 { i16 13652, i8 31 }, %struct.reg_8 { i16 13653, i8 1 }, %struct.reg_8 { i16 13654, i8 1 }, %struct.reg_8 { i16 13655, i8 1 }, %struct.reg_8 { i16 13656, i8 1 }, %struct.reg_8 { i16 13657, i8 0 }, %struct.reg_8 { i16 13658, i8 0 }, %struct.reg_8 { i16 13754, i8 14 }, %struct.reg_8 { i16 13930, i8 27 }, %struct.reg_8 { i16 13931, i8 26 }, %struct.reg_8 { i16 13932, i8 25 }, %struct.reg_8 { i16 13933, i8 23 }, %struct.reg_8 { i16 14913, i8 4 }, %struct.reg_8 { i16 1, i8 0 }], [48 x i8] zeroinitializer }, align 32
@imx274_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx274_s_stream, ptr null, ptr @imx274_g_frame_interval, ptr @imx274_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@imx274_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @imx274_enum_mbus_code, ptr null, ptr null, ptr @imx274_get_fmt, ptr @imx274_set_fmt, ptr @imx274_get_selection, ptr @imx274_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx274_s_stream.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.49, ptr @.str.5, ptr @.str.50, i8 1, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imx274\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx274_s_stream\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s : %s, mode index = %td\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Stream Start\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Stream Stop\00", [20 x i8] zeroinitializer }, align 32
@imx274_stop = internal constant { [2 x %struct.reg_8], [24 x i8] } { [2 x %struct.reg_8] [%struct.reg_8 { i16 12288, i8 1 }, %struct.reg_8 { i16 1, i8 0 }], [24 x i8] zeroinitializer }, align 32
@imx274_s_stream.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.49, ptr @.str.5, ptr @.str.53, i8 1, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s : Done\0A\00", [21 x i8] zeroinitializer }, align 32
@imx274_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.5, i32 1496, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s_stream failed\0A\00", [47 x i8] zeroinitializer }, align 32
@imx274_s_stream._entry_ptr = internal global ptr @imx274_s_stream._entry, section ".printk_index", align 4
@imx274_start_1 = internal constant { [42 x %struct.reg_8], [56 x i8] } { [42 x %struct.reg_8] [%struct.reg_8 { i16 12288, i8 18 }, %struct.reg_8 { i16 12576, i8 -16 }, %struct.reg_8 { i16 12577, i8 0 }, %struct.reg_8 { i16 12578, i8 2 }, %struct.reg_8 { i16 12585, i8 -100 }, %struct.reg_8 { i16 12586, i8 2 }, %struct.reg_8 { i16 12589, i8 2 }, %struct.reg_8 { i16 12555, i8 0 }, %struct.reg_8 { i16 12364, i8 0 }, %struct.reg_8 { i16 12365, i8 3 }, %struct.reg_8 { i16 13084, i8 26 }, %struct.reg_8 { i16 13085, i8 0 }, %struct.reg_8 { i16 13570, i8 2 }, %struct.reg_8 { i16 13609, i8 14 }, %struct.reg_8 { i16 13610, i8 14 }, %struct.reg_8 { i16 13611, i8 14 }, %struct.reg_8 { i16 13624, i8 14 }, %struct.reg_8 { i16 13625, i8 14 }, %struct.reg_8 { i16 13651, i8 0 }, %struct.reg_8 { i16 13693, i8 5 }, %struct.reg_8 { i16 13695, i8 5 }, %struct.reg_8 { i16 13697, i8 4 }, %struct.reg_8 { i16 13699, i8 118 }, %struct.reg_8 { i16 13703, i8 1 }, %struct.reg_8 { i16 13755, i8 14 }, %struct.reg_8 { i16 13756, i8 14 }, %struct.reg_8 { i16 13757, i8 14 }, %struct.reg_8 { i16 13758, i8 14 }, %struct.reg_8 { i16 13759, i8 14 }, %struct.reg_8 { i16 13934, i8 0 }, %struct.reg_8 { i16 13935, i8 0 }, %struct.reg_8 { i16 13936, i8 0 }, %struct.reg_8 { i16 13937, i8 0 }, %struct.reg_8 { i16 13060, i8 50 }, %struct.reg_8 { i16 13061, i8 0 }, %struct.reg_8 { i16 13062, i8 50 }, %struct.reg_8 { i16 13063, i8 0 }, %struct.reg_8 { i16 13712, i8 50 }, %struct.reg_8 { i16 13713, i8 0 }, %struct.reg_8 { i16 13958, i8 50 }, %struct.reg_8 { i16 13959, i8 0 }, %struct.reg_8 { i16 1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@imx274_write_mbreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 756, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s : i2c bulk write failed, %x = %x (%zu bytes)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx274_write_mbreg\00", [45 x i8] zeroinitializer }, align 32
@imx274_write_mbreg._entry_ptr = internal global ptr @imx274_write_mbreg._entry, section ".printk_index", align 4
@imx274_write_mbreg.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.56, ptr @.str.5, ptr @.str.57, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s : addr 0x%x, val=0x%x (%zu bytes)\0A\00", [58 x i8] zeroinitializer }, align 32
@imx274_set_frame_interval.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.58, ptr @.str.5, ptr @.str.59, i8 1, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"imx274_set_frame_interval\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: input frame interval = %d / %d\00", [61 x i8] zeroinitializer }, align 32
@imx274_set_frame_interval.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.58, ptr @.str.5, ptr @.str.60, i8 1, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : register SVR = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@imx274_set_frame_interval.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.58, ptr @.str.5, ptr @.str.61, i8 1, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s : register HMAX = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@imx274_set_frame_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.5, i32 1909, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s error = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@imx274_set_frame_interval._entry_ptr = internal global ptr @imx274_set_frame_interval._entry, section ".printk_index", align 4
@imx274_read_mbreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 724, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s : i2c bulk read failed, %x (%zu bytes)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx274_read_mbreg\00", [46 x i8] zeroinitializer }, align 32
@imx274_read_mbreg._entry_ptr = internal global ptr @imx274_read_mbreg._entry, section ".printk_index", align 4
@imx274_read_mbreg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.64, ptr @.str.5, ptr @.str.57, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@imx274_set_frame_length.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.65, ptr @.str.5, ptr @.str.66, i8 1, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx274_set_frame_length\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : input length = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@imx274_set_frame_length._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.65, ptr @.str.5, i32 1830, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@imx274_set_frame_length._entry_ptr = internal global ptr @imx274_set_frame_length._entry, section ".printk_index", align 4
@imx274_start_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.5, i32 795, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error %d setup controls\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx274_start_stream\00", [44 x i8] zeroinitializer }, align 32
@imx274_start_stream._entry_ptr = internal global ptr @imx274_start_stream._entry, section ".printk_index", align 4
@imx274_start_2 = internal constant { [3 x %struct.reg_8], [20 x i8] } { [3 x %struct.reg_8] [%struct.reg_8 { i16 12288, i8 0 }, %struct.reg_8 { i16 12350, i8 2 }, %struct.reg_8 { i16 1, i8 0 }], [20 x i8] zeroinitializer }, align 32
@imx274_start_3 = internal constant { [3 x %struct.reg_8], [20 x i8] } { [3 x %struct.reg_8] [%struct.reg_8 { i16 12532, i8 0 }, %struct.reg_8 { i16 12312, i8 -94 }, %struct.reg_8 { i16 1, i8 0 }], [20 x i8] zeroinitializer }, align 32
@imx274_g_frame_interval.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.69, ptr @.str.5, ptr @.str.70, i8 1, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx274_g_frame_interval\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s frame rate = %d / %d\0A\00", [39 x i8] zeroinitializer }, align 32
@imx274_s_frame_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 1392, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Exposure ctrl range update failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx274_s_frame_interval\00", [40 x i8] zeroinitializer }, align 32
@imx274_s_frame_interval._entry_ptr = internal global ptr @imx274_s_frame_interval._entry, section ".printk_index", align 4
@imx274_s_frame_interval.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.72, ptr @.str.5, ptr @.str.73, i8 1, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set frame interval to %uus\0A\00", [36 x i8] zeroinitializer }, align 32
@imx274_set_exposure.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.74, ptr @.str.5, ptr @.str.75, i8 1, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx274_set_exposure\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s : EXPOSURE control input = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@imx274_set_exposure.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.74, ptr @.str.5, ptr @.str.76, i8 1, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s : EXPOSURE control success\0A\00", [33 x i8] zeroinitializer }, align 32
@imx274_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.74, ptr @.str.5, i32 1739, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@imx274_set_exposure._entry_ptr = internal global ptr @imx274_set_exposure._entry, section ".printk_index", align 4
@imx274_set_coarse_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.77, ptr @.str.5, i32 1686, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx274_set_coarse_time\00", [41 x i8] zeroinitializer }, align 32
@imx274_set_coarse_time._entry_ptr = internal global ptr @imx274_set_coarse_time._entry, section ".printk_index", align 4
@imx274_get_frame_length._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.78, ptr @.str.5, i32 1528, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx274_get_frame_length\00", [40 x i8] zeroinitializer }, align 32
@imx274_get_frame_length._entry_ptr = internal global ptr @imx274_get_frame_length._entry, section ".printk_index", align 4
@__imx274_change_compose.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.79, ptr @.str.5, ptr @.str.80, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__imx274_change_compose\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: selected %ux%u binning\0A\00", [36 x i8] zeroinitializer }, align 32
@imx274_binning_goodness.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.81, ptr @.str.5, ptr @.str.82, i8 0, i8 -12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx274_binning_goodness\00", [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: ask %dx%d, size %dx%d, goodness %d\0A\00", [56 x i8] zeroinitializer }, align 32
@imx274_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 853, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable input clock: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx274_power_on\00", [16 x i8] zeroinitializer }, align 32
@imx274_power_on._entry_ptr = internal global ptr @imx274_power_on._entry, section ".printk_index", align 4
@imx274_power_on._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.5, i32 860, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@imx274_power_on._entry_ptr.87 = internal global ptr @imx274_power_on._entry.85, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx274_s_ctrl.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.88, ptr @.str.5, ptr @.str.89, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx274_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s : s_ctrl: %s, value: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@imx274_s_ctrl.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.88, ptr @.str.5, ptr @.str.90, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s : set V4L2_CID_EXPOSURE\0A\00", [36 x i8] zeroinitializer }, align 32
@imx274_s_ctrl.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.88, ptr @.str.5, ptr @.str.91, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : set V4L2_CID_GAIN\0A\00", [40 x i8] zeroinitializer }, align 32
@imx274_s_ctrl.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.88, ptr @.str.5, ptr @.str.92, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s : set V4L2_CID_VFLIP\0A\00", [39 x i8] zeroinitializer }, align 32
@imx274_s_ctrl.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.88, ptr @.str.5, ptr @.str.93, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s : set V4L2_CID_TEST_PATTERN\0A\00", [32 x i8] zeroinitializer }, align 32
@imx274_set_gain.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.94, ptr @.str.5, ptr @.str.95, i8 1, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx274_set_gain\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s : input gain = %d.%d\0A\00", [39 x i8] zeroinitializer }, align 32
@imx274_set_gain.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.94, ptr @.str.5, ptr @.str.96, i8 1, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s : digital gain = %d, analog gain = %d.%d\0A\00", [51 x i8] zeroinitializer }, align 32
@imx274_set_gain.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.94, ptr @.str.5, ptr @.str.97, i8 1, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s : GAIN control success, gain_reg = %d, new gain = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@imx274_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.94, ptr @.str.5, i32 1653, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@imx274_set_gain._entry_ptr = internal global ptr @imx274_set_gain._entry, section ".printk_index", align 4
@imx274_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 692, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s : i2c write failed, %x = %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx274_write_reg\00", [47 x i8] zeroinitializer }, align 32
@imx274_write_reg._entry_ptr = internal global ptr @imx274_write_reg._entry, section ".printk_index", align 4
@imx274_write_reg.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.99, ptr @.str.5, ptr @.str.100, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s : addr 0x%x, val=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@imx274_set_vflip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.5, i32 1762, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VFLIP control error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx274_set_vflip\00", [47 x i8] zeroinitializer }, align 32
@imx274_set_vflip._entry_ptr = internal global ptr @imx274_set_vflip._entry, section ".printk_index", align 4
@imx274_set_vflip.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.102, ptr @.str.5, ptr @.str.103, i8 1, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s : VFLIP control success\0A\00", [36 x i8] zeroinitializer }, align 32
@imx274_tp_disabled = internal constant { [5 x %struct.reg_8], [44 x i8] } { [5 x %struct.reg_8] [%struct.reg_8 { i16 12348, i8 0 }, %struct.reg_8 { i16 14207, i8 0 }, %struct.reg_8 { i16 14209, i8 0 }, %struct.reg_8 { i16 14091, i8 0 }, %struct.reg_8 { i16 1, i8 0 }], [44 x i8] zeroinitializer }, align 32
@imx274_tp_regs = internal constant { [6 x %struct.reg_8], [40 x i8] } { [6 x %struct.reg_8] [%struct.reg_8 { i16 12348, i8 17 }, %struct.reg_8 { i16 14094, i8 1 }, %struct.reg_8 { i16 14207, i8 1 }, %struct.reg_8 { i16 14209, i8 1 }, %struct.reg_8 { i16 14091, i8 17 }, %struct.reg_8 { i16 1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@imx274_set_test_pattern.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.104, ptr @.str.5, ptr @.str.105, i8 1, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx274_set_test_pattern\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s : TEST PATTERN control success\0A\00", [61 x i8] zeroinitializer }, align 32
@imx274_set_test_pattern._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.104, ptr @.str.5, i32 1799, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@imx274_set_test_pattern._entry_ptr = internal global ptr @imx274_set_test_pattern._entry, section ".printk_index", align 4
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"All 000h Pattern\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"All FFFh Pattern\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"All 555h Pattern\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"All AAAh Pattern\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Vertical Stripe (555h / AAAh)\00", [34 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Vertical Stripe (AAAh / 555h)\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Vertical Stripe (000h / 555h)\00", [34 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Vertical Stripe (555h / 000h)\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Vertical Stripe (000h / FFFh)\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Vertical Stripe (FFFh / 000h)\00", [34 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Vertical Color Bars\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Horizontal Color Bars\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 258]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 32, i64 9963793, i64 9963795, i64 9963797, i64 10422531]
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"imx274_i2c_driver\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2169, i32 26 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2171, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"imx274_of_id_table\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1949, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"imx274_pm_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2165, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"imx274_id\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1955, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2008, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2014, i32 44 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2020, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"imx274_modes\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 492, i32 33 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"imx274_regmap_config\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 153, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2037, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2039, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"imx274_subdev_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1940, i32 37 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2056, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2062, i32 52 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2066, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2074, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2079, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2081, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"imx274_ctrl_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1945, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant [9 x i8] c"tp_qmenu\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 205, i32 27 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2124, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 2133, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1972, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1979, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1982, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1988, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 138, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 139, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 140, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [29 x i8] c"imx274_mode1_3840x2160_raw10\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 226, i32 27 }
@___asan_gen_.279 = private unnamed_addr constant [29 x i8] c"imx274_mode3_1920x1080_raw10\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 267, i32 27 }
@___asan_gen_.282 = private unnamed_addr constant [28 x i8] c"imx274_mode5_1280x720_raw10\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 307, i32 27 }
@___asan_gen_.285 = private unnamed_addr constant [28 x i8] c"imx274_mode6_1280x540_raw10\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 347, i32 27 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"imx274_video_ops\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1934, i32 43 }
@___asan_gen_.291 = private unnamed_addr constant [15 x i8] c"imx274_pad_ops\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1926, i32 41 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1443, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [12 x i8] c"imx274_stop\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 462, i32 27 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1490, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1496, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [15 x i8] c"imx274_start_1\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 386, i32 27 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 754, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 758, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1852, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1882, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1889, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1909, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 722, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1818, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1830, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 795, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [15 x i8] c"imx274_start_2\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 443, i32 27 }
@___asan_gen_.384 = private unnamed_addr constant [15 x i8] c"imx274_start_3\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 453, i32 27 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1347, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1391, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1399, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1706, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1734, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1739, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1686, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1528, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1052, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 977, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 852, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 859, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 917, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 923, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 929, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 935, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 941, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1595, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1616, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1646, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1653, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 690, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 694, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1762, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1766, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [19 x i8] c"imx274_tp_disabled\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 470, i32 27 }
@___asan_gen_.516 = private unnamed_addr constant [15 x i8] c"imx274_tp_regs\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 482, i32 27 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1796, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 1799, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 206, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 207, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 208, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 209, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 210, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 211, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 212, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 213, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 214, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 215, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 216, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 217, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.565 = private constant [30 x i8] c"../drivers/media/i2c/imx274.c\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.565, i32 218, i32 2 }
@llvm.compiler.used = appending global [183 x ptr] [ptr @__UNIQUE_ID_author333, ptr @__UNIQUE_ID_description334, ptr @__UNIQUE_ID_file335, ptr @__UNIQUE_ID_license336, ptr @__exitcall_imx274_i2c_driver_exit, ptr @__initcall__kmod_imx274__332_2180_imx274_i2c_driver_init6, ptr @imx274_fwnode_parse._entry, ptr @imx274_fwnode_parse._entry.36, ptr @imx274_fwnode_parse._entry.39, ptr @imx274_fwnode_parse._entry.42, ptr @imx274_fwnode_parse._entry_ptr, ptr @imx274_fwnode_parse._entry_ptr.38, ptr @imx274_fwnode_parse._entry_ptr.41, ptr @imx274_fwnode_parse._entry_ptr.44, ptr @imx274_get_frame_length._entry, ptr @imx274_get_frame_length._entry_ptr, ptr @imx274_i2c_driver_exit, ptr @imx274_power_on._entry, ptr @imx274_power_on._entry.85, ptr @imx274_power_on._entry_ptr, ptr @imx274_power_on._entry_ptr.87, ptr @imx274_probe._entry, ptr @imx274_probe._entry.12, ptr @imx274_probe._entry.16, ptr @imx274_probe._entry.19, ptr @imx274_probe._entry.24, ptr @imx274_probe._entry.27, ptr @imx274_probe._entry.30, ptr @imx274_probe._entry.9, ptr @imx274_probe._entry_ptr, ptr @imx274_probe._entry_ptr.11, ptr @imx274_probe._entry_ptr.14, ptr @imx274_probe._entry_ptr.18, ptr @imx274_probe._entry_ptr.21, ptr @imx274_probe._entry_ptr.26, ptr @imx274_probe._entry_ptr.29, ptr @imx274_probe._entry_ptr.33, ptr @imx274_read_mbreg._entry, ptr @imx274_read_mbreg._entry_ptr, ptr @imx274_s_frame_interval._entry, ptr @imx274_s_frame_interval._entry_ptr, ptr @imx274_s_stream._entry, ptr @imx274_s_stream._entry_ptr, ptr @imx274_set_coarse_time._entry, ptr @imx274_set_coarse_time._entry_ptr, ptr @imx274_set_exposure._entry, ptr @imx274_set_exposure._entry_ptr, ptr @imx274_set_frame_interval._entry, ptr @imx274_set_frame_interval._entry_ptr, ptr @imx274_set_frame_length._entry, ptr @imx274_set_frame_length._entry_ptr, ptr @imx274_set_gain._entry, ptr @imx274_set_gain._entry_ptr, ptr @imx274_set_test_pattern._entry, ptr @imx274_set_test_pattern._entry_ptr, ptr @imx274_set_vflip._entry, ptr @imx274_set_vflip._entry_ptr, ptr @imx274_start_stream._entry, ptr @imx274_start_stream._entry_ptr, ptr @imx274_write_mbreg._entry, ptr @imx274_write_mbreg._entry_ptr, ptr @imx274_write_reg._entry, ptr @imx274_write_reg._entry_ptr, ptr @imx274_i2c_driver, ptr @.str, ptr @imx274_of_id_table, ptr @imx274_pm_ops, ptr @imx274_id, ptr @imx274_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @imx274_modes, ptr @imx274_probe._key, ptr @imx274_regmap_config, ptr @.str.8, ptr @.str.10, ptr @imx274_subdev_ops, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @imx274_probe._key.22, ptr @.str.23, ptr @.str.25, ptr @imx274_ctrl_ops, ptr @tp_qmenu, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @imx274_mode1_3840x2160_raw10, ptr @imx274_mode3_1920x1080_raw10, ptr @imx274_mode5_1280x720_raw10, ptr @imx274_mode6_1280x540_raw10, ptr @imx274_video_ops, ptr @imx274_pad_ops, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @imx274_stop, ptr @.str.53, ptr @.str.54, ptr @imx274_start_1, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @imx274_start_2, ptr @imx274_start_3, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @imx274_tp_disabled, ptr @imx274_tp_regs, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_of_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_modes to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp_qmenu to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_fwnode_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_fwnode_parse._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_fwnode_parse._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_fwnode_parse._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_mode1_3840x2160_raw10 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_mode3_1920x1080_raw10 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_mode5_1280x720_raw10 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_mode6_1280x540_raw10 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_stop to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_start_1 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_write_mbreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_set_frame_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_read_mbreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_set_frame_length._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_start_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_start_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_start_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_s_frame_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_set_coarse_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_get_frame_length._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_power_on._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_set_vflip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_tp_disabled to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_tp_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx274_set_test_pattern._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @imx274_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx274_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @imx274_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio.i.i = getelementptr inbounds %struct.stimx274, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %8 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %supplies.i = getelementptr inbounds %struct.stimx274, ptr %5, i32 0, i32 9
  %call2.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #8
  %inck.i = getelementptr inbounds %struct.stimx274, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %inck.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inck.i, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %ctrls = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 3
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #8
  %lock = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 11
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_probe(ptr noundef %client) #2 align 64 {
entry:
  %ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @imx274_probe.__key) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep.i) #8
  %0 = call ptr @memset(ptr %ep.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %ep.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %call.i227 = tail call ptr @dev_fwnode(ptr noundef %dev1) #8
  %call1.i = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call.i227, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #11
  br label %imx274_fwnode_parse.exit.thread

if.end.i:                                         ; preds = %do.body
  %call2.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef nonnull %call1.i, ptr noundef nonnull %ep.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call1.i) #8
  %3 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %do.end11.i [
    i32 -6, label %do.end6.i
    i32 0, label %if.end13.i
  ]

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37) #11
  br label %imx274_fwnode_parse.exit.thread

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %call2.i) #11
  br label %imx274_fwnode_parse.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 2, i32 2, i32 3
  %4 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp14.not.i = icmp eq i8 %5, 4
  br i1 %cmp14.not.i, label %if.end5, label %do.end19.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %conv.i) #11
  br label %imx274_fwnode_parse.exit.thread

imx274_fwnode_parse.exit.thread:                  ; preds = %do.end19.i, %do.end11.i, %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -22, %do.end19.i ], [ %call2.i, %do.end11.i ], [ -6, %do.end6.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end13.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #8
  %call6 = call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %inck = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %inck to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %inck, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %arrayidx1.i = getelementptr %struct.stimx274, ptr %call.i, i32 0, i32 9, i32 0
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.45, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.stimx274, ptr %call.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.46, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.stimx274, ptr %call.i, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.47, ptr %arrayidx1.2.i, align 4
  %call.i228 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool14.not = icmp eq i32 %call.i228, 0
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call.i228) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %mode = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @imx274_modes, ptr %mode, align 4
  %width = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3840, ptr %width, align 4
  %height = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2160, ptr %height, align 4
  %format = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3840, ptr %format, align 4
  %height31 = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %height31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2160, ptr %height31, align 4
  %field = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %field, align 4
  %code = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12303, ptr %code, align 4
  %colorspace = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %colorspace, align 4
  %frame_interval = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %frame_interval to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %frame_interval, align 4
  %denominator = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 60, ptr %denominator, align 4
  %call36 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @imx274_regmap_config, ptr noundef nonnull @imx274_probe._key, ptr noundef nonnull @.str.8) #8
  %regmap = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call36, ptr %regmap, align 4
  %cmp.i229 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %22) #11
  br label %err_regmap

if.end45:                                         ; preds = %if.end19
  %client46 = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %client46 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %client, ptr %client46, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @imx274_subdev_ops) #8
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or = or i32 %25, 12
  store i32 %or, ptr %flags, align 4
  %pad = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 1
  %flags48 = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %flags48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %flags48, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 131073, ptr %function, align 4
  %call51 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %do.end56, label %if.end57

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, i32 noundef %call51) #11
  br label %err_regmap

if.end57:                                         ; preds = %if.end45
  %call58 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 7) #8
  %reset_gpio = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call58, ptr %reset_gpio, align 4
  %cmp.i230 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then61, label %if.end73

if.then61:                                        ; preds = %if.end57
  %cmp64.not = icmp eq ptr %call58, inttoptr (i32 -517 to ptr)
  br i1 %cmp64.not, label %if.then61.if.end70_crit_edge, label %do.end69

if.then61.if.end70_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

do.end69:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #11
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %if.then61.if.end70_crit_edge
  %29 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset_gpio, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %err_regmap

if.end73:                                         ; preds = %if.end57
  %call74 = call i32 @imx274_power_on(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end80, label %if.end81

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4) #11
  br label %err_regmap

if.end81:                                         ; preds = %if.end73
  %ctrls = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 3
  %call83 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 4, ptr noundef nonnull @imx274_probe._key.22, ptr noundef nonnull @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %do.end89, label %if.end90

do.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4) #11
  br label %err_power_off

if.end90:                                         ; preds = %if.end81
  %lock94 = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %lock94 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %lock, ptr %lock94, align 4
  %call97 = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrls, ptr noundef nonnull @imx274_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 12, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @tp_qmenu) #8
  %test_pattern = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %test_pattern to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call97, ptr %test_pattern, align 4
  %call101 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @imx274_ctrl_ops, i32 noundef 9963795, i64 noundef 256, i64 noundef 46088, i64 noundef 1, i64 noundef 5120) #8
  %gain = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call101, ptr %gain, align 4
  %call105 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @imx274_ctrl_ops, i32 noundef 9963793, i64 noundef 14, i64 noundef 16666, i64 noundef 1, i64 noundef 14) #8
  %exposure = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call105, ptr %exposure, align 4
  %call109 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls, ptr noundef nonnull @imx274_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %vflip = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call109, ptr %vflip, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.stimx274, ptr %call.i, i32 0, i32 3, i32 0, i32 9
  %38 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool116.not = icmp eq i32 %39, 0
  br i1 %tobool116.not, label %if.end121, label %if.end90.err_ctrls_crit_edge

if.end90.err_ctrls_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ctrls

if.end121:                                        ; preds = %if.end90
  %40 = ptrtoint ptr %frame_interval to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %frame_interval, align 4
  %41 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 60, ptr %denominator, align 4
  %42 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %exposure, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16666, ptr %val.i, align 4
  %45 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gain, align 4
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %val3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5120, ptr %val3.i, align 4
  %48 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vflip, align 4
  %val5.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 22
  %50 = ptrtoint ptr %val5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %val5.i, align 4
  %51 = ptrtoint ptr %test_pattern to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %test_pattern, align 4
  %val7.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 22
  %53 = ptrtoint ptr %val7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %val7.i, align 4
  %call122 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %do.end128, label %if.end129

do.end128:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, i32 noundef %call122) #11
  br label %err_ctrls

if.end129:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %call.i231 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i232 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 0) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31) #11
  br label %cleanup

err_ctrls:                                        ; preds = %do.end128, %if.end90.err_ctrls_crit_edge
  %ret.0 = phi i32 [ %call122, %do.end128 ], [ %39, %if.end90.err_ctrls_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #8
  br label %err_power_off

err_power_off:                                    ; preds = %err_ctrls, %do.end89
  %ret.1 = phi i32 [ %call83, %do.end89 ], [ %ret.0, %err_ctrls ]
  %driver_data.i.i.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %54 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i.i, align 4
  %reset_gpio.i.i = getelementptr inbounds %struct.stimx274, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %57, i32 noundef 0) #8
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %58 = ptrtoint ptr %reset_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reset_gpio.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %59, i32 noundef 0) #8
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %supplies.i = getelementptr inbounds %struct.stimx274, ptr %55, i32 0, i32 9
  %call2.i233 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #8
  %inck.i = getelementptr inbounds %struct.stimx274, ptr %55, i32 0, i32 10
  %60 = ptrtoint ptr %inck.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %inck.i, align 4
  call void @clk_disable(ptr noundef %61) #8
  call void @clk_unprepare(ptr noundef %61) #8
  br label %err_regmap

err_regmap:                                       ; preds = %err_power_off, %do.end80, %if.end70, %do.end56, %do.end42
  %ret.3 = phi i32 [ -19, %do.end42 ], [ %call51, %do.end56 ], [ %31, %if.end70 ], [ %call74, %do.end80 ], [ %ret.1, %err_power_off ]
  call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %err_regmap, %if.end129, %do.end18, %if.then9, %imx274_fwnode_parse.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then9 ], [ %call.i228, %do.end18 ], [ %ret.3, %err_regmap ], [ 0, %if.end129 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %imx274_fwnode_parse.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_power_off(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio.i = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %supplies = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 9
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  %inck = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %inck to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inck, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_power_on(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio.i = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %inck = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %inck to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inck, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %client3 = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client3, align 4
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.83, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %supplies = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 9
  %call5 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %client11 = getelementptr inbounds %struct.stimx274, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %client11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client11, align 4
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.86, i32 noundef %call5) #11
  %12 = ptrtoint ptr %inck to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inck, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #8
  %15 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  %17 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %18, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2200, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call5, %do.end10 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_s_stream.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_s_stream, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool4.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool4.not, ptr @.str.52, ptr @.str.51
  %mode = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 12
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @imx274_modes to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_s_stream.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond, i32 noundef %sub.ptr.div) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool5.not = icmp eq i32 %on, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %client7 = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client7, align 4
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev8, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end12

if.then.i:                                        ; preds = %if.then6
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !319
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !320
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then10_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then10_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !321
  br label %if.then10

if.then10:                                        ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end12:                                         ; preds = %if.then6
  %call.i96 = tail call fastcc i32 @imx274_write_table(ptr noundef %sd, ptr noundef nonnull @imx274_start_1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %imx274_mode_regs.exit, label %if.end12.fail_crit_edge

if.end12.fail_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

imx274_mode_regs.exit:                            ; preds = %if.end12
  %mode.i = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 12
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call1.i = tail call fastcc i32 @imx274_write_table(ptr noundef %sd, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool14.not = icmp eq i32 %call1.i, 0
  br i1 %tobool14.not, label %if.end16, label %imx274_mode_regs.exit.fail_crit_edge

imx274_mode_regs.exit.fail_crit_edge:             ; preds = %imx274_mode_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end16:                                         ; preds = %imx274_mode_regs.exit
  %call17 = tail call fastcc i32 @imx274_apply_trimming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.fail_crit_edge

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end20:                                         ; preds = %if.end16
  %frame_interval = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 6
  %11 = ptrtoint ptr %frame_interval to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %frame_interval, align 4
  %12 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt90 = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %.elt90 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack91 = load i32, ptr %.elt90, align 4
  %14 = insertvalue [2 x i32] %12, i32 %.unpack91, 1
  %call21 = tail call fastcc i32 @imx274_set_frame_interval(ptr noundef %sd, [2 x i32] %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.fail_crit_edge

if.end20.fail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end24:                                         ; preds = %if.end20
  %ctrls.i = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 3
  %call.i98 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %ctrls.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %if.end.i101, label %do.end.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client7, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.67, i32 noundef %call.i98) #11
  br label %fail

if.end.i101:                                      ; preds = %if.end24
  tail call void @usleep_range_state(i32 noundef 11000, i32 noundef 11500, i32 noundef 2) #8
  %call1.i100 = tail call fastcc i32 @imx274_write_table(ptr noundef %sd, ptr noundef nonnull @imx274_start_2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool2.not.i = icmp eq i32 %call1.i100, 0
  br i1 %tobool2.not.i, label %imx274_start_stream.exit, label %if.end.i101.fail_crit_edge

if.end.i101.fail_crit_edge:                       ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

imx274_start_stream.exit:                         ; preds = %if.end.i101
  tail call void @usleep_range_state(i32 noundef 8000, i32 noundef 8500, i32 noundef 2) #8
  %call5.i = tail call fastcc i32 @imx274_write_table(ptr noundef %sd, ptr noundef nonnull @imx274_start_3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool26.not = icmp eq i32 %call5.i, 0
  br i1 %tobool26.not, label %imx274_start_stream.exit.if.end36_crit_edge, label %imx274_start_stream.exit.fail_crit_edge

imx274_start_stream.exit.fail_crit_edge:          ; preds = %imx274_start_stream.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

imx274_start_stream.exit.if.end36_crit_edge:      ; preds = %imx274_start_stream.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else:                                          ; preds = %do.end
  %call29 = tail call fastcc i32 @imx274_write_table(ptr noundef %sd, ptr noundef nonnull @imx274_stop)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.else.fail_crit_edge

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %client33 = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 2
  %17 = ptrtoint ptr %client33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client33, align 4
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call.i103 = tail call i32 @__pm_runtime_idle(ptr noundef %dev34, i32 noundef 5) #8
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %imx274_start_stream.exit.if.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_s_stream.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_s_stream, %if.then50)) #8
          to label %cleanup [label %if.then50], !srcloc !318

if.then50:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %client51 = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 2
  %19 = ptrtoint ptr %client51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client51, align 4
  %dev52 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_s_stream.__UNIQUE_ID_ddebug316, ptr noundef %dev52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.49) #8
  br label %cleanup

fail:                                             ; preds = %if.else.fail_crit_edge, %imx274_start_stream.exit.fail_crit_edge, %if.end.i101.fail_crit_edge, %do.end.i, %if.end20.fail_crit_edge, %if.end16.fail_crit_edge, %imx274_mode_regs.exit.fail_crit_edge, %if.end12.fail_crit_edge
  %ret.0 = phi i32 [ %call1.i, %imx274_mode_regs.exit.fail_crit_edge ], [ %call17, %if.end16.fail_crit_edge ], [ %call21, %if.end20.fail_crit_edge ], [ %call5.i, %imx274_start_stream.exit.fail_crit_edge ], [ %call29, %if.else.fail_crit_edge ], [ %call.i96, %if.end12.fail_crit_edge ], [ %call1.i100, %if.end.i101.fail_crit_edge ], [ %call.i98, %do.end.i ]
  %client56 = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 2
  %21 = ptrtoint ptr %client56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client56, align 4
  %dev57 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %call.i104 = tail call i32 @__pm_runtime_idle(ptr noundef %dev57, i32 noundef 5) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %23 = ptrtoint ptr %client56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client56, align 4
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.54) #11
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then50, %if.end36, %if.then10
  %retval.0 = phi i32 [ %call.i, %if.then10 ], [ %ret.0, %fail ], [ 0, %if.then50 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_g_frame_interval(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %frame_interval = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %frame_interval, align 4
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %interval, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_g_frame_interval.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_g_frame_interval, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 2
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %frame_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frame_interval, align 4
  %denominator = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %denominator, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_g_frame_interval.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %6, i32 noundef %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_s_frame_interval(ptr noundef %sd, ptr nocapture noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %exposure = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exposure, align 4
  %client = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !319
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !320
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !321
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %5 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack = load i32, ptr %interval, align 4
  %6 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt63 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %.elt63 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack64 = load i32, ptr %.elt63, align 4
  %8 = insertvalue [2 x i32] %6, i32 %.unpack64, 1
  %call2 = tail call fastcc i32 @imx274_set_frame_interval(ptr noundef %sd, [2 x i32] %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then3:                                         ; preds = %if.end
  %frame_interval = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 6
  %9 = ptrtoint ptr %frame_interval to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %frame_interval, align 4
  %11 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %interval, align 4
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  %mul = mul i32 %13, 1000000
  %14 = trunc i64 %10 to i32
  %div = udiv i32 %mul, %14
  %conv7 = sext i32 %div to i64
  %call9 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %1, i64 noundef 14, i64 noundef %conv7, i64 noundef 1, i64 noundef %conv7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.71) #11
  br label %unlock

if.end14:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %call15 = tail call fastcc i32 @imx274_set_exposure(ptr noundef %sd, i32 noundef %18)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_s_frame_interval.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_s_frame_interval, %if.then21)) #8
          to label %unlock [label %if.then21], !srcloc !318

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client, align 4
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %interval, align 4
  %mul26 = mul i32 %22, 1000000
  %23 = ptrtoint ptr %.elt63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %.elt63, align 4
  %div29 = udiv i32 %mul26, %24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_s_frame_interval.__UNIQUE_ID_ddebug314, ptr noundef %dev23, ptr noundef nonnull @.str.73, i32 noundef %div29) #8
  br label %unlock

unlock:                                           ; preds = %if.then21, %if.end14, %do.end, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.unlock_crit_edge ], [ %call9, %do.end ], [ 0, %if.then21 ], [ 0, %if.end14 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %call.i66 = tail call i32 @__pm_runtime_idle(ptr noundef %dev36, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_apply_trimming(ptr noundef readonly %imx274) unnamed_addr #2 align 64 {
entry:
  %val_le.i167 = alloca i32, align 4
  %val_le.i155 = alloca i32, align 4
  %val_le.i143 = alloca i32, align 4
  %val_le.i131 = alloca i32, align 4
  %val_le.i119 = alloca i32, align 4
  %val_le.i107 = alloca i32, align 4
  %val_le.i95 = alloca i32, align 4
  %val_le.i83 = alloca i32, align 4
  %val_le.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crop = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 4
  %0 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crop, align 4
  %add = add i32 %1, 12
  %width = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %add2 = add i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3792, i32 %3)
  %cmp = icmp ult i32 %3, 3792
  %div81 = lshr i32 %3, 4
  %add5 = add nuw nsw i32 %div81, 23
  %cond = select i1 %cmp, i32 260, i32 %add5
  %vflip = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vflip, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %top11 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %top11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %top11, align 4
  %sub = sub i32 0, %9
  %cond14.in = select i1 %tobool.not, i32 %9, i32 %sub
  %cond14 = sdiv i32 %cond14.in, 2
  %height = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %sub16 = sub i32 2160, %11
  %div1782 = lshr i32 %sub16, 1
  %add20 = add i32 %11, 22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i) #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %cond) #8
  %13 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val_le.i, align 4
  %regmap.i = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 7
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef 12534, ptr noundef nonnull %val_le.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %16 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12534, i32 noundef %cond, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end52

do.body2.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %imx274_write_mbreg.exit.thread)) #8
          to label %imx274_write_mbreg.exit [label %imx274_write_mbreg.exit.thread], !srcloc !318

imx274_write_mbreg.exit.thread:                   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %18 = ptrtoint ptr %client8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client8.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12534, i32 noundef %cond, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.then

imx274_write_mbreg.exit:                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.then

if.then:                                          ; preds = %imx274_write_mbreg.exit, %imx274_write_mbreg.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i83) #8
  %20 = ptrtoint ptr %val_le.i83 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16777216, ptr %val_le.i83, align 4
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i85 = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 12343, ptr noundef nonnull %val_le.i83, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %do.body2.i90, label %if.end.thread184

if.end.thread184:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %client.i87 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %23 = ptrtoint ptr %client.i87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i87, align 4
  %dev.i88 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i88, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12343, i32 noundef 1, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i83) #8
  br label %if.end52

do.body2.i90:                                     ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %if.end.thread182)) #8
          to label %if.end [label %if.end.thread182], !srcloc !318

if.end.thread182:                                 ; preds = %do.body2.i90
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i91 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %25 = ptrtoint ptr %client8.i91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client8.i91, align 4
  %dev9.i92 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i92, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12343, i32 noundef 1, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i83) #8
  br label %if.then26

if.end:                                           ; preds = %do.body2.i90
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i83) #8
  br label %if.then26

if.then26:                                        ; preds = %if.end, %if.end.thread182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i95) #8
  %27 = call i32 @llvm.bswap.i32(i32 %add) #8
  %28 = ptrtoint ptr %val_le.i95 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val_le.i95, align 4
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i97 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 12344, ptr noundef nonnull %val_le.i95, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %do.body2.i102, label %if.end28.thread190

if.end28.thread190:                               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %client.i99 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %31 = ptrtoint ptr %client.i99 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i99, align 4
  %dev.i100 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i100, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12344, i32 noundef %add, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i95) #8
  br label %if.end52

do.body2.i102:                                    ; preds = %if.then26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %if.end28.thread188)) #8
          to label %if.end28 [label %if.end28.thread188], !srcloc !318

if.end28.thread188:                               ; preds = %do.body2.i102
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i103 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %33 = ptrtoint ptr %client8.i103 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client8.i103, align 4
  %dev9.i104 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i104, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12344, i32 noundef %add, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i95) #8
  br label %if.then30

if.end28:                                         ; preds = %do.body2.i102
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i95) #8
  br label %if.then30

if.then30:                                        ; preds = %if.end28, %if.end28.thread188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i107) #8
  %35 = call i32 @llvm.bswap.i32(i32 %add2) #8
  %36 = ptrtoint ptr %val_le.i107 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val_le.i107, align 4
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i109 = call i32 @regmap_bulk_write(ptr noundef %38, i32 noundef 12346, ptr noundef nonnull %val_le.i107, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %do.body2.i114, label %if.end32.thread196

if.end32.thread196:                               ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %client.i111 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %39 = ptrtoint ptr %client.i111 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i111, align 4
  %dev.i112 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i112, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12346, i32 noundef %add2, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i107) #8
  br label %if.end52

do.body2.i114:                                    ; preds = %if.then30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %if.end32.thread194)) #8
          to label %if.end32 [label %if.end32.thread194], !srcloc !318

if.end32.thread194:                               ; preds = %do.body2.i114
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i115 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %41 = ptrtoint ptr %client8.i115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client8.i115, align 4
  %dev9.i116 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i116, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12346, i32 noundef %add2, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i107) #8
  br label %if.then34

if.end32:                                         ; preds = %do.body2.i114
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i107) #8
  br label %if.then34

if.then34:                                        ; preds = %if.end32, %if.end32.thread194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i119) #8
  %43 = ptrtoint ptr %val_le.i119 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16777216, ptr %val_le.i119, align 4
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call.i121 = call i32 @regmap_bulk_write(ptr noundef %45, i32 noundef 12509, ptr noundef nonnull %val_le.i119, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i122 = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i122, label %do.body2.i126, label %if.end36.thread202

if.end36.thread202:                               ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %client.i123 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %46 = ptrtoint ptr %client.i123 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client.i123, align 4
  %dev.i124 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i124, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12509, i32 noundef 1, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i119) #8
  br label %if.end52

do.body2.i126:                                    ; preds = %if.then34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %if.end36.thread200)) #8
          to label %if.end36 [label %if.end36.thread200], !srcloc !318

if.end36.thread200:                               ; preds = %do.body2.i126
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i127 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %48 = ptrtoint ptr %client8.i127 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client8.i127, align 4
  %dev9.i128 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i128, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12509, i32 noundef 1, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i119) #8
  br label %if.then38

if.end36:                                         ; preds = %do.body2.i126
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i119) #8
  br label %if.then38

if.then38:                                        ; preds = %if.end36, %if.end36.thread200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i131) #8
  %50 = call i32 @llvm.bswap.i32(i32 %div1782) #8
  %51 = ptrtoint ptr %val_le.i131 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val_le.i131, align 4
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %call.i133 = call i32 @regmap_bulk_write(ptr noundef %53, i32 noundef 12510, ptr noundef nonnull %val_le.i131, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool.not.i134 = icmp eq i32 %call.i133, 0
  br i1 %tobool.not.i134, label %do.body2.i138, label %if.end40.thread208

if.end40.thread208:                               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %client.i135 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %54 = ptrtoint ptr %client.i135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client.i135, align 4
  %dev.i136 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i136, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12510, i32 noundef %div1782, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i131) #8
  br label %if.end52

do.body2.i138:                                    ; preds = %if.then38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %if.end40.thread206)) #8
          to label %if.end40 [label %if.end40.thread206], !srcloc !318

if.end40.thread206:                               ; preds = %do.body2.i138
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i139 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %56 = ptrtoint ptr %client8.i139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client8.i139, align 4
  %dev9.i140 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i140, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12510, i32 noundef %div1782, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i131) #8
  br label %if.then42

if.end40:                                         ; preds = %do.body2.i138
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i131) #8
  br label %if.then42

if.then42:                                        ; preds = %if.end40, %if.end40.thread206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i143) #8
  %58 = call i32 @llvm.bswap.i32(i32 %cond14) #8
  %59 = ptrtoint ptr %val_le.i143 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %val_le.i143, align 4
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %call.i145 = call i32 @regmap_bulk_write(ptr noundef %61, i32 noundef 12512, ptr noundef nonnull %val_le.i143, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %do.body2.i150, label %if.end44.thread214

if.end44.thread214:                               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %client.i147 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %62 = ptrtoint ptr %client.i147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client.i147, align 4
  %dev.i148 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i148, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12512, i32 noundef %cond14, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i143) #8
  br label %if.end52

do.body2.i150:                                    ; preds = %if.then42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %if.end44.thread212)) #8
          to label %if.end44 [label %if.end44.thread212], !srcloc !318

if.end44.thread212:                               ; preds = %do.body2.i150
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i151 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %64 = ptrtoint ptr %client8.i151 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client8.i151, align 4
  %dev9.i152 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i152, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12512, i32 noundef %cond14, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i143) #8
  br label %if.then46

if.end44:                                         ; preds = %do.body2.i150
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i143) #8
  br label %if.then46

if.then46:                                        ; preds = %if.end44, %if.end44.thread212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i155) #8
  %66 = call i32 @llvm.bswap.i32(i32 %add20) #8
  %67 = ptrtoint ptr %val_le.i155 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %val_le.i155, align 4
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %call.i157 = call i32 @regmap_bulk_write(ptr noundef %69, i32 noundef 12592, ptr noundef nonnull %val_le.i155, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %do.body2.i162, label %if.end48.thread220

if.end48.thread220:                               ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %client.i159 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %70 = ptrtoint ptr %client.i159 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %client.i159, align 4
  %dev.i160 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i160, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12592, i32 noundef %add20, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i155) #8
  br label %if.end52

do.body2.i162:                                    ; preds = %if.then46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %if.end48.thread218)) #8
          to label %if.end48 [label %if.end48.thread218], !srcloc !318

if.end48.thread218:                               ; preds = %do.body2.i162
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i163 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %72 = ptrtoint ptr %client8.i163 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %client8.i163, align 4
  %dev9.i164 = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i164, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12592, i32 noundef %add20, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i155) #8
  br label %if.then50

if.end48:                                         ; preds = %do.body2.i162
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i155) #8
  br label %if.then50

if.then50:                                        ; preds = %if.end48, %if.end48.thread218
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i167) #8
  %74 = call i32 @llvm.bswap.i32(i32 %11) #8
  %75 = ptrtoint ptr %val_le.i167 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %val_le.i167, align 4
  %76 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i, align 4
  %call.i169 = call i32 @regmap_bulk_write(ptr noundef %77, i32 noundef 12594, ptr noundef nonnull %val_le.i167, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i170, label %do.body2.i174, label %do.end.i173

do.end.i173:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %client.i171 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %78 = ptrtoint ptr %client.i171 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %client.i171, align 4
  %dev.i172 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i172, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12594, i32 noundef %11, i32 noundef 2) #11
  br label %imx274_write_mbreg.exit178

do.body2.i174:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_apply_trimming, %if.then7.i177)) #8
          to label %imx274_write_mbreg.exit178 [label %if.then7.i177], !srcloc !318

if.then7.i177:                                    ; preds = %do.body2.i174
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i175 = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %80 = ptrtoint ptr %client8.i175 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %client8.i175, align 4
  %dev9.i176 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i176, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12594, i32 noundef %11, i32 noundef 2) #8
  br label %imx274_write_mbreg.exit178

imx274_write_mbreg.exit178:                       ; preds = %if.then7.i177, %do.body2.i174, %do.end.i173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i167) #8
  br label %if.end52

if.end52:                                         ; preds = %imx274_write_mbreg.exit178, %if.end48.thread220, %if.end44.thread214, %if.end40.thread208, %if.end36.thread202, %if.end32.thread196, %if.end28.thread190, %if.end.thread184, %if.end.thread
  %err.7 = phi i32 [ %call.i169, %imx274_write_mbreg.exit178 ], [ %call.i157, %if.end48.thread220 ], [ %call.i145, %if.end44.thread214 ], [ %call.i133, %if.end40.thread208 ], [ %call.i121, %if.end36.thread202 ], [ %call.i109, %if.end32.thread196 ], [ %call.i97, %if.end28.thread190 ], [ %call.i85, %if.end.thread184 ], [ %call.i, %if.end.thread ]
  ret i32 %err.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_set_frame_interval(ptr nocapture noundef %priv, [2 x i32] %frame_interval.coerce) unnamed_addr #2 align 64 {
entry:
  %val_le.i123 = alloca i32, align 4
  %val_le.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_interval.coerce.fca.0.extract = extractvalue [2 x i32] %frame_interval.coerce, 0
  %frame_interval.coerce.fca.1.extract = extractvalue [2 x i32] %frame_interval.coerce, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_frame_interval.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_frame_interval, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_frame_interval.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %frame_interval.coerce.fca.0.extract, i32 noundef %frame_interval.coerce.fca.1.extract) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame_interval.coerce.fca.0.extract)
  %cmp = icmp eq i32 %frame_interval.coerce.fca.0.extract, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame_interval.coerce.fca.1.extract)
  %cmp5 = icmp eq i32 %frame_interval.coerce.fca.1.extract, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  %frame_interval.sroa.0.0 = select i1 %or.cond, i32 1, i32 %frame_interval.coerce.fca.0.extract
  %frame_interval.sroa.9.0 = select i1 %or.cond, i32 60, i32 %frame_interval.coerce.fca.1.extract
  %div = udiv i32 %frame_interval.sroa.9.0, %frame_interval.sroa.0.0
  %mode = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode, align 4
  %max_fps = getelementptr inbounds %struct.imx274_mode, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %max_fps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_fps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %5)
  %cmp12 = icmp ugt i32 %div, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div)
  %cmp18 = icmp ult i32 %div, 5
  %spec.select115 = select i1 %cmp18, i32 5, i32 %frame_interval.sroa.9.0
  %6 = or i1 %cmp18, %cmp12
  %frame_interval.sroa.0.1 = select i1 %6, i32 1, i32 %frame_interval.sroa.0.0
  %frame_interval.sroa.9.1 = select i1 %cmp12, i32 %5, i32 %spec.select115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i) #8
  %7 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val_le.i, align 4
  %regmap.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 12302, ptr noundef nonnull %val_le.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %imx274_read_mbreg.exit.thread143

imx274_read_mbreg.exit.thread143:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 12302, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %do.end86

if.else.i:                                        ; preds = %do.end
  %12 = ptrtoint ptr %val_le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val_le.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_read_mbreg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_frame_interval, %imx274_read_mbreg.exit.thread)) #8
          to label %imx274_read_mbreg.exit [label %imx274_read_mbreg.exit.thread], !srcloc !318

imx274_read_mbreg.exit.thread:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %client8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client8.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_read_mbreg.__UNIQUE_ID_ddebug294, ptr noundef %dev9.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.64, i32 noundef 12302, i32 noundef %14, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %do.body28

imx274_read_mbreg.exit:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %do.body28

do.body28:                                        ; preds = %imx274_read_mbreg.exit, %imx274_read_mbreg.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_frame_interval.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_frame_interval, %if.then40)) #8
          to label %do.end45 [label %if.then40], !srcloc !318

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %client41 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %17 = ptrtoint ptr %client41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client41, align 4
  %dev42 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_frame_interval.__UNIQUE_ID_ddebug330, ptr noundef %dev42, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %14) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.body28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i123) #8
  %19 = ptrtoint ptr %val_le.i123 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %val_le.i123, align 4
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i125 = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef 12534, ptr noundef nonnull %val_le.i123, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %if.else.i130, label %imx274_read_mbreg.exit134.thread149

imx274_read_mbreg.exit134.thread149:              ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  %client.i127 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %22 = ptrtoint ptr %client.i127 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i127, align 4
  %dev.i128 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i128, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 12534, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i123) #8
  br label %do.end86

if.else.i130:                                     ; preds = %do.end45
  %24 = ptrtoint ptr %val_le.i123 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val_le.i123, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_read_mbreg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_frame_interval, %imx274_read_mbreg.exit134.thread)) #8
          to label %imx274_read_mbreg.exit134 [label %imx274_read_mbreg.exit134.thread], !srcloc !318

imx274_read_mbreg.exit134.thread:                 ; preds = %if.else.i130
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i131 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %27 = ptrtoint ptr %client8.i131 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client8.i131, align 4
  %dev9.i132 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_read_mbreg.__UNIQUE_ID_ddebug294, ptr noundef %dev9.i132, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.64, i32 noundef 12534, i32 noundef %26, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i123) #8
  br label %do.body50

imx274_read_mbreg.exit134:                        ; preds = %if.else.i130
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i123) #8
  br label %do.body50

do.body50:                                        ; preds = %imx274_read_mbreg.exit134, %imx274_read_mbreg.exit134.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_frame_interval.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_frame_interval, %if.then62)) #8
          to label %do.end67 [label %if.then62], !srcloc !318

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %client63 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %29 = ptrtoint ptr %client63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client63, align 4
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_frame_interval.__UNIQUE_ID_ddebug331, ptr noundef %dev64, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.58, i32 noundef %26) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp68 = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame_interval.sroa.9.1)
  %cmp71 = icmp eq i32 %frame_interval.sroa.9.1, 0
  %or.cond116 = select i1 %cmp68, i1 true, i1 %cmp71
  br i1 %or.cond116, label %do.end67.do.end86_crit_edge, label %if.end73

do.end67.do.end86_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end86

if.end73:                                         ; preds = %do.end67
  %add = add i32 %14, 1
  %div74 = udiv i32 72000000, %add
  %div75 = udiv i32 %div74, %26
  %mul = mul i32 %div75, %frame_interval.sroa.0.1
  %div78 = udiv i32 %mul, %frame_interval.sroa.9.1
  %call79 = call fastcc i32 @imx274_set_frame_length(ptr noundef %priv, i32 noundef %div78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end73.do.end86_crit_edge

if.end73.do.end86_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end86

if.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %frame_interval83 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 6
  %31 = ptrtoint ptr %frame_interval83 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %frame_interval.sroa.0.1, ptr %frame_interval83, align 4
  %frame_interval.sroa.9.0.frame_interval83.sroa_idx = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %frame_interval.sroa.9.0.frame_interval83.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %frame_interval.sroa.9.1, ptr %frame_interval.sroa.9.0.frame_interval83.sroa_idx, align 4
  br label %cleanup

do.end86:                                         ; preds = %if.end73.do.end86_crit_edge, %do.end67.do.end86_crit_edge, %imx274_read_mbreg.exit134.thread149, %imx274_read_mbreg.exit.thread143
  %err.0 = phi i32 [ %call79, %if.end73.do.end86_crit_edge ], [ -22, %do.end67.do.end86_crit_edge ], [ %call.i, %imx274_read_mbreg.exit.thread143 ], [ %call.i125, %imx274_read_mbreg.exit134.thread149 ]
  %client87 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %33 = ptrtoint ptr %client87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client87, align 4
  %dev88 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58, i32 noundef %err.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.end82
  %retval.0 = phi i32 [ %err.0, %do.end86 ], [ 0, %if.end82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_write_table(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %table) unnamed_addr #2 align 64 {
entry:
  %range_vals = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range_vals) #8
  %2 = call ptr @memset(ptr %range_vals, i32 255, i32 16)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %next.0 = phi ptr [ %table, %entry ], [ %incdec.ptr, %for.inc ]
  %range_start.0 = phi i32 [ -1, %entry ], [ %range_start.3, %for.inc ]
  %range_count.0 = phi i32 [ 0, %entry ], [ %range_count.2, %for.inc ]
  %3 = ptrtoint ptr %next.0 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %next.0, align 2
  %conv = zext i16 %4 to i32
  %add = add i32 %range_count.0, %range_start.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp.not = icmp ne i32 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %5 = icmp ult i16 %4, 2
  %6 = or i1 %5, %cmp.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %range_count.0)
  %cmp13 = icmp eq i32 %range_count.0, 16
  %or.cond77 = select i1 %6, i1 true, i1 %cmp13
  br i1 %or.cond77, label %if.then, label %if.end42

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %range_count.0)
  %cmp15 = icmp eq i32 %range_count.0, 1
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %range_vals to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %range_vals, align 1
  %conv18 = zext i8 %8 to i32
  %call = call i32 @regmap_write(ptr noundef %1, i32 noundef %range_start.0, i32 noundef %conv18) #8
  br label %if.end25

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %range_count.0)
  %cmp19 = icmp sgt i32 %range_count.0, 1
  br i1 %cmp19, label %if.then21, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef %range_start.0, ptr noundef nonnull %range_vals, i32 noundef %range_count.0) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then17
  %err.0 = phi i32 [ %call, %if.then17 ], [ %call23, %if.then21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end25.if.end27_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25.if.end27_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %if.end25.if.end27_crit_edge, %if.else.if.end27_crit_edge
  %9 = ptrtoint ptr %next.0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %next.0, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %10, label %if.end42.thread [
    i16 1, label %if.end27.cleanup_crit_edge
    i16 0, label %if.then38
  ]

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42.thread:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %val4382 = getelementptr inbounds %struct.reg_8, ptr %next.0, i32 0, i32 1
  %12 = ptrtoint ptr %val4382 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val4382, align 2
  br label %if.then46

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %val39 = getelementptr inbounds %struct.reg_8, ptr %next.0, i32 0, i32 1
  %14 = ptrtoint ptr %val39 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val39, align 2
  %conv40 = zext i8 %15 to i32
  %mul.i = mul nuw nsw i32 %conv40, 1000
  %add.i = add nuw nsw i32 %mul.i, 500
  call void @usleep_range_state(i32 noundef %mul.i, i32 noundef %add.i, i32 noundef 2) #8
  br label %for.inc

if.end42:                                         ; preds = %for.cond
  %val43 = getelementptr inbounds %struct.reg_8, ptr %next.0, i32 0, i32 1
  %16 = ptrtoint ptr %val43 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val43, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %range_start.0)
  %cmp44 = icmp eq i32 %range_start.0, -1
  br i1 %cmp44, label %if.end42.if.then46_crit_edge, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end42.if.then46_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %if.end42.if.then46_crit_edge, %if.end42.thread
  %18 = phi i8 [ %13, %if.end42.thread ], [ %17, %if.end42.if.then46_crit_edge ]
  %range_count.185 = phi i32 [ 0, %if.end42.thread ], [ %range_count.0, %if.end42.if.then46_crit_edge ]
  %19 = ptrtoint ptr %next.0 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %next.0, align 2
  %conv48 = zext i16 %20 to i32
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end42.if.end49_crit_edge
  %21 = phi i8 [ %18, %if.then46 ], [ %17, %if.end42.if.end49_crit_edge ]
  %range_count.184 = phi i32 [ %range_count.185, %if.then46 ], [ %range_count.0, %if.end42.if.end49_crit_edge ]
  %range_start.2 = phi i32 [ %conv48, %if.then46 ], [ %range_start.0, %if.end42.if.end49_crit_edge ]
  %inc = add i32 %range_count.184, 1
  %arrayidx50 = getelementptr [16 x i8], ptr %range_vals, i32 0, i32 %range_count.184
  %22 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx50, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end49, %if.then38
  %range_start.3 = phi i32 [ -1, %if.then38 ], [ %range_start.2, %if.end49 ]
  %range_count.2 = phi i32 [ 0, %if.then38 ], [ %inc, %if.end49 ]
  %incdec.ptr = getelementptr %struct.reg_8, ptr %next.0, i32 1
  br label %for.cond

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end25.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range_vals) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_set_frame_length(ptr nocapture noundef readonly %priv, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %val_le.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_frame_length.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_frame_length, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_frame_length.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %val) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i) #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #8
  %3 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %val_le.i, align 4
  %regmap.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %5, i32 noundef 12536, ptr noundef nonnull %val_le.i, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %do.end9

do.body2.i:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_frame_length, %imx274_write_mbreg.exit.thread)) #8
          to label %imx274_write_mbreg.exit [label %imx274_write_mbreg.exit.thread], !srcloc !318

imx274_write_mbreg.exit.thread:                   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %client8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client8.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12536, i32 noundef %val, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %cleanup

imx274_write_mbreg.exit:                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %cleanup

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12536, i32 noundef %val, i32 noundef 3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.65, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %imx274_write_mbreg.exit, %imx274_write_mbreg.exit.thread
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_set_exposure(ptr nocapture noundef readonly %priv, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %val_le.i = alloca i32, align 4
  %coarse_time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coarse_time) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_exposure.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_exposure, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_exposure.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %val) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i) #8
  %2 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val_le.i, align 4
  %regmap.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 12534, ptr noundef nonnull %val_le.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %imx274_read_mbreg.exit.thread62

imx274_read_mbreg.exit.thread62:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 12534, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %do.end38

if.else.i:                                        ; preds = %do.end
  %7 = ptrtoint ptr %val_le.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val_le.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_read_mbreg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_exposure, %imx274_read_mbreg.exit.thread)) #8
          to label %imx274_read_mbreg.exit [label %imx274_read_mbreg.exit.thread], !srcloc !318

imx274_read_mbreg.exit.thread:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %10 = ptrtoint ptr %client8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client8.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_read_mbreg.__UNIQUE_ID_ddebug294, ptr noundef %dev9.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.64, i32 noundef 12534, i32 noundef %9, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end6

imx274_read_mbreg.exit:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end6

if.end6:                                          ; preds = %imx274_read_mbreg.exit, %imx274_read_mbreg.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end6.do.end38_crit_edge, label %if.end8

if.end6.do.end38_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

if.end8:                                          ; preds = %if.end6
  %mul = mul i32 %val, 72
  %mode = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 12
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode, align 4
  %nocpiop = getelementptr inbounds %struct.imx274_mode, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %nocpiop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nocpiop, align 4
  %sub = sub i32 %mul, %15
  %div = udiv i32 %sub, %9
  %16 = ptrtoint ptr %coarse_time to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %coarse_time, align 4
  %call9 = call fastcc i32 @imx274_set_coarse_time(ptr noundef %priv, ptr noundef nonnull %coarse_time)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.do.end38_crit_edge

if.end8.do.end38_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %coarse_time to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %coarse_time, align 4
  %mul13 = mul i32 %18, %9
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode, align 4
  %nocpiop15 = getelementptr inbounds %struct.imx274_mode, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %nocpiop15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nocpiop15, align 4
  %add = add i32 %22, %mul13
  %div16 = udiv i32 %add, 72
  %exposure = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exposure, align 4
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div16, ptr %val17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_exposure.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_exposure, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !318

if.then30:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %client31 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %26 = ptrtoint ptr %client31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client31, align 4
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_exposure.__UNIQUE_ID_ddebug325, ptr noundef %dev32, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74) #8
  br label %cleanup

do.end38:                                         ; preds = %if.end8.do.end38_crit_edge, %if.end6.do.end38_crit_edge, %imx274_read_mbreg.exit.thread62
  %err.0 = phi i32 [ %call9, %if.end8.do.end38_crit_edge ], [ -22, %if.end6.do.end38_crit_edge ], [ %call.i, %imx274_read_mbreg.exit.thread62 ]
  %client39 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %28 = ptrtoint ptr %client39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client39, align 4
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.74, i32 noundef %err.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.then30, %if.end12
  %retval.0 = phi i32 [ %err.0, %do.end38 ], [ 0, %if.then30 ], [ 0, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coarse_time) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_set_coarse_time(ptr nocapture noundef readonly %priv, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  %val_le.i = alloca i32, align 4
  %frame_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_length) #8
  %0 = ptrtoint ptr %frame_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %frame_length, align 4, !annotation !322
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call.i = call fastcc i32 @imx274_get_frame_length(ptr noundef %priv, ptr noundef nonnull %frame_length) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %frame_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame_length, align 4
  %mode.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 12
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode.i, align 4
  %min_frame_len.i = getelementptr inbounds %struct.imx274_mode, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %min_frame_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_frame_len.i, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %4, i32 %8)
  %10 = ptrtoint ptr %frame_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %frame_length, align 4
  %sub.i = sub i32 %9, %2
  %sub5.i = add i32 %9, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub5.i)
  %cmp6.i = icmp ugt i32 %sub.i, %sub5.i
  br i1 %cmp6.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.else.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %min_SHR.i = getelementptr inbounds %struct.imx274_mode, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %min_SHR.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_SHR.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %12)
  %cmp10.i = icmp ult i32 %sub.i, %12
  br i1 %cmp10.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %sub5.sink.i = phi i32 [ %sub5.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %12, %if.else.i.cleanup.sink.split.i_crit_edge ]
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %if.else.i.if.end_crit_edge
  %coarse_time.0.ph = phi i32 [ %sub.i, %if.else.i.if.end_crit_edge ], [ %sub5.sink.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i) #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %coarse_time.0.ph) #8
  %14 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val_le.i, align 4
  %regmap.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i13 = call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef 12300, ptr noundef nonnull %val_le.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %do.body2.i, label %imx274_write_mbreg.exit.thread22

imx274_write_mbreg.exit.thread22:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12300, i32 noundef %coarse_time.0.ph, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %do.end

do.body2.i:                                       ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_coarse_time, %imx274_write_mbreg.exit.thread)) #8
          to label %imx274_write_mbreg.exit [label %imx274_write_mbreg.exit.thread], !srcloc !318

imx274_write_mbreg.exit.thread:                   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %19 = ptrtoint ptr %client8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client8.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12300, i32 noundef %coarse_time.0.ph, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end4

imx274_write_mbreg.exit:                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end4

if.end4:                                          ; preds = %imx274_write_mbreg.exit, %imx274_write_mbreg.exit.thread
  %21 = ptrtoint ptr %frame_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_length, align 4
  %sub = sub i32 %22, %coarse_time.0.ph
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %val, align 4
  br label %cleanup

do.end:                                           ; preds = %imx274_write_mbreg.exit.thread22, %entry.do.end_crit_edge
  %err.0 = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %call.i13, %imx274_write_mbreg.exit.thread22 ]
  %client = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.77, i32 noundef %err.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4
  %retval.0 = phi i32 [ %err.0, %do.end ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_length) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_get_frame_length(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %val_le.i12 = alloca i32, align 4
  %val_le.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i) #8
  %0 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val_le.i, align 4
  %regmap.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 12302, ptr noundef nonnull %val_le.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %imx274_read_mbreg.exit.thread28

imx274_read_mbreg.exit.thread28:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 12302, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %do.end

if.else.i:                                        ; preds = %entry
  %5 = ptrtoint ptr %val_le.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val_le.i, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_read_mbreg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_get_frame_length, %imx274_read_mbreg.exit.thread)) #8
          to label %imx274_read_mbreg.exit [label %imx274_read_mbreg.exit.thread], !srcloc !318

imx274_read_mbreg.exit.thread:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %client8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client8.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_read_mbreg.__UNIQUE_ID_ddebug294, ptr noundef %dev9.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.64, i32 noundef 12302, i32 noundef %7, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end

imx274_read_mbreg.exit:                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end

if.end:                                           ; preds = %imx274_read_mbreg.exit, %imx274_read_mbreg.exit.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i12) #8
  %10 = ptrtoint ptr %val_le.i12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %val_le.i12, align 4
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i14 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 12536, ptr noundef nonnull %val_le.i12, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.else.i19, label %imx274_read_mbreg.exit23.thread32

imx274_read_mbreg.exit23.thread32:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %client.i16 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %client.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i16, align 4
  %dev.i17 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i17, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 12536, i32 noundef 3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i12) #8
  br label %do.end

if.else.i19:                                      ; preds = %if.end
  %15 = ptrtoint ptr %val_le.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val_le.i12, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_read_mbreg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_get_frame_length, %imx274_read_mbreg.exit23.thread)) #8
          to label %imx274_read_mbreg.exit23 [label %imx274_read_mbreg.exit23.thread], !srcloc !318

imx274_read_mbreg.exit23.thread:                  ; preds = %if.else.i19
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i20 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %client8.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client8.i20, align 4
  %dev9.i21 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_read_mbreg.__UNIQUE_ID_ddebug294, ptr noundef %dev9.i21, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.64, i32 noundef 12536, i32 noundef %17, i32 noundef 3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i12) #8
  br label %if.end4

imx274_read_mbreg.exit23:                         ; preds = %if.else.i19
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i12) #8
  br label %if.end4

if.end4:                                          ; preds = %imx274_read_mbreg.exit23, %imx274_read_mbreg.exit23.thread
  %add = add i32 %7, 1
  %mul = mul i32 %17, %add
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

do.end:                                           ; preds = %imx274_read_mbreg.exit23.thread32, %imx274_read_mbreg.exit.thread28
  %err.0 = phi i32 [ %call.i, %imx274_read_mbreg.exit.thread28 ], [ %call.i14, %imx274_read_mbreg.exit23.thread32 ]
  %client = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.78, i32 noundef %err.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4
  %retval.0 = phi i32 [ %err.0, %do.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx274_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12303, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_get_fmt(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef writeonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %format1 = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %format, ptr %format1, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %lock = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  tail call fastcc void @__imx274_change_compose(ptr noundef %sd, ptr noundef %sd_state, i32 noundef %1, ptr noundef %format1, ptr noundef %height, i32 noundef 0)
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %field, align 4
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format5 = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 5
  br label %out

out:                                              ; preds = %if.else, %if.then4
  %.sink = phi ptr [ %6, %if.then4 ], [ %format5, %if.else ]
  %7 = call ptr @memcpy(ptr %.sink, ptr %format1, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3840, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2160, ptr %height, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7 = icmp eq i32 %9, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %try_crop = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1
  br label %if.end10

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %crop = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 4
  %format = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 5
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %src_crop.0 = phi ptr [ %try_crop, %if.then8 ], [ %crop, %if.else ]
  %src_fmt.0 = phi ptr [ %11, %if.then8 ], [ %format, %if.else ]
  %lock = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %12 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %13, label %if.end10.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 258, label %sw.bb13
    i32 256, label %sw.bb24
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %r12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %r12, ptr %src_crop.0, i32 16)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %r14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %top15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %top15, align 4
  %17 = ptrtoint ptr %r14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %r14, align 4
  %width18 = getelementptr inbounds %struct.v4l2_rect, ptr %src_crop.0, i32 0, i32 2
  %18 = ptrtoint ptr %width18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width18, align 4
  %width20 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %width20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width20, align 4
  %height21 = getelementptr inbounds %struct.v4l2_rect, ptr %src_crop.0, i32 0, i32 3
  %21 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height21, align 4
  %height23 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %height23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height23, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %r25 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top26 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %top26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %top26, align 4
  %25 = ptrtoint ptr %r25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %r25, align 4
  %26 = ptrtoint ptr %src_fmt.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_fmt.0, align 4
  %width31 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %width31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %width31, align 4
  %height32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %src_fmt.0, i32 0, i32 1
  %29 = ptrtoint ptr %height32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height32, align 4
  %height34 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height34, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb13, %sw.bb, %if.end10.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb24 ], [ 0, %sw.bb13 ], [ 0, %sw.bb ], [ -22, %if.end10.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_set_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  %new_crop.i = alloca %struct.v4l2_rect, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then2
    i32 256, label %if.then7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_crop.i) #8
  %5 = getelementptr inbounds %struct.v4l2_rect, ptr %new_crop.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.v4l2_rect, ptr %new_crop.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.v4l2_rect, ptr %new_crop.i, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %width.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width.i, align 4
  %add.i = add i32 %11, 23
  br label %cond.end16.i

cond.false.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %width11.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %width11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width11.i, align 4
  %add12.i = add i32 %13, 12
  %spec.select3.i = select i1 %tobool3.not.i, i32 %add12.i, i32 %13
  br label %cond.end16.i

cond.end16.i:                                     ; preds = %cond.false.i, %cond.true.i
  %.sink2.i = phi i32 [ %add.i, %cond.true.i ], [ %spec.select3.i, %cond.false.i ]
  %rem.i = urem i32 %.sink2.i, 24
  %sub.i = sub i32 %.sink2.i, %rem.i
  %14 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 3840) #8
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 144) #8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %6, align 4
  %r28.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %17 = ptrtoint ptr %r28.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %r28.i, align 4
  %add29.i = add i32 %18, 12
  %rem31.i = urem i32 %add29.i, 24
  %sub32.i = sub i32 %add29.i, %rem31.i
  %sub34.i = sub nuw nsw i32 3840, %15
  %19 = tail call i32 @llvm.umin.i32(i32 %sub32.i, i32 %sub34.i) #8
  %20 = ptrtoint ptr %new_crop.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %new_crop.i, align 4
  %height67.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %height67.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height67.i, align 4
  %and55.i = lshr i32 %9, 1
  %and55.lobit.i = and i32 %and55.i, 1
  %23 = xor i32 %and55.lobit.i, 1
  %.sink = select i1 %tobool.not.i, i32 %23, i32 1
  %spec.select.i = add i32 %22, %.sink
  %cond75.i = and i32 %spec.select.i, -2
  %24 = tail call i32 @llvm.umin.i32(i32 %cond75.i, i32 2160) #8
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %7, align 4
  %top.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %top.i, align 4
  %add85.i = add i32 %27, 1
  %rem87.i = srem i32 %add85.i, 2
  %sub88.i = sub i32 %add85.i, %rem87.i
  %sub90.i = sub nuw nsw i32 2160, %24
  %28 = tail call i32 @llvm.umin.i32(i32 %sub88.i, i32 %sub90.i) #8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %5, align 4
  %30 = call ptr @memcpy(ptr %r28.i, ptr %new_crop.i, i32 16)
  %31 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp99.i = icmp eq i32 %32, 0
  br i1 %cmp99.i, label %if.then100.i, label %if.else.i

if.then100.i:                                     ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %34, i32 0, i32 1
  br label %if.end101.i

if.else.i:                                        ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %crop.i = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else.i, %if.then100.i
  %tgt_crop.0.i = phi ptr [ %try_crop.i, %if.then100.i ], [ %crop.i, %if.else.i ]
  %lock.i = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %width103.i = getelementptr inbounds %struct.v4l2_rect, ptr %tgt_crop.0.i, i32 0, i32 2
  %35 = ptrtoint ptr %width103.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width103.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %36)
  %cmp104.not.i = icmp eq i32 %15, %36
  br i1 %cmp104.not.i, label %lor.rhs.i, label %if.then109.critedge.i

lor.rhs.i:                                        ; preds = %if.end101.i
  %height106.i = getelementptr inbounds %struct.v4l2_rect, ptr %tgt_crop.0.i, i32 0, i32 3
  %37 = ptrtoint ptr %height106.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height106.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %38)
  %cmp107.not.i = icmp eq i32 %24, %38
  %39 = call ptr @memcpy(ptr %tgt_crop.0.i, ptr %new_crop.i, i32 16)
  br i1 %cmp107.not.i, label %lor.rhs.i.imx274_set_selection_crop.exit_crit_edge, label %lor.rhs.i.if.then109.i_crit_edge

lor.rhs.i.if.then109.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109.i

lor.rhs.i.imx274_set_selection_crop.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx274_set_selection_crop.exit

if.then109.critedge.i:                            ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = call ptr @memcpy(ptr %tgt_crop.0.i, ptr %new_crop.i, i32 16)
  br label %if.then109.i

if.then109.i:                                     ; preds = %if.then109.critedge.i, %lor.rhs.i.if.then109.i_crit_edge
  %41 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sel, align 4
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  call fastcc void @__imx274_change_compose(ptr noundef %sd, ptr noundef %sd_state, i32 noundef %42, ptr noundef %6, ptr noundef %7, i32 noundef %44) #8
  br label %imx274_set_selection_crop.exit

imx274_set_selection_crop.exit:                   ; preds = %if.then109.i, %lor.rhs.i.imx274_set_selection_crop.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_crop.i) #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.stimx274, ptr %sd, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %45 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sel, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %flags = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 3
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  tail call fastcc void @__imx274_change_compose(ptr noundef %sd, ptr noundef %sd_state, i32 noundef %46, ptr noundef %width, ptr noundef %height, i32 noundef %48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %top, align 4
  %50 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %r, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %imx274_set_selection_crop.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %imx274_set_selection_crop.exit ], [ 0, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__imx274_change_compose(ptr nocapture noundef %imx274, ptr nocapture noundef readonly %sd_state, i32 noundef %which, ptr nocapture noundef %width, ptr nocapture noundef %height, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 2
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp = icmp eq i32 %which, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %try_crop = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %3, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %crop = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 4
  %format = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tgt_fmt.0 = phi ptr [ %3, %if.then ], [ %format, %if.else ]
  %cur_crop.0 = phi ptr [ %try_crop, %if.then ], [ %crop, %if.else ]
  %width5 = getelementptr inbounds %struct.v4l2_rect, ptr %cur_crop.0, i32 0, i32 2
  %height6 = getelementptr inbounds %struct.v4l2_rect, ptr %cur_crop.0, i32 0, i32 3
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and8.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br label %for.body

for.body:                                         ; preds = %imx274_binning_goodness.exit.for.body_crit_edge, %if.end
  %i.07 = phi i32 [ 0, %if.end ], [ %inc, %imx274_binning_goodness.exit.for.body_crit_edge ]
  %best_goodness.06 = phi i32 [ -2147483648, %if.end ], [ %21, %imx274_binning_goodness.exit.for.body_crit_edge ]
  %best_mode.05 = phi ptr [ @imx274_modes, %if.end ], [ %spec.select, %imx274_binning_goodness.exit.for.body_crit_edge ]
  %wbin_ratio = getelementptr [4 x %struct.imx274_mode], ptr @imx274_modes, i32 0, i32 %i.07, i32 1
  %4 = ptrtoint ptr %wbin_ratio to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wbin_ratio, align 4
  %hbin_ratio = getelementptr [4 x %struct.imx274_mode], ptr @imx274_modes, i32 0, i32 %i.07, i32 2
  %6 = ptrtoint ptr %hbin_ratio to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hbin_ratio, align 1
  %8 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width5, align 4
  %conv = zext i8 %5 to i32
  %div = udiv i32 %9, %conv
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %12 = ptrtoint ptr %height6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height6, align 4
  %conv7 = zext i8 %7 to i32
  %div8 = udiv i32 %13, %conv7
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  br i1 %tobool.not.i, label %for.body.if.end7.i_crit_edge, label %if.then.i

for.body.if.end7.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %11)
  %cmp.i = icmp slt i32 %div, %11
  %spec.select.i = select i1 %cmp.i, i32 -100000, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div8, i32 %15)
  %cmp3.i = icmp slt i32 %div8, %15
  %sub5.i = add nsw i32 %spec.select.i, -100000
  %spec.select65.i = select i1 %cmp3.i, i32 %sub5.i, i32 %spec.select.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i, %for.body.if.end7.i_crit_edge
  %val.1.i = phi i32 [ 0, %for.body.if.end7.i_crit_edge ], [ %spec.select65.i, %if.then.i ]
  br i1 %tobool9.not.i, label %if.end7.i.if.end19.i_crit_edge, label %if.then10.i

if.end7.i.if.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %11)
  %cmp11.i = icmp sgt i32 %div, %11
  %sub13.i = add nsw i32 %val.1.i, -100000
  %spec.select64.i = select i1 %cmp11.i, i32 %sub13.i, i32 %val.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div8, i32 %15)
  %cmp15.i = icmp sgt i32 %div8, %15
  %sub17.i = add nsw i32 %spec.select64.i, -100000
  %spec.select66.i = select i1 %cmp15.i, i32 %sub17.i, i32 %spec.select64.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end19.i_crit_edge
  %val.3.i = phi i32 [ %val.1.i, %if.end7.i.if.end19.i_crit_edge ], [ %spec.select66.i, %if.then10.i ]
  %sub20.i = sub i32 %div, %11
  %18 = tail call i32 @llvm.abs.i32(i32 %sub20.i, i1 false) #8
  %sub25.i = sub i32 %div8, %15
  %19 = tail call i32 @llvm.abs.i32(i32 %sub25.i, i1 false) #8
  %20 = add i32 %19, %18
  %sub33.i = sub i32 %val.3.i, %20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_binning_goodness.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__imx274_change_compose, %if.then38.i)) #8
          to label %imx274_binning_goodness.exit [label %if.then38.i], !srcloc !318

if.then38.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_binning_goodness.__UNIQUE_ID_ddebug301, ptr noundef %dev1.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef %11, i32 noundef %15, i32 noundef %div, i32 noundef %div8, i32 noundef %sub33.i) #8
  br label %imx274_binning_goodness.exit

imx274_binning_goodness.exit:                     ; preds = %if.then38.i, %if.end19.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33.i, i32 %best_goodness.06)
  %cmp9.not = icmp slt i32 %sub33.i, %best_goodness.06
  %arrayidx = getelementptr [4 x %struct.imx274_mode], ptr @imx274_modes, i32 0, i32 %i.07
  %spec.select = select i1 %cmp9.not, ptr %best_mode.05, ptr %arrayidx
  %21 = tail call i32 @llvm.smax.i32(i32 %sub33.i, i32 %best_goodness.06)
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %imx274_binning_goodness.exit.for.body_crit_edge

imx274_binning_goodness.exit.for.body_crit_edge:  ; preds = %imx274_binning_goodness.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %imx274_binning_goodness.exit
  %22 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width5, align 4
  %wbin_ratio15 = getelementptr inbounds %struct.imx274_mode, ptr %spec.select, i32 0, i32 1
  %24 = ptrtoint ptr %wbin_ratio15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %wbin_ratio15, align 4
  %conv16 = zext i8 %25 to i32
  %div17 = udiv i32 %23, %conv16
  %26 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div17, ptr %width, align 4
  %27 = ptrtoint ptr %height6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height6, align 4
  %hbin_ratio19 = getelementptr inbounds %struct.imx274_mode, ptr %spec.select, i32 0, i32 2
  %29 = ptrtoint ptr %hbin_ratio19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hbin_ratio19, align 1
  %conv20 = zext i8 %30 to i32
  %div21 = udiv i32 %28, %conv20
  %31 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div21, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %which)
  %cmp22 = icmp eq i32 %which, 1
  br i1 %cmp22, label %if.then24, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %mode = getelementptr inbounds %struct.stimx274, ptr %imx274, i32 0, i32 12
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.select, ptr %mode, align 4
  br label %do.body

do.body:                                          ; preds = %if.then24, %for.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__imx274_change_compose.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__imx274_change_compose, %if.then29)) #8
          to label %do.end [label %if.then29], !srcloc !318

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %wbin_ratio15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wbin_ratio15, align 4
  %conv31 = zext i8 %34 to i32
  %35 = ptrtoint ptr %hbin_ratio19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hbin_ratio19, align 1
  %conv33 = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__imx274_change_compose.__UNIQUE_ID_ddebug302, ptr noundef %dev1, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %conv31, i32 noundef %conv33) #8
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  %37 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width, align 4
  %39 = ptrtoint ptr %tgt_fmt.0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tgt_fmt.0, align 4
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %height36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %tgt_fmt.0, i32 0, i32 1
  %42 = ptrtoint ptr %height36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %height36, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %tgt_fmt.0, i32 0, i32 3
  %43 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %field, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx274_s_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -232
  %client = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_s_ctrl, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !318

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_s_ctrl.__UNIQUE_ID_ddebug296, ptr noundef %dev9, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.88, ptr noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %11, label %do.end.sw.epilog_crit_edge [
    i32 9963793, label %do.body11
    i32 9963795, label %do.body32
    i32 9963797, label %do.body52
    i32 10422531, label %do.body73
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body11:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_s_ctrl, %if.then23)) #8
          to label %do.end28 [label %if.then23], !srcloc !318

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 4
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_s_ctrl.__UNIQUE_ID_ddebug297, ptr noundef %dev25, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body11
  %val29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val29, align 4
  %call30 = tail call fastcc i32 @imx274_set_exposure(ptr noundef %add.ptr.i, i32 noundef %16)
  br label %sw.epilog

do.body32:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_s_ctrl, %if.then44)) #8
          to label %do.end49 [label %if.then44], !srcloc !318

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client, align 4
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_s_ctrl.__UNIQUE_ID_ddebug298, ptr noundef %dev46, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.88) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  %call50 = tail call fastcc i32 @imx274_set_gain(ptr noundef %add.ptr.i, ptr noundef %ctrl)
  br label %sw.epilog

do.body52:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_s_ctrl, %if.then64)) #8
          to label %do.end69 [label %if.then64], !srcloc !318

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client, align 4
  %dev66 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_s_ctrl.__UNIQUE_ID_ddebug299, ptr noundef %dev66, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.88) #8
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %do.body52
  %val70 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val70, align 4
  %call71 = tail call fastcc i32 @imx274_set_vflip(ptr noundef %add.ptr.i, i32 noundef %22)
  br label %sw.epilog

do.body73:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_s_ctrl, %if.then85)) #8
          to label %do.end90 [label %if.then85], !srcloc !318

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client, align 4
  %dev87 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_s_ctrl.__UNIQUE_ID_ddebug300, ptr noundef %dev87, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.88) #8
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %do.body73
  %val91 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val91, align 4
  %call92 = tail call fastcc i32 @imx274_set_test_pattern(ptr noundef %add.ptr.i, i32 noundef %26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end90, %do.end69, %do.end49, %do.end28, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %do.end.sw.epilog_crit_edge ], [ %call92, %do.end90 ], [ %call71, %do.end69 ], [ %call50, %do.end49 ], [ %call30, %do.end28 ]
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client, align 4
  %dev94 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %call.i127 = tail call i32 @__pm_runtime_idle(ptr noundef %dev94, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_set_gain(ptr nocapture noundef readonly %priv, ptr nocapture noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  %val_le.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_gain.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_gain, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %shr = lshr i32 %1, 8
  %and = and i32 %1, 255
  %mul = mul nuw nsw i32 %and, 100
  %shr3 = lshr i32 %mul, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_gain.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94, i32 noundef %shr, i32 noundef %shr3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 256)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 46088)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5762, i32 %5)
  %cmp9 = icmp ult i32 %5, 5762
  br i1 %cmp9, label %do.end.if.end20_crit_edge, label %if.else11

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 11523, i32 %5)
  %cmp12 = icmp ult i32 %5, 11523
  br i1 %cmp12, label %if.else11.if.end20_crit_edge, label %if.else14

if.else11.if.end20_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 23045, i32 %5)
  %cmp15 = icmp ult i32 %5, 23045
  %. = select i1 %cmp15, i32 4, i32 8
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %if.else11.if.end20_crit_edge, %do.end.if.end20_crit_edge
  %digital_gain.0 = phi i32 [ 1, %do.end.if.end20_crit_edge ], [ 2, %if.else11.if.end20_crit_edge ], [ %., %if.else14 ]
  %div.lhs.trunc = trunc i32 %5 to i16
  %div.rhs.trunc = trunc i32 %digital_gain.0 to i16
  %div129 = udiv i16 %div.lhs.trunc, %div.rhs.trunc
  %div.zext = zext i16 %div129 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_gain.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_gain, %if.then33)) #8
          to label %do.end42 [label %if.then33], !srcloc !318

if.then33:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %client34 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %client34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client34, align 4
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %shr36 = lshr i32 %div.zext, 8
  %and37 = and i32 %div.zext, 255
  %mul38 = mul nuw nsw i32 %and37, 100
  %shr39 = lshr i32 %mul38, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_gain.__UNIQUE_ID_ddebug322, ptr noundef %dev35, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef %digital_gain.0, i32 noundef %shr36, i32 noundef %shr39) #8
  br label %do.end42

do.end42:                                         ; preds = %if.then33, %if.end20
  %8 = tail call i32 @llvm.cttz.i32(i32 %digital_gain.0, i1 true) #8, !range !323
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp10.i = icmp ult i32 %8, 3
  %phi.cast.i = and i32 %8, 15
  %regmap.i.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i.i = select i1 %cmp10.i, i32 %phi.cast.i, i32 3
  %call.i.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 12306, i32 noundef %conv1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %imx274_set_digital_gain.exit.thread126

imx274_set_digital_gain.exit.thread126:           ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  %client.i.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 12306, i32 noundef %conv1.i.i) #11
  br label %do.end84

do.body4.i.i:                                     ; preds = %do.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_gain, %imx274_set_digital_gain.exit.thread)) #8
          to label %if.end46 [label %imx274_set_digital_gain.exit.thread], !srcloc !318

imx274_set_digital_gain.exit.thread:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %client10.i.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %client10.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client10.i.i, align 4
  %dev11.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev11.i.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, i32 noundef 12306, i32 noundef %conv1.i.i) #8
  br label %if.end46

if.end46:                                         ; preds = %imx274_set_digital_gain.exit.thread, %do.body4.i.i
  %div47 = udiv i32 524288, %div.zext
  %sub = sub nsw i32 2048, %div47
  %15 = tail call i32 @llvm.umin.i32(i32 %sub, i32 1957)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_le.i) #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %17 = ptrtoint ptr %val_le.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val_le.i, align 4
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef 12298, ptr noundef nonnull %val_le.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %imx274_write_mbreg.exit.thread127

imx274_write_mbreg.exit.thread127:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 12298, i32 noundef %15, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %do.end84

do.body2.i:                                       ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_gain, %imx274_write_mbreg.exit.thread)) #8
          to label %imx274_write_mbreg.exit [label %imx274_write_mbreg.exit.thread], !srcloc !318

imx274_write_mbreg.exit.thread:                   ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %client8.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %22 = ptrtoint ptr %client8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client8.i, align 4
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_mbreg.__UNIQUE_ID_ddebug295, ptr noundef %dev9.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 12298, i32 noundef %15, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end58

imx274_write_mbreg.exit:                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_le.i) #8
  br label %if.end58

if.end58:                                         ; preds = %imx274_write_mbreg.exit, %imx274_write_mbreg.exit.thread
  %sub55 = sub nuw nsw i32 2048, %15
  %div60 = udiv i32 524288, %sub55
  %mul61 = mul nuw nsw i32 %div60, %digital_gain.0
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul61, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_gain.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_gain, %if.then75)) #8
          to label %cleanup [label %if.then75], !srcloc !318

if.then75:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %client76 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %client76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client76, align 4
  %dev77 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_gain.__UNIQUE_ID_ddebug323, ptr noundef %dev77, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.94, i32 noundef %15, i32 noundef %28) #8
  br label %cleanup

do.end84:                                         ; preds = %imx274_write_mbreg.exit.thread127, %imx274_set_digital_gain.exit.thread126
  %err.0 = phi i32 [ %call.i.i, %imx274_set_digital_gain.exit.thread126 ], [ %call.i, %imx274_write_mbreg.exit.thread127 ]
  %client85 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %29 = ptrtoint ptr %client85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client85, align 4
  %dev86 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.94, i32 noundef %err.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.then75, %if.end58
  %retval.0 = phi i32 [ %err.0, %do.end84 ], [ 0, %if.then75 ], [ 0, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_set_vflip(ptr nocapture noundef readonly %priv, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %conv1.i = and i32 %val, 255
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12314, i32 noundef %conv1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end

do.body4.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_vflip, %imx274_write_reg.exit.thread)) #8
          to label %do.body1 [label %imx274_write_reg.exit.thread], !srcloc !318

imx274_write_reg.exit.thread:                     ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  %client10.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %client10.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client10.i, align 4
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev11.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, i32 noundef 12314, i32 noundef %conv1.i) #8
  br label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 12314, i32 noundef %conv1.i) #11
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.101) #11
  br label %cleanup

do.body1:                                         ; preds = %imx274_write_reg.exit.thread, %do.body4.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_vflip.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_vflip, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !318

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %client7 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client7, align 4
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_vflip.__UNIQUE_ID_ddebug326, ptr noundef %dev8, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body1, %do.end
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx274_set_test_pattern(ptr nocapture noundef readonly %priv, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp eq i32 %val, 0
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %val)
  %cmp1 = icmp slt i32 %val, 13
  br i1 %cmp1, label %if.then2, label %if.else.do.end20_crit_edge

if.else.do.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.then2:                                         ; preds = %if.else
  %conv = add nsw i32 %val, 255
  %regmap.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %conv1.i = and i32 %conv, 255
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12349, i32 noundef %conv1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %imx274_write_reg.exit.thread33

imx274_write_reg.exit.thread33:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 12349, i32 noundef %conv1.i) #11
  br label %do.end20

do.body4.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_test_pattern, %imx274_write_reg.exit.thread)) #8
          to label %if.end8 [label %imx274_write_reg.exit.thread], !srcloc !318

imx274_write_reg.exit.thread:                     ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  %client10.i = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %client10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client10.i, align 4
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev11.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, i32 noundef 12349, i32 noundef %conv1.i) #8
  br label %if.end8

if.end8:                                          ; preds = %imx274_write_reg.exit.thread, %do.body4.i, %entry.if.end8_crit_edge
  %imx274_tp_regs.sink = phi ptr [ @imx274_tp_disabled, %entry.if.end8_crit_edge ], [ @imx274_tp_regs, %do.body4.i ], [ @imx274_tp_regs, %imx274_write_reg.exit.thread ]
  %call5 = tail call fastcc i32 @imx274_write_table(ptr noundef %priv, ptr noundef nonnull %imx274_tp_regs.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool9.not = icmp eq i32 %call5, 0
  br i1 %tobool9.not, label %do.body, label %if.end8.do.end20_crit_edge

if.end8.do.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx274_set_test_pattern.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx274_set_test_pattern, %if.then15)) #8
          to label %if.end23 [label %if.then15], !srcloc !318

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx274_set_test_pattern.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104) #8
  br label %if.end23

do.end20:                                         ; preds = %if.end8.do.end20_crit_edge, %imx274_write_reg.exit.thread33, %if.else.do.end20_crit_edge
  %err.037 = phi i32 [ %call5, %if.end8.do.end20_crit_edge ], [ %call.i, %imx274_write_reg.exit.thread33 ], [ -22, %if.else.do.end20_crit_edge ]
  %client21 = getelementptr inbounds %struct.stimx274, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %client21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client21, align 4
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.104, i32 noundef %err.037) #11
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.then15, %do.body
  %err.036 = phi i32 [ 0, %if.then15 ], [ %err.037, %do.end20 ], [ 0, %do.body ]
  ret i32 %err.036
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !111, !112, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !152, !153, !154, !156, !157, !159, !160, !161, !162, !164, !166, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !194, !196, !197, !198, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !221, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !252, !253, !255, !256, !258, !259, !260, !261, !263, !264, !266, !267, !268, !270, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307}
!llvm.module.flags = !{!309, !310, !311, !312, !313, !314, !315, !316}
!llvm.ident = !{!317}

!0 = !{ptr @__initcall__kmod_imx274__332_2180_imx274_i2c_driver_init6, !1, !"__initcall__kmod_imx274__332_2180_imx274_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/imx274.c", i32 2180, i32 1}
!2 = !{ptr @__exitcall_imx274_i2c_driver_exit, !1, !"__exitcall_imx274_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author333, !4, !"__UNIQUE_ID_author333", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/imx274.c", i32 2182, i32 1}
!5 = !{ptr @__UNIQUE_ID_description334, !6, !"__UNIQUE_ID_description334", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/imx274.c", i32 2183, i32 1}
!7 = !{ptr @__UNIQUE_ID_file335, !8, !"__UNIQUE_ID_file335", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/imx274.c", i32 2184, i32 1}
!9 = !{ptr @__UNIQUE_ID_license336, !8, !"__UNIQUE_ID_license336", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/imx274.c", i32 2171, i32 11}
!12 = !{ptr @imx274_i2c_driver, !13, !"imx274_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/imx274.c", i32 2169, i32 26}
!14 = !{ptr @imx274_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/imx274.c", i32 2008, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/imx274.c", i32 2014, i32 44}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/imx274.c", i32 2020, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @imx274_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @imx274_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @imx274_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/imx274.c", i32 2037, i32 19}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/imx274.c", i32 2039, i32 3}
!32 = !{ptr @imx274_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx274_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/imx274.c", i32 2056, i32 3}
!36 = !{ptr @imx274_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx274_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/imx274.c", i32 2062, i32 52}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/imx274.c", i32 2066, i32 4}
!42 = !{ptr @imx274_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx274_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/imx274.c", i32 2074, i32 3}
!46 = !{ptr @imx274_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx274_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @imx274_probe._key.22, !49, !"_key", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/imx274.c", i32 2079, i32 8}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/imx274.c", i32 2081, i32 3}
!53 = !{ptr @imx274_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @imx274_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/imx274.c", i32 2124, i32 3}
!57 = !{ptr @imx274_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @imx274_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/imx274.c", i32 2133, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @imx274_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @imx274_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/imx274.c", i32 1972, i32 3}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @imx274_fwnode_parse._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @imx274_fwnode_parse._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/imx274.c", i32 1979, i32 3}
!71 = !{ptr @imx274_fwnode_parse._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @imx274_fwnode_parse._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/imx274.c", i32 1982, i32 3}
!75 = !{ptr @imx274_fwnode_parse._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @imx274_fwnode_parse._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/imx274.c", i32 1988, i32 3}
!79 = !{ptr @imx274_fwnode_parse._entry.42, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @imx274_fwnode_parse._entry_ptr.44, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/imx274.c", i32 138, i32 2}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/imx274.c", i32 139, i32 2}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/imx274.c", i32 140, i32 2}
!87 = distinct !{null, !88, !"imx274_supply_names", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/imx274.c", i32 137, i32 27}
!89 = !{ptr @imx274_modes, !90, !"imx274_modes", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/imx274.c", i32 492, i32 33}
!91 = !{ptr @imx274_mode1_3840x2160_raw10, !92, !"imx274_mode1_3840x2160_raw10", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/imx274.c", i32 226, i32 27}
!93 = !{ptr @imx274_mode3_1920x1080_raw10, !94, !"imx274_mode3_1920x1080_raw10", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/imx274.c", i32 267, i32 27}
!95 = !{ptr @imx274_mode5_1280x720_raw10, !96, !"imx274_mode5_1280x720_raw10", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/imx274.c", i32 307, i32 27}
!97 = !{ptr @imx274_mode6_1280x540_raw10, !98, !"imx274_mode6_1280x540_raw10", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/imx274.c", i32 347, i32 27}
!99 = !{ptr @imx274_regmap_config, !100, !"imx274_regmap_config", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/imx274.c", i32 153, i32 35}
!101 = !{ptr @imx274_subdev_ops, !102, !"imx274_subdev_ops", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/imx274.c", i32 1940, i32 37}
!103 = !{ptr @imx274_video_ops, !104, !"imx274_video_ops", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/imx274.c", i32 1934, i32 43}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/imx274.c", i32 1443, i32 2}
!107 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @imx274_s_stream.__UNIQUE_ID_ddebug315, !106, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!110 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/imx274.c", i32 1490, i32 2}
!114 = !{ptr @imx274_s_stream.__UNIQUE_ID_ddebug316, !113, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/imx274.c", i32 1496, i32 2}
!117 = !{ptr @imx274_s_stream._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @imx274_s_stream._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @imx274_start_1, !120, !"imx274_start_1", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/imx274.c", i32 386, i32 27}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/imx274.c", i32 754, i32 3}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @imx274_write_mbreg._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @imx274_write_mbreg._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/imx274.c", i32 758, i32 3}
!128 = !{ptr @imx274_write_mbreg.__UNIQUE_ID_ddebug295, !127, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/imx274.c", i32 1852, i32 2}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @imx274_set_frame_interval.__UNIQUE_ID_ddebug329, !130, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/imx274.c", i32 1882, i32 2}
!135 = !{ptr @imx274_set_frame_interval.__UNIQUE_ID_ddebug330, !134, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/imx274.c", i32 1889, i32 2}
!138 = !{ptr @imx274_set_frame_interval.__UNIQUE_ID_ddebug331, !137, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/imx274.c", i32 1909, i32 2}
!141 = !{ptr @imx274_set_frame_interval._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @imx274_set_frame_interval._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/imx274.c", i32 722, i32 3}
!145 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @imx274_read_mbreg._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @imx274_read_mbreg._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @imx274_read_mbreg.__UNIQUE_ID_ddebug294, !149, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/imx274.c", i32 727, i32 3}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/imx274.c", i32 1818, i32 2}
!152 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @imx274_set_frame_length.__UNIQUE_ID_ddebug328, !151, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!154 = !{ptr @imx274_set_frame_length._entry, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/imx274.c", i32 1830, i32 2}
!156 = !{ptr @imx274_set_frame_length._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/imx274.c", i32 795, i32 3}
!159 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @imx274_start_stream._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @imx274_start_stream._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @imx274_start_2, !163, !"imx274_start_2", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/imx274.c", i32 443, i32 27}
!164 = !{ptr @imx274_start_3, !165, !"imx274_start_3", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/imx274.c", i32 453, i32 27}
!166 = !{ptr @imx274_stop, !167, !"imx274_stop", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/imx274.c", i32 462, i32 27}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/imx274.c", i32 1347, i32 2}
!170 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @imx274_g_frame_interval.__UNIQUE_ID_ddebug313, !169, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/imx274.c", i32 1391, i32 4}
!174 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @imx274_s_frame_interval._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @imx274_s_frame_interval._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/i2c/imx274.c", i32 1399, i32 3}
!179 = !{ptr @imx274_s_frame_interval.__UNIQUE_ID_ddebug314, !178, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/imx274.c", i32 1706, i32 2}
!182 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @imx274_set_exposure.__UNIQUE_ID_ddebug324, !181, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/imx274.c", i32 1734, i32 2}
!186 = !{ptr @imx274_set_exposure.__UNIQUE_ID_ddebug325, !185, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!187 = !{ptr @imx274_set_exposure._entry, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/imx274.c", i32 1739, i32 2}
!189 = !{ptr @imx274_set_exposure._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.77, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/imx274.c", i32 1686, i32 2}
!192 = !{ptr @imx274_set_coarse_time._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @imx274_set_coarse_time._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/i2c/imx274.c", i32 1528, i32 2}
!196 = !{ptr @imx274_get_frame_length._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @imx274_get_frame_length._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @imx274_pad_ops, !199, !"imx274_pad_ops", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/imx274.c", i32 1926, i32 41}
!200 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/imx274.c", i32 1052, i32 2}
!202 = !{ptr @.str.80, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @__imx274_change_compose.__UNIQUE_ID_ddebug302, !201, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!204 = !{ptr @.str.81, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/imx274.c", i32 977, i32 2}
!206 = !{ptr @.str.82, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @imx274_binning_goodness.__UNIQUE_ID_ddebug301, !205, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!208 = !{ptr @.str.83, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/i2c/imx274.c", i32 852, i32 3}
!210 = !{ptr @.str.84, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @imx274_power_on._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @imx274_power_on._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.86, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/i2c/imx274.c", i32 859, i32 3}
!215 = !{ptr @imx274_power_on._entry.85, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @imx274_power_on._entry_ptr.87, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @imx274_ctrl_ops, !218, !"imx274_ctrl_ops", i1 false, i1 false}
!218 = !{!"../drivers/media/i2c/imx274.c", i32 1945, i32 35}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/imx274.c", i32 917, i32 2}
!221 = !{ptr @.str.89, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug296, !220, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!223 = !{ptr @.str.90, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/i2c/imx274.c", i32 923, i32 3}
!225 = !{ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug297, !224, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!226 = !{ptr @.str.91, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/i2c/imx274.c", i32 929, i32 3}
!228 = !{ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug298, !227, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!229 = !{ptr @.str.92, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/i2c/imx274.c", i32 935, i32 3}
!231 = !{ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug299, !230, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!232 = !{ptr @.str.93, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/i2c/imx274.c", i32 941, i32 3}
!234 = !{ptr @imx274_s_ctrl.__UNIQUE_ID_ddebug300, !233, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!235 = !{ptr @.str.94, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/i2c/imx274.c", i32 1595, i32 2}
!237 = !{ptr @.str.95, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @imx274_set_gain.__UNIQUE_ID_ddebug321, !236, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!239 = !{ptr @.str.96, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/imx274.c", i32 1616, i32 2}
!241 = !{ptr @imx274_set_gain.__UNIQUE_ID_ddebug322, !240, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!242 = !{ptr @.str.97, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/i2c/imx274.c", i32 1646, i32 2}
!244 = !{ptr @imx274_set_gain.__UNIQUE_ID_ddebug323, !243, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!245 = !{ptr @imx274_set_gain._entry, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/media/i2c/imx274.c", i32 1653, i32 2}
!247 = !{ptr @imx274_set_gain._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.98, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/i2c/imx274.c", i32 690, i32 3}
!250 = !{ptr @.str.99, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @imx274_write_reg._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @imx274_write_reg._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.100, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/i2c/imx274.c", i32 694, i32 3}
!255 = !{ptr @imx274_write_reg.__UNIQUE_ID_ddebug293, !254, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!256 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/i2c/imx274.c", i32 1762, i32 3}
!258 = !{ptr @.str.102, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @imx274_set_vflip._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @imx274_set_vflip._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.103, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/i2c/imx274.c", i32 1766, i32 2}
!263 = !{ptr @imx274_set_vflip.__UNIQUE_ID_ddebug326, !262, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!264 = !{ptr @.str.104, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/i2c/imx274.c", i32 1796, i32 3}
!266 = !{ptr @.str.105, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @imx274_set_test_pattern.__UNIQUE_ID_ddebug327, !265, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!268 = !{ptr @imx274_set_test_pattern._entry, !269, !"_entry", i1 false, i1 false}
!269 = !{!"../drivers/media/i2c/imx274.c", i32 1799, i32 3}
!270 = !{ptr @imx274_set_test_pattern._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @imx274_tp_disabled, !272, !"imx274_tp_disabled", i1 false, i1 false}
!272 = !{!"../drivers/media/i2c/imx274.c", i32 470, i32 27}
!273 = !{ptr @imx274_tp_regs, !274, !"imx274_tp_regs", i1 false, i1 false}
!274 = !{!"../drivers/media/i2c/imx274.c", i32 482, i32 27}
!275 = !{ptr @.str.106, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/i2c/imx274.c", i32 206, i32 2}
!277 = !{ptr @.str.107, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/i2c/imx274.c", i32 207, i32 2}
!279 = !{ptr @.str.108, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/i2c/imx274.c", i32 208, i32 2}
!281 = !{ptr @.str.109, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/i2c/imx274.c", i32 209, i32 2}
!283 = !{ptr @.str.110, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/i2c/imx274.c", i32 210, i32 2}
!285 = !{ptr @.str.111, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/i2c/imx274.c", i32 211, i32 2}
!287 = !{ptr @.str.112, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/i2c/imx274.c", i32 212, i32 2}
!289 = !{ptr @.str.113, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/i2c/imx274.c", i32 213, i32 2}
!291 = !{ptr @.str.114, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/i2c/imx274.c", i32 214, i32 2}
!293 = !{ptr @.str.115, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/i2c/imx274.c", i32 215, i32 2}
!295 = !{ptr @.str.116, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/i2c/imx274.c", i32 216, i32 2}
!297 = !{ptr @.str.117, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/i2c/imx274.c", i32 217, i32 2}
!299 = !{ptr @.str.118, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/i2c/imx274.c", i32 218, i32 2}
!301 = !{ptr @tp_qmenu, !302, !"tp_qmenu", i1 false, i1 false}
!302 = !{!"../drivers/media/i2c/imx274.c", i32 205, i32 27}
!303 = !{ptr @imx274_of_id_table, !304, !"imx274_of_id_table", i1 false, i1 false}
!304 = !{!"../drivers/media/i2c/imx274.c", i32 1949, i32 34}
!305 = !{ptr @imx274_pm_ops, !306, !"imx274_pm_ops", i1 false, i1 false}
!306 = !{!"../drivers/media/i2c/imx274.c", i32 2165, i32 32}
!307 = !{ptr @imx274_id, !308, !"imx274_id", i1 false, i1 false}
!308 = !{!"../drivers/media/i2c/imx274.c", i32 1955, i32 35}
!309 = !{i32 1, !"wchar_size", i32 2}
!310 = !{i32 1, !"min_enum_size", i32 4}
!311 = !{i32 8, !"branch-target-enforcement", i32 0}
!312 = !{i32 8, !"sign-return-address", i32 0}
!313 = !{i32 8, !"sign-return-address-all", i32 0}
!314 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!315 = !{i32 7, !"uwtable", i32 1}
!316 = !{i32 7, !"frame-pointer", i32 2}
!317 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!318 = !{i64 2148774017, i64 2148774022, i64 2148774035, i64 2148774079, i64 2148774113, i64 2148774134}
!319 = !{i64 2148291621}
!320 = !{i64 776444, i64 776469, i64 776491, i64 776507, i64 776519, i64 776539, i64 776563, i64 776579, i64 776591}
!321 = !{i64 2148291809}
!322 = !{!"auto-init"}
!323 = !{i32 0, i32 33}
