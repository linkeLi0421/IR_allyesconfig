; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/s5c73m3/s5c73m3-core.c_pt.bc'
source_filename = "../drivers/media/i2c/s5c73m3/s5c73m3-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.s5c73m3_frame_size = type { i32, i32, i8 }
%struct.s5c73m3_interval = type { i16, %struct.v4l2_fract, %struct.v4l2_frmsize_discrete }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsize_discrete = type { i32, i32 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5c73m3 = type { %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.spi_driver, ptr, ptr, i32, i32, [6 x %struct.regulator_bulk_data], [2 x %struct.s5c73m3_gpio], ptr, i32, i32, [2 x ptr], [2 x ptr], i32, ptr, %struct.v4l2_mbus_frame_desc, %struct.mutex, %struct.s5c73m3_ctrls, i8, i16, [8 x i8], [14 x i8], [2 x i8], i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.s5c73m3_gpio = type { i32, i32 }
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.s5c73m3_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.98, %struct.anon.99, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.98 = type { ptr, ptr, ptr }
%struct.anon.99 = type { ptr, ptr }
%struct.anon.100 = type { ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.103, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.103 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.s5c73m3_platform_data = type { i32, %struct.s5c73m3_gpio, %struct.s5c73m3_gpio, i32, i8, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_fh = type { %struct.v4l2_fh, ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.89, %union.anon.90, i32, ptr, i32, %struct.anon.91, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.89 = type { i64 }
%union.anon.90 = type { ptr }
%struct.anon.91 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }

@__param_str_debug = internal constant [14 x i8] c"s5c73m3.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@s5c73m3_dbg = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @s5c73m3_dbg } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"s5c73m3.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_boot_from_rom = internal constant [22 x i8] c"s5c73m3.boot_from_rom\00", align 1
@boot_from_rom = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_boot_from_rom = internal constant %struct.kernel_param { ptr @__param_str_boot_from_rom, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @boot_from_rom } }, section "__param", align 4
@__UNIQUE_ID_boot_from_romtype293 = internal constant [35 x i8] c"s5c73m3.parmtype=boot_from_rom:int\00", section ".modinfo", align 1
@__param_str_update_fw = internal constant [18 x i8] c"s5c73m3.update_fw\00", align 1
@update_fw = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_update_fw = internal constant %struct.kernel_param { ptr @__param_str_update_fw, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @update_fw } }, section "__param", align 4
@__UNIQUE_ID_update_fwtype294 = internal constant [31 x i8] c"s5c73m3.parmtype=update_fw:int\00", section ".modinfo", align 1
@__initcall__kmod_s5c73m3__297_1816_s5c73m3_i2c_driver_init6 = internal global ptr @s5c73m3_i2c_driver_init, section ".initcall6.init", align 4
@s5c73m3_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @s5c73m3_remove, ptr @s5c73m3_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5c73m3_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s5c73m3_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_s5c73m3_i2c_driver_exit = internal global ptr @s5c73m3_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [50 x i8] c"s5c73m3.description=Samsung S5C73M3 camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [59 x i8] c"s5c73m3.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [47 x i8] c"s5c73m3.file=drivers/media/i2c/s5c73m3/s5c73m3\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [20 x i8] c"s5c73m3.license=GPL\00", section ".modinfo", align 1
@s5c73m3_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s %d-%04x: %s: addr 0x%04x, data 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5c73m3_i2c_write\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/i2c/s5c73m3/s5c73m3-core.c\00", [55 x i8] zeroinitializer }, align 32
@s5c73m3_i2c_write._entry_ptr = internal global ptr @s5c73m3_i2c_write._entry, section ".printk_index", align 4
@s5c73m3_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s: addr: 0x%04x, data: 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5c73m3_i2c_read\00", [47 x i8] zeroinitializer }, align 32
@s5c73m3_i2c_read._entry_ptr = internal global ptr @s5c73m3_i2c_read._entry, section ".printk_index", align 4
@s5c73m3_i2c_read._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: I2C read failed: addr: %04x, (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@s5c73m3_i2c_read._entry_ptr.7 = internal global ptr @s5c73m3_i2c_read._entry.5, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s5c73m3_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: status check took %dms\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5c73m3_check_status\00", [43 x i8] zeroinitializer }, align 32
@s5c73m3_check_status._entry_ptr = internal global ptr @s5c73m3_check_status._entry, section ".printk_index", align 4
@s5c73m3_check_status._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: wrong status %#x, expected: %#x, i2c_status: %#x/%#x\0A\00", [36 x i8] zeroinitializer }, align 32
@s5c73m3_check_status._entry_ptr.12 = internal global ptr @s5c73m3_check_status._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S5C73M3\00", [24 x i8] zeroinitializer }, align 32
@s5c73m3_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5c73m3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s5c73m3_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"S5C73M3\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s5c73m3_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@s5c73m3_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5c73m3_pad_ops }, [32 x i8] zeroinitializer }, align 32
@s5c73m3_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @s5c73m3_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@oif_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @s5c73m3_oif_core_ops, ptr null, ptr null, ptr @s5c73m3_oif_video_ops, ptr null, ptr null, ptr null, ptr @s5c73m3_oif_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S5C73M3-OIF\00", [20 x i8] zeroinitializer }, align 32
@oif_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @s5c73m3_oif_registered, ptr @s5c73m3_oif_unregistered, ptr @s5c73m3_oif_open, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@s5c73m3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1721, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5c73m3_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5c73m3_probe._entry_ptr = internal global ptr @s5c73m3_probe._entry, section ".printk_index", align 4
@s5c73m3_isp_resolutions = internal constant { [15 x %struct.s5c73m3_frame_size], [44 x i8] } { [15 x %struct.s5c73m3_frame_size] [%struct.s5c73m3_frame_size { i32 320, i32 240, i8 1 }, %struct.s5c73m3_frame_size { i32 352, i32 288, i8 14 }, %struct.s5c73m3_frame_size { i32 640, i32 480, i8 2 }, %struct.s5c73m3_frame_size { i32 880, i32 720, i8 3 }, %struct.s5c73m3_frame_size { i32 960, i32 720, i8 4 }, %struct.s5c73m3_frame_size { i32 1008, i32 672, i8 15 }, %struct.s5c73m3_frame_size { i32 1184, i32 666, i8 5 }, %struct.s5c73m3_frame_size { i32 1280, i32 720, i8 6 }, %struct.s5c73m3_frame_size { i32 1536, i32 864, i8 7 }, %struct.s5c73m3_frame_size { i32 1600, i32 1200, i8 8 }, %struct.s5c73m3_frame_size { i32 1632, i32 1224, i8 9 }, %struct.s5c73m3_frame_size { i32 1920, i32 1080, i8 10 }, %struct.s5c73m3_frame_size { i32 1920, i32 1440, i8 11 }, %struct.s5c73m3_frame_size { i32 2304, i32 1296, i8 12 }, %struct.s5c73m3_frame_size { i32 3264, i32 2448, i8 13 }], [44 x i8] zeroinitializer }, align 32
@s5c73m3_jpeg_resolutions = internal constant { [15 x %struct.s5c73m3_frame_size], [44 x i8] } { [15 x %struct.s5c73m3_frame_size] [%struct.s5c73m3_frame_size { i32 640, i32 480, i8 16 }, %struct.s5c73m3_frame_size { i32 800, i32 450, i8 32 }, %struct.s5c73m3_frame_size { i32 800, i32 600, i8 48 }, %struct.s5c73m3_frame_size { i32 1024, i32 768, i8 -48 }, %struct.s5c73m3_frame_size { i32 1280, i32 720, i8 64 }, %struct.s5c73m3_frame_size { i32 1280, i32 960, i8 80 }, %struct.s5c73m3_frame_size { i32 1600, i32 900, i8 96 }, %struct.s5c73m3_frame_size { i32 1600, i32 1200, i8 112 }, %struct.s5c73m3_frame_size { i32 2048, i32 1152, i8 -128 }, %struct.s5c73m3_frame_size { i32 2048, i32 1536, i8 -112 }, %struct.s5c73m3_frame_size { i32 2560, i32 1440, i8 -96 }, %struct.s5c73m3_frame_size { i32 2560, i32 1920, i8 -80 }, %struct.s5c73m3_frame_size { i32 3264, i32 1836, i8 -32 }, %struct.s5c73m3_frame_size { i32 3264, i32 2176, i8 -64 }, %struct.s5c73m3_frame_size { i32 3264, i32 2448, i8 -16 }], [44 x i8] zeroinitializer }, align 32
@s5c73m3_intervals = internal constant { [4 x %struct.s5c73m3_interval], [48 x i8] } { [4 x %struct.s5c73m3_interval] [%struct.s5c73m3_interval { i16 9, %struct.v4l2_fract { i32 142857, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 3264, i32 2448 } }, %struct.s5c73m3_interval { i16 4, %struct.v4l2_fract { i32 66667, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 3264, i32 2448 } }, %struct.s5c73m3_interval { i16 3, %struct.v4l2_fract { i32 50000, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 2304, i32 1296 } }, %struct.s5c73m3_interval { i16 2, %struct.v4l2_fract { i32 33333, i32 1000000 }, %struct.v4l2_frmsize_discrete { i32 2304, i32 1296 } }], [48 x i8] zeroinitializer }, align 32
@s5c73m3_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.2, i32 1755, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Device detection failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@s5c73m3_probe._entry_ptr.22 = internal global ptr @s5c73m3_probe._entry.20, section ".printk_index", align 4
@s5c73m3_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 1763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: %s: completed successfully\0A\00", [62 x i8] zeroinitializer }, align 32
@s5c73m3_probe._entry_ptr.25 = internal global ptr @s5c73m3_probe._entry.23, section ".printk_index", align 4
@s5c73m3_get_platform_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1606, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Platform data not specified\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s5c73m3_get_platform_data\00", [38 x i8] zeroinitializer }, align 32
@s5c73m3_get_platform_data._entry_ptr = internal global ptr @s5c73m3_get_platform_data._entry, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cis_extclk\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@s5c73m3_get_platform_data._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.2, i32 1624, ptr @.str.32, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"using default %u Hz clock frequency\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s5c73m3_get_platform_data._entry_ptr.33 = internal global ptr @s5c73m3_get_platform_data._entry.30, section ".printk_index", align 4
@s5c73m3_get_platform_data._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 1633, ptr @.str.36, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no endpoint defined for node: %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s5c73m3_get_platform_data._entry_ptr.37 = internal global ptr @s5c73m3_get_platform_data._entry.34, section ".printk_index", align 4
@s5c73m3_get_platform_data._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.2, i32 1643, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported bus type\0A\00", [42 x i8] zeroinitializer }, align 32
@s5c73m3_get_platform_data._entry_ptr.40 = internal global ptr @s5c73m3_get_platform_data._entry.38, section ".printk_index", align 4
@s5c73m3_get_platform_data._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str.2, i32 1651, ptr @.str.32, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"falling back to 4 MIPI CSI-2 data lanes\0A\00", [55 x i8] zeroinitializer }, align 32
@s5c73m3_get_platform_data._entry_ptr.43 = internal global ptr @s5c73m3_get_platform_data._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"standby-gpios\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xshutdown-gpios\00", [16 x i8] zeroinitializer }, align 32
@s5c73m3_parse_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1586, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse %s DT property\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5c73m3_parse_gpios\00", [44 x i8] zeroinitializer }, align 32
@s5c73m3_parse_gpios._entry_ptr = internal global ptr @s5c73m3_parse_gpios._entry, section ".printk_index", align 4
@s5c73m3_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5c73m3_enum_mbus_code, ptr @s5c73m3_enum_frame_size, ptr null, ptr @s5c73m3_get_fmt, ptr @s5c73m3_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@s5c73m3_enum_mbus_code.codes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8199, i32 20481], [24 x i8] zeroinitializer }, align 32
@s5c73m3_resolutions_len = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 15], [24 x i8] zeroinitializer }, align 32
@s5c73m3_resolutions = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @s5c73m3_isp_resolutions, ptr @s5c73m3_jpeg_resolutions], [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@s5c73m3_oif_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @s5c73m3_oif_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5c73m3_oif_set_power, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5c73m3_oif_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5c73m3_oif_s_stream, ptr null, ptr @s5c73m3_oif_g_frame_interval, ptr @s5c73m3_oif_s_frame_interval, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s5c73m3_oif_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5c73m3_oif_enum_mbus_code, ptr @s5c73m3_oif_enum_frame_size, ptr @s5c73m3_oif_enum_frame_interval, ptr @s5c73m3_oif_get_fmt, ptr @s5c73m3_oif_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5c73m3_oif_get_frame_desc, ptr @s5c73m3_oif_set_frame_desc, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@s5c73m3_oif_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: power: %d, apply_fmt: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5c73m3_oif_log_status\00", [41 x i8] zeroinitializer }, align 32
@s5c73m3_oif_log_status._entry_ptr = internal global ptr @s5c73m3_oif_log_status._entry, section ".printk_index", align 4
@s5c73m3_oif_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Soft landing lens failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5c73m3_oif_set_power\00", [42 x i8] zeroinitializer }, align 32
@s5c73m3_oif_set_power._entry_ptr = internal global ptr @s5c73m3_oif_set_power._entry, section ".printk_index", align 4
@s5c73m3_oif_set_power._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s: power: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@s5c73m3_oif_set_power._entry_ptr.55 = internal global ptr @s5c73m3_oif_set_power._entry.53, section ".printk_index", align 4
@s5c73m3_rom_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: Booting failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5c73m3_rom_boot\00", [47 x i8] zeroinitializer }, align 32
@s5c73m3_rom_boot._entry_ptr = internal global ptr @s5c73m3_rom_boot._entry, section ".printk_index", align 4
@s5c73m3_rom_boot._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Binary read failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@s5c73m3_rom_boot._entry_ptr.60 = internal global ptr @s5c73m3_rom_boot._entry.58, section ".printk_index", align 4
@s5c73m3_read_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: Sensor type: %s, FW version: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5c73m3_read_fw_version\00", [40 x i8] zeroinitializer }, align 32
@s5c73m3_read_fw_version._entry_ptr = internal global ptr @s5c73m3_read_fw_version._entry, section ".printk_index", align 4
@s5c73m3_spi_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: booting failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5c73m3_spi_boot\00", [47 x i8] zeroinitializer }, align 32
@s5c73m3_spi_boot._entry_ptr = internal global ptr @s5c73m3_spi_boot._entry, section ".printk_index", align 4
@s5c73m3_spi_boot._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: SPI not ready: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@s5c73m3_spi_boot._entry_ptr.67 = internal global ptr @s5c73m3_spi_boot._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SlimISP_%.2s.bin\00", [47 x i8] zeroinitializer }, align 32
@s5c73m3_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Firmware request failed (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5c73m3_load_fw\00", [16 x i8] zeroinitializer }, align 32
@s5c73m3_load_fw._entry_ptr = internal global ptr @s5c73m3_load_fw._entry, section ".printk_index", align 4
@s5c73m3_load_fw._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: Loading firmware (%s, %zu B)\0A\00", [60 x i8] zeroinitializer }, align 32
@s5c73m3_load_fw._entry_ptr.73 = internal global ptr @s5c73m3_load_fw._entry.71, section ".printk_index", align 4
@s5c73m3_load_fw._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: SPI write failed\0A\00", [40 x i8] zeroinitializer }, align 32
@s5c73m3_load_fw._entry_ptr.76 = internal global ptr @s5c73m3_load_fw._entry.74, section ".printk_index", align 4
@s5c73m3_fw_update_from._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: Updating F-ROM firmware.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5c73m3_fw_update_from\00", [41 x i8] zeroinitializer }, align 32
@s5c73m3_fw_update_from._entry_ptr = internal global ptr @s5c73m3_fw_update_from._entry, section ".printk_index", align 4
@s5c73m3_fw_update_from._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: Updating F-ROM firmware failed.\0A\00", [57 x i8] zeroinitializer }, align 32
@s5c73m3_fw_update_from._entry_ptr.81 = internal global ptr @s5c73m3_fw_update_from._entry.79, section ".printk_index", align 4
@s5c73m3_fw_update_from._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: Updating F-ROM firmware finished.\0A\00", [55 x i8] zeroinitializer }, align 32
@s5c73m3_fw_update_from._entry_ptr.84 = internal global ptr @s5c73m3_fw_update_from._entry.82, section ".printk_index", align 4
@s5c73m3_fw_update_from._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: Updating F-ROM firmware timed-out.\0A\00", [54 x i8] zeroinitializer }, align 32
@s5c73m3_fw_update_from._entry_ptr.87 = internal global ptr @s5c73m3_fw_update_from._entry.85, section ".printk_index", align 4
@s5c73m3_set_af_softlanding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: AF soft-landing failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s5c73m3_set_af_softlanding\00", [37 x i8] zeroinitializer }, align 32
@s5c73m3_set_af_softlanding._entry_ptr = internal global ptr @s5c73m3_set_af_softlanding._entry, section ".printk_index", align 4
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"succeeded\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timed out\00", [22 x i8] zeroinitializer }, align 32
@s5c73m3_set_af_softlanding._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: AF soft-landing %s after %dms\0A\00", [59 x i8] zeroinitializer }, align 32
@s5c73m3_set_af_softlanding._entry_ptr.95 = internal global ptr @s5c73m3_set_af_softlanding._entry.93, section ".printk_index", align 4
@__s5c73m3_s_stream._entry = internal constant %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 445, ptr null, ptr null }, align 1
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Error setting frame rate(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__s5c73m3_s_stream\00", [45 x i8] zeroinitializer }, align 32
@__s5c73m3_s_stream._entry_ptr = internal global ptr @__s5c73m3_s_stream._entry, section ".printk_index", align 4
@s5c73m3_set_frame_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Preview size: %dx%d, reg_val: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5c73m3_set_frame_size\00", [41 x i8] zeroinitializer }, align 32
@s5c73m3_set_frame_size._entry_ptr = internal global ptr @s5c73m3_set_frame_size._entry, section ".printk_index", align 4
@s5c73m3_set_frame_size._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Capture size: %dx%d, reg_val: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@s5c73m3_set_frame_size._entry_ptr.102 = internal global ptr @s5c73m3_set_frame_size._entry.100, section ".printk_index", align 4
@s5c73m3_oif_s_frame_interval._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Setting %d/%d frame interval\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5c73m3_oif_s_frame_interval\00", [35 x i8] zeroinitializer }, align 32
@s5c73m3_oif_s_frame_interval._entry_ptr = internal global ptr @s5c73m3_oif_s_frame_interval._entry, section ".printk_index", align 4
@__s5c73m3_set_frame_interval._entry = internal constant %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 919, ptr null, ptr null }, align 1
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Changed frame interval to %u us\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__s5c73m3_set_frame_interval\00", [35 x i8] zeroinitializer }, align 32
@__s5c73m3_set_frame_interval._entry_ptr = internal global ptr @__s5c73m3_set_frame_interval._entry, section ".printk_index", align 4
@s5c73m3_oif_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Failed to register %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5c73m3_oif_registered\00", [41 x i8] zeroinitializer }, align 32
@s5c73m3_oif_registered._entry_ptr = internal global ptr @s5c73m3_oif_registered._entry, section ".printk_index", align 4
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S5C73M3_STBY\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S5C73M3_RST\00", [20 x i8] zeroinitializer }, align 32
@s5c73m3_configure_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed to request gpio %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5c73m3_configure_gpios\00", [40 x i8] zeroinitializer }, align 32
@s5c73m3_configure_gpios._entry_ptr = internal global ptr @s5c73m3_configure_gpios._entry, section ".printk_index", align 4
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-int\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-reg\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vddio-host\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddio-cis\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-af\00", [25 x i8] zeroinitializer }, align 32
@__s5c73m3_power_on._entry = internal constant %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 1387, ptr null, ptr null }, align 1
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: clock frequency: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__s5c73m3_power_on\00", [45 x i8] zeroinitializer }, align 32
@__s5c73m3_power_on._entry_ptr = internal global ptr @__s5c73m3_power_on._entry, section ".printk_index", align 4
@s5c73m3_get_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: %s: booting failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5c73m3_get_fw_version\00", [41 x i8] zeroinitializer }, align 32
@s5c73m3_get_fw_version._entry_ptr = internal global ptr @s5c73m3_get_fw_version._entry, section ".printk_index", align 4
@s5c73m3_get_fw_version._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.122, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5c73m3_get_fw_version._entry_ptr.124 = internal global ptr @s5c73m3_get_fw_version._entry.123, section ".printk_index", align 4
@__s5c73m3_power_off._entry = internal constant %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1430, ptr null, ptr null }, align 1
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Failed to re-enable %s: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__s5c73m3_power_off\00", [44 x i8] zeroinitializer }, align 32
@__s5c73m3_power_off._entry_ptr = internal global ptr @__s5c73m3_power_off._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 71, i64 79, i64 83, i64 90]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 7]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 8199, i64 20481]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"s5c73m3_dbg\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 35, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"boot_from_rom\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 38, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [10 x i8] c"update_fw\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 41, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"s5c73m3_i2c_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1806, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 131, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 164, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 170, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 256, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 267, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1809, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"s5c73m3_of_match\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1799, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"s5c73m3_id\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1792, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1673, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"s5c73m3_subdev_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1509, i32 37 }
@___asan_gen_.206 = private unnamed_addr constant [21 x i8] c"s5c73m3_internal_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1498, i32 46 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"oif_subdev_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1540, i32 37 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1696, i32 24 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"oif_internal_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1513, i32 46 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1721, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [24 x i8] c"s5c73m3_isp_resolutions\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 59, i32 40 }
@___asan_gen_.236 = private unnamed_addr constant [25 x i8] c"s5c73m3_jpeg_resolutions\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 77, i32 40 }
@___asan_gen_.239 = private unnamed_addr constant [18 x i8] c"s5c73m3_intervals\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 105, i32 38 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1755, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1763, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1606, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1616, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1620, i32 33 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1623, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1633, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1643, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1651, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1573, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1573, i32 20 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1585, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant [16 x i8] c"s5c73m3_pad_ops\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1502, i32 41 }
@___asan_gen_.317 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1192, i32 19 }
@___asan_gen_.320 = private unnamed_addr constant [24 x i8] c"s5c73m3_resolutions_len\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 100, i32 18 }
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c"s5c73m3_resolutions\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 95, i32 48 }
@___asan_gen_.327 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 998, i32 6 }
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"s5c73m3_oif_core_ops\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1529, i32 42 }
@___asan_gen_.332 = private unnamed_addr constant [22 x i8] c"s5c73m3_oif_video_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1534, i32 43 }
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c"s5c73m3_oif_pad_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1519, i32 41 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1311, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1457, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1462, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 742, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 756, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 514, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 568, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 586, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 350, i32 37 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 354, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 358, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 365, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 526, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 539, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 542, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 549, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 313, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 321, i32 10 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 325, i32 10 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 330, i32 10 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 336, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 445, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 380, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 387, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 932, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 918, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1476, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1549, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1549, i32 19 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1562, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 49, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 50, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 51, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 52, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 54, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 56, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1386, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 673, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 697, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.576 = private constant [44 x i8] c"../drivers/media/i2c/s5c73m3/s5c73m3-core.c\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 1429, i32 4 }
@llvm.compiler.used = appending global [207 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_boot_from_romtype293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_update_fwtype294, ptr @__exitcall_s5c73m3_i2c_driver_exit, ptr @__initcall__kmod_s5c73m3__297_1816_s5c73m3_i2c_driver_init6, ptr @__param_boot_from_rom, ptr @__param_debug, ptr @__param_update_fw, ptr @__s5c73m3_power_off._entry, ptr @__s5c73m3_power_off._entry_ptr, ptr @__s5c73m3_power_on._entry, ptr @__s5c73m3_power_on._entry_ptr, ptr @__s5c73m3_s_stream._entry, ptr @__s5c73m3_s_stream._entry_ptr, ptr @__s5c73m3_set_frame_interval._entry, ptr @__s5c73m3_set_frame_interval._entry_ptr, ptr @s5c73m3_check_status._entry, ptr @s5c73m3_check_status._entry.10, ptr @s5c73m3_check_status._entry_ptr, ptr @s5c73m3_check_status._entry_ptr.12, ptr @s5c73m3_configure_gpios._entry, ptr @s5c73m3_configure_gpios._entry_ptr, ptr @s5c73m3_fw_update_from._entry, ptr @s5c73m3_fw_update_from._entry.79, ptr @s5c73m3_fw_update_from._entry.82, ptr @s5c73m3_fw_update_from._entry.85, ptr @s5c73m3_fw_update_from._entry_ptr, ptr @s5c73m3_fw_update_from._entry_ptr.81, ptr @s5c73m3_fw_update_from._entry_ptr.84, ptr @s5c73m3_fw_update_from._entry_ptr.87, ptr @s5c73m3_get_fw_version._entry, ptr @s5c73m3_get_fw_version._entry.123, ptr @s5c73m3_get_fw_version._entry_ptr, ptr @s5c73m3_get_fw_version._entry_ptr.124, ptr @s5c73m3_get_platform_data._entry, ptr @s5c73m3_get_platform_data._entry.30, ptr @s5c73m3_get_platform_data._entry.34, ptr @s5c73m3_get_platform_data._entry.38, ptr @s5c73m3_get_platform_data._entry.41, ptr @s5c73m3_get_platform_data._entry_ptr, ptr @s5c73m3_get_platform_data._entry_ptr.33, ptr @s5c73m3_get_platform_data._entry_ptr.37, ptr @s5c73m3_get_platform_data._entry_ptr.40, ptr @s5c73m3_get_platform_data._entry_ptr.43, ptr @s5c73m3_i2c_driver_exit, ptr @s5c73m3_i2c_read._entry, ptr @s5c73m3_i2c_read._entry.5, ptr @s5c73m3_i2c_read._entry_ptr, ptr @s5c73m3_i2c_read._entry_ptr.7, ptr @s5c73m3_i2c_write._entry, ptr @s5c73m3_i2c_write._entry_ptr, ptr @s5c73m3_load_fw._entry, ptr @s5c73m3_load_fw._entry.71, ptr @s5c73m3_load_fw._entry.74, ptr @s5c73m3_load_fw._entry_ptr, ptr @s5c73m3_load_fw._entry_ptr.73, ptr @s5c73m3_load_fw._entry_ptr.76, ptr @s5c73m3_oif_log_status._entry, ptr @s5c73m3_oif_log_status._entry_ptr, ptr @s5c73m3_oif_registered._entry, ptr @s5c73m3_oif_registered._entry_ptr, ptr @s5c73m3_oif_s_frame_interval._entry, ptr @s5c73m3_oif_s_frame_interval._entry_ptr, ptr @s5c73m3_oif_set_power._entry, ptr @s5c73m3_oif_set_power._entry.53, ptr @s5c73m3_oif_set_power._entry_ptr, ptr @s5c73m3_oif_set_power._entry_ptr.55, ptr @s5c73m3_parse_gpios._entry, ptr @s5c73m3_parse_gpios._entry_ptr, ptr @s5c73m3_probe._entry, ptr @s5c73m3_probe._entry.20, ptr @s5c73m3_probe._entry.23, ptr @s5c73m3_probe._entry_ptr, ptr @s5c73m3_probe._entry_ptr.22, ptr @s5c73m3_probe._entry_ptr.25, ptr @s5c73m3_read_fw_version._entry, ptr @s5c73m3_read_fw_version._entry_ptr, ptr @s5c73m3_rom_boot._entry, ptr @s5c73m3_rom_boot._entry.58, ptr @s5c73m3_rom_boot._entry_ptr, ptr @s5c73m3_rom_boot._entry_ptr.60, ptr @s5c73m3_set_af_softlanding._entry, ptr @s5c73m3_set_af_softlanding._entry.93, ptr @s5c73m3_set_af_softlanding._entry_ptr, ptr @s5c73m3_set_af_softlanding._entry_ptr.95, ptr @s5c73m3_set_frame_size._entry, ptr @s5c73m3_set_frame_size._entry.100, ptr @s5c73m3_set_frame_size._entry_ptr, ptr @s5c73m3_set_frame_size._entry_ptr.102, ptr @s5c73m3_spi_boot._entry, ptr @s5c73m3_spi_boot._entry.65, ptr @s5c73m3_spi_boot._entry_ptr, ptr @s5c73m3_spi_boot._entry_ptr.67, ptr @s5c73m3_dbg, ptr @boot_from_rom, ptr @update_fw, ptr @s5c73m3_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @s5c73m3_of_match, ptr @s5c73m3_id, ptr @s5c73m3_probe.__key, ptr @.str.14, ptr @s5c73m3_subdev_ops, ptr @s5c73m3_internal_ops, ptr @oif_subdev_ops, ptr @.str.15, ptr @oif_internal_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @s5c73m3_isp_resolutions, ptr @s5c73m3_jpeg_resolutions, ptr @s5c73m3_intervals, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @s5c73m3_pad_ops, ptr @s5c73m3_enum_mbus_code.codes, ptr @s5c73m3_resolutions_len, ptr @s5c73m3_resolutions, ptr @.str.48, ptr @s5c73m3_oif_core_ops, ptr @s5c73m3_oif_video_ops, ptr @s5c73m3_oif_pad_ops, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_from_rom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_fw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_i2c_read._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_check_status._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oif_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oif_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_isp_resolutions to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_jpeg_resolutions to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_intervals to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_get_platform_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_get_platform_data._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_get_platform_data._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_get_platform_data._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_get_platform_data._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_parse_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_enum_mbus_code.codes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_resolutions_len to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_resolutions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_oif_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_oif_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_oif_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_oif_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_oif_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_oif_set_power._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_rom_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_rom_boot._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_read_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_spi_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_spi_boot._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_load_fw._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_load_fw._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_fw_update_from._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_fw_update_from._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_fw_update_from._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_fw_update_from._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_af_softlanding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_af_softlanding._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_frame_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_set_frame_size._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_oif_s_frame_interval._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_oif_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_configure_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_get_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_get_fw_version._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5c73m3_write(ptr nocapture noundef %state, i32 noundef %addr, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %buf.i63 = alloca [4 x i8], align 1
  %buf.i45 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client, align 4
  %i2c_write_address = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_write_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_write_address, align 4
  %xor = xor i32 %3, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %tobool.not = icmp ult i32 %xor, 65536
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %shr = lshr i32 %addr, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #9
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 80, ptr %4, align 1
  %9 = lshr i32 %addr, 24
  %conv7.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i, ptr %5, align 1
  %conv11.i = trunc i32 %shr to i8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11.i, ptr %6, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #9
  %12 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i = icmp sgt i32 %12, 3
  br i1 %cmp.i, label %do.end.i, label %if.then.s5c73m3_i2c_write.exit_crit_edge

if.then.s5c73m3_i2c_write.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_i2c_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i.i, align 4
  %addr15.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr15.i, align 2
  %conv16.i = zext i16 %22 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %20, i32 noundef %conv16.i, ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef %shr) #12
  br label %s5c73m3_i2c_write.exit

s5c73m3_i2c_write.exit:                           ; preds = %do.end.i, %if.then.s5c73m3_i2c_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp22.i.not = icmp eq i32 %call.i.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  br i1 %cmp22.i.not, label %s5c73m3_i2c_write.exit.if.end4_crit_edge, label %if.then2

s5c73m3_i2c_write.exit.if.end4_crit_edge:         ; preds = %s5c73m3_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %s5c73m3_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp26.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp26.i, i32 %call.i.i, i32 -121
  br label %cleanup.sink.split

if.end4:                                          ; preds = %s5c73m3_i2c_write.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %23 = ptrtoint ptr %i2c_write_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i2c_write_address, align 4
  %xor6 = xor i32 %24, %addr
  %and7 = and i32 %xor6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.if.end18_crit_edge, label %if.then9

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then9:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i45) #9
  %25 = getelementptr inbounds [4 x i8], ptr %buf.i45, i32 0, i32 1
  %26 = getelementptr inbounds [4 x i8], ptr %buf.i45, i32 0, i32 2
  %27 = getelementptr inbounds [4 x i8], ptr %buf.i45, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i45 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %buf.i45, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 84, ptr %25, align 1
  %30 = lshr i32 %addr, 8
  %conv7.i46 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv7.i46, ptr %26, align 1
  %conv11.i47 = trunc i32 %addr to i8
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv11.i47, ptr %27, align 1
  %call.i.i48 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i45, i32 noundef 4, i16 noundef zeroext 0) #9
  %33 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i49 = icmp sgt i32 %33, 3
  br i1 %cmp.i49, label %do.end.i57, label %if.then9.s5c73m3_i2c_write.exit62_crit_edge

