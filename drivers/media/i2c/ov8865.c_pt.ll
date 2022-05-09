; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov8865.c_pt.bc'
source_filename = "../drivers/media/i2c/ov8865.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ov8865_pll_configs = type { ptr, ptr, ptr }
%struct.ov8865_pll1_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ov8865_pll2_config = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ov8865_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i8, ptr, i32 }
%struct.ov8865_register_value = type { i16, i8, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.ov8865_sensor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.v4l2_fwnode_endpoint, %struct.v4l2_subdev, %struct.media_pad, %struct.mutex, %struct.ov8865_state, %struct.ov8865_ctrls }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.ov8865_state = type { ptr, i32, i8 }
%struct.ov8865_ctrls = type { ptr, ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_fwnode_device_properties = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@__initcall__kmod_ov8865__301_3165_ov8865_driver_init6 = internal global ptr @ov8865_driver_init, section ".initcall6.init", align 4
@ov8865_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov8865_remove, ptr @ov8865_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ov8865_of_match, ptr @ov8865_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov8865_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov8865_driver_exit = internal global ptr @ov8865_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [64 x i8] c"ov8865.author=Paul Kocialkowski <paul.kocialkowski@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [70 x i8] c"ov8865.description=V4L2 driver for the OmniVision OV8865 image sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [37 x i8] c"ov8865.file=drivers/media/i2c/ov8865\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"ov8865.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov8865\00", [25 x i8] zeroinitializer }, align 32
@ov8865_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ovti,ov8865\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ov8865_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"INT347A\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov8865_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov8865_suspend, ptr @ov8865_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get DVDD regulator\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dovdd\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get DOVDD regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot get AVDD (analog) regulator\0A\00", [60 x i8] zeroinitializer }, align 32
@ov8865_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 2993, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to parse endpoint node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov8865_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov8865.c\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov8865_probe._entry_ptr = internal global ptr @ov8865_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ov8865_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.9, i32 3016, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no external clock found, continuing...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ov8865_probe._entry_ptr.17 = internal global ptr @ov8865_probe._entry.14, section ".printk_index", align 4
@ov8865_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.9, i32 3019, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get external clock\0A\00", [34 x i8] zeroinitializer }, align 32
@ov8865_probe._entry_ptr.20 = internal global ptr @ov8865_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid clock config\0A\00", [42 x i8] zeroinitializer }, align 32
@ov8865_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.9, i32 3053, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clock rate %lu Hz is unsupported\0A\00", [62 x i8] zeroinitializer }, align 32
@ov8865_probe._entry_ptr.26 = internal global ptr @ov8865_probe._entry.24, section ".printk_index", align 4
@ov8865_pll_configs = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ov8865_pll_configs_19_2mhz, ptr @ov8865_pll_configs_24mhz], [24 x i8] zeroinitializer }, align 32
@ov8865_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov8865_subdev_video_ops, ptr null, ptr null, ptr null, ptr @ov8865_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov8865_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sensor->mutex\00", [17 x i8] zeroinitializer }, align 32
@ov8865_pll_configs_19_2mhz = internal constant { %struct.ov8865_pll_configs, [20 x i8] } { %struct.ov8865_pll_configs { ptr @ov8865_pll1_config_native_19_2mhz, ptr @ov8865_pll2_config_native_19_2mhz, ptr @ov8865_pll2_config_binning_19_2mhz }, [20 x i8] zeroinitializer }, align 32
@ov8865_pll_configs_24mhz = internal constant { %struct.ov8865_pll_configs, [20 x i8] } { %struct.ov8865_pll_configs { ptr @ov8865_pll1_config_native_24mhz, ptr @ov8865_pll2_config_native_24mhz, ptr @ov8865_pll2_config_binning_24mhz }, [20 x i8] zeroinitializer }, align 32
@ov8865_pll1_config_native_19_2mhz = internal constant { %struct.ov8865_pll1_config, [32 x i8] } { %struct.ov8865_pll1_config { i32 1, i32 2, i32 75, i32 1, i32 3, i32 1, i32 1, i32 2 }, [32 x i8] zeroinitializer }, align 32
@ov8865_pll2_config_native_19_2mhz = internal constant { %struct.ov8865_pll2_config, [40 x i8] } { %struct.ov8865_pll2_config { i32 1, i32 5, i32 75, i32 1, i32 1, i32 3 }, [40 x i8] zeroinitializer }, align 32
@ov8865_pll2_config_binning_19_2mhz = internal constant { %struct.ov8865_pll2_config, [40 x i8] } { %struct.ov8865_pll2_config { i32 1, i32 2, i32 75, i32 2, i32 10, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ov8865_pll1_config_native_24mhz = internal constant { %struct.ov8865_pll1_config, [32 x i8] } { %struct.ov8865_pll1_config { i32 1, i32 0, i32 30, i32 1, i32 3, i32 1, i32 1, i32 2 }, [32 x i8] zeroinitializer }, align 32
@ov8865_pll2_config_native_24mhz = internal constant { %struct.ov8865_pll2_config, [40 x i8] } { %struct.ov8865_pll2_config { i32 1, i32 0, i32 30, i32 2, i32 5, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ov8865_pll2_config_binning_24mhz = internal constant { %struct.ov8865_pll2_config, [40 x i8] } { %struct.ov8865_pll2_config { i32 1, i32 0, i32 30, i32 2, i32 10, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ov8865_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov8865_s_stream, ptr null, ptr @ov8865_g_frame_interval, ptr @ov8865_g_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov8865_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov8865_enum_mbus_code, ptr @ov8865_enum_frame_size, ptr null, ptr @ov8865_get_fmt, ptr @ov8865_set_fmt, ptr @ov8865_get_selection, ptr @ov8865_get_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ov8865_write.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.9, ptr @.str.29, i8 1, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov8865_write\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c send error at address %#04x\0A\00", [63 x i8] zeroinitializer }, align 32
@ov8865_modes = internal constant { [4 x %struct.ov8865_mode], [160 x i8] } { [4 x %struct.ov8865_mode] [%struct.ov8865_mode { i32 0, i32 0, i32 3264, i32 0, i32 3888, i32 0, i32 0, i32 2448, i32 0, i32 2470, i8 1, i32 8, i32 4, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i32 1, i32 1, i32 1, i32 1, i32 16, i32 4, i32 1, i32 0, i32 2, i32 4, i32 4, i32 2, i32 2, i32 8, i32 2, i8 0, i32 576, i32 831, i32 1984, i32 2239, i8 0, ptr @ov8865_register_values_native, i32 66 }, %struct.ov8865_mode { i32 0, i32 0, i32 3264, i32 0, i32 3888, i32 0, i32 0, i32 1836, i32 0, i32 2470, i8 1, i32 8, i32 4, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i32 1, i32 1, i32 1, i32 1, i32 16, i32 4, i32 1, i32 0, i32 2, i32 4, i32 4, i32 2, i32 2, i32 8, i32 2, i8 0, i32 576, i32 831, i32 1984, i32 2239, i8 0, ptr @ov8865_register_values_native, i32 66 }, %struct.ov8865_mode { i32 0, i32 0, i32 1632, i32 0, i32 1923, i32 0, i32 0, i32 1224, i32 0, i32 1248, i8 1, i32 8, i32 8, i8 0, i8 1, i8 0, i32 0, i32 0, i8 1, i8 0, i32 3, i32 1, i32 3, i32 1, i32 116, i32 8, i32 2, i32 0, i32 2, i32 4, i32 4, i32 2, i32 2, i32 8, i32 2, i8 0, i32 288, i32 415, i32 992, i32 1119, i8 1, ptr @ov8865_register_values_binning, i32 66 }, %struct.ov8865_mode { i32 0, i32 0, i32 800, i32 0, i32 1250, i32 0, i32 0, i32 600, i32 0, i32 640, i8 1, i32 8, i32 8, i8 0, i8 1, i8 1, i32 2, i32 1, i8 1, i8 1, i32 3, i32 1, i32 5, i32 3, i32 80, i32 8, i32 2, i32 0, i32 2, i32 2, i32 2, i32 0, i32 0, i32 4, i32 2, i8 16, i32 288, i32 415, i32 992, i32 1119, i8 1, ptr @ov8865_register_values_binning, i32 66 }], [160 x i8] zeroinitializer }, align 32
@ov8865_register_values_native = internal constant { [66 x %struct.ov8865_register_value], [144 x i8] } { [66 x %struct.ov8865_register_value] [%struct.ov8865_register_value { i16 14080, i8 72, i32 0 }, %struct.ov8865_register_value { i16 14081, i8 24, i32 0 }, %struct.ov8865_register_value { i16 14082, i8 80, i32 0 }, %struct.ov8865_register_value { i16 14083, i8 50, i32 0 }, %struct.ov8865_register_value { i16 14084, i8 40, i32 0 }, %struct.ov8865_register_value { i16 14086, i8 112, i32 0 }, %struct.ov8865_register_value { i16 14087, i8 8, i32 0 }, %struct.ov8865_register_value { i16 14088, i8 72, i32 0 }, %struct.ov8865_register_value { i16 14089, i8 -128, i32 0 }, %struct.ov8865_register_value { i16 14090, i8 1, i32 0 }, %struct.ov8865_register_value { i16 14091, i8 112, i32 0 }, %struct.ov8865_register_value { i16 14092, i8 7, i32 0 }, %struct.ov8865_register_value { i16 14104, i8 20, i32 0 }, %struct.ov8865_register_value { i16 14098, i8 68, i32 0 }, %struct.ov8865_register_value { i16 14110, i8 49, i32 0 }, %struct.ov8865_register_value { i16 14111, i8 127, i32 0 }, %struct.ov8865_register_value { i16 14112, i8 10, i32 0 }, %struct.ov8865_register_value { i16 14113, i8 10, i32 0 }, %struct.ov8865_register_value { i16 14116, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14117, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14118, i8 12, i32 0 }, %struct.ov8865_register_value { i16 14120, i8 10, i32 0 }, %struct.ov8865_register_value { i16 14121, i8 3, i32 0 }, %struct.ov8865_register_value { i16 14122, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14123, i8 -90, i32 0 }, %struct.ov8865_register_value { i16 14124, i8 -90, i32 0 }, %struct.ov8865_register_value { i16 14125, i8 -90, i32 0 }, %struct.ov8865_register_value { i16 14126, i8 12, i32 0 }, %struct.ov8865_register_value { i16 14127, i8 32, i32 0 }, %struct.ov8865_register_value { i16 14128, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14129, i8 12, i32 0 }, %struct.ov8865_register_value { i16 14130, i8 40, i32 0 }, %struct.ov8865_register_value { i16 14134, i8 48, i32 0 }, %struct.ov8865_register_value { i16 14138, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14139, i8 24, i32 0 }, %struct.ov8865_register_value { i16 14140, i8 20, i32 0 }, %struct.ov8865_register_value { i16 14142, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14170, i8 12, i32 0 }, %struct.ov8865_register_value { i16 14171, i8 38, i32 0 }, %struct.ov8865_register_value { i16 14173, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14175, i8 40, i32 0 }, %struct.ov8865_register_value { i16 14183, i8 30, i32 0 }, %struct.ov8865_register_value { i16 14194, i8 70, i32 0 }, %struct.ov8865_register_value { i16 14195, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14196, i8 44, i32 0 }, %struct.ov8865_register_value { i16 14197, i8 19, i32 0 }, %struct.ov8865_register_value { i16 14198, i8 16, i32 0 }, %struct.ov8865_register_value { i16 14240, i8 -120, i32 0 }, %struct.ov8865_register_value { i16 14241, i8 122, i32 0 }, %struct.ov8865_register_value { i16 14242, i8 122, i32 0 }, %struct.ov8865_register_value { i16 14243, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14245, i8 9, i32 0 }, %struct.ov8865_register_value { i16 14247, i8 -120, i32 0 }, %struct.ov8865_register_value { i16 14248, i8 -80, i32 0 }, %struct.ov8865_register_value { i16 14249, i8 -80, i32 0 }, %struct.ov8865_register_value { i16 14250, i8 -120, i32 0 }, %struct.ov8865_register_value { i16 14251, i8 92, i32 0 }, %struct.ov8865_register_value { i16 14252, i8 92, i32 0 }, %struct.ov8865_register_value { i16 14253, i8 85, i32 0 }, %struct.ov8865_register_value { i16 14254, i8 25, i32 0 }, %struct.ov8865_register_value { i16 14255, i8 25, i32 0 }, %struct.ov8865_register_value { i16 14259, i8 -124, i32 0 }, %struct.ov8865_register_value { i16 14260, i8 -124, i32 0 }, %struct.ov8865_register_value { i16 14261, i8 102, i32 0 }, %struct.ov8865_register_value { i16 16136, i8 22, i32 0 }, %struct.ov8865_register_value { i16 17664, i8 104, i32 0 }], [144 x i8] zeroinitializer }, align 32
@ov8865_register_values_binning = internal constant { [66 x %struct.ov8865_register_value], [144 x i8] } { [66 x %struct.ov8865_register_value] [%struct.ov8865_register_value { i16 14080, i8 36, i32 0 }, %struct.ov8865_register_value { i16 14081, i8 12, i32 0 }, %struct.ov8865_register_value { i16 14082, i8 40, i32 0 }, %struct.ov8865_register_value { i16 14083, i8 25, i32 0 }, %struct.ov8865_register_value { i16 14084, i8 20, i32 0 }, %struct.ov8865_register_value { i16 14086, i8 56, i32 0 }, %struct.ov8865_register_value { i16 14087, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14088, i8 36, i32 0 }, %struct.ov8865_register_value { i16 14089, i8 64, i32 0 }, %struct.ov8865_register_value { i16 14090, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14091, i8 -72, i32 0 }, %struct.ov8865_register_value { i16 14092, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14104, i8 18, i32 0 }, %struct.ov8865_register_value { i16 14098, i8 66, i32 0 }, %struct.ov8865_register_value { i16 14110, i8 25, i32 0 }, %struct.ov8865_register_value { i16 14111, i8 64, i32 0 }, %struct.ov8865_register_value { i16 14112, i8 5, i32 0 }, %struct.ov8865_register_value { i16 14113, i8 5, i32 0 }, %struct.ov8865_register_value { i16 14116, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14117, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14118, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14120, i8 5, i32 0 }, %struct.ov8865_register_value { i16 14121, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14122, i8 3, i32 0 }, %struct.ov8865_register_value { i16 14123, i8 83, i32 0 }, %struct.ov8865_register_value { i16 14124, i8 -93, i32 0 }, %struct.ov8865_register_value { i16 14125, i8 83, i32 0 }, %struct.ov8865_register_value { i16 14126, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14127, i8 16, i32 0 }, %struct.ov8865_register_value { i16 14128, i8 1, i32 0 }, %struct.ov8865_register_value { i16 14129, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14130, i8 20, i32 0 }, %struct.ov8865_register_value { i16 14134, i8 32, i32 0 }, %struct.ov8865_register_value { i16 14138, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14139, i8 12, i32 0 }, %struct.ov8865_register_value { i16 14140, i8 10, i32 0 }, %struct.ov8865_register_value { i16 14142, i8 3, i32 0 }, %struct.ov8865_register_value { i16 14170, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14171, i8 19, i32 0 }, %struct.ov8865_register_value { i16 14173, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14175, i8 20, i32 0 }, %struct.ov8865_register_value { i16 14183, i8 28, i32 0 }, %struct.ov8865_register_value { i16 14194, i8 35, i32 0 }, %struct.ov8865_register_value { i16 14195, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14196, i8 22, i32 0 }, %struct.ov8865_register_value { i16 14197, i8 18, i32 0 }, %struct.ov8865_register_value { i16 14198, i8 8, i32 0 }, %struct.ov8865_register_value { i16 14240, i8 68, i32 0 }, %struct.ov8865_register_value { i16 14241, i8 61, i32 0 }, %struct.ov8865_register_value { i16 14242, i8 61, i32 0 }, %struct.ov8865_register_value { i16 14243, i8 1, i32 0 }, %struct.ov8865_register_value { i16 14245, i8 8, i32 0 }, %struct.ov8865_register_value { i16 14247, i8 68, i32 0 }, %struct.ov8865_register_value { i16 14248, i8 88, i32 0 }, %struct.ov8865_register_value { i16 14249, i8 88, i32 0 }, %struct.ov8865_register_value { i16 14250, i8 68, i32 0 }, %struct.ov8865_register_value { i16 14251, i8 46, i32 0 }, %struct.ov8865_register_value { i16 14252, i8 46, i32 0 }, %struct.ov8865_register_value { i16 14253, i8 51, i32 0 }, %struct.ov8865_register_value { i16 14254, i8 13, i32 0 }, %struct.ov8865_register_value { i16 14255, i8 13, i32 0 }, %struct.ov8865_register_value { i16 14259, i8 66, i32 0 }, %struct.ov8865_register_value { i16 14260, i8 66, i32 0 }, %struct.ov8865_register_value { i16 14261, i8 51, i32 0 }, %struct.ov8865_register_value { i16 16136, i8 11, i32 0 }, %struct.ov8865_register_value { i16 17664, i8 64, i32 0 }], [144 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov8865_read.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.9, ptr @.str.29, i8 1, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov8865_read\00", [20 x i8] zeroinitializer }, align 32
@ov8865_read.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.9, ptr @.str.32, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c recv error at address %#04x\0A\00", [63 x i8] zeroinitializer }, align 32
@ov8865_link_freq_menu = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 360000000], [24 x i8] zeroinitializer }, align 32
@ov8865_state_mipi_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 2273, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to find %lu clk rate in link freq\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ov8865_state_mipi_configure\00", [36 x i8] zeroinitializer }, align 32
@ov8865_state_mipi_configure._entry_ptr = internal global ptr @ov8865_state_mipi_configure._entry, section ".printk_index", align 4
@ov8865_state_mipi_configure._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.9, i32 2277, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed to find %lu clk rate in endpoint link-frequencies\0A\00", [38 x i8] zeroinitializer }, align 32
@ov8865_state_mipi_configure._entry_ptr.37 = internal global ptr @ov8865_state_mipi_configure._entry.35, section ".printk_index", align 4
@ov8865_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov8865_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov8865_ctrls_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ov8865:2528:(handler)->_lock\00", [35 x i8] zeroinitializer }, align 32
@ov8865_test_pattern_menu = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [40 x i8] zeroinitializer }, align 32
@ov8865_test_pattern_bits = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\81\80\C0\82\C2", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Random data\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Color bars\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Color bars with rolling bar\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Color squares\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Color squares with rolling bar\00", [33 x i8] zeroinitializer }, align 32
@ov8865_sensor_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.9, i32 2409, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable DOVDD regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov8865_sensor_power\00", [44 x i8] zeroinitializer }, align 32
@ov8865_sensor_power._entry_ptr = internal global ptr @ov8865_sensor_power._entry, section ".printk_index", align 4
@ov8865_sensor_power._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.9, i32 2416, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable AVDD regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@ov8865_sensor_power._entry_ptr.49 = internal global ptr @ov8865_sensor_power._entry.47, section ".printk_index", align 4
@ov8865_sensor_power._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.9, i32 2423, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable DVDD regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@ov8865_sensor_power._entry_ptr.52 = internal global ptr @ov8865_sensor_power._entry.50, section ".printk_index", align 4
@ov8865_sensor_power._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.9, i32 2429, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable EXTCLK clock\0A\00", [33 x i8] zeroinitializer }, align 32
@ov8865_sensor_power._entry_ptr.55 = internal global ptr @ov8865_sensor_power._entry.53, section ".printk_index", align 4
@ov8865_sensor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.9, i32 2339, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to perform sw reset\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov8865_sensor_init\00", [45 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr = internal global ptr @ov8865_sensor_init._entry, section ".printk_index", align 4
@ov8865_sensor_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.9, i32 2345, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set sensor standby\0A\00", [34 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr.60 = internal global ptr @ov8865_sensor_init._entry.58, section ".printk_index", align 4
@ov8865_sensor_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.9, i32 2351, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to check sensor chip id\0A\00", [32 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr.63 = internal global ptr @ov8865_sensor_init._entry.61, section ".printk_index", align 4
@ov8865_init_sequence = internal constant { [124 x %struct.ov8865_register_value], [224 x i8] } { [124 x %struct.ov8865_register_value] [%struct.ov8865_register_value { i16 13828, i8 4, i32 0 }, %struct.ov8865_register_value { i16 13826, i8 48, i32 0 }, %struct.ov8865_register_value { i16 13829, i8 0, i32 0 }, %struct.ov8865_register_value { i16 13831, i8 32, i32 0 }, %struct.ov8865_register_value { i16 13832, i8 17, i32 0 }, %struct.ov8865_register_value { i16 13833, i8 104, i32 0 }, %struct.ov8865_register_value { i16 13834, i8 64, i32 0 }, %struct.ov8865_register_value { i16 13836, i8 -35, i32 0 }, %struct.ov8865_register_value { i16 13838, i8 12, i32 0 }, %struct.ov8865_register_value { i16 13840, i8 7, i32 0 }, %struct.ov8865_register_value { i16 13842, i8 -122, i32 0 }, %struct.ov8865_register_value { i16 13843, i8 88, i32 0 }, %struct.ov8865_register_value { i16 13844, i8 40, i32 0 }, %struct.ov8865_register_value { i16 13847, i8 64, i32 0 }, %struct.ov8865_register_value { i16 13848, i8 90, i32 0 }, %struct.ov8865_register_value { i16 13849, i8 -101, i32 0 }, %struct.ov8865_register_value { i16 13852, i8 0, i32 0 }, %struct.ov8865_register_value { i16 13853, i8 96, i32 0 }, %struct.ov8865_register_value { i16 13873, i8 96, i32 0 }, %struct.ov8865_register_value { i16 13875, i8 16, i32 0 }, %struct.ov8865_register_value { i16 13876, i8 16, i32 0 }, %struct.ov8865_register_value { i16 13877, i8 16, i32 0 }, %struct.ov8865_register_value { i16 13878, i8 16, i32 0 }, %struct.ov8865_register_value { i16 13880, i8 -1, i32 0 }, %struct.ov8865_register_value { i16 13889, i8 85, i32 0 }, %struct.ov8865_register_value { i16 13894, i8 -122, i32 0 }, %struct.ov8865_register_value { i16 13895, i8 39, i32 0 }, %struct.ov8865_register_value { i16 13898, i8 27, i32 0 }, %struct.ov8865_register_value { i16 14080, i8 36, i32 0 }, %struct.ov8865_register_value { i16 14081, i8 12, i32 0 }, %struct.ov8865_register_value { i16 14082, i8 40, i32 0 }, %struct.ov8865_register_value { i16 14083, i8 25, i32 0 }, %struct.ov8865_register_value { i16 14084, i8 20, i32 0 }, %struct.ov8865_register_value { i16 14085, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14086, i8 56, i32 0 }, %struct.ov8865_register_value { i16 14087, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14088, i8 36, i32 0 }, %struct.ov8865_register_value { i16 14089, i8 64, i32 0 }, %struct.ov8865_register_value { i16 14090, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14091, i8 -72, i32 0 }, %struct.ov8865_register_value { i16 14092, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14104, i8 18, i32 0 }, %struct.ov8865_register_value { i16 14105, i8 49, i32 0 }, %struct.ov8865_register_value { i16 14098, i8 66, i32 0 }, %struct.ov8865_register_value { i16 14100, i8 18, i32 0 }, %struct.ov8865_register_value { i16 14110, i8 25, i32 0 }, %struct.ov8865_register_value { i16 14111, i8 64, i32 0 }, %struct.ov8865_register_value { i16 14112, i8 5, i32 0 }, %struct.ov8865_register_value { i16 14113, i8 5, i32 0 }, %struct.ov8865_register_value { i16 14116, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14117, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14118, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14120, i8 5, i32 0 }, %struct.ov8865_register_value { i16 14121, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14122, i8 3, i32 0 }, %struct.ov8865_register_value { i16 14123, i8 83, i32 0 }, %struct.ov8865_register_value { i16 14124, i8 -93, i32 0 }, %struct.ov8865_register_value { i16 14125, i8 83, i32 0 }, %struct.ov8865_register_value { i16 14126, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14127, i8 16, i32 0 }, %struct.ov8865_register_value { i16 14128, i8 1, i32 0 }, %struct.ov8865_register_value { i16 14129, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14130, i8 20, i32 0 }, %struct.ov8865_register_value { i16 14131, i8 16, i32 0 }, %struct.ov8865_register_value { i16 14132, i8 64, i32 0 }, %struct.ov8865_register_value { i16 14134, i8 32, i32 0 }, %struct.ov8865_register_value { i16 14138, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14139, i8 12, i32 0 }, %struct.ov8865_register_value { i16 14140, i8 10, i32 0 }, %struct.ov8865_register_value { i16 14142, i8 3, i32 0 }, %struct.ov8865_register_value { i16 14165, i8 64, i32 0 }, %struct.ov8865_register_value { i16 14168, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14169, i8 76, i32 0 }, %struct.ov8865_register_value { i16 14170, i8 6, i32 0 }, %struct.ov8865_register_value { i16 14171, i8 19, i32 0 }, %struct.ov8865_register_value { i16 14172, i8 64, i32 0 }, %struct.ov8865_register_value { i16 14173, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14174, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14175, i8 20, i32 0 }, %struct.ov8865_register_value { i16 14183, i8 28, i32 0 }, %struct.ov8865_register_value { i16 14184, i8 4, i32 0 }, %struct.ov8865_register_value { i16 14185, i8 32, i32 0 }, %struct.ov8865_register_value { i16 14188, i8 -64, i32 0 }, %struct.ov8865_register_value { i16 14189, i8 -64, i32 0 }, %struct.ov8865_register_value { i16 14186, i8 8, i32 0 }, %struct.ov8865_register_value { i16 14177, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14178, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14179, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14182, i8 -1, i32 0 }, %struct.ov8865_register_value { i16 14187, i8 66, i32 0 }, %struct.ov8865_register_value { i16 14194, i8 35, i32 0 }, %struct.ov8865_register_value { i16 14195, i8 2, i32 0 }, %struct.ov8865_register_value { i16 14196, i8 22, i32 0 }, %struct.ov8865_register_value { i16 14197, i8 18, i32 0 }, %struct.ov8865_register_value { i16 14198, i8 8, i32 0 }, %struct.ov8865_register_value { i16 14240, i8 68, i32 0 }, %struct.ov8865_register_value { i16 14241, i8 61, i32 0 }, %struct.ov8865_register_value { i16 14242, i8 61, i32 0 }, %struct.ov8865_register_value { i16 14243, i8 1, i32 0 }, %struct.ov8865_register_value { i16 14244, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14245, i8 8, i32 0 }, %struct.ov8865_register_value { i16 14246, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14247, i8 68, i32 0 }, %struct.ov8865_register_value { i16 14248, i8 88, i32 0 }, %struct.ov8865_register_value { i16 14249, i8 88, i32 0 }, %struct.ov8865_register_value { i16 14176, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14191, i8 1, i32 0 }, %struct.ov8865_register_value { i16 14250, i8 68, i32 0 }, %struct.ov8865_register_value { i16 14251, i8 46, i32 0 }, %struct.ov8865_register_value { i16 14252, i8 46, i32 0 }, %struct.ov8865_register_value { i16 14253, i8 51, i32 0 }, %struct.ov8865_register_value { i16 14254, i8 13, i32 0 }, %struct.ov8865_register_value { i16 14255, i8 13, i32 0 }, %struct.ov8865_register_value { i16 14256, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14257, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14258, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14259, i8 66, i32 0 }, %struct.ov8865_register_value { i16 14260, i8 66, i32 0 }, %struct.ov8865_register_value { i16 14261, i8 51, i32 0 }, %struct.ov8865_register_value { i16 14262, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14263, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14264, i8 0, i32 0 }, %struct.ov8865_register_value { i16 14265, i8 -1, i32 0 }, %struct.ov8865_register_value { i16 17667, i8 16, i32 0 }], [224 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.9, i32 2358, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write init sequence\0A\00", [33 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr.66 = internal global ptr @ov8865_sensor_init._entry.64, section ".printk_index", align 4
@ov8865_sensor_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.9, i32 2364, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to configure pad\0A\00", [39 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr.69 = internal global ptr @ov8865_sensor_init._entry.67, section ".printk_index", align 4
@ov8865_sensor_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.57, ptr @.str.9, i32 2370, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to configure MIPI\0A\00", [38 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr.72 = internal global ptr @ov8865_sensor_init._entry.70, section ".printk_index", align 4
@ov8865_sensor_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.57, ptr @.str.9, i32 2376, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to configure ISP\0A\00", [39 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr.75 = internal global ptr @ov8865_sensor_init._entry.73, section ".printk_index", align 4
@ov8865_sensor_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.57, ptr @.str.9, i32 2382, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to configure black level\0A\00", [63 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr.78 = internal global ptr @ov8865_sensor_init._entry.76, section ".printk_index", align 4
@ov8865_sensor_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.57, ptr @.str.9, i32 2390, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to configure state\0A\00", [37 x i8] zeroinitializer }, align 32
@ov8865_sensor_init._entry_ptr.81 = internal global ptr @ov8865_sensor_init._entry.79, section ".printk_index", align 4
@ov8865_chip_id_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.9, i32 1458, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"chip id value mismatch: %#x instead of %#x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov8865_chip_id_check\00", [43 x i8] zeroinitializer }, align 32
@ov8865_chip_id_check._entry_ptr = internal global ptr @ov8865_chip_id_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 19200000, i64 24000000]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.86 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.87 = internal global [10 x i64] [i64 8, i64 32, i64 9963790, i64 9963791, i64 9963793, i64 9963796, i64 9963797, i64 10356993, i64 10356995, i64 10422531]
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"ov8865_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3154, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3156, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"ov8865_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3148, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"ov8865_acpi_match\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3142, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"ov8865_pm_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3138, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2965, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2968, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2971, i32 42 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2974, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2977, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2980, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2993, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2999, i32 51 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3006, i32 47 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3016, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3019, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3033, i32 50 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3039, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3041, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3052, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"ov8865_pll_configs\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 796, i32 41 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"ov8865_subdev_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2874, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3077, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [27 x i8] c"ov8865_pll_configs_19_2mhz\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 784, i32 40 }
@___asan_gen_.190 = private unnamed_addr constant [25 x i8] c"ov8865_pll_configs_24mhz\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 790, i32 40 }
@___asan_gen_.193 = private unnamed_addr constant [34 x i8] c"ov8865_pll1_config_native_19_2mhz\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 716, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant [34 x i8] c"ov8865_pll2_config_native_19_2mhz\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 743, i32 40 }
@___asan_gen_.199 = private unnamed_addr constant [35 x i8] c"ov8865_pll2_config_binning_19_2mhz\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 766, i32 40 }
@___asan_gen_.202 = private unnamed_addr constant [32 x i8] c"ov8865_pll1_config_native_24mhz\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 727, i32 40 }
@___asan_gen_.205 = private unnamed_addr constant [32 x i8] c"ov8865_pll2_config_native_24mhz\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 752, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant [33 x i8] c"ov8865_pll2_config_binning_24mhz\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 775, i32 40 }
@___asan_gen_.211 = private unnamed_addr constant [24 x i8] c"ov8865_subdev_video_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2666, i32 43 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"ov8865_subdev_pad_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2865, i32 41 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1379, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [13 x i8] c"ov8865_modes\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 962, i32 33 }
@___asan_gen_.226 = private unnamed_addr constant [30 x i8] c"ov8865_register_values_native\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 808, i32 43 }
@___asan_gen_.229 = private unnamed_addr constant [31 x i8] c"ov8865_register_values_binning\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 885, i32 43 }
@___asan_gen_.233 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 998, i32 6 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1356, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1363, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [22 x i8] c"ov8865_link_freq_menu\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1322, i32 18 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2271, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2275, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"ov8865_ctrl_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2513, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2528, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [25 x i8] c"ov8865_test_pattern_menu\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1326, i32 26 }
@___asan_gen_.271 = private unnamed_addr constant [25 x i8] c"ov8865_test_pattern_bits\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1335, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1327, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1328, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1329, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1330, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1331, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1332, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2408, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2415, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2422, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2429, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2339, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2345, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2351, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [21 x i8] c"ov8865_init_sequence\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1187, i32 43 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2358, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2364, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2370, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2376, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2382, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2390, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.386 = private constant [30 x i8] c"../drivers/media/i2c/ov8865.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1456, i32 4 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_ov8865_driver_exit, ptr @__initcall__kmod_ov8865__301_3165_ov8865_driver_init6, ptr @ov8865_chip_id_check._entry, ptr @ov8865_chip_id_check._entry_ptr, ptr @ov8865_driver_exit, ptr @ov8865_probe._entry, ptr @ov8865_probe._entry.14, ptr @ov8865_probe._entry.18, ptr @ov8865_probe._entry.24, ptr @ov8865_probe._entry_ptr, ptr @ov8865_probe._entry_ptr.17, ptr @ov8865_probe._entry_ptr.20, ptr @ov8865_probe._entry_ptr.26, ptr @ov8865_sensor_init._entry, ptr @ov8865_sensor_init._entry.58, ptr @ov8865_sensor_init._entry.61, ptr @ov8865_sensor_init._entry.64, ptr @ov8865_sensor_init._entry.67, ptr @ov8865_sensor_init._entry.70, ptr @ov8865_sensor_init._entry.73, ptr @ov8865_sensor_init._entry.76, ptr @ov8865_sensor_init._entry.79, ptr @ov8865_sensor_init._entry_ptr, ptr @ov8865_sensor_init._entry_ptr.60, ptr @ov8865_sensor_init._entry_ptr.63, ptr @ov8865_sensor_init._entry_ptr.66, ptr @ov8865_sensor_init._entry_ptr.69, ptr @ov8865_sensor_init._entry_ptr.72, ptr @ov8865_sensor_init._entry_ptr.75, ptr @ov8865_sensor_init._entry_ptr.78, ptr @ov8865_sensor_init._entry_ptr.81, ptr @ov8865_sensor_power._entry, ptr @ov8865_sensor_power._entry.47, ptr @ov8865_sensor_power._entry.50, ptr @ov8865_sensor_power._entry.53, ptr @ov8865_sensor_power._entry_ptr, ptr @ov8865_sensor_power._entry_ptr.49, ptr @ov8865_sensor_power._entry_ptr.52, ptr @ov8865_sensor_power._entry_ptr.55, ptr @ov8865_state_mipi_configure._entry, ptr @ov8865_state_mipi_configure._entry.35, ptr @ov8865_state_mipi_configure._entry_ptr, ptr @ov8865_state_mipi_configure._entry_ptr.37, ptr @ov8865_driver, ptr @.str, ptr @ov8865_of_match, ptr @ov8865_acpi_match, ptr @ov8865_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @ov8865_pll_configs, ptr @ov8865_subdev_ops, ptr @ov8865_probe.__key, ptr @.str.27, ptr @ov8865_pll_configs_19_2mhz, ptr @ov8865_pll_configs_24mhz, ptr @ov8865_pll1_config_native_19_2mhz, ptr @ov8865_pll2_config_native_19_2mhz, ptr @ov8865_pll2_config_binning_19_2mhz, ptr @ov8865_pll1_config_native_24mhz, ptr @ov8865_pll2_config_native_24mhz, ptr @ov8865_pll2_config_binning_24mhz, ptr @ov8865_subdev_video_ops, ptr @ov8865_subdev_pad_ops, ptr @.str.28, ptr @.str.29, ptr @ov8865_modes, ptr @ov8865_register_values_native, ptr @ov8865_register_values_binning, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ov8865_link_freq_menu, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @ov8865_ctrl_ops, ptr @ov8865_ctrls_init._key, ptr @.str.38, ptr @ov8865_test_pattern_menu, ptr @ov8865_test_pattern_bits, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @ov8865_init_sequence, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll_configs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll_configs_19_2mhz to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll_configs_24mhz to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll1_config_native_19_2mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll2_config_native_19_2mhz to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll2_config_binning_19_2mhz to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll1_config_native_24mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll2_config_native_24mhz to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_pll2_config_binning_24mhz to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_modes to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_register_values_native to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_register_values_binning to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_link_freq_menu to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_state_mipi_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_state_mipi_configure._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_ctrls_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_test_pattern_menu to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_test_pattern_bits to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_power._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_power._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_power._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_init_sequence to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_sensor_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8865_chip_id_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov8865_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov8865_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ov8865_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -104
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #8
  %handler = getelementptr i8, ptr %1, i32 352
  tail call void @v4l2_ctrl_handler_free(ptr noundef %handler) #8
  %mutex = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_destroy(ptr noundef %mutex) #8
  %endpoint = getelementptr i8, ptr %1, i32 -64
  tail call void @v4l2_fwnode_endpoint_free(ptr noundef %endpoint) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_probe(ptr noundef %client) #2 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #8
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rate, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 640, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %i2c_client = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %i2c_client, align 4
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %dvdd = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %dvdd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %dvdd, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call3 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  %dovdd = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %dovdd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %dovdd, align 4
  %cmp.i235 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call19 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  %avdd = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %avdd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call19, ptr %avdd, align 4
  %cmp.i236 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call19 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %call27 = tail call ptr @dev_fwnode(ptr noundef %dev1) #8
  %call28 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %call27, ptr noundef null) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %endpoint = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 10
  %bus_type = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %bus_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %bus_type, align 4
  %call33 = tail call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call28, ptr noundef %endpoint) #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %call28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.end

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call37 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 7) #8
  %powerdown = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %powerdown to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call37, ptr %powerdown, align 4
  %cmp.i237 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call37 to i32
  br label %error_endpoint

