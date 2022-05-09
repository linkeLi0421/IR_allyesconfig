; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/max9286.c_pt.bc'
source_filename = "../drivers/media/i2c/max9286.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
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
%struct.max9286_priv = type { ptr, ptr, %struct.v4l2_subdev, [5 x %struct.media_pad], ptr, %struct.gpio_chip, i8, ptr, i32, i8, i32, i32, %struct.v4l2_ctrl_handler, ptr, [4 x %struct.v4l2_mbus_framefmt], %struct.mutex, i32, i32, i32, i32, i32, [4 x %struct.max9286_source], %struct.v4l2_async_notifier }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.100, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.100 = type { ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.max9286_source = type { ptr, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.max9286_asd = type { %struct.v4l2_async_subdev, ptr }
%struct.v4l2_async_subdev = type { i32, %union.anon.98, %struct.list_head, %struct.list_head }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { i32, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.102, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.102 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__initcall__kmod_max9286__297_1353_max9286_i2c_driver_init6 = internal global ptr @max9286_i2c_driver_init, section ".initcall6.init", align 4
@max9286_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @max9286_remove, ptr @max9286_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max9286_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max9286_i2c_driver_exit = internal global ptr @max9286_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [59 x i8] c"max9286.description=Maxim MAX9286 GMSL Deserializer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [99 x i8] c"max9286.author=Jacopo Mondi, Kieran Bingham, Laurent Pinchart, Niklas S\C3\B6derlund, Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [39 x i8] c"max9286.file=drivers/media/i2c/max9286\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [20 x i8] c"max9286.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max9286\00", [24 x i8] zeroinitializer }, align 32
@max9286_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max9286\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max9286_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max9286-pwdn\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"poc\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to get PoC regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@max9286_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 239, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: register 0x%02x write failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max9286_write\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/max9286.c\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max9286_write._entry_ptr = internal global ptr @max9286_write._entry, section ".printk_index", align 4
@max9286_register_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max9286_register_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max9286_register_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 1069, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to create gpio_chip\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max9286_register_gpio\00", [42 x i8] zeroinitializer }, align 32
@max9286_register_gpio._entry_ptr = internal global ptr @max9286_register_gpio._entry, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-mux\00", [24 x i8] zeroinitializer }, align 32
@max9286_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.8, i32 1147, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to find i2c-mux node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max9286_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@max9286_parse_dt._entry_ptr = internal global ptr @max9286_parse_dt._entry, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@max9286_parse_dt.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.8, ptr @.str.17, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Skipping disabled I2C bus port %u\0A\00", [61 x i8] zeroinitializer }, align 32
@max9286_parse_dt.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.8, ptr @.str.18, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Endpoint %pOF on port %d\00", [39 x i8] zeroinitializer }, align 32
@max9286_parse_dt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.8, i32 1180, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid endpoint %s on port %d\00", [33 x i8] zeroinitializer }, align 32
@max9286_parse_dt._entry_ptr.21 = internal global ptr @max9286_parse_dt._entry.19, section ".printk_index", align 4
@max9286_parse_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.8, i32 1211, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Multiple port endpoints are not supported: %d\00", [50 x i8] zeroinitializer }, align 32
@max9286_parse_dt._entry_ptr.24 = internal global ptr @max9286_parse_dt._entry.22, section ".printk_index", align 4
@max9286_parse_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.8, i32 1222, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Endpoint %pOF has no remote endpoint connection\0A\00", [47 x i8] zeroinitializer }, align 32
@max9286_parse_dt._entry_ptr.27 = internal global ptr @max9286_parse_dt._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"maxim,reverse-channel-microvolt\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@max9286_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.8, i32 1086, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to turn PoC on\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max9286_init\00", [19 x i8] zeroinitializer }, align 32
@max9286_init._entry_ptr = internal global ptr @max9286_init._entry, section ".printk_index", align 4
@max9286_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.8, i32 1092, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to setup max9286\0A\00", [39 x i8] zeroinitializer }, align 32
@max9286_init._entry_ptr.34 = internal global ptr @max9286_init._entry.32, section ".printk_index", align 4
@max9286_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.8, i32 1102, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register with V4L2\0A\00", [34 x i8] zeroinitializer }, align 32
@max9286_init._entry_ptr.37 = internal global ptr @max9286_init._entry.35, section ".printk_index", align 4
@max9286_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.8, i32 1108, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to initialize I2C multiplexer\0A\00", [58 x i8] zeroinitializer }, align 32
@max9286_init._entry_ptr.40 = internal global ptr @max9286_init._entry.38, section ".printk_index", align 4
@max9286_setup.link_order = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\E4\E4\E1\E4\C9\D8\D2\D49xr\B4N\9C\93\E4", [16 x i8] zeroinitializer }, align 32
@max9286_v4l2_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.8, i32 873, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to register V4L2 async notifiers\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max9286_v4l2_register\00", [42 x i8] zeroinitializer }, align 32
@max9286_v4l2_register._entry_ptr = internal global ptr @max9286_v4l2_register._entry, section ".printk_index", align 4
@max9286_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @max9286_video_ops, ptr null, ptr null, ptr null, ptr @max9286_pad_ops }, [32 x i8] zeroinitializer }, align 32
@max9286_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @max9286_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@max9286_v4l2_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"max9286:886:(&priv->ctrls)->_lock\00", [62 x i8] zeroinitializer }, align 32
@max9286_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @max9286_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@max9286_v4l2_register._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.8, i32 910, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to retrieve endpoint on \22port@4\22\0A\00", [55 x i8] zeroinitializer }, align 32
@max9286_v4l2_register._entry_ptr.46 = internal global ptr @max9286_v4l2_register._entry.44, section ".printk_index", align 4
@max9286_v4l2_register._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.8, i32 918, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to register subdevice\0A\00", [34 x i8] zeroinitializer }, align 32
@max9286_v4l2_register._entry_ptr.49 = internal global ptr @max9286_v4l2_register._entry.47, section ".printk_index", align 4
@max9286_v4l2_notifier_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.8, i32 619, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to add subdev for source %u: %ld\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"max9286_v4l2_notifier_register\00", [33 x i8] zeroinitializer }, align 32
@max9286_v4l2_notifier_register._entry_ptr = internal global ptr @max9286_v4l2_notifier_register._entry, section ".printk_index", align 4
@max9286_notify_ops = internal constant { %struct.v4l2_async_notifier_operations, [20 x i8] } { %struct.v4l2_async_notifier_operations { ptr @max9286_notify_bound, ptr null, ptr @max9286_notify_unbind }, [20 x i8] zeroinitializer }, align 32
@max9286_v4l2_notifier_register._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.8, i32 631, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register subdev_notifier\00", [61 x i8] zeroinitializer }, align 32
@max9286_v4l2_notifier_register._entry_ptr.54 = internal global ptr @max9286_v4l2_notifier_register._entry.52, section ".printk_index", align 4
@max9286_notify_bound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.8, i32 536, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to find pad for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max9286_notify_bound\00", [43 x i8] zeroinitializer }, align 32
@max9286_notify_bound._entry_ptr = internal global ptr @max9286_notify_bound._entry, section ".printk_index", align 4
@max9286_notify_bound._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.8, i32 551, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to link %s:%u -> %s:%u\0A\00", [33 x i8] zeroinitializer }, align 32
@max9286_notify_bound._entry_ptr.59 = internal global ptr @max9286_notify_bound._entry.57, section ".printk_index", align 4
@max9286_notify_bound.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.8, ptr @.str.60, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Bound %s pad: %u on index %u\0A\00", [34 x i8] zeroinitializer }, align 32
@max9286_check_config_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.8, i32 464, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Unable to detect configuration links: 0x%02x expected 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max9286_check_config_link\00", [38 x i8] zeroinitializer }, align 32
@max9286_check_config_link._entry_ptr = internal global ptr @max9286_check_config_link._entry, section ".printk_index", align 4
@max9286_check_config_link._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.8, i32 470, ptr @.str.65, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Successfully detected configuration links after %u loops: 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max9286_check_config_link._entry_ptr.66 = internal global ptr @max9286_check_config_link._entry.63, section ".printk_index", align 4
@max9286_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.8, i32 226, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: register 0x%02x read failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max9286_read\00", [19 x i8] zeroinitializer }, align 32
@max9286_read._entry_ptr = internal global ptr @max9286_read._entry, section ".printk_index", align 4
@max9286_set_pixelrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.8, i32 502, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to calculate pixel rate\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max9286_set_pixelrate\00", [42 x i8] zeroinitializer }, align 32
@max9286_set_pixelrate._entry_ptr = internal global ptr @max9286_set_pixelrate._entry, section ".printk_index", align 4
@max9286_set_pixelrate._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.8, i32 509, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No pixel rate control available in sources\0A\00", [52 x i8] zeroinitializer }, align 32
@max9286_set_pixelrate._entry_ptr.73 = internal global ptr @max9286_set_pixelrate._entry.71, section ".printk_index", align 4
@max9286_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max9286_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max9286_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @max9286_enum_mbus_code, ptr null, ptr null, ptr @max9286_get_fmt, ptr @max9286_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@max9286_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.8, i32 693, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get frame synchronization\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max9286_s_stream\00", [47 x i8] zeroinitializer }, align 32
@max9286_s_stream._entry_ptr = internal global ptr @max9286_s_stream._entry, section ".printk_index", align 4
@max9286_check_video_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.8, i32 406, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to detect video links: 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max9286_check_video_links\00", [38 x i8] zeroinitializer }, align 32
@max9286_check_video_links._entry_ptr = internal global ptr @max9286_check_video_links._entry, section ".printk_index", align 4
@max9286_check_video_links._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.8, i32 423, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Not all enabled links locked\0A\00", [34 x i8] zeroinitializer }, align 32
@max9286_check_video_links._entry_ptr.80 = internal global ptr @max9286_check_video_links._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"max9286_i2c_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1344, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1346, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"max9286_dt_ids\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1338, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1260, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1265, i32 59 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1270, i32 44 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1295, i32 53 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1299, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 237, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1067, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1069, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1145, i32 47 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1147, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1155, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1160, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1175, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1179, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1209, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1220, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1240, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 261, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1086, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1092, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1102, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1108, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"link_order\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 952, i32 18 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 873, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"max9286_subdev_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 815, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant [28 x i8] c"max9286_subdev_internal_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 845, i32 46 }
@___asan_gen_.233 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 886, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"max9286_ctrl_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 859, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 910, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 918, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 618, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant [19 x i8] c"max9286_notify_ops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 595, i32 52 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 631, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 535, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 549, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 555, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 462, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 468, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 224, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 501, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 508, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [18 x i8] c"max9286_video_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 805, i32 43 }
@___asan_gen_.335 = private unnamed_addr constant [16 x i8] c"max9286_pad_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 809, i32 41 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 692, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 405, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.360 = private constant [31 x i8] c"../drivers/media/i2c/max9286.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 423, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 998, i32 6 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_max9286_i2c_driver_exit, ptr @__initcall__kmod_max9286__297_1353_max9286_i2c_driver_init6, ptr @max9286_check_config_link._entry, ptr @max9286_check_config_link._entry.63, ptr @max9286_check_config_link._entry_ptr, ptr @max9286_check_config_link._entry_ptr.66, ptr @max9286_check_video_links._entry, ptr @max9286_check_video_links._entry.78, ptr @max9286_check_video_links._entry_ptr, ptr @max9286_check_video_links._entry_ptr.80, ptr @max9286_i2c_driver_exit, ptr @max9286_init._entry, ptr @max9286_init._entry.32, ptr @max9286_init._entry.35, ptr @max9286_init._entry.38, ptr @max9286_init._entry_ptr, ptr @max9286_init._entry_ptr.34, ptr @max9286_init._entry_ptr.37, ptr @max9286_init._entry_ptr.40, ptr @max9286_notify_bound._entry, ptr @max9286_notify_bound._entry.57, ptr @max9286_notify_bound._entry_ptr, ptr @max9286_notify_bound._entry_ptr.59, ptr @max9286_parse_dt._entry, ptr @max9286_parse_dt._entry.19, ptr @max9286_parse_dt._entry.22, ptr @max9286_parse_dt._entry.25, ptr @max9286_parse_dt._entry_ptr, ptr @max9286_parse_dt._entry_ptr.21, ptr @max9286_parse_dt._entry_ptr.24, ptr @max9286_parse_dt._entry_ptr.27, ptr @max9286_read._entry, ptr @max9286_read._entry_ptr, ptr @max9286_register_gpio._entry, ptr @max9286_register_gpio._entry_ptr, ptr @max9286_s_stream._entry, ptr @max9286_s_stream._entry_ptr, ptr @max9286_set_pixelrate._entry, ptr @max9286_set_pixelrate._entry.71, ptr @max9286_set_pixelrate._entry_ptr, ptr @max9286_set_pixelrate._entry_ptr.73, ptr @max9286_v4l2_notifier_register._entry, ptr @max9286_v4l2_notifier_register._entry.52, ptr @max9286_v4l2_notifier_register._entry_ptr, ptr @max9286_v4l2_notifier_register._entry_ptr.54, ptr @max9286_v4l2_register._entry, ptr @max9286_v4l2_register._entry.44, ptr @max9286_v4l2_register._entry.47, ptr @max9286_v4l2_register._entry_ptr, ptr @max9286_v4l2_register._entry_ptr.46, ptr @max9286_v4l2_register._entry_ptr.49, ptr @max9286_write._entry, ptr @max9286_write._entry_ptr, ptr @max9286_i2c_driver, ptr @.str, ptr @max9286_dt_ids, ptr @max9286_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @max9286_register_gpio.lock_key, ptr @max9286_register_gpio.request_key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @max9286_setup.link_order, ptr @.str.41, ptr @.str.42, ptr @max9286_subdev_ops, ptr @max9286_subdev_internal_ops, ptr @max9286_v4l2_register._key, ptr @.str.43, ptr @max9286_ctrl_ops, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @max9286_notify_ops, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @max9286_video_ops, ptr @max9286_pad_ops, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_register_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_register_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_register_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_parse_dt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_parse_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_parse_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_setup.link_order to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_v4l2_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_v4l2_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_v4l2_register._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_v4l2_register._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_v4l2_notifier_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_notify_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_v4l2_notifier_register._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_notify_bound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_notify_bound._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_check_config_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_check_config_link._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_set_pixelrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_set_pixelrate._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_check_video_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9286_check_video_links._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max9286_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max9286_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @max9286_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mux = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #9
  %sd.i = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 2
  %fwnode.i = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 2, i32 15
  %4 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwnode.i, align 4
  tail call void @fwnode_handle_put(ptr noundef %5) #9
  tail call void @v4l2_async_unregister_subdev(ptr noundef %sd.i) #9
  %nsources.i.i = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %nsources.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsources.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %entry.max9286_v4l2_unregister.exit_crit_edge, label %if.end.i.i

entry.max9286_v4l2_unregister.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_v4l2_unregister.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %notifier.i.i = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 22
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i.i) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i.i) #9
  br label %max9286_v4l2_unregister.exit

max9286_v4l2_unregister.exit:                     ; preds = %if.end.i.i, %entry.max9286_v4l2_unregister.exit_crit_edge
  %regulator = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %9) #9
  %gpiod_pwdn = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod_pwdn, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #9
  %sources.i.i = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 21
  %arrayidx2.i.i = getelementptr %struct.max9286_priv, ptr %1, i32 0, i32 22
  %cmp13.i8.i = icmp ult ptr %sources.i.i, %arrayidx2.i.i
  br i1 %cmp13.i8.i, label %max9286_v4l2_unregister.exit.for.body.i.i_crit_edge, label %max9286_v4l2_unregister.exit.max9286_cleanup_dt.exit_crit_edge

max9286_v4l2_unregister.exit.max9286_cleanup_dt.exit_crit_edge: ; preds = %max9286_v4l2_unregister.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_cleanup_dt.exit

