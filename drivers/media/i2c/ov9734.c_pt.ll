; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ov9734.c_pt.bc'
source_filename = "../drivers/media/i2c/ov9734.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ov9734_mode = type { i32, i32, i32, i32, i32, i32, %struct.ov9734_reg_list }
%struct.ov9734_reg_list = type { i32, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ov9734_link_freq_config = type { %struct.ov9734_reg_list }
%struct.ov9734_reg = type { i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ov9734 = type { %struct.v4l2_subdev, %struct.media_pad, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_ov9734__294_1037_ov9734_i2c_driver_init6 = internal global ptr @ov9734_i2c_driver_init, section ".initcall6.init", align 4
@ov9734_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ov9734_remove, ptr @ov9734_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @ov9734_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov9734_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ov9734_i2c_driver_exit = internal global ptr @ov9734_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [52 x i8] c"ov9734.author=Qiu, Tianshu <tian.shu.qiu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [48 x i8] c"ov9734.author=Bingbu Cao <bingbu.cao@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [51 x i8] c"ov9734.description=OmniVision OV9734 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [37 x i8] c"ov9734.file=drivers/media/i2c/ov9734\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [22 x i8] c"ov9734.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov9734\00", [25 x i8] zeroinitializer }, align 32
@ov9734_acpi_ids = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"OVTI9734\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ov9734_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ov9734_suspend, ptr @ov9734_resume, ptr @ov9734_suspend, ptr @ov9734_resume, ptr @ov9734_suspend, ptr @ov9734_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ov9734_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 955, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to check HW configuration: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov9734_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/ov9734.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ov9734_probe._entry_ptr = internal global ptr @ov9734_probe._entry, section ".printk_index", align 4
@ov9734_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @ov9734_video_ops, ptr null, ptr null, ptr null, ptr @ov9734_pad_ops }, [32 x i8] zeroinitializer }, align 32
@ov9734_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 966, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find sensor: %d\00", [38 x i8] zeroinitializer }, align 32
@ov9734_probe._entry_ptr.8 = internal global ptr @ov9734_probe._entry.6, section ".printk_index", align 4
@ov9734_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ov9734->mutex\00", [17 x i8] zeroinitializer }, align 32
@supported_modes = internal constant { [1 x %struct.ov9734_mode], [32 x i8] } { [1 x %struct.ov9734_mode] [%struct.ov9734_mode { i32 1296, i32 734, i32 1478, i32 802, i32 802, i32 0, %struct.ov9734_reg_list { i32 159, ptr @mode_1296x734_regs } }], [32 x i8] zeroinitializer }, align 32
@ov9734_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init controls: %d\00", [36 x i8] zeroinitializer }, align 32
@ov9734_probe._entry_ptr.12 = internal global ptr @ov9734_probe._entry.10, section ".printk_index", align 4
@ov9734_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @ov9734_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ov9734_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@ov9734_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 985, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init entity pads: %d\00", [33 x i8] zeroinitializer }, align 32
@ov9734_probe._entry_ptr.15 = internal global ptr @ov9734_probe._entry.13, section ".printk_index", align 4
@ov9734_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 992, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register V4L2 subdev: %d\00", [61 x i8] zeroinitializer }, align 32
@ov9734_probe._entry_ptr.18 = internal global ptr @ov9734_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ov9734_check_hwcfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 893, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"external clock %d is not supported\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov9734_check_hwcfg\00", [45 x i8] zeroinitializer }, align 32
@ov9734_check_hwcfg._entry_ptr = internal global ptr @ov9734_check_hwcfg._entry, section ".printk_index", align 4
@ov9734_check_hwcfg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no link frequencies defined\00", [36 x i8] zeroinitializer }, align 32
@ov9734_check_hwcfg._entry_ptr.24 = internal global ptr @ov9734_check_hwcfg._entry.22, section ".printk_index", align 4
@link_freq_menu_items = internal constant { [1 x i64], [24 x i8] } { [1 x i64] [i64 180000000], [24 x i8] zeroinitializer }, align 32
@ov9734_check_hwcfg._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 921, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no link frequency %lld supported\00", [63 x i8] zeroinitializer }, align 32
@ov9734_check_hwcfg._entry_ptr.27 = internal global ptr @ov9734_check_hwcfg._entry.25, section ".printk_index", align 4
@ov9734_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ov9734_set_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ov9734_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @ov9734_enum_mbus_code, ptr @ov9734_enum_frame_size, ptr null, ptr @ov9734_get_format, ptr @ov9734_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@link_freq_configs = internal constant { [1 x %struct.ov9734_link_freq_config], [24 x i8] } { [1 x %struct.ov9734_link_freq_config] [%struct.ov9734_link_freq_config { %struct.ov9734_reg_list { i32 12, ptr @mipi_data_rate_360mbps } }], [24 x i8] zeroinitializer }, align 32
@ov9734_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set plls\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov9734_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@ov9734_start_streaming._entry_ptr = internal global ptr @ov9734_start_streaming._entry, section ".printk_index", align 4
@ov9734_start_streaming._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 631, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set mode\00", [45 x i8] zeroinitializer }, align 32
@ov9734_start_streaming._entry_ptr.32 = internal global ptr @ov9734_start_streaming._entry.30, section ".printk_index", align 4
@ov9734_start_streaming._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to start stream\00", [41 x i8] zeroinitializer }, align 32
@ov9734_start_streaming._entry_ptr.35 = internal global ptr @ov9734_start_streaming._entry.33, section ".printk_index", align 4
@mipi_data_rate_360mbps = internal constant { [12 x %struct.ov9734_reg], [48 x i8] } { [12 x %struct.ov9734_reg] [%struct.ov9734_reg { i16 12336, i8 25 }, %struct.ov9734_reg { i16 12416, i8 2 }, %struct.ov9734_reg { i16 12417, i8 75 }, %struct.ov9734_reg { i16 12418, i8 4 }, %struct.ov9734_reg { i16 12419, i8 0 }, %struct.ov9734_reg { i16 12420, i8 2 }, %struct.ov9734_reg { i16 12421, i8 1 }, %struct.ov9734_reg { i16 12422, i8 1 }, %struct.ov9734_reg { i16 12425, i8 1 }, %struct.ov9734_reg { i16 12426, i8 0 }, %struct.ov9734_reg { i16 12318, i8 21 }, %struct.ov9734_reg { i16 12547, i8 1 }], [48 x i8] zeroinitializer }, align 32
@ov9734_write_reg_list._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ov9734_write_reg_list = private unnamed_addr constant [22 x i8] c"ov9734_write_reg_list\00", align 1
@ov9734_write_reg_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.ov9734_write_reg_list, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"write reg 0x%4.4x return err = %d\00", [62 x i8] zeroinitializer }, align 32
@ov9734_write_reg_list._entry_ptr = internal global ptr @ov9734_write_reg_list._entry, section ".printk_index", align 4
@ov9734_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 653, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to stop stream\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov9734_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@ov9734_stop_streaming._entry_ptr = internal global ptr @ov9734_stop_streaming._entry, section ".printk_index", align 4
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@ov9734_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip id mismatch: %x!=%x\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov9734_identify_module\00", [41 x i8] zeroinitializer }, align 32
@ov9734_identify_module._entry_ptr = internal global ptr @ov9734_identify_module._entry, section ".printk_index", align 4
@mode_1296x734_regs = internal constant { [159 x %struct.ov9734_reg], [132 x i8] } { [159 x %struct.ov9734_reg] [%struct.ov9734_reg { i16 12289, i8 0 }, %struct.ov9734_reg { i16 12290, i8 0 }, %struct.ov9734_reg { i16 12295, i8 0 }, %struct.ov9734_reg { i16 12304, i8 0 }, %struct.ov9734_reg { i16 12305, i8 8 }, %struct.ov9734_reg { i16 12308, i8 34 }, %struct.ov9734_reg { i16 13824, i8 85 }, %struct.ov9734_reg { i16 13825, i8 2 }, %struct.ov9734_reg { i16 13829, i8 34 }, %struct.ov9734_reg { i16 13841, i8 -25 }, %struct.ov9734_reg { i16 13908, i8 16 }, %struct.ov9734_reg { i16 13909, i8 119 }, %struct.ov9734_reg { i16 13910, i8 119 }, %struct.ov9734_reg { i16 13911, i8 7 }, %struct.ov9734_reg { i16 13912, i8 34 }, %struct.ov9734_reg { i16 13913, i8 34 }, %struct.ov9734_reg { i16 13914, i8 2 }, %struct.ov9734_reg { i16 14212, i8 5 }, %struct.ov9734_reg { i16 14213, i8 85 }, %struct.ov9734_reg { i16 14272, i8 7 }, %struct.ov9734_reg { i16 14336, i8 0 }, %struct.ov9734_reg { i16 14337, i8 4 }, %struct.ov9734_reg { i16 14338, i8 0 }, %struct.ov9734_reg { i16 14339, i8 4 }, %struct.ov9734_reg { i16 14340, i8 5 }, %struct.ov9734_reg { i16 14341, i8 11 }, %struct.ov9734_reg { i16 14342, i8 2 }, %struct.ov9734_reg { i16 14343, i8 -37 }, %struct.ov9734_reg { i16 14344, i8 5 }, %struct.ov9734_reg { i16 14345, i8 0 }, %struct.ov9734_reg { i16 14346, i8 2 }, %struct.ov9734_reg { i16 14347, i8 -48 }, %struct.ov9734_reg { i16 14348, i8 5 }, %struct.ov9734_reg { i16 14349, i8 -58 }, %struct.ov9734_reg { i16 14350, i8 3 }, %struct.ov9734_reg { i16 14351, i8 34 }, %struct.ov9734_reg { i16 14352, i8 0 }, %struct.ov9734_reg { i16 14353, i8 4 }, %struct.ov9734_reg { i16 14354, i8 0 }, %struct.ov9734_reg { i16 14355, i8 4 }, %struct.ov9734_reg { i16 14358, i8 0 }, %struct.ov9734_reg { i16 14359, i8 0 }, %struct.ov9734_reg { i16 14360, i8 0 }, %struct.ov9734_reg { i16 14361, i8 4 }, %struct.ov9734_reg { i16 14368, i8 24 }, %struct.ov9734_reg { i16 14369, i8 0 }, %struct.ov9734_reg { i16 14380, i8 6 }, %struct.ov9734_reg { i16 13568, i8 0 }, %struct.ov9734_reg { i16 13569, i8 49 }, %struct.ov9734_reg { i16 13570, i8 0 }, %struct.ov9734_reg { i16 13571, i8 3 }, %struct.ov9734_reg { i16 13572, i8 0 }, %struct.ov9734_reg { i16 13573, i8 0 }, %struct.ov9734_reg { i16 13577, i8 16 }, %struct.ov9734_reg { i16 13578, i8 0 }, %struct.ov9734_reg { i16 13579, i8 64 }, %struct.ov9734_reg { i16 15616, i8 0 }, %struct.ov9734_reg { i16 15617, i8 0 }, %struct.ov9734_reg { i16 15618, i8 0 }, %struct.ov9734_reg { i16 15619, i8 0 }, %struct.ov9734_reg { i16 15620, i8 0 }, %struct.ov9734_reg { i16 15621, i8 0 }, %struct.ov9734_reg { i16 15622, i8 0 }, %struct.ov9734_reg { i16 15623, i8 0 }, %struct.ov9734_reg { i16 15624, i8 0 }, %struct.ov9734_reg { i16 15625, i8 0 }, %struct.ov9734_reg { i16 15626, i8 0 }, %struct.ov9734_reg { i16 15627, i8 0 }, %struct.ov9734_reg { i16 15628, i8 0 }, %struct.ov9734_reg { i16 15629, i8 0 }, %struct.ov9734_reg { i16 15630, i8 0 }, %struct.ov9734_reg { i16 15631, i8 0 }, %struct.ov9734_reg { i16 15744, i8 0 }, %struct.ov9734_reg { i16 15745, i8 0 }, %struct.ov9734_reg { i16 15746, i8 56 }, %struct.ov9734_reg { i16 15747, i8 -92 }, %struct.ov9734_reg { i16 15748, i8 0 }, %struct.ov9734_reg { i16 15749, i8 0 }, %struct.ov9734_reg { i16 15750, i8 31 }, %struct.ov9734_reg { i16 15751, i8 3 }, %struct.ov9734_reg { i16 15755, i8 0 }, %struct.ov9734_reg { i16 15759, i8 0 }, %struct.ov9734_reg { i16 16385, i8 -32 }, %struct.ov9734_reg { i16 16393, i8 11 }, %struct.ov9734_reg { i16 17152, i8 3 }, %struct.ov9734_reg { i16 17153, i8 -1 }, %struct.ov9734_reg { i16 17156, i8 0 }, %struct.ov9734_reg { i16 17157, i8 0 }, %struct.ov9734_reg { i16 17161, i8 0 }, %struct.ov9734_reg { i16 17920, i8 0 }, %struct.ov9734_reg { i16 17921, i8 -128 }, %struct.ov9734_reg { i16 18432, i8 0 }, %struct.ov9734_reg { i16 18437, i8 0 }, %struct.ov9734_reg { i16 18465, i8 80 }, %struct.ov9734_reg { i16 18467, i8 80 }, %struct.ov9734_reg { i16 18487, i8 45 }, %struct.ov9734_reg { i16 18944, i8 0 }, %struct.ov9734_reg { i16 20224, i8 -128 }, %struct.ov9734_reg { i16 20225, i8 16 }, %struct.ov9734_reg { i16 20226, i8 0 }, %struct.ov9734_reg { i16 20227, i8 0 }, %struct.ov9734_reg { i16 20228, i8 0 }, %struct.ov9734_reg { i16 20229, i8 0 }, %struct.ov9734_reg { i16 20230, i8 0 }, %struct.ov9734_reg { i16 20231, i8 0 }, %struct.ov9734_reg { i16 20232, i8 0 }, %struct.ov9734_reg { i16 20233, i8 0 }, %struct.ov9734_reg { i16 20480, i8 47 }, %struct.ov9734_reg { i16 20492, i8 0 }, %struct.ov9734_reg { i16 20493, i8 0 }, %struct.ov9734_reg { i16 20494, i8 0 }, %struct.ov9734_reg { i16 20495, i8 0 }, %struct.ov9734_reg { i16 20496, i8 0 }, %struct.ov9734_reg { i16 20497, i8 0 }, %struct.ov9734_reg { i16 20498, i8 0 }, %struct.ov9734_reg { i16 20499, i8 0 }, %struct.ov9734_reg { i16 20500, i8 0 }, %struct.ov9734_reg { i16 20501, i8 0 }, %struct.ov9734_reg { i16 20502, i8 0 }, %struct.ov9734_reg { i16 20503, i8 0 }, %struct.ov9734_reg { i16 20608, i8 0 }, %struct.ov9734_reg { i16 20864, i8 1 }, %struct.ov9734_reg { i16 20865, i8 0 }, %struct.ov9734_reg { i16 20866, i8 1 }, %struct.ov9734_reg { i16 20867, i8 0 }, %struct.ov9734_reg { i16 20868, i8 1 }, %struct.ov9734_reg { i16 20869, i8 0 }, %struct.ov9734_reg { i16 22280, i8 6 }, %struct.ov9734_reg { i16 14351, i8 42 }, %struct.ov9734_reg { i16 22400, i8 62 }, %struct.ov9734_reg { i16 22401, i8 15 }, %struct.ov9734_reg { i16 22402, i8 68 }, %struct.ov9734_reg { i16 22403, i8 2 }, %struct.ov9734_reg { i16 22404, i8 1 }, %struct.ov9734_reg { i16 22405, i8 1 }, %struct.ov9734_reg { i16 22406, i8 0 }, %struct.ov9734_reg { i16 22407, i8 4 }, %struct.ov9734_reg { i16 22408, i8 2 }, %struct.ov9734_reg { i16 22409, i8 15 }, %struct.ov9734_reg { i16 22410, i8 -3 }, %struct.ov9734_reg { i16 22411, i8 -11 }, %struct.ov9734_reg { i16 22412, i8 -11 }, %struct.ov9734_reg { i16 22413, i8 3 }, %struct.ov9734_reg { i16 22414, i8 8 }, %struct.ov9734_reg { i16 22415, i8 12 }, %struct.ov9734_reg { i16 22416, i8 8 }, %struct.ov9734_reg { i16 22417, i8 4 }, %struct.ov9734_reg { i16 22418, i8 0 }, %struct.ov9734_reg { i16 22419, i8 82 }, %struct.ov9734_reg { i16 22420, i8 -93 }, %struct.ov9734_reg { i16 20480, i8 63 }, %struct.ov9734_reg { i16 14337, i8 0 }, %struct.ov9734_reg { i16 14339, i8 0 }, %struct.ov9734_reg { i16 14341, i8 15 }, %struct.ov9734_reg { i16 14343, i8 -33 }, %struct.ov9734_reg { i16 14345, i8 16 }, %struct.ov9734_reg { i16 14347, i8 -34 }, %struct.ov9734_reg { i16 14353, i8 0 }, %struct.ov9734_reg { i16 14355, i8 1 }], [132 x i8] zeroinitializer }, align 32
@ov9734_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ov9734:549:(ctrl_hdlr)->_lock\00", [34 x i8] zeroinitializer }, align 32
@ov9734_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov9734_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov9734_test_pattern_menu = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Standard Color Bar\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Top-Bottom Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Right-Left Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bottom-Top Darker Color Bar\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963793, i64 10356993, i64 10356995, i64 10422531, i64 10422533]
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"ov9734_i2c_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1027, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1029, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"ov9734_acpi_ids\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1020, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"ov9734_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1016, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 954, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"ov9734_subdev_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 842, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 966, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 970, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"supported_modes\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 308, i32 33 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 974, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"ov9734_internal_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 851, i32 46 }
@___asan_gen_.106 = private unnamed_addr constant [25 x i8] c"ov9734_subdev_entity_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 847, i32 45 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 985, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 991, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 888, i32 41 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 893, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 907, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"link_freq_menu_items\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 295, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 920, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"ov9734_video_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 831, i32 43 }
@___asan_gen_.151 = private unnamed_addr constant [15 x i8] c"ov9734_pad_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 835, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"link_freq_configs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 299, i32 45 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 624, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 631, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 642, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [23 x i8] c"mipi_data_rate_360mbps\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 110, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 428, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 653, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 998, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 866, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"mode_1296x734_regs\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 125, i32 32 }
@___asan_gen_.217 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 549, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant [16 x i8] c"ov9734_ctrl_ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 536, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"ov9734_test_pattern_menu\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 287, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 288, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 289, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 290, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 291, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [30 x i8] c"../drivers/media/i2c/ov9734.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 292, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_ov9734_i2c_driver_exit, ptr @__initcall__kmod_ov9734__294_1037_ov9734_i2c_driver_init6, ptr @ov9734_check_hwcfg._entry, ptr @ov9734_check_hwcfg._entry.22, ptr @ov9734_check_hwcfg._entry.25, ptr @ov9734_check_hwcfg._entry_ptr, ptr @ov9734_check_hwcfg._entry_ptr.24, ptr @ov9734_check_hwcfg._entry_ptr.27, ptr @ov9734_i2c_driver_exit, ptr @ov9734_identify_module._entry, ptr @ov9734_identify_module._entry_ptr, ptr @ov9734_probe._entry, ptr @ov9734_probe._entry.10, ptr @ov9734_probe._entry.13, ptr @ov9734_probe._entry.16, ptr @ov9734_probe._entry.6, ptr @ov9734_probe._entry_ptr, ptr @ov9734_probe._entry_ptr.12, ptr @ov9734_probe._entry_ptr.15, ptr @ov9734_probe._entry_ptr.18, ptr @ov9734_probe._entry_ptr.8, ptr @ov9734_start_streaming._entry, ptr @ov9734_start_streaming._entry.30, ptr @ov9734_start_streaming._entry.33, ptr @ov9734_start_streaming._entry_ptr, ptr @ov9734_start_streaming._entry_ptr.32, ptr @ov9734_start_streaming._entry_ptr.35, ptr @ov9734_stop_streaming._entry, ptr @ov9734_stop_streaming._entry_ptr, ptr @ov9734_write_reg_list._entry, ptr @ov9734_write_reg_list._entry_ptr, ptr @ov9734_i2c_driver, ptr @.str, ptr @ov9734_acpi_ids, ptr @ov9734_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ov9734_subdev_ops, ptr @.str.7, ptr @ov9734_probe.__key, ptr @.str.9, ptr @supported_modes, ptr @.str.11, ptr @ov9734_internal_ops, ptr @ov9734_subdev_entity_ops, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @link_freq_menu_items, ptr @.str.26, ptr @ov9734_video_ops, ptr @ov9734_pad_ops, ptr @link_freq_configs, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @mipi_data_rate_360mbps, ptr @ov9734_write_reg_list._rs, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @mode_1296x734_regs, ptr @ov9734_init_controls._key, ptr @.str.43, ptr @ov9734_ctrl_ops, ptr @ov9734_test_pattern_menu, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_acpi_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_modes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_check_hwcfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_check_hwcfg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_menu_items to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_check_hwcfg._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_freq_configs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_start_streaming._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_start_streaming._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_data_rate_360mbps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_write_reg_list._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_write_reg_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_1296x734_regs to i32), i32 636, i32 768, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9734_test_pattern_menu to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ov9734_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ov9734_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ov9734_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %mutex = getelementptr inbounds %struct.ov9734, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_probe(ptr noundef %client) #2 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %addr_buf.i.i = alloca [2 x i8], align 2
  %data_buf.i.i = alloca [4 x i8], align 4
  %bus_cfg.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  %mclk.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %0 = call ptr @memset(ptr %bus_cfg.i, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %bus_cfg.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mclk.i) #7
  %3 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mclk.i, align 4, !annotation !140
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.ov9734_check_hwcfg.exit.thread_crit_edge, label %if.end.i

