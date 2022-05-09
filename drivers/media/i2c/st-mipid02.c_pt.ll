; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/st-mipid02.c_pt.bc'
source_filename = "../drivers/media/i2c/st-mipid02.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mipid02_dev = type { ptr, [2 x %struct.regulator_bulk_data], %struct.v4l2_subdev, [3 x %struct.media_pad], ptr, ptr, %struct.v4l2_fwnode_endpoint, i64, %struct.v4l2_fwnode_endpoint, %struct.v4l2_async_notifier, ptr, %struct.anon.101, %struct.mutex, i8, %struct.v4l2_mbus_framefmt }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.100, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.100 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.anon.101 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_querymenu = type <{ i32, i32, %union.anon.103, i32 }>
%union.anon.103 = type { i64, [24 x i8] }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@__initcall__kmod_st_mipid02__302_1074_mipid02_i2c_driver_init6 = internal global ptr @mipid02_i2c_driver_init, section ".initcall6.init", align 4
@mipid02_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @mipid02_remove, ptr @mipid02_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mipid02_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mipid02_i2c_driver_exit = internal global ptr @mipid02_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [55 x i8] c"st_mipid02.author=Mickael Guene <mickael.guene@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [70 x i8] c"st_mipid02.description=STMicroelectronics MIPID02 CSI-2 bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [45 x i8] c"st_mipid02.file=drivers/media/i2c/st-mipid02\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"st_mipid02.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st-mipid02\00", [21 x i8] zeroinitializer }, align 32
@mipid02_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st-mipid02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mipid02_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @mipid02_video_ops, ptr null, ptr null, ptr null, ptr @mipid02_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclk\00", [27 x i8] zeroinitializer }, align 32
@mipid02_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 958, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get xclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mipid02_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/i2c/st-mipid02.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr = internal global ptr @mipid02_probe._entry, section ".printk_index", align 4
@mipid02_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 965, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"xclk freq must be in 6-27 Mhz range. got %d Hz\0A\00", [48 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.9 = internal global ptr @mipid02_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mipid02_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 973, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.13 = internal global ptr @mipid02_probe._entry.11, section ".printk_index", align 4
@mipid02_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 979, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get regulators %d\00", [36 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.16 = internal global ptr @mipid02_probe._entry.14, section ".printk_index", align 4
@mipid02_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&bridge->lock\00", [18 x i8] zeroinitializer }, align 32
@mipid02_subdev_entity_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@mipid02_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 993, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pads init failed %d\00", [44 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.20 = internal global ptr @mipid02_probe._entry.18, section ".printk_index", align 4
@mipid02_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1004, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to detect mipid02 %d\00", [36 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.23 = internal global ptr @mipid02_probe._entry.21, section ".printk_index", align 4
@mipid02_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1010, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to parse tx %d\00", [42 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.26 = internal global ptr @mipid02_probe._entry.24, section ".printk_index", align 4
@mipid02_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1016, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to parse rx %d\00", [42 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.29 = internal global ptr @mipid02_probe._entry.27, section ".printk_index", align 4
@mipid02_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1023, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"v4l2_async_register_subdev failed %d\00", [59 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.32 = internal global ptr @mipid02_probe._entry.30, section ".printk_index", align 4
@mipid02_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1027, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mipid02 device probe successfully\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mipid02_probe._entry_ptr.36 = internal global ptr @mipid02_probe._entry.33, section ".printk_index", align 4
@mipid02_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipid02_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@mipid02_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @mipid02_enum_mbus_code, ptr null, ptr null, ptr @mipid02_get_fmt, ptr @mipid02_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mipid02_s_stream.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st_mipid02\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mipid02_s_stream\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s : requested %d / current = %d\00", [63 x i8] zeroinitializer }, align 32
@mipid02_s_stream.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.4, ptr @.str.40, i8 0, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s current now = %d / %d\00", [39 x i8] zeroinitializer }, align 32
@mipid02_stream_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 613, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to stream on %d\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mipid02_stream_enable\00", [42 x i8] zeroinitializer }, align 32
@mipid02_stream_enable._entry_ptr = internal global ptr @mipid02_stream_enable._entry, section ".printk_index", align 4
@mipid02_configure_clk_lane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clk lane must be map to lane 0\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mipid02_configure_clk_lane\00", [37 x i8] zeroinitializer }, align 32
@mipid02_configure_clk_lane._entry_ptr = internal global ptr @mipid02_configure_clk_lane._entry, section ".printk_index", align 4
@mipid02_configure_from_rx_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get link frequency\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mipid02_configure_from_rx_speed\00", [32 x i8] zeroinitializer }, align 32
@mipid02_configure_from_rx_speed._entry_ptr = internal global ptr @mipid02_configure_from_rx_speed._entry, section ".printk_index", align 4
@mipid02_configure_from_rx_speed.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"detect link_freq = %d Hz\00", [39 x i8] zeroinitializer }, align 32
@mipid02_write_reg.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.48, ptr @.str.4, ptr @.str.49, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mipid02_write_reg\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: i2c_transfer, reg: %x => %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mipid02_stream_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 536, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to stream off %d\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mipid02_stream_disable\00", [41 x i8] zeroinitializer }, align 32
@mipid02_stream_disable._entry_ptr = internal global ptr @mipid02_stream_disable._entry, section ".printk_index", align 4
@mipid02_supported_fmt_codes = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 12289, i32 12307, i32 12290, i32 12308, i32 12295, i32 12302, i32 12298, i32 12303, i32 12296, i32 12304, i32 12305, i32 12306, i32 8207, i32 4115, i32 4104, i32 4103, i32 8200, i32 8198, i32 16385], [52 x i8] zeroinitializer }, align 32
@mipid02_get_fmt.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mipid02_get_fmt\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s probe %d\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@mipid02_set_fmt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mipid02_set_fmt\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s for %d\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDDE\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDIN\00", [26 x i8] zeroinitializer }, align 32
@mipid02_set_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mipid02_set_power_on\00", [43 x i8] zeroinitializer }, align 32
@mipid02_set_power_on._entry_ptr = internal global ptr @mipid02_set_power_on._entry, section ".printk_index", align 4
@mipid02_set_power_on._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to enable regulators\0A\00", [63 x i8] zeroinitializer }, align 32
@mipid02_set_power_on._entry_ptr.63 = internal global ptr @mipid02_set_power_on._entry.61, section ".printk_index", align 4
@mipid02_set_power_on.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.60, ptr @.str.4, ptr @.str.64, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apply reset\00", [20 x i8] zeroinitializer }, align 32
@mipid02_set_power_on.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.60, ptr @.str.4, ptr @.str.65, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"don't apply reset\00", [46 x i8] zeroinitializer }, align 32
@mipid02_read_reg.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mipid02_read_reg\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: %x i2c_transfer, reg: %x => %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mipid02_parse_tx_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 916, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to find port1 ep\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mipid02_parse_tx_ep\00", [44 x i8] zeroinitializer }, align 32
@mipid02_parse_tx_ep._entry_ptr = internal global ptr @mipid02_parse_tx_ep._entry, section ".printk_index", align 4
@mipid02_parse_tx_ep._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 923, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not parse v4l2 endpoint\0A\00", [33 x i8] zeroinitializer }, align 32
@mipid02_parse_tx_ep._entry_ptr.72 = internal global ptr @mipid02_parse_tx_ep._entry.70, section ".printk_index", align 4
@mipid02_parse_rx_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to find port0 ep\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mipid02_parse_rx_ep\00", [44 x i8] zeroinitializer }, align 32
@mipid02_parse_rx_ep._entry_ptr = internal global ptr @mipid02_parse_rx_ep._entry, section ".printk_index", align 4
@mipid02_parse_rx_ep._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 863, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not parse v4l2 endpoint %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mipid02_parse_rx_ep._entry_ptr.77 = internal global ptr @mipid02_parse_rx_ep._entry.75, section ".printk_index", align 4
@mipid02_parse_rx_ep._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.4, i32 870, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"max supported data lanes is 2 / got %d\00", [57 x i8] zeroinitializer }, align 32
@mipid02_parse_rx_ep._entry_ptr.80 = internal global ptr @mipid02_parse_rx_ep._entry.78, section ".printk_index", align 4
@mipid02_parse_rx_ep._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.4, i32 887, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail to register asd to notifier %ld\00", [59 x i8] zeroinitializer }, align 32
@mipid02_parse_rx_ep._entry_ptr.83 = internal global ptr @mipid02_parse_rx_ep._entry.81, section ".printk_index", align 4
@mipid02_notifier_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @mipid02_async_bound, ptr null, ptr @mipid02_async_unbind }, [20 x i8] zeroinitializer }, align 32
@mipid02_async_bound.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.84, ptr @.str.4, ptr @.str.85, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mipid02_async_bound\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sensor_async_bound call %p\00", [37 x i8] zeroinitializer }, align 32
@mipid02_async_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.4, i32 811, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't find output pad for subdev %s\0A\00", [56 x i8] zeroinitializer }, align 32
@mipid02_async_bound._entry_ptr = internal global ptr @mipid02_async_bound._entry, section ".printk_index", align 4
@mipid02_async_bound._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.84, ptr @.str.4, i32 820, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't create media link %d\00", [34 x i8] zeroinitializer }, align 32
@mipid02_async_bound._entry_ptr.89 = internal global ptr @mipid02_async_bound._entry.87, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 4103, i64 4104, i64 4115, i64 8198, i64 8200, i64 8207, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.90 = internal global [20 x i64] [i64 18, i64 32, i64 4103, i64 4104, i64 4115, i64 8198, i64 8200, i64 8207, i64 12289, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 4115, i64 8207]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 4115, i64 8207]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 4115, i64 8207]
@__sancov_gen_cov_switch_values.95 = internal global [20 x i64] [i64 18, i64 32, i64 4103, i64 4104, i64 4115, i64 8198, i64 8200, i64 8207, i64 12290, i64 12295, i64 12296, i64 12298, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308, i64 16385]
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"mipid02_i2c_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1065, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1067, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [15 x i8] c"mipid02_dt_ids\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1059, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"mipid02_subdev_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 786, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 956, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 958, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 964, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 969, i32 52 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 973, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 979, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 983, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"mipid02_subdev_entity_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 791, i32 45 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 993, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1004, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1010, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1016, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1022, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1027, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"mipid02_video_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 776, i32 43 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"mipid02_pad_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 780, i32 41 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 625, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 638, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 613, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 416, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 397, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 402, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 265, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 536, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [28 x i8] c"mipid02_supported_fmt_codes\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 57, i32 18 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 681, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 998, i32 6 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 750, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 72, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 73, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 302, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 309, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 315, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 318, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 239, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 916, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 923, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 855, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 862, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 869, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 886, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [21 x i8] c"mipid02_notifier_ops\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 838, i32 52 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 804, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 810, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [34 x i8] c"../drivers/media/i2c/st-mipid02.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 820, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_mipid02_i2c_driver_exit, ptr @__initcall__kmod_st_mipid02__302_1074_mipid02_i2c_driver_init6, ptr @mipid02_async_bound._entry, ptr @mipid02_async_bound._entry.87, ptr @mipid02_async_bound._entry_ptr, ptr @mipid02_async_bound._entry_ptr.89, ptr @mipid02_configure_clk_lane._entry, ptr @mipid02_configure_clk_lane._entry_ptr, ptr @mipid02_configure_from_rx_speed._entry, ptr @mipid02_configure_from_rx_speed._entry_ptr, ptr @mipid02_i2c_driver_exit, ptr @mipid02_parse_rx_ep._entry, ptr @mipid02_parse_rx_ep._entry.75, ptr @mipid02_parse_rx_ep._entry.78, ptr @mipid02_parse_rx_ep._entry.81, ptr @mipid02_parse_rx_ep._entry_ptr, ptr @mipid02_parse_rx_ep._entry_ptr.77, ptr @mipid02_parse_rx_ep._entry_ptr.80, ptr @mipid02_parse_rx_ep._entry_ptr.83, ptr @mipid02_parse_tx_ep._entry, ptr @mipid02_parse_tx_ep._entry.70, ptr @mipid02_parse_tx_ep._entry_ptr, ptr @mipid02_parse_tx_ep._entry_ptr.72, ptr @mipid02_probe._entry, ptr @mipid02_probe._entry.11, ptr @mipid02_probe._entry.14, ptr @mipid02_probe._entry.18, ptr @mipid02_probe._entry.21, ptr @mipid02_probe._entry.24, ptr @mipid02_probe._entry.27, ptr @mipid02_probe._entry.30, ptr @mipid02_probe._entry.33, ptr @mipid02_probe._entry.7, ptr @mipid02_probe._entry_ptr, ptr @mipid02_probe._entry_ptr.13, ptr @mipid02_probe._entry_ptr.16, ptr @mipid02_probe._entry_ptr.20, ptr @mipid02_probe._entry_ptr.23, ptr @mipid02_probe._entry_ptr.26, ptr @mipid02_probe._entry_ptr.29, ptr @mipid02_probe._entry_ptr.32, ptr @mipid02_probe._entry_ptr.36, ptr @mipid02_probe._entry_ptr.9, ptr @mipid02_set_power_on._entry, ptr @mipid02_set_power_on._entry.61, ptr @mipid02_set_power_on._entry_ptr, ptr @mipid02_set_power_on._entry_ptr.63, ptr @mipid02_stream_disable._entry, ptr @mipid02_stream_disable._entry_ptr, ptr @mipid02_stream_enable._entry, ptr @mipid02_stream_enable._entry_ptr, ptr @mipid02_i2c_driver, ptr @.str, ptr @mipid02_dt_ids, ptr @mipid02_subdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @mipid02_probe.__key, ptr @.str.17, ptr @mipid02_subdev_entity_ops, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @mipid02_video_ops, ptr @mipid02_pad_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @mipid02_supported_fmt_codes, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @mipid02_notifier_ops, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_subdev_entity_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_stream_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_configure_clk_lane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_configure_from_rx_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_stream_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_supported_fmt_codes to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_set_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_set_power_on._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_parse_tx_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_parse_tx_ep._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_parse_rx_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_parse_rx_ep._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_parse_rx_ep._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_parse_rx_ep._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_notifier_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_async_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipid02_async_bound._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mipid02_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mipid02_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mipid02_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mipid02_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipid02_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr i8, ptr %1, i32 436
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier) #7
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #7
  %supplies.i = getelementptr i8, ptr %1, i32 -24
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #7
  %xclk.i = getelementptr i8, ptr %1, i32 292
  %2 = ptrtoint ptr %xclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xclk.i, align 8
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %lock = getelementptr i8, ptr %1, i32 500
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipid02_probe(ptr noundef %client) #2 align 64 {
entry:
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i8], align 1
  %reg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 672, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 14
  %code.i = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12289, ptr %code.i, align 4
  %field.i = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 14, i32 3
  %1 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %colorspace.i, align 4
  %3 = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 14, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %3, align 4
  %quantization.i = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 14, i32 6
  %5 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 14, i32 7
  %6 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %xfer_func.i, align 4
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 640, ptr %fmt, align 4
  %height.i = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 480, ptr %height.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 8
  %sd = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 2
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @mipid02_subdev_ops) #7
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %xclk = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %xclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %xclk, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %11 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xclk, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @clk_get_rate(ptr noundef %call2) #7
  %14 = add i32 %call10, -27000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21000001, i32 %14)
  %15 = icmp ult i32 %14, -21000001
  br i1 %15, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call10) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %reset_gpio, align 4
  %cmp.i167 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  %17 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset_gpio, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %arrayidx1.i = getelementptr %struct.mipid02_dev, ptr %call.i, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.57, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.mipid02_dev, ptr %call.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.58, ptr %arrayidx1.1.i, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %call.i168 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef 2, ptr noundef %arrayidx1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool28.not = icmp eq i32 %call.i168, 0
  br i1 %tobool28.not, label %do.body34, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call.i168) #10
  br label %cleanup