if.then9.s5c73m3_i2c_write.exit62_crit_edge:      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_i2c_write.exit62

do.end.i57:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i50 = and i32 %addr, 65535
  %driver.i51 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %driver.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver.i51, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %adapter.i52 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %adapter.i52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i52, align 8
  %nr.i.i53 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i.i53, align 4
  %addr15.i54 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %addr15.i54 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr15.i54, align 2
  %conv16.i55 = zext i16 %43 to i32
  %call19.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %37, i32 noundef %41, i32 noundef %conv16.i55, ptr noundef nonnull @.str.1, i32 noundef 84, i32 noundef %conv5.i50) #12
  br label %s5c73m3_i2c_write.exit62

s5c73m3_i2c_write.exit62:                         ; preds = %do.end.i57, %if.then9.s5c73m3_i2c_write.exit62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i48)
  %cmp22.i58.not = icmp eq i32 %call.i.i48, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i45) #9
  br i1 %cmp22.i58.not, label %s5c73m3_i2c_write.exit62.if.end18_crit_edge, label %if.then15

s5c73m3_i2c_write.exit62.if.end18_crit_edge:      ; preds = %s5c73m3_i2c_write.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %s5c73m3_i2c_write.exit62
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %cmp26.i59 = icmp slt i32 %call.i.i48, 0
  %spec.select.i60 = select i1 %cmp26.i59, i32 %call.i.i48, i32 -121
  br label %cleanup.sink.split

if.end18:                                         ; preds = %s5c73m3_i2c_write.exit62.if.end18_crit_edge, %if.end4.if.end18_crit_edge
  %44 = ptrtoint ptr %i2c_write_address to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %addr, ptr %i2c_write_address, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i63) #9
  %45 = getelementptr inbounds [4 x i8], ptr %buf.i63, i32 0, i32 1
  %46 = getelementptr inbounds [4 x i8], ptr %buf.i63, i32 0, i32 2
  %47 = getelementptr inbounds [4 x i8], ptr %buf.i63, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 15, ptr %buf.i63, align 1
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 20, ptr %45, align 1
  %50 = lshr i16 %data, 8
  %conv7.i64 = trunc i16 %50 to i8
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv7.i64, ptr %46, align 1
  %conv11.i65 = trunc i16 %data to i8
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv11.i65, ptr %47, align 1
  %call.i.i66 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i63, i32 noundef 4, i16 noundef zeroext 0) #9
  %53 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp.i67 = icmp sgt i32 %53, 3
  br i1 %cmp.i67, label %do.end.i75, label %if.end18.s5c73m3_i2c_write.exit80_crit_edge

if.end18.s5c73m3_i2c_write.exit80_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_i2c_write.exit80

do.end.i75:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i68 = zext i16 %data to i32
  %driver.i69 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %54 = ptrtoint ptr %driver.i69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver.i69, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %adapter.i70 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %adapter.i70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i70, align 8
  %nr.i.i71 = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %nr.i.i71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr.i.i71, align 4
  %addr15.i72 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %addr15.i72 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %addr15.i72, align 2
  %conv16.i73 = zext i16 %63 to i32
  %call19.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %57, i32 noundef %61, i32 noundef %conv16.i73, ptr noundef nonnull @.str.1, i32 noundef 3860, i32 noundef %conv5.i68) #12
  br label %s5c73m3_i2c_write.exit80

s5c73m3_i2c_write.exit80:                         ; preds = %do.end.i75, %if.end18.s5c73m3_i2c_write.exit80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i66)
  %cmp22.i76.not = icmp eq i32 %call.i.i66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %cmp26.i77 = icmp slt i32 %call.i.i66, 0
  %spec.select.i78 = select i1 %cmp26.i77, i32 %call.i.i66, i32 -121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i63) #9
  br i1 %cmp22.i76.not, label %if.end24, label %s5c73m3_i2c_write.exit80.cleanup_crit_edge

s5c73m3_i2c_write.exit80.cleanup_crit_edge:       ; preds = %s5c73m3_i2c_write.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %s5c73m3_i2c_write.exit80
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %i2c_write_address to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i2c_write_address, align 4
  %add = add i32 %65, 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end24, %if.then15, %if.then2
  %add.sink = phi i32 [ %add, %if.end24 ], [ 0, %if.then15 ], [ 0, %if.then2 ]
  %retval.0.ph = phi i32 [ 0, %if.end24 ], [ %spec.select.i60, %if.then15 ], [ %spec.select.i, %if.then2 ]
  %66 = ptrtoint ptr %i2c_write_address to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.sink, ptr %i2c_write_address, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %s5c73m3_i2c_write.exit80.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i78, %s5c73m3_i2c_write.exit80.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5c73m3_read(ptr nocapture noundef %state, i32 noundef %addr, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %rbuf.i = alloca [2 x i8], align 2
  %wbuf.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i45 = alloca [4 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 6
  %0 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client, align 4
  %i2c_read_address = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 8
  %2 = ptrtoint ptr %i2c_read_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_read_address, align 4
  %xor = xor i32 %3, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %tobool.not = icmp ult i32 %xor, 65536
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %shr = lshr i32 %addr, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #9
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 88, ptr %4, align 1
  %9 = lshr i32 %addr, 24
  %conv7.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i, ptr %5, align 1
  %conv11.i = trunc i32 %shr to i8
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11.i, ptr %6, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 0) #9
  %12 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i = icmp sgt i32 %12, 3
  br i1 %cmp.i, label %do.end.i, label %if.then.s5c73m3_i2c_write.exit_crit_edge

if.then.s5c73m3_i2c_write.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_i2c_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i.i, align 4
  %addr15.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr15.i, align 2
  %conv16.i = zext i16 %22 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %20, i32 noundef %conv16.i, ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef %shr) #12
  br label %s5c73m3_i2c_write.exit

s5c73m3_i2c_write.exit:                           ; preds = %do.end.i, %if.then.s5c73m3_i2c_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp22.i.not = icmp eq i32 %call.i.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  br i1 %cmp22.i.not, label %s5c73m3_i2c_write.exit.if.end4_crit_edge, label %if.then2

s5c73m3_i2c_write.exit.if.end4_crit_edge:         ; preds = %s5c73m3_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %s5c73m3_i2c_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp26.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp26.i, i32 %call.i.i, i32 -121
  %23 = ptrtoint ptr %i2c_read_address to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %i2c_read_address, align 4
  br label %cleanup

if.end4:                                          ; preds = %s5c73m3_i2c_write.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %24 = ptrtoint ptr %i2c_read_address to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i2c_read_address, align 4
  %xor6 = xor i32 %25, %addr
  %and7 = and i32 %xor6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.if.end18_crit_edge, label %if.then9

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then9:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i45) #9
  %26 = getelementptr inbounds [4 x i8], ptr %buf.i45, i32 0, i32 1
  %27 = getelementptr inbounds [4 x i8], ptr %buf.i45, i32 0, i32 2
  %28 = getelementptr inbounds [4 x i8], ptr %buf.i45, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i45 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %buf.i45, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 92, ptr %26, align 1
  %31 = lshr i32 %addr, 8
  %conv7.i46 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv7.i46, ptr %27, align 1
  %conv11.i47 = trunc i32 %addr to i8
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv11.i47, ptr %28, align 1
  %call.i.i48 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i45, i32 noundef 4, i16 noundef zeroext 0) #9
  %34 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i49 = icmp sgt i32 %34, 3
  br i1 %cmp.i49, label %do.end.i57, label %if.then9.s5c73m3_i2c_write.exit62_crit_edge

if.then9.s5c73m3_i2c_write.exit62_crit_edge:      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_i2c_write.exit62

do.end.i57:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i50 = and i32 %addr, 65535
  %driver.i51 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %driver.i51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver.i51, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %adapter.i52 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %adapter.i52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i52, align 8
  %nr.i.i53 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %nr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr.i.i53, align 4
  %addr15.i54 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %addr15.i54 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr15.i54, align 2
  %conv16.i55 = zext i16 %44 to i32
  %call19.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %38, i32 noundef %42, i32 noundef %conv16.i55, ptr noundef nonnull @.str.1, i32 noundef 92, i32 noundef %conv5.i50) #12
  br label %s5c73m3_i2c_write.exit62

s5c73m3_i2c_write.exit62:                         ; preds = %do.end.i57, %if.then9.s5c73m3_i2c_write.exit62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i48)
  %cmp22.i58.not = icmp eq i32 %call.i.i48, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i45) #9
  br i1 %cmp22.i58.not, label %s5c73m3_i2c_write.exit62.if.end18_crit_edge, label %if.then15

s5c73m3_i2c_write.exit62.if.end18_crit_edge:      ; preds = %s5c73m3_i2c_write.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %s5c73m3_i2c_write.exit62
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %cmp26.i59 = icmp slt i32 %call.i.i48, 0
  %spec.select.i60 = select i1 %cmp26.i59, i32 %call.i.i48, i32 -121
  %45 = ptrtoint ptr %i2c_read_address to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %i2c_read_address, align 4
  br label %cleanup

if.end18:                                         ; preds = %s5c73m3_i2c_write.exit62.if.end18_crit_edge, %if.end4.if.end18_crit_edge
  %46 = ptrtoint ptr %i2c_read_address to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %addr, ptr %i2c_read_address, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rbuf.i) #9
  %47 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %rbuf.i, align 2, !annotation !317
  %48 = getelementptr inbounds [2 x i8], ptr %rbuf.i, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %48, align 1, !annotation !317
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #9
  %50 = getelementptr inbounds [2 x i8], ptr %wbuf.i, i32 0, i32 1
  %51 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 15, ptr %wbuf.i, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 20, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #9
  %53 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %54 = call ptr @memset(ptr %53, i32 255, i32 16)
  %addr6.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr6.i, align 2
  %57 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i, align 2
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 2, ptr %53, align 4
  %buf.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %60 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %wbuf.i, ptr %buf.i63, align 4
  %arrayinit.element7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %61 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %56, ptr %arrayinit.element7.i, align 4
  %flags10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %62 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %flags10.i, align 2
  %len11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %63 = ptrtoint ptr %len11.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2, ptr %len11.i, align 4
  %buf12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %64 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %rbuf.i, ptr %buf12.i, align 4
  %adapter.i64 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %adapter.i64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter.i64, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i65 = icmp eq i32 %call.i, 2
  br i1 %cmp.i65, label %if.then.i, label %do.end31.i

if.then.i:                                        ; preds = %if.end18
  %67 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rbuf.i, align 2
  %69 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %data, align 2
  %70 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp18.i = icmp sgt i32 %70, 3
  br i1 %cmp18.i, label %do.end.i66, label %if.then.i.if.end24_crit_edge

if.then.i.if.end24_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end.i66:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %conv24.i = zext i16 %68 to i32
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i, ptr noundef nonnull @.str.4, i32 noundef 3860, i32 noundef %conv24.i) #12
  br label %if.end24

do.end31.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %name33.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name33.i, i32 noundef 3860, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp37.i = icmp sgt i32 %call.i, -1
  %spec.select = select i1 %cmp37.i, i32 -121, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rbuf.i) #9
  br label %cleanup

if.end24:                                         ; preds = %do.end.i66, %if.then.i.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rbuf.i) #9
  %71 = ptrtoint ptr %i2c_read_address to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i2c_read_address, align 4
  %add = add i32 %72, 2
  store i32 %add, ptr %i2c_read_address, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end31.i, %if.then15, %if.then2
  %retval.0 = phi i32 [ %spec.select.i, %if.then2 ], [ %spec.select.i60, %if.then15 ], [ 0, %if.end24 ], [ %spec.select, %do.end31.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5c73m3_isp_command(ptr noundef %state, i16 noundef zeroext %command, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @s5c73m3_check_status(ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 610304, i16 noundef zeroext %command)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 610306, i16 noundef zeroext %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 610432, i16 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5c73m3_check_status(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %status = alloca i16, align 2
  %i2c_status = alloca i16, align 2
  %i2c_seq_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #9
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %status, align 2, !annotation !317
  %add.neg = sub i32 -200, %0
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %call1 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef 610432, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body.do.end_crit_edge, label %lor.lhs.false

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp2 = icmp eq i16 %3, -1
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  %inc = add i32 %count.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %4
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %if.end.do.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %count.1 = phi i32 [ %count.0, %do.body.do.end_crit_edge ], [ %count.0, %lor.lhs.false.do.end_crit_edge ], [ %inc, %if.end.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp6 = icmp sgt i32 %count.1, 0
  br i1 %cmp6, label %do.body9, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body9:                                         ; preds = %do.end
  %5 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp sgt i32 %5, 0
  br i1 %cmp10, label %do.end15, label %do.body9.if.end22_crit_edge

do.body9.if.end22_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub16 = sub i32 %6, %0
  %call17 = tail call i32 @jiffies_to_msecs(i32 noundef %sub16) #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %call17) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end15, %do.body9.if.end22_crit_edge, %do.end.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp23 = icmp eq i32 %call1, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end22
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp26.not = icmp eq i16 %8, -1
  br i1 %cmp26.not, label %land.lhs.true.cleanup_crit_edge, label %if.then28

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_status) #9
  %9 = ptrtoint ptr %i2c_status to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %i2c_status, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_seq_status) #9
  %10 = ptrtoint ptr %i2c_seq_status to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %i2c_seq_status, align 2
  %call29 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef 612766, ptr noundef nonnull %i2c_status)
  %call30 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef 612774, ptr noundef nonnull %i2c_seq_status)
  %name36 = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 9
  %conv38 = zext i16 %8 to i32
  %11 = ptrtoint ptr %i2c_status to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i2c_status, align 2
  %conv39 = zext i16 %12 to i32
  %13 = ptrtoint ptr %i2c_seq_status to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %i2c_seq_status, align 2
  %conv40 = zext i16 %14 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name36, i32 noundef %conv38, i32 noundef 65535, i32 noundef %conv39, i32 noundef %conv40) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_seq_status) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_status) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %land.lhs.true.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then28 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call1, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_i2c_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @s5c73m3_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5c73m3_i2c_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @s5c73m3_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -260
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #9
  tail call void @v4l2_device_unregister_subdev(ptr noundef %add.ptr.i) #9
  tail call void @s5c73m3_unregister_spi_driver(ptr noundef %add.ptr.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_probe(ptr noundef %client) #0 align 64 {
entry:
  %of_flags.i.i = alloca i32, align 4
  %ep.i = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1228, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_client = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %i2c_client, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ep.i) #9
  %5 = call ptr @memset(ptr %ep.i, i32 0, i32 64)
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.end
  %tobool2.not.i = icmp eq ptr %2, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #12
  br label %s5c73m3_get_platform_data.exit.thread189

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 4
  %mclk_frequency4.i = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %mclk_frequency4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mclk_frequency4.i, align 4
  %gpio.i = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 10
  %gpio_stby.i = getelementptr inbounds %struct.s5c73m3_platform_data, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %gpio_stby.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %gpio_stby.i, align 4
  %11 = ptrtoint ptr %gpio.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %gpio.i, align 4
  %arrayidx6.i = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 10, i32 1
  %gpio_reset.i = getelementptr inbounds %struct.s5c73m3_platform_data, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %gpio_reset.i, align 4
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %arrayidx6.i, align 4
  br label %s5c73m3_get_platform_data.exit.thread

if.end7.i:                                        ; preds = %if.end
  %call.i181 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.28) #9
  %clock.i = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 11
  %15 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i181, ptr %clock.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i181, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end13.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call.i181 to i32
  br label %s5c73m3_get_platform_data.exit

if.end13.i:                                       ; preds = %if.end7.i
  %mclk_frequency14.i = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 12
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.29, ptr noundef %mclk_frequency14.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool16.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool16.not.i, label %if.end13.i.if.end23.i_crit_edge, label %if.then17.i

if.end13.i.if.end23.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %mclk_frequency14.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24000000, ptr %mclk_frequency14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef 24000000) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end23.i_crit_edge
  %18 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_client, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %of_node.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4, i32 27
  %20 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_flags.i.i) #9
  %22 = ptrtoint ptr %of_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %of_flags.i.i, align 4, !annotation !317
  %call.i.i = call i32 @of_get_named_gpio_flags(ptr noundef %21, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull %of_flags.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %if.end23.i.s5c73m3_parse_gpios.exit.thread.i_crit_edge, label %if.end.i.i

if.end23.i.s5c73m3_parse_gpios.exit.thread.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_parse_gpios.exit.thread.i

s5c73m3_parse_gpios.exit.thread.i:                ; preds = %if.end.i.i.s5c73m3_parse_gpios.exit.thread.i_crit_edge, %if.end23.i.s5c73m3_parse_gpios.exit.thread.i_crit_edge
  %.lcssa.i.i = phi ptr [ @.str.44, %if.end23.i.s5c73m3_parse_gpios.exit.thread.i_crit_edge ], [ @.str.45, %if.end.i.i.s5c73m3_parse_gpios.exit.thread.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %.lcssa.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_flags.i.i) #9
  br label %s5c73m3_get_platform_data.exit.thread189

if.end.i.i:                                       ; preds = %if.end23.i
  %arrayidx4.i.i = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 10, i32 0
  %23 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i, ptr %arrayidx4.i.i, align 4
  %24 = ptrtoint ptr %of_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %of_flags.i.i, align 4
  %and.i.i = and i32 %25, 1
  %26 = xor i32 %and.i.i, 1
  %level.i.i = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %27 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %level.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_flags.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_flags.i.i) #9
  %28 = ptrtoint ptr %of_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %of_flags.i.i, align 4, !annotation !317
  %call.1.i.i = call i32 @of_get_named_gpio_flags(ptr noundef %21, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull %of_flags.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp2.1.i.i = icmp slt i32 %call.1.i.i, 0
  br i1 %cmp2.1.i.i, label %if.end.i.i.s5c73m3_parse_gpios.exit.thread.i_crit_edge, label %if.end26.i

if.end.i.i.s5c73m3_parse_gpios.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_parse_gpios.exit.thread.i

if.end26.i:                                       ; preds = %if.end.i.i
  %arrayidx4.1.i.i = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.1.i.i, ptr %arrayidx4.1.i.i, align 4
  %30 = ptrtoint ptr %of_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %of_flags.i.i, align 4
  %and.1.i.i = and i32 %31, 1
  %32 = xor i32 %and.1.i.i, 1
  %level.1.i.i = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %33 = ptrtoint ptr %level.1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %level.1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_flags.i.i) #9
  %call27.i = call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %4, ptr noundef null) #9
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %do.end32.i, label %cond.end.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef nonnull %4) #12
  br label %s5c73m3_get_platform_data.exit.thread

cond.end.i:                                       ; preds = %if.end26.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call27.i, i32 0, i32 3
  %call35.i = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode.i, ptr noundef nonnull %ep.i) #9
  call void @of_node_put(ptr noundef nonnull %call27.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %cond.end.i.s5c73m3_get_platform_data.exit_crit_edge

cond.end.i.s5c73m3_get_platform_data.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_get_platform_data.exit

if.end38.i:                                       ; preds = %cond.end.i
  %bus_type.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 1
  %34 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp39.not.i = icmp eq i32 %35, 5
  br i1 %cmp39.not.i, label %if.end44.i, label %do.end43.i

do.end43.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #12
  br label %s5c73m3_get_platform_data.exit.thread189

if.end44.i:                                       ; preds = %if.end38.i
  %num_data_lanes.i = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %ep.i, i32 0, i32 2, i32 2, i32 3
  %36 = ptrtoint ptr %num_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_data_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %37)
  %cmp45.not.i = icmp eq i8 %37, 4
  br i1 %cmp45.not.i, label %if.end44.i.s5c73m3_get_platform_data.exit.thread_crit_edge, label %do.end50.i

