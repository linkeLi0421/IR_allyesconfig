; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv748x/adv748x-core.c_pt.bc'
source_filename = "../drivers/media/i2c/adv748x/adv748x-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.adv748x_register_map = type { ptr, i8 }
%struct.adv748x_reg_value = type { i8, i8, i8 }
%struct.adv748x_state = type { ptr, ptr, %struct.mutex, [12 x ptr], [12 x ptr], [12 x ptr], %struct.adv748x_hdmi, %struct.adv748x_afe, %struct.adv748x_csi2, %struct.adv748x_csi2 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adv748x_hdmi = type { [2 x %struct.media_pad], %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, %struct.v4l2_dv_timings, %struct.v4l2_fract, ptr, %struct.anon.111 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.108, i16, i16, i16, [10 x i16] }
%union.anon.108 = type { i16 }
%struct.v4l2_dv_timings = type { i32, %union.anon.106 }
%union.anon.106 = type { [32 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.anon.111 = type { [512 x i8], i32, i32 }
%struct.adv748x_afe = type { [9 x %struct.media_pad], %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, %struct.v4l2_mbus_framefmt, ptr, i8, i64, i32 }
%struct.adv748x_csi2 = type { ptr, %struct.v4l2_mbus_framefmt, i32, i32, i32, i32, [2 x %struct.media_pad], %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_subdev }
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
%struct.of_endpoint = type { i32, i32, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.120, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.120 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@adv748x_tx_power.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/i2c/adv748x/adv748x-core.c\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Enabling with unknown bit set\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %d-%04x %s\00", [18 x i8] zeroinitializer }, align 32
@adv748x_tx_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @adv748x_link_setup, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@adv748x_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_adv748x__297_856_adv748x_driver_init6 = internal global ptr @adv748x_driver_init, section ".initcall6.init", align 4
@adv748x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @adv748x_remove, ptr @adv748x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adv748x_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv748x_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv748x_driver_exit = internal global ptr @adv748x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [64 x i8] c"adv748x.author=Kieran Bingham <kieran.bingham@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [42 x i8] c"adv748x.description=ADV748X video decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [47 x i8] c"adv748x.file=drivers/media/i2c/adv748x/adv748x\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [20 x i8] c"adv748x.license=GPL\00", section ".modinfo", align 1
@adv748x_read_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 111, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error reading %02x, %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv748x_read_check\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adv748x_read_check._entry_ptr = internal global ptr @adv748x_read_check._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv748x\00", [24 x i8] zeroinitializer }, align 32
@adv748x_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7481\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adv7482\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adv748x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adv748x_resume_early, ptr null, ptr @adv748x_resume_early, ptr null, ptr @adv748x_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adv748x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&state->mutex\00", [18 x i8] zeroinitializer }, align 32
@adv748x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 741, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to parse device tree\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv748x_probe\00", [18 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr = internal global ptr @adv748x_probe._entry, section ".printk_index", align 4
@adv748x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error configuring IO regmap region\00", [61 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr.13 = internal global ptr @adv748x_probe._entry.11, section ".printk_index", align 4
@adv748x_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str, i32 754, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to identify chip\00", [40 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr.16 = internal global ptr @adv748x_probe._entry.14, section ".printk_index", align 4
@adv748x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str, i32 761, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to setup client regmap pages\00", [60 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr.19 = internal global ptr @adv748x_probe._entry.17, section ".printk_index", align 4
@adv748x_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to reset hardware\00", [39 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr.22 = internal global ptr @adv748x_probe._entry.20, section ".printk_index", align 4
@adv748x_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str, i32 775, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to probe HDMI\00", [43 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr.25 = internal global ptr @adv748x_probe._entry.23, section ".printk_index", align 4
@adv748x_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str, i32 782, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to probe AFE\00", [44 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr.28 = internal global ptr @adv748x_probe._entry.26, section ".printk_index", align 4
@adv748x_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str, i32 789, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to probe TXA\00", [44 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr.31 = internal global ptr @adv748x_probe._entry.29, section ".printk_index", align 4
@adv748x_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.10, ptr @.str, i32 796, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to probe TXB\00", [44 x i8] zeroinitializer }, align 32
@adv748x_probe._entry_ptr.34 = internal global ptr @adv748x_probe._entry.32, section ".printk_index", align 4
@adv748x_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 663, ptr @.str.37, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Endpoint %pOF on port %d\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv748x_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adv748x_parse_dt._entry_ptr = internal global ptr @adv748x_parse_dt._entry, section ".printk_index", align 4
@adv748x_parse_dt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str, i32 667, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid endpoint %pOF on port %d\00", [63 x i8] zeroinitializer }, align 32
@adv748x_parse_dt._entry_ptr.40 = internal global ptr @adv748x_parse_dt._entry.38, section ".printk_index", align 4
@adv748x_parse_dt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str, i32 674, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Multiple port endpoints are not supported\00", [54 x i8] zeroinitializer }, align 32
@adv748x_parse_dt._entry_ptr.43 = internal global ptr @adv748x_parse_dt._entry.41, section ".printk_index", align 4
@adv748x_parse_csi2_lanes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 628, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TXA: Invalid number (%u) of lanes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adv748x_parse_csi2_lanes\00", [39 x i8] zeroinitializer }, align 32
@adv748x_parse_csi2_lanes._entry_ptr = internal global ptr @adv748x_parse_csi2_lanes._entry, section ".printk_index", align 4
@adv748x_parse_csi2_lanes.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.45, ptr @.str, ptr @.str.46, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TXA: using %u lanes\0A\00", [43 x i8] zeroinitializer }, align 32
@adv748x_parse_csi2_lanes._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TXB: Invalid number (%u) of lanes\0A\00", [61 x i8] zeroinitializer }, align 32
@adv748x_parse_csi2_lanes._entry_ptr.49 = internal global ptr @adv748x_parse_csi2_lanes._entry.47, section ".printk_index", align 4
@adv748x_parse_csi2_lanes.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.45, ptr @.str, ptr @.str.50, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TXB: using %u lanes\0A\00", [43 x i8] zeroinitializer }, align 32
@adv748x_configure_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adv748x_regmap_cnf = internal constant { [12 x %struct.regmap_config], [528 x i8] } { [12 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.54, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.55, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.56, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.57, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.58, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.59, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.60, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.61, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.62, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.63, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.64, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.65, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [528 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"adv748x_core:68:(&adv748x_regmap_cnf[region])->lock\00", [44 x i8] zeroinitializer }, align 32
@adv748x_configure_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 74, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error initializing regmap %d with error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adv748x_configure_regmap\00", [39 x i8] zeroinitializer }, align 32
@adv748x_configure_regmap._entry_ptr = internal global ptr @adv748x_configure_regmap._entry, section ".printk_index", align 4
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpll\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cp\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edid\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"repeater\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infoframe\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cbus\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdp\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"txa\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"txb\00", [28 x i8] zeroinitializer }, align 32
@adv748x_identify_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str, i32 558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read chip revision\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adv748x_identify_chip\00", [42 x i8] zeroinitializer }, align 32
@adv748x_identify_chip._entry_ptr = internal global ptr @adv748x_identify_chip._entry, section ".printk_index", align 4
@adv748x_identify_chip._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str, i32 563, ptr @.str.37, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"chip found @ 0x%02x revision %02x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@adv748x_identify_chip._entry_ptr.70 = internal global ptr @adv748x_identify_chip._entry.68, section ".printk_index", align 4
@adv748x_default_addresses = internal constant { [12 x %struct.adv748x_register_map], [32 x i8] } { [12 x %struct.adv748x_register_map] [%struct.adv748x_register_map { ptr @.str.73, i8 112 }, %struct.adv748x_register_map { ptr @.str.55, i8 38 }, %struct.adv748x_register_map { ptr @.str.56, i8 34 }, %struct.adv748x_register_map { ptr @.str.57, i8 52 }, %struct.adv748x_register_map { ptr @.str.58, i8 54 }, %struct.adv748x_register_map { ptr @.str.59, i8 50 }, %struct.adv748x_register_map { ptr @.str.60, i8 49 }, %struct.adv748x_register_map { ptr @.str.61, i8 48 }, %struct.adv748x_register_map { ptr @.str.62, i8 65 }, %struct.adv748x_register_map { ptr @.str.63, i8 121 }, %struct.adv748x_register_map { ptr @.str.65, i8 72 }, %struct.adv748x_register_map { ptr @.str.64, i8 74 }], [32 x i8] zeroinitializer }, align 32
@adv748x_initialise_clients._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to create i2c client %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adv748x_initialise_clients\00", [37 x i8] zeroinitializer }, align 32
@adv748x_initialise_clients._entry_ptr = internal global ptr @adv748x_initialise_clients._entry, section ".printk_index", align 4
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@adv748x_init_hdmi = internal constant { [31 x %struct.adv748x_reg_value], [35 x i8] } { [31 x %struct.adv748x_reg_value] [%struct.adv748x_reg_value { i8 0, i8 0, i8 64 }, %struct.adv748x_reg_value { i8 5, i8 64, i8 -125 }, %struct.adv748x_reg_value { i8 3, i8 0, i8 8 }, %struct.adv748x_reg_value { i8 3, i8 -104, i8 -1 }, %struct.adv748x_reg_value { i8 3, i8 -103, i8 -93 }, %struct.adv748x_reg_value { i8 3, i8 -102, i8 0 }, %struct.adv748x_reg_value { i8 3, i8 -101, i8 10 }, %struct.adv748x_reg_value { i8 3, i8 -99, i8 64 }, %struct.adv748x_reg_value { i8 3, i8 -53, i8 9 }, %struct.adv748x_reg_value { i8 3, i8 61, i8 16 }, %struct.adv748x_reg_value { i8 3, i8 62, i8 123 }, %struct.adv748x_reg_value { i8 3, i8 63, i8 94 }, %struct.adv748x_reg_value { i8 3, i8 78, i8 -2 }, %struct.adv748x_reg_value { i8 3, i8 79, i8 24 }, %struct.adv748x_reg_value { i8 3, i8 87, i8 -93 }, %struct.adv748x_reg_value { i8 3, i8 88, i8 4 }, %struct.adv748x_reg_value { i8 3, i8 -123, i8 16 }, %struct.adv748x_reg_value { i8 3, i8 -125, i8 0 }, %struct.adv748x_reg_value { i8 3, i8 -93, i8 1 }, %struct.adv748x_reg_value { i8 3, i8 -66, i8 0 }, %struct.adv748x_reg_value { i8 3, i8 108, i8 1 }, %struct.adv748x_reg_value { i8 3, i8 -8, i8 1 }, %struct.adv748x_reg_value { i8 3, i8 15, i8 0 }, %struct.adv748x_reg_value { i8 0, i8 4, i8 2 }, %struct.adv748x_reg_value { i8 0, i8 18, i8 -16 }, %struct.adv748x_reg_value { i8 0, i8 23, i8 -128 }, %struct.adv748x_reg_value { i8 0, i8 3, i8 -122 }, %struct.adv748x_reg_value { i8 2, i8 124, i8 0 }, %struct.adv748x_reg_value { i8 0, i8 12, i8 -32 }, %struct.adv748x_reg_value { i8 0, i8 14, i8 -35 }, %struct.adv748x_reg_value { i8 13, i8 -1, i8 -1 }], [35 x i8] zeroinitializer }, align 32
@adv748x_init_afe = internal constant { [19 x %struct.adv748x_reg_value], [39 x i8] } { [19 x %struct.adv748x_reg_value] [%struct.adv748x_reg_value { i8 0, i8 0, i8 48 }, %struct.adv748x_reg_value { i8 0, i8 -14, i8 1 }, %struct.adv748x_reg_value { i8 0, i8 14, i8 -1 }, %struct.adv748x_reg_value { i8 9, i8 15, i8 0 }, %struct.adv748x_reg_value { i8 9, i8 82, i8 -51 }, %struct.adv748x_reg_value { i8 9, i8 14, i8 -128 }, %struct.adv748x_reg_value { i8 9, i8 -100, i8 0 }, %struct.adv748x_reg_value { i8 9, i8 -100, i8 -1 }, %struct.adv748x_reg_value { i8 9, i8 14, i8 0 }, %struct.adv748x_reg_value { i8 9, i8 -128, i8 81 }, %struct.adv748x_reg_value { i8 9, i8 -127, i8 81 }, %struct.adv748x_reg_value { i8 9, i8 -126, i8 104 }, %struct.adv748x_reg_value { i8 9, i8 3, i8 66 }, %struct.adv748x_reg_value { i8 9, i8 4, i8 -75 }, %struct.adv748x_reg_value { i8 9, i8 19, i8 0 }, %struct.adv748x_reg_value { i8 9, i8 23, i8 65 }, %struct.adv748x_reg_value { i8 9, i8 49, i8 18 }, %struct.adv748x_reg_value { i8 9, i8 -26, i8 79 }, %struct.adv748x_reg_value { i8 13, i8 -1, i8 -1 }], [39 x i8] zeroinitializer }, align 32
@adv748x_reset.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.74, ptr @.str, ptr @.str.75, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv748x_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AFE Default input set to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@adv748x_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error regs page: 0x%02x reg: 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv748x_write_regs\00", [45 x i8] zeroinitializer }, align 32
@adv748x_write_regs._entry_ptr = internal global ptr @adv748x_write_regs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 322, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 598, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"adv748x_tx_media_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 387, i32 45 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"adv748x_media_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 392, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"adv748x_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 846, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 110, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 848, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"adv748x_of_table\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 835, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"adv748x_pm_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 842, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 720, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 741, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 748, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 754, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 761, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 768, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 775, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 782, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 789, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 796, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 662, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 666, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 673, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 627, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 634, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 639, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 646, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"adv748x_regmap_cnf\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 44, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 67, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 72, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 45, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 46, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 47, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 48, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 49, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 50, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 51, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 52, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 53, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 54, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 55, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 56, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 558, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 562, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [26 x i8] c"adv748x_default_addresses\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 85, i32 42 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 192, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 86, i32 24 }
@___asan_gen_.312 = private unnamed_addr constant [18 x i8] c"adv748x_init_hdmi\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 401, i32 39 }
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"adv748x_init_afe\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 446, i32 39 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 521, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.331 = private constant [44 x i8] c"../drivers/media/i2c/adv748x/adv748x-core.c\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 224, i32 4 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_adv748x_driver_exit, ptr @__initcall__kmod_adv748x__297_856_adv748x_driver_init6, ptr @adv748x_configure_regmap._entry, ptr @adv748x_configure_regmap._entry_ptr, ptr @adv748x_driver_exit, ptr @adv748x_identify_chip._entry, ptr @adv748x_identify_chip._entry.68, ptr @adv748x_identify_chip._entry_ptr, ptr @adv748x_identify_chip._entry_ptr.70, ptr @adv748x_initialise_clients._entry, ptr @adv748x_initialise_clients._entry_ptr, ptr @adv748x_parse_csi2_lanes._entry, ptr @adv748x_parse_csi2_lanes._entry.47, ptr @adv748x_parse_csi2_lanes._entry_ptr, ptr @adv748x_parse_csi2_lanes._entry_ptr.49, ptr @adv748x_parse_dt._entry, ptr @adv748x_parse_dt._entry.38, ptr @adv748x_parse_dt._entry.41, ptr @adv748x_parse_dt._entry_ptr, ptr @adv748x_parse_dt._entry_ptr.40, ptr @adv748x_parse_dt._entry_ptr.43, ptr @adv748x_probe._entry, ptr @adv748x_probe._entry.11, ptr @adv748x_probe._entry.14, ptr @adv748x_probe._entry.17, ptr @adv748x_probe._entry.20, ptr @adv748x_probe._entry.23, ptr @adv748x_probe._entry.26, ptr @adv748x_probe._entry.29, ptr @adv748x_probe._entry.32, ptr @adv748x_probe._entry_ptr, ptr @adv748x_probe._entry_ptr.13, ptr @adv748x_probe._entry_ptr.16, ptr @adv748x_probe._entry_ptr.19, ptr @adv748x_probe._entry_ptr.22, ptr @adv748x_probe._entry_ptr.25, ptr @adv748x_probe._entry_ptr.28, ptr @adv748x_probe._entry_ptr.31, ptr @adv748x_probe._entry_ptr.34, ptr @adv748x_read_check._entry, ptr @adv748x_read_check._entry_ptr, ptr @adv748x_write_regs._entry, ptr @adv748x_write_regs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adv748x_tx_media_ops, ptr @adv748x_media_ops, ptr @adv748x_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @adv748x_of_table, ptr @adv748x_pm_ops, ptr @adv748x_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @adv748x_configure_regmap._key, ptr @adv748x_regmap_cnf, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @adv748x_default_addresses, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @adv748x_init_hdmi, ptr @adv748x_init_afe, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_tx_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_read_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_parse_dt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_parse_dt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_parse_csi2_lanes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_parse_csi2_lanes._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_configure_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_regmap_cnf to i32), i32 2064, i32 2592, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_configure_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_identify_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_identify_chip._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_default_addresses to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_initialise_clients._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_init_hdmi to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_init_afe to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv748x_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_read(ptr nocapture noundef readonly %state, i8 noundef zeroext %page, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %page to i32
  %arrayidx.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 %conv
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !178
  %arrayidx1.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 5, i32 %conv
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i, align 4
  %conv.i = zext i8 %reg to i32
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %conv2.i, i32 noundef %conv.i) #10
  br label %adv748x_read_check.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  br label %adv748x_read_check.exit

adv748x_read_check.exit:                          ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %10, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_write(ptr nocapture noundef readonly %state, i8 noundef zeroext %page, i8 noundef zeroext %reg, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %page to i32
  %arrayidx = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 5, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %conv = zext i8 %reg to i32
  %conv1 = zext i8 %value to i32
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_write_block(ptr nocapture noundef readonly %state, i32 noundef %client_page, i32 noundef %init_reg, ptr noundef %val, i32 noundef %val_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 5, i32 %client_page
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %val_len, i32 32)
  %call = tail call i32 @regmap_raw_write(ptr noundef %1, i32 noundef %init_reg, ptr noundef %val, i32 noundef %2) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adv748x_tx_power(ptr noundef readonly %tx, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %port = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %arrayidx = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %page = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 2
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page, align 4
  %conv.i = and i32 %7, 255
  %arrayidx.i.i = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 4, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i.i, align 4, !annotation !178
  %arrayidx1.i.i = getelementptr %struct.adv748x_state, ptr %1, i32 0, i32 5, i32 %conv.i
  %11 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 30, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i.i, align 2
  %conv2.i.i = zext i16 %16 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i, i32 noundef 30) #10
  br label %adv748x_read.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.i, align 4
  br label %adv748x_read.exit

adv748x_read.exit:                                ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %18, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp2 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp2, label %adv748x_read.exit.cleanup_crit_edge, label %if.end5

adv748x_read.exit.cleanup_crit_edge:              ; preds = %adv748x_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %adv748x_read.exit
  %and = and i32 %retval.0.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7 = icmp ne i32 %and, 0
  %19 = select i1 %on, i1 %tobool7, i1 false
  br i1 %19, label %land.rhs12, label %if.end5.if.end41_crit_edge

if.end5.if.end41_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.rhs12:                                       ; preds = %if.end5
  %.b63 = load i1, ptr @adv748x_tx_power.__already_done, align 1
  br i1 %.b63, label %land.rhs12.if.end41_crit_edge, label %if.then19, !prof !179

land.rhs12.if.end41_crit_edge:                    ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then19:                                        ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @adv748x_tx_power.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then19, %land.rhs12.if.end41_crit_edge, %if.end5.if.end41_crit_edge
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx, align 4
  %txa.i = getelementptr inbounds %struct.adv748x_state, ptr %21, i32 0, i32 8
  %cmp.i = icmp eq ptr %txa.i, %tx
  br i1 %on, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end41
  %active_lanes.i = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 5
  %22 = ptrtoint ptr %active_lanes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_lanes.i, align 4
  %idxprom.i.i.i = select i1 %cmp.i, i32 11, i32 10
  %arrayidx.i.i.i = getelementptr %struct.adv748x_state, ptr %21, i32 0, i32 5, i32 %idxprom.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i.i, align 4
  %conv3.i = and i32 %23, 127
  %conv1.i.i.i = or i32 %conv3.i, 128
  %call.i.i.i = call i32 @regmap_write(ptr noundef %25, i32 noundef 0, i32 noundef %conv1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i61.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i61.i, label %if.end.i66.i, label %cond.true.adv748x_write_check.exit67.i_crit_edge

cond.true.adv748x_write_check.exit67.i_crit_edge: ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit67.i

if.end.i66.i:                                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %active_lanes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active_lanes.i, align 4
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %conv6.i = and i32 %27, 95
  %conv1.i.i64.i = or i32 %conv6.i, 160
  %call.i.i65.i = call i32 @regmap_write(ptr noundef %29, i32 noundef 0, i32 noundef %conv1.i.i64.i) #7
  br label %adv748x_write_check.exit67.i

adv748x_write_check.exit67.i:                     ; preds = %if.end.i66.i, %cond.true.adv748x_write_check.exit67.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i65.i, %if.end.i66.i ], [ %call.i.i.i, %cond.true.adv748x_write_check.exit67.i_crit_edge ]
  %src.i = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 9
  %30 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %src.i, align 4
  %sd.i = getelementptr inbounds %struct.adv748x_state, ptr %21, i32 0, i32 6, i32 2
  %cmp8.i = icmp eq ptr %31, %sd.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool.not.i68.i = icmp eq i32 %ret.1.i, 0
  br i1 %cmp8.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %adv748x_write_check.exit67.i
  br i1 %tobool.not.i68.i, label %adv748x_write_check.exit73.i, label %if.then.i.adv748x_write_check.exit127.thread.i_crit_edge

if.then.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

adv748x_write_check.exit73.i:                     ; preds = %if.then.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i71.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 219, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71.i)
  %tobool.not.i74.i = icmp eq i32 %call.i.i71.i, 0
  br i1 %tobool.not.i74.i, label %if.end.i78.i, label %adv748x_write_check.exit73.i.adv748x_write_check.exit127.thread.i_crit_edge

adv748x_write_check.exit73.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %adv748x_write_check.exit73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

if.end.i78.i:                                     ; preds = %adv748x_write_check.exit73.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i77.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 214, i32 noundef 7) #7
  br label %if.end.i

if.else.i:                                        ; preds = %adv748x_write_check.exit67.i
  br i1 %tobool.not.i68.i, label %if.end.i84.i, label %if.else.i.adv748x_write_check.exit127.thread.i_crit_edge

if.else.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

if.end.i84.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i83.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 210, i32 noundef 64) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i84.i, %if.end.i78.i
  %ret.5.i = phi i32 [ %call.i.i77.i, %if.end.i78.i ], [ %call.i.i83.i, %if.end.i84.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5.i)
  %tobool.not.i86.i = icmp eq i32 %ret.5.i, 0
  br i1 %tobool.not.i86.i, label %adv748x_write_check.exit91.i, label %if.end.i.adv748x_write_check.exit127.thread.i_crit_edge

if.end.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

adv748x_write_check.exit91.i:                     ; preds = %if.end.i
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i89.i = call i32 @regmap_write(ptr noundef %39, i32 noundef 196, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89.i)
  %tobool.not.i92.i = icmp eq i32 %call.i.i89.i, 0
  br i1 %tobool.not.i92.i, label %adv748x_write_check.exit97.i, label %adv748x_write_check.exit91.i.adv748x_write_check.exit127.thread.i_crit_edge

adv748x_write_check.exit91.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %adv748x_write_check.exit91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

adv748x_write_check.exit97.i:                     ; preds = %adv748x_write_check.exit91.i
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i95.i = call i32 @regmap_write(ptr noundef %41, i32 noundef 113, i32 noundef 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95.i)
  %tobool.not.i98.i = icmp eq i32 %call.i.i95.i, 0
  br i1 %tobool.not.i98.i, label %adv748x_write_check.exit103.i, label %adv748x_write_check.exit97.i.adv748x_write_check.exit127.thread.i_crit_edge

adv748x_write_check.exit97.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %adv748x_write_check.exit97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

adv748x_write_check.exit103.i:                    ; preds = %adv748x_write_check.exit97.i
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i101.i = call i32 @regmap_write(ptr noundef %43, i32 noundef 114, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i)
  %tobool.not.i104.i = icmp eq i32 %call.i.i101.i, 0
  br i1 %tobool.not.i104.i, label %adv748x_write_check.exit109.i, label %adv748x_write_check.exit103.i.adv748x_write_check.exit127.thread.i_crit_edge

adv748x_write_check.exit103.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %adv748x_write_check.exit103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

adv748x_write_check.exit109.i:                    ; preds = %adv748x_write_check.exit103.i
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i107.i = call i32 @regmap_write(ptr noundef %45, i32 noundef 240, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107.i)
  %tobool.not.i110.i = icmp eq i32 %call.i.i107.i, 0
  br i1 %tobool.not.i110.i, label %adv748x_write_check.exit115.i, label %adv748x_write_check.exit109.i.adv748x_write_check.exit127.thread.i_crit_edge

adv748x_write_check.exit109.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %adv748x_write_check.exit109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

adv748x_write_check.exit115.i:                    ; preds = %adv748x_write_check.exit109.i
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i113.i = call i32 @regmap_write(ptr noundef %47, i32 noundef 49, i32 noundef 130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113.i)
  %tobool.not.i116.i = icmp eq i32 %call.i.i113.i, 0
  br i1 %tobool.not.i116.i, label %adv748x_write_check.exit121.i, label %adv748x_write_check.exit115.i.adv748x_write_check.exit127.thread.i_crit_edge

adv748x_write_check.exit115.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %adv748x_write_check.exit115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

adv748x_write_check.exit121.i:                    ; preds = %adv748x_write_check.exit115.i
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i119.i = call i32 @regmap_write(ptr noundef %49, i32 noundef 30, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119.i)
  %tobool.not.i122.i = icmp eq i32 %call.i.i119.i, 0
  br i1 %tobool.not.i122.i, label %adv748x_write_check.exit127.i, label %adv748x_write_check.exit121.i.adv748x_write_check.exit127.thread.i_crit_edge

adv748x_write_check.exit121.i.adv748x_write_check.exit127.thread.i_crit_edge: ; preds = %adv748x_write_check.exit121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit127.thread.i

adv748x_write_check.exit127.thread.i:             ; preds = %adv748x_write_check.exit121.i.adv748x_write_check.exit127.thread.i_crit_edge, %adv748x_write_check.exit115.i.adv748x_write_check.exit127.thread.i_crit_edge, %adv748x_write_check.exit109.i.adv748x_write_check.exit127.thread.i_crit_edge, %adv748x_write_check.exit103.i.adv748x_write_check.exit127.thread.i_crit_edge, %adv748x_write_check.exit97.i.adv748x_write_check.exit127.thread.i_crit_edge, %adv748x_write_check.exit91.i.adv748x_write_check.exit127.thread.i_crit_edge, %if.end.i.adv748x_write_check.exit127.thread.i_crit_edge, %if.else.i.adv748x_write_check.exit127.thread.i_crit_edge, %adv748x_write_check.exit73.i.adv748x_write_check.exit127.thread.i_crit_edge, %if.then.i.adv748x_write_check.exit127.thread.i_crit_edge
  %ret.12.ph.i = phi i32 [ %ret.1.i, %if.then.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %call.i.i71.i, %adv748x_write_check.exit73.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %ret.1.i, %if.else.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %ret.5.i, %if.end.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %call.i.i89.i, %adv748x_write_check.exit91.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %call.i.i95.i, %adv748x_write_check.exit97.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %call.i.i101.i, %adv748x_write_check.exit103.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %call.i.i107.i, %adv748x_write_check.exit109.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %call.i.i113.i, %adv748x_write_check.exit115.i.adv748x_write_check.exit127.thread.i_crit_edge ], [ %call.i.i119.i, %adv748x_write_check.exit121.i.adv748x_write_check.exit127.thread.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #7
  br label %adv748x_write_check.exit134.thread.i

adv748x_write_check.exit127.i:                    ; preds = %adv748x_write_check.exit121.i
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i125.i = call i32 @regmap_write(ptr noundef %51, i32 noundef 218, i32 noundef 1) #7
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125.i)
  %tobool.not.i128.i = icmp eq i32 %call.i.i125.i, 0
  br i1 %tobool.not.i128.i, label %adv748x_write_check.exit134.i, label %adv748x_write_check.exit127.i.adv748x_write_check.exit134.thread.i_crit_edge

adv748x_write_check.exit127.i.adv748x_write_check.exit134.thread.i_crit_edge: ; preds = %adv748x_write_check.exit127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit134.thread.i

adv748x_write_check.exit134.thread.i:             ; preds = %adv748x_write_check.exit127.i.adv748x_write_check.exit134.thread.i_crit_edge, %adv748x_write_check.exit127.thread.i
  %ret.12184.i = phi i32 [ %ret.12.ph.i, %adv748x_write_check.exit127.thread.i ], [ %call.i.i125.i, %adv748x_write_check.exit127.i.adv748x_write_check.exit134.thread.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  br label %adv748x_write_check.exit140.thread.i

adv748x_write_check.exit134.i:                    ; preds = %adv748x_write_check.exit127.i
  %52 = ptrtoint ptr %active_lanes.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %active_lanes.i, align 4
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i, align 4
  %conv22.i = and i32 %53, 223
  %conv1.i.i131.i = or i32 %conv22.i, 32
  %call.i.i132.i = call i32 @regmap_write(ptr noundef %55, i32 noundef 0, i32 noundef %conv1.i.i131.i) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132.i)
  %tobool.not.i135.i = icmp eq i32 %call.i.i132.i, 0
  br i1 %tobool.not.i135.i, label %adv748x_write_check.exit140.i, label %adv748x_write_check.exit134.i.adv748x_write_check.exit140.thread.i_crit_edge

adv748x_write_check.exit134.i.adv748x_write_check.exit140.thread.i_crit_edge: ; preds = %adv748x_write_check.exit134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_write_check.exit140.thread.i

adv748x_write_check.exit140.thread.i:             ; preds = %adv748x_write_check.exit134.i.adv748x_write_check.exit140.thread.i_crit_edge, %adv748x_write_check.exit134.thread.i
  %ret.14.ph.i = phi i32 [ %ret.12184.i, %adv748x_write_check.exit134.thread.i ], [ %call.i.i132.i, %adv748x_write_check.exit134.i.adv748x_write_check.exit140.thread.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  br label %cleanup

adv748x_write_check.exit140.i:                    ; preds = %adv748x_write_check.exit134.i
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i138.i = call i32 @regmap_write(ptr noundef %57, i32 noundef 193, i32 noundef 43) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i138.i)
  %tobool.not.i141.i = icmp eq i32 %call.i.i138.i, 0
  br i1 %tobool.not.i141.i, label %if.end.i145.i, label %adv748x_write_check.exit140.i.cleanup_crit_edge

adv748x_write_check.exit140.i.cleanup_crit_edge:  ; preds = %adv748x_write_check.exit140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i145.i:                                    ; preds = %adv748x_write_check.exit140.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i144.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 49, i32 noundef 128) #7
  br label %cleanup

cond.false:                                       ; preds = %if.end41
  %idxprom.i.i.i66 = select i1 %cmp.i, i32 11, i32 10
  %arrayidx.i.i.i67 = getelementptr %struct.adv748x_state, ptr %21, i32 0, i32 5, i32 %idxprom.i.i.i66
  %60 = ptrtoint ptr %arrayidx.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i67, align 4
  %call.i.i.i68 = call i32 @regmap_write(ptr noundef %61, i32 noundef 49, i32 noundef 130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i68)
  %tobool.not.i19.i = icmp eq i32 %call.i.i.i68, 0
  br i1 %tobool.not.i19.i, label %adv748x_write_check.exit24.i, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

adv748x_write_check.exit24.i:                     ; preds = %cond.false
  %62 = ptrtoint ptr %arrayidx.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i.i67, align 4
  %call.i.i22.i = call i32 @regmap_write(ptr noundef %63, i32 noundef 30, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i)
  %tobool.not.i25.i = icmp eq i32 %call.i.i22.i, 0
  br i1 %tobool.not.i25.i, label %adv748x_write_check.exit30.i, label %adv748x_write_check.exit24.i.cleanup_crit_edge

adv748x_write_check.exit24.i.cleanup_crit_edge:   ; preds = %adv748x_write_check.exit24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

adv748x_write_check.exit30.i:                     ; preds = %adv748x_write_check.exit24.i
  %active_lanes.i69 = getelementptr inbounds %struct.adv748x_csi2, ptr %tx, i32 0, i32 5
  %64 = ptrtoint ptr %active_lanes.i69 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %active_lanes.i69, align 4
  %66 = ptrtoint ptr %arrayidx.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i67, align 4
  %conv4.i = and i32 %65, 127
  %conv1.i.i.i70 = or i32 %conv4.i, 128
  %call.i.i28.i = call i32 @regmap_write(ptr noundef %67, i32 noundef 0, i32 noundef %conv1.i.i.i70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28.i)
  %tobool.not.i31.i = icmp eq i32 %call.i.i28.i, 0
  br i1 %tobool.not.i31.i, label %adv748x_write_check.exit36.i, label %adv748x_write_check.exit30.i.cleanup_crit_edge

adv748x_write_check.exit30.i.cleanup_crit_edge:   ; preds = %adv748x_write_check.exit30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

adv748x_write_check.exit36.i:                     ; preds = %adv748x_write_check.exit30.i
  %68 = ptrtoint ptr %arrayidx.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i.i67, align 4
  %call.i.i34.i = call i32 @regmap_write(ptr noundef %69, i32 noundef 218, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i)
  %tobool.not.i37.i = icmp eq i32 %call.i.i34.i, 0
  br i1 %tobool.not.i37.i, label %if.end.i41.i, label %adv748x_write_check.exit36.i.cleanup_crit_edge

adv748x_write_check.exit36.i.cleanup_crit_edge:   ; preds = %adv748x_write_check.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i41.i:                                     ; preds = %adv748x_write_check.exit36.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %arrayidx.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i.i67, align 4
  %call.i.i40.i = call i32 @regmap_write(ptr noundef %71, i32 noundef 193, i32 noundef 59) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i41.i, %adv748x_write_check.exit36.i.cleanup_crit_edge, %adv748x_write_check.exit30.i.cleanup_crit_edge, %adv748x_write_check.exit24.i.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %if.end.i145.i, %adv748x_write_check.exit140.i.cleanup_crit_edge, %adv748x_write_check.exit140.thread.i, %adv748x_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.i, %adv748x_read.exit.cleanup_crit_edge ], [ %call.i.i144.i, %if.end.i145.i ], [ %call.i.i138.i, %adv748x_write_check.exit140.i.cleanup_crit_edge ], [ %ret.14.ph.i, %adv748x_write_check.exit140.thread.i ], [ %call.i.i40.i, %if.end.i41.i ], [ %call.i.i34.i, %adv748x_write_check.exit36.i.cleanup_crit_edge ], [ %call.i.i28.i, %adv748x_write_check.exit30.i.cleanup_crit_edge ], [ %call.i.i22.i, %adv748x_write_check.exit24.i.cleanup_crit_edge ], [ %call.i.i.i68, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adv748x_subdev_init(ptr noundef %sd, ptr noundef %state, ptr noundef %ops, i32 noundef %function, ptr noundef %ident) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @v4l2_subdev_init(ptr noundef %sd, ptr noundef %ops) #7
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %flags, align 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 8
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %owner1 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 2
  %8 = ptrtoint ptr %owner1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %owner1, align 4
  %9 = load ptr, ptr %state, align 8
  %dev3 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dev3, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %state, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %12 = load ptr, ptr %state, align 8
  %driver5 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %driver5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver5, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %client = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 1
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr, align 2
  %conv = zext i16 %24 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %16, i32 noundef %22, i32 noundef %conv, ptr noundef %ident)
  %function9 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 3
  %25 = ptrtoint ptr %function9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %function, ptr %function9, align 4
  %add.ptr = getelementptr i8, ptr %sd, i32 -324
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %txa = getelementptr inbounds %struct.adv748x_state, ptr %27, i32 0, i32 8
  %cmp = icmp eq ptr %add.ptr, %txa
  %txb = getelementptr inbounds %struct.adv748x_state, ptr %27, i32 0, i32 9
  %cmp22 = icmp eq ptr %add.ptr, %txb
  %28 = select i1 %cmp, i1 true, i1 %cmp22
  %29 = select i1 %28, ptr @adv748x_tx_media_ops, ptr @adv748x_media_ops
  %ops25 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 11
  %30 = ptrtoint ptr %ops25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %ops25, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv748x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv748x_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @adv748x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_link_setup(ptr noundef %entity, ptr nocapture noundef readnone %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %entity1 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %0 = ptrtoint ptr %entity1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity1, align 4
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %add.ptr15 = getelementptr i8, ptr %entity, i32 -324
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %src = getelementptr i8, ptr %entity, i32 -4
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 4
  %tobool18.not = icmp eq ptr %5, null
  br i1 %tobool18.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %spec.select120 = phi ptr [ %1, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  %spec.select118 = phi ptr [ %add.ptr15, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  %sd19 = getelementptr inbounds %struct.adv748x_state, ptr %3, i32 0, i32 7, i32 2
  %cmp = icmp eq ptr %1, %sd19
  %tx33 = getelementptr inbounds %struct.adv748x_state, ptr %3, i32 0, i32 6, i32 6
  %tx27 = getelementptr inbounds %struct.adv748x_state, ptr %3, i32 0, i32 7, i32 4
  %tx33.sink = select i1 %cmp, ptr %tx27, ptr %tx33
  %6 = ptrtoint ptr %tx33.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.select118, ptr %tx33.sink, align 4
  %src40 = getelementptr i8, ptr %entity, i32 -4
  %7 = ptrtoint ptr %src40 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select120, ptr %src40, align 4
  %tx42 = getelementptr inbounds %struct.adv748x_state, ptr %3, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %tx42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx42, align 4
  %tobool43.not = icmp eq ptr %9, null
  br i1 %tobool43.not, label %if.end.if.end65_crit_edge, label %if.then44

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then44:                                        ; preds = %if.end
  %10 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr15, align 4
  %txa = getelementptr inbounds %struct.adv748x_state, ptr %11, i32 0, i32 8
  %cmp47 = icmp eq ptr %add.ptr15, %txa
  br i1 %cmp47, label %if.then49, label %if.then44.if.end65_crit_edge

if.then44.if.end65_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %num_lanes = getelementptr i8, ptr %entity, i32 -264
  %12 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_lanes, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 2)
  %active_lanes = getelementptr i8, ptr %entity, i32 -260
  %15 = ptrtoint ptr %active_lanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %active_lanes, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then49, %if.then44.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %io10.0 = phi i8 [ -120, %if.then49 ], [ 0, %if.end.if.end65_crit_edge ], [ -64, %if.then44.if.end65_crit_edge ]
  %tx67 = getelementptr inbounds %struct.adv748x_state, ptr %3, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %tx67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx67, align 4
  %tobool68.not = icmp eq ptr %17, null
  br i1 %tobool68.not, label %if.end65.if.end75_crit_edge, label %if.then69

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %num_lanes70 = getelementptr i8, ptr %entity, i32 -264
  %18 = ptrtoint ptr %num_lanes70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_lanes70, align 4
  %active_lanes71 = getelementptr i8, ptr %entity, i32 -260
  %20 = ptrtoint ptr %active_lanes71 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %active_lanes71, align 4
  %21 = or i8 %io10.0, -128
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end65.if.end75_crit_edge
  %io10.1 = phi i8 [ %21, %if.then69 ], [ %io10.0, %if.end65.if.end75_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.adv748x_state, ptr %3, i32 0, i32 4, i32 0
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %24 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i.i, align 4, !annotation !178
  %arrayidx1.i.i = getelementptr %struct.adv748x_state, ptr %3, i32 0, i32 5, i32 0
  %25 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx1.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 16, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %29 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr.i.i, align 2
  %conv2.i.i = zext i16 %30 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i, i32 noundef 16) #10
  br label %adv748x_read.exit

if.end.i.i:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i.i, align 4
  br label %adv748x_read.exit

adv748x_read.exit:                                ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %32, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %33 = trunc i32 %retval.0.i.i to i8
  %34 = and i8 %33, 55
  %conv81 = or i8 %34, %io10.1
  %35 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx1.i.i, align 4
  %conv1.i = zext i8 %conv81 to i32
  %call.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 16, i32 noundef %conv1.i) #7
  br label %cleanup

cleanup:                                          ; preds = %adv748x_read.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %adv748x_read.exit ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %afe = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 7
  tail call void @adv748x_afe_cleanup(ptr noundef %afe) #7
  %hdmi = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 6
  tail call void @adv748x_hdmi_cleanup(ptr noundef %hdmi) #7
  %txa = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 8
  tail call void @adv748x_csi2_cleanup(ptr noundef %txa) #7
  %txb = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 9
  tail call void @adv748x_csi2_cleanup(ptr noundef %txb) #7
  tail call fastcc void @adv748x_unregister_clients(ptr noundef %1)
  tail call fastcc void @adv748x_dt_cleanup(ptr noundef %1)
  %mutex = getelementptr inbounds %struct.adv748x_state, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_probe(ptr noundef %client) #0 align 64 {
entry:
  %val.i.i14.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %ep.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3184, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @adv748x_probe.__key) #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 8
  %client7 = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client7, align 4
  %i2c_clients = getelementptr %struct.adv748x_state, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %i2c_clients to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %i2c_clients, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %txb = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %txb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %txb, align 8
  %txa = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %txa to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %txa, align 8
  %page = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %page, align 4
  %page12 = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %page12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %page12, align 4
  %port = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %port, align 8
  %port15 = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %port15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 11, ptr %port15, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ep.i) #7
  %16 = ptrtoint ptr %ep.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %ep.i, align 4, !annotation !178
  %17 = getelementptr inbounds %struct.of_endpoint, ptr %ep.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !178
  %19 = getelementptr inbounds %struct.of_endpoint, ptr %ep.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %19, align 4, !annotation !178
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %21 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node.i, align 8
  %call.i147 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %22, ptr noundef null) #7
  %cmp.not63.i = icmp eq ptr %call.i147, null
  br i1 %cmp.not63.i, label %do.body.do.end21_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %in_found.0.off066.i = phi i1 [ %in_found.2.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %do.body.for.body.i_crit_edge ]
  %out_found.0.off065.i = phi i1 [ %out_found.2.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %do.body.for.body.i_crit_edge ]
  %ep_np.064.i = phi ptr [ %call33.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i147, %do.body.for.body.i_crit_edge ]
  %call1.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %ep_np.064.i, ptr noundef nonnull %ep.i) #7
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 8
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %27 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ep.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.35, ptr noundef %26, i32 noundef %28) #10
  %29 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ep.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %30)
  %cmp4.i = icmp ugt i32 %30, 11
  br i1 %cmp4.i, label %do.end7.i, label %if.end.i