do.body34:                                        ; preds = %if.end26
  %lock = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @mipid02_probe.__key) #7
  %flags = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or = or i32 %25, 4
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %26 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20482, ptr %function, align 4
  %ops = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 2, i32 0, i32 11
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mipid02_subdev_entity_ops, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 3
  %flags41 = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %28 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %flags41, align 4
  %flags44 = getelementptr %struct.mipid02_dev, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %29 = ptrtoint ptr %flags44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %flags44, align 4
  %flags47 = getelementptr %struct.mipid02_dev, ptr %call.i, i32 0, i32 3, i32 2, i32 4
  %30 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %flags47, align 4
  %call51 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 3, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call51) #10
  br label %mutex_cleanup

if.end58:                                         ; preds = %do.body34
  %call59 = tail call fastcc i32 @mipid02_set_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.mutex_cleanup_crit_edge

if.end58.mutex_cleanup_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %mutex_cleanup

if.end62:                                         ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #7
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %reg.i, align 1, !annotation !197
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %34 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %36 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %buf.i.i, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %36, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %39 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr.i.i, align 2
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %msg.i.i, align 4
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %33, align 8
  %flags8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %flags8.i.i, align 2
  %buf10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %buf10.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i.i, ptr %buf10.i.i, align 4
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 2, ptr %34, align 4
  %47 = load i16, ptr %addr.i.i, align 2
  %arrayidx13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx13.i.i, align 4
  %49 = load i16, ptr %33, align 8
  %50 = or i16 %49, 1
  %flags19.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %flags19.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %flags19.i.i, align 2
  %buf21.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %buf21.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %reg.i, ptr %buf21.i.i, align 4
  %len23.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i.i, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %len23.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %len23.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %54 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end70

do.body.i.i:                                      ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_read_reg.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_probe, %if.then29.i.i)) #7
          to label %do.end68 [label %if.then29.i.i], !srcloc !198

if.then29.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  %56 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr.i.i, align 2
  %conv31.i.i = zext i16 %57 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_read_reg.__UNIQUE_ID_ddebug292, ptr noundef %dev.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %conv31.i.i, i32 noundef 1, i32 noundef %call.i.i) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then29.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call.i.i) #10
  br label %power_off

if.end70:                                         ; preds = %if.end62
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #7
  %call71 = call fastcc i32 @mipid02_parse_tx_ep(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call71) #10
  br label %power_off

if.end78:                                         ; preds = %if.end70
  %call79 = call fastcc i32 @mipid02_parse_rx_ep(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end86, label %do.end84

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call79) #10
  br label %power_off

if.end86:                                         ; preds = %if.end78
  %call88 = call i32 @v4l2_async_register_subdev(ptr noundef %sd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end93, label %do.end98

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %call88) #10
  %notifier = getelementptr inbounds %struct.mipid02_dev, ptr %call.i, i32 0, i32 9
  call void @v4l2_async_nf_unregister(ptr noundef %notifier) #7
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  br label %power_off

do.end98:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34) #10
  br label %cleanup

power_off:                                        ; preds = %do.end93, %do.end84, %do.end76, %do.end68
  %ret.0 = phi i32 [ %call.i.i, %do.end68 ], [ %call71, %do.end76 ], [ %call79, %do.end84 ], [ %call88, %do.end93 ]
  %call.i169 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx1.i) #7
  %58 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xclk, align 8
  call void @clk_disable(ptr noundef %59) #7
  call void @clk_unprepare(ptr noundef %59) #7
  br label %mutex_cleanup

mutex_cleanup:                                    ; preds = %power_off, %if.end58.mutex_cleanup_crit_edge, %do.end56
  %ret.2 = phi i32 [ %call51, %do.end56 ], [ %call59, %if.end58.mutex_cleanup_crit_edge ], [ %ret.0, %power_off ]
  call void @mutex_destroy(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %mutex_cleanup, %do.end98, %do.end32, %do.end23, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end ], [ -22, %do.end15 ], [ %19, %do.end23 ], [ %call.i168, %do.end32 ], [ %ret.2, %mutex_cleanup ], [ 0, %do.end98 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipid02_set_power_on(ptr noundef %bridge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  %xclk = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 4
  %2 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xclk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i55.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %supplies = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 1
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60) #10
  %4 = ptrtoint ptr %xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xclk, align 8
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %reset_gpio = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 5
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %do.body21, label %do.body11

do.body11:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_set_power_on.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_set_power_on, %if.then16)) #7
          to label %do.end20 [label %if.then16], !srcloc !198

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_set_power_on.__UNIQUE_ID_ddebug294, ptr noundef %dev17, ptr noundef nonnull @.str.64) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body11
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  br label %cleanup

do.body21:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_set_power_on.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_set_power_on, %if.then33)) #7
          to label %do.end37 [label %if.then33], !srcloc !198

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_set_power_on.__UNIQUE_ID_ddebug295, ptr noundef %dev34, ptr noundef nonnull @.str.65) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body21
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end20, %do.end6, %do.end
  %retval.0 = phi i32 [ %retval.0.i55.ph, %do.end ], [ %call1, %do.end6 ], [ 0, %do.end37 ], [ 0, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipid02_parse_tx_ep(ptr nocapture noundef %bridge) unnamed_addr #2 align 64 {
entry:
  %ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep) #7
  %0 = call ptr @memset(ptr %ep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 4
  %3 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bridge, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %6, i32 noundef 2, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #10
  br label %cleanup

cond.end:                                         ; preds = %entry
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %call4 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode, ptr noundef nonnull %ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #10
  call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

if.end11:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %call) #7
  %tx = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 8
  %7 = call ptr @memcpy(ptr %tx, ptr %ep, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %do.end9 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipid02_parse_rx_ep(ptr noundef %bridge) unnamed_addr #2 align 64 {
entry:
  %ep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep) #7
  %0 = call ptr @memset(ptr %ep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %3 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bridge, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %6, i32 noundef 0, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #10
  br label %cleanup

cond.end:                                         ; preds = %entry
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %call4 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode, ptr noundef nonnull %ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %call4) #10
  br label %error_of_node_put

if.end11:                                         ; preds = %cond.end
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep, i32 0, i32 2, i32 2, i32 3
  %7 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_data_lanes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp ugt i8 %8, 2
  br i1 %cmp, label %do.end16, label %if.end22

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %conv) #10
  br label %error_of_node_put