if.end43:                                         ; preds = %if.end36
  %call44 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 7) #8
  %reset = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call44, ptr %reset, align 4
  %cmp.i238 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i238, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call44 to i32
  br label %error_endpoint

if.end50:                                         ; preds = %if.end43
  %call51 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %extclk = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call51, ptr %extclk, align 4
  %cmp = icmp eq ptr %call51, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %do.end57, label %if.else

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  %15 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %extclk, align 4
  br label %if.end68

if.else:                                          ; preds = %if.end50
  %cmp.i239 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %do.end64, label %if.else.if.end68_crit_edge

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  %16 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extclk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %error_endpoint

if.end68:                                         ; preds = %if.else.if.end68_crit_edge, %do.end57
  %call69 = tail call ptr @dev_fwnode(ptr noundef %dev1) #8
  %call.i240 = call i32 @fwnode_property_read_u32_array(ptr noundef %call69, ptr noundef nonnull @.str.21, ptr noundef nonnull %rate, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool71.not = icmp eq i32 %call.i240, 0
  %19 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %extclk, align 4
  %tobool73.not = icmp eq ptr %20, null
  br i1 %tobool71.not, label %land.lhs.true, label %land.lhs.true83.critedge

land.lhs.true:                                    ; preds = %if.end68
  br i1 %tobool73.not, label %land.lhs.true.if.end89_crit_edge, label %if.then74

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then74:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate, align 4
  %call76 = call i32 @clk_set_rate(ptr noundef nonnull %20, i32 noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then74.if.end89_crit_edge, label %if.then78

if.then74.if.end89_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then78:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call76, ptr noundef nonnull @.str.22) #8
  br label %cleanup

land.lhs.true83.critedge:                         ; preds = %if.end68
  br i1 %tobool73.not, label %if.then86, label %land.lhs.true83.critedge.if.end89_crit_edge

land.lhs.true83.critedge.if.end89_crit_edge:      ; preds = %land.lhs.true83.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then86:                                        ; preds = %land.lhs.true83.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i240, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end89:                                         ; preds = %land.lhs.true83.critedge.if.end89_crit_edge, %if.then74.if.end89_crit_edge, %land.lhs.true.if.end89_crit_edge
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool90.not = icmp eq i32 %24, 0
  br i1 %tobool90.not, label %cond.false, label %if.end89.cond.end_crit_edge

if.end89.cond.end_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extclk, align 4
  %call92 = call i32 @clk_get_rate(ptr noundef %26) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end89.cond.end_crit_edge
  %cond = phi i32 [ %call92, %cond.false ], [ %24, %if.end89.cond.end_crit_edge ]
  %extclk_rate = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %extclk_rate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %extclk_rate, align 4
  %28 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond, label %do.end102 [
    i32 19200000, label %cond.end.if.end104_crit_edge
    i32 24000000, label %if.end104.fold.split
  ]

cond.end.if.end104_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

do.end102:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %cond) #11
  br label %error_endpoint

if.end104.fold.split:                             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.end104:                                        ; preds = %if.end104.fold.split, %cond.end.if.end104_crit_edge
  %i.0246.lcssa = phi i32 [ 0, %cond.end.if.end104_crit_edge ], [ 1, %if.end104.fold.split ]
  %arrayidx105 = getelementptr [2 x ptr], ptr @ov8865_pll_configs, i32 0, i32 %i.0246.lcssa
  %29 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx105, align 4
  %pll_configs = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %pll_configs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %pll_configs, align 4
  %subdev106 = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 11
  call void @v4l2_i2c_subdev_init(ptr noundef %subdev106, ptr noundef %client, ptr noundef nonnull @ov8865_subdev_ops) #8
  %flags = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 11, i32 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %or = or i32 %33, 4
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  %34 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 131073, ptr %function, align 4
  %pad107 = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 12
  %flags108 = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 12, i32 4
  %35 = ptrtoint ptr %flags108 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %flags108, align 4
  %call110 = call i32 @media_entity_pads_init(ptr noundef %subdev106, i16 noundef zeroext 1, ptr noundef %pad107) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %do.body114, label %if.end104.error_endpoint_crit_edge

if.end104.error_endpoint_crit_edge:               ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_endpoint

do.body114:                                       ; preds = %if.end104
  %mutex = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 13
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.27, ptr noundef nonnull @ov8865_probe.__key) #8
  %call117 = call fastcc i32 @ov8865_ctrls_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %do.body114.error_mutex_crit_edge

do.body114.error_mutex_crit_edge:                 ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_mutex

if.end120:                                        ; preds = %do.body114
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call.i241 = call fastcc i32 @ov8865_state_configure(ptr noundef nonnull %call.i, ptr noundef nonnull @ov8865_modes, i32 noundef 12295) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool124.not = icmp eq i32 %call.i241, 0
  br i1 %tobool124.not, label %if.end126, label %if.end120.error_ctrls_crit_edge

if.end120.error_ctrls_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ctrls

if.end126:                                        ; preds = %if.end120
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call.i242 = call i32 @__pm_runtime_set_status(ptr noundef %37, i32 noundef 2) #8
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %39) #8
  %call130 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef %subdev106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end126.cleanup_crit_edge, label %error_pm

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_pm:                                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void @__pm_runtime_disable(ptr noundef %41, i1 noundef zeroext true) #8
  br label %error_ctrls