do.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.39, ptr noundef %34, i32 noundef %30) #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.adv748x_state, ptr %call.i, i32 0, i32 3, i32 %30
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end17.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.42) #10
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end.i
  %call18.i = call ptr @of_node_get(ptr noundef nonnull %ep_np.064.i) #7
  %39 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ep.i, align 4
  %arrayidx21.i = getelementptr %struct.adv748x_state, ptr %call.i, i32 0, i32 3, i32 %40
  %41 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ep_np.064.i, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %40)
  %cmp23.i = icmp ult i32 %40, 10
  %not.cmp23.i = xor i1 %cmp23.i, true
  %out_found.0.off0..i = select i1 %not.cmp23.i, i1 true, i1 %out_found.0.off065.i
  %.in_found.0.off0.i = select i1 %cmp23.i, i1 true, i1 %in_found.0.off066.i
  %call27.i = call fastcc i32 @adv748x_parse_csi2_lanes(ptr noundef %call.i, i32 noundef %40, ptr noundef nonnull %ep_np.064.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end17.i.for.inc.i_crit_edge, label %if.end17.i.do.end21_crit_edge

if.end17.i.do.end21_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i.for.inc.i_crit_edge, %do.end15.i, %do.end7.i
  %out_found.2.off0.i = phi i1 [ %out_found.0.off065.i, %do.end7.i ], [ %out_found.0.off065.i, %do.end15.i ], [ %out_found.0.off0..i, %if.end17.i.for.inc.i_crit_edge ]
  %in_found.2.off0.i = phi i1 [ %in_found.0.off066.i, %do.end7.i ], [ %in_found.0.off066.i, %do.end15.i ], [ %.in_found.0.off0.i, %if.end17.i.for.inc.i_crit_edge ]
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 8
  %of_node32.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %of_node32.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node32.i, align 8
  %call33.i = call ptr @of_graph_get_next_endpoint(ptr noundef %45, ptr noundef nonnull %ep_np.064.i) #7
  %cmp.not.i = icmp eq ptr %call33.i, null
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %spec.select.i = select i1 %in_found.2.off0.i, i1 %out_found.2.off0.i, i1 false
  br i1 %spec.select.i, label %if.end23, label %for.end.i.do.end21_crit_edge

for.end.i.do.end21_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end21:                                         ; preds = %for.end.i.do.end21_crit_edge, %if.end17.i.do.end21_crit_edge, %do.body.do.end21_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %for.end.i.do.end21_crit_edge ], [ -19, %do.body.do.end21_crit_edge ], [ %call27.i, %if.end17.i.do.end21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep.i) #7
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.9) #10
  br label %err_free_mutex