entry.ov9734_check_hwcfg.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov9734_check_hwcfg.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %mclk.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.ov9734_check_hwcfg.exit.thread_crit_edge

if.end.i.ov9734_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov9734_check_hwcfg.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 19200000
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %5) #10
  br label %ov9734_check_hwcfg.exit.thread

if.end6.i:                                        ; preds = %if.end4.i
  %call7.i = call ptr @fwnode_graph_get_next_endpoint(ptr noundef nonnull %call.i, ptr noundef null) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.ov9734_check_hwcfg.exit.thread_crit_edge, label %if.end10.i

if.end6.i.ov9734_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov9734_check_hwcfg.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  %call11.i = call i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef nonnull %call7.i, ptr noundef nonnull %bus_cfg.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.ov9734_check_hwcfg.exit.thread_crit_edge

if.end10.i.ov9734_check_hwcfg.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov9734_check_hwcfg.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %nr_of_link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 4
  %6 = ptrtoint ptr %nr_of_link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_of_link_frequencies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not.i = icmp eq i32 %7, 0
  br i1 %tobool15.not.i, label %do.end19.i, label %for.body25.lr.ph.i

for.body25.lr.ph.i:                               ; preds = %if.end14.i
  %link_frequencies.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg.i, i32 0, i32 3
  %8 = ptrtoint ptr %link_frequencies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_frequencies.i, align 4
  br label %for.body25.i