if.end44.i.s5c73m3_get_platform_data.exit.thread_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_get_platform_data.exit.thread

do.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.42) #12
  br label %s5c73m3_get_platform_data.exit.thread

s5c73m3_get_platform_data.exit.thread:            ; preds = %do.end50.i, %if.end44.i.s5c73m3_get_platform_data.exit.thread_crit_edge, %do.end32.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #9
  br label %do.body

s5c73m3_get_platform_data.exit.thread189:         ; preds = %do.end43.i, %s5c73m3_parse_gpios.exit.thread.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #9
  br label %cleanup

s5c73m3_get_platform_data.exit:                   ; preds = %cond.end.i.s5c73m3_get_platform_data.exit_crit_edge, %if.then10.i
  %retval.0.i = phi i32 [ %16, %if.then10.i ], [ %call35.i, %cond.end.i.s5c73m3_get_platform_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ep.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %s5c73m3_get_platform_data.exit.cleanup_crit_edge, label %s5c73m3_get_platform_data.exit.do.body_crit_edge

s5c73m3_get_platform_data.exit.do.body_crit_edge: ; preds = %s5c73m3_get_platform_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

s5c73m3_get_platform_data.exit.cleanup_crit_edge: ; preds = %s5c73m3_get_platform_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %s5c73m3_get_platform_data.exit.do.body_crit_edge, %s5c73m3_get_platform_data.exit.thread
  %lock = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 19
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @s5c73m3_probe.__key) #9
  %oif_sd5 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 2
  call void @v4l2_subdev_init(ptr noundef nonnull %call.i, ptr noundef nonnull @s5c73m3_subdev_ops) #9
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %38 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %owner, align 4
  %owner7 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %owner7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %owner7, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %43 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call8 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef 32) #9
  %internal_ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @s5c73m3_internal_ops, ptr %internal_ops, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %or = or i32 %46, 4
  store i32 %or, ptr %flags, align 4
  %sensor_pads = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 1
  %flags9 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 1, i32 1, i32 4
  %47 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %flags9, align 4
  %flags12 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %flags12, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %49 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 131073, ptr %function, align 4
  %call16 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 2, ptr noundef %sensor_pads) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body.cleanup_crit_edge, label %if.end19

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %do.body
  call void @v4l2_i2c_subdev_init(ptr noundef %oif_sd5, ptr noundef %client, ptr noundef nonnull @oif_subdev_ops) #9
  %name20 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 2, i32 9
  %call22 = call i32 @strscpy(ptr noundef %name20, ptr noundef nonnull @.str.15, i32 noundef 32) #9
  %internal_ops23 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 2, i32 7
  %50 = ptrtoint ptr %internal_ops23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @oif_internal_ops, ptr %internal_ops23, align 4
  %flags24 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags24, align 4
  %or25 = or i32 %52, 4
  store i32 %or25, ptr %flags24, align 4
  %oif_pads = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 3
  %flags27 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %53 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %flags27, align 4
  %flags30 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %54 = ptrtoint ptr %flags30 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %flags30, align 4
  %flags33 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 3, i32 2, i32 4
  %55 = ptrtoint ptr %flags33 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %flags33, align 4
  %function35 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %56 = ptrtoint ptr %function35 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16389, ptr %function35, align 4
  %call39 = call i32 @media_entity_pads_init(ptr noundef %oif_sd5, i16 noundef zeroext 3, ptr noundef %oif_pads) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end19.cleanup_crit_edge, label %if.end42

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end19
  %57 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_client, align 4
  %gpio.i183 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  %level.i = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %59 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i184 = icmp eq i32 %60, 0
  %spec.select.i = select i1 %tobool.not.i184, i32 0, i32 2
  %61 = ptrtoint ptr %gpio.i183 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gpio.i183, align 4
  %call.i185 = call i32 @devm_gpio_request_one(ptr noundef %dev.i, i32 noundef %62, i32 noundef %spec.select.i, ptr noundef nonnull @.str.109) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool4.not.i = icmp eq i32 %call.i185, 0
  br i1 %tobool4.not.i, label %for.cond.i, label %if.end42.s5c73m3_configure_gpios.exit.thread_crit_edge

if.end42.s5c73m3_configure_gpios.exit.thread_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_configure_gpios.exit.thread

for.cond.i:                                       ; preds = %if.end42
  %arrayidx.1.i = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 10, i32 1
  %level.1.i = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %63 = ptrtoint ptr %level.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %level.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.1.i = icmp eq i32 %64, 0
  %spec.select.1.i = select i1 %tobool.not.1.i, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.1.i, align 4
  %call.1.i = call i32 @devm_gpio_request_one(ptr noundef %dev.i, i32 noundef %66, i32 noundef %spec.select.1.i, ptr noundef nonnull @.str.110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool4.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool4.not.1.i, label %for.body.preheader, label %for.cond.i.s5c73m3_configure_gpios.exit.thread_crit_edge

for.cond.i.s5c73m3_configure_gpios.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_configure_gpios.exit.thread

for.body.preheader:                               ; preds = %for.cond.i
  %arrayidx49 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 9, i32 0
  %67 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.113, ptr %arrayidx49, align 4
  %arrayidx49.1 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.114, ptr %arrayidx49.1, align 4
  %arrayidx49.2 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 9, i32 2
  %69 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.115, ptr %arrayidx49.2, align 4
  %arrayidx49.3 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 9, i32 3
  %70 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.116, ptr %arrayidx49.3, align 4
  %arrayidx49.4 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 9, i32 4
  %71 = ptrtoint ptr %arrayidx49.4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.117, ptr %arrayidx49.4, align 4
  %arrayidx49.5 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 9, i32 5
  %72 = ptrtoint ptr %arrayidx49.5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.118, ptr %arrayidx49.5, align 4
  %call52 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 6, ptr noundef %arrayidx49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end58, label %do.end57

s5c73m3_configure_gpios.exit.thread:              ; preds = %for.cond.i.s5c73m3_configure_gpios.exit.thread_crit_edge, %if.end42.s5c73m3_configure_gpios.exit.thread_crit_edge
  %.lcssa.i = phi ptr [ @.str.109, %if.end42.s5c73m3_configure_gpios.exit.thread_crit_edge ], [ @.str.110, %for.cond.i.s5c73m3_configure_gpios.exit.thread_crit_edge ]
  %call.lcssa.i = phi i32 [ %call.i185, %if.end42.s5c73m3_configure_gpios.exit.thread_crit_edge ], [ %call.1.i, %for.cond.i.s5c73m3_configure_gpios.exit.thread_crit_edge ]
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 2
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name.i, ptr noundef nonnull %.lcssa.i) #12
  br label %cleanup

do.end57:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end58:                                         ; preds = %for.body.preheader
  %call59 = call i32 @s5c73m3_init_controls(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %sensor_pix_size = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 14
  %73 = ptrtoint ptr %sensor_pix_size to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr getelementptr inbounds ([15 x %struct.s5c73m3_frame_size], ptr @s5c73m3_isp_resolutions, i32 0, i32 1), ptr %sensor_pix_size, align 4
  %arrayidx65 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 14, i32 1
  %74 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr getelementptr inbounds ([15 x %struct.s5c73m3_frame_size], ptr @s5c73m3_jpeg_resolutions, i32 0, i32 1), ptr %arrayidx65, align 4
  %oif_pix_size = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 15
  %75 = ptrtoint ptr %oif_pix_size to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr getelementptr inbounds ([15 x %struct.s5c73m3_frame_size], ptr @s5c73m3_isp_resolutions, i32 0, i32 1), ptr %oif_pix_size, align 4
  %arrayidx72 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 15, i32 1
  %76 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr getelementptr inbounds ([15 x %struct.s5c73m3_frame_size], ptr @s5c73m3_jpeg_resolutions, i32 0, i32 1), ptr %arrayidx72, align 4
  %mbus_code = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 16
  %77 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8199, ptr %mbus_code, align 4
  %fiv = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 17
  %78 = ptrtoint ptr %fiv to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr getelementptr inbounds ([4 x %struct.s5c73m3_interval], ptr @s5c73m3_intervals, i32 0, i32 3), ptr %fiv, align 4
  %fw_file_version = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 25
  %79 = ptrtoint ptr %fw_file_version to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 71, ptr %fw_file_version, align 2
  %arrayidx75 = getelementptr %struct.s5c73m3, ptr %call.i, i32 0, i32 25, i32 1
  %80 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 67, ptr %arrayidx75, align 1
  %call76 = call i32 @s5c73m3_register_spi_driver(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end62.cleanup_crit_edge, label %if.end79

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79:                                         ; preds = %if.end62
  %dev80 = getelementptr inbounds %struct.s5c73m3, ptr %call.i, i32 0, i32 2, i32 14
  %81 = ptrtoint ptr %dev80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %dev1, ptr %dev80, align 4
  %call81 = call fastcc i32 @__s5c73m3_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end79.out_err1_crit_edge, label %if.end84

if.end79.out_err1_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err1

if.end84:                                         ; preds = %if.end79
  %call85 = call fastcc i32 @s5c73m3_get_fw_version(ptr noundef nonnull %call.i)
  %call86 = call fastcc i32 @__s5c73m3_power_off(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp87 = icmp slt i32 %call85, 0
  br i1 %cmp87, label %do.end91, label %if.end92

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call85) #12
  br label %out_err1

if.end92:                                         ; preds = %if.end84
  %call93 = call i32 @v4l2_async_register_subdev(ptr noundef %oif_sd5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.end92.out_err1_crit_edge, label %do.end99

if.end92.out_err1_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err1

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull @.str.17) #12
  br label %cleanup

out_err1:                                         ; preds = %if.end92.out_err1_crit_edge, %do.end91, %if.end79.out_err1_crit_edge
  %ret.0 = phi i32 [ %call81, %if.end79.out_err1_crit_edge ], [ %call85, %do.end91 ], [ %call93, %if.end92.out_err1_crit_edge ]
  call void @s5c73m3_unregister_spi_driver(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err1, %do.end99, %if.end62.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end57, %s5c73m3_configure_gpios.exit.thread, %if.end19.cleanup_crit_edge, %do.body.cleanup_crit_edge, %s5c73m3_get_platform_data.exit.cleanup_crit_edge, %s5c73m3_get_platform_data.exit.thread189, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end99 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %s5c73m3_get_platform_data.exit.cleanup_crit_edge ], [ %call16, %do.body.cleanup_crit_edge ], [ %call39, %if.end19.cleanup_crit_edge ], [ -22, %s5c73m3_get_platform_data.exit.thread189 ], [ %call52, %do.end57 ], [ %call59, %if.end58.cleanup_crit_edge ], [ %call76, %if.end62.cleanup_crit_edge ], [ %ret.0, %out_err1 ], [ %call.lcssa.i, %s5c73m3_configure_gpios.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5c73m3_unregister_spi_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5c73m3_init_controls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5c73m3_register_spi_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__s5c73m3_power_on(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %consumer = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 0, i32 1
  %0 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %consumer, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %entry
  %consumer.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 1, i32 1
  %2 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %consumer.1, align 4
  %call.1 = tail call i32 @regulator_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.for.body23_crit_edge

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

for.inc.1:                                        ; preds = %for.inc
  %consumer.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 2, i32 1
  %4 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumer.2, align 4
  %call.2 = tail call i32 @regulator_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.for.body23_crit_edge

for.inc.1.for.body23_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

for.inc.2:                                        ; preds = %for.inc.1
  %consumer.3 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 3, i32 1
  %6 = ptrtoint ptr %consumer.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer.3, align 4
  %call.3 = tail call i32 @regulator_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.for.body23_crit_edge

for.inc.2.for.body23_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

for.inc.3:                                        ; preds = %for.inc.2
  %consumer.4 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 4, i32 1
  %8 = ptrtoint ptr %consumer.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer.4, align 4
  %call.4 = tail call i32 @regulator_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.for.body23_crit_edge

for.inc.3.for.body23_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

for.inc.4:                                        ; preds = %for.inc.3
  %consumer.5 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 5, i32 1
  %10 = ptrtoint ptr %consumer.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer.5, align 4
  %call.5 = tail call i32 @regulator_enable(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.for.body23_crit_edge

for.inc.4.for.body23_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

for.inc.5:                                        ; preds = %for.inc.4
  %clock = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 11
  %12 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clock, align 4
  %mclk_frequency = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 12
  %14 = ptrtoint ptr %mclk_frequency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_frequency, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %for.inc.5.for.body23_crit_edge, label %if.end4

for.inc.5.for.body23_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

if.end4:                                          ; preds = %for.inc.5
  %16 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.clk_prepare_enable.exit_crit_edge

if.end4.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @clk_enable(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body_crit_edge, label %if.then3.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end4.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end4.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp7, label %clk_prepare_enable.exit.for.body23_crit_edge, label %clk_prepare_enable.exit.do.body_crit_edge

clk_prepare_enable.exit.do.body_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

clk_prepare_enable.exit.for.body23_crit_edge:     ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

do.body:                                          ; preds = %clk_prepare_enable.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge
  %18 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp10 = icmp sgt i32 %18, 0
  br i1 %cmp10, label %do.end, label %do.body.do.end18_crit_edge

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 2, i32 9
  %19 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clock, align 4
  %call14 = tail call i32 @clk_get_rate(ptr noundef %20) #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name, i32 noundef %call14) #12
  br label %do.end18

do.end18:                                         ; preds = %do.end, %do.body.do.end18_crit_edge
  %arrayidx.i.i = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 10, i32 0
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %23 = icmp ult i32 %22, 2048
  br i1 %23, label %if.end.i.i, label %do.end18.s5c73m3_gpio_deassert.exit_crit_edge

do.end18.s5c73m3_gpio_deassert.exit_crit_edge:    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_gpio_deassert.exit

if.end.i.i:                                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %level.i = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 10, i32 0, i32 1
  %24 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i49 = icmp eq i32 %25, 0
  %lnot.ext.i.i = zext i1 %tobool.not.i49 to i32
  %call.i.i.i = tail call ptr @gpio_to_desc(i32 noundef %22) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i, i32 noundef %lnot.ext.i.i) #9
  br label %s5c73m3_gpio_deassert.exit

s5c73m3_gpio_deassert.exit:                       ; preds = %if.end.i.i, %do.end18.s5c73m3_gpio_deassert.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  %arrayidx.i.i50 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %27)
  %28 = icmp ult i32 %27, 2048
  br i1 %28, label %if.end.i.i55, label %s5c73m3_gpio_deassert.exit.s5c73m3_gpio_deassert.exit56_crit_edge

s5c73m3_gpio_deassert.exit.s5c73m3_gpio_deassert.exit56_crit_edge: ; preds = %s5c73m3_gpio_deassert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_gpio_deassert.exit56

if.end.i.i55:                                     ; preds = %s5c73m3_gpio_deassert.exit
  call void @__sanitizer_cov_trace_pc() #11
  %level.i51 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 10, i32 1, i32 1
  %29 = ptrtoint ptr %level.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %level.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i52 = icmp eq i32 %30, 0
  %lnot.ext.i.i53 = zext i1 %tobool.not.i52 to i32
  %call.i.i.i54 = tail call ptr @gpio_to_desc(i32 noundef %27) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i54, i32 noundef %lnot.ext.i.i53) #9
  br label %s5c73m3_gpio_deassert.exit56

s5c73m3_gpio_deassert.exit56:                     ; preds = %if.end.i.i55, %s5c73m3_gpio_deassert.exit.s5c73m3_gpio_deassert.exit56_crit_edge
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  br label %cleanup

for.body23:                                       ; preds = %clk_prepare_enable.exit.for.body23_crit_edge, %for.inc.5.for.body23_crit_edge, %for.inc.4.for.body23_crit_edge, %for.inc.3.for.body23_crit_edge, %for.inc.2.for.body23_crit_edge, %for.inc.1.for.body23_crit_edge, %for.inc.for.body23_crit_edge
  %i.060.ph = phi i32 [ 5, %for.inc.4.for.body23_crit_edge ], [ 4, %for.inc.3.for.body23_crit_edge ], [ 3, %for.inc.2.for.body23_crit_edge ], [ 2, %for.inc.1.for.body23_crit_edge ], [ 1, %for.inc.for.body23_crit_edge ], [ 6, %clk_prepare_enable.exit.for.body23_crit_edge ], [ 6, %for.inc.5.for.body23_crit_edge ]
  %ret.0.ph = phi i32 [ %call.5, %for.inc.4.for.body23_crit_edge ], [ %call.4, %for.inc.3.for.body23_crit_edge ], [ %call.3, %for.inc.2.for.body23_crit_edge ], [ %call.2, %for.inc.1.for.body23_crit_edge ], [ %call.1, %for.inc.for.body23_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.for.body23_crit_edge ], [ %call1, %for.inc.5.for.body23_crit_edge ]
  %i.164 = add nsw i32 %i.060.ph, -1
  %consumer26 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.164, i32 1
  %31 = ptrtoint ptr %consumer26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %consumer26, align 4
  %call27 = tail call i32 @regulator_disable(ptr noundef %32) #9
  br i1 %tobool.not.1, label %for.body23.1, label %for.body23.cleanup_crit_edge

for.body23.cleanup_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body23.1:                                     ; preds = %for.body23
  %i.164.1 = add nsw i32 %i.060.ph, -2
  %consumer26.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.164.1, i32 1
  %33 = ptrtoint ptr %consumer26.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %consumer26.1, align 4
  %call27.1 = tail call i32 @regulator_disable(ptr noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.164)
  %cmp22.1 = icmp ugt i32 %i.164, 1
  br i1 %cmp22.1, label %for.body23.2, label %for.body23.1.cleanup_crit_edge

for.body23.1.cleanup_crit_edge:                   ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body23.2:                                     ; preds = %for.body23.1
  %i.164.2 = add nsw i32 %i.060.ph, -3
  %consumer26.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.164.2, i32 1
  %35 = ptrtoint ptr %consumer26.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %consumer26.2, align 4
  %call27.2 = tail call i32 @regulator_disable(ptr noundef %36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.164.1)
  %cmp22.2 = icmp ugt i32 %i.164.1, 1
  br i1 %cmp22.2, label %for.body23.3, label %for.body23.2.cleanup_crit_edge

for.body23.2.cleanup_crit_edge:                   ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body23.3:                                     ; preds = %for.body23.2
  %i.164.3 = add nsw i32 %i.060.ph, -4
  %consumer26.3 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.164.3, i32 1
  %37 = ptrtoint ptr %consumer26.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %consumer26.3, align 4
  %call27.3 = tail call i32 @regulator_disable(ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.164.2)
  %cmp22.3 = icmp ugt i32 %i.164.2, 1
  br i1 %cmp22.3, label %for.body23.4, label %for.body23.3.cleanup_crit_edge

for.body23.3.cleanup_crit_edge:                   ; preds = %for.body23.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body23.4:                                     ; preds = %for.body23.3
  %i.164.4 = add nsw i32 %i.060.ph, -5
  %consumer26.4 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.164.4, i32 1
  %39 = ptrtoint ptr %consumer26.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %consumer26.4, align 4
  %call27.4 = tail call i32 @regulator_disable(ptr noundef %40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.164.3)
  %cmp22.4 = icmp ugt i32 %i.164.3, 1
  br i1 %cmp22.4, label %for.body23.5, label %for.body23.4.cleanup_crit_edge

for.body23.4.cleanup_crit_edge:                   ; preds = %for.body23.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body23.5:                                     ; preds = %for.body23.4
  call void @__sanitizer_cov_trace_pc() #11
  %i.164.5 = add nsw i32 %i.060.ph, -6
  %consumer26.5 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.164.5, i32 1
  %41 = ptrtoint ptr %consumer26.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %consumer26.5, align 4
  %call27.5 = tail call i32 @regulator_disable(ptr noundef %42) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body23.5, %for.body23.4.cleanup_crit_edge, %for.body23.3.cleanup_crit_edge, %for.body23.2.cleanup_crit_edge, %for.body23.1.cleanup_crit_edge, %for.body23.cleanup_crit_edge, %s5c73m3_gpio_deassert.exit56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %s5c73m3_gpio_deassert.exit56 ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0.ph, %for.body23.5 ], [ %ret.0.ph, %for.body23.4.cleanup_crit_edge ], [ %ret.0.ph, %for.body23.3.cleanup_crit_edge ], [ %ret.0.ph, %for.body23.2.cleanup_crit_edge ], [ %ret.0.ph, %for.body23.1.cleanup_crit_edge ], [ %ret.0.ph, %for.body23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5c73m3_get_fw_version(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %reg.i68 = alloca i16, align 2
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 805306372, i16 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 400, i32 noundef 500, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #9
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %reg.i, align 2
  %call.i = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef 806354960, ptr noundef nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %reg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %2)
  %cmp2.i = icmp eq i16 %2, 12
  br i1 %cmp2.i, label %if.end.i.if.end5_crit_edge, label %cleanup.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

cleanup.i:                                        ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %call.i.1 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef 806354960, ptr noundef nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp1.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp1.i.1, label %cleanup.i.do.end_crit_edge, label %if.end.i.1

cleanup.i.do.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i.1:                                       ; preds = %cleanup.i
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %reg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %4)
  %cmp2.i.1 = icmp eq i16 %4, 12
  br i1 %cmp2.i.1, label %if.end.i.1.if.end5_crit_edge, label %cleanup.i.1

if.end.i.1.if.end5_crit_edge:                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

cleanup.i.1:                                      ; preds = %if.end.i.1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %call.i.2 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef 806354960, ptr noundef nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp1.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp1.i.2, label %cleanup.i.1.do.end_crit_edge, label %if.end.i.2

cleanup.i.1.do.end_crit_edge:                     ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i.2:                                       ; preds = %cleanup.i.1
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %6)
  %cmp2.i.2 = icmp eq i16 %6, 12
  br i1 %cmp2.i.2, label %if.end.i.2.if.end5_crit_edge, label %cleanup.i.2

if.end.i.2.if.end5_crit_edge:                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

cleanup.i.2:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  br label %do.end

do.end:                                           ; preds = %cleanup.i.2, %cleanup.i.1.do.end_crit_edge, %cleanup.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.2.i.ph = phi i32 [ %call.i, %if.end.do.end_crit_edge ], [ %call.i.1, %cleanup.i.do.end_crit_edge ], [ %call.i.2, %cleanup.i.1.do.end_crit_edge ], [ -110, %cleanup.i.2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #9
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %name, ptr noundef nonnull @.str.122, i32 noundef %retval.2.i.ph) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.2.if.end5_crit_edge, %if.end.i.1.if.end5_crit_edge, %if.end.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #9
  %call6 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 806355232, i16 noundef zeroext 2080)
  %call7 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 806355236, i16 noundef zeroext 2080)
  %call8 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 66584, i16 noundef zeroext 8)
  %call9 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 806354964, i16 noundef zeroext 8518)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 806354960, i16 noundef zeroext 8972)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i68) #9
  %7 = ptrtoint ptr %reg.i68 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %reg.i68, align 2
  br label %while.body.i73

while.body.i73:                                   ; preds = %cleanup.i78.while.body.i73_crit_edge, %if.end16
  %dec13.in.i69 = phi i32 [ 300, %if.end16 ], [ %dec13.i70, %cleanup.i78.while.body.i73_crit_edge ]
  %dec13.i70 = add nsw i32 %dec13.in.i69, -1
  %call.i71 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef 806354960, ptr noundef nonnull %reg.i68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp1.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp1.i72, label %while.body.i73.do.end22_crit_edge, label %if.end.i76

while.body.i73.do.end22_crit_edge:                ; preds = %while.body.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

if.end.i76:                                       ; preds = %while.body.i73
  %8 = ptrtoint ptr %reg.i68 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg.i68, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8974, i16 %9)
  %cmp2.i75 = icmp eq i16 %9, 8974
  br i1 %cmp2.i75, label %s5c73m3_system_status_wait.exit80, label %cleanup.i78

cleanup.i78:                                      ; preds = %if.end.i76
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %cmp.not.i77 = icmp eq i32 %dec13.i70, 0
  br i1 %cmp.not.i77, label %cleanup.i78.do.end22_crit_edge, label %cleanup.i78.while.body.i73_crit_edge

cleanup.i78.while.body.i73_crit_edge:             ; preds = %cleanup.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i73

cleanup.i78.do.end22_crit_edge:                   ; preds = %cleanup.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

s5c73m3_system_status_wait.exit80:                ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i68) #9
  br label %if.end27

do.end22:                                         ; preds = %cleanup.i78.do.end22_crit_edge, %while.body.i73.do.end22_crit_edge
  %retval.2.i79.ph = phi i32 [ -110, %cleanup.i78.do.end22_crit_edge ], [ %call.i71, %while.body.i73.do.end22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i68) #9
  %name24 = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name24, i32 noundef %retval.2.i79.ph) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end22, %s5c73m3_system_status_wait.exit80
  %call28 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 805306372, i16 noundef zeroext -3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %call32 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 806355108, i16 noundef zeroext 387)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %call.i81 = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 806354968, i16 noundef zeroext 1560) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp4.i = icmp slt i32 %call.i81, 0
  br i1 %cmp4.i, label %if.end35.s5c73m3_set_timing_register_for_vdd.exit_crit_edge, label %for.cond.i

if.end35.s5c73m3_set_timing_register_for_vdd.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_timing_register_for_vdd.exit

for.cond.i:                                       ; preds = %if.end35
  %call.1.i = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 806354972, i16 noundef zeroext 4289) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp4.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp4.1.i, label %for.cond.i.s5c73m3_set_timing_register_for_vdd.exit_crit_edge, label %for.cond.1.i

for.cond.i.s5c73m3_set_timing_register_for_vdd.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_timing_register_for_vdd.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 806354976, i16 noundef zeroext 9374) #9
  br label %s5c73m3_set_timing_register_for_vdd.exit