error_ctrls:                                      ; preds = %error_pm, %if.end120.error_ctrls_crit_edge
  %ret.0 = phi i32 [ %call.i241, %if.end120.error_ctrls_crit_edge ], [ %call130, %error_pm ]
  %handler = getelementptr inbounds %struct.ov8865_sensor, ptr %call.i, i32 0, i32 15, i32 5
  call void @v4l2_ctrl_handler_free(ptr noundef %handler) #8
  br label %error_mutex

error_mutex:                                      ; preds = %error_ctrls, %do.body114.error_mutex_crit_edge
  %ret.1 = phi i32 [ %call117, %do.body114.error_mutex_crit_edge ], [ %ret.0, %error_ctrls ]
  call void @mutex_destroy(ptr noundef %mutex) #8
  br label %error_endpoint

error_endpoint:                                   ; preds = %error_mutex, %if.end104.error_endpoint_crit_edge, %do.end102, %do.end64, %if.then47, %if.then40
  %ret.3 = phi i32 [ %11, %if.then40 ], [ %13, %if.then47 ], [ -22, %do.end102 ], [ %18, %do.end64 ], [ %call110, %if.end104.error_endpoint_crit_edge ], [ %ret.1, %error_mutex ]
  call void @v4l2_fwnode_endpoint_free(ptr noundef %endpoint) #8
  br label %cleanup

cleanup:                                          ; preds = %error_endpoint, %if.end126.cleanup_crit_edge, %if.then86, %if.then78, %do.end, %if.end26.cleanup_crit_edge, %if.then22, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ %call17, %if.then14 ], [ %call25, %if.then22 ], [ %call33, %do.end ], [ %ret.3, %error_endpoint ], [ %call87, %if.then86 ], [ %call79, %if.then78 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end26.cleanup_crit_edge ], [ 0, %if.end126.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_ctrls_init(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %props = alloca %struct.v4l2_fwnode_device_properties, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15
  %handler2 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props) #8
  %0 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %props, align 4, !annotation !216
  %1 = getelementptr inbounds %struct.v4l2_fwnode_device_properties, ptr %props, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !216
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %handler2, i32 noundef 32, ptr noundef nonnull @ov8865_ctrls_init._key, ptr noundef nonnull @.str.38) #8
  %mutex = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 13
  %lock = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15, i32 5, i32 1
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mutex, ptr %lock, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 9963793, i64 noundef 2, i64 noundef 65535, i64 noundef 1, i64 noundef 32) #8
  %exposure = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %exposure, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 10356995, i64 noundef 128, i64 noundef 2048, i64 noundef 128, i64 noundef 128) #8
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 9963790, i64 noundef 1, i64 noundef 32767, i64 noundef 1, i64 noundef 1024) #8
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 9963791, i64 noundef 1, i64 noundef 32767, i64 noundef 1, i64 noundef 1024) #8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call9 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 5, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov8865_test_pattern_menu) #8
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 10356994, i64 noundef 624, i64 noundef 624, i64 noundef 1, i64 noundef 624) #8
  %hblank13 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15, i32 2
  %5 = ptrtoint ptr %hblank13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %hblank13, align 4
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call12, i32 0, i32 20
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 4
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, i32 noundef 10356993, i64 noundef 4, i64 noundef 63087, i64 noundef 1, i64 noundef 22) #8
  %vblank = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15, i32 3
  %8 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call21, ptr %vblank, align 4
  %call22 = tail call ptr @v4l2_ctrl_new_int_menu(ptr noundef %handler2, ptr noundef null, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @ov8865_link_freq_menu) #8
  %9 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call22, ptr %ctrls1, align 4
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %handler2, ptr noundef null, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 1) #8
  %pixel_rate = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23, ptr %pixel_rate, align 4
  %11 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sensor, align 4
  %call24 = call i32 @v4l2_fwnode_device_parse(ptr noundef %12, ptr noundef nonnull %props) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.error_ctrls_crit_edge

if.end.error_ctrls_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ctrls

if.end27:                                         ; preds = %if.end
  %call28 = call i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef %handler2, ptr noundef nonnull @ov8865_ctrl_ops, ptr noundef nonnull %props) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.error_ctrls_crit_edge

if.end27.error_ctrls_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ctrls

if.end31:                                         ; preds = %if.end27
  %error = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15, i32 5, i32 9
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool32.not = icmp eq i32 %14, 0
  br i1 %tobool32.not, label %if.end35, label %if.end31.error_ctrls_crit_edge

if.end31.error_ctrls_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ctrls

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrls1, align 4
  %flags37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags37, align 4
  %or38 = or i32 %18, 4
  store i32 %or38, ptr %flags37, align 4
  %19 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pixel_rate, align 4
  %flags40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags40, align 4
  %or41 = or i32 %22, 4
  store i32 %or41, ptr %flags40, align 4
  %ctrl_handler = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 11, i32 8
  %23 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %handler2, ptr %ctrl_handler, align 4
  br label %cleanup

error_ctrls:                                      ; preds = %if.end31.error_ctrls_crit_edge, %if.end27.error_ctrls_crit_edge, %if.end.error_ctrls_crit_edge
  %ret.0 = phi i32 [ %call24, %if.end.error_ctrls_crit_edge ], [ %call28, %if.end27.error_ctrls_crit_edge ], [ %14, %if.end31.error_ctrls_crit_edge ]
  call void @v4l2_ctrl_handler_free(ptr noundef %handler2) #8
  br label %cleanup

cleanup:                                          ; preds = %error_ctrls, %if.end35
  %retval.0 = phi i32 [ %ret.0, %error_ctrls ], [ 0, %if.end35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_s_stream(ptr noundef %subdev, i32 noundef %enable) #2 align 64 {
entry:
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  br i1 %tobool, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !218
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %spec.store.select.i = zext i1 %tobool to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %data.i.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.store.select.i, ptr %4, align 1
  %i2c_client.i.i = getelementptr i8, ptr %subdev, i32 -100
  %8 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end9

do.body.i.i:                                      ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_s_stream, %if.then9.i.i)) #8
          to label %ov8865_sw_standby.exit [label %if.then9.i.i], !srcloc !220

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef 256) #8
  br label %ov8865_sw_standby.exit

ov8865_sw_standby.exit:                           ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  %streaming = getelementptr i8, ptr %subdev, i32 328
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.store.select.i, ptr %streaming, align 4
  br i1 %tobool, label %if.end9.cleanup_crit_edge, label %if.then16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %call.i33 = call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end9.cleanup_crit_edge, %ov8865_sw_standby.exit, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ov8865_sw_standby.exit ], [ 0, %if.then16 ], [ 0, %if.end9.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_g_frame_interval(ptr noundef %subdev, ptr nocapture noundef writeonly %interval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %state = getelementptr i8, ptr %subdev, i32 320
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %hts = getelementptr inbounds %struct.ov8865_mode, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hts, align 4
  %output_size_y = getelementptr inbounds %struct.ov8865_mode, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output_size_y, align 4
  %vblank = getelementptr i8, ptr %subdev, i32 344
  %6 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vblank, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %add = add i32 %9, %5
  %mul = mul i32 %add, %3
  %pixel_rate = getelementptr i8, ptr %subdev, i32 336
  %10 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pixel_rate, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val3, align 4
  %div17 = lshr i32 %mul, 1
  %add5 = add i32 %div17, %13
  %div6 = udiv i32 %add5, %mul
  %interval7 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %interval, i32 0, i32 1
  %14 = ptrtoint ptr %interval7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %interval7, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %interval, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div6, ptr %denominator, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_write(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %address, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %conv = zext i16 %address to i32
  %2 = lshr i16 %address, 8
  %conv1 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %data, align 1
  %conv3 = trunc i16 %address to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %value, ptr %1, align 1
  %i2c_client = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %data, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_write, %if.then9)) #8
          to label %cleanup [label %if.then9], !srcloc !220

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.body ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov8865_enum_mbus_code(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code_enum) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code_enum, i32 0, i32 1
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
  %code = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code_enum, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12295, ptr %code, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov8865_enum_frame_size(ptr nocapture noundef readnone %subdev, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %size_enum) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size_enum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size_enum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %output_size_x = getelementptr [4 x %struct.ov8865_mode], ptr @ov8865_modes, i32 0, i32 %1, i32 2
  %2 = ptrtoint ptr %output_size_x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_size_x, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %size_enum, i32 0, i32 4
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %max_width, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %size_enum, i32 0, i32 3
  %5 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %min_width, align 4
  %output_size_y = getelementptr [4 x %struct.ov8865_mode], ptr @ov8865_modes, i32 0, i32 %1, i32 7
  %6 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output_size_y, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %size_enum, i32 0, i32 6
  %8 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %size_enum, i32 0, i32 5
  %9 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %min_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_get_fmt(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %3, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !221

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %8 = call ptr @memcpy(ptr %format1, ptr %arrayidx.i, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr i8, ptr %subdev, i32 320
  %mbus_code = getelementptr i8, ptr %subdev, i32 324
  %9 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbus_code, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %output_size_x.i = getelementptr inbounds %struct.ov8865_mode, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %output_size_x.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %output_size_x.i, align 4
  %15 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %format1, align 4
  %output_size_y.i = getelementptr inbounds %struct.ov8865_mode, ptr %12, i32 0, i32 7
  %16 = ptrtoint ptr %output_size_y.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %output_size_y.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %10, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 11, ptr %colorspace.i, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %22, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 5, ptr %xfer_func.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_set_fmt(ptr noundef %subdev, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -104
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %state = getelementptr i8, ptr %subdev, i32 320
  %streaming = getelementptr i8, ptr %subdev, i32 328
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.critedge, label %entry.complete_crit_edge

entry.complete_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

for.body.critedge:                                ; preds = %entry
  %2 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %call = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @ov8865_modes, i32 noundef 4, i32 noundef 160, i32 noundef 8, i32 noundef 28, i32 noundef %3, i32 noundef %5) #8
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %for.body.critedge.complete_crit_edge, label %if.end12

for.body.critedge.complete_crit_edge:             ; preds = %for.body.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.end12:                                         ; preds = %for.body.critedge
  %output_size_x.i = getelementptr inbounds %struct.ov8865_mode, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %output_size_x.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output_size_x.i, align 4
  %8 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %format1, align 4
  %output_size_y.i = getelementptr inbounds %struct.ov8865_mode, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %output_size_y.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_size_y.i, align 4
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12295, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 11, ptr %colorspace.i, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %15, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %17 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 5, ptr %xfer_func.i, align 4
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp13 = icmp eq i32 %20, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %21 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %23 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %22, %conv.i
  br i1 %cmp.not.i, label %if.then14.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !221

if.then14.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then14.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %22, %if.then14.v4l2_subdev_get_try_format.exit_crit_edge ]
  %25 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %26, i32 %spec.select.i
  %27 = call ptr @memcpy(ptr %arrayidx.i, ptr %format1, i32 48)
  br label %if.end25

if.else:                                          ; preds = %if.end12
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 4
  %cmp18.not = icmp eq ptr %29, %call
  br i1 %cmp18.not, label %lor.lhs.false, label %if.else.if.then22_crit_edge

if.else.if.then22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.else
  %mbus_code20 = getelementptr i8, ptr %subdev, i32 324
  %30 = ptrtoint ptr %mbus_code20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mbus_code20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %31)
  %cmp21.not = icmp eq i32 %31, 12295
  br i1 %cmp21.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.else.if.then22_crit_edge
  %call23 = tail call fastcc i32 @ov8865_state_configure(ptr noundef %add.ptr, ptr noundef nonnull %call, i32 noundef 12295)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %lor.lhs.false.if.end25_crit_edge, %v4l2_subdev_get_try_format.exit
  %ret.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ %call23, %if.then22 ], [ 0, %lor.lhs.false.if.end25_crit_edge ]
  %vblank = getelementptr i8, ptr %subdev, i32 344
  %32 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vblank, align 4
  %34 = ptrtoint ptr %output_size_y.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %output_size_y.i, align 4
  %sub = sub i32 65535, %35
  %conv = zext i32 %sub to i64
  %vts = getelementptr inbounds %struct.ov8865_mode, ptr %call, i32 0, i32 9
  %36 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vts, align 4
  %sub27 = sub i32 %37, %35
  %conv28 = zext i32 %sub27 to i64
  %call29 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %33, i64 noundef 4, i64 noundef %conv, i64 noundef 1, i64 noundef %conv28) #8
  %hts = getelementptr inbounds %struct.ov8865_mode, ptr %call, i32 0, i32 4
  %38 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hts, align 4
  %40 = ptrtoint ptr %output_size_x.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %output_size_x.i, align 4
  %sub30 = sub i32 %39, %41
  %hblank32 = getelementptr i8, ptr %subdev, i32 340
  %42 = ptrtoint ptr %hblank32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hblank32, align 4
  %conv33 = zext i32 %sub30 to i64
  %call36 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %43, i64 noundef %conv33, i64 noundef %conv33, i64 noundef 1, i64 noundef %conv33) #8
  %44 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vts, align 4
  %sub38 = add i32 %45, -8
  %exposure = getelementptr i8, ptr %subdev, i32 348
  %46 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %minimum, align 8
  %conv42 = sext i32 %sub38 to i64
  %50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %47, i32 0, i32 18
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %50, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %47, i32 0, i32 22
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val, align 4
  %55 = tail call i32 @llvm.smin.i32(i32 %54, i32 %sub38)
  %conv50 = sext i32 %55 to i64
  %call51 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %47, i64 noundef %49, i64 noundef %conv42, i64 noundef %52, i64 noundef %conv50) #8
  br label %complete

complete:                                         ; preds = %if.end25, %for.body.critedge.complete_crit_edge, %entry.complete_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end25 ], [ -16, %entry.complete_crit_edge ], [ -22, %for.body.critedge.complete_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_get_selection(ptr noundef %subdev, ptr nocapture noundef readonly %state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %entry.sw.bb7_crit_edge
    i32 1, label %entry.sw.bb7_crit_edge29
  ]

entry.sw.bb7_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr i8, ptr %subdev, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %3 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %4, label %sw.bb.__ov8865_get_pad_crop.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.__ov8865_get_pad_crop.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ov8865_get_pad_crop.exit

sw.bb.i:                                          ; preds = %sw.bb
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %7, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, label %do.end.i.i, !prof !221

sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %7, %sw.bb.i.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i.i, i32 1
  %12 = call ptr @memcpy(ptr %r, ptr %try_crop.i.i, i32 16)
  br label %__ov8865_get_pad_crop.exit

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %state1.i = getelementptr i8, ptr %subdev, i32 320
  %13 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state1.i, align 4
  %output_size_y.i = getelementptr inbounds %struct.ov8865_mode, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %output_size_y.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %output_size_y.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height.i, align 4
  %output_size_x.i = getelementptr inbounds %struct.ov8865_mode, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %output_size_x.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output_size_x.i, align 4
  %width.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width.i, align 4
  %21 = load i32, ptr %output_size_y.i, align 4
  %sub.i = sub i32 2528, %21
  %div16.i = lshr i32 %sub.i, 1
  %top.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div16.i, ptr %top.i, align 4
  %23 = load i32, ptr %output_size_x.i, align 4
  %sub6.i = sub i32 3296, %23
  %div717.i = lshr i32 %sub6.i, 1
  %24 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div717.i, ptr %r, align 4
  br label %__ov8865_get_pad_crop.exit

__ov8865_get_pad_crop.exit:                       ; preds = %sw.bb3.i, %v4l2_subdev_get_try_crop.exit.i, %sw.bb.__ov8865_get_pad_crop.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %r3 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %top, align 4
  %26 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %r3, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3296, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2528, ptr %height, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge29
  %r8 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %top9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %top9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %top9, align 4
  %30 = ptrtoint ptr %r8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 80, ptr %r8, align 4
  %width13 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %width13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3264, ptr %width13, align 4
  %height15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2448, ptr %height15, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb2, %__ov8865_get_pad_crop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb7 ], [ 0, %sw.bb2 ], [ 0, %__ov8865_get_pad_crop.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_state_configure(ptr noundef %sensor, ptr noundef %mode, i32 noundef %mbus_code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 14
  %streaming = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 4
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %land.lhs.true.if.end8_crit_edge, label %if.then3

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %land.lhs.true
  %call4 = tail call fastcc i32 @ov8865_mode_configure(ptr noundef %sensor, ptr noundef %mode, i32 noundef %mbus_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ctrls1.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15
  %pll_configs.i.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 8
  %7 = ptrtoint ptr %pll_configs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pll_configs.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %extclk_rate.i.i.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 7
  %11 = ptrtoint ptr %extclk_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %extclk_rate.i.i.i, align 4
  %pll_mul.i.i.i = getelementptr inbounds %struct.ov8865_pll1_config, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %pll_mul.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll_mul.i.i.i, align 4
  %mul.i.i.i = mul i32 %14, %12
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %div.i.i.i = udiv i32 %mul.i.i.i, %16
  %pll_pre_div.i.i.i = getelementptr inbounds %struct.ov8865_pll1_config, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %pll_pre_div.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pll_pre_div.i.i.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %18, label %sw.default.i.i.i [
    i32 0, label %if.end8.ov8865_mode_mipi_clk_rate.exit.i_crit_edge
    i32 1, label %sw.bb.i.i.i
    i32 3, label %sw.bb3.i.i.i
    i32 4, label %sw.bb6.i.i.i
    i32 5, label %sw.bb8.i.i.i
    i32 7, label %sw.bb10.i.i.i
  ]

if.end8.ov8865_mode_mipi_clk_rate.exit.i_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_mode_mipi_clk_rate.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %mul1.i.i.i = mul i32 %div.i.i.i, 3
  %div24.i.i.i = lshr i32 %mul1.i.i.i, 1
  br label %ov8865_mode_mipi_clk_rate.exit.i

sw.bb3.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i.i.i = mul i32 %div.i.i.i, 5
  %div53.i.i.i = lshr i32 %mul4.i.i.i, 1
  br label %ov8865_mode_mipi_clk_rate.exit.i

sw.bb6.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %div7.i.i.i = udiv i32 %div.i.i.i, 3
  br label %ov8865_mode_mipi_clk_rate.exit.i

sw.bb8.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %div92.i.i.i = lshr i32 %div.i.i.i, 2
  br label %ov8865_mode_mipi_clk_rate.exit.i

sw.bb10.i.i.i:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %div111.i.i.i = lshr i32 %div.i.i.i, 3
  br label %ov8865_mode_mipi_clk_rate.exit.i

sw.default.i.i.i:                                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %div13.i.i.i = udiv i32 %div.i.i.i, %18
  br label %ov8865_mode_mipi_clk_rate.exit.i

ov8865_mode_mipi_clk_rate.exit.i:                 ; preds = %sw.default.i.i.i, %sw.bb10.i.i.i, %sw.bb8.i.i.i, %sw.bb6.i.i.i, %sw.bb3.i.i.i, %sw.bb.i.i.i, %if.end8.ov8865_mode_mipi_clk_rate.exit.i_crit_edge
  %pll1_rate.0.i.i.i = phi i32 [ %div13.i.i.i, %sw.default.i.i.i ], [ %div111.i.i.i, %sw.bb10.i.i.i ], [ %div92.i.i.i, %sw.bb8.i.i.i ], [ %div7.i.i.i, %sw.bb6.i.i.i ], [ %div53.i.i.i, %sw.bb3.i.i.i ], [ %div24.i.i.i, %sw.bb.i.i.i ], [ %div.i.i.i, %if.end8.ov8865_mode_mipi_clk_rate.exit.i_crit_edge ]
  %m_div.i.i = getelementptr inbounds %struct.ov8865_pll1_config, ptr %10, i32 0, i32 3
  %20 = ptrtoint ptr %m_div.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_div.i.i, align 4
  %div.i.i = udiv i32 %pll1_rate.0.i.i.i, %21
  %div11.i.i = lshr i32 %div.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i.i)
  %tobool.not.i33 = icmp ult i32 %div.i.i, 2
  br i1 %tobool.not.i33, label %ov8865_mode_mipi_clk_rate.exit.i.cleanup_crit_edge, label %for.cond.preheader.i

ov8865_mode_mipi_clk_rate.exit.i.cleanup_crit_edge: ; preds = %ov8865_mode_mipi_clk_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %ov8865_mode_mipi_clk_rate.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 360000000, i32 %div11.i.i)
  %cmp2.i = icmp eq i32 %div11.i.i, 360000000
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 10, i32 4
  %22 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp82.not.i = icmp eq i32 %23, 0
  br i1 %cmp2.i, label %for.cond6.preheader.i, label %for.cond6.preheader.thread.i

for.cond6.preheader.i:                            ; preds = %for.cond.preheader.i
  br i1 %cmp82.not.i, label %for.cond6.preheader.i.do.end35.i_crit_edge, label %for.cond6.preheader.i.for.body10.lr.ph.i_crit_edge

for.cond6.preheader.i.for.body10.lr.ph.i_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.lr.ph.i

for.cond6.preheader.i.do.end35.i_crit_edge:       ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

for.cond6.preheader.thread.i:                     ; preds = %for.cond.preheader.i
  br i1 %cmp82.not.i, label %for.cond6.preheader.thread.i.do.end.i_crit_edge, label %for.cond6.preheader.thread.i.for.body10.lr.ph.i_crit_edge

for.cond6.preheader.thread.i.for.body10.lr.ph.i_crit_edge: ; preds = %for.cond6.preheader.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.lr.ph.i

for.cond6.preheader.thread.i.do.end.i_crit_edge:  ; preds = %for.cond6.preheader.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body10.lr.ph.i:                               ; preds = %for.cond6.preheader.thread.i.for.body10.lr.ph.i_crit_edge, %for.cond6.preheader.i.for.body10.lr.ph.i_crit_edge
  %link_frequencies.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 10, i32 3
  %24 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link_frequencies.i, align 4
  %conv14.i = zext i32 %div11.i.i to i64
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc22.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %j.03.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc23.i, %for.inc22.i.for.body10.i_crit_edge ]
  %arrayidx13.i = getelementptr i64, ptr %25, i32 %j.03.i
  %26 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %conv14.i)
  %cmp15.i = icmp eq i64 %27, %conv14.i
  br i1 %cmp15.i, label %for.body10.i.for.end24.i_crit_edge, label %for.inc22.i