do.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %ov9734_check_hwcfg.exit.thread114

for.body25.i:                                     ; preds = %for.inc.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %j.065.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc.i, %for.inc.i.for.body25.i_crit_edge ]
  %arrayidx26.i = getelementptr i64, ptr %9, i32 %j.065.i
  %10 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 180000000, i64 %11)
  %cmp27.i = icmp eq i64 %11, 180000000
  br i1 %cmp27.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body25.i
  %inc.i = add nuw i32 %j.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end35.i_crit_edge, label %for.inc.i.for.body25.i_crit_edge

for.inc.i.for.body25.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25.i

for.inc.i.do.end35.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i

for.end.i:                                        ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.065.i, i32 %7)
  %cmp31.i = icmp eq i32 %j.065.i, %7
  br i1 %cmp31.i, label %for.end.i.do.end35.i_crit_edge, label %if.end

for.end.i.do.end35.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i

do.end35.i:                                       ; preds = %for.end.i.do.end35.i_crit_edge, %for.inc.i.do.end35.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i64 noundef 180000000) #10
  br label %ov9734_check_hwcfg.exit.thread114

ov9734_check_hwcfg.exit.thread:                   ; preds = %if.end10.i.ov9734_check_hwcfg.exit.thread_crit_edge, %if.end6.i.ov9734_check_hwcfg.exit.thread_crit_edge, %do.end.i, %if.end.i.ov9734_check_hwcfg.exit.thread_crit_edge, %entry.ov9734_check_hwcfg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call11.i, %if.end10.i.ov9734_check_hwcfg.exit.thread_crit_edge ], [ -6, %if.end6.i.ov9734_check_hwcfg.exit.thread_crit_edge ], [ %call.i.i, %if.end.i.ov9734_check_hwcfg.exit.thread_crit_edge ], [ -6, %entry.ov9734_check_hwcfg.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

ov9734_check_hwcfg.exit.thread114:                ; preds = %do.end35.i, %do.end19.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  br label %do.end

do.end:                                           ; preds = %ov9734_check_hwcfg.exit.thread114, %ov9734_check_hwcfg.exit.thread
  %retval.0.i112 = phi i32 [ %retval.0.i.ph, %ov9734_check_hwcfg.exit.thread ], [ -22, %ov9734_check_hwcfg.exit.thread114 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i112) #10
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @v4l2_fwnode_endpoint_free(ptr noundef nonnull %bus_cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mclk.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg.i) #7
  %call.i99 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 532, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i99, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i99, ptr noundef %client, ptr noundef nonnull @ov9734_subdev_ops) #7
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i99, i32 0, i32 11
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %14 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  %16 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %data_buf.i.i, align 4
  %17 = ptrtoint ptr %addr_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 12298, ptr %addr_buf.i.i, align 2
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr.i.i, align 2
  %20 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i.i, align 2
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %14, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %addr_buf.i.i, ptr %buf.i.i, align 4
  %24 = load i16, ptr %addr.i.i, align 2
  %arrayidx9.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx9.i.i, align 4
  %flags12.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags12.i.i, align 2
  %len14.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %len14.i.i, align 4
  %arrayidx16.i.i = getelementptr inbounds [4 x i8], ptr %data_buf.i.i, i32 0, i32 2
  %buf18.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i.i, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %buf18.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx16.i.i, ptr %buf18.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %29 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i.i, align 8
  %call20.i.i = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.i.i)
  %cmp21.not.i.i = icmp eq i32 %call20.i.i, 2
  br i1 %cmp21.not.i.i, label %if.end.i101, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp24.i.i = icmp slt i32 %call20.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %spec.select = select i1 %cmp24.i.i, i32 %call20.i.i, i32 -5
  br label %do.end12