if.end22:                                         ; preds = %if.end11
  %rx = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 6
  %9 = call ptr @memcpy(ptr %rx, ptr %ep, i32 64)
  %notifier = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 9
  call void @v4l2_async_nf_init(ptr noundef %notifier) #7
  %call32 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %notifier, ptr noundef %fwnode, i32 noundef 28) #7
  call void @of_node_put(ptr noundef nonnull %call) #7
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %10) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end22
  %11 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mipid02_notifier_ops, ptr %notifier, align 8
  %sd = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 2
  %call44 = call i32 @v4l2_async_subdev_nf_register(ptr noundef %sd, ptr noundef %notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end41.cleanup_crit_edge, label %if.then46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void @v4l2_async_nf_cleanup(ptr noundef %notifier) #7
  br label %cleanup

error_of_node_put:                                ; preds = %do.end16, %do.end9
  %ret.0 = phi i32 [ %call4, %do.end9 ], [ -22, %do.end16 ]
  call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %error_of_node_put, %if.then46, %if.end41.cleanup_crit_edge, %do.end37, %do.end
  %retval.0 = phi i32 [ %10, %do.end37 ], [ %call44, %if.then46 ], [ 0, %if.end41.cleanup_crit_edge ], [ %ret.0, %error_of_node_put ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipid02_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -28
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_s_stream.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_s_stream, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %streaming = getelementptr i8, ptr %sd, i32 592
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 4, !range !199
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_s_stream.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %enable, i32 noundef %4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %sd, i32 500
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %streaming5 = getelementptr i8, ptr %sd, i32 592
  %5 = ptrtoint ptr %streaming5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %streaming5, align 4, !range !199
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %enable)
  %cmp = icmp eq i32 %7, %enable
  br i1 %cmp, label %do.end.do.body20_crit_edge, label %if.end10

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool11 = icmp ne i32 %enable, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call fastcc i32 @mipid02_stream_enable(ptr noundef %add.ptr.i)
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call fastcc i32 @mipid02_stream_disable(ptr noundef %add.ptr.i)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call12, %cond.true ], [ %call13, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool14.not = icmp eq i32 %cond, 0
  br i1 %tobool14.not, label %if.then15, label %cond.end.do.body20_crit_edge

cond.end.do.body20_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.then15:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %frombool18 = zext i1 %tobool11 to i8
  %8 = ptrtoint ptr %streaming5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool18, ptr %streaming5, align 4
  br label %do.body20

do.body20:                                        ; preds = %if.then15, %cond.end.do.body20_crit_edge, %do.end.do.body20_crit_edge
  %ret.0 = phi i32 [ 0, %do.end.do.body20_crit_edge ], [ %cond, %cond.end.do.body20_crit_edge ], [ 0, %if.then15 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_s_stream.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_s_stream, %if.then32)) #7
          to label %do.end39 [label %if.then32], !srcloc !198

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %streaming5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %streaming5, align 4, !range !199
  %11 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_s_stream.__UNIQUE_ID_ddebug298, ptr noundef %dev33, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %11, i32 noundef %ret.0) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then32, %do.body20
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipid02_stream_enable(ptr noundef %bridge) unnamed_addr #2 align 64 {
entry:
  %msg.i262 = alloca %struct.i2c_msg, align 4
  %buf.i263 = alloca [3 x i8], align 1
  %msg.i248 = alloca %struct.i2c_msg, align 4
  %buf.i249 = alloca [3 x i8], align 1
  %msg.i234 = alloca %struct.i2c_msg, align 4
  %buf.i235 = alloca [3 x i8], align 1
  %msg.i220 = alloca %struct.i2c_msg, align 4
  %buf.i221 = alloca [3 x i8], align 1
  %msg.i206 = alloca %struct.i2c_msg, align 4
  %buf.i207 = alloca [3 x i8], align 1
  %msg.i192 = alloca %struct.i2c_msg, align 4
  %buf.i193 = alloca [3 x i8], align 1
  %msg.i178 = alloca %struct.i2c_msg, align 4
  %buf.i179 = alloca [3 x i8], align 1
  %msg.i164 = alloca %struct.i2c_msg, align 4
  %buf.i165 = alloca [3 x i8], align 1
  %msg.i150 = alloca %struct.i2c_msg, align 4
  %buf.i151 = alloca [3 x i8], align 1
  %msg.i136 = alloca %struct.i2c_msg, align 4
  %buf.i137 = alloca [3 x i8], align 1
  %msg.i122 = alloca %struct.i2c_msg, align 4
  %buf.i123 = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  %s_subdev = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 10
  %2 = ptrtoint ptr %s_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_subdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11
  %4 = call ptr @memset(ptr %r, i32 0, i32 9)
  %data_lanes.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 6, i32 2, i32 2, i32 1
  %5 = ptrtoint ptr %data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data_lanes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i = icmp eq i8 %6, 2
  %lane_polarities.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 6, i32 2, i32 2, i32 4
  %num_data_lanes.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 6, i32 2, i32 2, i32 3
  %7 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_data_lanes.i, align 1
  %clock_lane.i.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 6, i32 2, i32 2, i32 2
  %9 = ptrtoint ptr %clock_lane.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clock_lane.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not.i.i = icmp eq i8 %10, 0
  br i1 %cmp.not.i.i, label %if.end.i, label %mipid02_configure_from_rx.exit.thread

mipid02_configure_from_rx.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.43) #10
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %lane_polarities.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lane_polarities.i, align 1, !range !199
  %13 = shl nuw nsw i8 %12, 1
  %14 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %r, align 4
  %16 = or i8 %13, %15
  %or613.i.i = or i8 %16, 1
  store i8 %or613.i.i, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 1
  %17 = and i1 %cmp.i, %cmp.i.i
  br i1 %17, label %if.end.i.mipid02_configure_data0_lane.exit.i_crit_edge, label %if.end.i49.i

if.end.i.mipid02_configure_data0_lane.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipid02_configure_data0_lane.exit.i

if.end.i49.i:                                     ; preds = %if.end.i
  %cond.in.in.v.i.i = select i1 %cmp.i, i32 2, i32 1
  %cond.in.in.i.i = getelementptr i8, ptr %lane_polarities.i, i32 %cond.in.in.v.i.i
  %18 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %cond.in.i.i = load i8, ptr %cond.in.in.i.i, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond.in.i.i)
  %tobool5.not.i.i = icmp eq i8 %cond.in.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then11.i.i, label %if.end.i49.i.if.end12.i.i_crit_edge

if.end.i49.i.if.end12.i.i_crit_edge:              ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_lane0_reg1.i.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %data_lane0_reg1.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %data_lane0_reg1.i.i, align 1
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end.i49.i.if.end12.i.i_crit_edge
  %data_lane0_reg114.i.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %data_lane0_reg114.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data_lane0_reg114.i.i, align 1
  %22 = or i8 %21, 1
  store i8 %22, ptr %data_lane0_reg114.i.i, align 1
  br label %mipid02_configure_data0_lane.exit.i

mipid02_configure_data0_lane.exit.i:              ; preds = %if.end12.i.i, %if.end.i.mipid02_configure_data0_lane.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i50.i = icmp ne i8 %8, 1
  %brmerge.i.i = or i1 %cmp.i, %cmp.i50.i
  br i1 %brmerge.i.i, label %if.end.i55.i, label %mipid02_configure_data0_lane.exit.i.mipid02_configure_from_rx.exit_crit_edge

mipid02_configure_data0_lane.exit.i.mipid02_configure_from_rx.exit_crit_edge: ; preds = %mipid02_configure_data0_lane.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipid02_configure_from_rx.exit

if.end.i55.i:                                     ; preds = %mipid02_configure_data0_lane.exit.i
  %cond.in.in.v.i51.i = select i1 %cmp.i, i32 1, i32 2
  %cond.in.in.i52.i = getelementptr i8, ptr %lane_polarities.i, i32 %cond.in.in.v.i51.i
  %23 = ptrtoint ptr %cond.in.in.i52.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %cond.in.i53.i = load i8, ptr %cond.in.in.i52.i, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond.in.i53.i)
  %tobool5.not.i54.i = icmp eq i8 %cond.in.i53.i, 0
  br i1 %tobool5.not.i54.i, label %if.end.i55.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end.i55.i.if.end11.i.i_crit_edge:              ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_lane1_reg1.i.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 2
  %24 = ptrtoint ptr %data_lane1_reg1.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %data_lane1_reg1.i.i, align 2
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end.i55.i.if.end11.i.i_crit_edge
  %data_lane1_reg113.i.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %data_lane1_reg113.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data_lane1_reg113.i.i, align 2
  %27 = or i8 %26, 1
  store i8 %27, ptr %data_lane1_reg113.i.i, align 2
  br label %mipid02_configure_from_rx.exit

mipid02_configure_from_rx.exit:                   ; preds = %if.end11.i.i, %mipid02_configure_data0_lane.exit.i.mipid02_configure_from_rx.exit_crit_edge
  %cond.i = select i1 %cmp.i, i8 4, i8 0
  %mode_reg1.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 3
  %28 = ptrtoint ptr %mode_reg1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mode_reg1.i, align 1
  %sub.i = shl i8 %8, 1
  %shl.i = add i8 %sub.i, -2
  %or.i = or i8 %shl.i, %cond.i
  %or24.i = or i8 %or.i, %29
  store i8 %or24.i, ptr %mode_reg1.i, align 1
  %call26.i = tail call fastcc i32 @mipid02_configure_from_rx_speed(ptr noundef %bridge) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool1.not = icmp eq i32 %call26.i, 0
  br i1 %tobool1.not, label %if.end3, label %mipid02_configure_from_rx.exit.do.end_crit_edge

mipid02_configure_from_rx.exit.do.end_crit_edge:  ; preds = %mipid02_configure_from_rx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end3:                                          ; preds = %mipid02_configure_from_rx.exit
  %data_selection_ctrl.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 5
  %30 = ptrtoint ptr %data_selection_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %data_selection_ctrl.i, align 1
  %bus.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 8, i32 2
  %bus_width.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 8, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bus_width.i, align 4
  %pix_width_ctrl.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 7
  %33 = ptrtoint ptr %pix_width_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %pix_width_ctrl.i, align 1
  %pix_width_ctrl_emb.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 8
  %34 = ptrtoint ptr %pix_width_ctrl_emb.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %pix_width_ctrl_emb.i, align 4
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus.i, align 4
  %and.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.if.end.i115_crit_edge, label %if.then.i

if.end3.if.end.i115_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i115

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %mode_reg2.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 4
  %37 = ptrtoint ptr %mode_reg2.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mode_reg2.i, align 4
  %39 = or i8 %38, 2
  store i8 %39, ptr %mode_reg2.i, align 4
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i, %if.end3.if.end.i115_crit_edge
  %and13.i = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i115.mipid02_configure_from_tx.exit_crit_edge, label %if.then15.i

if.end.i115.mipid02_configure_from_tx.exit_crit_edge: ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipid02_configure_from_tx.exit

if.then15.i:                                      ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  %mode_reg217.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 4
  %40 = ptrtoint ptr %mode_reg217.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mode_reg217.i, align 4
  %42 = or i8 %41, 4
  store i8 %42, ptr %mode_reg217.i, align 4
  br label %mipid02_configure_from_tx.exit

mipid02_configure_from_tx.exit:                   ; preds = %if.then15.i, %if.end.i115.mipid02_configure_from_tx.exit_crit_edge
  %data_id_rreg.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 6
  %43 = ptrtoint ptr %data_id_rreg.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %data_id_rreg.i, align 2
  %code.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 14, i32 2
  %44 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %code.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 16385
  br i1 %cmp.not.i, label %mipid02_configure_from_tx.exit.if.end11_crit_edge, label %if.then.i117

mipid02_configure_from_tx.exit.if.end11_crit_edge: ; preds = %mipid02_configure_from_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then.i117:                                     ; preds = %mipid02_configure_from_tx.exit
  %46 = ptrtoint ptr %data_selection_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 12, ptr %data_selection_ctrl.i, align 1
  %47 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %45, label %if.then.i117.do.end_crit_edge [
    i32 12289, label %if.then.i117.if.end.i118_crit_edge
    i32 12307, label %if.then.i117.if.end.i118_crit_edge304
    i32 12290, label %if.then.i117.if.end.i118_crit_edge305
    i32 12308, label %if.then.i117.if.end.i118_crit_edge306
    i32 12295, label %if.then.i117.sw.bb1.i.i_crit_edge
    i32 12302, label %if.then.i117.sw.bb1.i.i_crit_edge307
    i32 12298, label %if.then.i117.sw.bb1.i.i_crit_edge308
    i32 12303, label %if.then.i117.sw.bb1.i.i_crit_edge309
    i32 12296, label %if.then.i117.sw.bb2.i.i_crit_edge
    i32 12304, label %if.then.i117.sw.bb2.i.i_crit_edge310
    i32 12305, label %if.then.i117.sw.bb2.i.i_crit_edge311
    i32 12306, label %if.then.i117.sw.bb2.i.i_crit_edge312
    i32 8207, label %if.then.i117.sw.bb3.i.i_crit_edge
    i32 8200, label %if.then.i117.sw.bb3.i.i_crit_edge313
    i32 8198, label %if.then.i117.sw.bb3.i.i_crit_edge314
    i32 4115, label %sw.bb4.i.i
    i32 4104, label %if.then.i117.sw.bb5.i.i_crit_edge
    i32 4103, label %if.then.i117.sw.bb5.i.i_crit_edge315
  ]

if.then.i117.sw.bb5.i.i_crit_edge315:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i.i

if.then.i117.sw.bb5.i.i_crit_edge:                ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i.i

if.then.i117.sw.bb3.i.i_crit_edge314:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then.i117.sw.bb3.i.i_crit_edge313:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then.i117.sw.bb3.i.i_crit_edge:                ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then.i117.sw.bb2.i.i_crit_edge312:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

if.then.i117.sw.bb2.i.i_crit_edge311:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