for.body10.i.for.end24.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24.i

for.inc22.i:                                      ; preds = %for.body10.i
  %inc23.i = add nuw i32 %j.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, %23
  br i1 %exitcond.not.i, label %for.inc22.i.for.end24.i_crit_edge, label %for.inc22.i.for.body10.i_crit_edge

for.inc22.i.for.body10.i_crit_edge:               ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

for.inc22.i.for.end24.i_crit_edge:                ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24.i

for.end24.i:                                      ; preds = %for.inc22.i.for.end24.i_crit_edge, %for.body10.i.for.end24.i_crit_edge
  %j.0.lcssa.i = phi i32 [ %23, %for.inc22.i.for.end24.i_crit_edge ], [ %j.03.i, %for.body10.i.for.end24.i_crit_edge ]
  br i1 %cmp2.i, label %if.else.i, label %for.end24.i.do.end.i_crit_edge

for.end24.i.do.end.i_crit_edge:                   ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %for.end24.i.do.end.i_crit_edge, %for.cond6.preheader.thread.i.do.end.i_crit_edge
  %28 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.33, i32 noundef %div11.i.i) #11
  br label %if.end40.i

if.else.i:                                        ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %23)
  %cmp30.i = icmp eq i32 %j.0.lcssa.i, %23
  br i1 %cmp30.i, label %if.else.i.do.end35.i_crit_edge, label %if.else37.i

if.else.i.do.end35.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.else.i.do.end35.i_crit_edge, %for.cond6.preheader.i.do.end35.i_crit_edge
  %30 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.36, i32 noundef %div11.i.i) #11
  br label %if.end40.i

if.else37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %ctrls1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrls1.i, align 4
  %call38.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %33, i32 noundef 0) #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else37.i, %do.end35.i, %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %mbus_code)
  %cond.i = icmp eq i32 %mbus_code, 12295
  br i1 %cond.i, label %if.end12, label %if.end40.i.cleanup_crit_edge

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %num_data_lanes.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 10, i32 2, i32 2, i32 3
  %34 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_data_lanes.i, align 1
  %conv41.i = zext i8 %35 to i32
  %mul.i = and i32 %div.i.i, -2
  %mul42.i = mul i32 %mul.i, %conv41.i
  %div.i = udiv i32 %mul42.i, 10
  %conv43.i = zext i32 %div.i to i64
  %pixel_rate.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %pixel_rate.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pixel_rate.i, align 4
  %call44.i = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %37, i64 noundef %conv43.i) #8
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mode, ptr %state, align 4
  %mbus_code16 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 14, i32 1
  %39 = ptrtoint ptr %mbus_code16 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 12295, ptr %mbus_code16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end40.i.cleanup_crit_edge, %ov8865_mode_mipi_clk_rate.exit.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -16, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ -22, %ov8865_mode_mipi_clk_rate.exit.i.cleanup_crit_edge ], [ -22, %if.end40.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_mode_configure(ptr noundef readonly %sensor, ptr noundef readonly %mode, i32 noundef %mbus_code) unnamed_addr #2 align 64 {
entry:
  %data.i348 = alloca [3 x i8], align 1
  %data.i339 = alloca [3 x i8], align 1
  %data.i330 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output_size_x = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 2
  %0 = ptrtoint ptr %output_size_x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output_size_x, align 4
  %and = lshr i32 %1, 8
  %2 = trunc i32 %and to i8
  %conv = and i8 %2, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 56, ptr %data.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %4, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 14344) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %10 = ptrtoint ptr %output_size_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %output_size_x, align 4
  %conv3 = trunc i32 %11 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i330) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i330, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i330, i32 0, i32 2
  %14 = ptrtoint ptr %data.i330 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 56, ptr %data.i330, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3, ptr %13, align 1
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i332 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i330, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i332)
  %cmp.i333 = icmp slt i32 %call.i.i332, 0
  br i1 %cmp.i333, label %do.body.i334, label %if.end7

do.body.i334:                                     ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_configure, %if.then9.i336)) #8
          to label %ov8865_write.exit338 [label %if.then9.i336], !srcloc !220

if.then9.i336:                                    ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i335 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i335, ptr noundef nonnull @.str.29, i32 noundef 14345) #8
  br label %ov8865_write.exit338

ov8865_write.exit338:                             ; preds = %if.then9.i336, %do.body.i334
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i330) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i330) #8
  %hts = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 4
  %19 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hts, align 4
  %and8 = lshr i32 %20, 8
  %21 = trunc i32 %and8 to i8
  %conv10 = and i8 %21, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i339) #8
  %22 = getelementptr inbounds [3 x i8], ptr %data.i339, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %data.i339, i32 0, i32 2
  %24 = ptrtoint ptr %data.i339 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 56, ptr %data.i339, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 12, ptr %22, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10, ptr %23, align 1
  %27 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i341 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %data.i339, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i341)
  %cmp.i342 = icmp slt i32 %call.i.i341, 0
  br i1 %cmp.i342, label %do.body.i343, label %if.end14

do.body.i343:                                     ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_configure, %if.then9.i345)) #8
          to label %ov8865_write.exit347 [label %if.then9.i345], !srcloc !220

if.then9.i345:                                    ; preds = %do.body.i343
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i344 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i344, ptr noundef nonnull @.str.29, i32 noundef 14348) #8
  br label %ov8865_write.exit347

ov8865_write.exit347:                             ; preds = %if.then9.i345, %do.body.i343
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i339) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i339) #8
  %29 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hts, align 4
  %conv17 = trunc i32 %30 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i348) #8
  %31 = getelementptr inbounds [3 x i8], ptr %data.i348, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i8], ptr %data.i348, i32 0, i32 2
  %33 = ptrtoint ptr %data.i348 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 56, ptr %data.i348, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 13, ptr %31, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv17, ptr %32, align 1
  %36 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i350 = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %data.i348, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i350)
  %cmp.i351 = icmp slt i32 %call.i.i350, 0
  br i1 %cmp.i351, label %do.body.i352, label %if.end21

do.body.i352:                                     ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_configure, %if.then9.i354)) #8
          to label %ov8865_write.exit356 [label %if.then9.i354], !srcloc !220

if.then9.i354:                                    ; preds = %do.body.i352
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i353 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i353, ptr noundef nonnull @.str.29, i32 noundef 14349) #8
  br label %ov8865_write.exit356

ov8865_write.exit356:                             ; preds = %if.then9.i354, %do.body.i352
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i348) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i348) #8
  %output_size_y = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 7
  %38 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %output_size_y, align 4
  %and22 = lshr i32 %39, 8
  %40 = trunc i32 %and22 to i8
  %conv24 = and i8 %40, 15
  %call25 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14346, i8 noundef zeroext %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %41 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %output_size_y, align 4
  %conv31 = trunc i32 %42 to i8
  %call32 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14347, i8 noundef zeroext %conv31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %vts = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 9
  %43 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vts, align 4
  %and36 = lshr i32 %44, 8
  %45 = trunc i32 %and36 to i8
  %conv38 = and i8 %45, 15
  %call39 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14350, i8 noundef zeroext %conv38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %46 = ptrtoint ptr %vts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vts, align 4
  %conv45 = trunc i32 %47 to i8
  %call46 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14351, i8 noundef zeroext %conv45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %size_auto = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 10
  %48 = ptrtoint ptr %size_auto to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %size_auto, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool50.not = icmp eq i8 %49, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end49
  %call52 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14401, i8 noundef zeroext 63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  %size_auto_boundary_y = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 12
  %50 = ptrtoint ptr %size_auto_boundary_y to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size_auto_boundary_y, align 4
  %shl = shl i32 %51, 4
  %size_auto_boundary_x = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 11
  %52 = ptrtoint ptr %size_auto_boundary_x to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size_auto_boundary_x, align 4
  %and57 = and i32 %53, 15
  %or = or i32 %and57, %shl
  %conv58 = trunc i32 %or to i8
  %call59 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14406, i8 noundef zeroext %conv58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end55.if.end147_crit_edge, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55.if.end147_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.else:                                          ; preds = %if.end49
  %54 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode, align 4
  %and63 = lshr i32 %55, 8
  %56 = trunc i32 %and63 to i8
  %conv65 = and i8 %56, 15
  %call66 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14336, i8 noundef zeroext %conv65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %if.else
  %57 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mode, align 4
  %conv72 = trunc i32 %58 to i8
  %call73 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14337, i8 noundef zeroext %conv72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end76:                                         ; preds = %if.end69
  %offset_x = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 1
  %59 = ptrtoint ptr %offset_x to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset_x, align 4
  %and77 = lshr i32 %60, 8
  %conv79 = trunc i32 %and77 to i8
  %call80 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14352, i8 noundef zeroext %conv79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83:                                         ; preds = %if.end76
  %61 = ptrtoint ptr %offset_x to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset_x, align 4
  %conv86 = trunc i32 %62 to i8
  %call87 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14353, i8 noundef zeroext %conv86)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %if.end83
  %crop_end_x = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 3
  %63 = ptrtoint ptr %crop_end_x to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crop_end_x, align 4
  %and91 = lshr i32 %64, 8
  %65 = trunc i32 %and91 to i8
  %conv93 = and i8 %65, 15
  %call94 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14340, i8 noundef zeroext %conv93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %if.end90
  %66 = ptrtoint ptr %crop_end_x to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %crop_end_x, align 4
  %conv100 = trunc i32 %67 to i8
  %call101 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14341, i8 noundef zeroext %conv100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end104:                                        ; preds = %if.end97
  %crop_start_y = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 5
  %68 = ptrtoint ptr %crop_start_y to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crop_start_y, align 4
  %and105 = lshr i32 %69, 8
  %70 = trunc i32 %and105 to i8
  %conv107 = and i8 %70, 15
  %call108 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14338, i8 noundef zeroext %conv107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end111:                                        ; preds = %if.end104
  %71 = ptrtoint ptr %crop_start_y to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %crop_start_y, align 4
  %conv114 = trunc i32 %72 to i8
  %call115 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14339, i8 noundef zeroext %conv114)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end118:                                        ; preds = %if.end111
  %offset_y = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 6
  %73 = ptrtoint ptr %offset_y to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset_y, align 4
  %and119 = lshr i32 %74, 8
  %75 = trunc i32 %and119 to i8
  %conv121 = and i8 %75, 127
  %call122 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14354, i8 noundef zeroext %conv121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end125:                                        ; preds = %if.end118
  %76 = ptrtoint ptr %offset_y to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset_y, align 4
  %conv128 = trunc i32 %77 to i8
  %call129 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14355, i8 noundef zeroext %conv128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end132:                                        ; preds = %if.end125
  %crop_end_y = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 8
  %78 = ptrtoint ptr %crop_end_y to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %crop_end_y, align 4
  %and133 = lshr i32 %79, 8
  %80 = trunc i32 %and133 to i8
  %conv135 = and i8 %80, 15
  %call136 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14342, i8 noundef zeroext %conv135)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end139:                                        ; preds = %if.end132
  %81 = ptrtoint ptr %crop_end_y to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %crop_end_y, align 4
  %conv142 = trunc i32 %82 to i8
  %call143 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14343, i8 noundef zeroext %conv142)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end139.if.end147_crit_edge, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.end147:                                        ; preds = %if.end139.if.end147_crit_edge, %if.end55.if.end147_crit_edge
  %vfifo_read_start = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 24
  %83 = ptrtoint ptr %vfifo_read_start to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vfifo_read_start, align 4
  %and148 = lshr i32 %84, 8
  %conv150 = trunc i32 %and148 to i8
  %call151 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 17920, i8 noundef zeroext %conv150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end154:                                        ; preds = %if.end147
  %85 = ptrtoint ptr %vfifo_read_start to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vfifo_read_start, align 4
  %conv157 = trunc i32 %86 to i8
  %call158 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 17921, i8 noundef zeroext %conv157)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end154.cleanup_crit_edge

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end161:                                        ; preds = %if.end154
  %ablc_num = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 25
  %87 = ptrtoint ptr %ablc_num to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ablc_num, align 4
  %89 = trunc i32 %88 to i8
  %conv163 = and i8 %89, 31
  %call164 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14384, i8 noundef zeroext %conv163)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end161.cleanup_crit_edge

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end167:                                        ; preds = %if.end161
  %zline_num = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 26
  %90 = ptrtoint ptr %zline_num to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %zline_num, align 4
  %92 = trunc i32 %91 to i8
  %conv169 = and i8 %92, 31
  %call170 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14390, i8 noundef zeroext %conv169)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end173, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end173:                                        ; preds = %if.end167
  %call174 = call fastcc i32 @ov8865_mode_binning_configure(ptr noundef %sensor, ptr noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end177, label %if.end173.cleanup_crit_edge

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end177:                                        ; preds = %if.end173
  %call178 = call fastcc i32 @ov8865_mode_black_level_configure(ptr noundef %sensor, ptr noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end181, label %if.end177.cleanup_crit_edge

if.end177.cleanup_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end181:                                        ; preds = %if.end177
  %call182 = call fastcc i32 @ov8865_mode_pll1_configure(ptr noundef %sensor, i32 noundef %mbus_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %if.end181.cleanup_crit_edge

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end185:                                        ; preds = %if.end181
  %call186 = call fastcc i32 @ov8865_mode_pll2_configure(ptr noundef %sensor, ptr noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end189, label %if.end185.cleanup_crit_edge

if.end185.cleanup_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end189:                                        ; preds = %if.end185
  %call190 = call fastcc i32 @ov8865_mode_sclk_configure(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.end189.cleanup_crit_edge

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end193:                                        ; preds = %if.end189
  %register_values = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 41
  %93 = ptrtoint ptr %register_values to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %register_values, align 4
  %tobool194.not = icmp eq ptr %94, null
  br i1 %tobool194.not, label %if.end193.if.end201_crit_edge, label %if.then195

if.end193.if.end201_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.then195:                                       ; preds = %if.end193
  %register_values_count = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 42
  %95 = ptrtoint ptr %register_values_count to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %register_values_count, align 4
  %call197 = call fastcc i32 @ov8865_write_sequence(ptr noundef %sensor, ptr noundef nonnull %94, i32 noundef %96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.then195.if.end201_crit_edge, label %if.then195.cleanup_crit_edge

if.then195.cleanup_crit_edge:                     ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then195.if.end201_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.end201:                                        ; preds = %if.then195.if.end201_crit_edge, %if.end193.if.end201_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end201, %if.then195.cleanup_crit_edge, %if.end189.cleanup_crit_edge, %if.end185.cleanup_crit_edge, %if.end181.cleanup_crit_edge, %if.end177.cleanup_crit_edge, %if.end173.cleanup_crit_edge, %if.end167.cleanup_crit_edge, %if.end161.cleanup_crit_edge, %if.end154.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %if.end132.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %if.end118.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %ov8865_write.exit356, %ov8865_write.exit347, %ov8865_write.exit338, %ov8865_write.exit
  %retval.0 = phi i32 [ 0, %if.end201 ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i332, %ov8865_write.exit338 ], [ %call.i.i341, %ov8865_write.exit347 ], [ %call.i.i350, %ov8865_write.exit356 ], [ %call25, %if.end21.cleanup_crit_edge ], [ %call32, %if.end28.cleanup_crit_edge ], [ %call39, %if.end35.cleanup_crit_edge ], [ %call46, %if.end42.cleanup_crit_edge ], [ %call52, %if.then51.cleanup_crit_edge ], [ %call59, %if.end55.cleanup_crit_edge ], [ %call66, %if.else.cleanup_crit_edge ], [ %call73, %if.end69.cleanup_crit_edge ], [ %call80, %if.end76.cleanup_crit_edge ], [ %call87, %if.end83.cleanup_crit_edge ], [ %call94, %if.end90.cleanup_crit_edge ], [ %call101, %if.end97.cleanup_crit_edge ], [ %call108, %if.end104.cleanup_crit_edge ], [ %call115, %if.end111.cleanup_crit_edge ], [ %call122, %if.end118.cleanup_crit_edge ], [ %call129, %if.end125.cleanup_crit_edge ], [ %call136, %if.end132.cleanup_crit_edge ], [ %call143, %if.end139.cleanup_crit_edge ], [ %call151, %if.end147.cleanup_crit_edge ], [ %call158, %if.end154.cleanup_crit_edge ], [ %call164, %if.end161.cleanup_crit_edge ], [ %call170, %if.end167.cleanup_crit_edge ], [ %call174, %if.end173.cleanup_crit_edge ], [ %call178, %if.end177.cleanup_crit_edge ], [ %call182, %if.end181.cleanup_crit_edge ], [ %call186, %if.end185.cleanup_crit_edge ], [ %call190, %if.end189.cleanup_crit_edge ], [ %call197, %if.then195.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_mode_binning_configure(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %data.i121 = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  %value.i = alloca i8, align 1
  %data.i111 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 56, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_binning_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 14368) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %binning_x = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 13
  %7 = ptrtoint ptr %binning_x to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %binning_x, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool1.not, i8 64, i8 80
  %binning_y = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 14
  %9 = ptrtoint ptr %binning_y to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %binning_y, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  %11 = or i8 %spec.select, 32
  %value.1 = select i1 %tobool5.not, i8 %spec.select, i8 %11
  %sync_hbin = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 18
  %12 = ptrtoint ptr %sync_hbin to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sync_hbin, align 4, !range !222
  %value.2 = or i8 %value.1, %13
  %horz_var2 = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 19
  %14 = ptrtoint ptr %horz_var2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %horz_var2, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  %16 = or i8 %value.2, 8
  %value.3 = select i1 %tobool17.not, i8 %value.2, i8 %16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i111) #8
  %17 = getelementptr inbounds [3 x i8], ptr %data.i111, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i8], ptr %data.i111, i32 0, i32 2
  %19 = ptrtoint ptr %data.i111 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 56, ptr %data.i111, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 33, ptr %17, align 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %value.3, ptr %18, align 1
  %22 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i113 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %data.i111, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.i114 = icmp slt i32 %call.i.i113, 0
  br i1 %cmp.i114, label %do.body.i115, label %if.end26

do.body.i115:                                     ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_binning_configure, %if.then9.i117)) #8
          to label %ov8865_write.exit119 [label %if.then9.i117], !srcloc !220

if.then9.i117:                                    ; preds = %do.body.i115
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i116 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i116, ptr noundef nonnull @.str.29, i32 noundef 14369) #8
  br label %ov8865_write.exit119

ov8865_write.exit119:                             ; preds = %if.then9.i117, %do.body.i115
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i111) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i111) #8
  %variopixel = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 15
  %24 = ptrtoint ptr %variopixel to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %variopixel, align 2, !range !222
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %26 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %value.i, align 1
  %call.i = call fastcc i32 @ov8865_read(ptr noundef %sensor, i16 noundef zeroext 20482, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ov8865_update_bits.exit.thread

ov8865_update_bits.exit.thread:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  %conv29 = select i1 %tobool27.not, i8 0, i8 4
  %27 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %value.i, align 1
  %and.i = and i8 %28, -5
  %or11.i = or i8 %and.i, %conv29
  store i8 %or11.i, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %29 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 80, ptr %data.i.i, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %29, align 1
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %or11.i, ptr %30, align 1
  %34 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end33

do.body.i.i:                                      ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_binning_configure, %if.then9.i.i)) #8
          to label %ov8865_update_bits.exit [label %if.then9.i.i], !srcloc !220

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef 20482) #8
  br label %ov8865_update_bits.exit

ov8865_update_bits.exit:                          ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  %36 = ptrtoint ptr %variopixel to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %variopixel, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool35.not = icmp eq i8 %37, 0
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %variopixel_hsub_coef37 = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 16
  %38 = ptrtoint ptr %variopixel_hsub_coef37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %variopixel_hsub_coef37, align 4
  %variopixel_vsub_coef38 = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 17
  %40 = ptrtoint ptr %variopixel_vsub_coef38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %variopixel_vsub_coef38, align 4
  %phi.bo = shl i32 %39, 2
  %phi.bo107 = add i32 %phi.bo, 12
  %phi.bo108 = and i32 %phi.bo107, 12
  %phi.bo109 = add i32 %41, 3
  %phi.bo110 = and i32 %phi.bo109, 3
  %42 = or i32 %phi.bo108, %phi.bo110
  %phi.cast = trunc i32 %42 to i8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %or42 = phi i8 [ %phi.cast, %if.then36 ], [ 0, %if.end33.if.end39_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i121) #8
  %43 = getelementptr inbounds [3 x i8], ptr %data.i121, i32 0, i32 1
  %44 = getelementptr inbounds [3 x i8], ptr %data.i121, i32 0, i32 2
  %45 = ptrtoint ptr %data.i121 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 89, ptr %data.i121, align 1
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %43, align 1
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or42, ptr %44, align 1
  %48 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i123 = call i32 @i2c_transfer_buffer_flags(ptr noundef %49, ptr noundef nonnull %data.i121, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %cmp.i124 = icmp slt i32 %call.i.i123, 0
  br i1 %cmp.i124, label %do.body.i125, label %if.end47

do.body.i125:                                     ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_binning_configure, %if.then9.i127)) #8
          to label %ov8865_write.exit129 [label %if.then9.i127], !srcloc !220