if.end.i101:                                      ; preds = %if.end6
  %31 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_buf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 38708, i32 %32)
  %cmp.not.i100 = icmp eq i32 %32, 38708
  br i1 %cmp.not.i100, label %do.body15, label %do.end.i102

do.end.i102:                                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef 38708, i32 noundef %32) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end.i102, %if.then23.i.i
  %retval.0.i103.ph = phi i32 [ -6, %do.end.i102 ], [ %spec.select, %if.then23.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i103.ph) #10
  br label %cleanup

do.body15:                                        ; preds = %if.end.i101
  %mutex = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @ov9734_probe.__key) #7
  %cur_mode = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 8
  %33 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @supported_modes, ptr %cur_mode, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 2
  %call.i104 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 8, ptr noundef nonnull @ov9734_init_controls._key, ptr noundef nonnull @.str.43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %if.end.i106, label %do.body15.do.end23_crit_edge

do.body15.do.end23_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end.i106:                                      ; preds = %do.body15
  %lock.i = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %mutex, ptr %lock.i, align 4
  %35 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur_mode, align 4
  %call2.i = call ptr @v4l2_ctrl_new_int_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov9734_ctrl_ops, i32 noundef 10422529, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @link_freq_menu_items) #7
  %link_freq.i = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 3
  %37 = ptrtoint ptr %link_freq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call2.i, ptr %link_freq.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i106.if.end7.i_crit_edge, label %if.then5.i

if.end.i106.if.end7.i_crit_edge:                  ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2.i, i32 0, i32 20
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %39, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i106.if.end7.i_crit_edge
  %40 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 180000000, i64 3689348814741910323) #11, !srcloc !141
  %41 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 180000000, i64 %40) #11, !srcloc !142
  %call9.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov9734_ctrl_ops, i32 noundef 10422530, i64 noundef 0, i64 noundef %41, i64 noundef 1, i64 noundef %41) #7
  %pixel_rate10.i = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 4
  %42 = ptrtoint ptr %pixel_rate10.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i, ptr %pixel_rate10.i, align 4
  %vts_min.i = getelementptr inbounds %struct.ov9734_mode, ptr %36, i32 0, i32 4
  %43 = ptrtoint ptr %vts_min.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vts_min.i, align 4
  %height.i = getelementptr inbounds %struct.ov9734_mode, ptr %36, i32 0, i32 1
  %45 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height.i, align 4
  %sub11.i = sub i32 %44, %46
  %sub13.i = sub i32 32767, %46
  %vts_def.i = getelementptr inbounds %struct.ov9734_mode, ptr %36, i32 0, i32 3
  %47 = ptrtoint ptr %vts_def.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vts_def.i, align 4
  %sub15.i = sub i32 %48, %46
  %conv16.i = zext i32 %sub11.i to i64
  %conv17.i = zext i32 %sub13.i to i64
  %conv18.i = zext i32 %sub15.i to i64
  %call19.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov9734_ctrl_ops, i32 noundef 10356993, i64 noundef %conv16.i, i64 noundef %conv17.i, i64 noundef 1, i64 noundef %conv18.i) #7
  %vblank.i = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 5
  %49 = ptrtoint ptr %vblank.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call19.i, ptr %vblank.i, align 4
  %hts.i = getelementptr inbounds %struct.ov9734_mode, ptr %36, i32 0, i32 2
  %50 = ptrtoint ptr %hts.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hts.i, align 4
  %conv.i.i = zext i32 %51 to i64
  %mul.i.i = mul i64 %41, %conv.i.i
  %52 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1253132416968158909, i64 %mul.i.i) #11, !srcloc !143
  %53 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1253132416968158909, i64 %mul.i.i, i64 %52, i32 0) #11, !srcloc !144
  %asmresult10.i.i.i = extractvalue { i64, i32 } %53, 0
  %ppl.0.i.i = lshr i64 %asmresult10.i.i.i, 25
  %54 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %36, align 4
  %conv21.i = zext i32 %55 to i64
  %sub22.i = sub nsw i64 %ppl.0.i.i, %conv21.i
  %call23.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov9734_ctrl_ops, i32 noundef 10356994, i64 noundef %sub22.i, i64 noundef %sub22.i, i64 noundef 1, i64 noundef %sub22.i) #7
  %hblank.i = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 6
  %56 = ptrtoint ptr %hblank.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call23.i, ptr %hblank.i, align 4
  %tobool25.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool25.not.i, label %if.end7.i.if.end30.i_crit_edge, label %if.then26.i