if.then.i117.sw.bb2.i.i_crit_edge310:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

if.then.i117.sw.bb2.i.i_crit_edge:                ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

if.then.i117.sw.bb1.i.i_crit_edge309:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then.i117.sw.bb1.i.i_crit_edge308:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then.i117.sw.bb1.i.i_crit_edge307:             ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then.i117.sw.bb1.i.i_crit_edge:                ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then.i117.if.end.i118_crit_edge306:            ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i118

if.then.i117.if.end.i118_crit_edge305:            ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i118

if.then.i117.if.end.i118_crit_edge304:            ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i118

if.then.i117.if.end.i118_crit_edge:               ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i118

if.then.i117.do.end_crit_edge:                    ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb1.i.i:                                       ; preds = %if.then.i117.sw.bb1.i.i_crit_edge, %if.then.i117.sw.bb1.i.i_crit_edge307, %if.then.i117.sw.bb1.i.i_crit_edge308, %if.then.i117.sw.bb1.i.i_crit_edge309
  br label %if.end.i118

sw.bb2.i.i:                                       ; preds = %if.then.i117.sw.bb2.i.i_crit_edge, %if.then.i117.sw.bb2.i.i_crit_edge310, %if.then.i117.sw.bb2.i.i_crit_edge311, %if.then.i117.sw.bb2.i.i_crit_edge312
  br label %if.end.i118

sw.bb3.i.i:                                       ; preds = %if.then.i117.sw.bb3.i.i_crit_edge, %if.then.i117.sw.bb3.i.i_crit_edge313, %if.then.i117.sw.bb3.i.i_crit_edge314
  br label %if.end.i118

sw.bb4.i.i:                                       ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i118

sw.bb5.i.i:                                       ; preds = %if.then.i117.sw.bb5.i.i_crit_edge, %if.then.i117.sw.bb5.i.i_crit_edge315
  br label %if.end.i118

if.end.i118:                                      ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.i117.if.end.i118_crit_edge, %if.then.i117.if.end.i118_crit_edge304, %if.then.i117.if.end.i118_crit_edge305, %if.then.i117.if.end.i118_crit_edge306
  %retval.0.i.ph.i = phi i8 [ 42, %if.then.i117.if.end.i118_crit_edge ], [ 42, %if.then.i117.if.end.i118_crit_edge304 ], [ 42, %if.then.i117.if.end.i118_crit_edge305 ], [ 42, %if.then.i117.if.end.i118_crit_edge306 ], [ 43, %sw.bb1.i.i ], [ 44, %sw.bb2.i.i ], [ 30, %sw.bb3.i.i ], [ 36, %sw.bb4.i.i ], [ 34, %sw.bb5.i.i ]
  %48 = ptrtoint ptr %data_id_rreg.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %retval.0.i.ph.i, ptr %data_id_rreg.i, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.end.i118, %mipid02_configure_from_tx.exit.if.end11_crit_edge
  %49 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %r, align 4
  %51 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %53 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %55 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %56 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %57 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %buf.i, align 1
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %55, align 1
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %50, ptr %56, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 1
  %60 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr.i, align 2
  %62 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %msg.i, align 4
  %63 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %52, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %65 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %66 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i, ptr %buf8.i, align 4
  %67 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 3, ptr %53, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 3
  %68 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i120 = icmp slt i32 %call.i, 0
  br i1 %cmp.i120, label %do.body.i, label %if.end16

do.body.i:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i)) #7
          to label %mipid02_write_reg.exit [label %if.then13.i], !srcloc !198

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 2, i32 noundef %call.i) #7
  br label %mipid02_write_reg.exit

mipid02_write_reg.exit:                           ; preds = %if.then13.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.end

if.end16:                                         ; preds = %if.end11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %70 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i122) #7
  %72 = getelementptr inbounds i8, ptr %msg.i122, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i123) #7
  %74 = getelementptr inbounds [3 x i8], ptr %buf.i123, i32 0, i32 1
  %75 = getelementptr inbounds [3 x i8], ptr %buf.i123, i32 0, i32 2
  %76 = ptrtoint ptr %buf.i123 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %buf.i123, align 1
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 4, ptr %74, align 1
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %75, align 1
  %addr.i124 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 1
  %79 = ptrtoint ptr %addr.i124 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %addr.i124, align 2
  %81 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %msg.i122, align 4
  %82 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %71, align 8
  %flags7.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 1
  %84 = ptrtoint ptr %flags7.i125 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %flags7.i125, align 2
  %buf8.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 3
  %85 = ptrtoint ptr %buf8.i126 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf.i123, ptr %buf8.i126, align 4
  %86 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 3, ptr %72, align 4
  %adapter.i128 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 3
  %87 = ptrtoint ptr %adapter.i128 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %adapter.i128, align 8
  %call.i129 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i122, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp.i130 = icmp slt i32 %call.i129, 0
  br i1 %cmp.i130, label %do.body.i131, label %if.end20

do.body.i131:                                     ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i133)) #7
          to label %mipid02_write_reg.exit135 [label %if.then13.i133], !srcloc !198

if.then13.i133:                                   ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i132 = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i132, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef %call.i129) #7
  br label %mipid02_write_reg.exit135

mipid02_write_reg.exit135:                        ; preds = %if.then13.i133, %do.body.i131
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i123) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i122) #7
  br label %do.end

if.end20:                                         ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i123) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i122) #7
  %data_lane0_reg1 = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 1
  %89 = ptrtoint ptr %data_lane0_reg1 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %data_lane0_reg1, align 1
  %91 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i136) #7
  %93 = getelementptr inbounds i8, ptr %msg.i136, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i137) #7
  %95 = getelementptr inbounds [3 x i8], ptr %buf.i137, i32 0, i32 1
  %96 = getelementptr inbounds [3 x i8], ptr %buf.i137, i32 0, i32 2
  %97 = ptrtoint ptr %buf.i137 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %buf.i137, align 1
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %95, align 1
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %90, ptr %96, align 1
  %addr.i138 = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 1
  %100 = ptrtoint ptr %addr.i138 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %addr.i138, align 2
  %102 = ptrtoint ptr %msg.i136 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %msg.i136, align 4
  %103 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %92, align 8
  %flags7.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 0, i32 1
  %105 = ptrtoint ptr %flags7.i139 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %flags7.i139, align 2
  %buf8.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 0, i32 3
  %106 = ptrtoint ptr %buf8.i140 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buf.i137, ptr %buf8.i140, align 4
  %107 = ptrtoint ptr %93 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 3, ptr %93, align 4
  %adapter.i142 = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 3
  %108 = ptrtoint ptr %adapter.i142 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %adapter.i142, align 8
  %call.i143 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i136, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %cmp.i144 = icmp slt i32 %call.i143, 0
  br i1 %cmp.i144, label %do.body.i145, label %if.end25

do.body.i145:                                     ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i147)) #7
          to label %mipid02_write_reg.exit149 [label %if.then13.i147], !srcloc !198

if.then13.i147:                                   ; preds = %do.body.i145
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i146 = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i146, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 5, i32 noundef %call.i143) #7
  br label %mipid02_write_reg.exit149

mipid02_write_reg.exit149:                        ; preds = %if.then13.i147, %do.body.i145
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i137) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i136) #7
  br label %do.end

if.end25:                                         ; preds = %if.end20
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i137) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i136) #7
  %110 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i150) #7
  %112 = getelementptr inbounds i8, ptr %msg.i150, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i151) #7
  %114 = getelementptr inbounds [3 x i8], ptr %buf.i151, i32 0, i32 1
  %115 = getelementptr inbounds [3 x i8], ptr %buf.i151, i32 0, i32 2
  %116 = ptrtoint ptr %buf.i151 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %buf.i151, align 1
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 6, ptr %114, align 1
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %115, align 1
  %addr.i152 = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 1
  %119 = ptrtoint ptr %addr.i152 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %addr.i152, align 2
  %121 = ptrtoint ptr %msg.i150 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %msg.i150, align 4
  %122 = ptrtoint ptr %111 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %111, align 8
  %flags7.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150, i32 0, i32 1
  %124 = ptrtoint ptr %flags7.i153 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %flags7.i153, align 2
  %buf8.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150, i32 0, i32 3
  %125 = ptrtoint ptr %buf8.i154 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %buf.i151, ptr %buf8.i154, align 4
  %126 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 3, ptr %112, align 4
  %adapter.i156 = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 3
  %127 = ptrtoint ptr %adapter.i156 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter.i156, align 8
  %call.i157 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i150, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp.i158 = icmp slt i32 %call.i157, 0
  br i1 %cmp.i158, label %do.body.i159, label %if.end29

do.body.i159:                                     ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i161)) #7
          to label %mipid02_write_reg.exit163 [label %if.then13.i161], !srcloc !198

if.then13.i161:                                   ; preds = %do.body.i159
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i160 = getelementptr inbounds %struct.i2c_client, ptr %111, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i160, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 6, i32 noundef %call.i157) #7
  br label %mipid02_write_reg.exit163

mipid02_write_reg.exit163:                        ; preds = %if.then13.i161, %do.body.i159
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i151) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i150) #7
  br label %do.end

if.end29:                                         ; preds = %if.end25
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i151) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i150) #7
  %data_lane1_reg1 = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 2
  %129 = ptrtoint ptr %data_lane1_reg1 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %data_lane1_reg1, align 2
  %131 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i164) #7
  %133 = getelementptr inbounds i8, ptr %msg.i164, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %133, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i165) #7
  %135 = getelementptr inbounds [3 x i8], ptr %buf.i165, i32 0, i32 1
  %136 = getelementptr inbounds [3 x i8], ptr %buf.i165, i32 0, i32 2
  %137 = ptrtoint ptr %buf.i165 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %buf.i165, align 1
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 9, ptr %135, align 1
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %130, ptr %136, align 1
  %addr.i166 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 1
  %140 = ptrtoint ptr %addr.i166 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %addr.i166, align 2
  %142 = ptrtoint ptr %msg.i164 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %msg.i164, align 4
  %143 = ptrtoint ptr %132 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %132, align 8
  %flags7.i167 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 1
  %145 = ptrtoint ptr %flags7.i167 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %flags7.i167, align 2
  %buf8.i168 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i164, i32 0, i32 3
  %146 = ptrtoint ptr %buf8.i168 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buf.i165, ptr %buf8.i168, align 4
  %147 = ptrtoint ptr %133 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 3, ptr %133, align 4
  %adapter.i170 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 3
  %148 = ptrtoint ptr %adapter.i170 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %adapter.i170, align 8
  %call.i171 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i164, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %cmp.i172 = icmp slt i32 %call.i171, 0
  br i1 %cmp.i172, label %do.body.i173, label %if.end34

do.body.i173:                                     ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i175)) #7
          to label %mipid02_write_reg.exit177 [label %if.then13.i175], !srcloc !198

if.then13.i175:                                   ; preds = %do.body.i173
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i174 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i174, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 9, i32 noundef %call.i171) #7
  br label %mipid02_write_reg.exit177

mipid02_write_reg.exit177:                        ; preds = %if.then13.i175, %do.body.i173
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i165) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i164) #7
  br label %do.end

if.end34:                                         ; preds = %if.end29
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i165) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i164) #7
  %150 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i178) #7
  %152 = getelementptr inbounds i8, ptr %msg.i178, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 262143, ptr %152, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i179) #7
  %154 = getelementptr inbounds [3 x i8], ptr %buf.i179, i32 0, i32 1
  %155 = getelementptr inbounds [3 x i8], ptr %buf.i179, i32 0, i32 2
  %156 = ptrtoint ptr %buf.i179 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %buf.i179, align 1
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 10, ptr %154, align 1
  %158 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %155, align 1
  %addr.i180 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 1
  %159 = ptrtoint ptr %addr.i180 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %addr.i180, align 2
  %161 = ptrtoint ptr %msg.i178 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %msg.i178, align 4
  %162 = ptrtoint ptr %151 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %151, align 8
  %flags7.i181 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 0, i32 1
  %164 = ptrtoint ptr %flags7.i181 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %flags7.i181, align 2
  %buf8.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 0, i32 3
  %165 = ptrtoint ptr %buf8.i182 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %buf.i179, ptr %buf8.i182, align 4
  %adapter.i184 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 3
  %166 = ptrtoint ptr %adapter.i184 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %adapter.i184, align 8
  %call.i185 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %msg.i178, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp.i186, label %do.body.i187, label %if.end38