if.then9.i127:                                    ; preds = %do.body.i125
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i126 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i126, ptr noundef nonnull @.str.29, i32 noundef 22785) #8
  br label %ov8865_write.exit129

ov8865_write.exit129:                             ; preds = %if.then9.i127, %do.body.i125
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i121) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end39
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i121) #8
  %inc_x_odd = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 20
  %50 = ptrtoint ptr %inc_x_odd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %inc_x_odd, align 4
  %52 = trunc i32 %51 to i8
  %conv49 = and i8 %52, 31
  %call50 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14356, i8 noundef zeroext %conv49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end47
  %inc_x_even = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 21
  %53 = ptrtoint ptr %inc_x_even to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %inc_x_even, align 4
  %55 = trunc i32 %54 to i8
  %conv55 = and i8 %55, 31
  %call56 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14357, i8 noundef zeroext %conv55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %inc_y_odd = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 22
  %56 = ptrtoint ptr %inc_y_odd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %inc_y_odd, align 4
  %58 = trunc i32 %57 to i8
  %conv61 = and i8 %58, 31
  %call62 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14378, i8 noundef zeroext %conv61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %inc_y_even = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 23
  %59 = ptrtoint ptr %inc_y_even to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %inc_y_even, align 4
  %61 = trunc i32 %60 to i8
  %conv67 = and i8 %61, 31
  %call68 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 14379, i8 noundef zeroext %conv67)
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end59.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %ov8865_write.exit129, %ov8865_update_bits.exit, %ov8865_update_bits.exit.thread, %ov8865_write.exit119, %ov8865_write.exit
  %retval.0 = phi i32 [ %call68, %if.end65 ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i113, %ov8865_write.exit119 ], [ %call.i.i.i, %ov8865_update_bits.exit ], [ %call.i.i123, %ov8865_write.exit129 ], [ %call50, %if.end47.cleanup_crit_edge ], [ %call56, %if.end53.cleanup_crit_edge ], [ %call62, %if.end59.cleanup_crit_edge ], [ %call.i, %ov8865_update_bits.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_mode_black_level_configure(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %data.i182 = alloca [3 x i8], align 1
  %data.i173 = alloca [3 x i8], align 1
  %data.i164 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %blc_col_shift_mask = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 35
  %0 = ptrtoint ptr %blc_col_shift_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blc_col_shift_mask, align 4
  %2 = or i8 %1, 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %data.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %2, ptr %4, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %8 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_black_level_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 16385) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %blc_top_zero_line_start = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 27
  %10 = ptrtoint ptr %blc_top_zero_line_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blc_top_zero_line_start, align 4
  %12 = trunc i32 %11 to i8
  %conv2 = and i8 %12, 63
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i164) #8
  %13 = getelementptr inbounds [3 x i8], ptr %data.i164, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %data.i164, i32 0, i32 2
  %15 = ptrtoint ptr %data.i164 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %data.i164, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 40, ptr %13, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv2, ptr %14, align 1
  %18 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i166 = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %data.i164, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i166)
  %cmp.i167 = icmp slt i32 %call.i.i166, 0
  br i1 %cmp.i167, label %do.body.i168, label %if.end6

do.body.i168:                                     ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_black_level_configure, %if.then9.i170)) #8
          to label %ov8865_write.exit172 [label %if.then9.i170], !srcloc !220

if.then9.i170:                                    ; preds = %do.body.i168
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i169 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i169, ptr noundef nonnull @.str.29, i32 noundef 16424) #8
  br label %ov8865_write.exit172

ov8865_write.exit172:                             ; preds = %if.then9.i170, %do.body.i168
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i164) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i164) #8
  %blc_top_zero_line_num = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 28
  %20 = ptrtoint ptr %blc_top_zero_line_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blc_top_zero_line_num, align 4
  %22 = trunc i32 %21 to i8
  %conv8 = and i8 %22, 31
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i173) #8
  %23 = getelementptr inbounds [3 x i8], ptr %data.i173, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %data.i173, i32 0, i32 2
  %25 = ptrtoint ptr %data.i173 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 64, ptr %data.i173, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 41, ptr %23, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv8, ptr %24, align 1
  %28 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i175 = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %data.i173, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175)
  %cmp.i176 = icmp slt i32 %call.i.i175, 0
  br i1 %cmp.i176, label %do.body.i177, label %if.end12

do.body.i177:                                     ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_black_level_configure, %if.then9.i179)) #8
          to label %ov8865_write.exit181 [label %if.then9.i179], !srcloc !220

if.then9.i179:                                    ; preds = %do.body.i177
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i178 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i178, ptr noundef nonnull @.str.29, i32 noundef 16425) #8
  br label %ov8865_write.exit181

ov8865_write.exit181:                             ; preds = %if.then9.i179, %do.body.i177
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i173) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i173) #8
  %blc_top_black_line_start = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 29
  %30 = ptrtoint ptr %blc_top_black_line_start to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blc_top_black_line_start, align 4
  %32 = trunc i32 %31 to i8
  %conv14 = and i8 %32, 63
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i182) #8
  %33 = getelementptr inbounds [3 x i8], ptr %data.i182, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i8], ptr %data.i182, i32 0, i32 2
  %35 = ptrtoint ptr %data.i182 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 64, ptr %data.i182, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 42, ptr %33, align 1
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv14, ptr %34, align 1
  %38 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i184 = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %data.i182, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %cmp.i185 = icmp slt i32 %call.i.i184, 0
  br i1 %cmp.i185, label %do.body.i186, label %if.end18

do.body.i186:                                     ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_black_level_configure, %if.then9.i188)) #8
          to label %ov8865_write.exit190 [label %if.then9.i188], !srcloc !220

if.then9.i188:                                    ; preds = %do.body.i186
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i187 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i187, ptr noundef nonnull @.str.29, i32 noundef 16426) #8
  br label %ov8865_write.exit190

ov8865_write.exit190:                             ; preds = %if.then9.i188, %do.body.i186
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i182) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i182) #8
  %blc_top_black_line_num = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 30
  %40 = ptrtoint ptr %blc_top_black_line_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blc_top_black_line_num, align 4
  %42 = trunc i32 %41 to i8
  %conv20 = and i8 %42, 31
  %call21 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16427, i8 noundef zeroext %conv20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %blc_bottom_zero_line_start = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 31
  %43 = ptrtoint ptr %blc_bottom_zero_line_start to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blc_bottom_zero_line_start, align 4
  %45 = trunc i32 %44 to i8
  %conv26 = and i8 %45, 63
  %call27 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16428, i8 noundef zeroext %conv26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %blc_bottom_zero_line_num = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 32
  %46 = ptrtoint ptr %blc_bottom_zero_line_num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blc_bottom_zero_line_num, align 4
  %48 = trunc i32 %47 to i8
  %conv32 = and i8 %48, 31
  %call33 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16429, i8 noundef zeroext %conv32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %blc_bottom_black_line_start = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 33
  %49 = ptrtoint ptr %blc_bottom_black_line_start to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %blc_bottom_black_line_start, align 4
  %51 = trunc i32 %50 to i8
  %conv38 = and i8 %51, 63
  %call39 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16430, i8 noundef zeroext %conv38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  %blc_bottom_black_line_num = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 34
  %52 = ptrtoint ptr %blc_bottom_black_line_num to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %blc_bottom_black_line_num, align 4
  %54 = trunc i32 %53 to i8
  %conv44 = and i8 %54, 31
  %call45 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16431, i8 noundef zeroext %conv44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  %blc_anchor_left_start = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 36
  %55 = ptrtoint ptr %blc_anchor_left_start to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %blc_anchor_left_start, align 4
  %and49 = lshr i32 %56, 8
  %57 = trunc i32 %and49 to i8
  %conv50 = and i8 %57, 15
  %call51 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16416, i8 noundef zeroext %conv50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %58 = ptrtoint ptr %blc_anchor_left_start to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %blc_anchor_left_start, align 4
  %conv57 = trunc i32 %59 to i8
  %call58 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16417, i8 noundef zeroext %conv57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %blc_anchor_left_end = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 37
  %60 = ptrtoint ptr %blc_anchor_left_end to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blc_anchor_left_end, align 4
  %and62 = lshr i32 %61, 8
  %62 = trunc i32 %and62 to i8
  %conv64 = and i8 %62, 15
  %call65 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16418, i8 noundef zeroext %conv64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %63 = ptrtoint ptr %blc_anchor_left_end to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blc_anchor_left_end, align 4
  %conv71 = trunc i32 %64 to i8
  %call72 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16419, i8 noundef zeroext %conv71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %blc_anchor_right_start = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 38
  %65 = ptrtoint ptr %blc_anchor_right_start to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blc_anchor_right_start, align 4
  %and76 = lshr i32 %66, 8
  %67 = trunc i32 %and76 to i8
  %conv78 = and i8 %67, 15
  %call79 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16420, i8 noundef zeroext %conv78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end82:                                         ; preds = %if.end75
  %68 = ptrtoint ptr %blc_anchor_right_start to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %blc_anchor_right_start, align 4
  %conv85 = trunc i32 %69 to i8
  %call86 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16421, i8 noundef zeroext %conv85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %if.end82
  %blc_anchor_right_end = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 39
  %70 = ptrtoint ptr %blc_anchor_right_end to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %blc_anchor_right_end, align 4
  %and90 = lshr i32 %71, 8
  %72 = trunc i32 %and90 to i8
  %conv92 = and i8 %72, 15
  %call93 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16422, i8 noundef zeroext %conv92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %blc_anchor_right_end to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %blc_anchor_right_end, align 4
  %conv99 = trunc i32 %74 to i8
  %call100 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 16423, i8 noundef zeroext %conv99)
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.end89.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %ov8865_write.exit190, %ov8865_write.exit181, %ov8865_write.exit172, %ov8865_write.exit
  %retval.0 = phi i32 [ %call100, %if.end96 ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i166, %ov8865_write.exit172 ], [ %call.i.i175, %ov8865_write.exit181 ], [ %call.i.i184, %ov8865_write.exit190 ], [ %call21, %if.end18.cleanup_crit_edge ], [ %call27, %if.end24.cleanup_crit_edge ], [ %call33, %if.end30.cleanup_crit_edge ], [ %call39, %if.end36.cleanup_crit_edge ], [ %call45, %if.end42.cleanup_crit_edge ], [ %call51, %if.end48.cleanup_crit_edge ], [ %call58, %if.end54.cleanup_crit_edge ], [ %call65, %if.end61.cleanup_crit_edge ], [ %call72, %if.end68.cleanup_crit_edge ], [ %call79, %if.end75.cleanup_crit_edge ], [ %call86, %if.end82.cleanup_crit_edge ], [ %call93, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_mode_pll1_configure(ptr nocapture noundef readonly %sensor, i32 noundef %mbus_code) unnamed_addr #2 align 64 {
entry:
  %data.i19 = alloca [3 x i8], align 1
  %data.i10 = alloca [3 x i8], align 1
  %data.i1 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_configs = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 8
  %0 = ptrtoint ptr %pll_configs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_configs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12295, i32 %mbus_code)
  %cond = icmp eq i32 %mbus_code, 12295
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %4 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 48, ptr %data.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 49, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %5, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll1_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 12337) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %conv = xor i8 %14, 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i1) #8
  %15 = getelementptr inbounds [3 x i8], ptr %data.i1, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %data.i1, i32 0, i32 2
  %17 = ptrtoint ptr %data.i1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %data.i1, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 10, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %16, align 1
  %20 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %data.i1, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3)
  %cmp.i4 = icmp slt i32 %call.i.i3, 0
  br i1 %cmp.i4, label %do.body.i5, label %if.end4

do.body.i5:                                       ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll1_configure, %if.then9.i7)) #8
          to label %ov8865_write.exit9 [label %if.then9.i7], !srcloc !220

if.then9.i7:                                      ; preds = %do.body.i5
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i6 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i6, ptr noundef nonnull @.str.29, i32 noundef 778) #8
  br label %ov8865_write.exit9

ov8865_write.exit9:                               ; preds = %if.then9.i7, %do.body.i5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i1) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i1) #8
  %pll_pre_div = getelementptr inbounds %struct.ov8865_pll1_config, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %pll_pre_div to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pll_pre_div, align 4
  %24 = trunc i32 %23 to i8
  %conv6 = and i8 %24, 7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i10) #8
  %25 = getelementptr inbounds [3 x i8], ptr %data.i10, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %data.i10, i32 0, i32 2
  %27 = ptrtoint ptr %data.i10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %data.i10, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %25, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv6, ptr %26, align 1
  %30 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i12 = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %data.i10, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %cmp.i13 = icmp slt i32 %call.i.i12, 0
  br i1 %cmp.i13, label %do.body.i14, label %if.end10

do.body.i14:                                      ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll1_configure, %if.then9.i16)) #8
          to label %ov8865_write.exit18 [label %if.then9.i16], !srcloc !220

if.then9.i16:                                     ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i15 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i15, ptr noundef nonnull @.str.29, i32 noundef 768) #8
  br label %ov8865_write.exit18

ov8865_write.exit18:                              ; preds = %if.then9.i16, %do.body.i14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i10) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i10) #8
  %pll_mul = getelementptr inbounds %struct.ov8865_pll1_config, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %pll_mul to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pll_mul, align 4
  %and11 = lshr i32 %33, 8
  %34 = trunc i32 %and11 to i8
  %conv12 = and i8 %34, 3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i19) #8
  %35 = getelementptr inbounds [3 x i8], ptr %data.i19, i32 0, i32 1
  %36 = getelementptr inbounds [3 x i8], ptr %data.i19, i32 0, i32 2
  %37 = ptrtoint ptr %data.i19 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %data.i19, align 1
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %35, align 1
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv12, ptr %36, align 1
  %40 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i21 = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %data.i19, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.i22 = icmp slt i32 %call.i.i21, 0
  br i1 %cmp.i22, label %do.body.i23, label %if.end16

do.body.i23:                                      ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll1_configure, %if.then9.i25)) #8
          to label %ov8865_write.exit27 [label %if.then9.i25], !srcloc !220

if.then9.i25:                                     ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i24 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i24, ptr noundef nonnull @.str.29, i32 noundef 769) #8
  br label %ov8865_write.exit27

ov8865_write.exit27:                              ; preds = %if.then9.i25, %do.body.i23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i19) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i19) #8
  %42 = ptrtoint ptr %pll_mul to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pll_mul, align 4
  %conv19 = trunc i32 %43 to i8
  %call20 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 770, i8 noundef zeroext %conv19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %m_div = getelementptr inbounds %struct.ov8865_pll1_config, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %m_div to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %m_div, align 4
  %46 = trunc i32 %45 to i8
  %47 = add i8 %46, 15
  %conv26 = and i8 %47, 15
  %call27 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 771, i8 noundef zeroext %conv26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %mipi_div = getelementptr inbounds %struct.ov8865_pll1_config, ptr %3, i32 0, i32 4
  %48 = ptrtoint ptr %mipi_div to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mipi_div, align 4
  %50 = trunc i32 %49 to i8
  %conv32 = and i8 %50, 3
  %call33 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 772, i8 noundef zeroext %conv32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %pclk_div = getelementptr inbounds %struct.ov8865_pll1_config, ptr %3, i32 0, i32 5
  %51 = ptrtoint ptr %pclk_div to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pclk_div, align 4
  %.tr = trunc i32 %52 to i8
  %53 = shl i8 %.tr, 3
  %54 = and i8 %53, 8
  %conv39 = xor i8 %54, 8
  %call40 = call fastcc i32 @ov8865_update_bits(ptr noundef %sensor, i16 noundef zeroext 12320, i8 noundef zeroext 8, i8 noundef zeroext %conv39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %sys_pre_div = getelementptr inbounds %struct.ov8865_pll1_config, ptr %3, i32 0, i32 6
  %55 = ptrtoint ptr %sys_pre_div to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sys_pre_div, align 4
  %57 = trunc i32 %56 to i8
  %conv45 = and i8 %57, 3
  %call46 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 773, i8 noundef zeroext %conv45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %sys_div = getelementptr inbounds %struct.ov8865_pll1_config, ptr %3, i32 0, i32 7
  %58 = ptrtoint ptr %sys_div to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sys_div, align 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %conv52 = xor i8 %61, 1
  %call53 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 774, i8 noundef zeroext %conv52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = call fastcc i32 @ov8865_update_bits(ptr noundef %sensor, i16 noundef zeroext 798, i8 noundef zeroext 8, i8 noundef zeroext 8)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %ov8865_write.exit27, %ov8865_write.exit18, %ov8865_write.exit9, %ov8865_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i3, %ov8865_write.exit9 ], [ %call.i.i12, %ov8865_write.exit18 ], [ %call.i.i21, %ov8865_write.exit27 ], [ %call20, %if.end16.cleanup_crit_edge ], [ %call27, %if.end23.cleanup_crit_edge ], [ %call33, %if.end30.cleanup_crit_edge ], [ %call40, %if.end36.cleanup_crit_edge ], [ %call46, %if.end43.cleanup_crit_edge ], [ %call53, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_mode_pll2_configure(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  %data.i84 = alloca [3 x i8], align 1
  %data.i75 = alloca [3 x i8], align 1
  %data.i66 = alloca [3 x i8], align 1
  %data.i57 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll2_binning = getelementptr inbounds %struct.ov8865_mode, ptr %mode, i32 0, i32 40
  %0 = ptrtoint ptr %pll2_binning to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pll2_binning, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %pll_configs1 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 8
  %2 = ptrtoint ptr %pll_configs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_configs1, align 4
  %pll2_config_binning = getelementptr inbounds %struct.ov8865_pll_configs, ptr %3, i32 0, i32 2
  %pll2_config_native = getelementptr inbounds %struct.ov8865_pll_configs, ptr %3, i32 0, i32 1
  %cond.in = select i1 %tobool.not, ptr %pll2_config_native, ptr %pll2_config_binning
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load ptr, ptr %cond.in, align 4
  %5 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cond, align 4
  %sub = shl i32 %6, 4
  %7 = and i32 %sub, 16
  %dac_div = getelementptr inbounds %struct.ov8865_pll2_config, ptr %cond, i32 0, i32 3
  %8 = ptrtoint ptr %dac_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dac_div, align 4
  %sub2 = add i32 %9, 15
  %and3 = and i32 %sub2, 15
  %10 = or i32 %and3, %7
  %11 = trunc i32 %10 to i8
  %conv = xor i8 %11, 16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %data.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 18, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %13, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll2_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 786) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %pll_pre_div = getelementptr inbounds %struct.ov8865_pll2_config, ptr %cond, i32 0, i32 1
  %19 = ptrtoint ptr %pll_pre_div to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pll_pre_div, align 4
  %21 = trunc i32 %20 to i8
  %conv6 = and i8 %21, 7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i57) #8
  %22 = getelementptr inbounds [3 x i8], ptr %data.i57, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %data.i57, i32 0, i32 2
  %24 = ptrtoint ptr %data.i57 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %data.i57, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 11, ptr %22, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv6, ptr %23, align 1
  %27 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i59 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %data.i57, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %cmp.i60 = icmp slt i32 %call.i.i59, 0
  br i1 %cmp.i60, label %do.body.i61, label %if.end10

do.body.i61:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll2_configure, %if.then9.i63)) #8
          to label %ov8865_write.exit65 [label %if.then9.i63], !srcloc !220

if.then9.i63:                                     ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i62 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i62, ptr noundef nonnull @.str.29, i32 noundef 779) #8
  br label %ov8865_write.exit65

ov8865_write.exit65:                              ; preds = %if.then9.i63, %do.body.i61
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i57) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i57) #8
  %pll_mul = getelementptr inbounds %struct.ov8865_pll2_config, ptr %cond, i32 0, i32 2
  %29 = ptrtoint ptr %pll_mul to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pll_mul, align 4
  %and11 = lshr i32 %30, 8
  %31 = trunc i32 %and11 to i8
  %conv12 = and i8 %31, 3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i66) #8
  %32 = getelementptr inbounds [3 x i8], ptr %data.i66, i32 0, i32 1
  %33 = getelementptr inbounds [3 x i8], ptr %data.i66, i32 0, i32 2
  %34 = ptrtoint ptr %data.i66 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %data.i66, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 12, ptr %32, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv12, ptr %33, align 1
  %37 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i68 = call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef nonnull %data.i66, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp.i69 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp.i69, label %do.body.i70, label %if.end16

do.body.i70:                                      ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll2_configure, %if.then9.i72)) #8
          to label %ov8865_write.exit74 [label %if.then9.i72], !srcloc !220

if.then9.i72:                                     ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i71 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i71, ptr noundef nonnull @.str.29, i32 noundef 780) #8
  br label %ov8865_write.exit74

ov8865_write.exit74:                              ; preds = %if.then9.i72, %do.body.i70
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i66) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i66) #8
  %39 = ptrtoint ptr %pll_mul to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pll_mul, align 4
  %conv19 = trunc i32 %40 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i75) #8
  %41 = getelementptr inbounds [3 x i8], ptr %data.i75, i32 0, i32 1
  %42 = getelementptr inbounds [3 x i8], ptr %data.i75, i32 0, i32 2
  %43 = ptrtoint ptr %data.i75 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %data.i75, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 13, ptr %41, align 1
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv19, ptr %42, align 1
  %46 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i77 = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %data.i75, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp.i78 = icmp slt i32 %call.i.i77, 0
  br i1 %cmp.i78, label %do.body.i79, label %if.end23