if.end23:                                         ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep.i) #7
  %48 = ptrtoint ptr %i2c_clients to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c_clients, align 4
  %tobool.not.i149 = icmp eq ptr %49, null
  br i1 %tobool.not.i149, label %if.end23.do.end29_crit_edge, label %if.end.i151

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

if.end.i151:                                      ; preds = %if.end23
  %call.i150 = call ptr @__devm_regmap_init_i2c(ptr noundef nonnull %49, ptr noundef nonnull @adv748x_regmap_cnf, ptr noundef nonnull @adv748x_configure_regmap._key, ptr noundef nonnull @.str.51) #7
  %arrayidx4.i = getelementptr %struct.adv748x_state, ptr %call.i, i32 0, i32 5, i32 0
  %50 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i150, ptr %arrayidx4.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end31

if.then8.i:                                       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call.i150 to i32
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef %51) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then8.i, %if.end23.do.end29_crit_edge
  %retval.0.i152.ph = phi i32 [ -19, %if.end23.do.end29_crit_edge ], [ -22, %if.then8.i ]
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.12) #10
  br label %err_cleanup_dt

if.end31:                                         ; preds = %if.end.i151
  %56 = ptrtoint ptr %i2c_clients to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c_clients, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %58 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !178
  %59 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx4.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %60, i32 noundef 223, ptr noundef nonnull %val.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 1
  %63 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i.i.i = zext i16 %64 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i.i, i32 noundef 223) #10
  br label %adv748x_read.exit.i