do.body.i187:                                     ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i189)) #7
          to label %mipid02_write_reg.exit191 [label %if.then13.i189], !srcloc !198

if.then13.i189:                                   ; preds = %do.body.i187
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i188 = getelementptr inbounds %struct.i2c_client, ptr %151, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i188, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 10, i32 noundef %call.i185) #7
  br label %mipid02_write_reg.exit191

mipid02_write_reg.exit191:                        ; preds = %if.then13.i189, %do.body.i187
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i179) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i178) #7
  br label %do.end

if.end38:                                         ; preds = %if.end34
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i179) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i178) #7
  %168 = ptrtoint ptr %mode_reg1.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %mode_reg1.i, align 1
  %170 = or i8 %169, 64
  %171 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i192) #7
  %173 = getelementptr inbounds i8, ptr %msg.i192, i32 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 262143, ptr %173, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i193) #7
  %175 = getelementptr inbounds [3 x i8], ptr %buf.i193, i32 0, i32 1
  %176 = getelementptr inbounds [3 x i8], ptr %buf.i193, i32 0, i32 2
  %177 = ptrtoint ptr %buf.i193 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %buf.i193, align 1
  %178 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 20, ptr %175, align 1
  %179 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %170, ptr %176, align 1
  %addr.i194 = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 1
  %180 = ptrtoint ptr %addr.i194 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %addr.i194, align 2
  %182 = ptrtoint ptr %msg.i192 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %msg.i192, align 4
  %183 = ptrtoint ptr %172 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %172, align 8
  %flags7.i195 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192, i32 0, i32 1
  %185 = ptrtoint ptr %flags7.i195 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %flags7.i195, align 2
  %buf8.i196 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i192, i32 0, i32 3
  %186 = ptrtoint ptr %buf8.i196 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %buf.i193, ptr %buf8.i196, align 4
  %adapter.i198 = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 3
  %187 = ptrtoint ptr %adapter.i198 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %adapter.i198, align 8
  %call.i199 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %msg.i192, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %cmp.i200 = icmp slt i32 %call.i199, 0
  br i1 %cmp.i200, label %do.body.i201, label %if.end44

do.body.i201:                                     ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i203)) #7
          to label %mipid02_write_reg.exit205 [label %if.then13.i203], !srcloc !198

if.then13.i203:                                   ; preds = %do.body.i201
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i202 = getelementptr inbounds %struct.i2c_client, ptr %172, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i202, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 20, i32 noundef %call.i199) #7
  br label %mipid02_write_reg.exit205

mipid02_write_reg.exit205:                        ; preds = %if.then13.i203, %do.body.i201
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i193) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i192) #7
  br label %do.end

if.end44:                                         ; preds = %if.end38
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i193) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i192) #7
  %mode_reg2 = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11, i32 4
  %189 = ptrtoint ptr %mode_reg2 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %mode_reg2, align 4
  %191 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i206) #7
  %193 = getelementptr inbounds i8, ptr %msg.i206, i32 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 262143, ptr %193, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i207) #7
  %195 = getelementptr inbounds [3 x i8], ptr %buf.i207, i32 0, i32 1
  %196 = getelementptr inbounds [3 x i8], ptr %buf.i207, i32 0, i32 2
  %197 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %buf.i207, align 1
  %198 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 21, ptr %195, align 1
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %190, ptr %196, align 1
  %addr.i208 = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 1
  %200 = ptrtoint ptr %addr.i208 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %addr.i208, align 2
  %202 = ptrtoint ptr %msg.i206 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %msg.i206, align 4
  %203 = ptrtoint ptr %192 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %192, align 8
  %flags7.i209 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i206, i32 0, i32 1
  %205 = ptrtoint ptr %flags7.i209 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %204, ptr %flags7.i209, align 2
  %buf8.i210 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i206, i32 0, i32 3
  %206 = ptrtoint ptr %buf8.i210 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %buf.i207, ptr %buf8.i210, align 4
  %adapter.i212 = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 3
  %207 = ptrtoint ptr %adapter.i212 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %adapter.i212, align 8
  %call.i213 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %msg.i206, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %cmp.i214 = icmp slt i32 %call.i213, 0
  br i1 %cmp.i214, label %do.body.i215, label %if.end49

do.body.i215:                                     ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i217)) #7
          to label %mipid02_write_reg.exit219 [label %if.then13.i217], !srcloc !198

if.then13.i217:                                   ; preds = %do.body.i215
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i216 = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i216, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 21, i32 noundef %call.i213) #7
  br label %mipid02_write_reg.exit219

mipid02_write_reg.exit219:                        ; preds = %if.then13.i217, %do.body.i215
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i207) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i206) #7
  br label %do.end

if.end49:                                         ; preds = %if.end44
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i207) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i206) #7
  %209 = ptrtoint ptr %data_id_rreg.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %data_id_rreg.i, align 2
  %211 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i220) #7
  %213 = getelementptr inbounds i8, ptr %msg.i220, i32 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 262143, ptr %213, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i221) #7
  %215 = getelementptr inbounds [3 x i8], ptr %buf.i221, i32 0, i32 1
  %216 = getelementptr inbounds [3 x i8], ptr %buf.i221, i32 0, i32 2
  %217 = ptrtoint ptr %buf.i221 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %buf.i221, align 1
  %218 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 23, ptr %215, align 1
  %219 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %210, ptr %216, align 1
  %addr.i222 = getelementptr inbounds %struct.i2c_client, ptr %212, i32 0, i32 1
  %220 = ptrtoint ptr %addr.i222 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %addr.i222, align 2
  %222 = ptrtoint ptr %msg.i220 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %msg.i220, align 4
  %223 = ptrtoint ptr %212 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %212, align 8
  %flags7.i223 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220, i32 0, i32 1
  %225 = ptrtoint ptr %flags7.i223 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %224, ptr %flags7.i223, align 2
  %buf8.i224 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220, i32 0, i32 3
  %226 = ptrtoint ptr %buf8.i224 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %buf.i221, ptr %buf8.i224, align 4
  %adapter.i226 = getelementptr inbounds %struct.i2c_client, ptr %212, i32 0, i32 3
  %227 = ptrtoint ptr %adapter.i226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %adapter.i226, align 8
  %call.i227 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %msg.i220, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %cmp.i228 = icmp slt i32 %call.i227, 0
  br i1 %cmp.i228, label %do.body.i229, label %if.end54

do.body.i229:                                     ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i231)) #7
          to label %mipid02_write_reg.exit233 [label %if.then13.i231], !srcloc !198

if.then13.i231:                                   ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i230 = getelementptr inbounds %struct.i2c_client, ptr %212, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i230, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 23, i32 noundef %call.i227) #7
  br label %mipid02_write_reg.exit233

mipid02_write_reg.exit233:                        ; preds = %if.then13.i231, %do.body.i229
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i221) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i220) #7
  br label %do.end

if.end54:                                         ; preds = %if.end49
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i221) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i220) #7
  %229 = ptrtoint ptr %data_selection_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %data_selection_ctrl.i, align 1
  %231 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i234) #7
  %233 = getelementptr inbounds i8, ptr %msg.i234, i32 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 262143, ptr %233, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i235) #7
  %235 = getelementptr inbounds [3 x i8], ptr %buf.i235, i32 0, i32 1
  %236 = getelementptr inbounds [3 x i8], ptr %buf.i235, i32 0, i32 2
  %237 = ptrtoint ptr %buf.i235 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %buf.i235, align 1
  %238 = ptrtoint ptr %235 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 25, ptr %235, align 1
  %239 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %230, ptr %236, align 1
  %addr.i236 = getelementptr inbounds %struct.i2c_client, ptr %232, i32 0, i32 1
  %240 = ptrtoint ptr %addr.i236 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %addr.i236, align 2
  %242 = ptrtoint ptr %msg.i234 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %241, ptr %msg.i234, align 4
  %243 = ptrtoint ptr %232 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %232, align 8
  %flags7.i237 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234, i32 0, i32 1
  %245 = ptrtoint ptr %flags7.i237 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %244, ptr %flags7.i237, align 2
  %buf8.i238 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234, i32 0, i32 3
  %246 = ptrtoint ptr %buf8.i238 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %buf.i235, ptr %buf8.i238, align 4
  %adapter.i240 = getelementptr inbounds %struct.i2c_client, ptr %232, i32 0, i32 3
  %247 = ptrtoint ptr %adapter.i240 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %adapter.i240, align 8
  %call.i241 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %msg.i234, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %cmp.i242 = icmp slt i32 %call.i241, 0
  br i1 %cmp.i242, label %do.body.i243, label %if.end59

do.body.i243:                                     ; preds = %if.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i245)) #7
          to label %mipid02_write_reg.exit247 [label %if.then13.i245], !srcloc !198

if.then13.i245:                                   ; preds = %do.body.i243
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i244 = getelementptr inbounds %struct.i2c_client, ptr %232, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i244, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 25, i32 noundef %call.i241) #7
  br label %mipid02_write_reg.exit247

mipid02_write_reg.exit247:                        ; preds = %if.then13.i245, %do.body.i243
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i235) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i234) #7
  br label %do.end

if.end59:                                         ; preds = %if.end54
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i235) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i234) #7
  %249 = ptrtoint ptr %pix_width_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %pix_width_ctrl.i, align 1
  %251 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i248) #7
  %253 = getelementptr inbounds i8, ptr %msg.i248, i32 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 262143, ptr %253, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i249) #7
  %255 = getelementptr inbounds [3 x i8], ptr %buf.i249, i32 0, i32 1
  %256 = getelementptr inbounds [3 x i8], ptr %buf.i249, i32 0, i32 2
  %257 = ptrtoint ptr %buf.i249 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %buf.i249, align 1
  %258 = ptrtoint ptr %255 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 30, ptr %255, align 1
  %259 = ptrtoint ptr %256 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %250, ptr %256, align 1
  %addr.i250 = getelementptr inbounds %struct.i2c_client, ptr %252, i32 0, i32 1
  %260 = ptrtoint ptr %addr.i250 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %addr.i250, align 2
  %262 = ptrtoint ptr %msg.i248 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %261, ptr %msg.i248, align 4
  %263 = ptrtoint ptr %252 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %252, align 8
  %flags7.i251 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i248, i32 0, i32 1
  %265 = ptrtoint ptr %flags7.i251 to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %264, ptr %flags7.i251, align 2
  %buf8.i252 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i248, i32 0, i32 3
  %266 = ptrtoint ptr %buf8.i252 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %buf.i249, ptr %buf8.i252, align 4
  %adapter.i254 = getelementptr inbounds %struct.i2c_client, ptr %252, i32 0, i32 3
  %267 = ptrtoint ptr %adapter.i254 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %adapter.i254, align 8
  %call.i255 = call i32 @i2c_transfer(ptr noundef %268, ptr noundef nonnull %msg.i248, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %cmp.i256 = icmp slt i32 %call.i255, 0
  br i1 %cmp.i256, label %do.body.i257, label %if.end64

do.body.i257:                                     ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i259)) #7
          to label %mipid02_write_reg.exit261 [label %if.then13.i259], !srcloc !198

if.then13.i259:                                   ; preds = %do.body.i257
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i258 = getelementptr inbounds %struct.i2c_client, ptr %252, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i258, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 30, i32 noundef %call.i255) #7
  br label %mipid02_write_reg.exit261

mipid02_write_reg.exit261:                        ; preds = %if.then13.i259, %do.body.i257
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i249) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i248) #7
  br label %do.end