s5c73m3_set_timing_register_for_vdd.exit:         ; preds = %for.cond.1.i, %for.cond.i.s5c73m3_set_timing_register_for_vdd.exit_crit_edge, %if.end35.s5c73m3_set_timing_register_for_vdd.exit_crit_edge
  %call37 = tail call fastcc i32 @s5c73m3_read_fw_version(ptr noundef %state)
  %sensor_fw.i = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 23
  %10 = ptrtoint ptr %sensor_fw.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor_fw.i, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.i_crit_edge [
    i8 71, label %s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.sink.split.i_crit_edge
    i8 79, label %s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.sink.split.i_crit_edge89
    i8 83, label %s5c73m3_set_timing_register_for_vdd.exit.sw.bb2.i_crit_edge
    i8 90, label %s5c73m3_set_timing_register_for_vdd.exit.sw.bb2.i_crit_edge90
  ]

s5c73m3_set_timing_register_for_vdd.exit.sw.bb2.i_crit_edge90: ; preds = %s5c73m3_set_timing_register_for_vdd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

s5c73m3_set_timing_register_for_vdd.exit.sw.bb2.i_crit_edge: ; preds = %s5c73m3_set_timing_register_for_vdd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.sink.split.i_crit_edge89: ; preds = %s5c73m3_set_timing_register_for_vdd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.sink.split.i_crit_edge: ; preds = %s5c73m3_set_timing_register_for_vdd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i

s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.i_crit_edge: ; preds = %s5c73m3_set_timing_register_for_vdd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %s5c73m3_set_timing_register_for_vdd.exit.sw.bb2.i_crit_edge, %s5c73m3_set_timing_register_for_vdd.exit.sw.bb2.i_crit_edge90
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.sink.split.i_crit_edge, %s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.sink.split.i_crit_edge89
  %.sink.i = phi i8 [ 90, %sw.bb2.i ], [ 71, %s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.sink.split.i_crit_edge ], [ 71, %s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.sink.split.i_crit_edge89 ]
  %fw_file_version3.i = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 25
  %13 = ptrtoint ptr %fw_file_version3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink.i, ptr %fw_file_version3.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %s5c73m3_set_timing_register_for_vdd.exit.sw.epilog.i_crit_edge
  %arrayidx6.i = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 23, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 1
  %.off.i = add i8 %15, -67
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 4
  br i1 %switch.i, label %sw.bb8.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb8.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.i = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 25, i32 1
  %16 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx12.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8.i, %sw.epilog.i.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i.ph, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call9, %if.end5.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call37, %sw.epilog.i.cleanup_crit_edge ], [ %call37, %sw.bb8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__s5c73m3_power_off(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %level.i = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 10, i32 1, i32 1
  %3 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i = icmp ne i32 %4, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  %call.i.i.i = tail call ptr @gpio_to_desc(i32 noundef %1) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i, i32 noundef %lnot.ext.i.i) #9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i.i49 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 10, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %7 = icmp ult i32 %6, 2048
  br i1 %7, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %level.i50 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 10, i32 0, i32 1
  %8 = ptrtoint ptr %level.i50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.i51 = icmp ne i32 %9, 0
  %lnot.ext.i.i52 = zext i1 %tobool.i.i51 to i32
  %call.i.i.i53 = tail call ptr @gpio_to_desc(i32 noundef %6) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i.i53, i32 noundef %lnot.ext.i.i52) #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %clock = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 11
  %10 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %streaming = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 21
  %12 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %streaming, align 4
  %bf.clear6 = and i8 %bf.load, 111
  store i8 %bf.clear6, ptr %streaming, align 4
  %consumer = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 5, i32 1
  %13 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %consumer, align 4
  %call8 = tail call i32 @regulator_disable(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.inc, label %if.end4.for.end27_crit_edge

if.end4.for.end27_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.body14.lr.ph:                                 ; preds = %for.inc.4.for.body14.lr.ph_crit_edge, %for.inc.3.for.body14.lr.ph_crit_edge, %for.inc.2.for.body14.lr.ph_crit_edge, %for.inc.1.for.body14.lr.ph_crit_edge, %for.inc.for.body14.lr.ph_crit_edge
  %i.062.lcssa.ph = phi i32 [ 1, %for.inc.4.for.body14.lr.ph_crit_edge ], [ 2, %for.inc.3.for.body14.lr.ph_crit_edge ], [ 3, %for.inc.2.for.body14.lr.ph_crit_edge ], [ 4, %for.inc.1.for.body14.lr.ph_crit_edge ], [ 5, %for.inc.for.body14.lr.ph_crit_edge ]
  %call8.lcssa.ph = phi i32 [ %call8.5, %for.inc.4.for.body14.lr.ph_crit_edge ], [ %call8.4, %for.inc.3.for.body14.lr.ph_crit_edge ], [ %call8.3, %for.inc.2.for.body14.lr.ph_crit_edge ], [ %call8.2, %for.inc.1.for.body14.lr.ph_crit_edge ], [ %call8.1, %for.inc.for.body14.lr.ph_crit_edge ]
  %name = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 2, i32 9
  %consumer17 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.062.lcssa.ph, i32 1
  %15 = ptrtoint ptr %consumer17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %consumer17, align 4
  %call18 = tail call i32 @regulator_enable(ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end, label %for.body14.lr.ph.if.end24_crit_edge

for.body14.lr.ph.if.end24_crit_edge:              ; preds = %for.body14.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

for.inc:                                          ; preds = %if.end4
  %consumer.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 4, i32 1
  %17 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %consumer.1, align 4
  %call8.1 = tail call i32 @regulator_disable(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %for.inc.1, label %for.inc.for.body14.lr.ph_crit_edge

for.inc.for.body14.lr.ph_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.lr.ph

for.inc.1:                                        ; preds = %for.inc
  %consumer.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 3, i32 1
  %19 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %consumer.2, align 4
  %call8.2 = tail call i32 @regulator_disable(ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %for.inc.2, label %for.inc.1.for.body14.lr.ph_crit_edge

for.inc.1.for.body14.lr.ph_crit_edge:             ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.lr.ph

for.inc.2:                                        ; preds = %for.inc.1
  %consumer.3 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 2, i32 1
  %21 = ptrtoint ptr %consumer.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %consumer.3, align 4
  %call8.3 = tail call i32 @regulator_disable(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %tobool9.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool9.not.3, label %for.inc.3, label %for.inc.2.for.body14.lr.ph_crit_edge

for.inc.2.for.body14.lr.ph_crit_edge:             ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.lr.ph

for.inc.3:                                        ; preds = %for.inc.2
  %consumer.4 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 1, i32 1
  %23 = ptrtoint ptr %consumer.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %consumer.4, align 4
  %call8.4 = tail call i32 @regulator_disable(ptr noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4)
  %tobool9.not.4 = icmp eq i32 %call8.4, 0
  br i1 %tobool9.not.4, label %for.inc.4, label %for.inc.3.for.body14.lr.ph_crit_edge

for.inc.3.for.body14.lr.ph_crit_edge:             ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.lr.ph

for.inc.4:                                        ; preds = %for.inc.3
  %consumer.5 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 0, i32 1
  %25 = ptrtoint ptr %consumer.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %consumer.5, align 4
  %call8.5 = tail call i32 @regulator_disable(ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.5)
  %tobool9.not.5 = icmp eq i32 %call8.5, 0
  br i1 %tobool9.not.5, label %for.inc.4.cleanup_crit_edge, label %for.inc.4.for.body14.lr.ph_crit_edge

for.inc.4.for.body14.lr.ph_crit_edge:             ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.lr.ph

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.body14.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.062.lcssa.ph
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx16, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name, ptr noundef %28, i32 noundef %call18) #12
  br label %if.end24

if.end24:                                         ; preds = %do.end, %for.body14.lr.ph.if.end24_crit_edge
  %i.1 = add nuw nsw i32 %i.062.lcssa.ph, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1)
  %exitcond.not = icmp eq i32 %i.1, 6
  br i1 %exitcond.not, label %if.end24.for.end27_crit_edge, label %for.body14.1

if.end24.for.end27_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.body14.1:                                     ; preds = %if.end24
  %consumer17.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.1, i32 1
  %29 = ptrtoint ptr %consumer17.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %consumer17.1, align 4
  %call18.1 = tail call i32 @regulator_enable(ptr noundef %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %cmp19.1 = icmp slt i32 %call18.1, 0
  br i1 %cmp19.1, label %do.end.1, label %for.body14.1.if.end24.1_crit_edge

for.body14.1.if.end24.1_crit_edge:                ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.1

do.end.1:                                         ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.1
  %31 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx16.1, align 4
  %call23.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name, ptr noundef %32, i32 noundef %call18.1) #12
  br label %if.end24.1

if.end24.1:                                       ; preds = %do.end.1, %for.body14.1.if.end24.1_crit_edge
  %i.1.1 = add nuw nsw i32 %i.062.lcssa.ph, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1.1)
  %exitcond.not.1 = icmp eq i32 %i.1.1, 6
  br i1 %exitcond.not.1, label %if.end24.1.for.end27_crit_edge, label %for.body14.2

if.end24.1.for.end27_crit_edge:                   ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.body14.2:                                     ; preds = %if.end24.1
  %consumer17.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.1.1, i32 1
  %33 = ptrtoint ptr %consumer17.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %consumer17.2, align 4
  %call18.2 = tail call i32 @regulator_enable(ptr noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %cmp19.2 = icmp slt i32 %call18.2, 0
  br i1 %cmp19.2, label %do.end.2, label %for.body14.2.if.end24.2_crit_edge

for.body14.2.if.end24.2_crit_edge:                ; preds = %for.body14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.2

do.end.2:                                         ; preds = %for.body14.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.1.1
  %35 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx16.2, align 4
  %call23.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name, ptr noundef %36, i32 noundef %call18.2) #12
  br label %if.end24.2

if.end24.2:                                       ; preds = %do.end.2, %for.body14.2.if.end24.2_crit_edge
  %i.1.2 = add nuw nsw i32 %i.062.lcssa.ph, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1.2)
  %exitcond.not.2 = icmp eq i32 %i.1.2, 6
  br i1 %exitcond.not.2, label %if.end24.2.for.end27_crit_edge, label %for.body14.3

if.end24.2.for.end27_crit_edge:                   ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.body14.3:                                     ; preds = %if.end24.2
  %consumer17.3 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.1.2, i32 1
  %37 = ptrtoint ptr %consumer17.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %consumer17.3, align 4
  %call18.3 = tail call i32 @regulator_enable(ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.3)
  %cmp19.3 = icmp slt i32 %call18.3, 0
  br i1 %cmp19.3, label %do.end.3, label %for.body14.3.if.end24.3_crit_edge

for.body14.3.if.end24.3_crit_edge:                ; preds = %for.body14.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.3

do.end.3:                                         ; preds = %for.body14.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.3 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.1.2
  %39 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx16.3, align 4
  %call23.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name, ptr noundef %40, i32 noundef %call18.3) #12
  br label %if.end24.3

if.end24.3:                                       ; preds = %do.end.3, %for.body14.3.if.end24.3_crit_edge
  %i.1.3 = add nuw nsw i32 %i.062.lcssa.ph, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1.3)
  %exitcond.not.3 = icmp eq i32 %i.1.3, 6
  br i1 %exitcond.not.3, label %if.end24.3.for.end27_crit_edge, label %for.body14.4

if.end24.3.for.end27_crit_edge:                   ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

for.body14.4:                                     ; preds = %if.end24.3
  %consumer17.4 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.1.3, i32 1
  %41 = ptrtoint ptr %consumer17.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %consumer17.4, align 4
  %call18.4 = tail call i32 @regulator_enable(ptr noundef %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.4)
  %cmp19.4 = icmp slt i32 %call18.4, 0
  br i1 %cmp19.4, label %do.end.4, label %for.body14.4.for.end27_crit_edge

for.body14.4.for.end27_crit_edge:                 ; preds = %for.body14.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end27

do.end.4:                                         ; preds = %for.body14.4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.4 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 9, i32 %i.1.3
  %43 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx16.4, align 4
  %call23.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name, ptr noundef %44, i32 noundef %call18.4) #12
  br label %for.end27

for.end27:                                        ; preds = %do.end.4, %for.body14.4.for.end27_crit_edge, %if.end24.3.for.end27_crit_edge, %if.end24.2.for.end27_crit_edge, %if.end24.1.for.end27_crit_edge, %if.end24.for.end27_crit_edge, %if.end4.for.end27_crit_edge
  %call8.lcssa71 = phi i32 [ %call8, %if.end4.for.end27_crit_edge ], [ %call8.lcssa.ph, %for.body14.4.for.end27_crit_edge ], [ %call8.lcssa.ph, %do.end.4 ], [ %call8.lcssa.ph, %if.end24.3.for.end27_crit_edge ], [ %call8.lcssa.ph, %if.end24.2.for.end27_crit_edge ], [ %call8.lcssa.ph, %if.end24.1.for.end27_crit_edge ], [ %call8.lcssa.ph, %if.end24.for.end27_crit_edge ]
  %45 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end27.cleanup_crit_edge

for.end27.cleanup_crit_edge:                      ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.end27
  %call1.i = tail call i32 @clk_enable(ptr noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %46) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %for.end27.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8.lcssa71, %for.end27.cleanup_crit_edge ], [ %call8.lcssa71, %if.end.i.cleanup_crit_edge ], [ %call8.lcssa71, %if.then3.i ], [ 0, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5c73m3_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp ugt i32 %3, 1
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [2 x i32], ptr @s5c73m3_enum_mbus_code.codes, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code3 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code3, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5c73m3_enum_frame_size(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8199, i32 %3)
  %cmp1.not = icmp eq i32 %3, 8199
  br i1 %cmp1.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20481, i32 %3)
  %cmp4.not = icmp eq i32 %3, 20481
  br i1 %cmp4.not, label %if.else.if.end7_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %idx.0 = phi i32 [ 0, %if.then.if.end7_crit_edge ], [ 1, %if.else.if.end7_crit_edge ]
  %4 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fse, align 4
  %arrayidx = getelementptr [2 x i32], ptr @s5c73m3_resolutions_len, i32 0, i32 %idx.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp8.not = icmp ult i32 %5, %7
  br i1 %cmp8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx11 = getelementptr [2 x ptr], ptr @s5c73m3_resolutions, i32 0, i32 %idx.0
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr %struct.s5c73m3_frame_size, ptr %9, i32 %5
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %12 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %13 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %max_width, align 4
  %height = getelementptr %struct.s5c73m3_frame_size, ptr %9, i32 %5, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %16 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_height, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %17 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %min_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !318

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %8 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.s5c73m3, ptr %sd, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %pad2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %9 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pad2, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sensor_pix_size = getelementptr inbounds %struct.s5c73m3, ptr %sd, i32 0, i32 14
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5 = getelementptr %struct.s5c73m3, ptr %sd, i32 0, i32 14, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %fs.0.in = phi ptr [ %arrayidx5, %sw.bb3 ], [ %sensor_pix_size, %sw.bb ]
  %code.0 = phi i32 [ 20481, %sw.bb3 ], [ 8199, %sw.bb ]
  %12 = ptrtoint ptr %fs.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %fs.0 = load ptr, ptr %fs.0.in, align 4
  %format7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %13 = ptrtoint ptr %fs.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fs.0, align 4
  %15 = ptrtoint ptr %format7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %format7, align 4
  %height.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %fs.0, i32 0, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height2.i, align 4
  %code3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %code.0, ptr %code3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %v4l2_subdev_get_try_format.exit
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ -22, %sw.default ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.s5c73m3, ptr %sd, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %2 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format.i, align 4
  %height6.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height6.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height6.i.i, align 4
  br i1 %cmp.i, label %entry.for.body.i.i_crit_edge, label %entry.for.body.i15.i_crit_edge

entry.for.body.i15.i_crit_edge:                   ; preds = %entry
  br label %for.body.i15.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %fs.031.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ @s5c73m3_isp_resolutions, %entry.for.body.i.i_crit_edge ]
  %best_fs.030.i.i = phi ptr [ %best_fs.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ null, %entry.for.body.i.i_crit_edge ]
  %i.029.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %best_dist.028.i.i = phi i32 [ %12, %for.body.i.i.for.body.i.i_crit_edge ], [ 2147483647, %entry.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %fs.031.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs.031.i.i, align 4
  %sub.i.i = sub i32 %7, %3
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #9
  %height.i.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %fs.031.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height.i.i, align 4
  %sub7.i.i = sub i32 %10, %5
  %11 = tail call i32 @llvm.abs.i32(i32 %sub7.i.i, i1 false) #9
  %add.i.i = add i32 %11, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %best_dist.028.i.i)
  %cmp15.i.i = icmp slt i32 %add.i.i, %best_dist.028.i.i
  %12 = tail call i32 @llvm.smin.i32(i32 %add.i.i, i32 %best_dist.028.i.i) #9
  %best_fs.1.i.i = select i1 %cmp15.i.i, ptr %fs.031.i.i, ptr %best_fs.030.i.i
  %incdec.ptr.i.i = getelementptr %struct.s5c73m3_frame_size, ptr %fs.031.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 15
  br i1 %exitcond.not.i.i, label %for.body.i.i.s5c73m3_try_format.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.s5c73m3_try_format.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_try_format.exit

for.body.i15.i:                                   ; preds = %for.body.i15.i.for.body.i15.i_crit_edge, %entry.for.body.i15.i_crit_edge
  %fs.031.i2.i = phi ptr [ %incdec.ptr.i12.i, %for.body.i15.i.for.body.i15.i_crit_edge ], [ @s5c73m3_jpeg_resolutions, %entry.for.body.i15.i_crit_edge ]
  %best_fs.030.i3.i = phi ptr [ %best_fs.1.i11.i, %for.body.i15.i.for.body.i15.i_crit_edge ], [ null, %entry.for.body.i15.i_crit_edge ]
  %i.029.i4.i = phi i32 [ %inc.i13.i, %for.body.i15.i.for.body.i15.i_crit_edge ], [ 0, %entry.for.body.i15.i_crit_edge ]
  %best_dist.028.i5.i = phi i32 [ %19, %for.body.i15.i.for.body.i15.i_crit_edge ], [ 2147483647, %entry.for.body.i15.i_crit_edge ]
  %13 = ptrtoint ptr %fs.031.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fs.031.i2.i, align 4
  %sub.i6.i = sub i32 %14, %3
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.i6.i, i1 false) #9
  %height.i7.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %fs.031.i2.i, i32 0, i32 1
  %16 = ptrtoint ptr %height.i7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i7.i, align 4
  %sub7.i8.i = sub i32 %17, %5
  %18 = tail call i32 @llvm.abs.i32(i32 %sub7.i8.i, i1 false) #9
  %add.i9.i = add i32 %18, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i9.i, i32 %best_dist.028.i5.i)
  %cmp15.i10.i = icmp slt i32 %add.i9.i, %best_dist.028.i5.i
  %19 = tail call i32 @llvm.smin.i32(i32 %add.i9.i, i32 %best_dist.028.i5.i) #9
  %best_fs.1.i11.i = select i1 %cmp15.i10.i, ptr %fs.031.i2.i, ptr %best_fs.030.i3.i
  %incdec.ptr.i12.i = getelementptr %struct.s5c73m3_frame_size, ptr %fs.031.i2.i, i32 1
  %inc.i13.i = add nuw nsw i32 %i.029.i4.i, 1
  %exitcond.not.i14.i = icmp eq i32 %inc.i13.i, 15
  br i1 %exitcond.not.i14.i, label %for.body.i15.i.s5c73m3_try_format.exit_crit_edge, label %for.body.i15.i.for.body.i15.i_crit_edge

for.body.i15.i.for.body.i15.i_crit_edge:          ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i15.i

for.body.i15.i.s5c73m3_try_format.exit_crit_edge: ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_try_format.exit

s5c73m3_try_format.exit:                          ; preds = %for.body.i15.i.s5c73m3_try_format.exit_crit_edge, %for.body.i.i.s5c73m3_try_format.exit_crit_edge
  %storemerge.i = phi ptr [ %best_fs.1.i.i, %for.body.i.i.s5c73m3_try_format.exit_crit_edge ], [ %best_fs.1.i11.i, %for.body.i15.i.s5c73m3_try_format.exit_crit_edge ]
  %code.0.i = phi i32 [ 8199, %for.body.i.i.s5c73m3_try_format.exit_crit_edge ], [ 20481, %for.body.i15.i.s5c73m3_try_format.exit_crit_edge ]
  %20 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %storemerge.i, align 4
  %22 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %format.i, align 4
  %height.i17.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %storemerge.i, i32 0, i32 1
  %23 = ptrtoint ptr %height.i17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height.i17.i, align 4
  %25 = ptrtoint ptr %height6.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height6.i.i, align 4
  %code3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %code3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %code.0.i, ptr %code3.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 7, ptr %colorspace.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %field.i.i, align 4
  %29 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %s5c73m3_try_format.exit
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %31 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %1, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !318

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %1, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %33 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %34, i32 %spec.select.i
  %35 = call ptr @memcpy(ptr %arrayidx.i, ptr %format.i, i32 48)
  br label %if.end9

if.else:                                          ; preds = %s5c73m3_try_format.exit
  %36 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %1, label %if.else.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sensor_pix_size = getelementptr inbounds %struct.s5c73m3, ptr %sd, i32 0, i32 14
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5 = getelementptr %struct.s5c73m3, ptr %sd, i32 0, i32 14, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %sw.bb
  %arrayidx5.sink = phi ptr [ %arrayidx5, %sw.bb3 ], [ %sensor_pix_size, %sw.bb ]
  %37 = ptrtoint ptr %arrayidx5.sink to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %storemerge.i, ptr %arrayidx5.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -16, %if.else.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  %streaming = getelementptr inbounds %struct.s5c73m3, ptr %sd, i32 0, i32 21
  %38 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else7, label %sw.epilog.if.end9_crit_edge

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.else7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set = or i8 %bf.load, 64
  %39 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %bf.set, ptr %streaming, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %sw.epilog.if.end9_crit_edge, %v4l2_subdev_get_try_format.exit
  %ret.1 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ %ret.0, %if.else7 ], [ -16, %sw.epilog.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !319

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 352, ptr %5, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 288, ptr %height2.i, align 4
  %code3.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8199, ptr %code3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field.i, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %13 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp.not.i8 = icmp ugt i16 %14, 1
  br i1 %cmp.not.i8, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit10_crit_edge, label %do.end.i9, !prof !318

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit10_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit10

do.end.i9:                                        ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit10

v4l2_subdev_get_try_format.exit10:                ; preds = %do.end.i9, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit10_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i9 ], [ 1, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit10_crit_edge ]
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 %spec.select.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 800, ptr %arrayidx.i, align 4
  %height2.i11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 1
  %18 = ptrtoint ptr %height2.i11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 450, ptr %height2.i11, align 4
  %code3.i12 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 2
  %19 = ptrtoint ptr %code3.i12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20481, ptr %code3.i12, align 4
  %colorspace.i13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 4
  %20 = ptrtoint ptr %colorspace.i13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %colorspace.i13, align 4
  %field.i14 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 3
  %21 = ptrtoint ptr %field.i14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field.i14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_log_status(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_handler, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %1, ptr noundef %name) #9
  %power = getelementptr i8, ptr %sd, i32 938
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %power, align 2
  %conv = sext i16 %3 to i32
  %apply_fmt = getelementptr i8, ptr %sd, i32 936
  %4 = ptrtoint ptr %apply_fmt to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %apply_fmt, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %conv3 = zext i8 %bf.clear to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name, i32 noundef %conv, i32 noundef %conv3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_set_power(ptr noundef %sd, i32 noundef %on) #0 align 64 {
entry:
  %af_softlanding.i = alloca i16, align 2
  %status.i.i.i = alloca i16, align 2
  %fw.i.i.i = alloca ptr, align 4
  %fw_name.i.i.i = alloca [20 x i8], align 1
  %reg.i1.i13.i = alloca i16, align 2
  %reg.i.i14.i = alloca i16, align 2
  %reg.i1.i.i = alloca i16, align 2
  %reg.i.i.i = alloca i16, align 2
  %buf.i.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -260
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %power = getelementptr i8, ptr %sd, i32 938
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %power, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call fastcc i32 @__s5c73m3_power_on(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.do.body32_crit_edge

if.then.do.body32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.then4:                                         ; preds = %if.then
  %i2c_read_address.i = getelementptr i8, ptr %sd, i32 396
  %2 = ptrtoint ptr %i2c_read_address.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i2c_read_address.i, align 4
  %i2c_write_address.i = getelementptr i8, ptr %sd, i32 392
  %3 = ptrtoint ptr %i2c_write_address.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %i2c_write_address.i, align 4
  %i2c_client.i = getelementptr i8, ptr %sd, i32 388
  %4 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #9
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -4, ptr %buf.i.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -4, ptr %6, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 51, ptr %7, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %8, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #9
  %13 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i.i = icmp sgt i32 %13, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then4.s5c73m3_i2c_write.exit.i_crit_edge

if.then4.s5c73m3_i2c_write.exit.i_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_i2c_write.exit.i

do.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i, align 8
  %nr.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i.i.i, align 4
  %addr15.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %addr15.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr15.i.i, align 2
  %conv16.i.i = zext i16 %23 to i32
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %17, i32 noundef %21, i32 noundef %conv16.i.i, ptr noundef nonnull @.str.1, i32 noundef 64764, i32 noundef 13072) #12
  br label %s5c73m3_i2c_write.exit.i

s5c73m3_i2c_write.exit.i:                         ; preds = %do.end.i.i, %if.then4.s5c73m3_i2c_write.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp22.i.not.i = icmp eq i32 %call.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp26.i.i = icmp slt i32 %call.i.i.i, 0
  %spec.select.i.i = select i1 %cmp26.i.i, i32 %call.i.i.i, i32 -121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #9
  br i1 %cmp22.i.not.i, label %if.end.i, label %s5c73m3_i2c_write.exit.i.do.body32_crit_edge

s5c73m3_i2c_write.exit.i.do.body32_crit_edge:     ; preds = %s5c73m3_i2c_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end.i:                                         ; preds = %s5c73m3_i2c_write.exit.i
  %24 = load i32, ptr @boot_from_rom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  %call.i15.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 805306372, i16 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp.i16.i = icmp slt i32 %call.i15.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  br i1 %cmp.i16.i, label %if.then1.i.do.body32_crit_edge, label %if.end.i.i