max9286_v4l2_unregister.exit.for.body.i.i_crit_edge: ; preds = %max9286_v4l2_unregister.exit
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.backedge, %max9286_v4l2_unregister.exit.for.body.i.i_crit_edge
  %source.addr.114.i.i = phi ptr [ %source.addr.114.i.i.be, %for.body.i.i.backedge ], [ %sources.i.i, %max9286_v4l2_unregister.exit.for.body.i.i_crit_edge ]
  %fwnode.i.i = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fwnode.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i.i, label %for.inc.i.i, label %next_source.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr6.i.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr6.i.i, %arrayidx2.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i.backedge_crit_edge, label %for.inc.i.i.max9286_cleanup_dt.exit_crit_edge

for.inc.i.i.max9286_cleanup_dt.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_cleanup_dt.exit

for.inc.i.i.for.body.i.i.backedge_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.backedge

for.body.i.i.backedge:                            ; preds = %for.body.i.for.body.i.i.backedge_crit_edge, %for.inc.i.i.for.body.i.i.backedge_crit_edge
  %source.addr.114.i.i.be = phi ptr [ %incdec.ptr6.i.i, %for.inc.i.i.for.body.i.i.backedge_crit_edge ], [ %incdec.ptr.i.i, %for.body.i.for.body.i.i.backedge_crit_edge ]
  br label %for.body.i.i

next_source.exit.i:                               ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %source.addr.114.i.i, null
  br i1 %tobool.not.i, label %next_source.exit.i.max9286_cleanup_dt.exit_crit_edge, label %for.body.i

next_source.exit.i.max9286_cleanup_dt.exit_crit_edge: ; preds = %next_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_cleanup_dt.exit

for.body.i:                                       ; preds = %next_source.exit.i
  %fwnode.i.i.le = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i.i, i32 0, i32 1
  tail call void @fwnode_handle_put(ptr noundef nonnull %13) #9
  %14 = ptrtoint ptr %fwnode.i.i.le to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fwnode.i.i.le, align 4
  %incdec.ptr.i.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i.i, i32 1
  %cmp13.i.i = icmp ult ptr %incdec.ptr.i.i, %arrayidx2.i.i
  br i1 %cmp13.i.i, label %for.body.i.for.body.i.i.backedge_crit_edge, label %for.body.i.max9286_cleanup_dt.exit_crit_edge

for.body.i.max9286_cleanup_dt.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_cleanup_dt.exit

for.body.i.for.body.i.i.backedge_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.backedge

max9286_cleanup_dt.exit:                          ; preds = %for.body.i.max9286_cleanup_dt.exit_crit_edge, %next_source.exit.i.max9286_cleanup_dt.exit_crit_edge, %for.inc.i.i.max9286_cleanup_dt.exit_crit_edge, %max9286_v4l2_unregister.exit.max9286_cleanup_dt.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1312, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @max9286_probe.__key) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 7) #9
  %gpiod_pwdn = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %gpiod_pwdn, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %call11 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call3, ptr noundef nonnull @.str.3) #9
  %4 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod_pwdn, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #9
  %6 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_pwdn, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %if.end9.if.end16_crit_edge, label %if.then15

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 5000, i32 noundef 2) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9.if.end16_crit_edge
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 10, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end16.max9286_i2c_mux_close.exit_crit_edge

if.end16.max9286_i2c_mux_close.exit_crit_edge:    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_i2c_mux_close.exit

do.end.i.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef %call.i.i.i) #12
  br label %max9286_i2c_mux_close.exit

max9286_i2c_mux_close.exit:                       ; preds = %do.end.i.i.i, %if.end16.max9286_i2c_mux_close.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  %mux_open.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %mux_open.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mux_open.i, align 4
  %mux_channel.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %mux_channel.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %mux_channel.i, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 52, i8 noundef zeroext 46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %max9286_i2c_mux_close.exit.max9286_configure_i2c.exit_crit_edge

max9286_i2c_mux_close.exit.max9286_configure_i2c.exit_crit_edge: ; preds = %max9286_i2c_mux_close.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_configure_i2c.exit

do.end.i.i:                                       ; preds = %max9286_i2c_mux_close.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 52, i32 noundef %call.i.i) #12
  br label %max9286_configure_i2c.exit

max9286_configure_i2c.exit:                       ; preds = %do.end.i.i, %max9286_i2c_mux_close.exit.max9286_configure_i2c.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %gpio2.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 5
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %max9286_configure_i2c.exit.dev_name.exit.i_crit_edge

max9286_configure_i2c.exit.dev_name.exit.i_crit_edge: ; preds = %max9286_configure_i2c.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %max9286_configure_i2c.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %max9286_configure_i2c.exit.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %max9286_configure_i2c.exit.dev_name.exit.i_crit_edge ]
  %24 = ptrtoint ptr %gpio2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i.i, ptr %gpio2.i, align 4
  %parent.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1.i, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %owner.i, align 4
  %ngpio.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 5, i32 20
  %27 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %ngpio.i, align 4
  %base.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 5, i32 19
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %base.i, align 4
  %set.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 5, i32 12
  %29 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @max9286_gpio_set, ptr %set.i, align 4
  %get.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 5, i32 10
  %30 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @max9286_gpio_get, ptr %get.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 5, i32 23
  %31 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %can_sleep.i, align 4
  %gpio_state.i = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %gpio_state.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %gpio_state.i, align 4
  %call3.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1.i, ptr noundef %gpio2.i, ptr noundef nonnull %call.i, ptr noundef nonnull @max9286_register_gpio.lock_key, ptr noundef nonnull @max9286_register_gpio.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end20, label %max9286_register_gpio.exit

max9286_register_gpio.exit:                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.11) #12
  br label %err_powerdown

if.end20:                                         ; preds = %dev_name.exit.i
  %call22 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %regulator = getelementptr inbounds %struct.max9286_priv, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call22, ptr %regulator, align 4
  %cmp.i69 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call22 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %34, ptr noundef nonnull @.str.5) #9
  br label %err_powerdown

if.end30:                                         ; preds = %if.end20
  %call31 = tail call fastcc i32 @max9286_parse_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.err_powerdown_crit_edge

if.end30.err_powerdown_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_powerdown

if.end34:                                         ; preds = %if.end30
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i, align 4
  %regulator.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regulator.i, align 4
  %call1.i = tail call i32 @regulator_enable(ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i70 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i70, label %max9286_init.exit.thread, label %if.end.i

max9286_init.exit.thread:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #12
  br label %err_cleanup_dt

if.end.i:                                         ; preds = %if.end34
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 52, i8 noundef zeroext -82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.max9286_configure_i2c.exit.i.i_crit_edge

if.end.i.max9286_configure_i2c.exit.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_configure_i2c.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 52, i32 noundef %call.i.i.i.i) #12
  br label %max9286_configure_i2c.exit.i.i

max9286_configure_i2c.exit.i.i:                   ; preds = %do.end.i.i.i.i, %if.end.i.max9286_configure_i2c.exit.i.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  %init_rev_chan_mv.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 10
  %43 = ptrtoint ptr %init_rev_chan_mv.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %init_rev_chan_mv.i.i, align 4
  tail call fastcc void @max9286_reverse_channel_setup(ptr noundef %36, i32 noundef %44) #9
  %route_mask.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 18
  %45 = ptrtoint ptr %route_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %route_mask.i.i, align 4
  %47 = trunc i32 %46 to i8
  %conv.i.i = or i8 %47, -32
  %48 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %36, align 4
  %call.i.i.i72 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 0, i8 noundef zeroext %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i72)
  %cmp.i.i.i73 = icmp slt i32 %call.i.i.i72, 0
  br i1 %cmp.i.i.i73, label %do.end.i.i.i75, label %max9286_configure_i2c.exit.i.i.max9286_write.exit.i.i_crit_edge

max9286_configure_i2c.exit.i.i.max9286_write.exit.i.i_crit_edge: ; preds = %max9286_configure_i2c.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit.i.i

do.end.i.i.i75:                                   ; preds = %max9286_configure_i2c.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %36, align 4
  %dev.i.i.i74 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i74, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef %call.i.i.i72) #12
  br label %max9286_write.exit.i.i

max9286_write.exit.i.i:                           ; preds = %do.end.i.i.i75, %max9286_configure_i2c.exit.i.i.max9286_write.exit.i.i_crit_edge
  %52 = ptrtoint ptr %route_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %route_mask.i.i, align 4
  %arrayidx.i.i = getelementptr [16 x i8], ptr @max9286_setup.link_order, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i, align 1
  %56 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %36, align 4
  %call.i1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 11, i8 noundef zeroext %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %cmp.i2.i.i = icmp slt i32 %call.i1.i.i, 0
  br i1 %cmp.i2.i.i, label %do.end.i4.i.i, label %max9286_write.exit.i.i.max9286_write.exit5.i.i_crit_edge

max9286_write.exit.i.i.max9286_write.exit5.i.i_crit_edge: ; preds = %max9286_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit5.i.i

do.end.i4.i.i:                                    ; preds = %max9286_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %36, align 4
  %dev.i3.i.i = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i3.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 11, i32 noundef %call.i1.i.i) #12
  br label %max9286_write.exit5.i.i

max9286_write.exit5.i.i:                          ; preds = %do.end.i4.i.i, %max9286_write.exit.i.i.max9286_write.exit5.i.i_crit_edge
  %60 = ptrtoint ptr %route_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %route_mask.i.i, align 4
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 15
  %conv4.i.i = xor i8 %63, 15
  %64 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %36, align 4
  %call.i6.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %65, i8 noundef zeroext 105, i8 noundef zeroext %conv4.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %cmp.i7.i.i = icmp slt i32 %call.i6.i.i, 0
  br i1 %cmp.i7.i.i, label %do.end.i9.i.i, label %max9286_write.exit5.i.i.max9286_write.exit10.i.i_crit_edge

max9286_write.exit5.i.i.max9286_write.exit10.i.i_crit_edge: ; preds = %max9286_write.exit5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit10.i.i

do.end.i9.i.i:                                    ; preds = %max9286_write.exit5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %36, align 4
  %dev.i8.i.i = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i8.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 105, i32 noundef %call.i6.i.i) #12
  br label %max9286_write.exit10.i.i

max9286_write.exit10.i.i:                         ; preds = %do.end.i9.i.i, %max9286_write.exit5.i.i.max9286_write.exit10.i.i_crit_edge
  %68 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %36, align 4
  %call.i11.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext 21, i8 noundef zeroext 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %cmp.i12.i.i = icmp slt i32 %call.i11.i.i, 0
  br i1 %cmp.i12.i.i, label %do.end.i14.i.i, label %max9286_write.exit10.i.i.max9286_write.exit15.i.i_crit_edge

max9286_write.exit10.i.i.max9286_write.exit15.i.i_crit_edge: ; preds = %max9286_write.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit15.i.i

do.end.i14.i.i:                                   ; preds = %max9286_write.exit10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %36, align 4
  %dev.i13.i.i = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 21, i32 noundef %call.i11.i.i) #12
  br label %max9286_write.exit15.i.i

max9286_write.exit15.i.i:                         ; preds = %do.end.i14.i.i, %max9286_write.exit10.i.i.max9286_write.exit15.i.i_crit_edge
  %csi2_data_lanes.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 20
  %72 = ptrtoint ptr %csi2_data_lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %csi2_data_lanes.i.i, align 4
  %.tr.i.i = trunc i32 %73 to i8
  %74 = shl i8 %.tr.i.i, 6
  %conv9.i.i = add i8 %74, -13
  %75 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %36, align 4
  %call.i16.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %76, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i.i)
  %cmp.i17.i.i = icmp slt i32 %call.i16.i.i, 0
  br i1 %cmp.i17.i.i, label %do.end.i19.i.i, label %max9286_write.exit15.i.i.max9286_write.exit20.i.i_crit_edge

max9286_write.exit15.i.i.max9286_write.exit20.i.i_crit_edge: ; preds = %max9286_write.exit15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit20.i.i

do.end.i19.i.i:                                   ; preds = %max9286_write.exit15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %36, align 4
  %dev.i18.i.i = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i18.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 18, i32 noundef %call.i16.i.i) #12
  br label %max9286_write.exit20.i.i

max9286_write.exit20.i.i:                         ; preds = %do.end.i19.i.i, %max9286_write.exit15.i.i.max9286_write.exit20.i.i_crit_edge
  %79 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %36, align 4
  %call.i21.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %80, i8 noundef zeroext 1, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %cmp.i22.i.i = icmp slt i32 %call.i21.i.i, 0
  br i1 %cmp.i22.i.i, label %do.end.i24.i.i, label %max9286_write.exit20.i.i.max9286_write.exit25.i.i_crit_edge

max9286_write.exit20.i.i.max9286_write.exit25.i.i_crit_edge: ; preds = %max9286_write.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit25.i.i

do.end.i24.i.i:                                   ; preds = %max9286_write.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %36, align 4
  %dev.i23.i.i = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i23.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %call.i21.i.i) #12
  br label %max9286_write.exit25.i.i

max9286_write.exit25.i.i:                         ; preds = %do.end.i24.i.i, %max9286_write.exit20.i.i.max9286_write.exit25.i.i_crit_edge
  %83 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %36, align 4
  %call.i26.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext 12, i8 noundef zeroext -119) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %cmp.i27.i.i = icmp slt i32 %call.i26.i.i, 0
  br i1 %cmp.i27.i.i, label %do.end.i29.i.i, label %max9286_write.exit25.i.i.max9286_write.exit30.i.i_crit_edge

max9286_write.exit25.i.i.max9286_write.exit30.i.i_crit_edge: ; preds = %max9286_write.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit30.i.i

do.end.i29.i.i:                                   ; preds = %max9286_write.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %36, align 4
  %dev.i28.i.i = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i28.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 12, i32 noundef %call.i26.i.i) #12
  br label %max9286_write.exit30.i.i

max9286_write.exit30.i.i:                         ; preds = %do.end.i29.i.i, %max9286_write.exit25.i.i.max9286_write.exit30.i.i_crit_edge
  %87 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %36, align 4
  %call.i31.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %88, i8 noundef zeroext 99, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i.i)
  %cmp.i32.i.i = icmp slt i32 %call.i31.i.i, 0
  br i1 %cmp.i32.i.i, label %do.end.i34.i.i, label %max9286_write.exit30.i.i.max9286_write.exit35.i.i_crit_edge

max9286_write.exit30.i.i.max9286_write.exit35.i.i_crit_edge: ; preds = %max9286_write.exit30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit35.i.i

do.end.i34.i.i:                                   ; preds = %max9286_write.exit30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %36, align 4
  %dev.i33.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i33.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 99, i32 noundef %call.i31.i.i) #12
  br label %max9286_write.exit35.i.i

max9286_write.exit35.i.i:                         ; preds = %do.end.i34.i.i, %max9286_write.exit30.i.i.max9286_write.exit35.i.i_crit_edge
  %91 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %36, align 4
  %call.i36.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %92, i8 noundef zeroext 100, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.i)
  %cmp.i37.i.i = icmp slt i32 %call.i36.i.i, 0
  br i1 %cmp.i37.i.i, label %do.end.i39.i.i, label %max9286_write.exit35.i.i.max9286_setup.exit.i_crit_edge

max9286_write.exit35.i.i.max9286_setup.exit.i_crit_edge: ; preds = %max9286_write.exit35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_setup.exit.i

do.end.i39.i.i:                                   ; preds = %max9286_write.exit35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %36, align 4
  %dev.i38.i.i = getelementptr inbounds %struct.i2c_client, ptr %94, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 100, i32 noundef %call.i36.i.i) #12
  br label %max9286_setup.exit.i