if.end64:                                         ; preds = %if.end59
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i249) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i248) #7
  %269 = ptrtoint ptr %pix_width_ctrl_emb.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %pix_width_ctrl_emb.i, align 4
  %271 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i262) #7
  %273 = getelementptr inbounds i8, ptr %msg.i262, i32 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 262143, ptr %273, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i263) #7
  %275 = getelementptr inbounds [3 x i8], ptr %buf.i263, i32 0, i32 1
  %276 = getelementptr inbounds [3 x i8], ptr %buf.i263, i32 0, i32 2
  %277 = ptrtoint ptr %buf.i263 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %buf.i263, align 1
  %278 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 31, ptr %275, align 1
  %279 = ptrtoint ptr %276 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %270, ptr %276, align 1
  %addr.i264 = getelementptr inbounds %struct.i2c_client, ptr %272, i32 0, i32 1
  %280 = ptrtoint ptr %addr.i264 to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %addr.i264, align 2
  %282 = ptrtoint ptr %msg.i262 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %281, ptr %msg.i262, align 4
  %283 = ptrtoint ptr %272 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %272, align 8
  %flags7.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i262, i32 0, i32 1
  %285 = ptrtoint ptr %flags7.i265 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %284, ptr %flags7.i265, align 2
  %buf8.i266 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i262, i32 0, i32 3
  %286 = ptrtoint ptr %buf8.i266 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %buf.i263, ptr %buf8.i266, align 4
  %adapter.i268 = getelementptr inbounds %struct.i2c_client, ptr %272, i32 0, i32 3
  %287 = ptrtoint ptr %adapter.i268 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %adapter.i268, align 8
  %call.i269 = call i32 @i2c_transfer(ptr noundef %288, ptr noundef nonnull %msg.i262, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp.i270 = icmp slt i32 %call.i269, 0
  br i1 %cmp.i270, label %do.body.i271, label %mipid02_write_reg.exit275.thread

mipid02_write_reg.exit275.thread:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i263) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i262) #7
  br label %cleanup

do.body.i271:                                     ; preds = %if.end64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_enable, %if.then13.i273)) #7
          to label %mipid02_write_reg.exit275 [label %if.then13.i273], !srcloc !198

if.then13.i273:                                   ; preds = %do.body.i271
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i272 = getelementptr inbounds %struct.i2c_client, ptr %272, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i272, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 31, i32 noundef %call.i269) #7
  br label %mipid02_write_reg.exit275

mipid02_write_reg.exit275:                        ; preds = %if.then13.i273, %do.body.i271
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i263) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i262) #7
  br label %do.end

do.end:                                           ; preds = %mipid02_write_reg.exit275, %mipid02_write_reg.exit261, %mipid02_write_reg.exit247, %mipid02_write_reg.exit233, %mipid02_write_reg.exit219, %mipid02_write_reg.exit205, %mipid02_write_reg.exit191, %mipid02_write_reg.exit177, %mipid02_write_reg.exit163, %mipid02_write_reg.exit149, %mipid02_write_reg.exit135, %mipid02_write_reg.exit, %if.then.i117.do.end_crit_edge, %mipid02_configure_from_rx.exit.do.end_crit_edge, %mipid02_configure_from_rx.exit.thread, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ %call26.i, %mipid02_configure_from_rx.exit.do.end_crit_edge ], [ %call.i, %mipid02_write_reg.exit ], [ %call.i129, %mipid02_write_reg.exit135 ], [ %call.i143, %mipid02_write_reg.exit149 ], [ %call.i157, %mipid02_write_reg.exit163 ], [ %call.i171, %mipid02_write_reg.exit177 ], [ %call.i185, %mipid02_write_reg.exit191 ], [ %call.i199, %mipid02_write_reg.exit205 ], [ %call.i213, %mipid02_write_reg.exit219 ], [ %call.i227, %mipid02_write_reg.exit233 ], [ %call.i241, %mipid02_write_reg.exit247 ], [ %call.i255, %mipid02_write_reg.exit261 ], [ %call.i269, %mipid02_write_reg.exit275 ], [ -22, %entry.do.end_crit_edge ], [ -22, %mipid02_configure_from_rx.exit.thread ], [ -22, %if.then.i117.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %ret.0) #10
  %call70 = call fastcc i32 @mipid02_stream_disable(ptr noundef %bridge)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mipid02_write_reg.exit275.thread
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %mipid02_write_reg.exit275.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipid02_stream_disable(ptr nocapture noundef readonly %bridge) unnamed_addr #2 align 64 {
entry:
  %msg.i33 = alloca %struct.i2c_msg, align 4
  %buf.i34 = alloca [3 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %buf.i20 = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 262143, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %buf.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %5, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 8
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags7.i, align 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf8.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_disable, %if.then13.i)) #7
          to label %mipid02_write_reg.exit [label %if.then13.i], !srcloc !198

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 2, i32 noundef %call.i) #7
  br label %mipid02_write_reg.exit

mipid02_write_reg.exit:                           ; preds = %if.then13.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %do.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %18 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #7
  %20 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262143, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i20) #7
  %22 = getelementptr inbounds [3 x i8], ptr %buf.i20, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %buf.i20, i32 0, i32 2
  %24 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %buf.i20, align 1
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %22, align 1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %23, align 1
  %addr.i21 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i21 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr.i21, align 2
  %29 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %msg.i19, align 4
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %19, align 8
  %flags7.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %32 = ptrtoint ptr %flags7.i22 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %flags7.i22, align 2
  %buf8.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %33 = ptrtoint ptr %buf8.i23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i20, ptr %buf8.i23, align 4
  %adapter.i25 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %34 = ptrtoint ptr %adapter.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i25, align 8
  %call.i26 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i19, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %do.body.i28, label %if.end4

do.body.i28:                                      ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_disable, %if.then13.i30)) #7
          to label %mipid02_write_reg.exit32 [label %if.then13.i30], !srcloc !198

if.then13.i30:                                    ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i29 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i29, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 5, i32 noundef %call.i26) #7
  br label %mipid02_write_reg.exit32

mipid02_write_reg.exit32:                         ; preds = %if.then13.i30, %do.body.i28
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i20) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #7
  br label %do.end

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i20) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #7
  %36 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bridge, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i33) #7
  %38 = getelementptr inbounds i8, ptr %msg.i33, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 262143, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i34) #7
  %40 = getelementptr inbounds [3 x i8], ptr %buf.i34, i32 0, i32 1
  %41 = getelementptr inbounds [3 x i8], ptr %buf.i34, i32 0, i32 2
  %42 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %buf.i34, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %40, align 1
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %41, align 1
  %addr.i35 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %45 = ptrtoint ptr %addr.i35 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr.i35, align 2
  %47 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %msg.i33, align 4
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %37, align 8
  %flags7.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 1
  %50 = ptrtoint ptr %flags7.i36 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %flags7.i36, align 2
  %buf8.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 3
  %51 = ptrtoint ptr %buf8.i37 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i34, ptr %buf8.i37, align 4
  %adapter.i39 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 3
  %52 = ptrtoint ptr %adapter.i39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i39, align 8
  %call.i40 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i33, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i41 = icmp slt i32 %call.i40, 0
  br i1 %cmp.i41, label %do.body.i42, label %error.thread55

error.thread55:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i34) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i33) #7
  br label %if.end11

do.body.i42:                                      ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_stream_disable, %if.then13.i44)) #7
          to label %error [label %if.then13.i44], !srcloc !198

if.then13.i44:                                    ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i43 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_write_reg.__UNIQUE_ID_ddebug293, ptr noundef %dev.i43, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 9, i32 noundef %call.i40) #7
  br label %error

error:                                            ; preds = %if.then13.i44, %do.body.i42
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i34) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i33) #7
  br label %do.end

do.end:                                           ; preds = %error, %mipid02_write_reg.exit32, %mipid02_write_reg.exit
  %ret.053 = phi i32 [ %call.i40, %error ], [ %call.i26, %mipid02_write_reg.exit32 ], [ %call.i, %mipid02_write_reg.exit ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %ret.053) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end, %error.thread55
  %ret.054 = phi i32 [ %ret.053, %do.end ], [ 0, %error.thread55 ]
  ret i32 %ret.054
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mipid02_configure_from_rx_speed(ptr nocapture noundef %bridge) unnamed_addr #2 align 64 {
entry:
  %qm.i = alloca %struct.v4l2_querymenu, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  %s_subdev = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 10
  %2 = ptrtoint ptr %s_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_subdev, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %qm.i) #7
  %4 = getelementptr inbounds i8, ptr %qm.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 36)
  %6 = ptrtoint ptr %qm.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10422529, ptr %qm.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_handler.i, align 4
  %call.i = tail call ptr @v4l2_ctrl_find(ptr noundef %8, i32 noundef 10422529) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.mipid02_get_link_freq_from_cid_link_freq.exit.thread_crit_edge, label %if.end.i

entry.mipid02_get_link_freq_from_cid_link_freq.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipid02_get_link_freq_from_cid_link_freq.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %call.i) #7
  %index.i = getelementptr inbounds %struct.v4l2_querymenu, ptr %qm.i, i32 0, i32 1
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1.i, ptr %index.i, align 4
  %10 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_handler.i, align 4
  %call3.i = call i32 @v4l2_querymenu(ptr noundef %11, ptr noundef nonnull %qm.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %mipid02_get_link_freq_from_cid_link_freq.exit, label %if.end.i.mipid02_get_link_freq_from_cid_link_freq.exit.thread_crit_edge

if.end.i.mipid02_get_link_freq_from_cid_link_freq.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipid02_get_link_freq_from_cid_link_freq.exit.thread

mipid02_get_link_freq_from_cid_link_freq.exit.thread: ; preds = %if.end.i.mipid02_get_link_freq_from_cid_link_freq.exit.thread_crit_edge, %entry.mipid02_get_link_freq_from_cid_link_freq.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %qm.i) #7
  br label %if.then

mipid02_get_link_freq_from_cid_link_freq.exit:    ; preds = %if.end.i
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %4, align 4
  %conv.i = trunc i64 %13 to i32
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %qm.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %mipid02_get_link_freq_from_cid_link_freq.exit.if.then_crit_edge, label %mipid02_get_link_freq_from_cid_link_freq.exit.do.body5_crit_edge

mipid02_get_link_freq_from_cid_link_freq.exit.do.body5_crit_edge: ; preds = %mipid02_get_link_freq_from_cid_link_freq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

mipid02_get_link_freq_from_cid_link_freq.exit.if.then_crit_edge: ; preds = %mipid02_get_link_freq_from_cid_link_freq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %mipid02_get_link_freq_from_cid_link_freq.exit.if.then_crit_edge, %mipid02_get_link_freq_from_cid_link_freq.exit.thread
  %code.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code.i, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %15, label %sw.default.i.i [
    i32 12289, label %if.then.bpp_from_code.exit.i_crit_edge
    i32 12307, label %if.then.bpp_from_code.exit.i_crit_edge39
    i32 12290, label %if.then.bpp_from_code.exit.i_crit_edge40
    i32 12308, label %if.then.bpp_from_code.exit.i_crit_edge41
    i32 12295, label %if.then.sw.bb1.i.i_crit_edge
    i32 12302, label %if.then.sw.bb1.i.i_crit_edge42
    i32 12298, label %if.then.sw.bb1.i.i_crit_edge43
    i32 12303, label %if.then.sw.bb1.i.i_crit_edge44
    i32 12296, label %if.then.sw.bb2.i.i_crit_edge
    i32 12304, label %if.then.sw.bb2.i.i_crit_edge45
    i32 12305, label %if.then.sw.bb2.i.i_crit_edge46
    i32 12306, label %if.then.sw.bb2.i.i_crit_edge47
    i32 8207, label %if.then.sw.bb3.i.i_crit_edge
    i32 8200, label %if.then.sw.bb3.i.i_crit_edge48
    i32 8198, label %if.then.sw.bb3.i.i_crit_edge49
    i32 4104, label %if.then.sw.bb3.i.i_crit_edge50
    i32 4103, label %if.then.sw.bb3.i.i_crit_edge51
    i32 4115, label %sw.bb4.i.i
  ]

if.then.sw.bb3.i.i_crit_edge51:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then.sw.bb3.i.i_crit_edge50:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then.sw.bb3.i.i_crit_edge49:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then.sw.bb3.i.i_crit_edge48:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then.sw.bb3.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.then.sw.bb2.i.i_crit_edge47:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