if.then1.i.do.body32_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end.i.i:                                       ; preds = %if.then1.i
  call void @usleep_range_state(i32 noundef 400, i32 noundef 450, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i.i) #9
  %25 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %reg.i.i.i, align 2
  %call.i.i10.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i)
  %cmp1.i.i.i = icmp slt i32 %call.i.i10.i, 0
  br i1 %cmp1.i.i.i, label %if.end.i.i.do.end.i11.i_crit_edge, label %if.end.i.i.i

if.end.i.i.do.end.i11.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i11.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %26 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %reg.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %27)
  %cmp2.i.i.i = icmp eq i16 %27, 12
  br i1 %cmp2.i.i.i, label %if.end.i.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge, label %cleanup.i.i.i

if.end.i.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_system_status_wait.exit.i.i

cleanup.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %call.i.1.i.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i)
  %cmp1.i.1.i.i = icmp slt i32 %call.i.1.i.i, 0
  br i1 %cmp1.i.1.i.i, label %cleanup.i.i.i.do.end.i11.i_crit_edge, label %if.end.i.1.i.i

cleanup.i.i.i.do.end.i11.i_crit_edge:             ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i11.i

if.end.i.1.i.i:                                   ; preds = %cleanup.i.i.i
  %28 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reg.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %29)
  %cmp2.i.1.i.i = icmp eq i16 %29, 12
  br i1 %cmp2.i.1.i.i, label %if.end.i.1.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge, label %cleanup.i.1.i.i

if.end.i.1.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge: ; preds = %if.end.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_system_status_wait.exit.i.i

cleanup.i.1.i.i:                                  ; preds = %if.end.i.1.i.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %call.i.2.i.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i.i)
  %cmp1.i.2.i.i = icmp slt i32 %call.i.2.i.i, 0
  br i1 %cmp1.i.2.i.i, label %cleanup.i.1.i.i.do.end.i11.i_crit_edge, label %if.end.i.2.i.i

cleanup.i.1.i.i.do.end.i11.i_crit_edge:           ; preds = %cleanup.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i11.i

if.end.i.2.i.i:                                   ; preds = %cleanup.i.1.i.i
  %30 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reg.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %31)
  %cmp2.i.2.i.i = icmp eq i16 %31, 12
  br i1 %cmp2.i.2.i.i, label %if.end.i.2.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge, label %cleanup.i.2.i.i

if.end.i.2.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge: ; preds = %if.end.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_system_status_wait.exit.i.i

cleanup.i.2.i.i:                                  ; preds = %if.end.i.2.i.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %call.i.3.i.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i.i)
  %cmp1.i.3.i.i = icmp slt i32 %call.i.3.i.i, 0
  br i1 %cmp1.i.3.i.i, label %cleanup.i.2.i.i.do.end.i11.i_crit_edge, label %if.end.i.3.i.i

cleanup.i.2.i.i.do.end.i11.i_crit_edge:           ; preds = %cleanup.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i11.i

if.end.i.3.i.i:                                   ; preds = %cleanup.i.2.i.i
  %32 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %reg.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %33)
  %cmp2.i.3.i.i = icmp eq i16 %33, 12
  br i1 %cmp2.i.3.i.i, label %if.end.i.3.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge, label %cleanup.i.3.i.i

if.end.i.3.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge: ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_system_status_wait.exit.i.i

cleanup.i.3.i.i:                                  ; preds = %if.end.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  br label %do.end.i11.i

s5c73m3_system_status_wait.exit.i.i:              ; preds = %if.end.i.3.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge, %if.end.i.2.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge, %if.end.i.1.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge, %if.end.i.i.i.s5c73m3_system_status_wait.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i.i) #9
  %call10.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 822083852, i16 noundef zeroext 68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %s5c73m3_system_status_wait.exit.i.i.do.body32_crit_edge, label %for.cond.i.i

s5c73m3_system_status_wait.exit.i.i.do.body32_crit_edge: ; preds = %s5c73m3_system_status_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

do.end.i11.i:                                     ; preds = %cleanup.i.3.i.i, %cleanup.i.2.i.i.do.end.i11.i_crit_edge, %cleanup.i.1.i.i.do.end.i11.i_crit_edge, %cleanup.i.i.i.do.end.i11.i_crit_edge, %if.end.i.i.do.end.i11.i_crit_edge
  %retval.2.i.ph.i.i = phi i32 [ %call.i.i10.i, %if.end.i.i.do.end.i11.i_crit_edge ], [ %call.i.1.i.i, %cleanup.i.i.i.do.end.i11.i_crit_edge ], [ %call.i.2.i.i, %cleanup.i.1.i.i.do.end.i11.i_crit_edge ], [ %call.i.3.i.i, %cleanup.i.2.i.i.do.end.i11.i_crit_edge ], [ -110, %cleanup.i.3.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i.i) #9
  %name.i.i = getelementptr i8, ptr %sd, i32 -144
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name.i.i, i32 noundef %retval.2.i.ph.i.i) #12
  br label %do.body32

for.cond.i.i:                                     ; preds = %s5c73m3_system_status_wait.exit.i.i
  %call10.1.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 822083848, i16 noundef zeroext 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1.i.i)
  %cmp11.1.i.i = icmp slt i32 %call10.1.i.i, 0
  br i1 %cmp11.1.i.i, label %for.cond.i.i.do.body32_crit_edge, label %for.cond.1.i.i

for.cond.i.i.do.body32_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call10.2.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 822084356, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2.i.i)
  %cmp11.2.i.i = icmp slt i32 %call10.2.i.i, 0
  br i1 %cmp11.2.i.i, label %for.cond.1.i.i.do.body32_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.do.body32_crit_edge:               ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call10.3.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 65536, i16 noundef zeroext 22528) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3.i.i)
  %cmp11.3.i.i = icmp slt i32 %call10.3.i.i, 0
  br i1 %cmp11.3.i.i, label %for.cond.2.i.i.do.body32_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.do.body32_crit_edge:               ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %call10.4.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 65538, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.4.i.i)
  %cmp11.4.i.i = icmp slt i32 %call10.4.i.i, 0
  br i1 %cmp11.4.i.i, label %for.cond.3.i.i.do.body32_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.do.body32_crit_edge:               ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %call10.5.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 822083584, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.5.i.i)
  %cmp11.5.i.i = icmp slt i32 %call10.5.i.i, 0
  br i1 %cmp11.5.i.i, label %for.cond.4.i.i.do.body32_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.do.body32_crit_edge:               ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %call10.6.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 806354964, i16 noundef zeroext 7045) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.6.i.i)
  %cmp11.6.i.i = icmp slt i32 %call10.6.i.i, 0
  br i1 %cmp11.6.i.i, label %for.cond.5.i.i.do.body32_crit_edge, label %for.cond.6.i.i

for.cond.5.i.i.do.body32_crit_edge:               ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %call10.7.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 806354960, i16 noundef zeroext 8972) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.7.i.i)
  %cmp11.7.i.i = icmp slt i32 %call10.7.i.i, 0
  br i1 %cmp11.7.i.i, label %for.cond.6.i.i.do.body32_crit_edge, label %for.cond.7.i.i

for.cond.6.i.i.do.body32_crit_edge:               ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  call void @msleep(i32 noundef 200) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1.i.i) #9
  %34 = ptrtoint ptr %reg.i1.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %reg.i1.i.i, align 2
  br label %while.body.i6.i.i

while.body.i6.i.i:                                ; preds = %cleanup.i11.i.i.while.body.i6.i.i_crit_edge, %for.cond.7.i.i
  %dec13.in.i2.i.i = phi i32 [ 150, %for.cond.7.i.i ], [ %dec13.i3.i.i, %cleanup.i11.i.i.while.body.i6.i.i_crit_edge ]
  %dec13.i3.i.i = add nsw i32 %dec13.in.i2.i.i, -1
  %call.i4.i.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %cmp1.i5.i.i = icmp slt i32 %call.i4.i.i, 0
  br i1 %cmp1.i5.i.i, label %while.body.i6.i.i.do.end21.i.i_crit_edge, label %if.end.i9.i.i

while.body.i6.i.i.do.end21.i.i_crit_edge:         ; preds = %while.body.i6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i.i

if.end.i9.i.i:                                    ; preds = %while.body.i6.i.i
  %35 = ptrtoint ptr %reg.i1.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %reg.i1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8974, i16 %36)
  %cmp2.i8.i.i = icmp eq i16 %36, 8974
  br i1 %cmp2.i8.i.i, label %if.end26.i.i, label %cleanup.i11.i.i

cleanup.i11.i.i:                                  ; preds = %if.end.i9.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1025, i32 noundef 2) #9
  %cmp.not.i10.i.i = icmp eq i32 %dec13.i3.i.i, 0
  br i1 %cmp.not.i10.i.i, label %cleanup.i11.i.i.do.end21.i.i_crit_edge, label %cleanup.i11.i.i.while.body.i6.i.i_crit_edge

cleanup.i11.i.i.while.body.i6.i.i_crit_edge:      ; preds = %cleanup.i11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i6.i.i

cleanup.i11.i.i.do.end21.i.i_crit_edge:           ; preds = %cleanup.i11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i.i

do.end21.i.i:                                     ; preds = %cleanup.i11.i.i.do.end21.i.i_crit_edge, %while.body.i6.i.i.do.end21.i.i_crit_edge
  %retval.2.i12.ph.i.i = phi i32 [ -110, %cleanup.i11.i.i.do.end21.i.i_crit_edge ], [ %call.i4.i.i, %while.body.i6.i.i.do.end21.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1.i.i) #9
  %name23.i.i = getelementptr i8, ptr %sd, i32 -144
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name23.i.i, i32 noundef %retval.2.i12.ph.i.i) #12
  br label %do.body32

if.end26.i.i:                                     ; preds = %if.end.i9.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1.i.i) #9
  %call27.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 805306372, i16 noundef zeroext -3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp28.i.i = icmp slt i32 %call27.i.i, 0
  br i1 %cmp28.i.i, label %if.end26.i.i.do.body32_crit_edge, label %if.end31.i.i

if.end26.i.i.do.body32_crit_edge:                 ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end31.i.i:                                     ; preds = %if.end26.i.i
  %call32.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 806355108, i16 noundef zeroext 387) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %cmp33.i.i = icmp slt i32 %call32.i.i, 0
  br i1 %cmp33.i.i, label %if.end31.i.i.do.body32_crit_edge, label %if.end36.i.i

if.end31.i.i.do.body32_crit_edge:                 ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end36.i.i:                                     ; preds = %if.end31.i.i
  %call37.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 805306372, i16 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %cmp38.i.i = icmp slt i32 %call37.i.i, 0
  br i1 %cmp38.i.i, label %if.end36.i.i.do.body32_crit_edge, label %if.end41.i.i

if.end36.i.i.do.body32_crit_edge:                 ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end41.i.i:                                     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %isp_ready.i.i = getelementptr i8, ptr %sd, i32 936
  %37 = ptrtoint ptr %isp_ready.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i.i = load i8, ptr %isp_ready.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 16
  store i8 %bf.set.i.i, ptr %isp_ready.i.i, align 4
  %call42.i.i = call fastcc i32 @s5c73m3_read_fw_version(ptr noundef %add.ptr.i) #9
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  br i1 %cmp.i16.i, label %if.else.i.do.body32_crit_edge, label %if.end.i19.i

if.else.i.do.body32_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end.i19.i:                                     ; preds = %if.else.i
  call void @usleep_range_state(i32 noundef 400, i32 noundef 500, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i14.i) #9
  %38 = ptrtoint ptr %reg.i.i14.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %reg.i.i14.i, align 2
  %call.i.i17.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i.i14.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17.i)
  %cmp1.i.i18.i = icmp slt i32 %call.i.i17.i, 0
  br i1 %cmp1.i.i18.i, label %if.end.i19.i.do.end.i36.i_crit_edge, label %if.end.i.i21.i

if.end.i19.i.do.end.i36.i_crit_edge:              ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i36.i

if.end.i.i21.i:                                   ; preds = %if.end.i19.i
  %39 = ptrtoint ptr %reg.i.i14.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %reg.i.i14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %40)
  %cmp2.i.i20.i = icmp eq i16 %40, 12
  br i1 %cmp2.i.i20.i, label %if.end.i.i21.i.if.end5.i.i_crit_edge, label %cleanup.i.i24.i

if.end.i.i21.i.if.end5.i.i_crit_edge:             ; preds = %if.end.i.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

cleanup.i.i24.i:                                  ; preds = %if.end.i.i21.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %call.i.1.i22.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i.i14.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i22.i)
  %cmp1.i.1.i23.i = icmp slt i32 %call.i.1.i22.i, 0
  br i1 %cmp1.i.1.i23.i, label %cleanup.i.i24.i.do.end.i36.i_crit_edge, label %if.end.i.1.i26.i

cleanup.i.i24.i.do.end.i36.i_crit_edge:           ; preds = %cleanup.i.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i36.i

if.end.i.1.i26.i:                                 ; preds = %cleanup.i.i24.i
  %41 = ptrtoint ptr %reg.i.i14.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %reg.i.i14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %42)
  %cmp2.i.1.i25.i = icmp eq i16 %42, 12
  br i1 %cmp2.i.1.i25.i, label %if.end.i.1.i26.i.if.end5.i.i_crit_edge, label %cleanup.i.1.i29.i

if.end.i.1.i26.i.if.end5.i.i_crit_edge:           ; preds = %if.end.i.1.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

cleanup.i.1.i29.i:                                ; preds = %if.end.i.1.i26.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %call.i.2.i27.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i.i14.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i27.i)
  %cmp1.i.2.i28.i = icmp slt i32 %call.i.2.i27.i, 0
  br i1 %cmp1.i.2.i28.i, label %cleanup.i.1.i29.i.do.end.i36.i_crit_edge, label %if.end.i.2.i31.i

cleanup.i.1.i29.i.do.end.i36.i_crit_edge:         ; preds = %cleanup.i.1.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i36.i

if.end.i.2.i31.i:                                 ; preds = %cleanup.i.1.i29.i
  %43 = ptrtoint ptr %reg.i.i14.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %reg.i.i14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %44)
  %cmp2.i.2.i30.i = icmp eq i16 %44, 12
  br i1 %cmp2.i.2.i30.i, label %if.end.i.2.i31.i.if.end5.i.i_crit_edge, label %cleanup.i.2.i32.i

if.end.i.2.i31.i.if.end5.i.i_crit_edge:           ; preds = %if.end.i.2.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

cleanup.i.2.i32.i:                                ; preds = %if.end.i.2.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  br label %do.end.i36.i

do.end.i36.i:                                     ; preds = %cleanup.i.2.i32.i, %cleanup.i.1.i29.i.do.end.i36.i_crit_edge, %cleanup.i.i24.i.do.end.i36.i_crit_edge, %if.end.i19.i.do.end.i36.i_crit_edge
  %retval.2.i.ph.i33.i = phi i32 [ %call.i.i17.i, %if.end.i19.i.do.end.i36.i_crit_edge ], [ %call.i.1.i22.i, %cleanup.i.i24.i.do.end.i36.i_crit_edge ], [ %call.i.2.i27.i, %cleanup.i.1.i29.i.do.end.i36.i_crit_edge ], [ -110, %cleanup.i.2.i32.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i14.i) #9
  %name.i34.i = getelementptr i8, ptr %sd, i32 -144
  %call4.i35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name.i34.i, i32 noundef %retval.2.i.ph.i33.i) #12
  br label %do.body32

if.end5.i.i:                                      ; preds = %if.end.i.2.i31.i.if.end5.i.i_crit_edge, %if.end.i.1.i26.i.if.end5.i.i_crit_edge, %if.end.i.i21.i.if.end5.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i14.i) #9
  %call6.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 806354964, i16 noundef zeroext 8518) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.end5.i.i.do.body32_crit_edge, label %if.end9.i.i

if.end5.i.i.do.body32_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %call10.i37.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 806354960, i16 noundef zeroext 8460) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i37.i)
  %cmp11.i38.i = icmp slt i32 %call10.i37.i, 0
  br i1 %cmp11.i38.i, label %if.end9.i.i.do.body32_crit_edge, label %if.end13.i.i

if.end9.i.i.do.body32_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end13.i.i:                                     ; preds = %if.end9.i.i
  call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i1.i13.i) #9
  %45 = ptrtoint ptr %reg.i1.i13.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %reg.i1.i13.i, align 2
  br label %while.body.i6.i43.i

while.body.i6.i43.i:                              ; preds = %cleanup.i11.i47.i.while.body.i6.i43.i_crit_edge, %if.end13.i.i
  %dec13.in.i2.i39.i = phi i32 [ 300, %if.end13.i.i ], [ %dec13.i3.i40.i, %cleanup.i11.i47.i.while.body.i6.i43.i_crit_edge ]
  %dec13.i3.i40.i = add nsw i32 %dec13.in.i2.i39.i, -1
  %call.i4.i41.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 806354960, ptr noundef nonnull %reg.i1.i13.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i41.i)
  %cmp1.i5.i42.i = icmp slt i32 %call.i4.i41.i, 0
  br i1 %cmp1.i5.i42.i, label %while.body.i6.i43.i.do.end19.i.i_crit_edge, label %if.end.i9.i45.i

while.body.i6.i43.i.do.end19.i.i_crit_edge:       ; preds = %while.body.i6.i43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i.i

if.end.i9.i45.i:                                  ; preds = %while.body.i6.i43.i
  %46 = ptrtoint ptr %reg.i1.i13.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %reg.i1.i13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8461, i16 %47)
  %cmp2.i8.i44.i = icmp eq i16 %47, 8461
  br i1 %cmp2.i8.i44.i, label %s5c73m3_system_status_wait.exit13.i.i, label %cleanup.i11.i47.i

cleanup.i11.i47.i:                                ; preds = %if.end.i9.i45.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 125, i32 noundef 2) #9
  %cmp.not.i10.i46.i = icmp eq i32 %dec13.i3.i40.i, 0
  br i1 %cmp.not.i10.i46.i, label %cleanup.i11.i47.i.do.end19.i.i_crit_edge, label %cleanup.i11.i47.i.while.body.i6.i43.i_crit_edge

cleanup.i11.i47.i.while.body.i6.i43.i_crit_edge:  ; preds = %cleanup.i11.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i6.i43.i

cleanup.i11.i47.i.do.end19.i.i_crit_edge:         ; preds = %cleanup.i11.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i.i

s5c73m3_system_status_wait.exit13.i.i:            ; preds = %if.end.i9.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1.i13.i) #9
  br label %if.then25.i.i

do.end19.i.i:                                     ; preds = %cleanup.i11.i47.i.do.end19.i.i_crit_edge, %while.body.i6.i43.i.do.end19.i.i_crit_edge
  %retval.2.i12.ph.i48.i = phi i32 [ -110, %cleanup.i11.i47.i.do.end19.i.i_crit_edge ], [ %call.i4.i41.i, %while.body.i6.i43.i.do.end19.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i1.i13.i) #9
  %name21.i.i = getelementptr i8, ptr %sd, i32 -144
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name21.i.i, i32 noundef %retval.2.i12.ph.i48.i) #12
  br label %if.then25.i.i

if.then25.i.i:                                    ; preds = %do.end19.i.i, %s5c73m3_system_status_wait.exit13.i.i
  %48 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_client.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i.i) #9
  %50 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i.i, align 4, !annotation !317
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fw_name.i.i.i) #9
  %fw_file_version.i.i.i = getelementptr i8, ptr %sd, i32 962
  %51 = call ptr @memset(ptr %fw_name.i.i.i, i32 255, i32 20)
  %call2.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name.i.i.i, i32 noundef 20, ptr noundef nonnull @.str.68, ptr noundef %fw_file_version.i.i.i) #9
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  %call4.i.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i.i, ptr noundef nonnull %fw_name.i.i.i, ptr noundef %dev.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call4.i.i.i, 0
  %name.i.i.i = getelementptr i8, ptr %sd, i32 -144
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %do.end10.i.i.i

do.end.i.i.i:                                     ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name.i.i.i, ptr noundef nonnull %fw_name.i.i.i) #12
  br label %s5c73m3_load_fw.exit.i.i

do.end10.i.i.i:                                   ; preds = %if.then25.i.i
  %52 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %call15.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name.i.i.i, ptr noundef nonnull %fw_name.i.i.i, i32 noundef %55) #12
  %56 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fw.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %57, align 4
  %call17.i.i.i = call i32 @s5c73m3_spi_write(ptr noundef %add.ptr.i, ptr noundef %59, i32 noundef %61, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17.i.i.i)
  %cmp18.i.i.i = icmp sgt i32 %call17.i.i.i, -1
  br i1 %cmp18.i.i.i, label %if.then19.i.i.i, label %do.end22.i.i.i

if.then19.i.i.i:                                  ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %isp_ready.i.i.i = getelementptr i8, ptr %sd, i32 936
  %62 = ptrtoint ptr %isp_ready.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i.i.i = load i8, ptr %isp_ready.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 16
  store i8 %bf.set.i.i.i, ptr %isp_ready.i.i.i, align 4
  br label %if.end27.i.i.i

do.end22.i.i.i:                                   ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name.i.i.i) #12
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %do.end22.i.i.i, %if.then19.i.i.i
  %63 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw.i.i.i, align 4
  call void @release_firmware(ptr noundef %64) #9
  br label %s5c73m3_load_fw.exit.i.i

s5c73m3_load_fw.exit.i.i:                         ; preds = %if.end27.i.i.i, %do.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fw_name.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i.i) #9
  %call28.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 805306372, i16 noundef zeroext -3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp29.i.i = icmp slt i32 %call28.i.i, 0
  br i1 %cmp29.i.i, label %s5c73m3_load_fw.exit.i.i.do.body32_crit_edge, label %if.end31.i51.i

s5c73m3_load_fw.exit.i.i.do.body32_crit_edge:     ; preds = %s5c73m3_load_fw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end31.i51.i:                                   ; preds = %s5c73m3_load_fw.exit.i.i
  %call32.i49.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 806355108, i16 noundef zeroext 387) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i49.i)
  %cmp33.i50.i = icmp slt i32 %call32.i49.i, 0
  br i1 %cmp33.i50.i, label %if.end31.i51.i.do.body32_crit_edge, label %if.end35.i.i

if.end31.i51.i.do.body32_crit_edge:               ; preds = %if.end31.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end35.i.i:                                     ; preds = %if.end31.i51.i
  %call36.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 805306372, i16 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp37.i.i = icmp slt i32 %call36.i.i, 0
  br i1 %cmp37.i.i, label %if.end35.i.i.do.body32_crit_edge, label %if.end40.i.i

if.end35.i.i.do.body32_crit_edge:                 ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end40.i.i:                                     ; preds = %if.end35.i.i
  %call41.i.i = call fastcc i32 @s5c73m3_read_fw_version(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %cmp42.i.i = icmp slt i32 %call41.i.i, 0
  br i1 %cmp42.i.i, label %if.end40.i.i.do.body32_crit_edge, label %land.lhs.true.i.i

if.end40.i.i.do.body32_crit_edge:                 ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

land.lhs.true.i.i:                                ; preds = %if.end40.i.i
  %65 = load i32, ptr @update_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool46.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool46.not.i.i, label %land.lhs.true.i.i.if.end_crit_edge, label %if.then47.i.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then47.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i.i.i) #9
  %66 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %status.i.i.i, align 2
  %call.i16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name.i.i.i) #12
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %sw.epilog.i.i.i.do.body1.i.i.i_crit_edge, %if.then47.i.i
  %67 = phi i16 [ %69, %sw.epilog.i.i.i.do.body1.i.i.i_crit_edge ], [ 0, %if.then47.i.i ]
  %count.0.i.i.i = phi i32 [ %inc.i.i.i, %sw.epilog.i.i.i.do.body1.i.i.i_crit_edge ], [ 0, %if.then47.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.i17.i.i = icmp eq i16 %67, 0
  br i1 %cmp.i17.i.i, label %if.then.i.i.i, label %do.body1.i.i.i.if.end7.i.i.i_crit_edge

do.body1.i.i.i.if.end7.i.i.i_crit_edge:           ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i.i
  %call.i.i.i.i = call fastcc i32 @s5c73m3_check_status(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_fw_update_from.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  %call1.i.i.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610304, i16 noundef zeroext 2310) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp2.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  br i1 %cmp2.i.i.i.i, label %if.end.i.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, label %if.end4.i.i.i.i

if.end.i.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_fw_update_from.exit.i.i

if.end4.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %call5.i.i.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610306, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %cmp6.i.i.i.i = icmp slt i32 %call5.i.i.i.i, 0
  br i1 %cmp6.i.i.i.i, label %if.end4.i.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, label %s5c73m3_isp_command.exit.i.i.i

if.end4.i.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_fw_update_from.exit.i.i

s5c73m3_isp_command.exit.i.i.i:                   ; preds = %if.end4.i.i.i.i
  %call9.i.i.i.i = call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610432, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i.i)
  %cmp4.i.i.i = icmp slt i32 %call9.i.i.i.i, 0
  br i1 %cmp4.i.i.i, label %s5c73m3_isp_command.exit.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, label %s5c73m3_isp_command.exit.i.i.i.if.end7.i.i.i_crit_edge

s5c73m3_isp_command.exit.i.i.i.if.end7.i.i.i_crit_edge: ; preds = %s5c73m3_isp_command.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i

s5c73m3_isp_command.exit.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge: ; preds = %s5c73m3_isp_command.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_fw_update_from.exit.i.i

if.end7.i.i.i:                                    ; preds = %s5c73m3_isp_command.exit.i.i.i.if.end7.i.i.i_crit_edge, %do.body1.i.i.i.if.end7.i.i.i_crit_edge
  %call8.i.i.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 612614, ptr noundef nonnull %status.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %cmp9.i.i.i = icmp slt i32 %call8.i.i.i, 0
  br i1 %cmp9.i.i.i, label %if.end7.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, label %if.end12.i.i.i

if.end7.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_fw_update_from.exit.i.i

if.end12.i.i.i:                                   ; preds = %if.end7.i.i.i
  %68 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %status.i.i.i, align 2
  %70 = zext i16 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.129)
  switch i16 %69, label %sw.epilog.i.i.i [
    i16 7, label %if.end12.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge
    i16 5, label %if.end12.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  ]