max9286_setup.exit.i:                             ; preds = %do.end.i39.i.i, %max9286_write.exit35.i.i.max9286_setup.exit.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 5000, i32 noundef 2) #9
  %95 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %36, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 4
  %nsources.i.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 16
  %97 = ptrtoint ptr %nsources.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nsources.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i.i, label %max9286_setup.exit.i.for.body.preheader.i.i_crit_edge, label %if.end.i.i.i

max9286_setup.exit.i.for.body.preheader.i.i_crit_edge: ; preds = %max9286_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i.i

if.end.i.i.i:                                     ; preds = %max9286_setup.exit.i
  %notifier.i.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 22
  tail call void @v4l2_async_nf_init(ptr noundef %notifier.i.i.i) #9
  %sources.i.i.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 21
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.backedge, %if.end.i.i.i
  %source.addr.114.i.i.i.i = phi ptr [ %sources.i.i.i.i, %if.end.i.i.i ], [ %source.addr.114.i.i.i.i.be, %for.body.i.i.i.i.backedge ]
  %fwnode.i.i.i.i = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i.i.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %fwnode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fwnode.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %100, null
  br i1 %tobool3.not.i.i.i.i, label %for.inc.i.i.i.i, label %next_source.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %incdec.ptr6.i.i.i.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i.i.i.i, i32 1
  %cmp.i.i.i42.i = icmp ult ptr %incdec.ptr6.i.i.i.i, %notifier.i.i.i
  br i1 %cmp.i.i.i42.i, label %for.inc.i.i.i.i.for.body.i.i.i.i.backedge_crit_edge, label %for.inc.i.i.i.i.for.end.i.i.i_crit_edge

for.inc.i.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i.backedge_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i.backedge

for.body.i.i.i.i.backedge:                        ; preds = %cleanup.i.i.i.for.body.i.i.i.i.backedge_crit_edge, %for.inc.i.i.i.i.for.body.i.i.i.i.backedge_crit_edge
  %source.addr.114.i.i.i.i.be = phi ptr [ %incdec.ptr6.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i.backedge_crit_edge ], [ %incdec.ptr.i.i.i.i, %cleanup.i.i.i.for.body.i.i.i.i.backedge_crit_edge ]
  br label %for.body.i.i.i.i

next_source.exit.i.i.i:                           ; preds = %for.body.i.i.i.i
  %tobool2.not.i.i.i = icmp eq ptr %source.addr.114.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %next_source.exit.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i

next_source.exit.i.i.i.for.end.i.i.i_crit_edge:   ; preds = %next_source.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %next_source.exit.i.i.i
  %call4.i.i.i = tail call ptr @__v4l2_async_nf_add_fwnode(ptr noundef nonnull %notifier.i.i.i, ptr noundef nonnull %100, i32 noundef 32) #9
  %cmp.i44.i.i.i = icmp ugt ptr %call4.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i.i.i, label %max9286_v4l2_register.exit.i, label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %for.body.i.i.i
  %source11.i.i.i = getelementptr inbounds %struct.max9286_asd, ptr %call4.i.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %source11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %source.addr.114.i.i.i.i, ptr %source11.i.i.i, align 4
  %incdec.ptr.i.i.i.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i.i.i.i, i32 1
  %cmp13.i.i.i.i = icmp ult ptr %incdec.ptr.i.i.i.i, %notifier.i.i.i
  br i1 %cmp13.i.i.i.i, label %cleanup.i.i.i.for.body.i.i.i.i.backedge_crit_edge, label %cleanup.i.i.i.for.end.i.i.i_crit_edge

cleanup.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

cleanup.i.i.i.for.body.i.i.i.i.backedge_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i.backedge

for.end.i.i.i:                                    ; preds = %cleanup.i.i.i.for.end.i.i.i_crit_edge, %next_source.exit.i.i.i.for.end.i.i.i_crit_edge, %for.inc.i.i.i.i.for.end.i.i.i_crit_edge
  %102 = ptrtoint ptr %notifier.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @max9286_notify_ops, ptr %notifier.i.i.i, align 4
  %sd.i.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 2
  %call15.i.i.i = tail call i32 @v4l2_async_subdev_nf_register(ptr noundef %sd.i.i.i, ptr noundef %notifier.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %for.end.i.i.i.for.body.preheader.i.i_crit_edge, label %max9286_v4l2_register.exit.thread66.i

for.end.i.i.i.for.body.preheader.i.i_crit_edge:   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i.i

max9286_v4l2_register.exit.thread66.i:            ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.53) #12
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i.i.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.41) #12
  br label %max9286_init.exit

for.body.preheader.i.i:                           ; preds = %for.end.i.i.i.for.body.preheader.i.i_crit_edge, %max9286_setup.exit.i.for.body.preheader.i.i_crit_edge
  %arrayidx.i43.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 0
  %103 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1280, ptr %arrayidx.i43.i, align 4
  %height.i.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 0, i32 1
  %104 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 800, ptr %height.i.i.i, align 4
  %code.i.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 0, i32 2
  %105 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 8207, ptr %code.i.i.i, align 4
  %colorspace.i.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 0, i32 4
  %106 = ptrtoint ptr %colorspace.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 8, ptr %colorspace.i.i.i, align 4
  %field.i.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 0, i32 3
  %107 = ptrtoint ptr %field.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %field.i.i.i, align 4
  %108 = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 0, i32 5
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %108, align 4
  %quantization.i.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 0, i32 6
  %110 = ptrtoint ptr %quantization.i.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %quantization.i.i.i, align 2
  %xfer_func.i.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 0, i32 7
  %111 = ptrtoint ptr %xfer_func.i.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %xfer_func.i.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 1
  %112 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1280, ptr %arrayidx.1.i.i, align 4
  %height.i.1.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 1, i32 1
  %113 = ptrtoint ptr %height.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 800, ptr %height.i.1.i.i, align 4
  %code.i.1.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 1, i32 2
  %114 = ptrtoint ptr %code.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 8207, ptr %code.i.1.i.i, align 4
  %colorspace.i.1.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 1, i32 4
  %115 = ptrtoint ptr %colorspace.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 8, ptr %colorspace.i.1.i.i, align 4
  %field.i.1.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 1, i32 3
  %116 = ptrtoint ptr %field.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %field.i.1.i.i, align 4
  %117 = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 1, i32 5
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %117, align 4
  %quantization.i.1.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 1, i32 6
  %119 = ptrtoint ptr %quantization.i.1.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %quantization.i.1.i.i, align 2
  %xfer_func.i.1.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 1, i32 7
  %120 = ptrtoint ptr %xfer_func.i.1.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %xfer_func.i.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 2
  %121 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1280, ptr %arrayidx.2.i.i, align 4
  %height.i.2.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 2, i32 1
  %122 = ptrtoint ptr %height.i.2.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 800, ptr %height.i.2.i.i, align 4
  %code.i.2.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 2, i32 2
  %123 = ptrtoint ptr %code.i.2.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 8207, ptr %code.i.2.i.i, align 4
  %colorspace.i.2.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 2, i32 4
  %124 = ptrtoint ptr %colorspace.i.2.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 8, ptr %colorspace.i.2.i.i, align 4
  %field.i.2.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 2, i32 3
  %125 = ptrtoint ptr %field.i.2.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %field.i.2.i.i, align 4
  %126 = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 2, i32 5
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %126, align 4
  %quantization.i.2.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 2, i32 6
  %128 = ptrtoint ptr %quantization.i.2.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %quantization.i.2.i.i, align 2
  %xfer_func.i.2.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 2, i32 7
  %129 = ptrtoint ptr %xfer_func.i.2.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %xfer_func.i.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 3
  %130 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1280, ptr %arrayidx.3.i.i, align 4
  %height.i.3.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 3, i32 1
  %131 = ptrtoint ptr %height.i.3.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 800, ptr %height.i.3.i.i, align 4
  %code.i.3.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 3, i32 2
  %132 = ptrtoint ptr %code.i.3.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 8207, ptr %code.i.3.i.i, align 4
  %colorspace.i.3.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 3, i32 4
  %133 = ptrtoint ptr %colorspace.i.3.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 8, ptr %colorspace.i.3.i.i, align 4
  %field.i.3.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 3, i32 3
  %134 = ptrtoint ptr %field.i.3.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %field.i.3.i.i, align 4
  %135 = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 3, i32 5
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %135, align 4
  %quantization.i.3.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 3, i32 6
  %137 = ptrtoint ptr %quantization.i.3.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %quantization.i.3.i.i, align 2
  %xfer_func.i.3.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 14, i32 3, i32 7
  %138 = ptrtoint ptr %xfer_func.i.3.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %xfer_func.i.3.i.i, align 4
  %sd.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 2
  %139 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %36, align 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd.i.i, ptr noundef %140, ptr noundef nonnull @max9286_subdev_ops) #9
  %internal_ops.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 2, i32 7
  %141 = ptrtoint ptr %internal_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @max9286_subdev_internal_ops, ptr %internal_ops.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 2, i32 4
  %142 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %143, 4
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %ctrls.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 12
  %call5.i.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls.i.i, i32 noundef 1, ptr noundef nonnull @max9286_v4l2_register._key, ptr noundef nonnull @.str.43) #9
  %call7.i.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i.i, ptr noundef nonnull @max9286_ctrl_ops, i32 noundef 10422530, i64 noundef 1, i64 noundef 2147483647, i64 noundef 1, i64 noundef 50000000) #9
  %pixelrate.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 13
  %144 = ptrtoint ptr %pixelrate.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call7.i.i, ptr %pixelrate.i.i, align 4
  %ctrl_handler.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 2, i32 8
  %145 = ptrtoint ptr %ctrl_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %ctrls.i.i, ptr %ctrl_handler.i.i, align 4
  %error.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 12, i32 9
  %146 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool11.not.i.i = icmp eq i32 %147, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %for.body.preheader.i.i.err_async.i.i_crit_edge

for.body.preheader.i.i.err_async.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_async.i.i

if.end13.i.i:                                     ; preds = %for.body.preheader.i.i
  %function.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 2, i32 0, i32 3
  %148 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 20482, ptr %function.i.i, align 4
  %flags16.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 3, i32 4, i32 4
  %149 = ptrtoint ptr %flags16.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2, ptr %flags16.i.i, align 4
  %flags22.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 3, i32 0, i32 4
  %150 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1, ptr %flags22.i.i, align 4
  %flags22.1.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 3, i32 1, i32 4
  %151 = ptrtoint ptr %flags22.1.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 1, ptr %flags22.1.i.i, align 4
  %flags22.2.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 3, i32 2, i32 4
  %152 = ptrtoint ptr %flags22.2.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %flags22.2.i.i, align 4
  %flags22.3.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 3, i32 3, i32 4
  %153 = ptrtoint ptr %flags22.3.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1, ptr %flags22.3.i.i, align 4
  %pads.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 3
  %call29.i.i = tail call i32 @media_entity_pads_init(ptr noundef %sd.i.i, i16 noundef zeroext 5, ptr noundef %pads.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end32.i.i, label %if.end13.i.i.err_async.i.i_crit_edge

if.end13.i.i.err_async.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_async.i.i

if.end32.i.i:                                     ; preds = %if.end13.i.i
  %call33.i.i = tail call ptr @dev_fwnode(ptr noundef %dev1.i.i) #9
  %call34.i.i = tail call ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %call33.i.i, i32 noundef 4, i32 noundef 0, i32 noundef 0) #9
  %tobool35.not.i.i = icmp eq ptr %call34.i.i, null
  br i1 %tobool35.not.i.i, label %do.end39.i.i, label %if.end40.i.i

do.end39.i.i:                                     ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.45) #12
  br label %err_async.i.i

if.end40.i.i:                                     ; preds = %if.end32.i.i
  %fwnode.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 2, i32 15
  %154 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call34.i.i, ptr %fwnode.i.i, align 4
  %call43.i.i = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %cmp44.i.i = icmp slt i32 %call43.i.i, 0
  br i1 %cmp44.i.i, label %do.end48.i.i, label %if.end15.i

do.end48.i.i:                                     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.48) #12
  tail call void @fwnode_handle_put(ptr noundef nonnull %call34.i.i) #9
  br label %err_async.i.i

err_async.i.i:                                    ; preds = %do.end48.i.i, %do.end39.i.i, %if.end13.i.i.err_async.i.i_crit_edge, %for.body.preheader.i.i.err_async.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %147, %for.body.preheader.i.i.err_async.i.i_crit_edge ], [ %call29.i.i, %if.end13.i.i.err_async.i.i_crit_edge ], [ %call43.i.i, %do.end48.i.i ], [ -2, %do.end39.i.i ]
  %155 = ptrtoint ptr %nsources.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nsources.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i89.i.i = icmp eq i32 %156, 0
  br i1 %tobool.not.i89.i.i, label %err_async.i.i.max9286_init.exit_crit_edge, label %if.end.i91.i.i

err_async.i.i.max9286_init.exit_crit_edge:        ; preds = %err_async.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_init.exit

if.end.i91.i.i:                                   ; preds = %err_async.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %notifier.i90.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 22
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i90.i.i) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i90.i.i) #9
  br label %max9286_init.exit

max9286_v4l2_register.exit.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %source.addr.114.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %sources.i.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 3
  %157 = ptrtoint ptr %call4.i.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.50, i32 noundef %sub.ptr.div.i.i.i, i32 noundef %157) #12
  tail call void @v4l2_async_nf_cleanup(ptr noundef nonnull %notifier.i.i.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.41) #12
  br label %max9286_init.exit

if.end15.i:                                       ; preds = %if.end40.i.i
  %158 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %36, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %adapter.i.i, align 8
  %algo.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %algo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %algo.i.i.i.i, align 8
  %functionality.i.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %functionality.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %functionality.i.i.i.i, align 4
  %call.i.i.i44.i = tail call i32 %165(ptr noundef %161) #9
  %166 = and i32 %call.i.i.i44.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.not.i.i76 = icmp eq i32 %166, 0
  br i1 %tobool.not.i.i76, label %if.end15.i.do.end21.i_crit_edge, label %if.end.i.i78

if.end15.i.do.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i

if.end.i.i78:                                     ; preds = %if.end15.i
  %167 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %36, align 4
  %adapter2.i.i = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %adapter2.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %adapter2.i.i, align 8
  %dev.i.i77 = getelementptr inbounds %struct.i2c_client, ptr %168, i32 0, i32 4
  %171 = ptrtoint ptr %nsources.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %nsources.i.i.i, align 4
  %call4.i.i = tail call ptr @i2c_mux_alloc(ptr noundef %170, ptr noundef %dev.i.i77, i32 noundef %172, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @max9286_i2c_mux_select, ptr noundef null) #9
  %mux.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 7
  %173 = ptrtoint ptr %mux.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call4.i.i, ptr %mux.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.i.i78.do.end21.i_crit_edge, label %if.end8.i.i

if.end.i.i78.do.end21.i_crit_edge:                ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i