if.end.i.i.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val.i.i.i, align 4
  br label %adv748x_read.exit.i

adv748x_read.exit.i:                              ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %66, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %67 = ptrtoint ptr %i2c_clients to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c_clients, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i14.i) #7
  %69 = ptrtoint ptr %val.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %val.i.i14.i, align 4, !annotation !178
  %70 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx4.i, align 4
  %call.i.i17.i = call i32 @regmap_read(ptr noundef %71, i32 noundef 224, ptr noundef nonnull %val.i.i14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %call.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i22.i, label %do.end.i.i21.i

do.end.i.i21.i:                                   ; preds = %adv748x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 8
  %addr.i.i19.i = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 1
  %74 = ptrtoint ptr %addr.i.i19.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr.i.i19.i, align 2
  %conv2.i.i20.i = zext i16 %75 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i20.i, i32 noundef 224) #10
  br label %adv748x_read.exit24.i

if.end.i.i22.i:                                   ; preds = %adv748x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %val.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val.i.i14.i, align 4
  br label %adv748x_read.exit24.i

adv748x_read.exit24.i:                            ; preds = %if.end.i.i22.i, %do.end.i.i21.i
  %retval.0.i.i23.i = phi i32 [ %call.i.i17.i, %do.end.i.i21.i ], [ %77, %if.end.i.i22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i153 = icmp slt i32 %retval.0.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i23.i)
  %cmp2.i = icmp slt i32 %retval.0.i.i23.i, 0
  %or.cond.i = select i1 %cmp.i153, i1 true, i1 %cmp2.i
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 8
  br i1 %or.cond.i, label %do.end37, label %if.end39