if.end12.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i.i

if.end12.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i.i.loopexit

sw.epilog.i.i.i:                                  ; preds = %if.end12.i.i.i
  %inc.i.i.i = add nuw nsw i32 %count.0.i.i.i, 1
  call void @msleep(i32 noundef 20) #9
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 500
  br i1 %exitcond.not.i.i.i, label %sw.epilog.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge, label %sw.epilog.i.i.i.do.body1.i.i.i_crit_edge

sw.epilog.i.i.i.do.body1.i.i.i_crit_edge:         ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i.i

sw.epilog.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i.i.loopexit

cleanup.sink.split.i.i.i.loopexit:                ; preds = %sw.epilog.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge, %if.end12.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge
  %.str.86.sink.i.i.i.ph = phi ptr [ @.str.80, %if.end12.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge ], [ @.str.86, %sw.epilog.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge ]
  %retval.0.ph.i.i.i.ph = phi i32 [ -5, %if.end12.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge ], [ -110, %sw.epilog.i.i.i.cleanup.sink.split.i.i.i.loopexit_crit_edge ]
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %cleanup.sink.split.i.i.i.loopexit, %if.end12.i.i.i.cleanup.sink.split.i.i.i_crit_edge
  %.str.86.sink.i.i.i = phi ptr [ %.str.86.sink.i.i.i.ph, %cleanup.sink.split.i.i.i.loopexit ], [ @.str.83, %if.end12.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %retval.0.ph.i.i.i = phi i32 [ %retval.0.ph.i.i.i.ph, %cleanup.sink.split.i.i.i.loopexit ], [ 0, %if.end12.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %call39.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.86.sink.i.i.i, ptr noundef %name.i.i.i) #12
  br label %s5c73m3_fw_update_from.exit.i.i

s5c73m3_fw_update_from.exit.i.i:                  ; preds = %cleanup.sink.split.i.i.i, %if.end7.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, %s5c73m3_isp_command.exit.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, %if.end4.i.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, %if.end.i.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge, %if.then.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %retval.0.ph.i.i.i, %cleanup.sink.split.i.i.i ], [ %call9.i.i.i.i, %s5c73m3_isp_command.exit.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge ], [ %call8.i.i.i, %if.end7.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge ], [ %call5.i.i.i.i, %if.end4.i.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge ], [ %call1.i.i.i.i, %if.end.i.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge ], [ %call.i.i.i.i, %if.then.i.i.i.s5c73m3_fw_update_from.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i.i.i) #9
  store i32 0, ptr @update_fw, align 4
  br label %if.end

if.end:                                           ; preds = %s5c73m3_fw_update_from.exit.i.i, %land.lhs.true.i.i.if.end_crit_edge, %if.end41.i.i
  %ret.0 = phi i32 [ %call42.i.i, %if.end41.i.i ], [ %retval.0.i.i.i, %s5c73m3_fw_update_from.exit.i.i ], [ %call41.i.i, %land.lhs.true.i.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.do.body32_crit_edge

if.end.do.body32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %apply_fiv = getelementptr i8, ptr %sd, i32 936
  %71 = ptrtoint ptr %apply_fiv to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load = load i8, ptr %apply_fiv, align 4
  %bf.set10 = or i8 %bf.load, 96
  store i8 %bf.set10, ptr %apply_fiv, align 4
  br label %if.then26

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %power12 = getelementptr i8, ptr %sd, i32 938
  %72 = ptrtoint ptr %power12 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %power12, align 2
  %conv = sext i16 %73 to i32
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %lnot.ext)
  %cmp = icmp eq i32 %conv, %lnot.ext
  br i1 %cmp, label %if.then15, label %if.else.if.then26_crit_edge

if.else.if.then26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then15:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %af_softlanding.i) #9
  %75 = ptrtoint ptr %af_softlanding.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -1, ptr %af_softlanding.i, align 2, !annotation !317
  %call.i.i = tail call fastcc i32 @s5c73m3_check_status(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i68 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i68, label %if.then15.s5c73m3_set_af_softlanding.exit.thread_crit_edge, label %if.end.i.i69

if.then15.s5c73m3_set_af_softlanding.exit.thread_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit.thread

if.end.i.i69:                                     ; preds = %if.then15
  %call1.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610304, i16 noundef zeroext 3606) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i69.s5c73m3_set_af_softlanding.exit.thread_crit_edge, label %if.end4.i.i

if.end.i.i69.s5c73m3_set_af_softlanding.exit.thread_crit_edge: ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit.thread

if.end4.i.i:                                      ; preds = %if.end.i.i69
  %call5.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610306, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.end4.i.i.s5c73m3_set_af_softlanding.exit.thread_crit_edge, label %s5c73m3_isp_command.exit.i

if.end4.i.i.s5c73m3_set_af_softlanding.exit.thread_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit.thread

s5c73m3_isp_command.exit.i:                       ; preds = %if.end4.i.i
  %call9.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610432, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp.i, label %s5c73m3_isp_command.exit.i.s5c73m3_set_af_softlanding.exit.thread_crit_edge, label %for.cond.preheader.i

s5c73m3_isp_command.exit.i.s5c73m3_set_af_softlanding.exit.thread_crit_edge: ; preds = %s5c73m3_isp_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit.thread

for.cond.preheader.i:                             ; preds = %s5c73m3_isp_command.exit.i
  %call.i3337.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 613910, ptr noundef nonnull %af_softlanding.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3337.i)
  %cmp338.i = icmp slt i32 %call.i3337.i, 0
  br i1 %cmp338.i, label %for.cond.preheader.i.s5c73m3_set_af_softlanding.exit_crit_edge, label %if.end5.i.preheader

for.cond.preheader.i.s5c73m3_set_af_softlanding.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit

if.end5.i.preheader:                              ; preds = %for.cond.preheader.i
  %76 = ptrtoint ptr %af_softlanding.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %af_softlanding.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %77)
  %cmp6.i84 = icmp eq i16 %77, 1
  br i1 %cmp6.i84, label %if.end5.i.preheader.s5c73m3_set_af_softlanding.exit_crit_edge, label %if.end5.i.preheader.if.end9.i_crit_edge

if.end5.i.preheader.if.end9.i_crit_edge:          ; preds = %if.end5.i.preheader
  br label %if.end9.i

if.end5.i.preheader.s5c73m3_set_af_softlanding.exit_crit_edge: ; preds = %if.end5.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit

s5c73m3_set_af_softlanding.exit.thread:           ; preds = %s5c73m3_isp_command.exit.i.s5c73m3_set_af_softlanding.exit.thread_crit_edge, %if.end4.i.i.s5c73m3_set_af_softlanding.exit.thread_crit_edge, %if.end.i.i69.s5c73m3_set_af_softlanding.exit.thread_crit_edge, %if.then15.s5c73m3_set_af_softlanding.exit.thread_crit_edge
  %retval.0.i36.i = phi i32 [ %call9.i.i, %s5c73m3_isp_command.exit.i.s5c73m3_set_af_softlanding.exit.thread_crit_edge ], [ %call5.i.i, %if.end4.i.i.s5c73m3_set_af_softlanding.exit.thread_crit_edge ], [ %call1.i.i, %if.end.i.i69.s5c73m3_set_af_softlanding.exit.thread_crit_edge ], [ %call.i.i, %if.then15.s5c73m3_set_af_softlanding.exit.thread_crit_edge ]
  %name.i = getelementptr i8, ptr %sd, i32 -144
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %af_softlanding.i) #9
  br label %do.end

if.end5.i:                                        ; preds = %if.end13.i
  %inc.i = add nuw nsw i32 %count.039.i85, 1
  %78 = ptrtoint ptr %af_softlanding.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %af_softlanding.i, align 2
  %cmp6.i = icmp eq i16 %79, 1
  br i1 %cmp6.i, label %if.end5.i.s5c73m3_set_af_softlanding.exit_crit_edge, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end5.i.s5c73m3_set_af_softlanding.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit

if.end9.i:                                        ; preds = %if.end5.i.if.end9.i_crit_edge, %if.end5.i.preheader.if.end9.i_crit_edge
  %count.039.i85 = phi i32 [ %inc.i, %if.end5.i.if.end9.i_crit_edge ], [ 0, %if.end5.i.preheader.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.039.i85)
  %exitcond.i = icmp eq i32 %count.039.i85, 100
  br i1 %exitcond.i, label %if.end9.i.s5c73m3_set_af_softlanding.exit_crit_edge, label %if.end13.i

if.end9.i.s5c73m3_set_af_softlanding.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit

if.end13.i:                                       ; preds = %if.end9.i
  tail call void @msleep(i32 noundef 25) #9
  %call.i33.i = call i32 @s5c73m3_read(ptr noundef %add.ptr.i, i32 noundef 613910, ptr noundef nonnull %af_softlanding.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp3.i = icmp slt i32 %call.i33.i, 0
  br i1 %cmp3.i, label %if.end13.i.s5c73m3_set_af_softlanding.exit_crit_edge, label %if.end5.i

if.end13.i.s5c73m3_set_af_softlanding.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_set_af_softlanding.exit

s5c73m3_set_af_softlanding.exit:                  ; preds = %if.end13.i.s5c73m3_set_af_softlanding.exit_crit_edge, %if.end9.i.s5c73m3_set_af_softlanding.exit_crit_edge, %if.end5.i.s5c73m3_set_af_softlanding.exit_crit_edge, %if.end5.i.preheader.s5c73m3_set_af_softlanding.exit_crit_edge, %for.cond.preheader.i.s5c73m3_set_af_softlanding.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i3337.i, %for.cond.preheader.i.s5c73m3_set_af_softlanding.exit_crit_edge ], [ %call.i3337.i, %if.end5.i.preheader.s5c73m3_set_af_softlanding.exit_crit_edge ], [ %call.i33.i, %if.end13.i.s5c73m3_set_af_softlanding.exit_crit_edge ], [ -62, %if.end9.i.s5c73m3_set_af_softlanding.exit_crit_edge ], [ %call.i33.i, %if.end5.i.s5c73m3_set_af_softlanding.exit_crit_edge ]
  %msg.0.i = phi ptr [ @.str.90, %for.cond.preheader.i.s5c73m3_set_af_softlanding.exit_crit_edge ], [ @.str.91, %if.end5.i.preheader.s5c73m3_set_af_softlanding.exit_crit_edge ], [ @.str.90, %if.end13.i.s5c73m3_set_af_softlanding.exit_crit_edge ], [ @.str.92, %if.end9.i.s5c73m3_set_af_softlanding.exit_crit_edge ], [ @.str.91, %if.end5.i.s5c73m3_set_af_softlanding.exit_crit_edge ]
  %name19.i = getelementptr i8, ptr %sd, i32 -144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %80, %74
  %call21.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #9
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name19.i, ptr noundef nonnull %msg.0.i, i32 noundef %call21.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %af_softlanding.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool17.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool17.not, label %if.end24, label %s5c73m3_set_af_softlanding.exit.do.end_crit_edge

s5c73m3_set_af_softlanding.exit.do.end_crit_edge: ; preds = %s5c73m3_set_af_softlanding.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %s5c73m3_set_af_softlanding.exit.do.end_crit_edge, %s5c73m3_set_af_softlanding.exit.thread
  %retval.0.i7075 = phi i32 [ %retval.0.i36.i, %s5c73m3_set_af_softlanding.exit.thread ], [ %ret.0.i, %s5c73m3_set_af_softlanding.exit.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name) #12
  br label %do.body32

if.end24:                                         ; preds = %s5c73m3_set_af_softlanding.exit
  %call19 = tail call fastcc i32 @__s5c73m3_power_off(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool25.not = icmp eq i32 %call19, 0
  br i1 %tobool25.not, label %if.end24.if.then26_crit_edge, label %if.end24.do.body32_crit_edge

if.end24.do.body32_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %if.else.if.then26_crit_edge, %if.then7
  %cond = select i1 %tobool.not, i16 -1, i16 1
  %power28 = getelementptr i8, ptr %sd, i32 938
  %81 = ptrtoint ptr %power28 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %power28, align 2
  %add = add i16 %82, %cond
  store i16 %add, ptr %power28, align 2
  br label %do.body32

do.body32:                                        ; preds = %if.then26, %if.end24.do.body32_crit_edge, %do.end, %if.end.do.body32_crit_edge, %if.end40.i.i.do.body32_crit_edge, %if.end35.i.i.do.body32_crit_edge, %if.end31.i51.i.do.body32_crit_edge, %s5c73m3_load_fw.exit.i.i.do.body32_crit_edge, %if.end9.i.i.do.body32_crit_edge, %if.end5.i.i.do.body32_crit_edge, %do.end.i36.i, %if.else.i.do.body32_crit_edge, %if.end36.i.i.do.body32_crit_edge, %if.end31.i.i.do.body32_crit_edge, %if.end26.i.i.do.body32_crit_edge, %do.end21.i.i, %for.cond.6.i.i.do.body32_crit_edge, %for.cond.5.i.i.do.body32_crit_edge, %for.cond.4.i.i.do.body32_crit_edge, %for.cond.3.i.i.do.body32_crit_edge, %for.cond.2.i.i.do.body32_crit_edge, %for.cond.1.i.i.do.body32_crit_edge, %for.cond.i.i.do.body32_crit_edge, %do.end.i11.i, %s5c73m3_system_status_wait.exit.i.i.do.body32_crit_edge, %if.then1.i.do.body32_crit_edge, %s5c73m3_i2c_write.exit.i.do.body32_crit_edge, %if.then.do.body32_crit_edge
  %ret.178 = phi i32 [ %call19, %if.end24.do.body32_crit_edge ], [ 0, %if.then26 ], [ %ret.0, %if.end.do.body32_crit_edge ], [ %retval.0.i7075, %do.end ], [ %call41.i.i, %if.end40.i.i.do.body32_crit_edge ], [ %call36.i.i, %if.end35.i.i.do.body32_crit_edge ], [ %call32.i49.i, %if.end31.i51.i.do.body32_crit_edge ], [ %call28.i.i, %s5c73m3_load_fw.exit.i.i.do.body32_crit_edge ], [ %call10.i37.i, %if.end9.i.i.do.body32_crit_edge ], [ %call6.i.i, %if.end5.i.i.do.body32_crit_edge ], [ %call.i15.i, %if.else.i.do.body32_crit_edge ], [ %retval.2.i.ph.i33.i, %do.end.i36.i ], [ %call10.7.i.i, %for.cond.6.i.i.do.body32_crit_edge ], [ %call10.6.i.i, %for.cond.5.i.i.do.body32_crit_edge ], [ %call10.5.i.i, %for.cond.4.i.i.do.body32_crit_edge ], [ %call10.4.i.i, %for.cond.3.i.i.do.body32_crit_edge ], [ %call10.3.i.i, %for.cond.2.i.i.do.body32_crit_edge ], [ %call10.2.i.i, %for.cond.1.i.i.do.body32_crit_edge ], [ %call10.1.i.i, %for.cond.i.i.do.body32_crit_edge ], [ %call10.i.i, %s5c73m3_system_status_wait.exit.i.i.do.body32_crit_edge ], [ %call37.i.i, %if.end36.i.i.do.body32_crit_edge ], [ %call32.i.i, %if.end31.i.i.do.body32_crit_edge ], [ %call27.i.i, %if.end26.i.i.do.body32_crit_edge ], [ %call.i15.i, %if.then1.i.do.body32_crit_edge ], [ %retval.2.i12.ph.i.i, %do.end21.i.i ], [ %retval.2.i.ph.i.i, %do.end.i11.i ], [ %spec.select.i.i, %s5c73m3_i2c_write.exit.i.do.body32_crit_edge ], [ %call2, %if.then.do.body32_crit_edge ]
  %83 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp33 = icmp sgt i32 %83, 0
  br i1 %cmp33, label %do.end38, label %do.body32.do.end47_crit_edge

do.body32.do.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %name40 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %power42 = getelementptr i8, ptr %sd, i32 938
  %84 = ptrtoint ptr %power42 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %power42, align 2
  %conv43 = sext i16 %85 to i32
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name40, ptr noundef nonnull @.str.52, i32 noundef %conv43) #12
  br label %do.end47

do.end47:                                         ; preds = %do.end38, %do.body32.do.end47_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.178
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5c73m3_read_fw_version(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !317
  %1 = getelementptr inbounds [2 x i16], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !317
  %isp_ready = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 21
  %3 = ptrtoint ptr %isp_ready to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %isp_ready, align 4
  %4 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, i32 0, i32 96
  %call = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %cond, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %data, align 2
  %conv6 = trunc i16 %6 to i8
  %arrayidx = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 23, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %arrayidx, align 1
  %8 = lshr i16 %6, 8
  %conv10 = trunc i16 %8 to i8
  %arrayidx14 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx14, align 1
  %add.1 = or i32 %cond, 2
  %call.1 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add.1, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp2.1 = icmp slt i32 %call.1, 0
  br i1 %cmp2.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 2
  %conv6.1 = trunc i16 %11 to i8
  %arrayidx.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 23, i32 2
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6.1, ptr %arrayidx.1, align 1
  %13 = lshr i16 %11, 8
  %conv10.1 = trunc i16 %13 to i8
  %arrayidx14.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 23, i32 3
  %14 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10.1, ptr %arrayidx14.1, align 1
  %add.2 = or i32 %cond, 4
  %call.2 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add.2, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp2.2 = icmp slt i32 %call.2, 0
  br i1 %cmp2.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data, align 2
  %conv6.2 = trunc i16 %16 to i8
  %arrayidx.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 23, i32 4
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.2, ptr %arrayidx.2, align 1
  %18 = lshr i16 %16, 8
  %conv10.2 = trunc i16 %18 to i8
  %arrayidx14.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 23, i32 5
  %19 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv10.2, ptr %arrayidx14.2, align 1
  %arrayidx16 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 23, i32 6
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx16, align 2
  %add21 = or i32 %cond, 6
  %call25 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add21, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end.2.cleanup_crit_edge, label %if.end29

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end.2
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data, align 2
  %conv33 = trunc i16 %22 to i8
  %arrayidx35 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 0
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv33, ptr %arrayidx35, align 1
  %24 = lshr i16 %22, 8
  %conv39 = trunc i16 %24 to i8
  %arrayidx43 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 1
  %25 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv39, ptr %arrayidx43, align 1
  %add23.1 = or i32 %cond, 8
  %call25.1 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add23.1, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %cmp26.1 = icmp slt i32 %call25.1, 0
  br i1 %cmp26.1, label %if.end29.cleanup_crit_edge, label %if.end29.1

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.1:                                       ; preds = %if.end29
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data, align 2
  %conv33.1 = trunc i16 %27 to i8
  %arrayidx35.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 2
  %28 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv33.1, ptr %arrayidx35.1, align 1
  %29 = lshr i16 %27, 8
  %conv39.1 = trunc i16 %29 to i8
  %arrayidx43.1 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 3
  %30 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv39.1, ptr %arrayidx43.1, align 1
  %add23.2 = or i32 %cond, 10
  %call25.2 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add23.2, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %cmp26.2 = icmp slt i32 %call25.2, 0
  br i1 %cmp26.2, label %if.end29.1.cleanup_crit_edge, label %if.end29.2

if.end29.1.cleanup_crit_edge:                     ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.2:                                       ; preds = %if.end29.1
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data, align 2
  %conv33.2 = trunc i16 %32 to i8
  %arrayidx35.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 4
  %33 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv33.2, ptr %arrayidx35.2, align 1
  %34 = lshr i16 %32, 8
  %conv39.2 = trunc i16 %34 to i8
  %arrayidx43.2 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 5
  %35 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv39.2, ptr %arrayidx43.2, align 1
  %add23.3 = or i32 %cond, 12
  %call25.3 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add23.3, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3)
  %cmp26.3 = icmp slt i32 %call25.3, 0
  br i1 %cmp26.3, label %if.end29.2.cleanup_crit_edge, label %if.end29.3

if.end29.2.cleanup_crit_edge:                     ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.3:                                       ; preds = %if.end29.2
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %data, align 2
  %conv33.3 = trunc i16 %37 to i8
  %arrayidx35.3 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 6
  %38 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv33.3, ptr %arrayidx35.3, align 1
  %39 = lshr i16 %37, 8
  %conv39.3 = trunc i16 %39 to i8
  %arrayidx43.3 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 7
  %40 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv39.3, ptr %arrayidx43.3, align 1
  %add23.4 = or i32 %cond, 14
  %call25.4 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add23.4, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.4)
  %cmp26.4 = icmp slt i32 %call25.4, 0
  br i1 %cmp26.4, label %if.end29.3.cleanup_crit_edge, label %if.end29.4

if.end29.3.cleanup_crit_edge:                     ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.4:                                       ; preds = %if.end29.3
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %data, align 2
  %conv33.4 = trunc i16 %42 to i8
  %arrayidx35.4 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 8
  %43 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv33.4, ptr %arrayidx35.4, align 1
  %44 = lshr i16 %42, 8
  %conv39.4 = trunc i16 %44 to i8
  %arrayidx43.4 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 9
  %45 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv39.4, ptr %arrayidx43.4, align 1
  %add23.5 = or i32 %cond, 16
  %call25.5 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add23.5, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.5)
  %cmp26.5 = icmp slt i32 %call25.5, 0
  br i1 %cmp26.5, label %if.end29.4.cleanup_crit_edge, label %if.end29.5

if.end29.4.cleanup_crit_edge:                     ; preds = %if.end29.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.5:                                       ; preds = %if.end29.4
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %data, align 2
  %conv33.5 = trunc i16 %47 to i8
  %arrayidx35.5 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 10
  %48 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv33.5, ptr %arrayidx35.5, align 1
  %49 = lshr i16 %47, 8
  %conv39.5 = trunc i16 %49 to i8
  %arrayidx43.5 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 11
  %50 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv39.5, ptr %arrayidx43.5, align 1
  %arrayidx48 = getelementptr %struct.s5c73m3, ptr %state, i32 0, i32 24, i32 12
  %51 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx48, align 4
  %add49 = or i32 %cond, 20
  %call51 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add49, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call51)
  %cmp52 = icmp sgt i32 %call51, -1
  br i1 %cmp52, label %if.then54, label %if.end29.5.do.end_crit_edge

if.end29.5.do.end_crit_edge:                      ; preds = %if.end29.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then54:                                        ; preds = %if.end29.5
  %add55 = or i32 %cond, 22
  %call57 = call i32 @s5c73m3_read(ptr noundef %state, i32 noundef %add55, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, -1
  br i1 %cmp58, label %if.then60, label %if.then54.do.end_crit_edge

if.then54.do.end_crit_edge:                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then60:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %data, align 2
  %conv62 = zext i16 %53 to i32
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %1, align 2
  %conv64 = zext i16 %55 to i32
  %shl = shl nuw i32 %conv64, 16
  %add65 = or i32 %shl, %conv62
  %fw_size = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 26
  %56 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add65, ptr %fw_size, align 4
  br label %do.end

do.end:                                           ; preds = %if.then60, %if.then54.do.end_crit_edge, %if.end29.5.do.end_crit_edge
  %ret.0 = phi i32 [ %call57, %if.then60 ], [ %call57, %if.then54.do.end_crit_edge ], [ %call51, %if.end29.5.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, ptr noundef %arrayidx35, ptr noundef %arrayidx) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end29.4.cleanup_crit_edge, %if.end29.3.cleanup_crit_edge, %if.end29.2.cleanup_crit_edge, %if.end29.1.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ %call25, %if.end.2.cleanup_crit_edge ], [ %call25.1, %if.end29.cleanup_crit_edge ], [ %call25.2, %if.end29.1.cleanup_crit_edge ], [ %call25.3, %if.end29.2.cleanup_crit_edge ], [ %call25.4, %if.end29.3.cleanup_crit_edge ], [ %call25.5, %if.end29.4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end.cleanup_crit_edge ], [ %call.2, %if.end.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5c73m3_spi_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_s_stream(ptr noundef %sd, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -260
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.i = icmp ne i32 %on, 0
  br i1 %tobool.i, label %land.lhs.true.i, label %entry.if.end14.i_crit_edge

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %entry
  %apply_fmt.i = getelementptr i8, ptr %sd, i32 936
  %0 = ptrtoint ptr %apply_fmt.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %apply_fmt.i, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not.i = icmp eq i8 %1, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %mbus_code.i = getelementptr i8, ptr %sd, i32 516
  %2 = ptrtoint ptr %mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbus_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20481, i32 %3)
  %cmp.i = icmp eq i32 %3, 20481
  %..i = select i1 %cmp.i, i16 13, i16 9
  %call.i.i = tail call fastcc i32 @s5c73m3_check_status(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.__s5c73m3_s_stream.exit_crit_edge, label %if.end.i.i

if.then.i.__s5c73m3_s_stream.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610304, i16 noundef zeroext 2306) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.__s5c73m3_s_stream.exit_crit_edge, label %if.end4.i.i

if.end.i.i.__s5c73m3_s_stream.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610306, i16 noundef zeroext %..i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.end4.i.i.__s5c73m3_s_stream.exit_crit_edge, label %s5c73m3_isp_command.exit.i

if.end4.i.i.__s5c73m3_s_stream.exit_crit_edge:    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

s5c73m3_isp_command.exit.i:                       ; preds = %if.end4.i.i
  %call9.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610432, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool4.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %s5c73m3_isp_command.exit.i.__s5c73m3_s_stream.exit_crit_edge

s5c73m3_isp_command.exit.i.__s5c73m3_s_stream.exit_crit_edge: ; preds = %s5c73m3_isp_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.then5.i:                                       ; preds = %s5c73m3_isp_command.exit.i
  %sensor_pix_size.i.i = getelementptr i8, ptr %sd, i32 500
  %4 = ptrtoint ptr %sensor_pix_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor_pix_size.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %sd, i32 504
  %6 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.i.i, align 4
  %8 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i67.i = icmp sgt i32 %8, 0
  br i1 %cmp.i67.i, label %do.end.i.i, label %if.then5.i.do.end5.i.i_crit_edge

if.then5.i.do.end5.i.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i.i = getelementptr i8, ptr %sd, i32 -144
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  %height.i.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height.i.i, align 4
  %reg_val.i.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %reg_val.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_val.i.i, align 4
  %conv.i.i = zext i8 %14 to i32
  %call.i68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name.i.i, i32 noundef %10, i32 noundef %12, i32 noundef %conv.i.i) #12
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %if.then5.i.do.end5.i.i_crit_edge
  %reg_val6.i.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %reg_val6.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_val6.i.i, align 4
  %conv7.i.i = zext i8 %16 to i32
  %or.i.i = or i32 %conv7.i.i, 32768
  %17 = ptrtoint ptr %mbus_code.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbus_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20481, i32 %18)
  %cmp8.i.i = icmp eq i32 %18, 20481
  br i1 %cmp8.i.i, label %do.body11.i.i, label %do.end5.i.i.if.end33.i.i_crit_edge