if.end8.i.i:                                      ; preds = %if.end.i.i78
  %priv10.i.i = getelementptr inbounds %struct.i2c_mux_core, ptr %call4.i.i, i32 0, i32 3
  %174 = ptrtoint ptr %priv10.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %36, ptr %priv10.i.i, align 4
  %sources.i.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 21
  %arrayidx2.i.i.i = getelementptr %struct.max9286_priv, ptr %36, i32 0, i32 22
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %sources.i.i.i to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end8.i.i
  %source.0.i.i = phi ptr [ null, %if.end8.i.i ], [ %source.addr.114.i.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %tobool.not.i.i45.i = icmp eq ptr %source.0.i.i, null
  %incdec.ptr.i.i.i = getelementptr %struct.max9286_source, ptr %source.0.i.i, i32 1
  %source.addr.0.i.i.i = select i1 %tobool.not.i.i45.i, ptr %sources.i.i.i, ptr %incdec.ptr.i.i.i
  %cmp13.i.i.i = icmp ult ptr %source.addr.0.i.i.i, %arrayidx2.i.i.i
  br i1 %cmp13.i.i.i, label %for.cond.i.i.for.body.i.i46.i_crit_edge, label %for.cond.i.i.if.end22.i_crit_edge

for.cond.i.i.if.end22.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

for.cond.i.i.for.body.i.i46.i_crit_edge:          ; preds = %for.cond.i.i
  br label %for.body.i.i46.i

for.body.i.i46.i:                                 ; preds = %for.inc.i.i.i.for.body.i.i46.i_crit_edge, %for.cond.i.i.for.body.i.i46.i_crit_edge
  %source.addr.114.i.i.i = phi ptr [ %incdec.ptr6.i.i.i, %for.inc.i.i.i.for.body.i.i46.i_crit_edge ], [ %source.addr.0.i.i.i, %for.cond.i.i.for.body.i.i46.i_crit_edge ]
  %fwnode.i.i.i = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %fwnode.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %176, null
  br i1 %tobool3.not.i.i.i, label %for.inc.i.i.i, label %next_source.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i46.i
  %incdec.ptr6.i.i.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i.i.i, i32 1
  %cmp.i.i47.i = icmp ult ptr %incdec.ptr6.i.i.i, %arrayidx2.i.i.i
  br i1 %cmp.i.i47.i, label %for.inc.i.i.i.for.body.i.i46.i_crit_edge, label %for.inc.i.i.i.if.end22.i_crit_edge

for.inc.i.i.i.if.end22.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

for.inc.i.i.i.for.body.i.i46.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i46.i

next_source.exit.i.i:                             ; preds = %for.body.i.i46.i
  %tobool12.not.i.i = icmp eq ptr %source.addr.114.i.i.i, null
  br i1 %tobool12.not.i.i, label %next_source.exit.i.i.if.end22.i_crit_edge, label %for.body.i.i

next_source.exit.i.i.if.end22.i_crit_edge:        ; preds = %next_source.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

for.body.i.i:                                     ; preds = %next_source.exit.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %source.addr.114.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 3
  %177 = ptrtoint ptr %mux.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %mux.i.i, align 4
  %call14.i.i = tail call i32 @i2c_mux_add_adapter(ptr noundef %178, i32 noundef 0, i32 noundef %sub.ptr.div.i.i, i32 noundef 0) #9
  %cmp.i.i79 = icmp slt i32 %call14.i.i, 0
  br i1 %cmp.i.i79, label %error.i48.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

error.i48.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %mux.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mux.i.i, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %180) #9
  br label %do.end21.i

do.end21.i:                                       ; preds = %error.i48.i, %if.end.i.i78.do.end21.i_crit_edge, %if.end15.i.do.end21.i_crit_edge
  %retval.0.i49.i = phi i32 [ %call14.i.i, %error.i48.i ], [ -19, %if.end15.i.do.end21.i_crit_edge ], [ -12, %if.end.i.i78.do.end21.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  %181 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fwnode.i.i, align 4
  tail call void @fwnode_handle_put(ptr noundef %182) #9
  tail call void @v4l2_async_unregister_subdev(ptr noundef %sd.i.i) #9
  %183 = ptrtoint ptr %nsources.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nsources.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i.i53.i = icmp eq i32 %184, 0
  br i1 %tobool.not.i.i53.i, label %do.end21.i.max9286_init.exit.thread86_crit_edge, label %if.end.i.i55.i

do.end21.i.max9286_init.exit.thread86_crit_edge:  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_init.exit.thread86

if.end.i.i55.i:                                   ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %notifier.i.i54.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 22
  tail call void @v4l2_async_nf_unregister(ptr noundef %notifier.i.i54.i) #9
  tail call void @v4l2_async_nf_cleanup(ptr noundef %notifier.i.i54.i) #9
  br label %max9286_init.exit.thread86

if.end22.i:                                       ; preds = %next_source.exit.i.i.if.end22.i_crit_edge, %for.inc.i.i.i.if.end22.i_crit_edge, %for.cond.i.i.if.end22.i_crit_edge
  %185 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %36, align 4
  %call.i.i.i56.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %186, i8 noundef zeroext 10, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i56.i)
  %cmp.i.i.i57.i = icmp slt i32 %call.i.i.i56.i, 0
  br i1 %cmp.i.i.i57.i, label %do.end.i.i.i59.i, label %if.end22.i.max9286_init.exit.thread83_crit_edge

if.end22.i.max9286_init.exit.thread83_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_init.exit.thread83

do.end.i.i.i59.i:                                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %187 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %36, align 4
  %dev.i.i.i58.i = getelementptr inbounds %struct.i2c_client, ptr %188, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i58.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef %call.i.i.i56.i) #12
  br label %max9286_init.exit.thread83

max9286_init.exit.thread83:                       ; preds = %do.end.i.i.i59.i, %if.end22.i.max9286_init.exit.thread83_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  %mux_open.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 9
  %189 = ptrtoint ptr %mux_open.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %mux_open.i.i, align 4
  %mux_channel.i.i = getelementptr inbounds %struct.max9286_priv, ptr %36, i32 0, i32 8
  %190 = ptrtoint ptr %mux_channel.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %mux_channel.i.i, align 4
  br label %cleanup

max9286_init.exit.thread86:                       ; preds = %if.end.i.i55.i, %do.end21.i.max9286_init.exit.thread86_crit_edge
  %191 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regulator.i, align 4
  %call24.i88 = tail call i32 @regulator_disable(ptr noundef %192) #9
  br label %err_cleanup_dt

max9286_init.exit:                                ; preds = %max9286_v4l2_register.exit.i, %if.end.i91.i.i, %err_async.i.i.max9286_init.exit_crit_edge, %max9286_v4l2_register.exit.thread66.i
  %retval.0.i62.i = phi i32 [ %157, %max9286_v4l2_register.exit.i ], [ %call15.i.i.i, %max9286_v4l2_register.exit.thread66.i ], [ %ret.0.i.i, %err_async.i.i.max9286_init.exit_crit_edge ], [ %ret.0.i.i, %if.end.i91.i.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #12
  %193 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regulator.i, align 4
  %call24.i = tail call i32 @regulator_disable(ptr noundef %194) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i62.i)
  %cmp = icmp slt i32 %retval.0.i62.i, 0
  br i1 %cmp, label %max9286_init.exit.err_cleanup_dt_crit_edge, label %max9286_init.exit.cleanup_crit_edge

max9286_init.exit.cleanup_crit_edge:              ; preds = %max9286_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

max9286_init.exit.err_cleanup_dt_crit_edge:       ; preds = %max9286_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup_dt

err_cleanup_dt:                                   ; preds = %max9286_init.exit.err_cleanup_dt_crit_edge, %max9286_init.exit.thread86, %max9286_init.exit.thread
  %retval.0.i82 = phi i32 [ %call1.i, %max9286_init.exit.thread ], [ %retval.0.i62.i, %max9286_init.exit.err_cleanup_dt_crit_edge ], [ %retval.0.i49.i, %max9286_init.exit.thread86 ]
  tail call fastcc void @max9286_cleanup_dt(ptr noundef nonnull %call.i)
  br label %err_powerdown

err_powerdown:                                    ; preds = %err_cleanup_dt, %if.end30.err_powerdown_crit_edge, %if.then25, %max9286_register_gpio.exit
  %ret.0 = phi i32 [ %call3.i, %max9286_register_gpio.exit ], [ %34, %if.then25 ], [ %call31, %if.end30.err_powerdown_crit_edge ], [ %retval.0.i82, %err_cleanup_dt ]
  %195 = ptrtoint ptr %gpiod_pwdn to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %gpiod_pwdn, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %196, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %err_powerdown, %max9286_init.exit.cleanup_crit_edge, %max9286_init.exit.thread83, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %ret.0, %err_powerdown ], [ -12, %entry.cleanup_crit_edge ], [ 0, %max9286_init.exit.cleanup_crit_edge ], [ 0, %max9286_init.exit.thread83 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max9286_cleanup_dt(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sources.i = getelementptr inbounds %struct.max9286_priv, ptr %priv, i32 0, i32 21
  %arrayidx2.i = getelementptr %struct.max9286_priv, ptr %priv, i32 0, i32 22
  %cmp13.i8 = icmp ult ptr %sources.i, %arrayidx2.i
  br i1 %cmp13.i8, label %entry.for.body.i_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %entry.for.body.i_crit_edge
  %source.addr.114.i = phi ptr [ %source.addr.114.i.be, %for.body.i.backedge ], [ %sources.i, %entry.for.body.i_crit_edge ]
  %fwnode.i = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i, i32 0, i32 1
  %0 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwnode.i, align 4
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %for.inc.i, label %next_source.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr6.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr6.i, %arrayidx2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i.backedge_crit_edge, label %for.inc.i.for.end_crit_edge

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.body.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %source.addr.114.i.be = phi ptr [ %incdec.ptr6.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %incdec.ptr.i, %for.body.for.body.i.backedge_crit_edge ]
  br label %for.body.i

next_source.exit:                                 ; preds = %for.body.i
  %tobool.not = icmp eq ptr %source.addr.114.i, null
  br i1 %tobool.not, label %next_source.exit.for.end_crit_edge, label %for.body

next_source.exit.for.end_crit_edge:               ; preds = %next_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %next_source.exit
  %fwnode.i.le = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i, i32 0, i32 1
  %2 = ptrtoint ptr %fwnode.i.le to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode.i.le, align 4
  tail call void @fwnode_handle_put(ptr noundef %3) #9
  %4 = ptrtoint ptr %fwnode.i.le to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fwnode.i.le, align 4
  %incdec.ptr.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i, i32 1
  %cmp13.i = icmp ult ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp13.i, label %for.body.for.body.i.backedge_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body.i.backedge_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.backedge

for.end:                                          ; preds = %for.body.for.end_crit_edge, %next_source.exit.for.end_crit_edge, %for.inc.i.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max9286_parse_dt(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %reverse_channel_microvolt = alloca i32, align 4
  %id = alloca i32, align 4
  %ep = alloca %struct.of_endpoint, align 4
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reverse_channel_microvolt) #9
  %2 = ptrtoint ptr %reverse_channel_microvolt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reverse_channel_microvolt, align 4, !annotation !191
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_node_get(ptr noundef %4) #9
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_find_node_by_name(ptr noundef %6, ptr noundef nonnull @.str.13) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #12
  br label %cleanup119

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_get_next_child(ptr noundef nonnull %call3, ptr noundef null) #9
  %cmp.not175 = icmp eq ptr %call4, null
  br i1 %cmp.not175, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.0177 = phi ptr [ %call21, %cleanup.for.body_crit_edge ], [ %call4, %if.end.for.body_crit_edge ]
  %i2c_mux_mask.0176 = phi i32 [ %i2c_mux_mask.1, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %id, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0177, ptr noundef nonnull @.str.16, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #9
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp6 = icmp ugt i32 %9, 3
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %call9 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %node.0177) #9
  br i1 %call9, label %if.end20, label %do.body11

do.body11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max9286_parse_dt.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max9286_parse_dt, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !192

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max9286_parse_dt.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %11) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %13
  %or = or i32 %shl, %i2c_mux_mask.0176
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then16, %do.body11, %for.body.cleanup_crit_edge
  %i2c_mux_mask.1 = phi i32 [ %or, %if.end20 ], [ %i2c_mux_mask.0176, %for.body.cleanup_crit_edge ], [ %i2c_mux_mask.0176, %if.then16 ], [ %i2c_mux_mask.0176, %do.body11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  %call21 = call ptr @of_get_next_child(ptr noundef nonnull %call3, ptr noundef nonnull %node.0177) #9
  %cmp.not = icmp eq ptr %call21, null
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %i2c_mux_mask.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %i2c_mux_mask.1, %cleanup.for.end_crit_edge ]
  call void @of_node_put(ptr noundef null) #9
  call void @of_node_put(ptr noundef nonnull %call3) #9
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call23 = call ptr @of_graph_get_next_endpoint(ptr noundef %15, ptr noundef null) #9
  %cmp25.not178 = icmp eq ptr %call23, null
  br i1 %cmp25.not178, label %for.end.for.end111_crit_edge, label %for.body26.lr.ph

for.end.for.end111_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end111

for.body26.lr.ph:                                 ; preds = %for.end
  %16 = getelementptr inbounds %struct.of_endpoint, ptr %ep, i32 0, i32 1
  %17 = getelementptr inbounds %struct.of_endpoint, ptr %ep, i32 0, i32 2
  %source_mask = getelementptr inbounds %struct.max9286_priv, ptr %priv, i32 0, i32 17
  %nsources = getelementptr inbounds %struct.max9286_priv, ptr %priv, i32 0, i32 16
  %18 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 3
  %csi2_data_lanes = getelementptr inbounds %struct.max9286_priv, ptr %priv, i32 0, i32 20
  br label %for.body26

for.body26:                                       ; preds = %for.inc108.for.body26_crit_edge, %for.body26.lr.ph
  %node.1179 = phi ptr [ %call23, %for.body26.lr.ph ], [ %call110, %for.inc108.for.body26_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ep) #9
  %19 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ep, align 4, !annotation !191
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %16, align 4, !annotation !191
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %17, align 4, !annotation !191
  %call27 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %node.1179, ptr noundef nonnull %ep) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max9286_parse_dt.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max9286_parse_dt, %if.then40)) #9
          to label %do.end43 [label %if.then40], !srcloc !192

if.then40:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %24 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ep, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max9286_parse_dt.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %23, i32 noundef %25) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %for.body26
  %26 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp45 = icmp ugt i32 %27, 4
  br i1 %cmp45, label %do.end49, label %if.end53

do.end49:                                         ; preds = %do.end43
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %17, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.end49.of_node_full_name.exit_crit_edge, label %cond.true.i

do.end49.of_node_full_name.exit_crit_edge:        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %do.end49.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %31, %cond.true.i ], [ @.str.29, %do.end49.of_node_full_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %cond.i, i32 noundef %27) #12
  br label %cleanup104.thread

if.end53:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp55 = icmp eq i32 %27, 4
  br i1 %cmp55, label %if.then56, label %if.end65

if.then56:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #9
  %32 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 5, ptr %18, align 4
  %fwnode = getelementptr inbounds %struct.device_node, ptr %node.1179, i32 0, i32 3
  %call59 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode, ptr noundef nonnull %vep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup104, label %cleanup104.thread171

cleanup104.thread171:                             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %node.1179) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep) #9
  br label %cleanup119

if.end65:                                         ; preds = %if.end53
  %shl67 = shl nuw nsw i32 1, %27
  %and = and i32 %shl67, %i2c_mux_mask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.end65.cleanup104.thread_crit_edge, label %if.end70

if.end65.cleanup104.thread_crit_edge:             ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104.thread

if.end70:                                         ; preds = %if.end65
  %fwnode72 = getelementptr %struct.max9286_priv, ptr %priv, i32 0, i32 21, i32 %27, i32 1
  %34 = ptrtoint ptr %fwnode72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fwnode72, align 4
  %tobool73.not = icmp eq ptr %35, null
  br i1 %tobool73.not, label %cond.end89, label %do.end77

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %27) #12
  br label %cleanup104.thread

cond.end89:                                       ; preds = %if.end70
  %fwnode87 = getelementptr inbounds %struct.device_node, ptr %node.1179, i32 0, i32 3
  %call91 = call ptr @fwnode_graph_get_remote_endpoint(ptr noundef %fwnode87) #9
  %36 = ptrtoint ptr %fwnode72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call91, ptr %fwnode72, align 4
  %tobool94.not = icmp eq ptr %call91, null
  br i1 %tobool94.not, label %do.end98, label %if.end100

do.end98:                                         ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef %38) #12
  br label %cleanup104.thread