do.body.i79:                                      ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll2_configure, %if.then9.i81)) #8
          to label %ov8865_write.exit83 [label %if.then9.i81], !srcloc !220

if.then9.i81:                                     ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i80 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i80, ptr noundef nonnull @.str.29, i32 noundef 781) #8
  br label %ov8865_write.exit83

ov8865_write.exit83:                              ; preds = %if.then9.i81, %do.body.i79
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i75) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i75) #8
  %sys_pre_div = getelementptr inbounds %struct.ov8865_pll2_config, ptr %cond, i32 0, i32 4
  %48 = ptrtoint ptr %sys_pre_div to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sys_pre_div, align 4
  %50 = trunc i32 %49 to i8
  %51 = add i8 %50, 15
  %conv26 = and i8 %51, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i84) #8
  %52 = getelementptr inbounds [3 x i8], ptr %data.i84, i32 0, i32 1
  %53 = getelementptr inbounds [3 x i8], ptr %data.i84, i32 0, i32 2
  %54 = ptrtoint ptr %data.i84 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %data.i84, align 1
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 15, ptr %52, align 1
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv26, ptr %53, align 1
  %57 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i86 = call i32 @i2c_transfer_buffer_flags(ptr noundef %58, ptr noundef nonnull %data.i84, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %cmp.i87 = icmp slt i32 %call.i.i86, 0
  br i1 %cmp.i87, label %do.body.i88, label %if.end30

do.body.i88:                                      ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_pll2_configure, %if.then9.i90)) #8
          to label %ov8865_write.exit92 [label %if.then9.i90], !srcloc !220

if.then9.i90:                                     ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i89 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i89, ptr noundef nonnull @.str.29, i32 noundef 783) #8
  br label %ov8865_write.exit92

ov8865_write.exit92:                              ; preds = %if.then9.i90, %do.body.i88
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i84) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i84) #8
  %sys_div = getelementptr inbounds %struct.ov8865_pll2_config, ptr %cond, i32 0, i32 5
  %59 = ptrtoint ptr %sys_div to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sys_div, align 4
  %61 = trunc i32 %60 to i8
  %conv32 = and i8 %61, 7
  %call33 = call fastcc i32 @ov8865_write(ptr noundef %sensor, i16 noundef zeroext 782, i8 noundef zeroext %conv32)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %ov8865_write.exit92, %ov8865_write.exit83, %ov8865_write.exit74, %ov8865_write.exit65, %ov8865_write.exit
  %retval.0 = phi i32 [ %call33, %if.end30 ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i59, %ov8865_write.exit65 ], [ %call.i.i68, %ov8865_write.exit74 ], [ %call.i.i77, %ov8865_write.exit83 ], [ %call.i.i86, %ov8865_write.exit92 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_mode_sclk_configure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i2 = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  %value.i = alloca i8, align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 48, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 50, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %1, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_sclk_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 12338) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %value.i, align 1
  %call.i = call fastcc i32 @ov8865_read(ptr noundef %sensor, i16 noundef zeroext 12339, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ov8865_update_bits.exit.thread

ov8865_update_bits.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %value.i, align 1
  %and.i = and i8 %9, -3
  store i8 %and.i, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %10 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 48, ptr %data.i.i, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 51, ptr %10, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and.i, ptr %11, align 1
  %15 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end7

do.body.i.i:                                      ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_sclk_configure, %if.then9.i.i)) #8
          to label %ov8865_update_bits.exit [label %if.then9.i.i], !srcloc !220

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef 12339) #8
  br label %ov8865_update_bits.exit

ov8865_update_bits.exit:                          ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i2) #8
  %17 = getelementptr inbounds [3 x i8], ptr %data.i2, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i8], ptr %data.i2, i32 0, i32 2
  %19 = ptrtoint ptr %data.i2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 49, ptr %data.i2, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 6, ptr %17, align 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %18, align 1
  %22 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %data.i2, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.i5 = icmp slt i32 %call.i.i4, 0
  br i1 %cmp.i5, label %do.body.i6, label %if.end7.ov8865_write.exit10_crit_edge

if.end7.ov8865_write.exit10_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit10

do.body.i6:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mode_sclk_configure, %if.then9.i8)) #8
          to label %ov8865_write.exit10 [label %if.then9.i8], !srcloc !220

if.then9.i8:                                      ; preds = %do.body.i6
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i7 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i7, ptr noundef nonnull @.str.29, i32 noundef 12550) #8
  br label %ov8865_write.exit10

ov8865_write.exit10:                              ; preds = %if.then9.i8, %do.body.i6, %if.end7.ov8865_write.exit10_crit_edge
  %retval.0.i9 = phi i32 [ %call.i.i4, %if.then9.i8 ], [ 0, %if.end7.ov8865_write.exit10_crit_edge ], [ %call.i.i4, %do.body.i6 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i2) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit10, %ov8865_update_bits.exit, %ov8865_update_bits.exit.thread, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i9, %ov8865_write.exit10 ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i.i, %ov8865_update_bits.exit ], [ %call.i, %ov8865_update_bits.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_write_sequence(ptr nocapture noundef readonly %sensor, ptr nocapture noundef readonly %sequence, i32 noundef %sequence_count) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sequence_count)
  %cmp20.not = icmp eq i32 %sequence_count, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ov8865_register_value, ptr %sequence, i32 %i.021
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %value = getelementptr %struct.ov8865_register_value, ptr %sequence, i32 %i.021, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %6 = lshr i16 %3, 8
  %conv1.i = trunc i16 %6 to i8
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %data.i, align 1
  %conv3.i = trunc i16 %3 to i8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %5, ptr %1, align 1
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_write_sequence, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.le = zext i16 %3 to i32
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %conv.i.le) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %delay_ms = getelementptr %struct.ov8865_register_value, ptr %sequence, i32 %i.021, i32 2
  %12 = ptrtoint ptr %delay_ms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef %13) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %sequence_count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ov8865_write.exit, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %ov8865_write.exit ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_update_bits(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %address, i8 noundef zeroext %mask, i8 noundef zeroext %bits) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %value, align 1
  %call = call fastcc i32 @ov8865_read(ptr noundef %sensor, i16 noundef zeroext %address, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = xor i8 %mask, -1
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1
  %and = and i8 %2, %neg
  %or11 = or i8 %and, %bits
  store i8 %or11, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %conv.i = zext i16 %address to i32
  %5 = lshr i16 %address, 8
  %conv1.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %data.i, align 1
  %conv3.i = trunc i16 %address to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or11, ptr %4, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %9 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.ov8865_write.exit_crit_edge

if.end.ov8865_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_update_bits, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %conv.i) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i, %if.end.ov8865_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.then9.i ], [ 0, %if.end.ov8865_write.exit_crit_edge ], [ %call.i.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ov8865_write.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_read(ptr nocapture noundef readonly %sensor, i16 noundef zeroext %address, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %conv = zext i16 %address to i32
  %1 = lshr i16 %address, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %data, align 1
  %conv3 = trunc i16 %address to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  %i2c_client = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %data, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_read, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !220

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_read.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv) #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call.i48 = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef %value, i32 noundef 1, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp12 = icmp slt i32 %call.i48, 0
  br i1 %cmp12, label %do.body15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_read.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_read, %if.then27)) #8
          to label %cleanup [label %if.then27], !srcloc !220

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_read.__UNIQUE_ID_ddebug294, ptr noundef %dev28, ptr noundef nonnull @.str.32, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %if.end10.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then8 ], [ %call.i48, %if.then27 ], [ 0, %if.end10.cleanup_crit_edge ], [ %call.i, %do.body ], [ %call.i48, %do.body15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_device_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %data.i.i = alloca [3 x i8], align 1
  %data.i.i.i86 = alloca [3 x i8], align 1
  %value.i.i87 = alloca i8, align 1
  %data.i.i.i = alloca [3 x i8], align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr4 = getelementptr i8, ptr %1, i32 -456
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10356993, i32 %3)
  %cmp = icmp eq i32 %3, 10356993
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr i8, ptr %1, i32 -32
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %output_size_y = getelementptr inbounds %struct.ov8865_mode, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output_size_y, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %add = add i32 %7, -8
  %sub = add i32 %add, %9
  %exposure = getelementptr i8, ptr %1, i32 -4
  %10 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %minimum, align 8
  %conv = sext i32 %sub to i64
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 18
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %17 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val11, align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %sub)
  %conv15 = sext i32 %19 to i64
  %call = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %11, i64 noundef %13, i64 noundef %conv, i64 noundef %16, i64 noundef %conv15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr4, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 18
  %22 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp eq i32 %23, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 15
  %24 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end18_crit_edge

pm_runtime_suspended.exit.if.end18_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %pm_runtime_suspended.exit.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %26, label %if.end18.cleanup_crit_edge [
    i32 9963793, label %sw.bb
    i32 10356995, label %sw.bb24
    i32 9963790, label %sw.bb30
    i32 9963791, label %sw.bb33
    i32 9963796, label %sw.bb36
    i32 9963797, label %sw.bb41
    i32 10422531, label %sw.bb47
    i32 10356993, label %sw.bb50
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end18
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %28 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val20, align 4
  %call21 = tail call fastcc i32 @ov8865_exposure_configure(ptr noundef %add.ptr4, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end18
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %30 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val25, align 4
  %call26 = tail call fastcc i32 @ov8865_analog_gain_configure(ptr noundef %add.ptr4, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %sw.bb24.sw.epilog_crit_edge, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %val31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val31, align 4
  %call32 = tail call fastcc i32 @ov8865_red_balance_configure(ptr noundef %add.ptr4, i32 noundef %33)
  br label %cleanup

sw.bb33:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val34, align 4
  %call35 = tail call fastcc i32 @ov8865_blue_balance_configure(ptr noundef %add.ptr4, i32 noundef %35)
  br label %cleanup

sw.bb36:                                          ; preds = %if.end18
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val37, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #8
  %38 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i = call fastcc i32 @ov8865_read(ptr noundef %add.ptr4, i16 noundef zeroext 14369, ptr noundef nonnull %value.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb36.ov8865_flip_horz_configure.exit_crit_edge

sw.bb36.ov8865_flip_horz_configure.exit_crit_edge: ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_flip_horz_configure.exit

if.end.i.i:                                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool38.not = icmp eq i32 %37, 0
  %spec.select.i = select i1 %tobool38.not, i8 0, i8 6
  %39 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %value.i.i, align 1
  %and.i.i = and i8 %40, -7
  %or11.i.i = or i8 %and.i.i, %spec.select.i
  store i8 %or11.i.i, ptr %value.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i) #8
  %41 = getelementptr inbounds [3 x i8], ptr %data.i.i.i, i32 0, i32 1
  %42 = getelementptr inbounds [3 x i8], ptr %data.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 56, ptr %data.i.i.i, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 33, ptr %41, align 1
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or11.i.i, ptr %42, align 1
  %i2c_client.i.i.i = getelementptr i8, ptr %1, i32 -452
  %46 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %data.i.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end.i.i.ov8865_write.exit.i.i_crit_edge

if.end.i.i.ov8865_write.exit.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_s_ctrl, %if.then9.i.i.i)) #8
          to label %ov8865_write.exit.i.i [label %if.then9.i.i.i], !srcloc !220

if.then9.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.29, i32 noundef 14369) #8
  br label %ov8865_write.exit.i.i

ov8865_write.exit.i.i:                            ; preds = %if.then9.i.i.i, %do.body.i.i.i, %if.end.i.i.ov8865_write.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i.i.i, %if.then9.i.i.i ], [ 0, %if.end.i.i.ov8865_write.exit.i.i_crit_edge ], [ %call.i.i.i.i, %do.body.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i) #8
  br label %ov8865_flip_horz_configure.exit

ov8865_flip_horz_configure.exit:                  ; preds = %ov8865_write.exit.i.i, %sw.bb36.ov8865_flip_horz_configure.exit_crit_edge
  %retval.0.i.i = phi i32 [ %retval.0.i.i.i, %ov8865_write.exit.i.i ], [ %call.i.i, %sw.bb36.ov8865_flip_horz_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #8
  br label %cleanup

sw.bb41:                                          ; preds = %if.end18
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val42, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i87) #8
  %50 = ptrtoint ptr %value.i.i87 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %value.i.i87, align 1
  %call.i.i88 = call fastcc i32 @ov8865_read(ptr noundef %add.ptr4, i16 noundef zeroext 14368, ptr noundef nonnull %value.i.i87) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88)
  %tobool.not.i.i89 = icmp eq i32 %call.i.i88, 0
  br i1 %tobool.not.i.i89, label %if.end.i.i96, label %sw.bb41.ov8865_flip_vert_configure.exit_crit_edge

sw.bb41.ov8865_flip_vert_configure.exit_crit_edge: ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_flip_vert_configure.exit

if.end.i.i96:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool43.not = icmp eq i32 %49, 0
  %spec.select.i90 = select i1 %tobool43.not, i8 0, i8 6
  %51 = ptrtoint ptr %value.i.i87 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %value.i.i87, align 1
  %and.i.i91 = and i8 %52, -7
  %or11.i.i92 = or i8 %and.i.i91, %spec.select.i90
  store i8 %or11.i.i92, ptr %value.i.i87, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i86) #8
  %53 = getelementptr inbounds [3 x i8], ptr %data.i.i.i86, i32 0, i32 1
  %54 = getelementptr inbounds [3 x i8], ptr %data.i.i.i86, i32 0, i32 2
  %55 = ptrtoint ptr %data.i.i.i86 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 56, ptr %data.i.i.i86, align 1
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 32, ptr %53, align 1
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %or11.i.i92, ptr %54, align 1
  %i2c_client.i.i.i93 = getelementptr i8, ptr %1, i32 -452
  %58 = ptrtoint ptr %i2c_client.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c_client.i.i.i93, align 4
  %call.i.i.i.i94 = call i32 @i2c_transfer_buffer_flags(ptr noundef %59, ptr noundef nonnull %data.i.i.i86, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i94)
  %cmp.i.i.i95 = icmp slt i32 %call.i.i.i.i94, 0
  br i1 %cmp.i.i.i95, label %do.body.i.i.i97, label %if.end.i.i96.ov8865_write.exit.i.i101_crit_edge

if.end.i.i96.ov8865_write.exit.i.i101_crit_edge:  ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit.i.i101

do.body.i.i.i97:                                  ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_s_ctrl, %if.then9.i.i.i99)) #8
          to label %ov8865_write.exit.i.i101 [label %if.then9.i.i.i99], !srcloc !220

if.then9.i.i.i99:                                 ; preds = %do.body.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i.i98 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i.i98, ptr noundef nonnull @.str.29, i32 noundef 14368) #8
  br label %ov8865_write.exit.i.i101

ov8865_write.exit.i.i101:                         ; preds = %if.then9.i.i.i99, %do.body.i.i.i97, %if.end.i.i96.ov8865_write.exit.i.i101_crit_edge
  %retval.0.i.i.i100 = phi i32 [ %call.i.i.i.i94, %if.then9.i.i.i99 ], [ 0, %if.end.i.i96.ov8865_write.exit.i.i101_crit_edge ], [ %call.i.i.i.i94, %do.body.i.i.i97 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i86) #8
  br label %ov8865_flip_vert_configure.exit

ov8865_flip_vert_configure.exit:                  ; preds = %ov8865_write.exit.i.i101, %sw.bb41.ov8865_flip_vert_configure.exit_crit_edge
  %retval.0.i.i102 = phi i32 [ %retval.0.i.i.i100, %ov8865_write.exit.i.i101 ], [ %call.i.i88, %sw.bb41.ov8865_flip_vert_configure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i87) #8
  br label %cleanup

sw.bb47:                                          ; preds = %if.end18
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %cmp.i103 = icmp ugt i32 %61, 5
  br i1 %cmp.i103, label %sw.bb47.cleanup_crit_edge, label %if.end.i

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb47
  %arrayidx.i = getelementptr [6 x i8], ptr @ov8865_test_pattern_bits, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %64 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %65 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 94, ptr %data.i.i, align 1
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %64, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %63, ptr %65, align 1
  %i2c_client.i.i = getelementptr i8, ptr %1, i32 -452
  %69 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %70, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.ov8865_write.exit.i_crit_edge

if.end.i.ov8865_write.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_s_ctrl, %if.then9.i.i)) #8
          to label %ov8865_write.exit.i [label %if.then9.i.i], !srcloc !220

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef 24064) #8
  br label %ov8865_write.exit.i

ov8865_write.exit.i:                              ; preds = %if.then9.i.i, %do.body.i.i, %if.end.i.ov8865_write.exit.i_crit_edge
  %retval.0.i.i104 = phi i32 [ %call.i.i.i, %if.then9.i.i ], [ 0, %if.end.i.ov8865_write.exit.i_crit_edge ], [ %call.i.i.i, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %cleanup

sw.bb50:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %71 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val51, align 4
  %call52 = tail call fastcc i32 @ov8865_vts_configure(ptr noundef %add.ptr4, i32 noundef %72)
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb24.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb50, %ov8865_write.exit.i, %sw.bb47.cleanup_crit_edge, %ov8865_flip_vert_configure.exit, %ov8865_flip_horz_configure.exit, %sw.bb33, %sw.bb30, %sw.bb24.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %sw.bb50 ], [ %retval.0.i.i102, %ov8865_flip_vert_configure.exit ], [ %retval.0.i.i, %ov8865_flip_horz_configure.exit ], [ %call35, %sw.bb33 ], [ %call32, %sw.bb30 ], [ 0, %sw.epilog ], [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ %call21, %sw.bb.cleanup_crit_edge ], [ %call26, %sw.bb24.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %retval.0.i.i104, %ov8865_write.exit.i ], [ -22, %sw.bb47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_exposure_configure(ptr nocapture noundef readonly %sensor, i32 noundef %exposure) unnamed_addr #2 align 64 {
entry:
  %data.i28 = alloca [3 x i8], align 1
  %data.i19 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %exposure, 4
  %and = lshr i32 %mul, 16
  %0 = trunc i32 %and to i8
  %conv = and i8 %0, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 53, ptr %data.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %2, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_exposure_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 13568) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %and1 = lshr i32 %mul, 8
  %conv3 = trunc i32 %and1 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i19) #8
  %8 = getelementptr inbounds [3 x i8], ptr %data.i19, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %data.i19, i32 0, i32 2
  %10 = ptrtoint ptr %data.i19 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 53, ptr %data.i19, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %9, align 1
  %13 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i21 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %data.i19, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.i22 = icmp slt i32 %call.i.i21, 0
  br i1 %cmp.i22, label %do.body.i23, label %if.end7

do.body.i23:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_exposure_configure, %if.then9.i25)) #8
          to label %ov8865_write.exit27 [label %if.then9.i25], !srcloc !220

if.then9.i25:                                     ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i24 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i24, ptr noundef nonnull @.str.29, i32 noundef 13569) #8
  br label %ov8865_write.exit27

ov8865_write.exit27:                              ; preds = %if.then9.i25, %do.body.i23
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i19) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i19) #8
  %conv9 = trunc i32 %mul to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i28) #8
  %15 = getelementptr inbounds [3 x i8], ptr %data.i28, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i8], ptr %data.i28, i32 0, i32 2
  %17 = ptrtoint ptr %data.i28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 53, ptr %data.i28, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %15, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9, ptr %16, align 1
  %20 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i30 = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %data.i28, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp.i31 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp.i31, label %do.body.i32, label %if.end7.ov8865_write.exit36_crit_edge

if.end7.ov8865_write.exit36_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit36

do.body.i32:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_exposure_configure, %if.then9.i34)) #8
          to label %ov8865_write.exit36 [label %if.then9.i34], !srcloc !220

if.then9.i34:                                     ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i33 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i33, ptr noundef nonnull @.str.29, i32 noundef 13570) #8
  br label %ov8865_write.exit36

ov8865_write.exit36:                              ; preds = %if.then9.i34, %do.body.i32, %if.end7.ov8865_write.exit36_crit_edge
  %retval.0.i35 = phi i32 [ %call.i.i30, %if.then9.i34 ], [ 0, %if.end7.ov8865_write.exit36_crit_edge ], [ %call.i.i30, %do.body.i32 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i28) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit36, %ov8865_write.exit27, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i35, %ov8865_write.exit36 ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i21, %ov8865_write.exit27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_analog_gain_configure(ptr nocapture noundef readonly %sensor, i32 noundef %gain) unnamed_addr #2 align 64 {
entry:
  %data.i7 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %gain, 8
  %0 = trunc i32 %and to i8
  %conv = and i8 %0, 31
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 53, ptr %data.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %1, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %2, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_analog_gain_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 13576) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %conv2 = trunc i32 %gain to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i7) #8
  %8 = getelementptr inbounds [3 x i8], ptr %data.i7, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %data.i7, i32 0, i32 2
  %10 = ptrtoint ptr %data.i7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 53, ptr %data.i7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 9, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2, ptr %9, align 1
  %13 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %data.i7, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i10 = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i10, label %do.body.i11, label %if.end.ov8865_write.exit15_crit_edge

if.end.ov8865_write.exit15_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit15

do.body.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_analog_gain_configure, %if.then9.i13)) #8
          to label %ov8865_write.exit15 [label %if.then9.i13], !srcloc !220

if.then9.i13:                                     ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i12 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i12, ptr noundef nonnull @.str.29, i32 noundef 13577) #8
  br label %ov8865_write.exit15