do.end5.i.i.if.end33.i.i_crit_edge:               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i.i

do.body11.i.i:                                    ; preds = %do.end5.i.i
  %19 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp12.i.i = icmp sgt i32 %19, 0
  br i1 %cmp12.i.i, label %do.end17.i.i, label %do.body11.i.i.do.end29.i.i_crit_edge

do.body11.i.i.do.end29.i.i_crit_edge:             ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29.i.i

do.end17.i.i:                                     ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name20.i.i = getelementptr i8, ptr %sd, i32 -144
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %7, align 4
  %height23.i.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %height23.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height23.i.i, align 4
  %reg_val24.i.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %reg_val24.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_val24.i.i, align 4
  %conv25.i.i = zext i8 %25 to i32
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name20.i.i, i32 noundef %21, i32 noundef %23, i32 noundef %conv25.i.i) #12
  br label %do.end29.i.i

do.end29.i.i:                                     ; preds = %do.end17.i.i, %do.body11.i.i.do.end29.i.i_crit_edge
  %reg_val30.i.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %7, i32 0, i32 2
  %26 = ptrtoint ptr %reg_val30.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_val30.i.i, align 4
  %conv31.i.i = zext i8 %27 to i32
  %or32.i.i = or i32 %or.i.i, %conv31.i.i
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %do.end29.i.i, %do.end5.i.i.if.end33.i.i_crit_edge
  %chg_mode.0.i.i = phi i32 [ %or32.i.i, %do.end29.i.i ], [ %or.i.i, %do.end5.i.i.if.end33.i.i_crit_edge ]
  %conv34.i.i = trunc i32 %chg_mode.0.i.i to i16
  %call.i.i.i = tail call fastcc i32 @s5c73m3_check_status(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end33.i.i.__s5c73m3_s_stream.exit_crit_edge, label %if.end.i.i.i

if.end33.i.i.__s5c73m3_s_stream.exit_crit_edge:   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end.i.i.i:                                     ; preds = %if.end33.i.i
  %call1.i.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610304, i16 noundef zeroext 2832) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp2.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end.i.i.i.__s5c73m3_s_stream.exit_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.__s5c73m3_s_stream.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %call5.i.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610306, i16 noundef zeroext %conv34.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.end4.i.i.i.__s5c73m3_s_stream.exit_crit_edge, label %if.end7.i

if.end4.i.i.i.__s5c73m3_s_stream.exit_crit_edge:  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end7.i:                                        ; preds = %if.end4.i.i.i
  %call9.i.i.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610432, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool8.not.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end7.i.__s5c73m3_s_stream.exit_crit_edge

if.end7.i.__s5c73m3_s_stream.exit_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %apply_fmt.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load12.i = load i8, ptr %apply_fmt.i, align 4
  %bf.clear13.i = and i8 %bf.load12.i, -65
  store i8 %bf.clear13.i, ptr %apply_fmt.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end10.i, %land.lhs.true.i.if.end14.i_crit_edge, %entry.if.end14.i_crit_edge
  %conv17.i = zext i1 %tobool.i to i16
  %call.i69.i = tail call fastcc i32 @s5c73m3_check_status(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp.i70.i = icmp slt i32 %call.i69.i, 0
  br i1 %cmp.i70.i, label %if.end14.i.__s5c73m3_s_stream.exit_crit_edge, label %if.end.i73.i

if.end14.i.__s5c73m3_s_stream.exit_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end.i73.i:                                     ; preds = %if.end14.i
  %call1.i71.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610304, i16 noundef zeroext 2314) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71.i)
  %cmp2.i72.i = icmp slt i32 %call1.i71.i, 0
  br i1 %cmp2.i72.i, label %if.end.i73.i.__s5c73m3_s_stream.exit_crit_edge, label %if.end4.i76.i

if.end.i73.i.__s5c73m3_s_stream.exit_crit_edge:   ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end4.i76.i:                                    ; preds = %if.end.i73.i
  %call5.i74.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610306, i16 noundef zeroext %conv17.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i74.i)
  %cmp6.i75.i = icmp slt i32 %call5.i74.i, 0
  br i1 %cmp6.i75.i, label %if.end4.i76.i.__s5c73m3_s_stream.exit_crit_edge, label %s5c73m3_isp_command.exit80.i

if.end4.i76.i.__s5c73m3_s_stream.exit_crit_edge:  ; preds = %if.end4.i76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

s5c73m3_isp_command.exit80.i:                     ; preds = %if.end4.i76.i
  %call9.i77.i = tail call i32 @s5c73m3_write(ptr noundef %add.ptr.i, i32 noundef 610432, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i77.i)
  %tobool19.not.i = icmp eq i32 %call9.i77.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %s5c73m3_isp_command.exit80.i.__s5c73m3_s_stream.exit_crit_edge

s5c73m3_isp_command.exit80.i.__s5c73m3_s_stream.exit_crit_edge: ; preds = %s5c73m3_isp_command.exit80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end21.i:                                       ; preds = %s5c73m3_isp_command.exit80.i
  %streaming.i = getelementptr i8, ptr %sd, i32 936
  %29 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load28.i = load i8, ptr %streaming.i, align 4
  %bf.shl.i = select i1 %tobool.i, i8 -128, i8 0
  %bf.clear29.i = and i8 %bf.load28.i, 127
  %bf.set30.i = or i8 %bf.clear29.i, %bf.shl.i
  store i8 %bf.set30.i, ptr %streaming.i, align 4
  br i1 %tobool.i, label %if.end33.i, label %if.end21.i.__s5c73m3_s_stream.exit_crit_edge

if.end21.i.__s5c73m3_s_stream.exit_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__s5c73m3_s_stream.exit

if.end33.i:                                       ; preds = %if.end21.i
  %30 = and i8 %bf.load28.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool37.not.i = icmp eq i8 %30, 0
  br i1 %tobool37.not.i, label %if.end33.i.if.end45.i_crit_edge, label %if.then38.i

if.end33.i.if.end45.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then38.i:                                      ; preds = %if.end33.i
  %call39.i = tail call fastcc i32 @s5c73m3_set_frame_rate(ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %do.end.i, label %if.then38.i.if.end45.i_crit_edge

if.then38.i.if.end45.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

do.end.i:                                         ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name.i, i32 noundef %call39.i) #12
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end.i, %if.then38.i.if.end45.i_crit_edge, %if.end33.i.if.end45.i_crit_edge
  %call46.i = tail call fastcc i32 @s5c73m3_check_status(ptr noundef %add.ptr.i) #9
  br label %__s5c73m3_s_stream.exit

__s5c73m3_s_stream.exit:                          ; preds = %if.end45.i, %if.end21.i.__s5c73m3_s_stream.exit_crit_edge, %s5c73m3_isp_command.exit80.i.__s5c73m3_s_stream.exit_crit_edge, %if.end4.i76.i.__s5c73m3_s_stream.exit_crit_edge, %if.end.i73.i.__s5c73m3_s_stream.exit_crit_edge, %if.end14.i.__s5c73m3_s_stream.exit_crit_edge, %if.end7.i.__s5c73m3_s_stream.exit_crit_edge, %if.end4.i.i.i.__s5c73m3_s_stream.exit_crit_edge, %if.end.i.i.i.__s5c73m3_s_stream.exit_crit_edge, %if.end33.i.i.__s5c73m3_s_stream.exit_crit_edge, %s5c73m3_isp_command.exit.i.__s5c73m3_s_stream.exit_crit_edge, %if.end4.i.i.__s5c73m3_s_stream.exit_crit_edge, %if.end.i.i.__s5c73m3_s_stream.exit_crit_edge, %if.then.i.__s5c73m3_s_stream.exit_crit_edge
  %retval.0.i = phi i32 [ %call46.i, %if.end45.i ], [ %call9.i.i.i, %if.end7.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call9.i77.i, %s5c73m3_isp_command.exit80.i.__s5c73m3_s_stream.exit_crit_edge ], [ 0, %if.end21.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call5.i.i.i, %if.end4.i.i.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call1.i.i.i, %if.end.i.i.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call.i.i.i, %if.end33.i.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call9.i.i, %s5c73m3_isp_command.exit.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call5.i.i, %if.end4.i.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call.i.i, %if.then.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call5.i74.i, %if.end4.i76.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call1.i71.i, %if.end.i73.i.__s5c73m3_s_stream.exit_crit_edge ], [ %call.i69.i, %if.end14.i.__s5c73m3_s_stream.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_g_frame_interval(ptr noundef %sd, ptr nocapture noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %fiv = getelementptr i8, ptr %sd, i32 520
  %2 = ptrtoint ptr %fiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fiv, align 4
  %interval1 = getelementptr inbounds %struct.s5c73m3_interval, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %interval1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %interval1, align 4
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_s_frame_interval(ptr noundef %sd, ptr nocapture noundef readonly %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -260
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %do.end, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interval, align 4
  %denominator = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %denominator, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name, i32 noundef %4, i32 noundef %6) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %denominator.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %denominator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %do.end8.if.end16_crit_edge, label %if.end.i

do.end8.if.end16_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end.i:                                         ; preds = %do.end8
  %sensor_pix_size.i = getelementptr i8, ptr %sd, i32 500
  %9 = ptrtoint ptr %sensor_pix_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensor_pix_size.i, align 4
  %interval.i = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %fi, i32 0, i32 1
  %11 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interval.i, align 4
  %mul.i = mul i32 %12, 1000
  %div.i = udiv i32 %mul.i, %8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3264, i32 %14)
  %cmp7.i = icmp ugt i32 %14, 3264
  br i1 %cmp7.i, label %if.end.i.cleanup.3.i_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup.3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2448, i32 %16)
  %cmp10.i = icmp ugt i32 %16, 2448
  br i1 %cmp10.i, label %lor.lhs.false.i.cleanup.3.i_crit_edge, label %cleanup.1.i

lor.lhs.false.i.cleanup.3.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3.i

cleanup.1.i:                                      ; preds = %lor.lhs.false.i
  %sub.i = sub i32 142, %div.i
  %17 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %sub.1.i = sub i32 66, %div.i
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %17)
  %cmp18.1.i = icmp ult i32 %18, %17
  %fiv.1.1.i = select i1 %cmp18.1.i, ptr getelementptr inbounds ([4 x %struct.s5c73m3_interval], ptr @s5c73m3_intervals, i32 0, i32 1), ptr @s5c73m3_intervals
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %14)
  %cmp7.2.i = icmp ugt i32 %14, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296, i32 %16)
  %cmp10.2.i = icmp ugt i32 %16, 1296
  %or.cond = select i1 %cmp7.2.i, i1 true, i1 %cmp10.2.i
  br i1 %or.cond, label %cleanup.1.i.cleanup.3.i_crit_edge, label %if.end12.3.i

cleanup.1.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.3.i

if.end12.3.i:                                     ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %17) #9
  %sub.2.i = sub i32 50, %div.i
  %20 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %19)
  %cmp18.2.i = icmp ult i32 %20, %19
  %fiv.1.2.i = select i1 %cmp18.2.i, ptr getelementptr inbounds ([4 x %struct.s5c73m3_interval], ptr @s5c73m3_intervals, i32 0, i32 2), ptr %fiv.1.1.i
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %19) #9
  %sub.3.i = sub i32 33, %div.i
  %22 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %21)
  %cmp18.3.i = icmp ult i32 %22, %21
  %fiv.1.3.i = select i1 %cmp18.3.i, ptr getelementptr inbounds ([4 x %struct.s5c73m3_interval], ptr @s5c73m3_intervals, i32 0, i32 3), ptr %fiv.1.2.i
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.end12.3.i, %cleanup.1.i.cleanup.3.i_crit_edge, %lor.lhs.false.i.cleanup.3.i_crit_edge, %if.end.i.cleanup.3.i_crit_edge
  %fiv.2.3.i = phi ptr [ %fiv.1.3.i, %if.end12.3.i ], [ @s5c73m3_intervals, %if.end.i.cleanup.3.i_crit_edge ], [ %fiv.1.1.i, %cleanup.1.i.cleanup.3.i_crit_edge ], [ @s5c73m3_intervals, %lor.lhs.false.i.cleanup.3.i_crit_edge ]
  %fiv21.i = getelementptr i8, ptr %sd, i32 520
  %23 = ptrtoint ptr %fiv21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fiv.2.3.i, ptr %fiv21.i, align 4
  %24 = load i32, ptr @s5c73m3_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp22.i = icmp sgt i32 %24, 0
  br i1 %cmp22.i, label %do.end.i, label %cleanup.3.i.if.then10_crit_edge

cleanup.3.i.if.then10_crit_edge:                  ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

do.end.i:                                         ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr i8, ptr %sd, i32 -144
  %interval26.i = getelementptr inbounds %struct.s5c73m3_interval, ptr %fiv.2.3.i, i32 0, i32 1
  %25 = ptrtoint ptr %interval26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interval26.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name.i, i32 noundef %26) #12
  br label %if.then10