if.end100:                                        ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ep, align 4
  %shl102 = shl nuw i32 1, %40
  %41 = ptrtoint ptr %source_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %source_mask, align 4
  %or103 = or i32 %42, %shl102
  store i32 %or103, ptr %source_mask, align 4
  %43 = ptrtoint ptr %nsources to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nsources, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %nsources, align 4
  br label %cleanup104.thread

cleanup104.thread:                                ; preds = %if.end100, %do.end98, %do.end77, %if.end65.cleanup104.thread_crit_edge, %of_node_full_name.exit
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep) #9
  br label %for.inc108

cleanup104:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_data_lanes, align 1
  %conv = zext i8 %46 to i32
  %47 = ptrtoint ptr %csi2_data_lanes to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv, ptr %csi2_data_lanes, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep) #9
  br label %for.inc108

for.inc108:                                       ; preds = %cleanup104, %cleanup104.thread
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call110 = call ptr @of_graph_get_next_endpoint(ptr noundef %49, ptr noundef nonnull %node.1179) #9
  %cmp25.not = icmp eq ptr %call110, null
  br i1 %cmp25.not, label %for.inc108.for.end111_crit_edge, label %for.inc108.for.body26_crit_edge

for.inc108.for.body26_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.inc108.for.end111_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end111

for.end111:                                       ; preds = %for.inc108.for.end111_crit_edge, %for.end.for.end111_crit_edge
  call void @of_node_put(ptr noundef null) #9
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node, align 8
  %call.i.i165 = call i32 @of_property_read_variable_u32_array(ptr noundef %51, ptr noundef nonnull @.str.28, ptr noundef nonnull %reverse_channel_microvolt, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i165)
  %tobool114.not = icmp sgt i32 %call.i.i165, -1
  br i1 %tobool114.not, label %if.else, label %for.end111.if.end117_crit_edge

for.end111.if.end117_crit_edge:                   ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.else:                                          ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %reverse_channel_microvolt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reverse_channel_microvolt, align 4
  %div = udiv i32 %53, 1000
  br label %if.end117

if.end117:                                        ; preds = %if.else, %for.end111.if.end117_crit_edge
  %.sink = phi i32 [ %div, %if.else ], [ 170, %for.end111.if.end117_crit_edge ]
  %54 = getelementptr inbounds %struct.max9286_priv, ptr %priv, i32 0, i32 10
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %54, align 4
  %source_mask118 = getelementptr inbounds %struct.max9286_priv, ptr %priv, i32 0, i32 17
  %56 = ptrtoint ptr %source_mask118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %source_mask118, align 4
  %route_mask = getelementptr inbounds %struct.max9286_priv, ptr %priv, i32 0, i32 18
  %58 = ptrtoint ptr %route_mask to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %route_mask, align 4
  br label %cleanup119

cleanup119:                                       ; preds = %if.end117, %cleanup104.thread171, %do.end
  %retval.3 = phi i32 [ 0, %if.end117 ], [ -22, %do.end ], [ %call59, %cleanup104.thread171 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reverse_channel_microvolt) #9
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max9286_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl2 = shl nuw i32 1, %offset
  %gpio_state3 = getelementptr inbounds %struct.max9286_priv, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %gpio_state3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio_state3, align 4
  %2 = trunc i32 %shl2 to i8
  %3 = xor i8 %2, -1
  %conv5 = and i8 %1, %3
  %conv1 = or i8 %1, %2
  %conv5.sink = select i1 %tobool.not, i8 %conv5, i8 %conv1
  store i8 %conv5.sink, ptr %gpio_state3, align 4
  %4 = or i8 %conv5.sink, 8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 15, i8 noundef zeroext %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.max9286_write.exit_crit_edge

entry.max9286_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 15, i32 noundef %call.i) #12
  br label %max9286_write.exit

max9286_write.exit:                               ; preds = %do.end.i, %entry.max9286_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %gpio_state = getelementptr inbounds %struct.max9286_priv, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %gpio_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio_state, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %offset
  %and = and i32 %shl, %conv
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max9286_reverse_channel_setup(ptr nocapture noundef %priv, i32 noundef %chan_amplitude) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rev_chan_mv = getelementptr inbounds %struct.max9286_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %rev_chan_mv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev_chan_mv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %chan_amplitude)
  %cmp = icmp eq i32 %1, %chan_amplitude
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rev_chan_mv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %chan_amplitude, ptr %rev_chan_mv, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 63, i8 noundef zeroext 79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.max9286_write.exit_crit_edge

if.end.max9286_write.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 63, i32 noundef %call.i) #12
  br label %max9286_write.exit

max9286_write.exit:                               ; preds = %do.end.i, %if.end.max9286_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %chan_amplitude)
  %cmp2 = icmp ugt i32 %chan_amplitude, 100
  %sub = add i32 %chan_amplitude, -100
  %7 = tail call i32 @llvm.umax.i32(i32 %sub, i32 30)
  %chan_config.0 = select i1 %cmp2, i32 17, i32 16
  %chan_amplitude.addr.0 = select i1 %cmp2, i32 %7, i32 %chan_amplitude
  %sub8 = add i32 %chan_amplitude.addr.0, -30
  %div = udiv i32 %sub8, 10
  %shl = shl nuw nsw i32 %div, 1
  %or9 = or i32 %shl, %chan_config.0
  %conv10 = trunc i32 %or9 to i8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %call.i22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 59, i8 noundef zeroext %conv10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp.i23 = icmp slt i32 %call.i22, 0
  br i1 %cmp.i23, label %do.end.i25, label %max9286_write.exit.max9286_write.exit26_crit_edge

max9286_write.exit.max9286_write.exit26_crit_edge: ; preds = %max9286_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit26

do.end.i25:                                       ; preds = %max9286_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %dev.i24 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i24, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 59, i32 noundef %call.i22) #12
  br label %max9286_write.exit26

max9286_write.exit26:                             ; preds = %do.end.i25, %max9286_write.exit.max9286_write.exit26_crit_edge
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %max9286_write.exit26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_subdev_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_notify_bound(ptr nocapture noundef readonly %notifier, ptr noundef %subdev, ptr nocapture noundef readonly %asd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 2
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %source2 = getelementptr inbounds %struct.max9286_asd, ptr %asd, i32 0, i32 1
  %2 = ptrtoint ptr %source2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source2, align 4
  %sources = getelementptr i8, ptr %1, i32 1224
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %sources to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %fwnode = getelementptr inbounds %struct.max9286_source, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fwnode, align 4
  %call3 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %subdev, ptr noundef %5, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 1, %sub.ptr.div
  %bound_sources = getelementptr i8, ptr %1, i32 1216
  %8 = ptrtoint ptr %bound_sources to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bound_sources, align 4
  %or = or i32 %9, %shl
  store i32 %or, ptr %bound_sources, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %subdev, ptr %3, align 4
  %conv = trunc i32 %call3 to i16
  %conv9 = trunc i32 %sub.ptr.div to i16
  %call10 = tail call i32 @media_create_pad_link(ptr noundef %subdev, i16 noundef zeroext %conv, ptr noundef %1, i16 noundef zeroext %conv9, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.body24, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %name18 = getelementptr inbounds %struct.v4l2_subdev, ptr %14, i32 0, i32 9
  %name21 = getelementptr i8, ptr %1, i32 116
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.58, ptr noundef %name18, i32 noundef %call3, ptr noundef %name21, i32 noundef %sub.ptr.div) #12
  br label %cleanup

do.body24:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max9286_notify_bound.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max9286_notify_bound, %if.then29)) #9
          to label %do.end36 [label %if.then29], !srcloc !192

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %name32 = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max9286_notify_bound.__UNIQUE_ID_ddebug294, ptr noundef %dev31, ptr noundef nonnull @.str.60, ptr noundef %name32, i32 noundef %call3, i32 noundef %sub.ptr.div) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then29, %do.body24
  %17 = ptrtoint ptr %bound_sources to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bound_sources, align 4
  %source_mask = getelementptr i8, ptr %1, i32 1208
  %19 = ptrtoint ptr %source_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %source_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp38.not = icmp eq i32 %18, %20
  br i1 %cmp38.not, label %if.end41, label %do.end36.cleanup_crit_edge

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %do.end36
  tail call fastcc void @max9286_reverse_channel_setup(ptr noundef %add.ptr.i, i32 noundef 170)
  %21 = ptrtoint ptr %source_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %source_mask, align 4
  %and.i = shl i32 %22, 4
  %shl.i = and i32 %and.i, 240
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end41.max9286_read.exit.thread.i_crit_edge, label %if.end.i

if.end41.max9286_read.exit.thread.i_crit_edge:    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

max9286_read.exit.thread.i:                       ; preds = %if.end5.8.i.max9286_read.exit.thread.i_crit_edge, %if.end5.7.i.max9286_read.exit.thread.i_crit_edge, %if.end5.6.i.max9286_read.exit.thread.i_crit_edge, %if.end5.5.i.max9286_read.exit.thread.i_crit_edge, %if.end5.4.i.max9286_read.exit.thread.i_crit_edge, %if.end5.3.i.max9286_read.exit.thread.i_crit_edge, %if.end5.2.i.max9286_read.exit.thread.i_crit_edge, %if.end5.1.i.max9286_read.exit.thread.i_crit_edge, %if.end5.i.max9286_read.exit.thread.i_crit_edge, %if.end41.max9286_read.exit.thread.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end41.max9286_read.exit.thread.i_crit_edge ], [ %call.i.1.i, %if.end5.i.max9286_read.exit.thread.i_crit_edge ], [ %call.i.2.i, %if.end5.1.i.max9286_read.exit.thread.i_crit_edge ], [ %call.i.3.i, %if.end5.2.i.max9286_read.exit.thread.i_crit_edge ], [ %call.i.4.i, %if.end5.3.i.max9286_read.exit.thread.i_crit_edge ], [ %call.i.5.i, %if.end5.4.i.max9286_read.exit.thread.i_crit_edge ], [ %call.i.6.i, %if.end5.5.i.max9286_read.exit.thread.i_crit_edge ], [ %call.i.7.i, %if.end5.6.i.max9286_read.exit.thread.i_crit_edge ], [ %call.i.8.i, %if.end5.7.i.max9286_read.exit.thread.i_crit_edge ], [ %call.i.9.i, %if.end5.8.i.max9286_read.exit.thread.i_crit_edge ]
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 73, i32 noundef %call.i.lcssa.i) #12
  br label %max9286_check_config_link.exit

if.end.i:                                         ; preds = %if.end41
  %and2.i = and i32 %call.i.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.i, i32 %shl.i)
  %cmp3.i = icmp eq i32 %and2.i, %shl.i
  br i1 %cmp3.i, label %if.end.i.do.end11.i_crit_edge, label %if.end5.i

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %call.i.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp.i.1.i, label %if.end5.i.max9286_read.exit.thread.i_crit_edge, label %if.end.1.i

if.end5.i.max9286_read.exit.thread.i_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.1.i:                                       ; preds = %if.end5.i
  %and2.1.i = and i32 %call.i.1.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.1.i, i32 %shl.i)
  %cmp3.1.i = icmp eq i32 %and2.1.i, %shl.i
  br i1 %cmp3.1.i, label %if.end.1.i.do.end11.i_crit_edge, label %if.end5.1.i

if.end.1.i.do.end11.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.1.i:                                      ; preds = %if.end.1.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  %call.i.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp.i.2.i, label %if.end5.1.i.max9286_read.exit.thread.i_crit_edge, label %if.end.2.i

if.end5.1.i.max9286_read.exit.thread.i_crit_edge: ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.2.i:                                       ; preds = %if.end5.1.i
  %and2.2.i = and i32 %call.i.2.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.2.i, i32 %shl.i)
  %cmp3.2.i = icmp eq i32 %and2.2.i, %shl.i
  br i1 %cmp3.2.i, label %if.end.2.i.do.end11.i_crit_edge, label %if.end5.2.i

if.end.2.i.do.end11.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.2.i:                                      ; preds = %if.end.2.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %call.i.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %cmp.i.3.i = icmp slt i32 %call.i.3.i, 0
  br i1 %cmp.i.3.i, label %if.end5.2.i.max9286_read.exit.thread.i_crit_edge, label %if.end.3.i

if.end5.2.i.max9286_read.exit.thread.i_crit_edge: ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.3.i:                                       ; preds = %if.end5.2.i
  %and2.3.i = and i32 %call.i.3.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.3.i, i32 %shl.i)
  %cmp3.3.i = icmp eq i32 %and2.3.i, %shl.i
  br i1 %cmp3.3.i, label %if.end.3.i.do.end11.i_crit_edge, label %if.end5.3.i

if.end.3.i.do.end11.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.3.i:                                      ; preds = %if.end.3.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %call.i.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %34, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %cmp.i.4.i = icmp slt i32 %call.i.4.i, 0
  br i1 %cmp.i.4.i, label %if.end5.3.i.max9286_read.exit.thread.i_crit_edge, label %if.end.4.i

if.end5.3.i.max9286_read.exit.thread.i_crit_edge: ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.4.i:                                       ; preds = %if.end5.3.i
  %and2.4.i = and i32 %call.i.4.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.4.i, i32 %shl.i)
  %cmp3.4.i = icmp eq i32 %and2.4.i, %shl.i
  br i1 %cmp3.4.i, label %if.end.4.i.do.end11.i_crit_edge, label %if.end5.4.i

if.end.4.i.do.end11.i_crit_edge:                  ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.4.i:                                      ; preds = %if.end.4.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %call.i.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5.i)
  %cmp.i.5.i = icmp slt i32 %call.i.5.i, 0
  br i1 %cmp.i.5.i, label %if.end5.4.i.max9286_read.exit.thread.i_crit_edge, label %if.end.5.i

if.end5.4.i.max9286_read.exit.thread.i_crit_edge: ; preds = %if.end5.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.5.i:                                       ; preds = %if.end5.4.i
  %and2.5.i = and i32 %call.i.5.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.5.i, i32 %shl.i)
  %cmp3.5.i = icmp eq i32 %and2.5.i, %shl.i
  br i1 %cmp3.5.i, label %if.end.5.i.do.end11.i_crit_edge, label %if.end5.5.i

if.end.5.i.do.end11.i_crit_edge:                  ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.5.i:                                      ; preds = %if.end.5.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  %call.i.6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6.i)
  %cmp.i.6.i = icmp slt i32 %call.i.6.i, 0
  br i1 %cmp.i.6.i, label %if.end5.5.i.max9286_read.exit.thread.i_crit_edge, label %if.end.6.i

if.end5.5.i.max9286_read.exit.thread.i_crit_edge: ; preds = %if.end5.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.6.i:                                       ; preds = %if.end5.5.i
  %and2.6.i = and i32 %call.i.6.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.6.i, i32 %shl.i)
  %cmp3.6.i = icmp eq i32 %and2.6.i, %shl.i
  br i1 %cmp3.6.i, label %if.end.6.i.do.end11.i_crit_edge, label %if.end5.6.i

if.end.6.i.do.end11.i_crit_edge:                  ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.6.i:                                      ; preds = %if.end.6.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 4
  %call.i.7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7.i)
  %cmp.i.7.i = icmp slt i32 %call.i.7.i, 0
  br i1 %cmp.i.7.i, label %if.end5.6.i.max9286_read.exit.thread.i_crit_edge, label %if.end.7.i

if.end5.6.i.max9286_read.exit.thread.i_crit_edge: ; preds = %if.end5.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.7.i:                                       ; preds = %if.end5.6.i
  %and2.7.i = and i32 %call.i.7.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.7.i, i32 %shl.i)
  %cmp3.7.i = icmp eq i32 %and2.7.i, %shl.i
  br i1 %cmp3.7.i, label %if.end.7.i.do.end11.i_crit_edge, label %if.end5.7.i