do.end37:                                         ; preds = %adv748x_read.exit24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.66) #10
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.15) #10
  br label %err_cleanup_dt

if.end39:                                         ; preds = %adv748x_read.exit24.i
  %82 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client7, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %addr.i, align 2
  %conv.i154 = zext i16 %85 to i32
  %shl.i = shl nuw nsw i32 %conv.i154, 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.69, i32 noundef %shl.i, i32 noundef %retval.0.i.i.i, i32 noundef %retval.0.i.i23.i) #10
  br label %for.body.i161

for.body.i161:                                    ; preds = %for.inc.i165.for.body.i161_crit_edge, %if.end39
  %i.032.i = phi i32 [ 1, %if.end39 ], [ %inc.i, %for.inc.i165.for.body.i161_crit_edge ]
  %86 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client7, align 4
  %arrayidx.i157 = getelementptr [12 x %struct.adv748x_register_map], ptr @adv748x_default_addresses, i32 0, i32 %i.032.i
  %88 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i157, align 4
  %default_addr.i = getelementptr [12 x %struct.adv748x_register_map], ptr @adv748x_default_addresses, i32 0, i32 %i.032.i, i32 1
  %90 = ptrtoint ptr %default_addr.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %default_addr.i, align 4
  %conv.i158 = zext i8 %91 to i16
  %call.i159 = call ptr @i2c_new_ancillary_device(ptr noundef %87, ptr noundef %89, i16 noundef zeroext %conv.i158) #7
  %arrayidx2.i = getelementptr %struct.adv748x_state, ptr %call.i, i32 0, i32 4, i32 %i.032.i
  %92 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i159, ptr %arrayidx2.i, align 4
  %cmp.i.i160 = icmp ugt ptr %call.i159, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i160, label %adv748x_initialise_clients.exit, label %if.end.i163

if.end.i163:                                      ; preds = %for.body.i161
  %tobool.not.i.i = icmp eq ptr %call.i159, null
  br i1 %tobool.not.i.i, label %if.end.i163.do.end45_crit_edge, label %if.end.i.i