if.end7.i.if.end30.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags28.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call23.i, i32 0, i32 20
  %57 = ptrtoint ptr %flags28.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags28.i, align 4
  %or29.i = or i32 %58, 4
  store i32 %or29.i, ptr %flags28.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end7.i.if.end30.i_crit_edge
  %call31.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov9734_ctrl_ops, i32 noundef 10356995, i64 noundef 16, i64 noundef 248, i64 noundef 1, i64 noundef 16) #7
  %call32.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov9734_ctrl_ops, i32 noundef 10422533, i64 noundef 256, i64 noundef 1023, i64 noundef 1, i64 noundef 256) #7
  %59 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cur_mode, align 4
  %vts_def34.i = getelementptr inbounds %struct.ov9734_mode, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %vts_def34.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vts_def34.i, align 4
  %sub35.i = add i32 %62, -4
  %conv36.i = zext i32 %sub35.i to i64
  %call37.i = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov9734_ctrl_ops, i32 noundef 9963793, i64 noundef 4, i64 noundef %conv36.i, i64 noundef 1, i64 noundef %conv36.i) #7
  %exposure.i = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 7
  %63 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call37.i, ptr %exposure.i, align 4
  %call38.i = call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ov9734_ctrl_ops, i32 noundef 10422531, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @ov9734_test_pattern_menu) #7
  %error.i = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 2, i32 9
  %64 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool39.not.i = icmp eq i32 %65, 0
  br i1 %tobool39.not.i, label %if.end25, label %if.end30.i.do.end23_crit_edge

if.end30.i.do.end23_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

do.end23:                                         ; preds = %if.end30.i.do.end23_crit_edge, %do.body15.do.end23_crit_edge
  %retval.0.i107.ph = phi i32 [ %65, %if.end30.i.do.end23_crit_edge ], [ %call.i104, %do.body15.do.end23_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i107.ph) #10
  br label %probe_error_v4l2_ctrl_handler_free

if.end25:                                         ; preds = %if.end30.i
  %ctrl_handler43.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i99, i32 0, i32 8
  %66 = ptrtoint ptr %ctrl_handler43.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ctrl_handler.i, ptr %ctrl_handler43.i, align 4
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i99, i32 0, i32 7
  %67 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ov9734_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i99, i32 0, i32 4
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %or = or i32 %69, 4
  store i32 %or, ptr %flags, align 4
  %ops = getelementptr inbounds %struct.media_entity, ptr %call.i99, i32 0, i32 11
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @ov9734_subdev_entity_ops, ptr %ops, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i99, i32 0, i32 3
  %71 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 131073, ptr %function, align 4
  %pad = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 1
  %flags31 = getelementptr inbounds %struct.ov9734, ptr %call.i99, i32 0, i32 1, i32 4
  %72 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %flags31, align 4
  %call35 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i99, i16 noundef zeroext 1, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call35) #10
  br label %probe_error_v4l2_ctrl_handler_free

if.end42:                                         ; preds = %if.end25
  %call44 = call i32 @v4l2_async_register_subdev_sensor(ptr noundef nonnull %call.i99) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp = icmp slt i32 %call44, 0
  br i1 %cmp, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call44) #10
  br label %probe_error_v4l2_ctrl_handler_free

if.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call.i108 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i109 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #7
  br label %cleanup

probe_error_v4l2_ctrl_handler_free:               ; preds = %do.end48, %do.end40, %do.end23
  %ret.0 = phi i32 [ %retval.0.i107.ph, %do.end23 ], [ %call35, %do.end40 ], [ %call44, %do.end48 ]
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i99, i32 0, i32 8
  %73 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctrl_handler, align 4
  call void @v4l2_ctrl_handler_free(ptr noundef %74) #7
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %probe_error_v4l2_ctrl_handler_free, %if.end50, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i112, %do.end ], [ %retval.0.i103.ph, %do.end12 ], [ %ret.0, %probe_error_v4l2_ctrl_handler_free ], [ 0, %if.end50 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_alloc_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fwnode_endpoint_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_set_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i.i43 = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %mutex = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !145
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %enable)
  %cmp = icmp eq i32 %4, %enable
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end11

if.then.i:                                        ; preds = %if.then5
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #7, !srcloc !147
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then9_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then9_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !148
  br label %if.then9

if.then9:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then9_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  %call12 = tail call fastcc i32 @ov9734_start_streaming(ptr noundef %sd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end20_crit_edge, label %if.then14

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  %6 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %8 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %buf.i.i, align 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %8, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %if.then14.if.end20.sink.split_crit_edge, label %do.end.i

if.then14.if.end20.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38) #10
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i43) #7
  %13 = getelementptr inbounds [6 x i8], ptr %buf.i.i43, i32 0, i32 2
  %14 = ptrtoint ptr %buf.i.i43 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 256, ptr %buf.i.i43, align 2
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %13, align 2
  %call.i.i.i45 = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i.i43, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i45)
  %cmp9.not.i.i46 = icmp eq i32 %call.i.i.i45, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i43) #7
  br i1 %cmp9.not.i.i46, label %if.else.ov9734_stop_streaming.exit49_crit_edge, label %do.end.i48

if.else.ov9734_stop_streaming.exit49_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov9734_stop_streaming.exit49

do.end.i48:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i47 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47, ptr noundef nonnull @.str.38) #10
  br label %ov9734_stop_streaming.exit49