if.end.7.i.do.end11.i_crit_edge:                  ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.7.i:                                      ; preds = %if.end.7.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %call.i.8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.8.i)
  %cmp.i.8.i = icmp slt i32 %call.i.8.i, 0
  br i1 %cmp.i.8.i, label %if.end5.7.i.max9286_read.exit.thread.i_crit_edge, label %if.end.8.i

if.end5.7.i.max9286_read.exit.thread.i_crit_edge: ; preds = %if.end5.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.8.i:                                       ; preds = %if.end5.7.i
  %and2.8.i = and i32 %call.i.8.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.8.i, i32 %shl.i)
  %cmp3.8.i = icmp eq i32 %and2.8.i, %shl.i
  br i1 %cmp3.8.i, label %if.end.8.i.do.end11.i_crit_edge, label %if.end5.8.i

if.end.8.i.do.end11.i_crit_edge:                  ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

if.end5.8.i:                                      ; preds = %if.end.8.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %call.i.9.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %44, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.9.i)
  %cmp.i.9.i = icmp slt i32 %call.i.9.i, 0
  br i1 %cmp.i.9.i, label %if.end5.8.i.max9286_read.exit.thread.i_crit_edge, label %if.end.9.i

if.end5.8.i.max9286_read.exit.thread.i_crit_edge: ; preds = %if.end5.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit.thread.i

if.end.9.i:                                       ; preds = %if.end5.8.i
  %and2.9.i = and i32 %call.i.9.i, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and2.9.i, i32 %shl.i)
  %cmp3.9.i = icmp eq i32 %and2.9.i, %shl.i
  br i1 %cmp3.9.i, label %if.end.9.i.do.end11.i_crit_edge, label %do.end.i

if.end.9.i.do.end11.i_crit_edge:                  ; preds = %if.end.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

do.end.i:                                         ; preds = %if.end.9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %and2.9.i, i32 noundef %shl.i) #12
  br label %max9286_check_config_link.exit

do.end11.i:                                       ; preds = %if.end.9.i.do.end11.i_crit_edge, %if.end.8.i.do.end11.i_crit_edge, %if.end.7.i.do.end11.i_crit_edge, %if.end.6.i.do.end11.i_crit_edge, %if.end.5.i.do.end11.i_crit_edge, %if.end.4.i.do.end11.i_crit_edge, %if.end.3.i.do.end11.i_crit_edge, %if.end.2.i.do.end11.i_crit_edge, %if.end.1.i.do.end11.i_crit_edge, %if.end.i.do.end11.i_crit_edge
  %i.0.lcssa.ph.i = phi i32 [ 9, %if.end.9.i.do.end11.i_crit_edge ], [ 8, %if.end.8.i.do.end11.i_crit_edge ], [ 7, %if.end.7.i.do.end11.i_crit_edge ], [ 6, %if.end.6.i.do.end11.i_crit_edge ], [ 5, %if.end.5.i.do.end11.i_crit_edge ], [ 4, %if.end.4.i.do.end11.i_crit_edge ], [ 3, %if.end.3.i.do.end11.i_crit_edge ], [ 2, %if.end.2.i.do.end11.i_crit_edge ], [ 1, %if.end.1.i.do.end11.i_crit_edge ], [ 0, %if.end.i.do.end11.i_crit_edge ]
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13.i, ptr noundef nonnull @.str.64, i32 noundef %i.0.lcssa.ph.i, i32 noundef %shl.i) #12
  br label %max9286_check_config_link.exit

max9286_check_config_link.exit:                   ; preds = %do.end11.i, %do.end.i, %max9286_read.exit.thread.i
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 52, i8 noundef zeroext 46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %cmp.i.i79 = icmp slt i32 %call.i.i78, 0
  br i1 %cmp.i.i79, label %do.end.i.i, label %max9286_check_config_link.exit.max9286_configure_i2c.exit_crit_edge

max9286_check_config_link.exit.max9286_configure_i2c.exit_crit_edge: ; preds = %max9286_check_config_link.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_configure_i2c.exit

do.end.i.i:                                       ; preds = %max9286_check_config_link.exit
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 4
  %dev.i.i80 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i80, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 52, i32 noundef %call.i.i78) #12
  br label %max9286_configure_i2c.exit

max9286_configure_i2c.exit:                       ; preds = %do.end.i.i, %max9286_check_config_link.exit.max9286_configure_i2c.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  %arrayidx2.i.i = getelementptr i8, ptr %1, i32 1256
  %cmp13.i47.i = icmp ult ptr %sources, %arrayidx2.i.i
  br i1 %cmp13.i47.i, label %max9286_configure_i2c.exit.for.body.i.preheader.i_crit_edge, label %max9286_configure_i2c.exit.do.end14.i_crit_edge

max9286_configure_i2c.exit.do.end14.i_crit_edge:  ; preds = %max9286_configure_i2c.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i

max9286_configure_i2c.exit.for.body.i.preheader.i_crit_edge: ; preds = %max9286_configure_i2c.exit
  br label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %cleanup.i.for.body.i.preheader.i_crit_edge, %max9286_configure_i2c.exit.for.body.i.preheader.i_crit_edge
  %source.addr.0.i49.i = phi ptr [ %incdec.ptr.i.i, %cleanup.i.for.body.i.preheader.i_crit_edge ], [ %sources, %max9286_configure_i2c.exit.for.body.i.preheader.i_crit_edge ]
  %pixelrate.048.i = phi i64 [ %pixelrate.2.i, %cleanup.i.for.body.i.preheader.i_crit_edge ], [ 0, %max9286_configure_i2c.exit.for.body.i.preheader.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %source.addr.114.i.i = phi ptr [ %incdec.ptr6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %source.addr.0.i49.i, %for.body.i.preheader.i ]
  %fwnode.i.i = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fwnode.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %54, null
  br i1 %tobool3.not.i.i, label %for.inc.i.i, label %next_source.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr6.i.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i.i, i32 1
  %cmp.i.i81 = icmp ult ptr %incdec.ptr6.i.i, %arrayidx2.i.i
  br i1 %cmp.i.i81, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i_crit_edge

for.inc.i.i.for.end.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

next_source.exit.i:                               ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %source.addr.114.i.i, null
  br i1 %tobool.not.i, label %next_source.exit.i.for.end.i_crit_edge, label %for.body.i

next_source.exit.i.for.end.i_crit_edge:           ; preds = %next_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %next_source.exit.i
  %55 = ptrtoint ptr %source.addr.114.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %source.addr.114.i.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctrl_handler.i, align 4
  %call1.i = tail call ptr @v4l2_ctrl_find(ptr noundef %58, i32 noundef 10422530) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %for.body.i.do.end14.i_crit_edge, label %if.end.i82

for.body.i.do.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i

if.end.i82:                                       ; preds = %for.body.i
  %call3.i = tail call i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef nonnull %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pixelrate.048.i)
  %tobool4.not.i = icmp eq i64 %pixelrate.048.i, 0
  br i1 %tobool4.not.i, label %if.end.i82.cleanup.i_crit_edge, label %if.else.i

if.end.i82.cleanup.i_crit_edge:                   ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_cmp8(i64 %pixelrate.048.i, i64 %call3.i)
  %cmp.not.i = icmp eq i64 %pixelrate.048.i, %call3.i
  br i1 %cmp.not.i, label %if.else.i.cleanup.i_crit_edge, label %cleanup.thread.i

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 4
  %dev.i83 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i83, ptr noundef nonnull @.str.69) #12
  br label %cleanup

cleanup.i:                                        ; preds = %if.else.i.cleanup.i_crit_edge, %if.end.i82.cleanup.i_crit_edge
  %pixelrate.2.i = phi i64 [ %pixelrate.048.i, %if.else.i.cleanup.i_crit_edge ], [ %call3.i, %if.end.i82.cleanup.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i.i, i32 1
  %cmp13.i.i = icmp ult ptr %incdec.ptr.i.i, %arrayidx2.i.i
  br i1 %cmp13.i.i, label %cleanup.i.for.body.i.preheader.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cleanup.i.for.body.i.preheader.i_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %next_source.exit.i.for.end.i_crit_edge, %for.inc.i.i.for.end.i_crit_edge
  %pixelrate.046.i = phi i64 [ %pixelrate.048.i, %for.inc.i.i.for.end.i_crit_edge ], [ %pixelrate.2.i, %cleanup.i.for.end.i_crit_edge ], [ %pixelrate.048.i, %next_source.exit.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pixelrate.046.i)
  %tobool10.not.i = icmp eq i64 %pixelrate.046.i, 0
  br i1 %tobool10.not.i, label %for.end.i.do.end14.i_crit_edge, label %if.end17.i

for.end.i.do.end14.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14.i

do.end14.i:                                       ; preds = %for.end.i.do.end14.i_crit_edge, %for.body.i.do.end14.i_crit_edge, %max9286_configure_i2c.exit.do.end14.i_crit_edge
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.72) #12
  br label %cleanup

if.end17.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pixelrate18.i = getelementptr i8, ptr %1, i32 916
  %63 = ptrtoint ptr %pixelrate18.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pixelrate18.i, align 4
  %nsources.i = getelementptr i8, ptr %1, i32 1204
  %65 = ptrtoint ptr %nsources.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nsources.i, align 4
  %conv.i = zext i32 %66 to i64
  %mul.i = mul i64 %pixelrate.046.i, %conv.i
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %64, i32 0, i32 2
  %67 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %70, i32 noundef 0) #9
  %call.i.i84 = tail call i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef %64, i64 noundef %mul.i) #9
  %71 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i4.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %lock.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock.i4.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %74) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i, %do.end14.i, %cleanup.thread.i, %do.end36.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call10, %do.end14 ], [ 0, %do.end36.cleanup_crit_edge ], [ %call.i.i84, %if.end17.i ], [ -22, %do.end14.i ], [ -22, %cleanup.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max9286_notify_unbind(ptr nocapture noundef readonly %notifier, ptr nocapture noundef readnone %subdev, ptr nocapture noundef readonly %asd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.v4l2_async_notifier, ptr %notifier, i32 0, i32 2
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %source2 = getelementptr inbounds %struct.max9286_asd, ptr %asd, i32 0, i32 1
  %2 = ptrtoint ptr %source2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source2, align 4
  %sources = getelementptr i8, ptr %1, i32 1224
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %sources to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  %shl = shl nuw i32 1, %sub.ptr.div
  %neg = xor i32 %shl, -1
  %bound_sources = getelementptr i8, ptr %1, i32 1216
  %5 = ptrtoint ptr %bound_sources to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bound_sources, align 4
  %and = and i32 %6, %neg
  store i32 %and, ptr %bound_sources, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  br i1 %tobool.not, label %if.else44, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 10, i8 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.max9286_i2c_mux_open.exit_crit_edge

if.then.max9286_i2c_mux_open.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_i2c_mux_open.exit

do.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef %call.i.i.i) #12
  br label %max9286_i2c_mux_open.exit

max9286_i2c_mux_open.exit:                        ; preds = %do.end.i.i.i, %if.then.max9286_i2c_mux_open.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  %mux_open.i = getelementptr i8, ptr %sd, i32 720
  %4 = ptrtoint ptr %mux_open.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %mux_open.i, align 4
  %sources.i = getelementptr i8, ptr %sd, i32 1224
  %arrayidx2.i = getelementptr i8, ptr %sd, i32 1256
  br label %for.cond

for.cond:                                         ; preds = %if.end25.for.cond_crit_edge, %max9286_i2c_mux_open.exit
  %source.0 = phi ptr [ null, %max9286_i2c_mux_open.exit ], [ %source.addr.114.i, %if.end25.for.cond_crit_edge ]
  %tobool.not.i = icmp eq ptr %source.0, null
  %incdec.ptr.i = getelementptr %struct.max9286_source, ptr %source.0, i32 1
  %source.addr.0.i = select i1 %tobool.not.i, ptr %sources.i, ptr %incdec.ptr.i
  %cmp13.i = icmp ult ptr %source.addr.0.i, %arrayidx2.i
  br i1 %cmp13.i, label %for.cond.for.body.i_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body.i_crit_edge:                    ; preds = %for.cond
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.for.body.i_crit_edge
  %source.addr.114.i = phi ptr [ %incdec.ptr6.i, %for.inc.i.for.body.i_crit_edge ], [ %source.addr.0.i, %for.cond.for.body.i_crit_edge ]
  %fwnode.i = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i, i32 0, i32 1
  %5 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwnode.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %for.inc.i, label %next_source.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr6.i = getelementptr %struct.max9286_source, ptr %source.addr.114.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr6.i, %arrayidx2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end_crit_edge

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

next_source.exit:                                 ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %source.addr.114.i, null
  br i1 %tobool2.not, label %next_source.exit.for.end_crit_edge, label %for.body

next_source.exit.for.end_crit_edge:               ; preds = %next_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %next_source.exit
  %7 = ptrtoint ptr %source.addr.114.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %source.addr.114.i, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.else

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %for.body
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_stream, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.else11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %s_stream14 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %s_stream14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_stream14, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end25_crit_edge

land.lhs.true13.if.end25_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %land.lhs.true13.if.end25_crit_edge
  %.sink = phi ptr [ %14, %if.else19 ], [ %17, %land.lhs.true13.if.end25_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %8, i32 noundef 1) #9
  %tobool26.not = icmp eq i32 %call23, 0
  br i1 %tobool26.not, label %if.end25.for.cond_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25.for.cond_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %next_source.exit.for.end_crit_edge, %for.inc.i.for.end_crit_edge, %for.cond.for.end_crit_edge
  %source_mask.i = getelementptr i8, ptr %sd, i32 1208
  br label %for.body.i120

for.body.i120:                                    ; preds = %if.end4.i.for.body.i120_crit_edge, %for.end
  %i.053.i = phi i32 [ 0, %for.end ], [ %inc.i, %if.end4.i.for.body.i120_crit_edge ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %max9286_read.exit.thread.i, label %if.end.i

max9286_read.exit.thread.i:                       ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 73, i32 noundef %call.i.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i120
  %and.i = and i32 %call.i.i, 15
  %22 = ptrtoint ptr %source_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %source_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %23)
  %cmp2.i = icmp eq i32 %and.i, %23
  br i1 %cmp2.i, label %for.end.i, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 500, i32 noundef 2) #9
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end4.i.do.end.i_crit_edge, label %if.end4.i.for.body.i120_crit_edge

if.end4.i.for.body.i120_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i120

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.053.i)
  %cmp5.i = icmp eq i32 %i.053.i, 10
  br i1 %cmp5.i, label %for.end.i.do.end.i_crit_edge, label %for.body10.preheader.i

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body10.preheader.i:                           ; preds = %for.end.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %cmp.i44.i = icmp slt i32 %call.i43.i, 0
  br i1 %cmp.i44.i, label %for.body10.preheader.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.i

for.body10.preheader.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %for.body10.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %if.end4.i.do.end.i_crit_edge
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.76, i32 noundef %call.i.i) #12
  br label %cleanup

max9286_read.exit47.thread.i:                     ; preds = %if.end17.8.i.max9286_read.exit47.thread.i_crit_edge, %if.end17.7.i.max9286_read.exit47.thread.i_crit_edge, %if.end17.6.i.max9286_read.exit47.thread.i_crit_edge, %if.end17.5.i.max9286_read.exit47.thread.i_crit_edge, %if.end17.4.i.max9286_read.exit47.thread.i_crit_edge, %if.end17.3.i.max9286_read.exit47.thread.i_crit_edge, %if.end17.2.i.max9286_read.exit47.thread.i_crit_edge, %if.end17.1.i.max9286_read.exit47.thread.i_crit_edge, %if.end17.i.max9286_read.exit47.thread.i_crit_edge, %for.body10.preheader.i.max9286_read.exit47.thread.i_crit_edge
  %call.i43.lcssa.i = phi i32 [ %call.i43.i, %for.body10.preheader.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.1.i, %if.end17.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.2.i, %if.end17.1.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.3.i, %if.end17.2.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.4.i, %if.end17.3.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.5.i, %if.end17.4.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.6.i, %if.end17.5.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.7.i, %if.end17.6.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.8.i, %if.end17.7.i.max9286_read.exit47.thread.i_crit_edge ], [ %call.i43.9.i, %if.end17.8.i.max9286_read.exit47.thread.i_crit_edge ]
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %dev.i45.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i45.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 39, i32 noundef %call.i43.lcssa.i) #12
  br label %cleanup