if.end.i163.do.end45_crit_edge:                   ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

if.end.i.i:                                       ; preds = %if.end.i163
  %arrayidx3.i.i = getelementptr [12 x %struct.regmap_config], ptr @adv748x_regmap_cnf, i32 0, i32 %i.032.i
  %call.i.i164 = call ptr @__devm_regmap_init_i2c(ptr noundef nonnull %call.i159, ptr noundef %arrayidx3.i.i, ptr noundef nonnull @adv748x_configure_regmap._key, ptr noundef nonnull @.str.51) #7
  %arrayidx4.i.i = getelementptr %struct.adv748x_state, ptr %call.i, i32 0, i32 5, i32 %i.032.i
  %93 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i164, ptr %arrayidx4.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i164, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then8.i.i, label %for.inc.i165

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %call.i.i164 to i32
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.52, i32 noundef %i.032.i, i32 noundef %94) #10
  br label %do.end45

for.inc.i165:                                     ; preds = %if.end.i.i
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.inc.i165.if.end47_crit_edge, label %for.inc.i165.for.body.i161_crit_edge

for.inc.i165.for.body.i161_crit_edge:             ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i161

for.inc.i165.if.end47_crit_edge:                  ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

adv748x_initialise_clients.exit:                  ; preds = %for.body.i161
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.71, i32 noundef %i.032.i) #10
  %99 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx2.i, align 4
  %101 = ptrtoint ptr %100 to i32
  %tobool41.not = icmp eq ptr %100, null
  br i1 %tobool41.not, label %adv748x_initialise_clients.exit.if.end47_crit_edge, label %adv748x_initialise_clients.exit.do.end45_crit_edge

adv748x_initialise_clients.exit.do.end45_crit_edge: ; preds = %adv748x_initialise_clients.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

adv748x_initialise_clients.exit.if.end47_crit_edge: ; preds = %adv748x_initialise_clients.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end45:                                         ; preds = %adv748x_initialise_clients.exit.do.end45_crit_edge, %if.then8.i.i, %if.end.i163.do.end45_crit_edge
  %retval.0.i166177 = phi i32 [ %101, %adv748x_initialise_clients.exit.do.end45_crit_edge ], [ -22, %if.then8.i.i ], [ -19, %if.end.i163.do.end45_crit_edge ]
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.18) #10
  br label %err_cleanup_clients

if.end47:                                         ; preds = %adv748x_initialise_clients.exit.if.end47_crit_edge, %for.inc.i165.if.end47_crit_edge
  %call48 = call fastcc i32 @adv748x_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.21) #10
  br label %err_cleanup_clients

if.end55:                                         ; preds = %if.end47
  %hdmi = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 6
  %call56 = call i32 @adv748x_hdmi_init(ptr noundef %hdmi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.24) #10
  br label %err_cleanup_clients

if.end63:                                         ; preds = %if.end55
  %afe = getelementptr inbounds %struct.adv748x_state, ptr %call.i, i32 0, i32 7
  %call64 = call i32 @adv748x_afe_init(ptr noundef %afe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.27) #10
  br label %err_cleanup_hdmi

if.end71:                                         ; preds = %if.end63
  %call73 = call i32 @adv748x_csi2_init(ptr noundef nonnull %call.i, ptr noundef %txa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.30) #10
  br label %err_cleanup_afe

if.end80:                                         ; preds = %if.end71
  %call82 = call i32 @adv748x_csi2_init(ptr noundef nonnull %call.i, ptr noundef %txb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end80.cleanup_crit_edge, label %do.end87

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.33) #10
  call void @adv748x_csi2_cleanup(ptr noundef %txa) #7
  br label %err_cleanup_afe

err_cleanup_afe:                                  ; preds = %do.end87, %do.end78
  %ret.0 = phi i32 [ %call73, %do.end78 ], [ %call82, %do.end87 ]
  call void @adv748x_afe_cleanup(ptr noundef %afe) #7
  br label %err_cleanup_hdmi

err_cleanup_hdmi:                                 ; preds = %err_cleanup_afe, %do.end69
  %ret.1 = phi i32 [ %call64, %do.end69 ], [ %ret.0, %err_cleanup_afe ]
  call void @adv748x_hdmi_cleanup(ptr noundef %hdmi) #7
  br label %err_cleanup_clients

err_cleanup_clients:                              ; preds = %err_cleanup_hdmi, %do.end61, %do.end53, %do.end45
  %ret.2 = phi i32 [ %retval.0.i166177, %do.end45 ], [ %call48, %do.end53 ], [ %call56, %do.end61 ], [ %ret.1, %err_cleanup_hdmi ]
  call fastcc void @adv748x_unregister_clients(ptr noundef nonnull %call.i)
  br label %err_cleanup_dt

err_cleanup_dt:                                   ; preds = %err_cleanup_clients, %do.end37, %do.end29
  %ret.3 = phi i32 [ %retval.0.i152.ph, %do.end29 ], [ -5, %do.end37 ], [ %ret.2, %err_cleanup_clients ]
  call fastcc void @adv748x_dt_cleanup(ptr noundef nonnull %call.i)
  br label %err_free_mutex

err_free_mutex:                                   ; preds = %err_cleanup_dt, %do.end21
  %ret.4 = phi i32 [ %retval.0.i.ph, %do.end21 ], [ %ret.3, %err_cleanup_dt ]
  call void @mutex_destroy(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_mutex, %if.end80.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_free_mutex ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv748x_afe_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv748x_hdmi_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adv748x_csi2_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv748x_unregister_clients(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @i2c_unregister_device(ptr noundef %1) #7
  %arrayidx.1 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #7
  %arrayidx.2 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #7
  %arrayidx.3 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @i2c_unregister_device(ptr noundef %7) #7
  %arrayidx.4 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 5
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #7
  %arrayidx.5 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  tail call void @i2c_unregister_device(ptr noundef %11) #7
  %arrayidx.6 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 7
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #7
  %arrayidx.7 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 8
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  tail call void @i2c_unregister_device(ptr noundef %15) #7
  %arrayidx.8 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 9
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  tail call void @i2c_unregister_device(ptr noundef %17) #7
  %arrayidx.9 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 10
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 4
  tail call void @i2c_unregister_device(ptr noundef %19) #7
  %arrayidx.10 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 11
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 4
  tail call void @i2c_unregister_device(ptr noundef %21) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adv748x_dt_cleanup(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @of_node_put(ptr noundef %1) #7
  %arrayidx.1 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @of_node_put(ptr noundef %3) #7
  %arrayidx.2 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @of_node_put(ptr noundef %5) #7
  %arrayidx.3 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @of_node_put(ptr noundef %7) #7
  %arrayidx.4 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  tail call void @of_node_put(ptr noundef %9) #7
  %arrayidx.5 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  tail call void @of_node_put(ptr noundef %11) #7
  %arrayidx.6 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  tail call void @of_node_put(ptr noundef %13) #7
  %arrayidx.7 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  tail call void @of_node_put(ptr noundef %15) #7
  %arrayidx.8 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  tail call void @of_node_put(ptr noundef %17) #7
  %arrayidx.9 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 4
  tail call void @of_node_put(ptr noundef %19) #7
  %arrayidx.10 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 4
  tail call void @of_node_put(ptr noundef %21) #7
  %arrayidx.11 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 3, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11, align 4
  tail call void @of_node_put(ptr noundef %23) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv748x_reset(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 5, i32 0
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 255, i32 noundef 255) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.adv748x_sw_reset.exit_crit_edge

entry.adv748x_sw_reset.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_sw_reset.exit

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %arrayidx.i.i.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %4 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !178
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %val.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 8
  %addr.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i.i.i, align 2
  %conv2.i.i.i = zext i16 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i.i, i32 noundef 1) #10
  br label %adv748x_read.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i.i, align 4
  br label %adv748x_read.exit.i

adv748x_read.exit.i:                              ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %12, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %13 = and i32 %retval.0.i.i.i, 63
  %conv.i = or i32 %13, 64
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i14.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 1, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool3.not.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %adv748x_read.exit.i.adv748x_sw_reset.exit_crit_edge

adv748x_read.exit.i.adv748x_sw_reset.exit_crit_edge: ; preds = %adv748x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adv748x_sw_reset.exit

if.end5.i:                                        ; preds = %adv748x_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i16.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 242, i32 noundef 1) #7
  br label %adv748x_sw_reset.exit

adv748x_sw_reset.exit:                            ; preds = %if.end5.i, %adv748x_read.exit.i.adv748x_sw_reset.exit_crit_edge, %entry.adv748x_sw_reset.exit_crit_edge
  %retval.0.i89 = phi i32 [ %call.i16.i, %if.end5.i ], [ %call.i.i, %entry.adv748x_sw_reset.exit_crit_edge ], [ %call.i14.i, %adv748x_read.exit.i.adv748x_sw_reset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i89)
  %cmp = icmp slt i32 %retval.0.i89, 0
  br i1 %cmp, label %adv748x_sw_reset.exit.cleanup_crit_edge, label %if.end

adv748x_sw_reset.exit.cleanup_crit_edge:          ; preds = %adv748x_sw_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %adv748x_sw_reset.exit
  %arrayidx.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr.i, align 2
  %conv1.i = zext i16 %21 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 1
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.i = and i32 %shl.i, 254
  %call.i.i91 = call i32 @regmap_write(ptr noundef %23, i32 noundef 243, i32 noundef %conv1.i.i) #7
  %arrayidx.1.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1.i, align 4
  %addr.1.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %addr.1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr.1.i, align 2
  %conv1.1.i = zext i16 %27 to i32
  %shl.1.i = shl nuw nsw i32 %conv1.1.i, 1
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.1.i = and i32 %shl.1.i, 254
  %call.i.1.i = call i32 @regmap_write(ptr noundef %29, i32 noundef 244, i32 noundef %conv1.i.1.i) #7
  %arrayidx.2.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.2.i, align 4
  %addr.2.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %addr.2.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr.2.i, align 2
  %conv1.2.i = zext i16 %33 to i32
  %shl.2.i = shl nuw nsw i32 %conv1.2.i, 1
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.2.i = and i32 %shl.2.i, 254
  %call.i.2.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 245, i32 noundef %conv1.i.2.i) #7
  %arrayidx.3.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3.i, align 4
  %addr.3.i = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %addr.3.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr.3.i, align 2
  %conv1.3.i = zext i16 %39 to i32
  %shl.3.i = shl nuw nsw i32 %conv1.3.i, 1
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.3.i = and i32 %shl.3.i, 254
  %call.i.3.i = call i32 @regmap_write(ptr noundef %41, i32 noundef 246, i32 noundef %conv1.i.3.i) #7
  %arrayidx.4.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 5
  %42 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.4.i, align 4
  %addr.4.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %addr.4.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %addr.4.i, align 2
  %conv1.4.i = zext i16 %45 to i32
  %shl.4.i = shl nuw nsw i32 %conv1.4.i, 1
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.4.i = and i32 %shl.4.i, 254
  %call.i.4.i = call i32 @regmap_write(ptr noundef %47, i32 noundef 247, i32 noundef %conv1.i.4.i) #7
  %arrayidx.5.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.5.i, align 4
  %addr.5.i = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %addr.5.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr.5.i, align 2
  %conv1.5.i = zext i16 %51 to i32
  %shl.5.i = shl nuw nsw i32 %conv1.5.i, 1
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.5.i = and i32 %shl.5.i, 254
  %call.i.5.i = call i32 @regmap_write(ptr noundef %53, i32 noundef 248, i32 noundef %conv1.i.5.i) #7
  %arrayidx.6.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 7
  %54 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.6.i, align 4
  %addr.6.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %addr.6.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr.6.i, align 2
  %conv1.6.i = zext i16 %57 to i32
  %shl.6.i = shl nuw nsw i32 %conv1.6.i, 1
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.6.i = and i32 %shl.6.i, 254
  %call.i.6.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 249, i32 noundef %conv1.i.6.i) #7
  %arrayidx.7.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 8
  %60 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.7.i, align 4
  %addr.7.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %addr.7.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %addr.7.i, align 2
  %conv1.7.i = zext i16 %63 to i32
  %shl.7.i = shl nuw nsw i32 %conv1.7.i, 1
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.7.i = and i32 %shl.7.i, 254
  %call.i.7.i = call i32 @regmap_write(ptr noundef %65, i32 noundef 250, i32 noundef %conv1.i.7.i) #7
  %arrayidx.8.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 9
  %66 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.8.i, align 4
  %addr.8.i = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %addr.8.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %addr.8.i, align 2
  %conv1.8.i = zext i16 %69 to i32
  %shl.8.i = shl nuw nsw i32 %conv1.8.i, 1
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.8.i = and i32 %shl.8.i, 254
  %call.i.8.i = call i32 @regmap_write(ptr noundef %71, i32 noundef 251, i32 noundef %conv1.i.8.i) #7
  %arrayidx.9.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 10
  %72 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.9.i, align 4
  %addr.9.i = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %addr.9.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr.9.i, align 2
  %conv1.9.i = zext i16 %75 to i32
  %shl.9.i = shl nuw nsw i32 %conv1.9.i, 1
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.9.i = and i32 %shl.9.i, 254
  %call.i.9.i = call i32 @regmap_write(ptr noundef %77, i32 noundef 252, i32 noundef %conv1.i.9.i) #7
  %arrayidx.10.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 4, i32 11
  %78 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.10.i, align 4
  %addr.10.i = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %addr.10.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %addr.10.i, align 2
  %conv1.10.i = zext i16 %81 to i32
  %shl.10.i = shl nuw nsw i32 %conv1.10.i, 1
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i.10.i = and i32 %shl.10.i, 254
  %call.i.10.i = call i32 @regmap_write(ptr noundef %83, i32 noundef 253, i32 noundef %conv1.i.10.i) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %84 = phi i8 [ %92, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end ]
  %regs.addr.019.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ @adv748x_init_hdmi, %if.end ]
  %reg.i = getelementptr inbounds %struct.adv748x_reg_value, ptr %regs.addr.019.i, i32 0, i32 1
  %85 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %reg.i, align 1
  %value.i = getelementptr inbounds %struct.adv748x_reg_value, ptr %regs.addr.019.i, i32 0, i32 2
  %87 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %value.i, align 1
  %idxprom.i.i = zext i8 %84 to i32
  %arrayidx.i.i92 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 5, i32 %idxprom.i.i
  %89 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i92, align 4
  %conv.i.i = zext i8 %86 to i32
  %conv1.i.i93 = zext i8 %88 to i32
  %call.i.i94 = call i32 @regmap_write(ptr noundef %90, i32 noundef %conv.i.i, i32 noundef %conv1.i.i93) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %cmp3.i = icmp slt i32 %call.i.i94, 0
  br i1 %cmp3.i, label %adv748x_write_regs.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.adv748x_reg_value, ptr %regs.addr.019.i, i32 1
  %91 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.not.i = icmp eq i8 %92, 13
  br i1 %cmp.not.i, label %for.inc.i.for.body.i105_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.body.i105_crit_edge:                ; preds = %for.inc.i
  br label %for.body.i105