ov9734_stop_streaming.exit49:                     ; preds = %do.end.i48, %if.else.ov9734_stop_streaming.exit49_crit_edge
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %ov9734_stop_streaming.exit49, %do.end.i, %if.then14.if.end20.sink.split_crit_edge
  %dev.sink = phi ptr [ %dev18, %ov9734_stop_streaming.exit49 ], [ %dev, %if.then14.if.end20.sink.split_crit_edge ], [ %dev, %do.end.i ]
  %ret.0.ph = phi i32 [ 0, %ov9734_stop_streaming.exit49 ], [ %call12, %if.then14.if.end20.sink.split_crit_edge ], [ %call12, %do.end.i ]
  %call.i42 = call i32 @__pm_runtime_idle(ptr noundef %dev.sink, i32 noundef 5) #7
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end11.if.end20_crit_edge
  %tobool21 = phi i1 [ true, %if.end11.if.end20_crit_edge ], [ false, %if.end20.sink.split ]
  %ret.0 = phi i32 [ 0, %if.end11.if.end20_crit_edge ], [ %ret.0.ph, %if.end20.sink.split ]
  %frombool = zext i1 %tobool21 to i8
  %16 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %streaming, align 4
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i, %if.then9 ], [ %ret.0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov9734_start_streaming(ptr nocapture noundef readonly %ov9734) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov9734, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cur_mode = getelementptr inbounds %struct.ov9734, ptr %ov9734, i32 0, i32 8
  %2 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_mode, align 4
  %link_freq_index1 = getelementptr inbounds %struct.ov9734_mode, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %link_freq_index1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_freq_index1, align 4
  %arrayidx = getelementptr [1 x %struct.ov9734_link_freq_config], ptr @link_freq_configs, i32 0, i32 %5
  %call3 = tail call fastcc i32 @ov9734_write_reg_list(ptr noundef %ov9734, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %reg_list5 = getelementptr inbounds %struct.ov9734_mode, ptr %7, i32 0, i32 6
  %call6 = tail call fastcc i32 @ov9734_write_reg_list(ptr noundef %ov9734, ptr noundef %reg_list5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %ov9734, i32 0, i32 8
  %8 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_handler, align 4
  %call15 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %12 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %buf.i, align 2
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 16777216, ptr %12, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp9.not.i, label %if.end18.cleanup_crit_edge, label %do.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp12.i, i32 %call.i.i, i32 -5
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.34) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call6, %do.end11 ], [ %call15, %if.end13.cleanup_crit_edge ], [ %spec.select.i, %do.end24 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov9734_write_reg_list(ptr nocapture noundef readonly %ov9734, ptr nocapture noundef readonly %r_list) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %ov9734, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %r_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_list, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29.not = icmp eq i32 %3, 0
  br i1 %cmp29.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regs = getelementptr inbounds %struct.ov9734_reg_list, ptr %r_list, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr %struct.ov9734_reg, ptr %6, i32 %i.030
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %val = getelementptr %struct.ov9734_reg, ptr %6, i32 %i.030, i32 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 2
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %buf.i, align 2
  %shl.i = shl nuw i32 %conv, 24
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %shl.i, ptr %4, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %buf.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br i1 %cmp9.not.i, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i.le = icmp slt i32 %call.i.i, 0
  %spec.select.i.le = select i1 %cmp12.i.le, i32 %call.i.i, i32 -5
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @ov9734_write_reg_list._rs, ptr noundef nonnull @__func__.ov9734_write_reg_list) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arrayidx9 = getelementptr %struct.ov9734_reg, ptr %16, i32 %i.030
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx9, align 2
  %conv11 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %conv11, i32 noundef %spec.select.i.le) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.030, 1
  %19 = ptrtoint ptr %r_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r_list, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i.le, %do.end ], [ %spec.select.i.le, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov9734_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
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
  store i32 12298, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov9734_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12298, i32 %3)
  %cmp1.not = icmp eq i32 %3, 12298
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %4 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1296, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %5 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1296, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %6 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 734, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %7 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 734, ptr %max_height, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_get_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %3, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !149

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %8 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 8
  %9 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_mode, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %format3, align 4
  %height.i = getelementptr inbounds %struct.ov9734_mode, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height2.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12298, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %field.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %call2 = tail call ptr @__v4l2_find_nearest_size(ptr noundef nonnull @supported_modes, i32 noundef 1, i32 noundef 32, i32 noundef 0, i32 noundef 4, i32 noundef %1, i32 noundef %3) #7
  %mutex = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %format, align 4
  %height.i = getelementptr inbounds %struct.ov9734_mode, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height.i, align 4
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height, align 4
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12298, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field.i, align 4
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %14 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %16 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %15, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !149

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %15, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %19, i32 %spec.select.i
  %20 = call ptr @memcpy(ptr %arrayidx.i, ptr %format, i32 48)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 8
  %21 = ptrtoint ptr %cur_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2, ptr %cur_mode, align 4
  %link_freq = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 3
  %22 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link_freq, align 4
  %link_freq_index = getelementptr inbounds %struct.ov9734_mode, ptr %call2, i32 0, i32 5
  %24 = ptrtoint ptr %link_freq_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_freq_index, align 4
  %call6 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %23, i32 noundef %25) #7
  %pixel_rate = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 4
  %26 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pixel_rate, align 4
  %28 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 180000000, i64 3689348814741910323) #11, !srcloc !141
  %29 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 180000000, i64 %28) #11, !srcloc !142
  %call9 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %27, i64 noundef %29) #7
  %vts_def = getelementptr inbounds %struct.ov9734_mode, ptr %call2, i32 0, i32 3
  %30 = ptrtoint ptr %vts_def to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vts_def, align 4
  %32 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height.i, align 4
  %sub = sub i32 %31, %33
  %vblank = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 5
  %34 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vblank, align 4
  %vts_min = getelementptr inbounds %struct.ov9734_mode, ptr %call2, i32 0, i32 4
  %36 = ptrtoint ptr %vts_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vts_min, align 4
  %sub12 = sub i32 %37, %33
  %conv = zext i32 %sub12 to i64
  %sub14 = sub i32 32767, %33
  %conv15 = zext i32 %sub14 to i64
  %conv16 = sext i32 %sub to i64
  %call17 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %35, i64 noundef %conv, i64 noundef %conv15, i64 noundef 1, i64 noundef %conv16) #7
  %38 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vblank, align 4
  %call19 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %39, i32 noundef %sub) #7
  %hts = getelementptr inbounds %struct.ov9734_mode, ptr %call2, i32 0, i32 2
  %40 = ptrtoint ptr %hts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hts, align 4
  %conv.i58 = zext i32 %41 to i64
  %mul.i = mul i64 %29, %conv.i58
  %42 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -1253132416968158909, i64 %mul.i) #11, !srcloc !143
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -1253132416968158909, i64 %mul.i, i64 %42, i32 0) #11, !srcloc !144
  %asmresult10.i.i = extractvalue { i64, i32 } %43, 0
  %ppl.0.i = lshr i64 %asmresult10.i.i, 25
  %44 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call2, align 4
  %46 = trunc i64 %ppl.0.i to i32
  %conv25 = sub i32 %46, %45
  %hblank = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 6
  %47 = ptrtoint ptr %hblank to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hblank, align 4
  %conv26 = sext i32 %conv25 to i64
  %call29 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %48, i64 noundef %conv26, i64 noundef %conv26, i64 noundef 1, i64 noundef %conv26) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_find_nearest_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_modify_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i.i67 = alloca [6 x i8], align 2
  %buf.i59 = alloca [6 x i8], align 2
  %buf.i51 = alloca [6 x i8], align 2
  %buf.i65.i = alloca [6 x i8], align 2
  %buf.i58.i = alloca [6 x i8], align 2
  %buf.i50.i = alloca [6 x i8], align 2
  %buf.i42.i = alloca [6 x i8], align 2
  %buf.i35.i = alloca [6 x i8], align 2
  %buf.i.i = alloca [6 x i8], align 2
  %buf.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -76
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10356993, i32 %5)
  %cmp = icmp eq i32 %5, 10356993
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode = getelementptr i8, ptr %1, i32 204
  %6 = ptrtoint ptr %cur_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_mode, align 4
  %height = getelementptr inbounds %struct.ov9734_mode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %add = add i32 %9, -4
  %sub = add i32 %add, %11
  %conv = zext i32 %sub to i64
  %exposure = getelementptr i8, ptr %1, i32 200
  %12 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exposure, align 4
  %minimum = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %minimum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %minimum, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 18
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %call3 = tail call i32 @__v4l2_ctrl_modify_range(ptr noundef %13, i64 noundef %15, i64 noundef %conv, i64 noundef %18, i64 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end6.sw.epilog_crit_edge [
    i32 10356995, label %sw.bb
    i32 10422533, label %sw.bb10
    i32 9963793, label %sw.bb13
    i32 10356993, label %sw.bb16
    i32 10422531, label %sw.bb22
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val8, align 4
  %24 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #7
  %26 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 13578, ptr %buf.i, align 2
  %shl.i = shl i32 %23, 16
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %shl.i, ptr %26, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp12.i, i32 %call.i.i, i32 -5
  %retval.0.i = select i1 %cmp9.not.i, i32 0, i32 %spec.select.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val11, align 4
  %31 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %33 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 12808, ptr %buf.i.i, align 2
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %33, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp12.i.i = icmp slt i32 %call.i.i.i, 0
  %spec.select.i.i = select i1 %cmp12.i.i, i32 %call.i.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %if.end.i, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb10
  %36 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i35.i) #7
  %38 = getelementptr inbounds [6 x i8], ptr %buf.i35.i, i32 0, i32 2
  %39 = ptrtoint ptr %buf.i35.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 20864, ptr %buf.i35.i, align 2
  %shl.i.i = shl i32 %30, 16
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %shl.i.i, ptr %38, align 2
  %call.i.i37.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %37, ptr noundef nonnull %buf.i35.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i37.i)
  %cmp9.not.i38.i = icmp eq i32 %call.i.i37.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37.i)
  %cmp12.i39.i = icmp slt i32 %call.i.i37.i, 0
  %spec.select.i40.i = select i1 %cmp12.i39.i, i32 %call.i.i37.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i35.i) #7
  br i1 %cmp9.not.i38.i, label %if.end4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i42.i) #7
  %43 = getelementptr inbounds [6 x i8], ptr %buf.i42.i, i32 0, i32 2
  %44 = ptrtoint ptr %buf.i42.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 20866, ptr %buf.i42.i, align 2
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %shl.i.i, ptr %43, align 2
  %call.i.i45.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buf.i42.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i45.i)
  %cmp9.not.i46.i = icmp eq i32 %call.i.i45.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45.i)
  %cmp12.i47.i = icmp slt i32 %call.i.i45.i, 0
  %spec.select.i48.i = select i1 %cmp12.i47.i, i32 %call.i.i45.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i42.i) #7
  br i1 %cmp9.not.i46.i, label %if.end8.i, label %if.end4.i.sw.epilog_crit_edge