if.then10:                                        ; preds = %do.end.i, %cleanup.3.i.if.then10_crit_edge
  %streaming = getelementptr i8, ptr %sd, i32 936
  %27 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool11.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc i32 @s5c73m3_set_frame_rate(ptr noundef %add.ptr.i)
  br label %if.end16

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set = or i8 %bf.load, 32
  %28 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.set, ptr %streaming, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12, %do.end8.if.end16_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then12 ], [ 0, %if.else ], [ -22, %do.end8.if.end16_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5c73m3_set_frame_rate(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stabilization = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 20, i32 12
  %0 = ptrtoint ptr %stabilization to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stabilization, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fiv = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 17
  %4 = ptrtoint ptr %fiv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fiv, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end24, !prof !319

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 403, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %call.i = tail call fastcc i32 @s5c73m3_check_status(ptr noundef %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end24.cleanup_crit_edge, label %if.end.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %call1.i = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 610304, i16 noundef zeroext 3102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 610306, i16 noundef zeroext %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.cleanup_crit_edge, label %s5c73m3_isp_command.exit

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

s5c73m3_isp_command.exit:                         ; preds = %if.end4.i
  %call9.i = tail call i32 @s5c73m3_write(ptr noundef %state, i32 noundef 610432, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool26.not = icmp eq i32 %call9.i, 0
  br i1 %tobool26.not, label %if.then27, label %s5c73m3_isp_command.exit.cleanup_crit_edge

s5c73m3_isp_command.exit.cleanup_crit_edge:       ; preds = %s5c73m3_isp_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %s5c73m3_isp_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  %apply_fiv = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 21
  %8 = ptrtoint ptr %apply_fiv to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %apply_fiv, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %apply_fiv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %s5c73m3_isp_command.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then27 ], [ %call9.i, %s5c73m3_isp_command.exit.cleanup_crit_edge ], [ %call5.i, %if.end4.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5c73m3_oif_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp sgt i32 %3, 1
  br i1 %cmp1.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.i = icmp sgt i32 %3, 0
  br i1 %cmp5.i, label %if.end4.i.cleanup_crit_edge, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end4.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %.sink = phi i32 [ %3, %if.then.i.if.end_crit_edge ], [ %1, %if.end4.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink)
  %cmp8.i = icmp eq i32 %.sink, 0
  %cond9.i = select i1 %cmp8.i, i32 8199, i32 20481
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond9.i, ptr %code1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_enum_frame_size(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %s5c73m3_oif_get_pad_code.exit

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 20481, label %if.end.sw.bb_crit_edge
    i32 8199, label %if.end.sw.bb_crit_edge66
  ]

if.end.sw.bb_crit_edge66:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge66
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %7 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %sw.bb
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not.i.not = icmp eq i16 %10, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then4.v4l2_subdev_get_try_format.exit_crit_edge, !prof !319

if.then4.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then4.v4l2_subdev_get_try_format.exit_crit_edge
  %11 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_state, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %12, i32 0, i32 1
  br label %if.end8

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %oif_pix_size = getelementptr i8, ptr %sd, i32 508
  %13 = ptrtoint ptr %oif_pix_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oif_pix_size, align 4
  %height7 = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %14, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %w.0.in = phi ptr [ %12, %v4l2_subdev_get_try_format.exit ], [ %14, %if.else ]
  %h.0.in = phi ptr [ %height, %v4l2_subdev_get_try_format.exit ], [ %height7, %if.else ]
  %15 = ptrtoint ptr %h.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %h.0 = load i32, ptr %h.0.in, align 4
  %16 = ptrtoint ptr %w.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %w.0 = load i32, ptr %w.0.in, align 4
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %17 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %w.0, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %18 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %w.0, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %19 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %h.0, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %20 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %h.0, ptr %max_height, align 4
  br label %cleanup

s5c73m3_oif_get_pad_code.exit:                    ; preds = %entry
  %code10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %21 = ptrtoint ptr %code10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %code10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.i = icmp eq i32 %1, 0
  %cond9.i = select i1 %cmp8.i, i32 8199, i32 20481
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %cond9.i)
  %cmp13.not = icmp eq i32 %22, %cond9.i
  br i1 %cmp13.not, label %if.end15, label %s5c73m3_oif_get_pad_code.exit.cleanup_crit_edge

s5c73m3_oif_get_pad_code.exit.cleanup_crit_edge:  ; preds = %s5c73m3_oif_get_pad_code.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %s5c73m3_oif_get_pad_code.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp17 = icmp eq i32 %1, 1
  %. = zext i1 %cmp17 to i32
  %23 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fse, align 4
  %arrayidx22 = getelementptr [2 x i32], ptr @s5c73m3_resolutions_len, i32 0, i32 %.
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp23.not = icmp ult i32 %24, %26
  br i1 %cmp23.not, label %if.end25, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx26 = getelementptr [2 x ptr], ptr @s5c73m3_resolutions, i32 0, i32 %.
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.s5c73m3_frame_size, ptr %28, i32 %24
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx28, align 4
  %min_width30 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %31 = ptrtoint ptr %min_width30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %min_width30, align 4
  %max_width32 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %32 = ptrtoint ptr %max_width32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %max_width32, align 4
  %height36 = getelementptr %struct.s5c73m3_frame_size, ptr %28, i32 %24, i32 1
  %33 = ptrtoint ptr %height36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height36, align 4
  %max_height37 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %35 = ptrtoint ptr %max_height37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_height37, align 4
  %min_height39 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %36 = ptrtoint ptr %min_height39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %min_height39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end15.cleanup_crit_edge, %s5c73m3_oif_get_pad_code.exit.cleanup_crit_edge, %if.end8, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %if.end25 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %s5c73m3_oif_get_pad_code.exit.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_enum_frame_interval(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %fie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1 = icmp ugt i32 %3, 3
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %4 = ptrtoint ptr %fie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fie, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 3
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %size = getelementptr [4 x %struct.s5c73m3_interval], ptr @s5c73m3_intervals, i32 0, i32 %5, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp6 = icmp ugt i32 %7, %9
  br i1 %cmp6, label %if.end3.if.end12_crit_edge, label %lor.lhs.false

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

lor.lhs.false:                                    ; preds = %if.end3
  %height = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 4
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height8 = getelementptr [4 x %struct.s5c73m3_interval], ptr @s5c73m3_intervals, i32 0, i32 %5, i32 2, i32 1
  %12 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9 = icmp ugt i32 %11, %13
  br i1 %cmp9, label %lor.lhs.false.if.end12_crit_edge, label %if.else

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %interval = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %fie, i32 0, i32 5
  %interval11 = getelementptr [4 x %struct.s5c73m3_interval], ptr @s5c73m3_intervals, i32 0, i32 %5, i32 1
  %14 = ptrtoint ptr %interval11 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %interval11, align 4
  %16 = ptrtoint ptr %interval to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %interval, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %lor.lhs.false.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -22, %lor.lhs.false.if.end12_crit_edge ], [ -22, %if.end3.if.end12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

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
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !318

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %3, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i
  %8 = call ptr @memcpy(ptr %format, ptr %arrayidx.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %pad2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %9 = ptrtoint ptr %pad2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pad2, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %10, label %sw.default [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mbus_code = getelementptr i8, ptr %sd, i32 516
  %12 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbus_code, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 508, %sw.bb6 ], [ 512, %sw.bb3 ], [ 508, %if.end.sw.epilog_crit_edge ]
  %code.0 = phi i32 [ %13, %sw.bb6 ], [ 20481, %sw.bb3 ], [ 8199, %if.end.sw.epilog_crit_edge ]
  %oif_pix_size7 = getelementptr i8, ptr %sd, i32 %.sink
  %14 = ptrtoint ptr %oif_pix_size7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %fs.0 = load ptr, ptr %oif_pix_size7, align 4
  %format10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %15 = ptrtoint ptr %fs.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fs.0, align 4
  %17 = ptrtoint ptr %format10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %format10, align 4
  %height.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %fs.0, i32 0, i32 1
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height2.i, align 4
  %code3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %code3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %code.0, ptr %code3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 7, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %v4l2_subdev_get_try_format.exit
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit ], [ -22, %sw.default ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %1, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %3 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format.i, align 4
  %height6.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %height6.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height6.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb.i
  %fs.031.i.i = phi ptr [ @s5c73m3_isp_resolutions, %sw.bb.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %best_fs.030.i.i = phi ptr [ null, %sw.bb.i ], [ %best_fs.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.029.i.i = phi i32 [ 0, %sw.bb.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %best_dist.028.i.i = phi i32 [ 2147483647, %sw.bb.i ], [ %13, %for.body.i.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %fs.031.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fs.031.i.i, align 4
  %sub.i.i = sub i32 %8, %4
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #9
  %height.i.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %fs.031.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i.i, align 4
  %sub7.i.i = sub i32 %11, %6
  %12 = tail call i32 @llvm.abs.i32(i32 %sub7.i.i, i1 false) #9
  %add.i.i = add i32 %12, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %best_dist.028.i.i)
  %cmp15.i.i = icmp slt i32 %add.i.i, %best_dist.028.i.i
  %13 = tail call i32 @llvm.smin.i32(i32 %add.i.i, i32 %best_dist.028.i.i) #9
  %best_fs.1.i.i = select i1 %cmp15.i.i, ptr %fs.031.i.i, ptr %best_fs.030.i.i
  %incdec.ptr.i.i = getelementptr %struct.s5c73m3_frame_size, ptr %fs.031.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 15
  br i1 %exitcond.not.i.i, label %for.body.i.i.s5c73m3_oif_try_format.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.s5c73m3_oif_try_format.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_oif_try_format.exit

sw.bb1.i:                                         ; preds = %entry
  %format2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %14 = ptrtoint ptr %format2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format2.i, align 4
  %height6.i24.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %height6.i24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height6.i24.i, align 4
  br label %for.body.i38.i

for.body.i38.i:                                   ; preds = %for.body.i38.i.for.body.i38.i_crit_edge, %sw.bb1.i
  %fs.031.i25.i = phi ptr [ @s5c73m3_jpeg_resolutions, %sw.bb1.i ], [ %incdec.ptr.i35.i, %for.body.i38.i.for.body.i38.i_crit_edge ]
  %best_fs.030.i26.i = phi ptr [ null, %sw.bb1.i ], [ %best_fs.1.i34.i, %for.body.i38.i.for.body.i38.i_crit_edge ]
  %i.029.i27.i = phi i32 [ 0, %sw.bb1.i ], [ %inc.i36.i, %for.body.i38.i.for.body.i38.i_crit_edge ]
  %best_dist.028.i28.i = phi i32 [ 2147483647, %sw.bb1.i ], [ %24, %for.body.i38.i.for.body.i38.i_crit_edge ]
  %18 = ptrtoint ptr %fs.031.i25.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fs.031.i25.i, align 4
  %sub.i29.i = sub i32 %19, %15
  %20 = tail call i32 @llvm.abs.i32(i32 %sub.i29.i, i1 false) #9
  %height.i30.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %fs.031.i25.i, i32 0, i32 1
  %21 = ptrtoint ptr %height.i30.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height.i30.i, align 4
  %sub7.i31.i = sub i32 %22, %17
  %23 = tail call i32 @llvm.abs.i32(i32 %sub7.i31.i, i1 false) #9
  %add.i32.i = add i32 %23, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i32.i, i32 %best_dist.028.i28.i)
  %cmp15.i33.i = icmp slt i32 %add.i32.i, %best_dist.028.i28.i
  %24 = tail call i32 @llvm.smin.i32(i32 %add.i32.i, i32 %best_dist.028.i28.i) #9
  %best_fs.1.i34.i = select i1 %cmp15.i33.i, ptr %fs.031.i25.i, ptr %best_fs.030.i26.i
  %incdec.ptr.i35.i = getelementptr %struct.s5c73m3_frame_size, ptr %fs.031.i25.i, i32 1
  %inc.i36.i = add nuw nsw i32 %i.029.i27.i, 1
  %exitcond.not.i37.i = icmp eq i32 %inc.i36.i, 15
  br i1 %exitcond.not.i37.i, label %for.body.i38.i.s5c73m3_oif_try_format.exit_crit_edge, label %for.body.i38.i.for.body.i38.i_crit_edge

for.body.i38.i.for.body.i38.i_crit_edge:          ; preds = %for.body.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i38.i

for.body.i38.i.s5c73m3_oif_try_format.exit_crit_edge: ; preds = %for.body.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_oif_try_format.exit

sw.default.i:                                     ; preds = %entry
  %code6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %code6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20481, i32 %26)
  %cmp.i = icmp eq i32 %26, 20481
  %..i = select i1 %cmp.i, i32 20481, i32 8199
  %27 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp7.i = icmp eq i32 %28, 1
  br i1 %cmp7.i, label %if.then8.i, label %if.else9.i

if.then8.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  %oif_pix_size.i = getelementptr i8, ptr %sd, i32 508
  %29 = ptrtoint ptr %oif_pix_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %oif_pix_size.i, align 4
  br label %s5c73m3_oif_try_format.exit

if.else9.i:                                       ; preds = %sw.default.i
  %num_pads.i.i = getelementptr i8, ptr %sd, i32 -228
  %31 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not.i.not.i = icmp eq i16 %32, 0
  br i1 %cmp.not.i.not.i, label %do.end.i.i, label %if.else9.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !319

if.else9.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.else9.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %33 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd_state, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %height6.i40.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %height6.i40.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height6.i40.i, align 4
  br label %for.body.i54.i

for.body.i54.i:                                   ; preds = %for.body.i54.i.for.body.i54.i_crit_edge, %v4l2_subdev_get_try_format.exit.i
  %fs.031.i41.i = phi ptr [ @s5c73m3_isp_resolutions, %v4l2_subdev_get_try_format.exit.i ], [ %incdec.ptr.i51.i, %for.body.i54.i.for.body.i54.i_crit_edge ]
  %best_fs.030.i42.i = phi ptr [ null, %v4l2_subdev_get_try_format.exit.i ], [ %best_fs.1.i50.i, %for.body.i54.i.for.body.i54.i_crit_edge ]
  %i.029.i43.i = phi i32 [ 0, %v4l2_subdev_get_try_format.exit.i ], [ %inc.i52.i, %for.body.i54.i.for.body.i54.i_crit_edge ]
  %best_dist.028.i44.i = phi i32 [ 2147483647, %v4l2_subdev_get_try_format.exit.i ], [ %45, %for.body.i54.i.for.body.i54.i_crit_edge ]
  %39 = ptrtoint ptr %fs.031.i41.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fs.031.i41.i, align 4
  %sub.i45.i = sub i32 %40, %36
  %41 = tail call i32 @llvm.abs.i32(i32 %sub.i45.i, i1 false) #9
  %height.i46.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %fs.031.i41.i, i32 0, i32 1
  %42 = ptrtoint ptr %height.i46.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i46.i, align 4
  %sub7.i47.i = sub i32 %43, %38
  %44 = tail call i32 @llvm.abs.i32(i32 %sub7.i47.i, i1 false) #9
  %add.i48.i = add i32 %44, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i48.i, i32 %best_dist.028.i44.i)
  %cmp15.i49.i = icmp slt i32 %add.i48.i, %best_dist.028.i44.i
  %45 = tail call i32 @llvm.smin.i32(i32 %add.i48.i, i32 %best_dist.028.i44.i) #9
  %best_fs.1.i50.i = select i1 %cmp15.i49.i, ptr %fs.031.i41.i, ptr %best_fs.030.i42.i
  %incdec.ptr.i51.i = getelementptr %struct.s5c73m3_frame_size, ptr %fs.031.i41.i, i32 1
  %inc.i52.i = add nuw nsw i32 %i.029.i43.i, 1
  %exitcond.not.i53.i = icmp eq i32 %inc.i52.i, 15
  br i1 %exitcond.not.i53.i, label %for.body.i54.i.s5c73m3_oif_try_format.exit_crit_edge, label %for.body.i54.i.for.body.i54.i_crit_edge

for.body.i54.i.for.body.i54.i_crit_edge:          ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i54.i

for.body.i54.i.s5c73m3_oif_try_format.exit_crit_edge: ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5c73m3_oif_try_format.exit

s5c73m3_oif_try_format.exit:                      ; preds = %for.body.i54.i.s5c73m3_oif_try_format.exit_crit_edge, %if.then8.i, %for.body.i38.i.s5c73m3_oif_try_format.exit_crit_edge, %for.body.i.i.s5c73m3_oif_try_format.exit_crit_edge
  %.sink.i = phi ptr [ %30, %if.then8.i ], [ %best_fs.1.i50.i, %for.body.i54.i.s5c73m3_oif_try_format.exit_crit_edge ], [ %best_fs.1.i.i, %for.body.i.i.s5c73m3_oif_try_format.exit_crit_edge ], [ %best_fs.1.i34.i, %for.body.i38.i.s5c73m3_oif_try_format.exit_crit_edge ]
  %code.1.i = phi i32 [ %..i, %if.then8.i ], [ %..i, %for.body.i54.i.s5c73m3_oif_try_format.exit_crit_edge ], [ 8199, %for.body.i.i.s5c73m3_oif_try_format.exit_crit_edge ], [ 20481, %for.body.i38.i.s5c73m3_oif_try_format.exit_crit_edge ]
  %format13.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %46 = ptrtoint ptr %.sink.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %.sink.i, align 4
  %48 = ptrtoint ptr %format13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %format13.i, align 4
  %height.i56.i = getelementptr inbounds %struct.s5c73m3_frame_size, ptr %.sink.i, i32 0, i32 1
  %49 = ptrtoint ptr %height.i56.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height.i56.i, align 4
  %height2.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %height2.i.i, align 4
  %code3.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %code3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %code.1.i, ptr %code3.i.i, align 4
  %colorspace.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 7, ptr %colorspace.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %field.i.i, align 4
  %55 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp = icmp eq i32 %56, 0
  %57 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pad.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %s5c73m3_oif_try_format.exit
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %59 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %58, %conv.i
  br i1 %cmp.not.i, label %if.then.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !318

if.then.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %58, %if.then.v4l2_subdev_get_try_format.exit_crit_edge ]
  %61 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %62, i32 %spec.select.i
  %63 = call ptr @memcpy(ptr %arrayidx.i, ptr %format13.i, i32 48)
  %64 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp3 = icmp eq i32 %65, 0
  br i1 %cmp3, label %if.then4, label %v4l2_subdev_get_try_format.exit.if.end20_crit_edge

v4l2_subdev_get_try_format.exit.if.end20_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then4:                                         ; preds = %v4l2_subdev_get_try_format.exit
  %66 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %67)
  %cmp.not.i45 = icmp ugt i16 %67, 2
  br i1 %cmp.not.i45, label %if.then4.v4l2_subdev_get_try_format.exit49_crit_edge, label %do.end.i46, !prof !318

if.then4.v4l2_subdev_get_try_format.exit49_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit49

do.end.i46:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit49

v4l2_subdev_get_try_format.exit49:                ; preds = %do.end.i46, %if.then4.v4l2_subdev_get_try_format.exit49_crit_edge
  %spec.select.i47 = phi i32 [ 0, %do.end.i46 ], [ 2, %if.then4.v4l2_subdev_get_try_format.exit49_crit_edge ]
  %68 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sd_state, align 4
  %arrayidx.i48 = getelementptr %struct.v4l2_subdev_pad_config, ptr %69, i32 %spec.select.i47
  %70 = ptrtoint ptr %format13.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %format13.i, align 4
  %72 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx.i48, align 4
  %73 = ptrtoint ptr %height2.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height2.i.i, align 4
  %height9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i48, i32 0, i32 1
  %75 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %height9, align 4
  br label %if.end20

if.else:                                          ; preds = %s5c73m3_oif_try_format.exit
  %76 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %58, label %if.else.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %oif_pix_size = getelementptr i8, ptr %sd, i32 508
  %77 = ptrtoint ptr %oif_pix_size to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %.sink.i, ptr %oif_pix_size, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13 = getelementptr i8, ptr %sd, i32 512
  %78 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %.sink.i, ptr %arrayidx13, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %mbus_code = getelementptr i8, ptr %sd, i32 516
  %79 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %code.1.i, ptr %mbus_code, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb11, %sw.bb, %if.else.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb14 ], [ 0, %sw.bb11 ], [ 0, %sw.bb ], [ -16, %if.else.sw.epilog_crit_edge ]
  %streaming = getelementptr i8, ptr %sd, i32 936
  %80 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else17, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.else17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set = or i8 %bf.load, 64
  %81 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %bf.set, ptr %streaming, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %sw.epilog.if.end20_crit_edge, %v4l2_subdev_get_try_format.exit49, %v4l2_subdev_get_try_format.exit.if.end20_crit_edge
  %ret.1 = phi i32 [ 0, %v4l2_subdev_get_try_format.exit49 ], [ 0, %v4l2_subdev_get_try_format.exit.if.end20_crit_edge ], [ %ret.0, %if.else17 ], [ -16, %sw.epilog.if.end20_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_get_frame_desc(ptr noundef %sd, i32 noundef %pad, ptr noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pad)
  %cmp.not = icmp ne i32 %pad, 2
  %cmp1 = icmp eq ptr %fd, null
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %num_entries = getelementptr inbounds %struct.v4l2_mbus_frame_desc, ptr %fd, i32 0, i32 1
  %0 = ptrtoint ptr %num_entries to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 2, ptr %num_entries, align 4
  %frame_desc = getelementptr i8, ptr %sd, i32 524
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %fd, i32 0, i32 %i.020
  %arrayidx7 = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %frame_desc, i32 0, i32 %i.020
  %1 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx7, i32 12)
  %inc = add nuw nsw i32 %i.020, 1
  %2 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_entries, align 4
  %conv = zext i16 %3 to i32
  %cmp3 = icmp ult i32 %inc, %conv
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_set_frame_desc(ptr noundef %sd, i32 noundef %pad, ptr noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frame_desc1 = getelementptr i8, ptr %sd, i32 524
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pad)
  %cmp.not = icmp ne i32 %pad, 2
  %cmp2 = icmp eq ptr %fd, null
  %or.cond = or i1 %cmp.not, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.v4l2_mbus_frame_desc_entry, ptr %fd, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10485760, ptr %length, align 4
  %length6 = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %fd, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length6, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 4096)
  %4 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %length6, align 4
  %num_entries = getelementptr inbounds %struct.v4l2_mbus_frame_desc, ptr %fd, i32 0, i32 1
  %5 = ptrtoint ptr %num_entries to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %num_entries, align 4
  %lock = getelementptr i8, ptr %sd, i32 576
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %6 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1235.not = icmp eq i16 %7, 0
  br i1 %cmp1235.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx15 = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %frame_desc1, i32 0, i32 %i.036
  %arrayidx17 = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %fd, i32 0, i32 %i.036
  %8 = call ptr @memcpy(ptr %arrayidx15, ptr %arrayidx17, i32 12)
  %inc = add nuw nsw i32 %i.036, 1
  %9 = ptrtoint ptr %num_entries to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_entries, align 4
  %conv = zext i16 %10 to i32
  %cmp12 = icmp ult i32 %inc, %conv
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_registered(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -260
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev, align 4
  %call1 = tail call i32 @v4l2_device_register_subdev(ptr noundef %1, ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %name3 = getelementptr i8, ptr %sd, i32 116
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name, ptr noundef %name3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @media_create_pad_link(ptr noundef %add.ptr.i, i16 noundef zeroext 0, ptr noundef %sd, i16 noundef zeroext 0, i32 noundef 3) #9
  %call14 = tail call i32 @media_create_pad_link(ptr noundef %add.ptr.i, i16 noundef zeroext 1, ptr noundef %sd, i16 noundef zeroext 1, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5c73m3_oif_unregistered(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -260
  tail call void @v4l2_device_unregister_subdev(ptr noundef %add.ptr.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_oif_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %fh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !319

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 352, ptr %5, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 288, ptr %height2.i, align 4
  %code3.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %code3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8199, ptr %code3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %colorspace.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field.i, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %13 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp.not.i13 = icmp ugt i16 %14, 1
  br i1 %cmp.not.i13, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit15_crit_edge, label %do.end.i14, !prof !318

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit15_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit15

do.end.i14:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit15

v4l2_subdev_get_try_format.exit15:                ; preds = %do.end.i14, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit15_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i14 ], [ 1, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_format.exit15_crit_edge ]
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %16, i32 %spec.select.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 800, ptr %arrayidx.i, align 4
  %height2.i16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 1
  %18 = ptrtoint ptr %height2.i16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 450, ptr %height2.i16, align 4
  %code3.i17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 2
  %19 = ptrtoint ptr %code3.i17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20481, ptr %code3.i17, align 4
  %colorspace.i18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 4
  %20 = ptrtoint ptr %colorspace.i18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %colorspace.i18, align 4
  %field.i19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 3
  %21 = ptrtoint ptr %field.i19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field.i19, align 4
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %24 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp.not.i22 = icmp ugt i16 %25, 2
  br i1 %cmp.not.i22, label %v4l2_subdev_get_try_format.exit15.v4l2_subdev_get_try_format.exit26_crit_edge, label %do.end.i23, !prof !318

v4l2_subdev_get_try_format.exit15.v4l2_subdev_get_try_format.exit26_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit15
  call void @__sanitizer_cov_trace_pc() #11
  br label %v4l2_subdev_get_try_format.exit26

do.end.i23:                                       ; preds = %v4l2_subdev_get_try_format.exit15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 998, i32 noundef 9, ptr noundef null) #9
  br label %v4l2_subdev_get_try_format.exit26

v4l2_subdev_get_try_format.exit26:                ; preds = %do.end.i23, %v4l2_subdev_get_try_format.exit15.v4l2_subdev_get_try_format.exit26_crit_edge
  %spec.select.i24 = phi i32 [ 0, %do.end.i23 ], [ 2, %v4l2_subdev_get_try_format.exit15.v4l2_subdev_get_try_format.exit26_crit_edge ]
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %arrayidx.i25 = getelementptr %struct.v4l2_subdev_pad_config, ptr %27, i32 %spec.select.i24
  %28 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 352, ptr %arrayidx.i25, align 4
  %height2.i27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i25, i32 0, i32 1
  %29 = ptrtoint ptr %height2.i27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 288, ptr %height2.i27, align 4
  %code3.i28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i25, i32 0, i32 2
  %30 = ptrtoint ptr %code3.i28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8199, ptr %code3.i28, align 4
  %colorspace.i29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i25, i32 0, i32 4
  %31 = ptrtoint ptr %colorspace.i29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %colorspace.i29, align 4
  %field.i30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i25, i32 0, i32 3
  %32 = ptrtoint ptr %field.i30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %field.i30, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !61, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !212, !214, !216, !217, !218, !220, !222, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !248, !250, !251, !252, !253, !255, !257, !259, !261, !262, !263, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !287, !288, !289, !291, !292, !293, !294, !296, !297, !299, !301, !302, !303, !304, !306}
!llvm.module.flags = !{!308, !309, !310, !311, !312, !313, !314, !315}
!llvm.ident = !{!316}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__param_boot_from_rom, !4, !"__param_boot_from_rom", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 39, i32 1}
!5 = !{ptr @__UNIQUE_ID_boot_from_romtype293, !4, !"__UNIQUE_ID_boot_from_romtype293", i1 false, i1 false}
!6 = !{ptr @__param_update_fw, !7, !"__param_update_fw", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 42, i32 1}
!8 = !{ptr @__UNIQUE_ID_update_fwtype294, !7, !"__UNIQUE_ID_update_fwtype294", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_s5c73m3__297_1816_s5c73m3_i2c_driver_init6, !10, !"__initcall__kmod_s5c73m3__297_1816_s5c73m3_i2c_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1816, i32 1}
!11 = !{ptr @__exitcall_s5c73m3_i2c_driver_exit, !10, !"__exitcall_s5c73m3_i2c_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description298, !13, !"__UNIQUE_ID_description298", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1818, i32 1}
!14 = !{ptr @__UNIQUE_ID_author299, !15, !"__UNIQUE_ID_author299", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1819, i32 1}
!16 = !{ptr @__UNIQUE_ID_file300, !17, !"__UNIQUE_ID_file300", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1820, i32 1}
!18 = !{ptr @__UNIQUE_ID_license301, !17, !"__UNIQUE_ID_license301", i1 false, i1 false}
!19 = !{ptr @s5c73m3_dbg, !20, !"s5c73m3_dbg", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 35, i32 5}
!21 = !{ptr @update_fw, !22, !"update_fw", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 41, i32 12}
!23 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!24 = !{ptr @__param_str_boot_from_rom, !4, !"__param_str_boot_from_rom", i1 false, i1 false}
!25 = !{ptr @boot_from_rom, !26, !"boot_from_rom", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 38, i32 12}
!27 = !{ptr @__param_str_update_fw, !7, !"__param_str_update_fw", i1 false, i1 false}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 131, i32 2}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s5c73m3_i2c_write._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @s5c73m3_i2c_write._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 164, i32 3}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @s5c73m3_i2c_read._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @s5c73m3_i2c_read._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 170, i32 2}
!41 = !{ptr @s5c73m3_i2c_read._entry.5, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @s5c73m3_i2c_read._entry_ptr.7, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 256, i32 3}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @s5c73m3_check_status._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @s5c73m3_check_status._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 267, i32 3}
!50 = !{ptr @s5c73m3_check_status._entry.10, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @s5c73m3_check_status._entry_ptr.12, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1809, i32 11}
!54 = !{ptr @s5c73m3_i2c_driver, !55, !"s5c73m3_i2c_driver", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1806, i32 26}
!56 = !{ptr @s5c73m3_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1673, i32 2}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1696, i32 24}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1721, i32 3}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @s5c73m3_probe._entry, !62, !"_entry", i1 false, i1 false}
!67 = !{ptr @s5c73m3_probe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1755, i32 3}
!70 = !{ptr @s5c73m3_probe._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @s5c73m3_probe._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1763, i32 2}
!74 = !{ptr @s5c73m3_probe._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @s5c73m3_probe._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1606, i32 4}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @s5c73m3_get_platform_data._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @s5c73m3_get_platform_data._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1616, i32 35}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1620, i32 33}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1623, i32 3}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @s5c73m3_get_platform_data._entry.30, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @s5c73m3_get_platform_data._entry_ptr.33, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1633, i32 3}
!92 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @s5c73m3_get_platform_data._entry.34, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @s5c73m3_get_platform_data._entry_ptr.37, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1643, i32 3}
!97 = !{ptr @s5c73m3_get_platform_data._entry.38, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @s5c73m3_get_platform_data._entry_ptr.40, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1651, i32 3}
!101 = !{ptr @s5c73m3_get_platform_data._entry.41, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @s5c73m3_get_platform_data._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1573, i32 3}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1573, i32 20}
!107 = distinct !{null, !108, !"prop_names", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1572, i32 28}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1585, i32 4}
!111 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @s5c73m3_parse_gpios._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @s5c73m3_parse_gpios._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @s5c73m3_subdev_ops, !115, !"s5c73m3_subdev_ops", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1509, i32 37}
!116 = !{ptr @s5c73m3_pad_ops, !117, !"s5c73m3_pad_ops", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1502, i32 41}
!118 = !{ptr @s5c73m3_enum_mbus_code.codes, !119, !"codes", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1192, i32 19}
!120 = !{ptr @s5c73m3_resolutions_len, !121, !"s5c73m3_resolutions_len", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 100, i32 18}
!122 = !{ptr @s5c73m3_resolutions, !123, !"s5c73m3_resolutions", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 95, i32 48}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!126 = !{ptr @s5c73m3_internal_ops, !127, !"s5c73m3_internal_ops", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1498, i32 46}
!128 = !{ptr @oif_subdev_ops, !129, !"oif_subdev_ops", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1540, i32 37}
!130 = !{ptr @s5c73m3_oif_core_ops, !131, !"s5c73m3_oif_core_ops", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1529, i32 42}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1311, i32 2}
!134 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @s5c73m3_oif_log_status._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @s5c73m3_oif_log_status._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1457, i32 4}
!139 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @s5c73m3_oif_set_power._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @s5c73m3_oif_set_power._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1462, i32 2}
!144 = !{ptr @s5c73m3_oif_set_power._entry.53, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @s5c73m3_oif_set_power._entry_ptr.55, !143, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"boot_regs", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 720, i32 19}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 742, i32 3}
!150 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @s5c73m3_rom_boot._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @s5c73m3_rom_boot._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 756, i32 3}
!155 = !{ptr @s5c73m3_rom_boot._entry.58, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @s5c73m3_rom_boot._entry_ptr.60, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 514, i32 2}
!159 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @s5c73m3_read_fw_version._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @s5c73m3_read_fw_version._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 568, i32 3}
!164 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @s5c73m3_spi_boot._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @s5c73m3_spi_boot._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 586, i32 3}
!169 = !{ptr @s5c73m3_spi_boot._entry.65, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @s5c73m3_spi_boot._entry_ptr.67, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 350, i32 37}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 354, i32 3}
!175 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @s5c73m3_load_fw._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @s5c73m3_load_fw._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 358, i32 2}
!180 = !{ptr @s5c73m3_load_fw._entry.71, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @s5c73m3_load_fw._entry_ptr.73, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 365, i32 3}
!184 = !{ptr @s5c73m3_load_fw._entry.74, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @s5c73m3_load_fw._entry_ptr.76, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 526, i32 2}
!188 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @s5c73m3_fw_update_from._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @s5c73m3_fw_update_from._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 539, i32 4}
!193 = !{ptr @s5c73m3_fw_update_from._entry.79, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @s5c73m3_fw_update_from._entry_ptr.81, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 542, i32 4}
!197 = !{ptr @s5c73m3_fw_update_from._entry.82, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @s5c73m3_fw_update_from._entry_ptr.84, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 549, i32 2}
!201 = !{ptr @s5c73m3_fw_update_from._entry.85, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @s5c73m3_fw_update_from._entry_ptr.87, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 313, i32 3}
!205 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @s5c73m3_set_af_softlanding._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @s5c73m3_set_af_softlanding._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 321, i32 10}
!210 = !{ptr @.str.91, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 325, i32 10}
!212 = !{ptr @.str.92, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 330, i32 10}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 336, i32 2}
!216 = !{ptr @s5c73m3_set_af_softlanding._entry.93, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @s5c73m3_set_af_softlanding._entry_ptr.95, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @s5c73m3_oif_video_ops, !219, !"s5c73m3_oif_video_ops", i1 false, i1 false}
!219 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1534, i32 43}
!220 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 445, i32 4}
!222 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @__s5c73m3_s_stream._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @__s5c73m3_s_stream._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 380, i32 2}
!227 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @s5c73m3_set_frame_size._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @s5c73m3_set_frame_size._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.101, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 387, i32 3}
!232 = !{ptr @s5c73m3_set_frame_size._entry.100, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @s5c73m3_set_frame_size._entry_ptr.102, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.103, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 932, i32 2}
!236 = !{ptr @.str.104, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @s5c73m3_oif_s_frame_interval._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @s5c73m3_oif_s_frame_interval._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 918, i32 2}
!241 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @__s5c73m3_set_frame_interval._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @__s5c73m3_set_frame_interval._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @s5c73m3_oif_pad_ops, !245, !"s5c73m3_oif_pad_ops", i1 false, i1 false}
!245 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1519, i32 41}
!246 = !{ptr @oif_internal_ops, !247, !"oif_internal_ops", i1 false, i1 false}
!247 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1513, i32 46}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1476, i32 3}
!250 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @s5c73m3_oif_registered._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @s5c73m3_oif_registered._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.109, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1549, i32 3}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1549, i32 19}
!257 = distinct !{null, !258, !"gpio_names", i1 false, i1 false}
!258 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1548, i32 28}
!259 = !{ptr @.str.111, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1562, i32 4}
!261 = !{ptr @.str.112, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @s5c73m3_configure_gpios._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @s5c73m3_configure_gpios._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.113, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 49, i32 2}
!266 = !{ptr @.str.114, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 50, i32 2}
!268 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 51, i32 2}
!270 = !{ptr @.str.116, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 52, i32 2}
!272 = !{ptr @.str.117, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 54, i32 2}
!274 = !{ptr @.str.118, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 56, i32 2}
!276 = distinct !{null, !277, !"s5c73m3_supply_names", i1 false, i1 false}
!277 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 48, i32 27}
!278 = !{ptr @s5c73m3_isp_resolutions, !279, !"s5c73m3_isp_resolutions", i1 false, i1 false}
!279 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 59, i32 40}
!280 = !{ptr @s5c73m3_jpeg_resolutions, !281, !"s5c73m3_jpeg_resolutions", i1 false, i1 false}
!281 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 77, i32 40}
!282 = !{ptr @s5c73m3_intervals, !283, !"s5c73m3_intervals", i1 false, i1 false}
!283 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 105, i32 38}
!284 = !{ptr @.str.119, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1386, i32 2}
!286 = !{ptr @.str.120, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @__s5c73m3_power_on._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @__s5c73m3_power_on._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.121, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 673, i32 3}
!291 = !{ptr @.str.122, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @s5c73m3_get_fw_version._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @s5c73m3_get_fw_version._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @s5c73m3_get_fw_version._entry.123, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 697, i32 3}
!296 = !{ptr @s5c73m3_get_fw_version._entry_ptr.124, !295, !"_entry_ptr", i1 false, i1 false}
!297 = distinct !{null, !298, !"regs", i1 false, i1 false}
!298 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 621, i32 19}
!299 = !{ptr @.str.125, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1429, i32 4}
!301 = !{ptr @.str.126, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @__s5c73m3_power_off._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @__s5c73m3_power_off._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @s5c73m3_of_match, !305, !"s5c73m3_of_match", i1 false, i1 false}
!305 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1799, i32 34}
!306 = !{ptr @s5c73m3_id, !307, !"s5c73m3_id", i1 false, i1 false}
!307 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-core.c", i32 1792, i32 35}
!308 = !{i32 1, !"wchar_size", i32 2}
!309 = !{i32 1, !"min_enum_size", i32 4}
!310 = !{i32 8, !"branch-target-enforcement", i32 0}
!311 = !{i32 8, !"sign-return-address", i32 0}
!312 = !{i32 8, !"sign-return-address-all", i32 0}
!313 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!314 = !{i32 7, !"uwtable", i32 1}
!315 = !{i32 7, !"frame-pointer", i32 2}
!316 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!317 = !{!"auto-init"}
!318 = !{!"branch_weights", i32 2000, i32 1}
!319 = !{!"branch_weights", i32 1, i32 2000}