ov8865_write.exit15:                              ; preds = %if.then9.i13, %do.body.i11, %if.end.ov8865_write.exit15_crit_edge
  %retval.0.i14 = phi i32 [ %call.i.i9, %if.then9.i13 ], [ 0, %if.end.ov8865_write.exit15_crit_edge ], [ %call.i.i9, %do.body.i11 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i7) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit15, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i14, %ov8865_write.exit15 ], [ %call.i.i, %ov8865_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_red_balance_configure(ptr nocapture noundef readonly %sensor, i32 noundef %red_balance) unnamed_addr #2 align 64 {
entry:
  %data.i7 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %red_balance, 6
  %conv = trunc i32 %and to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 80, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %1, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_red_balance_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 20504) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %7 = trunc i32 %red_balance to i8
  %conv2 = and i8 %7, 63
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i7) #8
  %8 = getelementptr inbounds [3 x i8], ptr %data.i7, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %data.i7, i32 0, i32 2
  %10 = ptrtoint ptr %data.i7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 80, ptr %data.i7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 25, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2, ptr %9, align 1
  %13 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %data.i7, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i10 = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i10, label %do.body.i11, label %if.end.ov8865_write.exit15_crit_edge

if.end.ov8865_write.exit15_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit15

do.body.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_red_balance_configure, %if.then9.i13)) #8
          to label %ov8865_write.exit15 [label %if.then9.i13], !srcloc !220

if.then9.i13:                                     ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i12 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i12, ptr noundef nonnull @.str.29, i32 noundef 20505) #8
  br label %ov8865_write.exit15

ov8865_write.exit15:                              ; preds = %if.then9.i13, %do.body.i11, %if.end.ov8865_write.exit15_crit_edge
  %retval.0.i14 = phi i32 [ %call.i.i9, %if.then9.i13 ], [ 0, %if.end.ov8865_write.exit15_crit_edge ], [ %call.i.i9, %do.body.i11 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i7) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit15, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i14, %ov8865_write.exit15 ], [ %call.i.i, %ov8865_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_blue_balance_configure(ptr nocapture noundef readonly %sensor, i32 noundef %blue_balance) unnamed_addr #2 align 64 {
entry:
  %data.i7 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %blue_balance, 6
  %conv = trunc i32 %and to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 80, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 28, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %1, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_blue_balance_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 20508) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %7 = trunc i32 %blue_balance to i8
  %conv2 = and i8 %7, 63
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i7) #8
  %8 = getelementptr inbounds [3 x i8], ptr %data.i7, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %data.i7, i32 0, i32 2
  %10 = ptrtoint ptr %data.i7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 80, ptr %data.i7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 29, ptr %8, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv2, ptr %9, align 1
  %13 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %data.i7, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp.i10 = icmp slt i32 %call.i.i9, 0
  br i1 %cmp.i10, label %do.body.i11, label %if.end.ov8865_write.exit15_crit_edge

if.end.ov8865_write.exit15_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit15

do.body.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_blue_balance_configure, %if.then9.i13)) #8
          to label %ov8865_write.exit15 [label %if.then9.i13], !srcloc !220

if.then9.i13:                                     ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i12 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i12, ptr noundef nonnull @.str.29, i32 noundef 20509) #8
  br label %ov8865_write.exit15

ov8865_write.exit15:                              ; preds = %if.then9.i13, %do.body.i11, %if.end.ov8865_write.exit15_crit_edge
  %retval.0.i14 = phi i32 [ %call.i.i9, %if.then9.i13 ], [ 0, %if.end.ov8865_write.exit15_crit_edge ], [ %call.i.i9, %do.body.i11 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i7) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit15, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i14, %ov8865_write.exit15 ], [ %call.i.i, %ov8865_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_vts_configure(ptr nocapture noundef readonly %sensor, i32 noundef %vblank) unnamed_addr #2 align 64 {
entry:
  %data.i12 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %output_size_y = getelementptr inbounds %struct.ov8865_mode, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %output_size_y to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_size_y, align 4
  %add = add i32 %3, %vblank
  %and = lshr i32 %add, 8
  %4 = trunc i32 %and to i8
  %conv2 = and i8 %4, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %5 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 56, ptr %data.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 14, ptr %5, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %6, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_vts_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 14350) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  %conv5 = trunc i32 %add to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i12) #8
  %12 = getelementptr inbounds [3 x i8], ptr %data.i12, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i12, i32 0, i32 2
  %14 = ptrtoint ptr %data.i12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 56, ptr %data.i12, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 15, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %13, align 1
  %17 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i14 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i12, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %cmp.i15 = icmp slt i32 %call.i.i14, 0
  br i1 %cmp.i15, label %do.body.i16, label %if.end.ov8865_write.exit20_crit_edge

if.end.ov8865_write.exit20_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit20

do.body.i16:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_vts_configure, %if.then9.i18)) #8
          to label %ov8865_write.exit20 [label %if.then9.i18], !srcloc !220

if.then9.i18:                                     ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i17 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i17, ptr noundef nonnull @.str.29, i32 noundef 14351) #8
  br label %ov8865_write.exit20

ov8865_write.exit20:                              ; preds = %if.then9.i18, %do.body.i16, %if.end.ov8865_write.exit20_crit_edge
  %retval.0.i19 = phi i32 [ %call.i.i14, %if.then9.i18 ], [ 0, %if.end.ov8865_write.exit20_crit_edge ], [ %call.i.i14, %do.body.i16 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i12) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit20, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i19, %ov8865_write.exit20 ], [ %call.i.i, %ov8865_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %streaming = getelementptr i8, ptr %1, i32 328
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %4 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %data.i.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %5, align 1
  %i2c_client.i.i = getelementptr i8, ptr %1, i32 -100
  %9 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %ov8865_sw_standby.exit.thread

ov8865_sw_standby.exit.thread:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %if.end8

do.body.i.i:                                      ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_suspend, %if.then9.i.i)) #8
          to label %ov8865_sw_standby.exit [label %if.then9.i.i], !srcloc !220

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef 256) #8
  br label %ov8865_sw_standby.exit

ov8865_sw_standby.exit:                           ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %complete

if.end8:                                          ; preds = %ov8865_sw_standby.exit.thread, %entry.if.end8_crit_edge
  %powerdown29.i = getelementptr i8, ptr %1, i32 -92
  %11 = ptrtoint ptr %powerdown29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %powerdown29.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %12, i32 noundef 1) #8
  %reset30.i = getelementptr i8, ptr %1, i32 -96
  %13 = ptrtoint ptr %reset30.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset30.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 1) #8
  %extclk31.i = getelementptr i8, ptr %1, i32 -68
  %15 = ptrtoint ptr %extclk31.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extclk31.i, align 4
  call void @clk_disable(ptr noundef %16) #8
  call void @clk_unprepare(ptr noundef %16) #8
  %dvdd32.i = getelementptr i8, ptr %1, i32 -84
  %17 = ptrtoint ptr %dvdd32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dvdd32.i, align 4
  %call33.i = call i32 @regulator_disable(ptr noundef %18) #8
  %avdd34.i = getelementptr i8, ptr %1, i32 -88
  %19 = ptrtoint ptr %avdd34.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %avdd34.i, align 4
  %call35.i = call i32 @regulator_disable(ptr noundef %20) #8
  %dovdd36.i = getelementptr i8, ptr %1, i32 -80
  %21 = ptrtoint ptr %dovdd36.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dovdd36.i, align 4
  %call37.i = call i32 @regulator_disable(ptr noundef %22) #8
  br label %complete

complete:                                         ; preds = %if.end8, %ov8865_sw_standby.exit
  %ret.0 = phi i32 [ %call.i.i.i, %ov8865_sw_standby.exit ], [ 0, %if.end8 ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov8865_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -104
  %mutex = getelementptr i8, ptr %1, i32 228
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call5 = tail call fastcc i32 @ov8865_sensor_power(ptr noundef %add.ptr3, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.complete_crit_edge

entry.complete_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.end:                                           ; preds = %entry
  %call6 = tail call fastcc i32 @ov8865_sensor_init(ptr noundef %add.ptr3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.error_power_crit_edge

if.end.error_power_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power

if.end9:                                          ; preds = %if.end
  %handler = getelementptr i8, ptr %1, i32 352
  %call10 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.error_power_crit_edge

if.end9.error_power_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power

if.end13:                                         ; preds = %if.end9
  %streaming = getelementptr i8, ptr %1, i32 328
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool14.not = icmp eq i8 %3, 0
  br i1 %tobool14.not, label %if.end13.complete_crit_edge, label %if.then15

if.end13.complete_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %4 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %data.i.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %5, align 1
  %i2c_client.i.i = getelementptr i8, ptr %1, i32 -100
  %9 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %ov8865_sw_standby.exit.thread

ov8865_sw_standby.exit.thread:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %complete

do.body.i.i:                                      ; preds = %if.then15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_resume, %if.then9.i.i)) #8
          to label %ov8865_sw_standby.exit [label %if.then9.i.i], !srcloc !220

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef 256) #8
  br label %ov8865_sw_standby.exit

ov8865_sw_standby.exit:                           ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %error_power

error_power:                                      ; preds = %ov8865_sw_standby.exit, %if.end9.error_power_crit_edge, %if.end.error_power_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.error_power_crit_edge ], [ %call10, %if.end9.error_power_crit_edge ], [ %call.i.i.i, %ov8865_sw_standby.exit ]
  %powerdown29.i = getelementptr i8, ptr %1, i32 -92
  %11 = ptrtoint ptr %powerdown29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %powerdown29.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %12, i32 noundef 1) #8
  %reset30.i = getelementptr i8, ptr %1, i32 -96
  %13 = ptrtoint ptr %reset30.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset30.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 1) #8
  %extclk31.i = getelementptr i8, ptr %1, i32 -68
  %15 = ptrtoint ptr %extclk31.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extclk31.i, align 4
  call void @clk_disable(ptr noundef %16) #8
  call void @clk_unprepare(ptr noundef %16) #8
  %dvdd32.i = getelementptr i8, ptr %1, i32 -84
  %17 = ptrtoint ptr %dvdd32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dvdd32.i, align 4
  %call33.i = call i32 @regulator_disable(ptr noundef %18) #8
  %avdd34.i = getelementptr i8, ptr %1, i32 -88
  %19 = ptrtoint ptr %avdd34.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %avdd34.i, align 4
  %call35.i = call i32 @regulator_disable(ptr noundef %20) #8
  %dovdd36.i = getelementptr i8, ptr %1, i32 -80
  %21 = ptrtoint ptr %dovdd36.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dovdd36.i, align 4
  %call37.i = call i32 @regulator_disable(ptr noundef %22) #8
  br label %complete

complete:                                         ; preds = %error_power, %ov8865_sw_standby.exit.thread, %if.end13.complete_crit_edge, %entry.complete_crit_edge
  %ret.1 = phi i32 [ %call5, %entry.complete_crit_edge ], [ %ret.0, %error_power ], [ 0, %if.end13.complete_crit_edge ], [ 0, %ov8865_sw_standby.exit.thread ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_sensor_power(ptr nocapture noundef readonly %sensor, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %reset = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #8
  %powerdown = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 3
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerdown, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #8
  %dovdd = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 6
  %4 = ptrtoint ptr %dovdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dovdd, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %avdd = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 4
  %8 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %avdd, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.48) #11
  br label %disable_dovdd

if.end10:                                         ; preds = %if.end
  %dvdd = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 5
  %12 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dvdd, align 4
  %call11 = tail call i32 @regulator_enable(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.51) #11
  br label %disable_avdd

if.end18:                                         ; preds = %if.end10
  %extclk = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 9
  %16 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.do.end24_crit_edge

if.end18.do.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then3.i, %if.end18.do.end24_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end18.do.end24_crit_edge ]
  %18 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sensor, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.54) #11
  br label %disable_dvdd

if.end26:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %21, i32 noundef 0) #8
  %22 = ptrtoint ptr %powerdown to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %powerdown, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %powerdown29 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 3
  %24 = ptrtoint ptr %powerdown29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %powerdown29, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %25, i32 noundef 1) #8
  %reset30 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 2
  %26 = ptrtoint ptr %reset30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset30, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %27, i32 noundef 1) #8
  %extclk31 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 9
  %28 = ptrtoint ptr %extclk31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extclk31, align 4
  tail call void @clk_disable(ptr noundef %29) #8
  tail call void @clk_unprepare(ptr noundef %29) #8
  br label %disable_dvdd

disable_dvdd:                                     ; preds = %if.else, %do.end24
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end24 ], [ 0, %if.else ]
  %dvdd32 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 5
  %30 = ptrtoint ptr %dvdd32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dvdd32, align 4
  %call33 = tail call i32 @regulator_disable(ptr noundef %31) #8
  br label %disable_avdd

disable_avdd:                                     ; preds = %disable_dvdd, %do.end16
  %ret.1 = phi i32 [ %call11, %do.end16 ], [ %ret.0, %disable_dvdd ]
  %avdd34 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 4
  %32 = ptrtoint ptr %avdd34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %avdd34, align 4
  %call35 = tail call i32 @regulator_disable(ptr noundef %33) #8
  br label %disable_dovdd

disable_dovdd:                                    ; preds = %disable_avdd, %do.end8
  %ret.2 = phi i32 [ %call3, %do.end8 ], [ %ret.1, %disable_avdd ]
  %dovdd36 = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 6
  %34 = ptrtoint ptr %dovdd36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dovdd36, align 4
  %call37 = tail call i32 @regulator_disable(ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_dovdd, %if.end26, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %disable_dovdd ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_sensor_init(ptr noundef %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i.i119 = alloca [3 x i8], align 1
  %data.i.i110 = alloca [3 x i8], align 1
  %value.i = alloca i8, align 1
  %data.i.i102 = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %data.i.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %1, align 1
  %i2c_client.i.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end

do.body.i.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_sensor_init, %if.then9.i.i)) #8
          to label %do.end [label %if.then9.i.i], !srcloc !220

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef 259) #8
  br label %do.end

do.end:                                           ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i102) #8
  %7 = getelementptr inbounds [3 x i8], ptr %data.i.i102, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %data.i.i102, i32 0, i32 2
  %9 = ptrtoint ptr %data.i.i102 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %data.i.i102, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %8, align 1
  %12 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i104 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %data.i.i102, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i104)
  %cmp.i.i105 = icmp slt i32 %call.i.i.i104, 0
  br i1 %cmp.i.i105, label %do.body.i.i106, label %if.end8

do.body.i.i106:                                   ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_sensor_init, %if.then9.i.i108)) #8
          to label %do.end6 [label %if.then9.i.i108], !srcloc !220

if.then9.i.i108:                                  ; preds = %do.body.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i107 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i107, ptr noundef nonnull @.str.29, i32 noundef 256) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then9.i.i108, %do.body.i.i106
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i102) #8
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i102) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %value.i, align 1, !annotation !216
  %call.i = call fastcc i32 @ov8865_read(ptr noundef %sensor, i16 noundef zeroext 12298, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end8.do.end14_crit_edge, label %if.end.i

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

for.cond.i:                                       ; preds = %if.end.i
  %call.1.i = call fastcc i32 @ov8865_read(ptr noundef %sensor, i16 noundef zeroext 12299, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %for.cond.i.do.end14_crit_edge, label %if.end.1.i

for.cond.i.do.end14_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end.1.i:                                       ; preds = %for.cond.i
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %16)
  %cmp4.not.1.i = icmp eq i8 %16, -120
  br i1 %cmp4.not.1.i, label %for.cond.1.i, label %if.end.1.i.do.end.i_crit_edge

if.end.1.i.do.end.i_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.cond.1.i:                                     ; preds = %if.end.1.i
  %call.2.i = call fastcc i32 @ov8865_read(ptr noundef %sensor, i16 noundef zeroext 12300, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %for.cond.1.i.do.end14_crit_edge, label %if.end.2.i

for.cond.1.i.do.end14_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end.2.i:                                       ; preds = %for.cond.1.i
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %18)
  %cmp4.not.2.i = icmp eq i8 %18, 101
  br i1 %cmp4.not.2.i, label %if.end16, label %if.end.2.i.do.end.i_crit_edge

if.end.2.i.do.end.i_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i:                                         ; preds = %if.end8
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp4.not.i = icmp eq i8 %20, 0
  br i1 %cmp4.not.i, label %for.cond.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.2.i.do.end.i_crit_edge, %if.end.1.i.do.end.i_crit_edge
  %.lcssa23.i = phi i8 [ %20, %if.end.i.do.end.i_crit_edge ], [ %16, %if.end.1.i.do.end.i_crit_edge ], [ %18, %if.end.2.i.do.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ 0, %if.end.i.do.end.i_crit_edge ], [ 136, %if.end.1.i.do.end.i_crit_edge ], [ 101, %if.end.2.i.do.end.i_crit_edge ]
  %conv.i = zext i8 %.lcssa23.i to i32
  %21 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sensor, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.82, i32 noundef %conv.i, i32 noundef %.lcssa.i) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end.i, %for.cond.1.i.do.end14_crit_edge, %for.cond.i.do.end14_crit_edge, %if.end8.do.end14_crit_edge
  %retval.0.i.ph = phi i32 [ %call.2.i, %for.cond.1.i.do.end14_crit_edge ], [ %call.1.i, %for.cond.i.do.end14_crit_edge ], [ %call.i, %if.end8.do.end14_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end.2.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  %23 = getelementptr inbounds [3 x i8], ptr %data.i.i110, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %data.i.i110, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16
  %i.021.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ov8865_register_value, ptr @ov8865_init_sequence, i32 %i.021.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i, align 4
  %value.i112 = getelementptr %struct.ov8865_register_value, ptr @ov8865_init_sequence, i32 %i.021.i, i32 1
  %27 = ptrtoint ptr %value.i112 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %value.i112, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i110) #8
  %29 = lshr i16 %26, 8
  %conv1.i.i = trunc i16 %29 to i8
  %30 = ptrtoint ptr %data.i.i110 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv1.i.i, ptr %data.i.i110, align 1
  %conv3.i.i = trunc i16 %26 to i8
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv3.i.i, ptr %23, align 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %28, ptr %24, align 1
  %33 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i113 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %data.i.i110, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i113)
  %cmp.i.i114 = icmp slt i32 %call.i.i.i113, 0
  br i1 %cmp.i.i114, label %do.body.i.i115, label %if.end.i118

do.body.i.i115:                                   ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_sensor_init, %if.then9.i.i117)) #8
          to label %do.end22 [label %if.then9.i.i117], !srcloc !220

if.then9.i.i117:                                  ; preds = %do.body.i.i115
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.le.i = zext i16 %26 to i32
  %dev.i.i116 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i116, ptr noundef nonnull @.str.29, i32 noundef %conv.i.le.i) #8
  br label %do.end22

if.end.i118:                                      ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i110) #8
  %delay_ms.i = getelementptr %struct.ov8865_register_value, ptr @ov8865_init_sequence, i32 %i.021.i, i32 2
  %35 = ptrtoint ptr %delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool3.not.i = icmp eq i32 %36, 0
  br i1 %tobool3.not.i, label %if.end.i118.for.inc.i_crit_edge, label %if.then4.i

if.end.i118.for.inc.i_crit_edge:                  ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef %36) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.end.i118.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 124
  br i1 %exitcond.not.i, label %if.end24, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end22:                                         ; preds = %if.then9.i.i117, %do.body.i.i115
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i110) #8
  br label %cleanup.sink.split

if.end24:                                         ; preds = %for.inc.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i119) #8
  %37 = getelementptr inbounds [3 x i8], ptr %data.i.i119, i32 0, i32 1
  %38 = getelementptr inbounds [3 x i8], ptr %data.i.i119, i32 0, i32 2
  %39 = ptrtoint ptr %data.i.i119 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 48, ptr %data.i.i119, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 21, ptr %37, align 1
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %38, align 1
  %42 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i121 = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %data.i.i119, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i121)
  %cmp.i.i122 = icmp slt i32 %call.i.i.i121, 0
  br i1 %cmp.i.i122, label %do.body.i.i123, label %if.end32

do.body.i.i123:                                   ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_sensor_init, %if.then9.i.i125)) #8
          to label %do.end30 [label %if.then9.i.i125], !srcloc !220

if.then9.i.i125:                                  ; preds = %do.body.i.i123
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i124 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i124, ptr noundef nonnull @.str.29, i32 noundef 12309) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then9.i.i125, %do.body.i.i123
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i119) #8
  br label %cleanup.sink.split