adv748x_write_regs.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %reg.i.le = getelementptr inbounds %struct.adv748x_reg_value, ptr %regs.addr.019.i, i32 0, i32 1
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %state, align 8
  %95 = ptrtoint ptr %regs.addr.019.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %regs.addr.019.i, align 1
  %conv6.i = zext i8 %96 to i32
  %97 = ptrtoint ptr %reg.i.le to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %reg.i.le, align 1
  %conv8.i = zext i8 %98 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.76, i32 noundef %conv6.i, i32 noundef %conv8.i) #10
  br label %cleanup

for.body.i105:                                    ; preds = %for.inc.i112.for.body.i105_crit_edge, %for.inc.i.for.body.i105_crit_edge
  %99 = phi i8 [ %107, %for.inc.i112.for.body.i105_crit_edge ], [ 0, %for.inc.i.for.body.i105_crit_edge ]
  %regs.addr.019.i96 = phi ptr [ %incdec.ptr.i110, %for.inc.i112.for.body.i105_crit_edge ], [ @adv748x_init_afe, %for.inc.i.for.body.i105_crit_edge ]
  %reg.i97 = getelementptr inbounds %struct.adv748x_reg_value, ptr %regs.addr.019.i96, i32 0, i32 1
  %100 = ptrtoint ptr %reg.i97 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %reg.i97, align 1
  %value.i98 = getelementptr inbounds %struct.adv748x_reg_value, ptr %regs.addr.019.i96, i32 0, i32 2
  %102 = ptrtoint ptr %value.i98 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %value.i98, align 1
  %idxprom.i.i99 = zext i8 %99 to i32
  %arrayidx.i.i100 = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 5, i32 %idxprom.i.i99
  %104 = ptrtoint ptr %arrayidx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i100, align 4
  %conv.i.i101 = zext i8 %101 to i32
  %conv1.i.i102 = zext i8 %103 to i32
  %call.i.i103 = call i32 @regmap_write(ptr noundef %105, i32 noundef %conv.i.i101, i32 noundef %conv1.i.i102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i103)
  %cmp3.i104 = icmp slt i32 %call.i.i103, 0
  br i1 %cmp3.i104, label %adv748x_write_regs.exit114, label %for.inc.i112

for.inc.i112:                                     ; preds = %for.body.i105
  %incdec.ptr.i110 = getelementptr %struct.adv748x_reg_value, ptr %regs.addr.019.i96, i32 1
  %106 = ptrtoint ptr %incdec.ptr.i110 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %incdec.ptr.i110, align 1
  %cmp.not.i111 = icmp eq i8 %107, 13
  br i1 %cmp.not.i111, label %if.end11, label %for.inc.i112.for.body.i105_crit_edge

for.inc.i112.for.body.i105_crit_edge:             ; preds = %for.inc.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i105

adv748x_write_regs.exit114:                       ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  %reg.i97.le = getelementptr inbounds %struct.adv748x_reg_value, ptr %regs.addr.019.i96, i32 0, i32 1
  %108 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %state, align 8
  %110 = ptrtoint ptr %regs.addr.019.i96 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %regs.addr.019.i96, align 1
  %conv6.i107 = zext i8 %111 to i32
  %112 = ptrtoint ptr %reg.i97.le to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %reg.i97.le, align 1
  %conv8.i108 = zext i8 %113 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.76, i32 noundef %conv6.i107, i32 noundef %conv8.i108) #10
  br label %cleanup

if.end11:                                         ; preds = %for.inc.i112
  %afe = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 7
  %input = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 7, i32 7
  %114 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %input, align 8
  %call13 = call i32 @adv748x_afe_s_input(ptr noundef %afe, i32 noundef %115) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_reset.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_reset, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !180

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %state, align 8
  %118 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %input, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_reset.__UNIQUE_ID_ddebug294, ptr noundef %117, ptr noundef nonnull @.str.75, i32 noundef %119) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end11
  %txa = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 8
  %call22 = call i32 @adv748x_tx_power(ptr noundef %txa, i1 noundef zeroext true)
  %call24 = call i32 @adv748x_tx_power(ptr noundef %txa, i1 noundef zeroext false)
  %txb = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 9
  %call25 = call i32 @adv748x_tx_power(ptr noundef %txb, i1 noundef zeroext true)
  %call27 = call i32 @adv748x_tx_power(ptr noundef %txb, i1 noundef zeroext false)
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %121, i32 noundef 0, i32 noundef 64) #7
  %122 = ptrtoint ptr %txa to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %txa, align 8
  %port = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 8, i32 3
  %124 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port, align 8
  %arrayidx = getelementptr %struct.adv748x_state, ptr %123, i32 0, i32 3, i32 %125
  %126 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx, align 4
  %cmp32.not = icmp eq ptr %127, null
  br i1 %cmp32.not, label %do.end.if.end37_crit_edge, label %if.then33

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call i32 @adv748x_csi2_set_virtual_channel(ptr noundef %txa, i32 noundef 0) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.end.if.end37_crit_edge
  %regval.0 = phi i8 [ -128, %if.then33 ], [ 0, %do.end.if.end37_crit_edge ]
  %128 = ptrtoint ptr %txb to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %txb, align 8
  %port42 = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 9, i32 3
  %130 = ptrtoint ptr %port42 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port42, align 8
  %arrayidx43 = getelementptr %struct.adv748x_state, ptr %129, i32 0, i32 3, i32 %131
  %132 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx43, align 4
  %cmp44.not = icmp eq ptr %133, null
  br i1 %cmp44.not, label %if.end37.if.end52_crit_edge, label %if.then46

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %134 = or i8 %regval.0, 64
  %call51 = call i32 @adv748x_csi2_set_virtual_channel(ptr noundef %txb, i32 noundef 0) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end37.if.end52_crit_edge
  %regval.1 = phi i8 [ %134, %if.then46 ], [ %regval.0, %if.end37.if.end52_crit_edge ]
  %135 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i, align 4
  %conv1.i117 = zext i8 %regval.1 to i32
  %call.i118 = call i32 @regmap_write(ptr noundef %136, i32 noundef 16, i32 noundef %conv1.i117) #7
  %137 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx.1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %139 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %val.i.i, align 4, !annotation !178
  %arrayidx1.i.i = getelementptr %struct.adv748x_state, ptr %state, i32 0, i32 5, i32 2
  %140 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx1.i.i, align 4
  %call.i.i120 = call i32 @regmap_read(ptr noundef %141, i32 noundef 201, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i120)
  %tobool.not.i.i = icmp eq i32 %call.i.i120, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %state, align 8
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %138, i32 0, i32 1
  %144 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %addr.i.i, align 2
  %conv2.i.i = zext i16 %145 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i, i32 noundef 201) #10
  br label %adv748x_read.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %val.i.i, align 4
  br label %adv748x_read.exit