if.end4.i.sw.epilog_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end4.i
  %46 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i50.i) #7
  %48 = getelementptr inbounds [6 x i8], ptr %buf.i50.i, i32 0, i32 2
  %49 = ptrtoint ptr %buf.i50.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 20868, ptr %buf.i50.i, align 2
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %shl.i.i, ptr %48, align 2
  %call.i.i53.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef nonnull %buf.i50.i, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i53.i)
  %cmp9.not.i54.i = icmp eq i32 %call.i.i53.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53.i)
  %cmp12.i55.i = icmp slt i32 %call.i.i53.i, 0
  %spec.select.i56.i = select i1 %cmp12.i55.i, i32 %call.i.i53.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i50.i) #7
  br i1 %cmp9.not.i54.i, label %if.end12.i, label %if.end8.i.sw.epilog_crit_edge

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end12.i:                                       ; preds = %if.end8.i
  %51 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i58.i) #7
  %53 = getelementptr inbounds [6 x i8], ptr %buf.i58.i, i32 0, i32 2
  %54 = ptrtoint ptr %buf.i58.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 12808, ptr %buf.i58.i, align 2
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 268435456, ptr %53, align 2
  %call.i.i60.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %52, ptr noundef nonnull %buf.i58.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i60.i)
  %cmp9.not.i61.i = icmp eq i32 %call.i.i60.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60.i)
  %cmp12.i62.i = icmp slt i32 %call.i.i60.i, 0
  %spec.select.i63.i = select i1 %cmp12.i62.i, i32 %call.i.i60.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i58.i) #7
  br i1 %cmp9.not.i61.i, label %if.end16.i, label %if.end12.i.sw.epilog_crit_edge