if.end32:                                         ; preds = %if.end24
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i119) #8
  %call33 = call fastcc i32 @ov8865_mipi_configure(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %if.end32.cleanup.sink.split_crit_edge

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end40:                                         ; preds = %if.end32
  %call41 = call fastcc i32 @ov8865_isp_configure(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %if.end40.cleanup.sink.split_crit_edge

if.end40.cleanup.sink.split_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end48:                                         ; preds = %if.end40
  %call49 = call fastcc i32 @ov8865_black_level_configure(ptr noundef %sensor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %if.end48.cleanup.sink.split_crit_edge

if.end48.cleanup.sink.split_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end56:                                         ; preds = %if.end48
  %state = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 14
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state, align 4
  %mbus_code = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 14, i32 1
  %46 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mbus_code, align 4
  %call58 = call fastcc i32 @ov8865_state_configure(ptr noundef %sensor, ptr noundef %45, i32 noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end56.cleanup_crit_edge, label %if.end56.cleanup.sink.split_crit_edge

if.end56.cleanup.sink.split_crit_edge:            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end56.cleanup.sink.split_crit_edge, %if.end48.cleanup.sink.split_crit_edge, %if.end40.cleanup.sink.split_crit_edge, %if.end32.cleanup.sink.split_crit_edge, %do.end30, %do.end22, %do.end14, %do.end6, %do.end
  %.str.80.sink = phi ptr [ @.str.68, %do.end30 ], [ @.str.65, %do.end22 ], [ @.str.62, %do.end14 ], [ @.str.59, %do.end6 ], [ @.str.56, %do.end ], [ @.str.71, %if.end32.cleanup.sink.split_crit_edge ], [ @.str.74, %if.end40.cleanup.sink.split_crit_edge ], [ @.str.77, %if.end48.cleanup.sink.split_crit_edge ], [ @.str.80, %if.end56.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i.i121, %do.end30 ], [ %call.i.i.i113, %do.end22 ], [ %retval.0.i.ph, %do.end14 ], [ %call.i.i.i104, %do.end6 ], [ %call.i.i.i, %do.end ], [ %call33, %if.end32.cleanup.sink.split_crit_edge ], [ %call41, %if.end40.cleanup.sink.split_crit_edge ], [ %call49, %if.end48.cleanup.sink.split_crit_edge ], [ %call58, %if.end56.cleanup.sink.split_crit_edge ]
  %48 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sensor, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull %.str.80.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end56.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_mipi_configure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i74 = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  %value.i = alloca i8, align 1
  %data.i64 = alloca [3 x i8], align 1
  %data.i55 = alloca [3 x i8], align 1
  %data.i46 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_data_lanes = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 10, i32 2, i32 2, i32 3
  %0 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_data_lanes, align 1
  %sub = shl i8 %1, 5
  %or1 = add i8 %sub, -14
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %2 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 48, ptr %data.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or1, ptr %3, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mipi_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 12312) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i46) #8
  %9 = getelementptr inbounds [3 x i8], ptr %data.i46, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i8], ptr %data.i46, i32 0, i32 2
  %11 = ptrtoint ptr %data.i46 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 48, ptr %data.i46, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 34, ptr %9, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %10, align 1
  %14 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i48 = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %data.i46, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %cmp.i49 = icmp slt i32 %call.i.i48, 0
  br i1 %cmp.i49, label %do.body.i50, label %if.end6

do.body.i50:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mipi_configure, %if.then9.i52)) #8
          to label %ov8865_write.exit54 [label %if.then9.i52], !srcloc !220

if.then9.i52:                                     ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i51 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i51, ptr noundef nonnull @.str.29, i32 noundef 12322) #8
  br label %ov8865_write.exit54

ov8865_write.exit54:                              ; preds = %if.then9.i52, %do.body.i50
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i46) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i46) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %if.then8, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i55) #8
  %16 = getelementptr inbounds [3 x i8], ptr %data.i55, i32 0, i32 1
  %17 = getelementptr inbounds [3 x i8], ptr %data.i55, i32 0, i32 2
  %18 = ptrtoint ptr %data.i55 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 72, ptr %data.i55, align 1
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 80, ptr %16, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %17, align 1
  %21 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i57 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %data.i55, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %cmp.i58 = icmp slt i32 %call.i.i57, 0
  br i1 %cmp.i58, label %do.body.i59, label %if.end13

do.body.i59:                                      ; preds = %if.then8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mipi_configure, %if.then9.i61)) #8
          to label %ov8865_write.exit63 [label %if.then9.i61], !srcloc !220

if.then9.i61:                                     ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i60 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i60, ptr noundef nonnull @.str.29, i32 noundef 18512) #8
  br label %ov8865_write.exit63

ov8865_write.exit63:                              ; preds = %if.then9.i61, %do.body.i59
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i55) #8
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i55) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp14 = icmp ugt i8 %1, 3
  br i1 %cmp14, label %if.then16, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i64) #8
  %23 = getelementptr inbounds [3 x i8], ptr %data.i64, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i8], ptr %data.i64, i32 0, i32 2
  %25 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 72, ptr %data.i64, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 81, ptr %23, align 1
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 50, ptr %24, align 1
  %28 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i66 = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %data.i64, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %cmp.i67 = icmp slt i32 %call.i.i66, 0
  br i1 %cmp.i67, label %do.body.i68, label %ov8865_write.exit72.thread

ov8865_write.exit72.thread:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i64) #8
  br label %if.end21

do.body.i68:                                      ; preds = %if.then16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mipi_configure, %if.then9.i70)) #8
          to label %ov8865_write.exit72 [label %if.then9.i70], !srcloc !220

if.then9.i70:                                     ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i69 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i69, ptr noundef nonnull @.str.29, i32 noundef 18513) #8
  br label %ov8865_write.exit72

ov8865_write.exit72:                              ; preds = %if.then9.i70, %do.body.i68
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i64) #8
  br label %cleanup

if.end21:                                         ; preds = %ov8865_write.exit72.thread, %if.end13.if.end21_crit_edge, %if.end6.if.end21_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %value.i, align 1
  %call.i = call fastcc i32 @ov8865_read(ptr noundef %sensor, i16 noundef zeroext 12339, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ov8865_update_bits.exit.thread

ov8865_update_bits.exit.thread:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end21
  %31 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %value.i, align 1
  %or11.i = or i8 %32, 32
  store i8 %or11.i, ptr %value.i, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %33 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 48, ptr %data.i.i, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 51, ptr %33, align 1
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %or11.i, ptr %34, align 1
  %38 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end25

do.body.i.i:                                      ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mipi_configure, %if.then9.i.i)) #8
          to label %ov8865_update_bits.exit [label %if.then9.i.i], !srcloc !220

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef 12339) #8
  br label %ov8865_update_bits.exit

ov8865_update_bits.exit:                          ; preds = %if.then9.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i74) #8
  %40 = getelementptr inbounds [3 x i8], ptr %data.i74, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %data.i74, i32 0, i32 2
  %42 = ptrtoint ptr %data.i74 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 72, ptr %data.i74, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 55, ptr %40, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 22, ptr %41, align 1
  %45 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i76 = call i32 @i2c_transfer_buffer_flags(ptr noundef %46, ptr noundef nonnull %data.i74, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp.i77 = icmp slt i32 %call.i.i76, 0
  br i1 %cmp.i77, label %do.body.i78, label %if.end25.ov8865_write.exit82_crit_edge

if.end25.ov8865_write.exit82_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit82

do.body.i78:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_mipi_configure, %if.then9.i80)) #8
          to label %ov8865_write.exit82 [label %if.then9.i80], !srcloc !220

if.then9.i80:                                     ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i79 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i79, ptr noundef nonnull @.str.29, i32 noundef 18487) #8
  br label %ov8865_write.exit82

ov8865_write.exit82:                              ; preds = %if.then9.i80, %do.body.i78, %if.end25.ov8865_write.exit82_crit_edge
  %retval.0.i81 = phi i32 [ %call.i.i76, %if.then9.i80 ], [ 0, %if.end25.ov8865_write.exit82_crit_edge ], [ %call.i.i76, %do.body.i78 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i74) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit82, %ov8865_update_bits.exit, %ov8865_update_bits.exit.thread, %ov8865_write.exit72, %ov8865_write.exit63, %ov8865_write.exit54, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i81, %ov8865_write.exit82 ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i48, %ov8865_write.exit54 ], [ %call.i.i57, %ov8865_write.exit63 ], [ %call.i.i66, %ov8865_write.exit72 ], [ %call.i.i.i, %ov8865_update_bits.exit ], [ %call.i, %ov8865_update_bits.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_isp_configure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i4 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 80, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 22, ptr %1, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_isp_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 20480) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i4) #8
  %7 = getelementptr inbounds [3 x i8], ptr %data.i4, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %data.i4, i32 0, i32 2
  %9 = ptrtoint ptr %data.i4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 80, ptr %data.i4, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %8, align 1
  %12 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %data.i4, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %cmp.i7 = icmp slt i32 %call.i.i6, 0
  br i1 %cmp.i7, label %do.body.i8, label %if.end.ov8865_write.exit12_crit_edge

if.end.ov8865_write.exit12_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit12

do.body.i8:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_isp_configure, %if.then9.i10)) #8
          to label %ov8865_write.exit12 [label %if.then9.i10], !srcloc !220

if.then9.i10:                                     ; preds = %do.body.i8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i9 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i9, ptr noundef nonnull @.str.29, i32 noundef 20481) #8
  br label %ov8865_write.exit12

ov8865_write.exit12:                              ; preds = %if.then9.i10, %do.body.i8, %if.end.ov8865_write.exit12_crit_edge
  %retval.0.i11 = phi i32 [ %call.i.i6, %if.then9.i10 ], [ 0, %if.end.ov8865_write.exit12_crit_edge ], [ %call.i.i6, %do.body.i8 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i4) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit12, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i11, %ov8865_write.exit12 ], [ %call.i.i, %ov8865_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov8865_black_level_configure(ptr nocapture noundef readonly %sensor) unnamed_addr #2 align 64 {
entry:
  %data.i36 = alloca [3 x i8], align 1
  %data.i27 = alloca [3 x i8], align 1
  %data.i18 = alloca [3 x i8], align 1
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #8
  %0 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %data.i, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -15, ptr %1, align 1
  %i2c_client.i = getelementptr inbounds %struct.ov8865_sensor, ptr %sensor, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %data.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_black_level_configure, %if.then9.i)) #8
          to label %ov8865_write.exit [label %if.then9.i], !srcloc !220

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 16384) #8
  br label %ov8865_write.exit

ov8865_write.exit:                                ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i18) #8
  %7 = getelementptr inbounds [3 x i8], ptr %data.i18, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %data.i18, i32 0, i32 2
  %9 = ptrtoint ptr %data.i18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %data.i18, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 13, ptr %7, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %8, align 1
  %12 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i20 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %data.i18, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp.i21 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp.i21, label %do.body.i22, label %if.end4

do.body.i22:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_black_level_configure, %if.then9.i24)) #8
          to label %ov8865_write.exit26 [label %if.then9.i24], !srcloc !220

if.then9.i24:                                     ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i23 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i23, ptr noundef nonnull @.str.29, i32 noundef 16397) #8
  br label %ov8865_write.exit26

ov8865_write.exit26:                              ; preds = %if.then9.i24, %do.body.i22
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i18) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i18) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i27) #8
  %14 = getelementptr inbounds [3 x i8], ptr %data.i27, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %data.i27, i32 0, i32 2
  %16 = ptrtoint ptr %data.i27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %data.i27, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 31, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %15, align 1
  %19 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i29 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %data.i27, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i30, label %do.body.i31, label %if.end8

do.body.i31:                                      ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_black_level_configure, %if.then9.i33)) #8
          to label %ov8865_write.exit35 [label %if.then9.i33], !srcloc !220

if.then9.i33:                                     ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i32 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i32, ptr noundef nonnull @.str.29, i32 noundef 16415) #8
  br label %ov8865_write.exit35

ov8865_write.exit35:                              ; preds = %if.then9.i33, %do.body.i31
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i27) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i27) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i36) #8
  %21 = getelementptr inbounds [3 x i8], ptr %data.i36, i32 0, i32 1
  %22 = getelementptr inbounds [3 x i8], ptr %data.i36, i32 0, i32 2
  %23 = ptrtoint ptr %data.i36 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 64, ptr %data.i36, align 1
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 52, ptr %21, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 63, ptr %22, align 1
  %26 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i38 = call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef nonnull %data.i36, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp.i39 = icmp slt i32 %call.i.i38, 0
  br i1 %cmp.i39, label %do.body.i40, label %if.end8.ov8865_write.exit44_crit_edge

if.end8.ov8865_write.exit44_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ov8865_write.exit44

do.body.i40:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ov8865_write.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ov8865_black_level_configure, %if.then9.i42)) #8
          to label %ov8865_write.exit44 [label %if.then9.i42], !srcloc !220

if.then9.i42:                                     ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i41 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ov8865_write.__UNIQUE_ID_ddebug295, ptr noundef %dev.i41, ptr noundef nonnull @.str.29, i32 noundef 16436) #8
  br label %ov8865_write.exit44

ov8865_write.exit44:                              ; preds = %if.then9.i42, %do.body.i40, %if.end8.ov8865_write.exit44_crit_edge
  %retval.0.i43 = phi i32 [ %call.i.i38, %if.then9.i42 ], [ 0, %if.end8.ov8865_write.exit44_crit_edge ], [ %call.i.i38, %do.body.i40 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i36) #8
  br label %cleanup

cleanup:                                          ; preds = %ov8865_write.exit44, %ov8865_write.exit35, %ov8865_write.exit26, %ov8865_write.exit
  %retval.0 = phi i32 [ %retval.0.i43, %ov8865_write.exit44 ], [ %call.i.i, %ov8865_write.exit ], [ %call.i.i20, %ov8865_write.exit26 ], [ %call.i.i29, %ov8865_write.exit35 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @__initcall__kmod_ov8865__301_3165_ov8865_driver_init6, !1, !"__initcall__kmod_ov8865__301_3165_ov8865_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov8865.c", i32 3165, i32 1}
!2 = !{ptr @__exitcall_ov8865_driver_exit, !1, !"__exitcall_ov8865_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov8865.c", i32 3167, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov8865.c", i32 3168, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov8865.c", i32 3169, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/ov8865.c", i32 3156, i32 11}
!12 = !{ptr @ov8865_driver, !13, !"ov8865_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov8865.c", i32 3154, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov8865.c", i32 2965, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov8865.c", i32 2968, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ov8865.c", i32 2971, i32 42}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/ov8865.c", i32 2974, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/ov8865.c", i32 2977, i32 41}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ov8865.c", i32 2980, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/ov8865.c", i32 2993, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ov8865_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @ov8865_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ov8865.c", i32 2999, i32 51}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ov8865.c", i32 3006, i32 47}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/ov8865.c", i32 3016, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ov8865_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ov8865_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ov8865.c", i32 3019, i32 3}
!45 = !{ptr @ov8865_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ov8865_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/ov8865.c", i32 3033, i32 50}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ov8865.c", i32 3039, i32 11}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/ov8865.c", i32 3041, i32 34}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/ov8865.c", i32 3052, i32 3}
!55 = !{ptr @ov8865_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ov8865_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ov8865_probe.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/ov8865.c", i32 3077, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"supported_extclk_rates", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov8865.c", i32 592, i32 28}
!62 = !{ptr @ov8865_pll_configs, !63, !"ov8865_pll_configs", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov8865.c", i32 796, i32 41}
!64 = !{ptr @ov8865_pll_configs_19_2mhz, !65, !"ov8865_pll_configs_19_2mhz", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov8865.c", i32 784, i32 40}
!66 = !{ptr @ov8865_pll1_config_native_19_2mhz, !67, !"ov8865_pll1_config_native_19_2mhz", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/ov8865.c", i32 716, i32 40}
!68 = !{ptr @ov8865_pll2_config_native_19_2mhz, !69, !"ov8865_pll2_config_native_19_2mhz", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/ov8865.c", i32 743, i32 40}
!70 = !{ptr @ov8865_pll2_config_binning_19_2mhz, !71, !"ov8865_pll2_config_binning_19_2mhz", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ov8865.c", i32 766, i32 40}
!72 = !{ptr @ov8865_pll_configs_24mhz, !73, !"ov8865_pll_configs_24mhz", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/ov8865.c", i32 790, i32 40}
!74 = !{ptr @ov8865_pll1_config_native_24mhz, !75, !"ov8865_pll1_config_native_24mhz", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/ov8865.c", i32 727, i32 40}
!76 = !{ptr @ov8865_pll2_config_native_24mhz, !77, !"ov8865_pll2_config_native_24mhz", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ov8865.c", i32 752, i32 40}
!78 = !{ptr @ov8865_pll2_config_binning_24mhz, !79, !"ov8865_pll2_config_binning_24mhz", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/ov8865.c", i32 775, i32 40}
!80 = !{ptr @ov8865_subdev_ops, !81, !"ov8865_subdev_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/ov8865.c", i32 2874, i32 37}
!82 = !{ptr @ov8865_subdev_video_ops, !83, !"ov8865_subdev_video_ops", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ov8865.c", i32 2666, i32 43}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ov8865.c", i32 1379, i32 3}
!86 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ov8865_write.__UNIQUE_ID_ddebug295, !85, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!88 = !{ptr @ov8865_subdev_pad_ops, !89, !"ov8865_subdev_pad_ops", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov8865.c", i32 2865, i32 41}
!90 = distinct !{null, !91, !"ov8865_mbus_codes", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ov8865.c", i32 1183, i32 18}
!92 = !{ptr @ov8865_modes, !93, !"ov8865_modes", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ov8865.c", i32 962, i32 33}
!94 = !{ptr @ov8865_register_values_native, !95, !"ov8865_register_values_native", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ov8865.c", i32 808, i32 43}
!96 = !{ptr @ov8865_register_values_binning, !97, !"ov8865_register_values_binning", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/ov8865.c", i32 885, i32 43}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ov8865.c", i32 1356, i32 3}
!102 = !{ptr @ov8865_read.__UNIQUE_ID_ddebug293, !101, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/ov8865.c", i32 1363, i32 3}
!105 = !{ptr @ov8865_read.__UNIQUE_ID_ddebug294, !104, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!106 = distinct !{null, !107, !"ov8865_sclk_config_native", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov8865.c", i32 801, i32 40}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/ov8865.c", i32 2271, i32 3}
!110 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ov8865_state_mipi_configure._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @ov8865_state_mipi_configure._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov8865.c", i32 2275, i32 3}
!115 = !{ptr @ov8865_state_mipi_configure._entry.35, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ov8865_state_mipi_configure._entry_ptr.37, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @ov8865_link_freq_menu, !118, !"ov8865_link_freq_menu", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov8865.c", i32 1322, i32 18}
!119 = !{ptr @ov8865_ctrls_init._key, !120, !"_key", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ov8865.c", i32 2528, i32 2}
!121 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ov8865_ctrl_ops, !123, !"ov8865_ctrl_ops", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ov8865.c", i32 2513, i32 35}
!124 = !{ptr @ov8865_test_pattern_bits, !125, !"ov8865_test_pattern_bits", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/ov8865.c", i32 1335, i32 17}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/ov8865.c", i32 1327, i32 2}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ov8865.c", i32 1328, i32 2}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/ov8865.c", i32 1329, i32 2}
!132 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/ov8865.c", i32 1330, i32 2}
!134 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/ov8865.c", i32 1331, i32 2}
!136 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/ov8865.c", i32 1332, i32 2}
!138 = !{ptr @ov8865_test_pattern_menu, !139, !"ov8865_test_pattern_menu", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ov8865.c", i32 1326, i32 26}
!140 = !{ptr @ov8865_of_match, !141, !"ov8865_of_match", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/ov8865.c", i32 3148, i32 34}
!142 = !{ptr @ov8865_acpi_match, !143, !"ov8865_acpi_match", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/ov8865.c", i32 3142, i32 36}
!144 = !{ptr @ov8865_pm_ops, !145, !"ov8865_pm_ops", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ov8865.c", i32 3138, i32 32}
!146 = !{ptr @.str.45, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/ov8865.c", i32 2408, i32 4}
!148 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ov8865_sensor_power._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @ov8865_sensor_power._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/ov8865.c", i32 2415, i32 4}
!153 = !{ptr @ov8865_sensor_power._entry.47, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @ov8865_sensor_power._entry_ptr.49, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/ov8865.c", i32 2422, i32 4}
!157 = !{ptr @ov8865_sensor_power._entry.50, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ov8865_sensor_power._entry_ptr.52, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.54, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/ov8865.c", i32 2429, i32 4}
!161 = !{ptr @ov8865_sensor_power._entry.53, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @ov8865_sensor_power._entry_ptr.55, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/ov8865.c", i32 2339, i32 3}
!165 = !{ptr @.str.57, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @ov8865_sensor_init._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @ov8865_sensor_init._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.59, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/ov8865.c", i32 2345, i32 3}
!170 = !{ptr @ov8865_sensor_init._entry.58, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @ov8865_sensor_init._entry_ptr.60, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/ov8865.c", i32 2351, i32 3}
!174 = !{ptr @ov8865_sensor_init._entry.61, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @ov8865_sensor_init._entry_ptr.63, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/ov8865.c", i32 2358, i32 3}
!178 = !{ptr @ov8865_sensor_init._entry.64, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @ov8865_sensor_init._entry_ptr.66, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/ov8865.c", i32 2364, i32 3}
!182 = !{ptr @ov8865_sensor_init._entry.67, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @ov8865_sensor_init._entry_ptr.69, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.71, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/ov8865.c", i32 2370, i32 3}
!186 = !{ptr @ov8865_sensor_init._entry.70, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @ov8865_sensor_init._entry_ptr.72, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/ov8865.c", i32 2376, i32 3}
!190 = !{ptr @ov8865_sensor_init._entry.73, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @ov8865_sensor_init._entry_ptr.75, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/ov8865.c", i32 2382, i32 3}
!194 = !{ptr @ov8865_sensor_init._entry.76, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @ov8865_sensor_init._entry_ptr.78, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/ov8865.c", i32 2390, i32 3}
!198 = !{ptr @ov8865_sensor_init._entry.79, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @ov8865_sensor_init._entry_ptr.81, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/ov8865.c", i32 1456, i32 4}
!202 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ov8865_chip_id_check._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @ov8865_chip_id_check._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @ov8865_init_sequence, !206, !"ov8865_init_sequence", i1 false, i1 false}
!206 = !{!"../drivers/media/i2c/ov8865.c", i32 1187, i32 43}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{!"auto-init"}
!217 = !{i64 2148319635}
!218 = !{i64 804458, i64 804483, i64 804505, i64 804521, i64 804533, i64 804553, i64 804577, i64 804593, i64 804605}
!219 = !{i64 2148319823}
!220 = !{i64 2148802031, i64 2148802036, i64 2148802049, i64 2148802093, i64 2148802127, i64 2148802148}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i8 0, i8 2}