if.end14.i:                                       ; preds = %for.body10.preheader.i
  %and15.i = and i32 %call.i43.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i121 = icmp eq i32 %and15.i, 0
  br i1 %tobool.not.i121, label %if.end17.i, label %if.end14.i.for.body34.preheader_crit_edge

if.end14.i.for.body34.preheader_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.i:                                       ; preds = %if.end14.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.1.i)
  %cmp.i44.1.i = icmp slt i32 %call.i43.1.i, 0
  br i1 %cmp.i44.1.i, label %if.end17.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.1.i

if.end17.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.1.i:                                     ; preds = %if.end17.i
  %and15.1.i = and i32 %call.i43.1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.1.i)
  %tobool.not.1.i = icmp eq i32 %and15.1.i, 0
  br i1 %tobool.not.1.i, label %if.end17.1.i, label %if.end14.1.i.for.body34.preheader_crit_edge

if.end14.1.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.1.i:                                     ; preds = %if.end14.1.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.2.i)
  %cmp.i44.2.i = icmp slt i32 %call.i43.2.i, 0
  br i1 %cmp.i44.2.i, label %if.end17.1.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.2.i

if.end17.1.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.2.i:                                     ; preds = %if.end17.1.i
  %and15.2.i = and i32 %call.i43.2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.2.i)
  %tobool.not.2.i = icmp eq i32 %and15.2.i, 0
  br i1 %tobool.not.2.i, label %if.end17.2.i, label %if.end14.2.i.for.body34.preheader_crit_edge

if.end14.2.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.2.i:                                     ; preds = %if.end14.2.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.3.i)
  %cmp.i44.3.i = icmp slt i32 %call.i43.3.i, 0
  br i1 %cmp.i44.3.i, label %if.end17.2.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.3.i

if.end17.2.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.3.i:                                     ; preds = %if.end17.2.i
  %and15.3.i = and i32 %call.i43.3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.3.i)
  %tobool.not.3.i = icmp eq i32 %and15.3.i, 0
  br i1 %tobool.not.3.i, label %if.end17.3.i, label %if.end14.3.i.for.body34.preheader_crit_edge

if.end14.3.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.3.i:                                     ; preds = %if.end14.3.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.4.i)
  %cmp.i44.4.i = icmp slt i32 %call.i43.4.i, 0
  br i1 %cmp.i44.4.i, label %if.end17.3.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.4.i

if.end17.3.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.4.i:                                     ; preds = %if.end17.3.i
  %and15.4.i = and i32 %call.i43.4.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.4.i)
  %tobool.not.4.i = icmp eq i32 %and15.4.i, 0
  br i1 %tobool.not.4.i, label %if.end17.4.i, label %if.end14.4.i.for.body34.preheader_crit_edge

if.end14.4.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.4.i:                                     ; preds = %if.end14.4.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.5.i)
  %cmp.i44.5.i = icmp slt i32 %call.i43.5.i, 0
  br i1 %cmp.i44.5.i, label %if.end17.4.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.5.i

if.end17.4.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.5.i:                                     ; preds = %if.end17.4.i
  %and15.5.i = and i32 %call.i43.5.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.5.i)
  %tobool.not.5.i = icmp eq i32 %and15.5.i, 0
  br i1 %tobool.not.5.i, label %if.end17.5.i, label %if.end14.5.i.for.body34.preheader_crit_edge

if.end14.5.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.5.i:                                     ; preds = %if.end14.5.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %41, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.6.i)
  %cmp.i44.6.i = icmp slt i32 %call.i43.6.i, 0
  br i1 %cmp.i44.6.i, label %if.end17.5.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.6.i

if.end17.5.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.6.i:                                     ; preds = %if.end17.5.i
  %and15.6.i = and i32 %call.i43.6.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.6.i)
  %tobool.not.6.i = icmp eq i32 %and15.6.i, 0
  br i1 %tobool.not.6.i, label %if.end17.6.i, label %if.end14.6.i.for.body34.preheader_crit_edge

if.end14.6.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.6.i:                                     ; preds = %if.end14.6.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.7.i)
  %cmp.i44.7.i = icmp slt i32 %call.i43.7.i, 0
  br i1 %cmp.i44.7.i, label %if.end17.6.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.7.i

if.end17.6.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.7.i:                                     ; preds = %if.end17.6.i
  %and15.7.i = and i32 %call.i43.7.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.7.i)
  %tobool.not.7.i = icmp eq i32 %and15.7.i, 0
  br i1 %tobool.not.7.i, label %if.end17.7.i, label %if.end14.7.i.for.body34.preheader_crit_edge

if.end14.7.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.7.i:                                     ; preds = %if.end14.7.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.8.i)
  %cmp.i44.8.i = icmp slt i32 %call.i43.8.i, 0
  br i1 %cmp.i44.8.i, label %if.end17.7.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.8.i

if.end17.7.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.8.i:                                     ; preds = %if.end17.7.i
  %and15.8.i = and i32 %call.i43.8.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.8.i)
  %tobool.not.8.i = icmp eq i32 %and15.8.i, 0
  br i1 %tobool.not.8.i, label %if.end17.8.i, label %if.end14.8.i.for.body34.preheader_crit_edge

if.end14.8.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

if.end17.8.i:                                     ; preds = %if.end14.8.i
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %call.i43.9.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.9.i)
  %cmp.i44.9.i = icmp slt i32 %call.i43.9.i, 0
  br i1 %cmp.i44.9.i, label %if.end17.8.i.max9286_read.exit47.thread.i_crit_edge, label %if.end14.9.i

if.end17.8.i.max9286_read.exit47.thread.i_crit_edge: ; preds = %if.end17.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit47.thread.i

if.end14.9.i:                                     ; preds = %if.end17.8.i
  %and15.9.i = and i32 %call.i43.9.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.9.i)
  %tobool.not.9.i = icmp eq i32 %and15.9.i, 0
  br i1 %tobool.not.9.i, label %do.end25.i, label %if.end14.9.i.for.body34.preheader_crit_edge

if.end14.9.i.for.body34.preheader_crit_edge:      ; preds = %if.end14.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.preheader

for.body34.preheader:                             ; preds = %if.end14.9.i.for.body34.preheader_crit_edge, %if.end14.8.i.for.body34.preheader_crit_edge, %if.end14.7.i.for.body34.preheader_crit_edge, %if.end14.6.i.for.body34.preheader_crit_edge, %if.end14.5.i.for.body34.preheader_crit_edge, %if.end14.4.i.for.body34.preheader_crit_edge, %if.end14.3.i.for.body34.preheader_crit_edge, %if.end14.2.i.for.body34.preheader_crit_edge, %if.end14.1.i.for.body34.preheader_crit_edge, %if.end14.i.for.body34.preheader_crit_edge
  br label %for.body34

do.end25.i:                                       ; preds = %if.end14.9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 450, i32 noundef 2) #9
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  %dev27.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull @.str.79) #12
  br label %cleanup

for.body34:                                       ; preds = %if.end38.for.body34_crit_edge, %for.body34.preheader
  %i.0175 = phi i32 [ %inc, %if.end38.for.body34_crit_edge ], [ 0, %for.body34.preheader ]
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %51, i8 noundef zeroext 49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i123 = icmp slt i32 %call.i, 0
  br i1 %cmp.i123, label %do.end.i125, label %for.body34.max9286_read.exit_crit_edge

for.body34.max9286_read.exit_crit_edge:           ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_read.exit

do.end.i125:                                      ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  %dev.i124 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i124, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 49, i32 noundef %call.i) #12
  br label %max9286_read.exit

max9286_read.exit:                                ; preds = %do.end.i125, %for.body34.max9286_read.exit_crit_edge
  %and = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end38, label %if.end42

if.end38:                                         ; preds = %max9286_read.exit
  tail call void @usleep_range_state(i32 noundef 9000, i32 noundef 11000, i32 noundef 2) #9
  %inc = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %do.end.critedge, label %if.end38.for.body34_crit_edge

if.end38.for.body34_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

do.end.critedge:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74) #12
  br label %cleanup

if.end42:                                         ; preds = %max9286_read.exit
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  %call.i127 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext 21, i8 noundef zeroext -101) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp.i128 = icmp slt i32 %call.i127, 0
  br i1 %cmp.i128, label %do.end.i130, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i130:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  %dev.i129 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i129, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 21, i32 noundef %call.i127) #12
  br label %cleanup

if.else44:                                        ; preds = %entry
  %call.i132 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 21, i8 noundef zeroext 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.i133 = icmp slt i32 %call.i132, 0
  br i1 %cmp.i133, label %do.end.i135, label %if.else44.max9286_write.exit137_crit_edge

if.else44.max9286_write.exit137_crit_edge:        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_write.exit137

do.end.i135:                                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 4
  %dev.i134 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i134, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 21, i32 noundef %call.i132) #12
  br label %max9286_write.exit137

max9286_write.exit137:                            ; preds = %do.end.i135, %if.else44.max9286_write.exit137_crit_edge
  %sources.i140 = getelementptr i8, ptr %sd, i32 1224
  %arrayidx2.i142 = getelementptr i8, ptr %sd, i32 1256
  %cmp13.i143176 = icmp ult ptr %sources.i140, %arrayidx2.i142
  br i1 %cmp13.i143176, label %max9286_write.exit137.for.body.i147_crit_edge, label %max9286_write.exit137.for.end82_crit_edge

max9286_write.exit137.for.end82_crit_edge:        ; preds = %max9286_write.exit137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end82

max9286_write.exit137.for.body.i147_crit_edge:    ; preds = %max9286_write.exit137
  br label %for.body.i147

for.body.i147:                                    ; preds = %for.body.i147.backedge, %max9286_write.exit137.for.body.i147_crit_edge
  %source.addr.114.i144 = phi ptr [ %source.addr.114.i144.be, %for.body.i147.backedge ], [ %sources.i140, %max9286_write.exit137.for.body.i147_crit_edge ]
  %fwnode.i145 = getelementptr inbounds %struct.max9286_source, ptr %source.addr.114.i144, i32 0, i32 1
  %62 = ptrtoint ptr %fwnode.i145 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fwnode.i145, align 4
  %tobool3.not.i146 = icmp eq ptr %63, null
  br i1 %tobool3.not.i146, label %for.inc.i150, label %next_source.exit152

for.inc.i150:                                     ; preds = %for.body.i147
  %incdec.ptr6.i148 = getelementptr %struct.max9286_source, ptr %source.addr.114.i144, i32 1
  %cmp.i149 = icmp ult ptr %incdec.ptr6.i148, %arrayidx2.i142
  br i1 %cmp.i149, label %for.inc.i150.for.body.i147.backedge_crit_edge, label %for.inc.i150.for.end82_crit_edge

for.inc.i150.for.end82_crit_edge:                 ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end82

for.inc.i150.for.body.i147.backedge_crit_edge:    ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i147.backedge

for.body.i147.backedge:                           ; preds = %if.end80.for.body.i147.backedge_crit_edge, %for.inc.i150.for.body.i147.backedge_crit_edge
  %source.addr.114.i144.be = phi ptr [ %incdec.ptr6.i148, %for.inc.i150.for.body.i147.backedge_crit_edge ], [ %incdec.ptr.i139, %if.end80.for.body.i147.backedge_crit_edge ]
  br label %for.body.i147

next_source.exit152:                              ; preds = %for.body.i147
  %tobool48.not = icmp eq ptr %source.addr.114.i144, null
  br i1 %tobool48.not, label %next_source.exit152.for.end82_crit_edge, label %for.body49

next_source.exit152.for.end82_crit_edge:          ; preds = %next_source.exit152
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end82

for.body49:                                       ; preds = %next_source.exit152
  %64 = ptrtoint ptr %source.addr.114.i144 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %source.addr.114.i144, align 4
  %tobool53.not = icmp eq ptr %65, null
  br i1 %tobool53.not, label %for.body49.if.end80_crit_edge, label %if.else55

for.body49.if.end80_crit_edge:                    ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.else55:                                        ; preds = %for.body49
  %ops56 = getelementptr inbounds %struct.v4l2_subdev, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %ops56 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops56, align 4
  %video57 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %video57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %video57, align 4
  %tobool58.not = icmp eq ptr %69, null
  br i1 %tobool58.not, label %if.else55.if.end80_crit_edge, label %land.lhs.true59

if.else55.if.end80_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.lhs.true59:                                  ; preds = %if.else55
  %s_stream62 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %s_stream62 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_stream62, align 4
  %tobool63.not = icmp eq ptr %71, null
  br i1 %tobool63.not, label %land.lhs.true59.if.end80_crit_edge, label %if.else65

land.lhs.true59.if.end80_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.else65:                                        ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool66.not = icmp eq ptr %72, null
  br i1 %tobool66.not, label %if.else65.if.else73_crit_edge, label %land.lhs.true67

if.else65.if.else73_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else73

land.lhs.true67:                                  ; preds = %if.else65
  %s_stream68 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %s_stream68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_stream68, align 4
  %tobool69.not = icmp eq ptr %74, null
  br i1 %tobool69.not, label %land.lhs.true67.if.else73_crit_edge, label %land.lhs.true67.if.end80.sink.split_crit_edge

land.lhs.true67.if.end80.sink.split_crit_edge:    ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.sink.split

land.lhs.true67.if.else73_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else73

if.else73:                                        ; preds = %land.lhs.true67.if.else73_crit_edge, %if.else65.if.else73_crit_edge
  br label %if.end80.sink.split

if.end80.sink.split:                              ; preds = %if.else73, %land.lhs.true67.if.end80.sink.split_crit_edge
  %.sink196 = phi ptr [ %71, %if.else73 ], [ %74, %land.lhs.true67.if.end80.sink.split_crit_edge ]
  %call77 = tail call i32 %.sink196(ptr noundef nonnull %65, i32 noundef 0) #9
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %land.lhs.true59.if.end80_crit_edge, %if.else55.if.end80_crit_edge, %for.body49.if.end80_crit_edge
  %incdec.ptr.i139 = getelementptr %struct.max9286_source, ptr %source.addr.114.i144, i32 1
  %cmp13.i143 = icmp ult ptr %incdec.ptr.i139, %arrayidx2.i142
  br i1 %cmp13.i143, label %if.end80.for.body.i147.backedge_crit_edge, label %if.end80.for.end82_crit_edge

if.end80.for.end82_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end82

if.end80.for.body.i147.backedge_crit_edge:        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i147.backedge

for.end82:                                        ; preds = %if.end80.for.end82_crit_edge, %next_source.exit152.for.end82_crit_edge, %for.inc.i150.for.end82_crit_edge, %max9286_write.exit137.for.end82_crit_edge
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i.i153 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %76, i8 noundef zeroext 10, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i153)
  %cmp.i.i.i154 = icmp slt i32 %call.i.i.i153, 0
  br i1 %cmp.i.i.i154, label %do.end.i.i.i156, label %for.end82.max9286_i2c_mux_close.exit_crit_edge

for.end82.max9286_i2c_mux_close.exit_crit_edge:   ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_i2c_mux_close.exit

do.end.i.i.i156:                                  ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 4
  %dev.i.i.i155 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i155, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef %call.i.i.i153) #12
  br label %max9286_i2c_mux_close.exit