if.then.sw.bb2.i.i_crit_edge46:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

if.then.sw.bb2.i.i_crit_edge45:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

if.then.sw.bb2.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i.i

if.then.sw.bb1.i.i_crit_edge44:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then.sw.bb1.i.i_crit_edge43:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then.sw.bb1.i.i_crit_edge42:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then.sw.bb1.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i

if.then.bpp_from_code.exit.i_crit_edge41:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpp_from_code.exit.i

if.then.bpp_from_code.exit.i_crit_edge40:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpp_from_code.exit.i

if.then.bpp_from_code.exit.i_crit_edge39:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpp_from_code.exit.i

if.then.bpp_from_code.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpp_from_code.exit.i

sw.bb1.i.i:                                       ; preds = %if.then.sw.bb1.i.i_crit_edge, %if.then.sw.bb1.i.i_crit_edge42, %if.then.sw.bb1.i.i_crit_edge43, %if.then.sw.bb1.i.i_crit_edge44
  br label %bpp_from_code.exit.i

sw.bb2.i.i:                                       ; preds = %if.then.sw.bb2.i.i_crit_edge, %if.then.sw.bb2.i.i_crit_edge45, %if.then.sw.bb2.i.i_crit_edge46, %if.then.sw.bb2.i.i_crit_edge47
  br label %bpp_from_code.exit.i

sw.bb3.i.i:                                       ; preds = %if.then.sw.bb3.i.i_crit_edge, %if.then.sw.bb3.i.i_crit_edge48, %if.then.sw.bb3.i.i_crit_edge49, %if.then.sw.bb3.i.i_crit_edge50, %if.then.sw.bb3.i.i_crit_edge51
  br label %bpp_from_code.exit.i

sw.bb4.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpp_from_code.exit.i

sw.default.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpp_from_code.exit.i

bpp_from_code.exit.i:                             ; preds = %sw.default.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then.bpp_from_code.exit.i_crit_edge, %if.then.bpp_from_code.exit.i_crit_edge39, %if.then.bpp_from_code.exit.i_crit_edge40, %if.then.bpp_from_code.exit.i_crit_edge41
  %retval.0.i.i = phi i32 [ 0, %sw.default.i.i ], [ 24, %sw.bb4.i.i ], [ 16, %sw.bb3.i.i ], [ 12, %sw.bb2.i.i ], [ 10, %sw.bb1.i.i ], [ 8, %if.then.bpp_from_code.exit.i_crit_edge ], [ 8, %if.then.bpp_from_code.exit.i_crit_edge39 ], [ 8, %if.then.bpp_from_code.exit.i_crit_edge40 ], [ 8, %if.then.bpp_from_code.exit.i_crit_edge41 ]
  %17 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_handler.i, align 4
  %call1.i29 = call ptr @v4l2_ctrl_find(ptr noundef %18, i32 noundef 10422530) #7
  %tobool.not.i30 = icmp eq ptr %call1.i29, null
  br i1 %tobool.not.i30, label %bpp_from_code.exit.i.do.end_crit_edge, label %mipid02_get_link_freq_from_cid_pixel_rate.exit

bpp_from_code.exit.i.do.end_crit_edge:            ; preds = %bpp_from_code.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

mipid02_get_link_freq_from_cid_pixel_rate.exit:   ; preds = %bpp_from_code.exit.i
  %call2.i = call i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef nonnull %call1.i29) #7
  %conv.i31 = trunc i64 %call2.i to i32
  %mul.i = mul i32 %retval.0.i.i, %conv.i31
  %num_data_lanes.i = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 6, i32 2, i32 2, i32 3
  %19 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_data_lanes.i, align 1
  %conv3.i = zext i8 %20 to i32
  %mul4.i = shl nuw nsw i32 %conv3.i, 1
  %div.i = udiv i32 %mul.i, %mul4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.i, i32 %mul.i)
  %tobool2.not = icmp ugt i32 %mul4.i, %mul.i
  br i1 %tobool2.not, label %mipid02_get_link_freq_from_cid_pixel_rate.exit.do.end_crit_edge, label %mipid02_get_link_freq_from_cid_pixel_rate.exit.do.body5_crit_edge

mipid02_get_link_freq_from_cid_pixel_rate.exit.do.body5_crit_edge: ; preds = %mipid02_get_link_freq_from_cid_pixel_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

mipid02_get_link_freq_from_cid_pixel_rate.exit.do.end_crit_edge: ; preds = %mipid02_get_link_freq_from_cid_pixel_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %mipid02_get_link_freq_from_cid_pixel_rate.exit.do.end_crit_edge, %bpp_from_code.exit.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  br label %cleanup

do.body5:                                         ; preds = %mipid02_get_link_freq_from_cid_pixel_rate.exit.do.body5_crit_edge, %mipid02_get_link_freq_from_cid_link_freq.exit.do.body5_crit_edge
  %link_freq.0 = phi i32 [ %conv.i, %mipid02_get_link_freq_from_cid_link_freq.exit.do.body5_crit_edge ], [ %div.i, %mipid02_get_link_freq_from_cid_pixel_rate.exit.do.body5_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_configure_from_rx_speed.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_configure_from_rx_speed, %if.then10)) #7
          to label %do.end14 [label %if.then10], !srcloc !198

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_configure_from_rx_speed.__UNIQUE_ID_ddebug296, ptr noundef %dev11, ptr noundef nonnull @.str.47, i32 noundef %link_freq.0) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body5
  %div = udiv i32 2000000000, %link_freq.0
  %r = getelementptr inbounds %struct.mipid02_dev, ptr %bridge, i32 0, i32 11
  %21 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %r, align 4
  %div.tr = trunc i32 %div to i8
  %23 = shl i8 %div.tr, 2
  %conv15 = or i8 %23, %22
  store i8 %conv15, ptr %r, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end
  %retval.0 = phi i32 [ 0, %do.end14 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_querymenu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mipid02_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %4)
  %cmp = icmp ugt i32 %4, 18
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [19 x i32], ptr @mipid02_supported_fmt_codes, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  %index4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %7 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then6, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb3
  %code7 = getelementptr i8, ptr %sd, i32 604
  %9 = ptrtoint ptr %code7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code7, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %10, label %if.end3.i [
    i32 8207, label %if.then6.sw.epilog.sink.split_crit_edge
    i32 4115, label %if.then2.i
  ]

if.then6.sw.epilog.sink.split_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then2.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end3.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end3.i, %if.then2.i, %if.then6.sw.epilog.sink.split_crit_edge, %if.else
  %retval.0.i.sink = phi i32 [ %6, %if.else ], [ 4123, %if.then2.i ], [ %10, %if.end3.i ], [ 8198, %if.then6.sw.epilog.sink.split_crit_edge ]
  %code9 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %12 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.sink, ptr %code9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %sw.bb3.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipid02_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -28
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_get_fmt.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_get_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_get_fmt.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pad5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp9 = icmp eq i32 %5, 1
  %or.cond = or i1 %cmp, %cmp9
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %5, %conv.i
  br i1 %cmp.not.i, label %if.then13.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !200

if.then13.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then13.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %5, %if.then13.v4l2_subdev_get_try_format.exit_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i
  br label %if.end18

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %fmt17 = getelementptr i8, ptr %sd, i32 596
  br label %if.end18

if.end18:                                         ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %fmt.0 = phi ptr [ %arrayidx.i, %v4l2_subdev_get_try_format.exit ], [ %fmt17, %if.else ]
  %lock = getelementptr i8, ptr %sd, i32 500
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %12 = call ptr @memcpy(ptr %format1, ptr %fmt.0, i32 48)
  %13 = ptrtoint ptr %pad5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pad5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp20 = icmp eq i32 %14, 2
  br i1 %cmp20, label %if.then21, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %16, label %if.end3.i [
    i32 8207, label %if.then21.serial_to_parallel_code.exit_crit_edge
    i32 4115, label %if.then2.i
  ]

if.then21.serial_to_parallel_code.exit_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %serial_to_parallel_code.exit

if.then2.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %serial_to_parallel_code.exit

if.end3.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %serial_to_parallel_code.exit

serial_to_parallel_code.exit:                     ; preds = %if.end3.i, %if.then2.i, %if.then21.serial_to_parallel_code.exit_crit_edge
  %retval.0.i41 = phi i32 [ 4123, %if.then2.i ], [ %16, %if.end3.i ], [ 8198, %if.then21.serial_to_parallel_code.exit_crit_edge ]
  %18 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i41, ptr %code, align 4
  br label %if.end24

if.end24:                                         ; preds = %serial_to_parallel_code.exit, %if.end18.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipid02_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -28
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_set_fmt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_set_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_set_fmt.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pad4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %4 = ptrtoint ptr %pad4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp8 = icmp eq i32 %5, 1
  %or.cond = or i1 %cmp, %cmp8
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %lock = getelementptr i8, ptr %sd, i32 500
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %streaming = getelementptr i8, ptr %sd, i32 592
  %6 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %streaming, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.error_crit_edge

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end13:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %pad4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp15 = icmp eq i32 %9, 2
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %format1.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt.i = getelementptr i8, ptr %sd, i32 596
  %10 = call ptr @memcpy(ptr %format1.i, ptr %fmt.i, i32 48)
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %12, label %if.end3.i.i [
    i32 8207, label %if.then16.serial_to_parallel_code.exit.i_crit_edge
    i32 4115, label %if.then2.i.i
  ]

if.then16.serial_to_parallel_code.exit.i_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %serial_to_parallel_code.exit.i

if.then2.i.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %serial_to_parallel_code.exit.i

if.end3.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %serial_to_parallel_code.exit.i

serial_to_parallel_code.exit.i:                   ; preds = %if.end3.i.i, %if.then2.i.i, %if.then16.serial_to_parallel_code.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 4123, %if.then2.i.i ], [ %12, %if.end3.i.i ], [ 8198, %if.then16.serial_to_parallel_code.exit.i_crit_edge ]
  %14 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %code.i, align 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.i, label %serial_to_parallel_code.exit.i.error_crit_edge

serial_to_parallel_code.exit.i.error_crit_edge:   ; preds = %serial_to_parallel_code.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end.i:                                         ; preds = %serial_to_parallel_code.exit.i
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %17 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %18)
  %cmp.not.i.i = icmp ugt i16 %18, 2
  br i1 %cmp.not.i.i, label %if.end.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !200

if.end.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.end.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ 2, %if.end.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %19 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %20, i32 %spec.select.i.i
  %21 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %format1.i, i32 48)
  br label %error

if.else:                                          ; preds = %if.end13
  %code.i32 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %code.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %code.i32, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %23, label %if.else.get_fmt_code.exit.i_crit_edge [
    i32 16385, label %cleanup.fold.split22.i.i
    i32 12307, label %cleanup.fold.split.i.i
    i32 12290, label %cleanup.fold.split6.i.i
    i32 12308, label %cleanup.fold.split7.i.i
    i32 12295, label %cleanup.fold.split8.i.i
    i32 12302, label %cleanup.fold.split9.i.i
    i32 12298, label %cleanup.fold.split10.i.i
    i32 12303, label %cleanup.fold.split11.i.i
    i32 12296, label %cleanup.fold.split12.i.i
    i32 12304, label %cleanup.fold.split13.i.i
    i32 12305, label %cleanup.fold.split14.i.i
    i32 12306, label %cleanup.fold.split15.i.i
    i32 8207, label %cleanup.fold.split16.i.i
    i32 4115, label %cleanup.fold.split17.i.i
    i32 4104, label %cleanup.fold.split18.i.i
    i32 4103, label %cleanup.fold.split19.i.i
    i32 8200, label %cleanup.fold.split20.i.i
    i32 8198, label %cleanup.fold.split21.i.i
  ]

if.else.get_fmt_code.exit.i_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split.i.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split6.i.i:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split7.i.i:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split8.i.i:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split9.i.i:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split10.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split11.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split12.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split13.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split14.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split15.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split16.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split17.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split18.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split19.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split20.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split21.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

cleanup.fold.split22.i.i:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fmt_code.exit.i