adv748x_read.exit:                                ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i120, %do.end.i.i ], [ %147, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %148 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx1.i.i, align 4
  %conv56 = and i32 %retval.0.i.i, 254
  %conv1.i122 = or i32 %conv56, 1
  %call.i123 = call i32 @regmap_write(ptr noundef %149, i32 noundef 201, i32 noundef %conv1.i122) #7
  br label %cleanup

cleanup:                                          ; preds = %adv748x_read.exit, %adv748x_write_regs.exit114, %adv748x_write_regs.exit, %adv748x_sw_reset.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %adv748x_read.exit ], [ %retval.0.i89, %adv748x_sw_reset.exit.cleanup_crit_edge ], [ %call.i.i94, %adv748x_write_regs.exit ], [ %call.i.i103, %adv748x_write_regs.exit114 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_hdmi_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_afe_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_csi2_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv748x_parse_csi2_lanes(ptr nocapture noundef %state, i32 noundef %port, ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  %vep = alloca %struct.v4l2_fwnode_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vep) #7
  %0 = call ptr @memset(ptr %vep, i32 0, i32 64)
  %1 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %vep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %3 = and i32 %port, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %switch = icmp eq i32 %3, 10
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %ep, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %ep, i32 0, i32 3
  %spec.select = select i1 %tobool.not, ptr null, ptr %fwnode
  %call = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %spec.select, ptr noundef nonnull %vep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %num_data_lanes = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %vep, i32 0, i32 2, i32 2, i32 3
  %4 = ptrtoint ptr %num_data_lanes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_data_lanes, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %vep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp6 = icmp eq i32 %7, 10
  br i1 %cmp6, label %if.then8, label %if.end4.if.end34_crit_edge

if.end4.if.end34_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then8:                                         ; preds = %if.end4
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end [
    i8 1, label %if.then8.if.end18_crit_edge
    i8 2, label %if.then8.if.end18_crit_edge99
    i8 4, label %if.then8.if.end18_crit_edge100
  ]

if.then8.if.end18_crit_edge100:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then8.if.end18_crit_edge99:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.44, i32 noundef %conv) #10
  br label %cleanup

if.end18:                                         ; preds = %if.then8.if.end18_crit_edge, %if.then8.if.end18_crit_edge99, %if.then8.if.end18_crit_edge100
  %num_lanes19 = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 8, i32 4
  %11 = ptrtoint ptr %num_lanes19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %num_lanes19, align 4
  %active_lanes = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 8, i32 5
  %12 = ptrtoint ptr %active_lanes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %active_lanes, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_parse_csi2_lanes.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_parse_csi2_lanes, %if.then27)) #7
          to label %if.end34 [label %if.then27], !srcloc !180

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 8
  %15 = ptrtoint ptr %num_lanes19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_lanes19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_parse_csi2_lanes.__UNIQUE_ID_ddebug295, ptr noundef %14, ptr noundef nonnull @.str.46, i32 noundef %16) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end18, %if.end4.if.end34_crit_edge
  %17 = ptrtoint ptr %vep to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %18)
  %cmp37 = icmp eq i32 %18, 11
  br i1 %cmp37, label %if.then39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp40.not = icmp eq i8 %5, 1
  br i1 %cmp40.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.48, i32 noundef %conv) #10
  br label %cleanup

if.end47:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %num_lanes48 = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 9, i32 4
  %21 = ptrtoint ptr %num_lanes48 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %num_lanes48, align 4
  %active_lanes50 = getelementptr inbounds %struct.adv748x_state, ptr %state, i32 0, i32 9, i32 5
  %22 = ptrtoint ptr %active_lanes50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %active_lanes50, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adv748x_parse_csi2_lanes.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adv748x_parse_csi2_lanes, %if.then63)) #7
          to label %cleanup [label %if.then63], !srcloc !180

if.then63:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 8
  %25 = ptrtoint ptr %num_lanes48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_lanes48, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adv748x_parse_csi2_lanes.__UNIQUE_ID_ddebug296, ptr noundef %24, ptr noundef nonnull @.str.50, i32 noundef %26) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end47, %do.end45, %if.end34.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end45 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end47 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vep) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_ancillary_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_afe_s_input(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adv748x_csi2_set_virtual_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv748x_resume_early(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @adv748x_reset(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !152, !154, !155, !156, !158, !159, !160, !161, !163, !165, !167}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 322, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 598, i32 39}
!6 = !{ptr @__initcall__kmod_adv748x__297_856_adv748x_driver_init6, !7, !"__initcall__kmod_adv748x__297_856_adv748x_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 856, i32 1}
!8 = !{ptr @__exitcall_adv748x_driver_exit, !7, !"__exitcall_adv748x_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author298, !10, !"__UNIQUE_ID_author298", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 858, i32 1}
!11 = !{ptr @__UNIQUE_ID_description299, !12, !"__UNIQUE_ID_description299", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 859, i32 1}
!13 = !{ptr @__UNIQUE_ID_file300, !14, !"__UNIQUE_ID_file300", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 860, i32 1}
!15 = !{ptr @__UNIQUE_ID_license301, !14, !"__UNIQUE_ID_license301", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 110, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @adv748x_read_check._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @adv748x_read_check._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @adv748x_tx_media_ops, !24, !"adv748x_tx_media_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 387, i32 45}
!25 = !{ptr @adv748x_media_ops, !26, !"adv748x_media_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 392, i32 45}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 848, i32 11}
!29 = !{ptr @adv748x_driver, !30, !"adv748x_driver", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 846, i32 26}
!31 = !{ptr @adv748x_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 720, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 741, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @adv748x_probe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @adv748x_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 748, i32 3}
!41 = !{ptr @adv748x_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @adv748x_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 754, i32 3}
!45 = !{ptr @adv748x_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @adv748x_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 761, i32 3}
!49 = !{ptr @adv748x_probe._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @adv748x_probe._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 768, i32 3}
!53 = !{ptr @adv748x_probe._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @adv748x_probe._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 775, i32 3}
!57 = !{ptr @adv748x_probe._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @adv748x_probe._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 782, i32 3}
!61 = !{ptr @adv748x_probe._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @adv748x_probe._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 789, i32 3}
!65 = !{ptr @adv748x_probe._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @adv748x_probe._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 796, i32 3}
!69 = !{ptr @adv748x_probe._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @adv748x_probe._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 662, i32 3}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @adv748x_parse_dt._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @adv748x_parse_dt._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 666, i32 4}
!79 = !{ptr @adv748x_parse_dt._entry.38, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @adv748x_parse_dt._entry_ptr.40, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 673, i32 4}
!83 = !{ptr @adv748x_parse_dt._entry.41, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @adv748x_parse_dt._entry_ptr.43, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 627, i32 4}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @adv748x_parse_csi2_lanes._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @adv748x_parse_csi2_lanes._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 634, i32 3}
!92 = !{ptr @adv748x_parse_csi2_lanes.__UNIQUE_ID_ddebug295, !91, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 639, i32 4}
!95 = !{ptr @adv748x_parse_csi2_lanes._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @adv748x_parse_csi2_lanes._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 646, i32 3}
!99 = !{ptr @adv748x_parse_csi2_lanes.__UNIQUE_ID_ddebug296, !98, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!100 = !{ptr @adv748x_configure_regmap._key, !101, !"_key", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 67, i32 3}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 72, i32 3}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @adv748x_configure_regmap._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @adv748x_configure_regmap._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 45, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 46, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 47, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 48, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 49, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 50, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 51, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 52, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 53, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 54, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 55, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 56, i32 2}
!132 = !{ptr @adv748x_regmap_cnf, !133, !"adv748x_regmap_cnf", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 44, i32 35}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 558, i32 3}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @adv748x_identify_chip._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @adv748x_identify_chip._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 562, i32 2}
!141 = !{ptr @adv748x_identify_chip._entry.68, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @adv748x_identify_chip._entry_ptr.70, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 192, i32 4}
!145 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @adv748x_initialise_clients._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @adv748x_initialise_clients._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 86, i32 24}
!150 = !{ptr @adv748x_default_addresses, !151, !"adv748x_default_addresses", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 85, i32 42}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 521, i32 2}
!154 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @adv748x_reset.__UNIQUE_ID_ddebug294, !153, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 224, i32 4}
!158 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @adv748x_write_regs._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @adv748x_write_regs._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @adv748x_init_hdmi, !162, !"adv748x_init_hdmi", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 401, i32 39}
!163 = !{ptr @adv748x_init_afe, !164, !"adv748x_init_afe", i1 false, i1 false}
!164 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 446, i32 39}
!165 = !{ptr @adv748x_of_table, !166, !"adv748x_of_table", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 835, i32 34}
!167 = !{ptr @adv748x_pm_ops, !168, !"adv748x_pm_ops", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/adv748x/adv748x-core.c", i32 842, i32 32}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{i64 2148777804, i64 2148777809, i64 2148777822, i64 2148777866, i64 2148777900, i64 2148777921}