max9286_i2c_mux_close.exit:                       ; preds = %do.end.i.i.i156, %for.end82.max9286_i2c_mux_close.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  %mux_open.i157 = getelementptr i8, ptr %sd, i32 720
  %79 = ptrtoint ptr %mux_open.i157 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %mux_open.i157, align 4
  %mux_channel.i = getelementptr i8, ptr %sd, i32 716
  %80 = ptrtoint ptr %mux_channel.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %mux_channel.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %max9286_i2c_mux_close.exit, %do.end.i130, %if.end42.cleanup_crit_edge, %do.end.critedge, %do.end25.i, %max9286_read.exit47.thread.i, %do.end.i, %max9286_read.exit.thread.i, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -18, %do.end.critedge ], [ 0, %max9286_i2c_mux_close.exit ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %do.end.i130 ], [ -5, %do.end.i ], [ -5, %do.end25.i ], [ -5, %max9286_read.exit.thread.i ], [ -5, %max9286_read.exit47.thread.i ], [ %call23, %if.end25.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -19, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max9286_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8207, ptr %code1, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %pad1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bound_sources = getelementptr i8, ptr %sd, i32 1216
  %2 = ptrtoint ptr %bound_sources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bound_sources, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #9, !range !193
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pad.0 = phi i32 [ %4, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %pad.0, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %pad.0, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !194

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %pad.0, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i.i
  br label %max9286_get_pad_format.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.max9286_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %pad.0
  br label %max9286_get_pad_format.exit

max9286_get_pad_format.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %max9286_get_pad_format.exit.cleanup_crit_edge, label %if.end5

max9286_get_pad_format.exit.cleanup_crit_edge:    ; preds = %max9286_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %max9286_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr i8, ptr %sd, i32 1112
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %format6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %format6, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %max9286_get_pad_format.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %max9286_get_pad_format.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -8
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  %.off = add i32 %3, -8207
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.end.sw.epilog_crit_edge, label %sw.default

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8207, ptr %code, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %6, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.epilog
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 32
  %8 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.not.i.i, label %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !194

sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %sw.bb.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %11, i32 %spec.select.i.i
  br label %max9286_get_pad_format.exit

sw.bb1.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.max9286_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %1
  br label %max9286_get_pad_format.exit

max9286_get_pad_format.exit:                      ; preds = %sw.bb1.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.bb1.i ], [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %max9286_get_pad_format.exit.cleanup_crit_edge, label %if.end7

max9286_get_pad_format.exit.cleanup_crit_edge:    ; preds = %max9286_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %max9286_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr i8, ptr %sd, i32 1112
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %12 = call ptr @memcpy(ptr %retval.0.i, ptr %format1, i32 48)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %max9286_get_pad_format.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %max9286_get_pad_format.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_open(ptr nocapture noundef readonly %subdev, ptr nocapture noundef readonly %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.v4l2_subdev_fh, ptr %fh, i32 0, i32 2
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i.not = icmp eq i16 %3, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !195

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1280, ptr %5, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 800, ptr %height.i, align 4
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8207, ptr %code.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field.i, align 4
  %11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %11, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %quantization.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %xfer_func.i, align 4
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %17 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp.not.i.1 = icmp ugt i16 %18, 1
  br i1 %cmp.not.i.1, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit.1_crit_edge, label %do.end.i.1, !prof !194

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit.1_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.1

do.end.i.1:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.1

v4l2_subdev_get_try_format.exit.1:                ; preds = %do.end.i.1, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit.1_crit_edge
  %spec.select.i.1 = phi i32 [ 0, %do.end.i.1 ], [ 1, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit.1_crit_edge ]
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %arrayidx.i.1 = getelementptr %struct.v4l2_subdev_pad_config, ptr %20, i32 %spec.select.i.1
  %21 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1280, ptr %arrayidx.i.1, align 4
  %height.i.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.1, i32 0, i32 1
  %22 = ptrtoint ptr %height.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 800, ptr %height.i.1, align 4
  %code.i.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.1, i32 0, i32 2
  %23 = ptrtoint ptr %code.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8207, ptr %code.i.1, align 4
  %colorspace.i.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.1, i32 0, i32 4
  %24 = ptrtoint ptr %colorspace.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %colorspace.i.1, align 4
  %field.i.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.1, i32 0, i32 3
  %25 = ptrtoint ptr %field.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %field.i.1, align 4
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.1, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %26, align 4
  %quantization.i.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.1, i32 0, i32 6
  %28 = ptrtoint ptr %quantization.i.1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %quantization.i.1, align 2
  %xfer_func.i.1 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.1, i32 0, i32 7
  %29 = ptrtoint ptr %xfer_func.i.1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %xfer_func.i.1, align 4
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 4
  %32 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %33)
  %cmp.not.i.2 = icmp ugt i16 %33, 2
  br i1 %cmp.not.i.2, label %v4l2_subdev_get_try_format.exit.1.v4l2_subdev_get_try_format.exit.2_crit_edge, label %do.end.i.2, !prof !194

v4l2_subdev_get_try_format.exit.1.v4l2_subdev_get_try_format.exit.2_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.2

do.end.i.2:                                       ; preds = %v4l2_subdev_get_try_format.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.2

v4l2_subdev_get_try_format.exit.2:                ; preds = %do.end.i.2, %v4l2_subdev_get_try_format.exit.1.v4l2_subdev_get_try_format.exit.2_crit_edge
  %spec.select.i.2 = phi i32 [ 0, %do.end.i.2 ], [ 2, %v4l2_subdev_get_try_format.exit.1.v4l2_subdev_get_try_format.exit.2_crit_edge ]
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %arrayidx.i.2 = getelementptr %struct.v4l2_subdev_pad_config, ptr %35, i32 %spec.select.i.2
  %36 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1280, ptr %arrayidx.i.2, align 4
  %height.i.2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.2, i32 0, i32 1
  %37 = ptrtoint ptr %height.i.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 800, ptr %height.i.2, align 4
  %code.i.2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.2, i32 0, i32 2
  %38 = ptrtoint ptr %code.i.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8207, ptr %code.i.2, align 4
  %colorspace.i.2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.2, i32 0, i32 4
  %39 = ptrtoint ptr %colorspace.i.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %colorspace.i.2, align 4
  %field.i.2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.2, i32 0, i32 3
  %40 = ptrtoint ptr %field.i.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %field.i.2, align 4
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.2, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %41, align 4
  %quantization.i.2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.2, i32 0, i32 6
  %43 = ptrtoint ptr %quantization.i.2 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %quantization.i.2, align 2
  %xfer_func.i.2 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.2, i32 0, i32 7
  %44 = ptrtoint ptr %xfer_func.i.2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %xfer_func.i.2, align 4
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state, align 4
  %47 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %48)
  %cmp.not.i.3 = icmp ugt i16 %48, 3
  br i1 %cmp.not.i.3, label %v4l2_subdev_get_try_format.exit.2.v4l2_subdev_get_try_format.exit.3_crit_edge, label %do.end.i.3, !prof !194

v4l2_subdev_get_try_format.exit.2.v4l2_subdev_get_try_format.exit.3_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.3

do.end.i.3:                                       ; preds = %v4l2_subdev_get_try_format.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.3

v4l2_subdev_get_try_format.exit.3:                ; preds = %do.end.i.3, %v4l2_subdev_get_try_format.exit.2.v4l2_subdev_get_try_format.exit.3_crit_edge
  %spec.select.i.3 = phi i32 [ 0, %do.end.i.3 ], [ 3, %v4l2_subdev_get_try_format.exit.2.v4l2_subdev_get_try_format.exit.3_crit_edge ]
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %arrayidx.i.3 = getelementptr %struct.v4l2_subdev_pad_config, ptr %50, i32 %spec.select.i.3
  %51 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1280, ptr %arrayidx.i.3, align 4
  %height.i.3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.3, i32 0, i32 1
  %52 = ptrtoint ptr %height.i.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 800, ptr %height.i.3, align 4
  %code.i.3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.3, i32 0, i32 2
  %53 = ptrtoint ptr %code.i.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8207, ptr %code.i.3, align 4
  %colorspace.i.3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.3, i32 0, i32 4
  %54 = ptrtoint ptr %colorspace.i.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %colorspace.i.3, align 4
  %field.i.3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.3, i32 0, i32 3
  %55 = ptrtoint ptr %field.i.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %field.i.3, align 4
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.3, i32 0, i32 5
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %56, align 4
  %quantization.i.3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.3, i32 0, i32 6
  %58 = ptrtoint ptr %quantization.i.3 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %quantization.i.3, align 2
  %xfer_func.i.3 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.3, i32 0, i32 7
  %59 = ptrtoint ptr %xfer_func.i.3 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %xfer_func.i.3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max9286_s_ctrl(ptr nocapture noundef readonly %ctrl) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10422530, i32 %1)
  %cond = icmp eq i32 %1, 10422530
  %. = select i1 %cond, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9286_i2c_mux_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mux_open = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mux_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mux_open, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mux_channel = getelementptr inbounds %struct.max9286_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mux_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mux_channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %chan)
  %cmp = icmp eq i32 %5, %chan
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = ptrtoint ptr %mux_channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %chan, ptr %mux_channel, align 4
  %add = add i32 %chan, 4
  %shl = shl nuw i32 1, %add
  %shl4 = shl nuw i32 1, %chan
  %or = or i32 %shl, %shl4
  %conv = trunc i32 %or to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 10, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end2.max9286_i2c_mux_configure.exit_crit_edge

if.end2.max9286_i2c_mux_configure.exit_crit_edge: ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %max9286_i2c_mux_configure.exit

do.end.i.i:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 10, i32 noundef %call.i.i) #12
  br label %max9286_i2c_mux_configure.exit

max9286_i2c_mux_configure.exit:                   ; preds = %do.end.i.i, %if.end2.max9286_i2c_mux_configure.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %max9286_i2c_mux_configure.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !176, !178, !180}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__initcall__kmod_max9286__297_1353_max9286_i2c_driver_init6, !1, !"__initcall__kmod_max9286__297_1353_max9286_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/max9286.c", i32 1353, i32 1}
!2 = !{ptr @__exitcall_max9286_i2c_driver_exit, !1, !"__exitcall_max9286_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/max9286.c", i32 1355, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/max9286.c", i32 1356, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/max9286.c", i32 1357, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/max9286.c", i32 1346, i32 12}
!12 = !{ptr @max9286_i2c_driver, !13, !"max9286_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/max9286.c", i32 1344, i32 26}
!14 = !{ptr @max9286_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/max9286.c", i32 1260, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/max9286.c", i32 1265, i32 59}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/max9286.c", i32 1270, i32 44}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/max9286.c", i32 1295, i32 53}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/max9286.c", i32 1299, i32 10}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/max9286.c", i32 237, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @max9286_write._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @max9286_write._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @max9286_register_gpio.lock_key, !34, !"lock_key", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/max9286.c", i32 1067, i32 8}
!35 = !{ptr @max9286_register_gpio.request_key, !34, !"request_key", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/max9286.c", i32 1069, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @max9286_register_gpio._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @max9286_register_gpio._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/max9286.c", i32 1145, i32 47}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/max9286.c", i32 1147, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @max9286_parse_dt._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @max9286_parse_dt._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/max9286.c", i32 1155, i32 30}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/max9286.c", i32 1160, i32 4}
!52 = !{ptr @max9286_parse_dt.__UNIQUE_ID_ddebug295, !51, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/max9286.c", i32 1175, i32 3}
!55 = !{ptr @max9286_parse_dt.__UNIQUE_ID_ddebug296, !54, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/max9286.c", i32 1179, i32 4}
!58 = !{ptr @max9286_parse_dt._entry.19, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @max9286_parse_dt._entry_ptr.21, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/max9286.c", i32 1209, i32 4}
!62 = !{ptr @max9286_parse_dt._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @max9286_parse_dt._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/max9286.c", i32 1220, i32 4}
!66 = !{ptr @max9286_parse_dt._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @max9286_parse_dt._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/max9286.c", i32 1240, i32 6}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/of.h", i32 261, i32 30}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/max9286.c", i32 1086, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @max9286_init._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @max9286_init._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/max9286.c", i32 1092, i32 3}
!79 = !{ptr @max9286_init._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @max9286_init._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/max9286.c", i32 1102, i32 3}
!83 = !{ptr @max9286_init._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @max9286_init._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/max9286.c", i32 1108, i32 3}
!87 = !{ptr @max9286_init._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @max9286_init._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @max9286_setup.link_order, !90, !"link_order", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/max9286.c", i32 952, i32 18}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/max9286.c", i32 873, i32 3}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @max9286_v4l2_register._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @max9286_v4l2_register._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @max9286_v4l2_register._key, !97, !"_key", i1 false, i1 false}
!97 = !{!"../drivers/media/i2c/max9286.c", i32 886, i32 2}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/max9286.c", i32 910, i32 3}
!101 = !{ptr @max9286_v4l2_register._entry.44, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @max9286_v4l2_register._entry_ptr.46, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/max9286.c", i32 918, i32 3}
!105 = !{ptr @max9286_v4l2_register._entry.47, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @max9286_v4l2_register._entry_ptr.49, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/max9286.c", i32 618, i32 4}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @max9286_v4l2_notifier_register._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @max9286_v4l2_notifier_register._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/max9286.c", i32 631, i32 3}
!114 = !{ptr @max9286_v4l2_notifier_register._entry.52, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @max9286_v4l2_notifier_register._entry_ptr.54, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @max9286_notify_ops, !117, !"max9286_notify_ops", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/max9286.c", i32 595, i32 52}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/max9286.c", i32 535, i32 3}
!120 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @max9286_notify_bound._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @max9286_notify_bound._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/i2c/max9286.c", i32 549, i32 3}
!125 = !{ptr @max9286_notify_bound._entry.57, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @max9286_notify_bound._entry_ptr.59, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/max9286.c", i32 555, i32 2}
!129 = !{ptr @max9286_notify_bound.__UNIQUE_ID_ddebug294, !128, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/max9286.c", i32 462, i32 3}
!132 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @max9286_check_config_link._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @max9286_check_config_link._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/max9286.c", i32 468, i32 2}
!137 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @max9286_check_config_link._entry.63, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @max9286_check_config_link._entry_ptr.66, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/max9286.c", i32 224, i32 3}
!142 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @max9286_read._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @max9286_read._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/max9286.c", i32 501, i32 4}
!147 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @max9286_set_pixelrate._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @max9286_set_pixelrate._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/max9286.c", i32 508, i32 3}
!152 = !{ptr @max9286_set_pixelrate._entry.71, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @max9286_set_pixelrate._entry_ptr.73, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @max9286_subdev_ops, !155, !"max9286_subdev_ops", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/max9286.c", i32 815, i32 37}
!156 = !{ptr @max9286_video_ops, !157, !"max9286_video_ops", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/max9286.c", i32 805, i32 43}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/max9286.c", i32 692, i32 4}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @max9286_s_stream._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @max9286_s_stream._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/max9286.c", i32 405, i32 3}
!165 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @max9286_check_video_links._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @max9286_check_video_links._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/max9286.c", i32 423, i32 3}
!170 = !{ptr @max9286_check_video_links._entry.78, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @max9286_check_video_links._entry_ptr.80, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @max9286_pad_ops, !173, !"max9286_pad_ops", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/max9286.c", i32 809, i32 41}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!176 = !{ptr @max9286_subdev_internal_ops, !177, !"max9286_subdev_internal_ops", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/max9286.c", i32 845, i32 46}
!178 = !{ptr @max9286_ctrl_ops, !179, !"max9286_ctrl_ops", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/max9286.c", i32 859, i32 35}
!180 = !{ptr @max9286_dt_ids, !181, !"max9286_dt_ids", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/max9286.c", i32 1338, i32 34}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{!"auto-init"}
!192 = !{i64 2148789611, i64 2148789616, i64 2148789629, i64 2148789673, i64 2148789707, i64 2148789728}
!193 = !{i32 0, i32 33}
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i8 0, i8 2}