if.end12.i.sw.epilog_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i65.i) #7
  %58 = getelementptr inbounds [6 x i8], ptr %buf.i65.i, i32 0, i32 2
  %59 = ptrtoint ptr %buf.i65.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 12808, ptr %buf.i65.i, align 2
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 -1610612736, ptr %58, align 2
  %call.i.i67.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef nonnull %buf.i65.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i67.i)
  %cmp9.not.i68.i = icmp eq i32 %call.i.i67.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67.i)
  %cmp12.i69.i = icmp slt i32 %call.i.i67.i, 0
  %spec.select.i70.i = select i1 %cmp12.i69.i, i32 %call.i.i67.i, i32 -5
  %retval.0.i71.i = select i1 %cmp9.not.i68.i, i32 0, i32 %spec.select.i70.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i65.i) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %61 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val14, align 4
  %shl = shl i32 %62, 12
  %63 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i51) #7
  %65 = getelementptr inbounds [6 x i8], ptr %buf.i51, i32 0, i32 2
  %66 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 13568, ptr %buf.i51, align 2
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %shl, ptr %65, align 2
  %call.i.i54 = call i32 @i2c_transfer_buffer_flags(ptr noundef %64, ptr noundef nonnull %buf.i51, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i54)
  %cmp9.not.i55 = icmp eq i32 %call.i.i54, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp12.i56 = icmp slt i32 %call.i.i54, 0
  %spec.select.i57 = select i1 %cmp12.i56, i32 %call.i.i54, i32 -5
  %retval.0.i58 = select i1 %cmp9.not.i55, i32 0, i32 %spec.select.i57
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i51) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %cur_mode17 = getelementptr i8, ptr %1, i32 204
  %68 = ptrtoint ptr %cur_mode17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur_mode17, align 4
  %height18 = getelementptr inbounds %struct.ov9734_mode, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height18, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %72 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val19, align 4
  %add20 = add i32 %73, %71
  %74 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i59) #7
  %76 = getelementptr inbounds [6 x i8], ptr %buf.i59, i32 0, i32 2
  %77 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 14350, ptr %buf.i59, align 2
  %shl.i61 = shl i32 %add20, 16
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %shl.i61, ptr %76, align 2
  %call.i.i62 = call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef nonnull %buf.i59, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i62)
  %cmp9.not.i63 = icmp eq i32 %call.i.i62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %cmp12.i64 = icmp slt i32 %call.i.i62, 0
  %spec.select.i65 = select i1 %cmp12.i64, i32 %call.i.i62, i32 -5
  %retval.0.i66 = select i1 %cmp9.not.i63, i32 0, i32 %spec.select.i65
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i59) #7
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %79 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  %sub.i = shl i32 %80, 26
  %81 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i67) #7
  %83 = getelementptr inbounds [6 x i8], ptr %buf.i.i67, i32 0, i32 2
  %84 = ptrtoint ptr %buf.i.i67 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 20608, ptr %buf.i.i67, align 2
  %or.i = add i32 %sub.i, 2080374784
  %or.op.i = or i32 %or.i, -2147483648
  %shl.i.i69 = select i1 %tobool.not.i, i32 0, i32 %or.op.i
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %shl.i.i69, ptr %83, align 2
  %call.i.i.i70 = call i32 @i2c_transfer_buffer_flags(ptr noundef %82, ptr noundef nonnull %buf.i.i67, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i70)
  %cmp9.not.i.i71 = icmp eq i32 %call.i.i.i70, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i70)
  %cmp12.i.i72 = icmp slt i32 %call.i.i.i70, 0
  %spec.select.i.i73 = select i1 %cmp12.i.i72, i32 %call.i.i.i70, i32 -5
  %retval.0.i.i = select i1 %cmp9.not.i.i71, i32 0, i32 %spec.select.i.i73
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i67) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb16, %sw.bb13, %if.end16.i, %if.end12.i.sw.epilog_crit_edge, %if.end8.i.sw.epilog_crit_edge, %if.end4.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb, %if.end6.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.i, %sw.bb22 ], [ %retval.0.i66, %sw.bb16 ], [ %retval.0.i58, %sw.bb13 ], [ %retval.0.i, %sw.bb ], [ -22, %if.end6.sw.epilog_crit_edge ], [ %retval.0.i71.i, %if.end16.i ], [ %spec.select.i.i, %sw.bb10.sw.epilog_crit_edge ], [ %spec.select.i40.i, %if.end.i.sw.epilog_crit_edge ], [ %spec.select.i48.i, %if.end4.i.sw.epilog_crit_edge ], [ %spec.select.i56.i, %if.end8.i.sw.epilog_crit_edge ], [ %spec.select.i63.i, %if.end12.i.sw.epilog_crit_edge ]
  %call.i74 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_open(ptr noundef %sd, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ov9734, ptr %sd, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !150

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1296, ptr %5, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 734, ptr %height2.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12298, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.ov9734, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.ov9734, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %6 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %buf.i.i, align 2
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %6, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9734_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.ov9734, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %streaming = getelementptr inbounds %struct.ov9734, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ov9734_start_streaming(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.exit_crit_edge, label %if.then4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then4:                                         ; preds = %if.end
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %streaming, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #7
  %7 = getelementptr inbounds [6 x i8], ptr %buf.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %buf.i.i, align 2
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %7, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp9.not.i.i = icmp eq i32 %call.i.i.i, 3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #7
  br i1 %cmp9.not.i.i, label %if.then4.exit_crit_edge, label %do.end.i

if.then4.exit_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38) #10
  br label %exit

exit:                                             ; preds = %do.end.i, %if.then4.exit_crit_edge, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.exit_crit_edge ], [ 0, %entry.exit_crit_edge ], [ %call2, %if.then4.exit_crit_edge ], [ %call2, %do.end.i ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_ov9734__294_1037_ov9734_i2c_driver_init6, !1, !"__initcall__kmod_ov9734__294_1037_ov9734_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ov9734.c", i32 1037, i32 1}
!2 = !{ptr @__exitcall_ov9734_i2c_driver_exit, !1, !"__exitcall_ov9734_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/ov9734.c", i32 1039, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/ov9734.c", i32 1040, i32 1}
!7 = !{ptr @__UNIQUE_ID_description297, !8, !"__UNIQUE_ID_description297", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/ov9734.c", i32 1041, i32 1}
!9 = !{ptr @__UNIQUE_ID_file298, !10, !"__UNIQUE_ID_file298", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/ov9734.c", i32 1042, i32 1}
!11 = !{ptr @__UNIQUE_ID_license299, !10, !"__UNIQUE_ID_license299", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ov9734.c", i32 1029, i32 11}
!14 = !{ptr @ov9734_i2c_driver, !15, !"ov9734_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/ov9734.c", i32 1027, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/ov9734.c", i32 954, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ov9734_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ov9734_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ov9734.c", i32 966, i32 3}
!26 = !{ptr @ov9734_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ov9734_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ov9734_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/ov9734.c", i32 970, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/ov9734.c", i32 974, i32 3}
!33 = !{ptr @ov9734_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ov9734_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/ov9734.c", i32 985, i32 3}
!37 = !{ptr @ov9734_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ov9734_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ov9734.c", i32 991, i32 3}
!41 = !{ptr @ov9734_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ov9734_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ov9734.c", i32 888, i32 41}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/ov9734.c", i32 893, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ov9734_check_hwcfg._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ov9734_check_hwcfg._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/ov9734.c", i32 907, i32 3}
!52 = !{ptr @ov9734_check_hwcfg._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ov9734_check_hwcfg._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/ov9734.c", i32 920, i32 4}
!56 = !{ptr @ov9734_check_hwcfg._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ov9734_check_hwcfg._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @link_freq_menu_items, !59, !"link_freq_menu_items", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ov9734.c", i32 295, i32 18}
!60 = !{ptr @ov9734_subdev_ops, !61, !"ov9734_subdev_ops", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/ov9734.c", i32 842, i32 37}
!62 = !{ptr @ov9734_video_ops, !63, !"ov9734_video_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/ov9734.c", i32 831, i32 43}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ov9734.c", i32 624, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ov9734_start_streaming._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ov9734_start_streaming._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/ov9734.c", i32 631, i32 3}
!71 = !{ptr @ov9734_start_streaming._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ov9734_start_streaming._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/ov9734.c", i32 642, i32 3}
!75 = !{ptr @ov9734_start_streaming._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ov9734_start_streaming._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @link_freq_configs, !78, !"link_freq_configs", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/ov9734.c", i32 299, i32 45}
!79 = !{ptr @mipi_data_rate_360mbps, !80, !"mipi_data_rate_360mbps", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ov9734.c", i32 110, i32 32}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/ov9734.c", i32 428, i32 4}
!83 = !{ptr @ov9734_write_reg_list._rs, !82, !"_rs", i1 false, i1 false}
!84 = !{ptr @__func__.ov9734_write_reg_list, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ov9734_write_reg_list._entry, !82, !"_entry", i1 false, i1 false}
!87 = !{ptr @ov9734_write_reg_list._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ov9734.c", i32 653, i32 3}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ov9734_stop_streaming._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ov9734_stop_streaming._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ov9734_pad_ops, !94, !"ov9734_pad_ops", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/ov9734.c", i32 835, i32 41}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/ov9734.c", i32 866, i32 3}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ov9734_identify_module._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ov9734_identify_module._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @supported_modes, !103, !"supported_modes", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ov9734.c", i32 308, i32 33}
!104 = !{ptr @mode_1296x734_regs, !105, !"mode_1296x734_regs", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ov9734.c", i32 125, i32 32}
!106 = !{ptr @ov9734_init_controls._key, !107, !"_key", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ov9734.c", i32 549, i32 8}
!108 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ov9734_ctrl_ops, !110, !"ov9734_ctrl_ops", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/ov9734.c", i32 536, i32 35}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/ov9734.c", i32 288, i32 2}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ov9734.c", i32 289, i32 2}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/ov9734.c", i32 290, i32 2}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/i2c/ov9734.c", i32 291, i32 2}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ov9734.c", i32 292, i32 2}
!121 = !{ptr @ov9734_test_pattern_menu, !122, !"ov9734_test_pattern_menu", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/ov9734.c", i32 287, i32 27}
!123 = !{ptr @ov9734_internal_ops, !124, !"ov9734_internal_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/ov9734.c", i32 851, i32 46}
!125 = !{ptr @ov9734_subdev_entity_ops, !126, !"ov9734_subdev_entity_ops", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/ov9734.c", i32 847, i32 45}
!127 = !{ptr @ov9734_acpi_ids, !128, !"ov9734_acpi_ids", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/ov9734.c", i32 1020, i32 36}
!129 = !{ptr @ov9734_pm_ops, !130, !"ov9734_pm_ops", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/ov9734.c", i32 1016, i32 32}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{i64 1522507, i64 1522534}
!142 = !{i64 1522847, i64 1522874, i64 1522908, i64 1522929}
!143 = !{i64 1522337, i64 1522364}
!144 = !{i64 1523032, i64 1523059, i64 1523092, i64 1523113, i64 1523140, i64 1523166}
!145 = !{i8 0, i8 2}
!146 = !{i64 2148369499}
!147 = !{i64 854322, i64 854347, i64 854369, i64 854385, i64 854397, i64 854417, i64 854441, i64 854457, i64 854469}
!148 = !{i64 2148369687}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{!"branch_weights", i32 1, i32 2000}