get_fmt_code.exit.i:                              ; preds = %cleanup.fold.split22.i.i, %cleanup.fold.split21.i.i, %cleanup.fold.split20.i.i, %cleanup.fold.split19.i.i, %cleanup.fold.split18.i.i, %cleanup.fold.split17.i.i, %cleanup.fold.split16.i.i, %cleanup.fold.split15.i.i, %cleanup.fold.split14.i.i, %cleanup.fold.split13.i.i, %cleanup.fold.split12.i.i, %cleanup.fold.split11.i.i, %cleanup.fold.split10.i.i, %cleanup.fold.split9.i.i, %cleanup.fold.split8.i.i, %cleanup.fold.split7.i.i, %cleanup.fold.split6.i.i, %cleanup.fold.split.i.i, %if.else.get_fmt_code.exit.i_crit_edge
  %retval.0.i.i33 = phi i32 [ %23, %cleanup.fold.split.i.i ], [ %23, %cleanup.fold.split6.i.i ], [ %23, %cleanup.fold.split7.i.i ], [ %23, %cleanup.fold.split8.i.i ], [ %23, %cleanup.fold.split9.i.i ], [ %23, %cleanup.fold.split10.i.i ], [ %23, %cleanup.fold.split11.i.i ], [ %23, %cleanup.fold.split12.i.i ], [ %23, %cleanup.fold.split13.i.i ], [ %23, %cleanup.fold.split14.i.i ], [ %23, %cleanup.fold.split15.i.i ], [ %23, %cleanup.fold.split16.i.i ], [ %23, %cleanup.fold.split17.i.i ], [ %23, %cleanup.fold.split18.i.i ], [ %23, %cleanup.fold.split19.i.i ], [ %23, %cleanup.fold.split20.i.i ], [ %23, %cleanup.fold.split21.i.i ], [ %23, %cleanup.fold.split22.i.i ], [ 12289, %if.else.get_fmt_code.exit.i_crit_edge ]
  %25 = ptrtoint ptr %code.i32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.i33, ptr %code.i32, align 4
  %26 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %get_fmt_code.exit.i
  %num_pads.i.i35 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %28 = ptrtoint ptr %num_pads.i.i35 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %num_pads.i.i35, align 4
  %conv.i.i36 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i.i36)
  %cmp.not.i.i37 = icmp ult i32 %9, %conv.i.i36
  br i1 %cmp.not.i.i37, label %if.then.i.v4l2_subdev_get_try_format.exit.i41_crit_edge, label %do.end.i.i38, !prof !200

if.then.i.v4l2_subdev_get_try_format.exit.i41_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_subdev_get_try_format.exit.i41

do.end.i.i38:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 998, i32 noundef 9, ptr noundef null) #7
  br label %v4l2_subdev_get_try_format.exit.i41

v4l2_subdev_get_try_format.exit.i41:              ; preds = %do.end.i.i38, %if.then.i.v4l2_subdev_get_try_format.exit.i41_crit_edge
  %spec.select.i.i39 = phi i32 [ 0, %do.end.i.i38 ], [ %9, %if.then.i.v4l2_subdev_get_try_format.exit.i41_crit_edge ]
  %30 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i40 = getelementptr %struct.v4l2_subdev_pad_config, ptr %31, i32 %spec.select.i.i39
  br label %mipid02_set_fmt_sink.exit

if.else.i:                                        ; preds = %get_fmt_code.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %fmt6.i = getelementptr i8, ptr %sd, i32 596
  br label %mipid02_set_fmt_sink.exit

mipid02_set_fmt_sink.exit:                        ; preds = %if.else.i, %v4l2_subdev_get_try_format.exit.i41
  %fmt.0.i = phi ptr [ %arrayidx.i.i40, %v4l2_subdev_get_try_format.exit.i41 ], [ %fmt6.i, %if.else.i ]
  %format1.i42 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %fmt.0.i, ptr %format1.i42, i32 48)
  br label %error

error:                                            ; preds = %mipid02_set_fmt_sink.exit, %v4l2_subdev_get_try_format.exit.i, %serial_to_parallel_code.exit.i.error_crit_edge, %if.end10.error_crit_edge
  %ret.0 = phi i32 [ 0, %mipid02_set_fmt_sink.exit ], [ -16, %if.end10.error_crit_edge ], [ 0, %serial_to_parallel_code.exit.i.error_crit_edge ], [ 0, %v4l2_subdev_get_try_format.exit.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mipid02_async_bound(ptr nocapture noundef readonly %notifier, ptr noundef %s_subdev, ptr nocapture noundef readnone %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 2
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mipid02_async_bound.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mipid02_async_bound, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mipid02_async_bound.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %s_subdev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fwnode = getelementptr inbounds %struct.v4l2_subdev, ptr %s_subdev, i32 0, i32 15
  %4 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwnode, align 4
  %call4 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %s_subdev, ptr noundef %5, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %s_subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.86, ptr noundef %name) #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %conv = trunc i32 %call4 to i16
  %call14 = tail call i32 @media_create_pad_link(ptr noundef %s_subdev, i16 noundef zeroext %conv, ptr noundef %1, i16 noundef zeroext 0, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.88, i32 noundef %call14) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %s_subdev22 = getelementptr i8, ptr %1, i32 484
  %6 = ptrtoint ptr %s_subdev22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %s_subdev, ptr %s_subdev22, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end19, %do.end8
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ %call14, %do.end19 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mipid02_async_unbind(ptr nocapture noundef readonly %notifier, ptr nocapture noundef readnone %s_subdev, ptr nocapture noundef readnone %asd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 2
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %s_subdev1 = getelementptr i8, ptr %1, i32 484
  %2 = ptrtoint ptr %s_subdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %s_subdev1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !109, !111, !112, !113, !115, !117, !118, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @__initcall__kmod_st_mipid02__302_1074_mipid02_i2c_driver_init6, !1, !"__initcall__kmod_st_mipid02__302_1074_mipid02_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1074, i32 1}
!2 = !{ptr @__exitcall_mipid02_i2c_driver_exit, !1, !"__exitcall_mipid02_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1076, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1077, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1078, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1067, i32 12}
!12 = !{ptr @mipid02_i2c_driver, !13, !"mipid02_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1065, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/st-mipid02.c", i32 956, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/st-mipid02.c", i32 958, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mipid02_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mipid02_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/st-mipid02.c", i32 964, i32 3}
!26 = !{ptr @mipid02_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mipid02_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/st-mipid02.c", i32 969, i32 52}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/st-mipid02.c", i32 973, i32 3}
!32 = !{ptr @mipid02_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mipid02_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/st-mipid02.c", i32 979, i32 3}
!36 = !{ptr @mipid02_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mipid02_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mipid02_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/st-mipid02.c", i32 983, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/st-mipid02.c", i32 993, i32 3}
!43 = !{ptr @mipid02_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mipid02_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1004, i32 3}
!47 = !{ptr @mipid02_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mipid02_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1010, i32 3}
!51 = !{ptr @mipid02_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mipid02_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1016, i32 3}
!55 = !{ptr @mipid02_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mipid02_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1022, i32 3}
!59 = !{ptr @mipid02_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mipid02_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1027, i32 2}
!63 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mipid02_probe._entry.33, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mipid02_probe._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @mipid02_subdev_ops, !67, !"mipid02_subdev_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/st-mipid02.c", i32 786, i32 37}
!68 = !{ptr @mipid02_video_ops, !69, !"mipid02_video_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/st-mipid02.c", i32 776, i32 43}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/st-mipid02.c", i32 625, i32 2}
!72 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mipid02_s_stream.__UNIQUE_ID_ddebug297, !71, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/st-mipid02.c", i32 638, i32 2}
!77 = !{ptr @mipid02_s_stream.__UNIQUE_ID_ddebug298, !76, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/st-mipid02.c", i32 613, i32 2}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mipid02_stream_enable._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mipid02_stream_enable._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/st-mipid02.c", i32 416, i32 3}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mipid02_configure_clk_lane._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @mipid02_configure_clk_lane._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/st-mipid02.c", i32 397, i32 4}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mipid02_configure_from_rx_speed._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @mipid02_configure_from_rx_speed._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/st-mipid02.c", i32 402, i32 2}
!95 = !{ptr @mipid02_configure_from_rx_speed.__UNIQUE_ID_ddebug296, !94, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/st-mipid02.c", i32 265, i32 3}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mipid02_write_reg.__UNIQUE_ID_ddebug293, !97, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/st-mipid02.c", i32 536, i32 3}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mipid02_stream_disable._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mipid02_stream_disable._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @mipid02_pad_ops, !106, !"mipid02_pad_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/st-mipid02.c", i32 780, i32 41}
!107 = !{ptr @mipid02_supported_fmt_codes, !108, !"mipid02_supported_fmt_codes", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/st-mipid02.c", i32 57, i32 18}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/st-mipid02.c", i32 681, i32 2}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mipid02_get_fmt.__UNIQUE_ID_ddebug299, !110, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/st-mipid02.c", i32 750, i32 2}
!117 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mipid02_set_fmt.__UNIQUE_ID_ddebug300, !116, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/st-mipid02.c", i32 72, i32 2}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/st-mipid02.c", i32 73, i32 2}
!123 = distinct !{null, !124, !"mipid02_supply_name", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/st-mipid02.c", i32 71, i32 27}
!125 = !{ptr @mipid02_subdev_entity_ops, !126, !"mipid02_subdev_entity_ops", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/st-mipid02.c", i32 791, i32 45}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/st-mipid02.c", i32 302, i32 3}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mipid02_set_power_on._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @mipid02_set_power_on._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/st-mipid02.c", i32 309, i32 3}
!134 = !{ptr @mipid02_set_power_on._entry.61, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @mipid02_set_power_on._entry_ptr.63, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/st-mipid02.c", i32 315, i32 3}
!138 = !{ptr @mipid02_set_power_on.__UNIQUE_ID_ddebug294, !137, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/st-mipid02.c", i32 318, i32 3}
!141 = !{ptr @mipid02_set_power_on.__UNIQUE_ID_ddebug295, !140, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/st-mipid02.c", i32 239, i32 3}
!144 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @mipid02_read_reg.__UNIQUE_ID_ddebug292, !143, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/st-mipid02.c", i32 916, i32 3}
!148 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mipid02_parse_tx_ep._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @mipid02_parse_tx_ep._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/st-mipid02.c", i32 923, i32 3}
!153 = !{ptr @mipid02_parse_tx_ep._entry.70, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @mipid02_parse_tx_ep._entry_ptr.72, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/st-mipid02.c", i32 855, i32 3}
!157 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @mipid02_parse_rx_ep._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @mipid02_parse_rx_ep._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/st-mipid02.c", i32 862, i32 3}
!162 = !{ptr @mipid02_parse_rx_ep._entry.75, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @mipid02_parse_rx_ep._entry_ptr.77, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/st-mipid02.c", i32 869, i32 3}
!166 = !{ptr @mipid02_parse_rx_ep._entry.78, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @mipid02_parse_rx_ep._entry_ptr.80, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/st-mipid02.c", i32 886, i32 3}
!170 = !{ptr @mipid02_parse_rx_ep._entry.81, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @mipid02_parse_rx_ep._entry_ptr.83, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @mipid02_notifier_ops, !173, !"mipid02_notifier_ops", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/st-mipid02.c", i32 838, i32 52}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/st-mipid02.c", i32 804, i32 2}
!176 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @mipid02_async_bound.__UNIQUE_ID_ddebug301, !175, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/st-mipid02.c", i32 810, i32 3}
!180 = !{ptr @mipid02_async_bound._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @mipid02_async_bound._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/st-mipid02.c", i32 820, i32 3}
!184 = !{ptr @mipid02_async_bound._entry.87, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @mipid02_async_bound._entry_ptr.89, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @mipid02_dt_ids, !187, !"mipid02_dt_ids", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/st-mipid02.c", i32 1059, i32 34}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{!"auto-init"}
!198 = !{i64 2148747258, i64 2148747263, i64 2148747276, i64 2148747320, i64 2148747354, i64 2148747375}
!199 = !{i8 0, i8 2}
!200 = !{!"branch_weights", i32 2000, i32 1}
