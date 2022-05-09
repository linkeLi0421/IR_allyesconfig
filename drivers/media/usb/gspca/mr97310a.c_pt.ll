; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/mr97310a.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/mr97310a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sensor_w_data = type { i8, i8, [16 x i8], i32 }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.102, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.102 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, %struct.anon.107, i8, i8, i8, i8, i8 }
%struct.anon.107 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }

@__UNIQUE_ID_author303 = internal constant [90 x i8] c"gspca_mr97310a.author=Kyle Guinn <elyk03@gmail.com>,Theodore Kilgore <kilgota@auburn.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [70 x i8] c"gspca_mr97310a.description=GSPCA/Mars-Semi MR97310A USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [59 x i8] c"gspca_mr97310a.file=drivers/media/usb/gspca/gspca_mr97310a\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [27 x i8] c"gspca_mr97310a.license=GPL\00", section ".modinfo", align 1
@__param_str_force_sensor_type = internal constant [33 x i8] c"gspca_mr97310a.force_sensor_type\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_sensor_type = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_force_sensor_type = internal constant %struct.kernel_param { ptr @__param_str_force_sensor_type, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @force_sensor_type } }, section "__param", align 4
@__UNIQUE_ID_force_sensor_typetype307 = internal constant [46 x i8] c"gspca_mr97310a.parmtype=force_sensor_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_sensor_type308 = internal constant [76 x i8] c"gspca_mr97310a.parm=force_sensor_type:Force sensor type (-1 (auto), 0 or 1)\00", section ".modinfo", align 1
@__initcall__kmod_gspca_mr97310a__309_1077_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gspca_mr97310a\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mr97310a\00", [23 x i8] zeroinitializer }, align 32
@device_table = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2250, i16 272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2250, i16 273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 270, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [5 x %struct.v4l2_pix_format], [48 x i8] } { [5 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 808530765, i32 1, i32 160, i32 19200, i32 8, i32 4, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 808530765, i32 1, i32 176, i32 25344, i32 8, i32 3, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 808530765, i32 1, i32 320, i32 76800, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 808530765, i32 1, i32 352, i32 101376, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 808530765, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_mr97310a: Unknown CIF Sensor id : %02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/gspca/mr97310a.c\00", [61 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: MR97310A CIF camera detected, sensor: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@sd_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_mr97310a: Unknown VGA Sensor id Byte 0: %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.10 = internal global ptr @sd_config._entry.8, section ".printk_index", align 4
@sd_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gspca_mr97310a: Defaults assumed, may not work\0A\00", [46 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.13 = internal global ptr @sd_config._entry.11, section ".printk_index", align 4
@sd_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_mr97310a: Please report this\0A\00", [58 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.16 = internal global ptr @sd_config._entry.14, section ".printk_index", align 4
@sd_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: sensor_type corrected to 0\0A\00", [62 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.19 = internal global ptr @sd_config._entry.17, section ".printk_index", align 4
@sd_config._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_mr97310a: Unknown VGA Sensor id Byte 1: %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.22 = internal global ptr @sd_config._entry.20, section ".printk_index", align 4
@sd_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.24 = internal global ptr @sd_config._entry.23, section ".printk_index", align 4
@sd_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.26 = internal global ptr @sd_config._entry.25, section ".printk_index", align 4
@sd_config._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: MR97310A VGA camera detected, sensor: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.29 = internal global ptr @sd_config._entry.27, section ".printk_index", align 4
@sd_config._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Forcing sensor type to: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.32 = internal global ptr @sd_config._entry.30, section ".printk_index", align 4
@zero_the_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: status is %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zero_the_pointer\00", [47 x i8] zeroinitializer }, align 32
@zero_the_pointer._entry_ptr = internal global ptr @zero_the_pointer._entry, section ".printk_index", align 4
@mr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gspca_mr97310a: reg write [%02x] error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mr_write\00", [23 x i8] zeroinitializer }, align 32
@mr_write._entry_ptr = internal global ptr @mr_write._entry, section ".printk_index", align 4
@mr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013gspca_mr97310a: reg read [%02x] error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mr_read\00", [24 x i8] zeroinitializer }, align 32
@mr_read._entry_ptr = internal global ptr @mr_read._entry, section ".printk_index", align 4
@cam_get_response16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Register: %02x reads %02x%02x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cam_get_response16\00", [45 x i8] zeroinitializer }, align 32
@cam_get_response16._entry_ptr = internal global ptr @cam_get_response16._entry, section ".printk_index", align 4
@sd_init_controls.clockdiv = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @sd_ctrl_ops, ptr null, i32 9965568, ptr @.str.41, i32 1, i64 3, i64 8, i64 1, i64 3, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Minimum Clock Divider\00", [42 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mr97310a:937:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gspca_mr97310a: Could not initialize controls\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@setbrightness.quick_clix_table = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\04\08\0C\01\02\03\05\06\09\07\0A\0D\0B\0E\0F", [16 x i8] zeroinitializer }, align 32
@start_cif_cam.startup_string = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\0D\01\00\00\13\00\00\00P\C0", [21 x i8] zeroinitializer }, align 32
@start_cif_cam.cif_sensor0_init_data = internal constant { <{ { i8, i8, <{ [8 x i8], [8 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, i32 }, { i8, i8, <{ i8, i8, [14 x i8] }>, i32 }, { i8, i8, <{ [8 x i8], [8 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data }>, [80 x i8] } { <{ { i8, i8, <{ [8 x i8], [8 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, i32 }, { i8, i8, <{ i8, i8, [14 x i8] }>, i32 }, { i8, i8, <{ [8 x i8], [8 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data }> <{ { i8, i8, <{ [8 x i8], [8 x i8] }>, i32 } { i8 2, i8 0, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\03Z\B5\01\0F\14\0F\10", [8 x i8] zeroinitializer }>, i32 8 }, { i8, i8, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 } { i8 12, i8 0, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 4, i8 1, i8 1, i8 0, i8 31, [11 x i8] zeroinitializer }>, i32 5 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 18, i8 0, <{ i8, [15 x i8] }> <{ i8 7, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 31, i8 0, <{ i8, [15 x i8] }> <{ i8 6, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 39, i8 0, <{ i8, [15 x i8] }> <{ i8 4, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 41, i8 0, <{ i8, [15 x i8] }> <{ i8 12, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 } { i8 64, i8 0, <{ i8, i8, i8, [13 x i8] }> <{ i8 64, i8 0, i8 4, [13 x i8] zeroinitializer }>, i32 3 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 80, i8 0, <{ i8, [15 x i8] }> <{ i8 96, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 96, i8 0, <{ i8, [15 x i8] }> <{ i8 6, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, i32 } { i8 107, i8 0, <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 -123, i8 -123, i8 -56, i8 -56, i8 -56, i8 -56, [10 x i8] zeroinitializer }>, i32 6 }, { i8, i8, <{ i8, i8, [14 x i8] }>, i32 } { i8 114, i8 0, <{ i8, i8, [14 x i8] }> <{ i8 30, i8 86, [14 x i8] zeroinitializer }>, i32 2 }, { i8, i8, <{ [8 x i8], [8 x i8] }>, i32 } { i8 117, i8 0, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"X@\A2\021\021\80", [8 x i8] zeroinitializer }>, i32 9 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 17, i8 0, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data zeroinitializer }>, [80 x i8] zeroinitializer }, align 32
@start_cif_cam.cif_sensor1_init_data = internal constant { <{ { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data }>, [88 x i8] } { <{ { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data }> <{ { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 2, i8 0, <{ i8, [15 x i8] }> <{ i8 16, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 5, i8 1, <{ i8, [15 x i8] }> <{ i8 34, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data { i8 6, i8 1, [16 x i8] zeroinitializer, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 9, i8 2, <{ i8, [15 x i8] }> <{ i8 14, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 10, i8 2, <{ i8, [15 x i8] }> <{ i8 5, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 11, i8 2, <{ i8, [15 x i8] }> <{ i8 5, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 12, i8 2, <{ i8, [15 x i8] }> <{ i8 15, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 13, i8 2, <{ i8, [15 x i8] }> <{ i8 7, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 14, i8 2, <{ i8, [15 x i8] }> <{ i8 12, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data { i8 15, i8 0, [16 x i8] zeroinitializer, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 16, i8 0, <{ i8, [15 x i8] }> <{ i8 6, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 17, i8 0, <{ i8, [15 x i8] }> <{ i8 7, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data { i8 18, i8 0, [16 x i8] zeroinitializer, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 19, i8 0, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data zeroinitializer }>, [88 x i8] zeroinitializer }, align 32
@start_vga_cam.startup_string = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\0D\01\00\00+\00\00\00P\C0", [21 x i8] zeroinitializer }, align 32
@start_vga_cam.vga_sensor0_init_data = internal constant { <{ { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, %struct.sensor_w_data }>, [48 x i8] } { <{ { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, %struct.sensor_w_data }> <{ { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 } { i8 1, i8 0, <{ i8, i8, i8, [13 x i8] }> <{ i8 12, i8 0, i8 4, [13 x i8] zeroinitializer }>, i32 3 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 } { i8 20, i8 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 1, i8 -28, i8 2, i8 -124, [12 x i8] zeroinitializer }>, i32 4 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 } { i8 32, i8 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 -128, i8 0, i8 8, [12 x i8] zeroinitializer }>, i32 4 }, { i8, i8, <{ i8, i8, i8, [13 x i8] }>, i32 } { i8 37, i8 0, <{ i8, i8, i8, [13 x i8] }> <{ i8 3, i8 -87, i8 -128, [13 x i8] zeroinitializer }>, i32 3 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 } { i8 48, i8 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 48, i8 24, i8 16, i8 24, [12 x i8] zeroinitializer }>, i32 4 }, %struct.sensor_w_data zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@start_vga_cam.vga_sensor1_init_data = internal constant { <{ { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data }>, [48 x i8] } { <{ { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data }> <{ { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 17, i8 4, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }>, i32 } { i8 10, i8 0, <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 10, [9 x i8] zeroinitializer }>, i32 7 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 17, i8 4, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, i8, i8, i8, [12 x i8] }>, i32 } { i8 18, i8 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 99, i8 0, i8 112, [12 x i8] zeroinitializer }>, i32 6 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 17, i8 4, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@start_vga_cam.vga_sensor2_init_data = internal constant { <{ { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, %struct.sensor_w_data, %struct.sensor_w_data, %struct.sensor_w_data, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, %struct.sensor_w_data }>, [144 x i8] } { <{ { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, %struct.sensor_w_data, %struct.sensor_w_data, %struct.sensor_w_data, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, { i8, i8, <{ i8, [15 x i8] }>, i32 }, %struct.sensor_w_data, %struct.sensor_w_data }> <{ { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 1, i8 0, <{ i8, [15 x i8] }> <{ i8 72, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 2, i8 0, <{ i8, [15 x i8] }> <{ i8 34, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 5, i8 0, <{ i8, [15 x i8] }> <{ i8 16, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data { i8 6, i8 0, [16 x i8] zeroinitializer, i32 1 }, %struct.sensor_w_data { i8 7, i8 0, [16 x i8] zeroinitializer, i32 1 }, %struct.sensor_w_data { i8 8, i8 0, [16 x i8] zeroinitializer, i32 1 }, %struct.sensor_w_data { i8 9, i8 0, [16 x i8] zeroinitializer, i32 1 }, %struct.sensor_w_data { i8 18, i8 0, [16 x i8] zeroinitializer, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 19, i8 0, <{ i8, [15 x i8] }> <{ i8 4, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data { i8 20, i8 0, [16 x i8] zeroinitializer, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 21, i8 0, <{ i8, [15 x i8] }> <{ i8 6, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 22, i8 0, <{ i8, [15 x i8] }> <{ i8 1, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 23, i8 0, <{ i8, [15 x i8] }> <{ i8 -30, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 24, i8 0, <{ i8, [15 x i8] }> <{ i8 2, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 25, i8 0, <{ i8, [15 x i8] }> <{ i8 -126, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data { i8 26, i8 0, [16 x i8] zeroinitializer, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 27, i8 0, <{ i8, [15 x i8] }> <{ i8 32, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 29, i8 0, <{ i8, [15 x i8] }> <{ i8 -128, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 30, i8 0, <{ i8, [15 x i8] }> <{ i8 8, [15 x i8] zeroinitializer }>, i32 1 }, { i8, i8, <{ i8, [15 x i8] }>, i32 } { i8 31, i8 0, <{ i8, [15 x i8] }> <{ i8 12, [15 x i8] zeroinitializer }>, i32 1 }, %struct.sensor_w_data { i8 32, i8 0, [16 x i8] zeroinitializer, i32 1 }, %struct.sensor_w_data zeroinitializer }>, [144 x i8] zeroinitializer }, align 32
@pac_sof_marker = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\FF\FF\00\FF\96", [27 x i8] zeroinitializer }, align 32
@pac_find_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.47, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: SOF found, bytes to analyze: %u - Frame starts at byte #%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pac_find_sof\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/gspca/pac_common.h\00", [59 x i8] zeroinitializer }, align 32
@pac_find_sof._entry_ptr = internal global ptr @pac_find_sof._entry, section ".printk_index", align 4
@stream_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: Stream Stop failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stream_stop\00", [20 x i8] zeroinitializer }, align 32
@stream_stop._entry_ptr = internal global ptr @stream_stop._entry, section ".printk_index", align 4
@lcd_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: LCD Stop failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_stop\00", [23 x i8] zeroinitializer }, align 32
@lcd_stop._entry_ptr = internal global ptr @lcd_stop._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 270, i64 272]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 80]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 160, i64 176, i64 352]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 160, i64 176, i64 320, i64 352]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 150, i64 255]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963793, i64 9963795]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"force_sensor_type\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 67, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1065, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1077, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1066, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1048, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1037, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 94, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 403, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 407, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 438, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 440, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 441, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 452, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 458, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 460, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 461, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 464, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 472, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 279, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 131, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 145, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 215, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [9 x i8] c"clockdiv\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 918, i32 39 }
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 910, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 922, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 937, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 997, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"quick_clix_table\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 786, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 490, i32 20 }
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"cif_sensor0_init_data\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 536, i32 37 }
@___asan_gen_.220 = private unnamed_addr constant [22 x i8] c"cif_sensor1_init_data\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 557, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant [15 x i8] c"startup_string\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 592, i32 20 }
@___asan_gen_.226 = private unnamed_addr constant [22 x i8] c"vga_sensor0_init_data\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 646, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant [22 x i8] c"vga_sensor1_init_data\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 670, i32 37 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"vga_sensor2_init_data\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 695, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"pac_sof_marker\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 18, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant [40 x i8] c"../drivers/media/usb/gspca/pac_common.h\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 100, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 319, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [38 x i8] c"../drivers/media/usb/gspca/mr97310a.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 327, i32 3 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_force_sensor_type308, ptr @__UNIQUE_ID_force_sensor_typetype307, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_mr97310a__309_1077_sd_driver_init6, ptr @__param_force_sensor_type, ptr @cam_get_response16._entry, ptr @cam_get_response16._entry_ptr, ptr @lcd_stop._entry, ptr @lcd_stop._entry_ptr, ptr @mr_read._entry, ptr @mr_read._entry_ptr, ptr @mr_write._entry, ptr @mr_write._entry_ptr, ptr @pac_find_sof._entry, ptr @pac_find_sof._entry_ptr, ptr @sd_config._entry, ptr @sd_config._entry.11, ptr @sd_config._entry.14, ptr @sd_config._entry.17, ptr @sd_config._entry.20, ptr @sd_config._entry.23, ptr @sd_config._entry.25, ptr @sd_config._entry.27, ptr @sd_config._entry.30, ptr @sd_config._entry.5, ptr @sd_config._entry.8, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.10, ptr @sd_config._entry_ptr.13, ptr @sd_config._entry_ptr.16, ptr @sd_config._entry_ptr.19, ptr @sd_config._entry_ptr.22, ptr @sd_config._entry_ptr.24, ptr @sd_config._entry_ptr.26, ptr @sd_config._entry_ptr.29, ptr @sd_config._entry_ptr.32, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @stream_stop._entry, ptr @stream_stop._entry_ptr, ptr @zero_the_pointer._entry, ptr @zero_the_pointer._entry_ptr, ptr @force_sensor_type, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @sd_init_controls.clockdiv, ptr @sd_ctrl_ops, ptr @.str.41, ptr @sd_init_controls._key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @setbrightness.quick_clix_table, ptr @start_cif_cam.startup_string, ptr @start_cif_cam.cif_sensor0_init_data, ptr @start_cif_cam.cif_sensor1_init_data, ptr @start_vga_cam.startup_string, ptr @start_vga_cam.vga_sensor0_init_data, ptr @start_vga_cam.vga_sensor1_init_data, ptr @start_vga_cam.vga_sensor2_init_data, ptr @pac_sof_marker, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_sensor_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero_the_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_get_response16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls.clockdiv to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setbrightness.quick_clix_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_cif_cam.startup_string to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_cif_cam.cif_sensor0_init_data to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_cif_cam.cif_sensor1_init_data to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_vga_cam.startup_string to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_vga_cam.vga_sensor0_init_data to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_vga_cam.vga_sensor1_init_data to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_vga_cam.vga_sensor2_init_data to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac_sof_marker to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac_find_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2624, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %nmodes, align 4
  %do_lcd_stop = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %2 = ptrtoint ptr %do_lcd_stop to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %do_lcd_stop, align 1
  %call = tail call fastcc i32 @zero_the_pointer(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %4, align 1
  %6 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx2.i, align 1
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or.i.i = or i32 %shl.i.i.i, -1073610752
  %12 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i = tail call i32 @usb_bulk_msg(ptr noundef %9, i32 noundef %or.i.i, ptr noundef %12, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %stream_start.exit.thread, label %if.end5

stream_start.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv.i.i = zext i8 %16 to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i.i, i32 noundef %call2.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %17 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idProduct, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %18, label %if.else [
    i16 272, label %if.end9.if.then16_crit_edge
    i16 270, label %if.end9.if.then16_crit_edge232
  ]

if.end9.if.then16_crit_edge232:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end9.if.then16_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.then16:                                        ; preds = %if.end9.if.then16_crit_edge, %if.end9.if.then16_crit_edge232
  %cam_type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %20 = ptrtoint ptr %cam_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %cam_type, align 1
  %21 = ptrtoint ptr %nmodes to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nmodes, align 4
  %dec = add i8 %22, -1
  store i8 %dec, ptr %nmodes, align 4
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %26, label %do.end [
    i8 2, label %if.then16.do.body25_crit_edge
    i8 3, label %sw.bb19
  ]

if.then16.do.body25_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

sw.bb19:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22 = getelementptr i8, ptr %24, i32 1
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %29 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv23) #9
  br label %cleanup

do.body25:                                        ; preds = %sw.bb19, %if.then16.do.body25_crit_edge
  %.sink = phi i8 [ 1, %sw.bb19 ], [ 0, %if.then16.do.body25_crit_edge ]
  %sensor_type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %30 = ptrtoint ptr %sensor_type to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink, ptr %sensor_type, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp26 = icmp sgt i32 %31, 0
  br i1 %cmp26, label %do.end31, label %do.body25.if.end160_crit_edge

do.body25.if.end160_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %sensor_type33 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %32 = ptrtoint ptr %sensor_type33 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sensor_type33, align 2
  %conv34 = zext i8 %33 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %conv34) #9
  br label %if.end160

if.else:                                          ; preds = %if.end9
  %cam_type39 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %34 = ptrtoint ptr %cam_type39 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %cam_type39, align 1
  %sensor_type40 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %35 = ptrtoint ptr %sensor_type40 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %sensor_type40, align 2
  %36 = ptrtoint ptr %do_lcd_stop to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %do_lcd_stop, align 1
  %adj_colors = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %37 = ptrtoint ptr %adj_colors to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %adj_colors, align 4
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %41, label %do.end63 [
    i8 1, label %if.then47
    i8 3, label %if.else.if.end80_crit_edge
    i8 4, label %if.else.if.end80_crit_edge233
  ]

if.else.if.end80_crit_edge233:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %sensor_type40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %sensor_type40, align 2
  br label %if.end80

do.end63:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv44 = zext i8 %41 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv44) #9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end63, %if.then47, %if.else.if.end80_crit_edge, %if.else.if.end80_crit_edge233
  %44 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp84 = icmp eq i8 %47, 3
  br i1 %cmp84, label %land.lhs.true86, label %if.end80.if.end94_crit_edge

if.end80.if.end94_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

land.lhs.true86:                                  ; preds = %if.end80
  %arrayidx88 = getelementptr i8, ptr %45, i32 1
  %48 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %49)
  %cmp90 = icmp eq i8 %49, 80
  br i1 %cmp90, label %if.then92, label %land.lhs.true86.if.end94thread-pre-split_crit_edge

land.lhs.true86.if.end94thread-pre-split_crit_edge: ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94thread-pre-split

if.then92:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %adj_colors to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %adj_colors, align 4
  br label %if.end94thread-pre-split

if.end94thread-pre-split:                         ; preds = %if.then92, %land.lhs.true86.if.end94thread-pre-split_crit_edge
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %51)
  %.pr = load i8, ptr %45, align 1
  br label %if.end94

if.end94:                                         ; preds = %if.end94thread-pre-split, %if.end80.if.end94_crit_edge
  %52 = phi i8 [ %.pr, %if.end94thread-pre-split ], [ %47, %if.end80.if.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %52)
  %cmp98 = icmp eq i8 %52, 4
  br i1 %cmp98, label %if.then100, label %if.end94.do.body143_crit_edge

if.end94.do.body143_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body143

if.then100:                                       ; preds = %if.end94
  %53 = ptrtoint ptr %do_lcd_stop to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %do_lcd_stop, align 1
  %arrayidx103 = getelementptr i8, ptr %45, i32 1
  %54 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx103, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %55, label %do.end125 [
    i8 80, label %sw.bb105
    i8 32, label %if.then100.do.body143_crit_edge
  ]

if.then100.do.body143_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body143

sw.bb105:                                         ; preds = %if.then100
  %57 = ptrtoint ptr %sensor_type40 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %sensor_type40, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %58 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp108 = icmp sgt i32 %58, 0
  br i1 %cmp108, label %do.end113, label %sw.bb105.if.end160_crit_edge

sw.bb105.if.end160_crit_edge:                     ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

do.end113:                                        ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #8
  %name116 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name116) #9
  br label %do.body143

do.end125:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  %conv104 = zext i8 %55 to i32
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv104) #9
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  br label %do.body143

do.body143:                                       ; preds = %do.end125, %do.end113, %if.then100.do.body143_crit_edge, %if.end94.do.body143_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr230 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr230)
  %cmp144 = icmp sgt i32 %.pr230, 0
  br i1 %cmp144, label %do.end149, label %do.body143.if.end160_crit_edge

do.body143.if.end160_crit_edge:                   ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

do.end149:                                        ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #8
  %name152 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %59 = ptrtoint ptr %sensor_type40 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sensor_type40, align 2
  %conv155 = zext i8 %60 to i32
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name152, i32 noundef %conv155) #9
  br label %if.end160

if.end160:                                        ; preds = %do.end149, %do.body143.if.end160_crit_edge, %sw.bb105.if.end160_crit_edge, %do.end31, %do.body25.if.end160_crit_edge
  tail call void @sd_stopN(ptr noundef %gspca_dev)
  %61 = load i32, ptr @force_sensor_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp161.not = icmp eq i32 %61, -1
  br i1 %cmp161.not, label %if.end160.cleanup_crit_edge, label %if.then163

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then163:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool = icmp ne i32 %61, 0
  %conv165 = zext i1 %tobool to i8
  %sensor_type166 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %62 = ptrtoint ptr %sensor_type166 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv165, ptr %sensor_type166, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %63 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp168 = icmp sgt i32 %63, 0
  br i1 %cmp168, label %do.end173, label %if.then163.cleanup_crit_edge

if.then163.cleanup_crit_edge:                     ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end173:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  %name176 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv179 = zext i1 %tobool to i32
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name176, i32 noundef %conv179) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end173, %if.then163.cleanup_crit_edge, %if.end160.cleanup_crit_edge, %do.end, %if.end5.cleanup_crit_edge, %stream_start.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 0, %if.then163.cleanup_crit_edge ], [ 0, %do.end173 ], [ 0, %if.end160.cleanup_crit_edge ], [ %call2.i.i, %stream_start.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.42) #6
  %cam_type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %cam_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cam_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  %sensor_type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %3 = ptrtoint ptr %sensor_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sensor_type, align 2
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4 = icmp eq i8 %4, 0
  br i1 %cmp4, label %if.then.if.then53_crit_edge, label %if.end55.critedge

if.then.if.then53_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53

if.else7:                                         ; preds = %entry
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %4, label %if.end25 [
    i8 0, label %if.else7.if.end55_crit_edge
    i8 2, label %if.end51.thread166
  ]

if.else7.if.end55_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.end25:                                         ; preds = %if.else7
  %do_lcd_stop = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %6 = ptrtoint ptr %do_lcd_stop to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %do_lcd_stop, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then53.critedge, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 0) #6
  br label %if.then53

if.end51.thread166:                               ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 23) #6
  %call45 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 2047, i64 noundef 1, i64 noundef 272) #6
  %call50169 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 1000) #6
  %8 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call50169, ptr %8, align 8
  br label %if.end55

if.then53.critedge:                               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call28.c172 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef -254, i64 noundef 255, i64 noundef 1, i64 noundef 0) #6
  br label %if.then53

if.then53:                                        ; preds = %if.then53.critedge, %if.then31, %if.then.if.then53_crit_edge
  %call41.c173 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 25) #6
  %call50.c174 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 1000) #6
  %10 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call50.c174, ptr %10, align 8
  %call54 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_init_controls.clockdiv, ptr noundef null) #6
  %min_clockdiv = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %min_clockdiv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call54, ptr %min_clockdiv, align 4
  br label %if.end55

if.end55.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call28.c = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef -254, i64 noundef 255, i64 noundef 1, i64 noundef 0) #6
  %call41.c = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 25) #6
  %call50.c = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 1000) #6
  %13 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call50.c, ptr %13, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end55.critedge, %if.then53, %if.end51.thread166, %if.else7.if.end55_crit_edge
  %has_clockdiv.0.off0114129149158165 = phi i1 [ false, %if.then53 ], [ true, %if.end51.thread166 ], [ true, %if.else7.if.end55_crit_edge ], [ true, %if.end55.critedge ]
  %has_exposure.0.off0112130147160164 = phi i1 [ false, %if.then53 ], [ false, %if.end51.thread166 ], [ true, %if.else7.if.end55_crit_edge ], [ false, %if.end55.critedge ]
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool56.not = icmp eq i32 %16, 0
  br i1 %tobool56.not, label %if.end61, label %do.end

do.end:                                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end55
  %brmerge = or i1 %has_clockdiv.0.off0114129149158165, %has_exposure.0.off0112130147160164
  br i1 %brmerge, label %if.end61.cleanup_crit_edge, label %if.then66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %19 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end61.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %18, %do.end ], [ 0, %if.end61.cleanup_crit_edge ], [ 0, %if.then66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sof_read, align 8
  %call = tail call fastcc i32 @zero_the_pointer(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %1 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_buf.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %2, align 1
  %4 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx2.i, align 1
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -1073610752
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i = tail call i32 @usb_bulk_msg(ptr noundef %7, i32 noundef %or.i.i, ptr noundef %10, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %cam_type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %11 = ptrtoint ptr %cam_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cam_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp5 = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %15 = call ptr @memcpy(ptr %14, ptr @start_cif_cam.startup_string, i32 11)
  %sensor_type.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %16 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sensor_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then7.if.end.i_crit_edge, label %if.then.i

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i8, ptr %14, i32 5
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -69, ptr %arrayidx.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then7.if.end.i_crit_edge
  %pixfmt.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %19 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixfmt.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %20, label %if.end.i.sw.default.i_crit_edge [
    i32 160, label %sw.bb.i
    i32 352, label %if.end.i.sw.bb16.i_crit_edge
    i32 176, label %sw.bb11.i
  ]

if.end.i.sw.bb16.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1.i = getelementptr i8, ptr %14, i32 9
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.i, align 1
  %24 = or i8 %23, 4
  store i8 %24, ptr %arrayidx1.i, align 1
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i, %if.end.i.sw.default.i_crit_edge
  %arrayidx4.i = getelementptr i8, ptr %14, i32 3
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 40, ptr %arrayidx4.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %14, i32 4
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 60, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %14, i32 6
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 20, ptr %arrayidx6.i, align 1
  %28 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sensor_type.i, align 2
  %add.i = add i8 %29, 26
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx12.i = getelementptr i8, ptr %14, i32 9
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx12.i, align 1
  %32 = or i8 %31, 4
  store i8 %32, ptr %arrayidx12.i, align 1
  br label %sw.bb16.i

sw.bb16.i:                                        ; preds = %sw.bb11.i, %if.end.i.sw.bb16.i_crit_edge
  %arrayidx17.i = getelementptr i8, ptr %14, i32 3
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 44, ptr %arrayidx17.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %14, i32 4
  %34 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 72, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %14, i32 6
  %35 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %arrayidx19.i, align 1
  %36 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sensor_type.i, align 2
  %sub.i = sub i8 6, %37
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb16.i, %sw.default.i
  %sub.sink.i = phi i8 [ %sub.i, %sw.bb16.i ], [ %add.i, %sw.default.i ]
  %arrayidx23.i = getelementptr i8, ptr %14, i32 8
  %38 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %sub.sink.i, ptr %arrayidx23.i, align 1
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i.i30 = shl i32 %42, 8
  %or.i.i31 = or i32 %shl.i.i.i30, -1073610752
  %43 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i32 = tail call i32 @usb_bulk_msg(ptr noundef %40, i32 noundef %or.i.i31, ptr noundef %44, i32 noundef 11, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i32)
  %cmp.i.i33 = icmp slt i32 %call2.i.i32, 0
  br i1 %cmp.i.i33, label %sw.epilog.i.cleanup.sink.split_crit_edge, label %if.end26.i

sw.epilog.i.cleanup.sink.split_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end26.i:                                       ; preds = %sw.epilog.i
  %45 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sensor_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool28.not.i = icmp eq i8 %46, 0
  br i1 %tobool28.not.i, label %if.end26.i.for.body.i.i_crit_edge, label %if.else.i

if.end26.i.for.body.i.i_crit_edge:                ; preds = %if.end26.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 14
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end14_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.if.end14_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end26.i.for.body.i.i_crit_edge
  %i.018.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end26.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sensor_w_data, ptr @start_cif_cam.cif_sensor0_init_data, i32 %i.018.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i, align 4
  %flags.i.i = getelementptr %struct.sensor_w_data, ptr @start_cif_cam.cif_sensor0_init_data, i32 %i.018.i.i, i32 1
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags.i.i, align 1
  %data3.i.i = getelementptr %struct.sensor_w_data, ptr @start_cif_cam.cif_sensor0_init_data, i32 %i.018.i.i, i32 2
  %len5.i.i = getelementptr %struct.sensor_w_data, ptr @start_cif_cam.cif_sensor0_init_data, i32 %i.018.i.i, i32 3
  %51 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len5.i.i, align 4
  %53 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 31, ptr %54, align 1
  %56 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i.i.i = getelementptr i8, ptr %56, i32 1
  %57 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %50, ptr %arrayidx2.i.i.i, align 1
  %58 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i.i.i = getelementptr i8, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %48, ptr %arrayidx4.i.i.i, align 1
  %60 = load ptr, ptr %usb_buf.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %60, i32 3
  %61 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %data3.i.i, i32 %52)
  %add.i.i.i = add i32 %52, 3
  %62 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i.i.i.i = shl i32 %65, 8
  %or.i.i.i.i = or i32 %shl.i.i.i.i.i, -1073610752
  %66 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i.i.i = tail call i32 @usb_bulk_msg(ptr noundef %63, i32 noundef %or.i.i.i.i, ptr noundef %66, i32 noundef %add.i.i.i, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call2.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %for.body.i.i.cleanup.sink.split_crit_edge, label %for.cond.i.i

for.body.i.i.cleanup.sink.split_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %if.end26.i
  %67 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_buf.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 10, ptr %68, align 1
  %70 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx34.i = getelementptr i8, ptr %70, i32 1
  %71 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx34.i, align 1
  %72 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %shl.i.i71.i = shl i32 %75, 8
  %or.i72.i = or i32 %shl.i.i71.i, -1073610752
  %76 = load ptr, ptr %usb_buf.i, align 4
  %call2.i74.i = tail call i32 @usb_bulk_msg(ptr noundef %73, i32 noundef %or.i72.i, ptr noundef %76, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i74.i)
  %cmp.i75.i = icmp slt i32 %call2.i74.i, 0
  br i1 %cmp.i75.i, label %if.else.i.cleanup.sink.split_crit_edge, label %if.else.i.for.body.i98.i_crit_edge

if.else.i.for.body.i98.i_crit_edge:               ; preds = %if.else.i
  br label %for.body.i98.i

if.else.i.cleanup.sink.split_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.cond.i84.i:                                   ; preds = %for.body.i98.i
  %inc.i82.i = add nuw nsw i32 %i.018.i85.i, 1
  %exitcond.not.i83.i = icmp eq i32 %inc.i82.i, 15
  br i1 %exitcond.not.i83.i, label %for.cond.i84.i.if.end14_crit_edge, label %for.cond.i84.i.for.body.i98.i_crit_edge

for.cond.i84.i.for.body.i98.i_crit_edge:          ; preds = %for.cond.i84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i98.i

for.cond.i84.i.if.end14_crit_edge:                ; preds = %for.cond.i84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.i98.i:                                   ; preds = %for.cond.i84.i.for.body.i98.i_crit_edge, %if.else.i.for.body.i98.i_crit_edge
  %i.018.i85.i = phi i32 [ %inc.i82.i, %for.cond.i84.i.for.body.i98.i_crit_edge ], [ 0, %if.else.i.for.body.i98.i_crit_edge ]
  %arrayidx.i86.i = getelementptr %struct.sensor_w_data, ptr @start_cif_cam.cif_sensor1_init_data, i32 %i.018.i85.i
  %77 = ptrtoint ptr %arrayidx.i86.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i86.i, align 4
  %flags.i87.i = getelementptr %struct.sensor_w_data, ptr @start_cif_cam.cif_sensor1_init_data, i32 %i.018.i85.i, i32 1
  %79 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags.i87.i, align 1
  %data3.i88.i = getelementptr %struct.sensor_w_data, ptr @start_cif_cam.cif_sensor1_init_data, i32 %i.018.i85.i, i32 2
  %len5.i89.i = getelementptr %struct.sensor_w_data, ptr @start_cif_cam.cif_sensor1_init_data, i32 %i.018.i85.i, i32 3
  %81 = ptrtoint ptr %len5.i89.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len5.i89.i, align 4
  %83 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %usb_buf.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 31, ptr %84, align 1
  %86 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i.i90.i = getelementptr i8, ptr %86, i32 1
  %87 = ptrtoint ptr %arrayidx2.i.i90.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %80, ptr %arrayidx2.i.i90.i, align 1
  %88 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i.i91.i = getelementptr i8, ptr %88, i32 2
  %89 = ptrtoint ptr %arrayidx4.i.i91.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %78, ptr %arrayidx4.i.i91.i, align 1
  %90 = load ptr, ptr %usb_buf.i, align 4
  %add.ptr.i.i92.i = getelementptr i8, ptr %90, i32 3
  %91 = call ptr @memcpy(ptr %add.ptr.i.i92.i, ptr %data3.i88.i, i32 %82)
  %add.i.i93.i = add i32 %82, 3
  %92 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %shl.i.i.i.i94.i = shl i32 %95, 8
  %or.i.i.i95.i = or i32 %shl.i.i.i.i94.i, -1073610752
  %96 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i.i96.i = tail call i32 @usb_bulk_msg(ptr noundef %93, i32 noundef %or.i.i.i95.i, ptr noundef %96, i32 noundef %add.i.i93.i, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i96.i)
  %cmp.i.i.i97.i = icmp slt i32 %call2.i.i.i96.i, 0
  br i1 %cmp.i.i.i97.i, label %for.body.i98.i.cleanup.sink.split_crit_edge, label %for.cond.i84.i

for.body.i98.i.cleanup.sink.split_crit_edge:      ; preds = %for.body.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end4
  %97 = call ptr @memcpy(ptr %14, ptr @start_vga_cam.startup_string, i32 11)
  %sensor_type.i35 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %98 = ptrtoint ptr %sensor_type.i35 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sensor_type.i35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i36 = icmp eq i8 %99, 0
  br i1 %tobool.not.i36, label %if.then.i39, label %if.else.if.end.i40_crit_edge

if.else.if.end.i40_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i40

if.then.i39:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i37 = getelementptr i8, ptr %14, i32 5
  %100 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx.i37, align 1
  %arrayidx1.i38 = getelementptr i8, ptr %14, i32 10
  %101 = ptrtoint ptr %arrayidx1.i38 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -111, ptr %arrayidx1.i38, align 1
  %102 = ptrtoint ptr %sensor_type.i35 to i32
  call void @__asan_load1_noabort(i32 %102)
  %.pr.i = load i8, ptr %sensor_type.i35, align 2
  br label %if.end.i40

if.end.i40:                                       ; preds = %if.then.i39, %if.else.if.end.i40_crit_edge
  %103 = phi i8 [ %.pr.i, %if.then.i39 ], [ %99, %if.else.if.end.i40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp.i = icmp eq i8 %103, 2
  br i1 %cmp.i, label %if.then4.i, label %if.end.i40.if.end7.i_crit_edge

if.end.i40.if.end7.i_crit_edge:                   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5.i41 = getelementptr i8, ptr %14, i32 5
  %104 = ptrtoint ptr %arrayidx5.i41 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx5.i41, align 1
  %arrayidx6.i42 = getelementptr i8, ptr %14, i32 10
  %105 = ptrtoint ptr %arrayidx6.i42 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 24, ptr %arrayidx6.i42, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i40.if.end7.i_crit_edge
  %pixfmt.i43 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %106 = ptrtoint ptr %pixfmt.i43 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pixfmt.i43, align 8
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %107, label %if.end7.i.sw.default.i50_crit_edge [
    i32 160, label %sw.bb.i44
    i32 320, label %if.end7.i.sw.bb11.i46_crit_edge
    i32 352, label %if.end7.i.sw.bb38.i_crit_edge
    i32 176, label %sw.bb33.i
  ]

if.end7.i.sw.bb38.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38.i

if.end7.i.sw.bb11.i46_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11.i46

if.end7.i.sw.default.i50_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i50

sw.bb.i44:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.i = getelementptr i8, ptr %14, i32 9
  %109 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx8.i, align 1
  %111 = or i8 %110, 12
  store i8 %111, ptr %arrayidx8.i, align 1
  br label %sw.bb11.i46

sw.bb11.i46:                                      ; preds = %sw.bb.i44, %if.end7.i.sw.bb11.i46_crit_edge
  %arrayidx12.i45 = getelementptr i8, ptr %14, i32 9
  %112 = ptrtoint ptr %arrayidx12.i45 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx12.i45, align 1
  %114 = or i8 %113, 4
  store i8 %114, ptr %arrayidx12.i45, align 1
  br label %sw.default.i50

sw.default.i50:                                   ; preds = %sw.bb11.i46, %if.end7.i.sw.default.i50_crit_edge
  %arrayidx17.i47 = getelementptr i8, ptr %14, i32 3
  %115 = ptrtoint ptr %arrayidx17.i47 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 80, ptr %arrayidx17.i47, align 1
  %arrayidx18.i48 = getelementptr i8, ptr %14, i32 4
  %116 = ptrtoint ptr %arrayidx18.i48 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 120, ptr %arrayidx18.i48, align 1
  %arrayidx19.i49 = getelementptr i8, ptr %14, i32 6
  %117 = ptrtoint ptr %arrayidx19.i49 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 4, ptr %arrayidx19.i49, align 1
  %arrayidx20.i = getelementptr i8, ptr %14, i32 8
  %118 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 3, ptr %arrayidx20.i, align 1
  %119 = ptrtoint ptr %sensor_type.i35 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %sensor_type.i35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %120)
  %cmp23.i = icmp eq i8 %120, 2
  br i1 %cmp23.i, label %if.then25.i, label %sw.default.i50.if.end28.i_crit_edge

sw.default.i50.if.end28.i_crit_edge:              ; preds = %sw.default.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then25.i:                                      ; preds = %sw.default.i50
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %arrayidx19.i49 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 2, ptr %arrayidx19.i49, align 1
  %122 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %arrayidx20.i, align 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %sw.default.i50.if.end28.i_crit_edge
  %do_lcd_stop.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %123 = ptrtoint ptr %do_lcd_stop.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %do_lcd_stop.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool29.not.i = icmp eq i8 %124, 0
  br i1 %tobool29.not.i, label %if.end28.i.sw.epilog.i57_crit_edge, label %if.then30.i

if.end28.i.sw.epilog.i57_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i57

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 4, ptr %arrayidx20.i, align 1
  br label %sw.epilog.i57

sw.bb33.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx34.i51 = getelementptr i8, ptr %14, i32 9
  %126 = ptrtoint ptr %arrayidx34.i51 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx34.i51, align 1
  %128 = or i8 %127, 4
  store i8 %128, ptr %arrayidx34.i51, align 1
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %if.end7.i.sw.bb38.i_crit_edge
  %arrayidx39.i = getelementptr i8, ptr %14, i32 3
  %129 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 44, ptr %arrayidx39.i, align 1
  %arrayidx40.i = getelementptr i8, ptr %14, i32 4
  %130 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 72, ptr %arrayidx40.i, align 1
  %arrayidx41.i = getelementptr i8, ptr %14, i32 6
  %131 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -108, ptr %arrayidx41.i, align 1
  %arrayidx42.i = getelementptr i8, ptr %14, i32 8
  %132 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 99, ptr %arrayidx42.i, align 1
  %do_lcd_stop43.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %133 = ptrtoint ptr %do_lcd_stop43.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %do_lcd_stop43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool44.not.i = icmp eq i8 %134, 0
  %spec.store.select.i = select i1 %tobool44.not.i, i8 99, i8 100
  %135 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %spec.store.select.i, ptr %arrayidx42.i, align 1
  br label %sw.epilog.i57

sw.epilog.i57:                                    ; preds = %sw.bb38.i, %if.then30.i, %if.end28.i.sw.epilog.i57_crit_edge
  %136 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 8
  %shl.i.i.i53 = shl i32 %139, 8
  %or.i.i54 = or i32 %shl.i.i.i53, -1073610752
  %140 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i55 = tail call i32 @usb_bulk_msg(ptr noundef %137, i32 noundef %or.i.i54, ptr noundef %141, i32 noundef 11, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i55)
  %cmp.i.i56 = icmp slt i32 %call2.i.i55, 0
  br i1 %cmp.i.i56, label %sw.epilog.i57.cleanup.sink.split_crit_edge, label %if.end51.i

sw.epilog.i57.cleanup.sink.split_crit_edge:       ; preds = %sw.epilog.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end51.i:                                       ; preds = %sw.epilog.i57
  %142 = ptrtoint ptr %sensor_type.i35 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %sensor_type.i35, align 2
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %143, label %if.end51.i.for.body.i206.i_crit_edge [
    i8 0, label %if.end51.i.for.body.i.i74_crit_edge
    i8 1, label %if.then60.i
  ]

if.end51.i.for.body.i.i74_crit_edge:              ; preds = %if.end51.i
  br label %for.body.i.i74

if.end51.i.for.body.i206.i_crit_edge:             ; preds = %if.end51.i
  br label %for.body.i206.i

for.cond.i.i60:                                   ; preds = %for.body.i.i74
  %inc.i.i58 = add nuw nsw i32 %i.018.i.i61, 1
  %exitcond.not.i.i59 = icmp eq i32 %inc.i.i58, 6
  br i1 %exitcond.not.i.i59, label %for.cond.i.i60.if.end14_crit_edge, label %for.cond.i.i60.for.body.i.i74_crit_edge

for.cond.i.i60.for.body.i.i74_crit_edge:          ; preds = %for.cond.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i74

for.cond.i.i60.if.end14_crit_edge:                ; preds = %for.cond.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.i.i74:                                   ; preds = %for.cond.i.i60.for.body.i.i74_crit_edge, %if.end51.i.for.body.i.i74_crit_edge
  %i.018.i.i61 = phi i32 [ %inc.i.i58, %for.cond.i.i60.for.body.i.i74_crit_edge ], [ 0, %if.end51.i.for.body.i.i74_crit_edge ]
  %arrayidx.i.i62 = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor0_init_data, i32 %i.018.i.i61
  %145 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.i.i62, align 4
  %flags.i.i63 = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor0_init_data, i32 %i.018.i.i61, i32 1
  %147 = ptrtoint ptr %flags.i.i63 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %flags.i.i63, align 1
  %data3.i.i64 = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor0_init_data, i32 %i.018.i.i61, i32 2
  %len5.i.i65 = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor0_init_data, i32 %i.018.i.i61, i32 3
  %149 = ptrtoint ptr %len5.i.i65 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len5.i.i65, align 4
  %151 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %usb_buf.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 31, ptr %152, align 1
  %154 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i.i.i66 = getelementptr i8, ptr %154, i32 1
  %155 = ptrtoint ptr %arrayidx2.i.i.i66 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %148, ptr %arrayidx2.i.i.i66, align 1
  %156 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i.i.i67 = getelementptr i8, ptr %156, i32 2
  %157 = ptrtoint ptr %arrayidx4.i.i.i67 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %146, ptr %arrayidx4.i.i.i67, align 1
  %158 = load ptr, ptr %usb_buf.i, align 4
  %add.ptr.i.i.i68 = getelementptr i8, ptr %158, i32 3
  %159 = call ptr @memcpy(ptr %add.ptr.i.i.i68, ptr %data3.i.i64, i32 %150)
  %add.i.i.i69 = add i32 %150, 3
  %160 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev.i.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 8
  %shl.i.i.i.i.i70 = shl i32 %163, 8
  %or.i.i.i.i71 = or i32 %shl.i.i.i.i.i70, -1073610752
  %164 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i.i.i72 = tail call i32 @usb_bulk_msg(ptr noundef %161, i32 noundef %or.i.i.i.i71, ptr noundef %164, i32 noundef %add.i.i.i69, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i72)
  %cmp.i.i.i.i73 = icmp slt i32 %call2.i.i.i.i72, 0
  br i1 %cmp.i.i.i.i73, label %for.body.i.i74.cleanup.sink.split_crit_edge, label %for.cond.i.i60

for.body.i.i74.cleanup.sink.split_crit_edge:      ; preds = %for.body.i.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then60.i:                                      ; preds = %if.end51.i
  %adj_colors.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %165 = ptrtoint ptr %adj_colors.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %adj_colors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool61.not.i = icmp eq i8 %166, 0
  %167 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %usb_buf.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 31, ptr %168, align 1
  %170 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i.i150.i = getelementptr i8, ptr %170, i32 1
  %171 = ptrtoint ptr %arrayidx2.i.i150.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %arrayidx2.i.i150.i, align 1
  %172 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i.i151.i = getelementptr i8, ptr %172, i32 2
  %173 = ptrtoint ptr %arrayidx4.i.i151.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 2, ptr %arrayidx4.i.i151.i, align 1
  %174 = load ptr, ptr %usb_buf.i, align 4
  %add.ptr.i.i152.i = getelementptr i8, ptr %174, i32 3
  br i1 %tobool61.not.i, label %for.body.i158.preheader.i, label %for.body.i134.preheader.i

for.body.i134.preheader.i:                        ; preds = %if.then60.i
  %175 = ptrtoint ptr %add.ptr.i.i152.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 8)
  store i64 457410125783957764, ptr %add.ptr.i.i152.i, align 1
  %176 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev.i.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 8
  %shl.i.i.i.i130.i = shl i32 %179, 8
  %or.i.i.i131.i = or i32 %shl.i.i.i.i130.i, -1073610752
  %180 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i.i132.i = tail call i32 @usb_bulk_msg(ptr noundef %177, i32 noundef %or.i.i.i131.i, ptr noundef %181, i32 noundef 11, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i132.i)
  %cmp.i.i.i133.i = icmp slt i32 %call2.i.i.i132.i, 0
  br i1 %cmp.i.i.i133.i, label %for.body.i134.preheader.i.cleanup.sink.split_crit_edge, label %for.body.i134.preheader.i.for.body.i182.i.preheader_crit_edge

for.body.i134.preheader.i.for.body.i182.i.preheader_crit_edge: ; preds = %for.body.i134.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i182.i.preheader

for.body.i134.preheader.i.cleanup.sink.split_crit_edge: ; preds = %for.body.i134.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i158.preheader.i:                        ; preds = %if.then60.i
  %182 = ptrtoint ptr %add.ptr.i.i152.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 8)
  store i64 457410125784088577, ptr %add.ptr.i.i152.i, align 1
  %183 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 8
  %shl.i.i.i.i154.i = shl i32 %186, 8
  %or.i.i.i155.i = or i32 %shl.i.i.i.i154.i, -1073610752
  %187 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i.i156.i = tail call i32 @usb_bulk_msg(ptr noundef %184, i32 noundef %or.i.i.i155.i, ptr noundef %188, i32 noundef 11, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i156.i)
  %cmp.i.i.i157.i = icmp slt i32 %call2.i.i.i156.i, 0
  br i1 %cmp.i.i.i157.i, label %for.body.i158.preheader.i.cleanup.sink.split_crit_edge, label %for.body.i158.preheader.i.for.body.i182.i.preheader_crit_edge

for.body.i158.preheader.i.for.body.i182.i.preheader_crit_edge: ; preds = %for.body.i158.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i182.i.preheader

for.body.i158.preheader.i.cleanup.sink.split_crit_edge: ; preds = %for.body.i158.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i182.i.preheader:                        ; preds = %for.body.i158.preheader.i.for.body.i182.i.preheader_crit_edge, %for.body.i134.preheader.i.for.body.i182.i.preheader_crit_edge
  br label %for.body.i182.i

for.cond.i168.i:                                  ; preds = %for.body.i182.i
  %inc.i166.i = add nuw nsw i32 %i.018.i169.i, 1
  %exitcond.not.i167.i = icmp eq i32 %inc.i166.i, 6
  br i1 %exitcond.not.i167.i, label %for.cond.i168.i.if.end14_crit_edge, label %for.cond.i168.i.for.body.i182.i_crit_edge

for.cond.i168.i.for.body.i182.i_crit_edge:        ; preds = %for.cond.i168.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i182.i

for.cond.i168.i.if.end14_crit_edge:               ; preds = %for.cond.i168.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.i182.i:                                  ; preds = %for.cond.i168.i.for.body.i182.i_crit_edge, %for.body.i182.i.preheader
  %i.018.i169.i = phi i32 [ %inc.i166.i, %for.cond.i168.i.for.body.i182.i_crit_edge ], [ 0, %for.body.i182.i.preheader ]
  %arrayidx.i170.i = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor1_init_data, i32 %i.018.i169.i
  %189 = ptrtoint ptr %arrayidx.i170.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i170.i, align 4
  %flags.i171.i = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor1_init_data, i32 %i.018.i169.i, i32 1
  %191 = ptrtoint ptr %flags.i171.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %flags.i171.i, align 1
  %data3.i172.i = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor1_init_data, i32 %i.018.i169.i, i32 2
  %len5.i173.i = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor1_init_data, i32 %i.018.i169.i, i32 3
  %193 = ptrtoint ptr %len5.i173.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %len5.i173.i, align 4
  %195 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %usb_buf.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 31, ptr %196, align 1
  %198 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i.i174.i = getelementptr i8, ptr %198, i32 1
  %199 = ptrtoint ptr %arrayidx2.i.i174.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %192, ptr %arrayidx2.i.i174.i, align 1
  %200 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i.i175.i = getelementptr i8, ptr %200, i32 2
  %201 = ptrtoint ptr %arrayidx4.i.i175.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %190, ptr %arrayidx4.i.i175.i, align 1
  %202 = load ptr, ptr %usb_buf.i, align 4
  %add.ptr.i.i176.i = getelementptr i8, ptr %202, i32 3
  %203 = call ptr @memcpy(ptr %add.ptr.i.i176.i, ptr %data3.i172.i, i32 %194)
  %add.i.i177.i = add i32 %194, 3
  %204 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev.i.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 8
  %shl.i.i.i.i178.i = shl i32 %207, 8
  %or.i.i.i179.i = or i32 %shl.i.i.i.i178.i, -1073610752
  %208 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i.i180.i = tail call i32 @usb_bulk_msg(ptr noundef %205, i32 noundef %or.i.i.i179.i, ptr noundef %208, i32 noundef %add.i.i177.i, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i180.i)
  %cmp.i.i.i181.i = icmp slt i32 %call2.i.i.i180.i, 0
  br i1 %cmp.i.i.i181.i, label %for.body.i182.i.cleanup.sink.split_crit_edge, label %for.cond.i168.i

for.body.i182.i.cleanup.sink.split_crit_edge:     ; preds = %for.body.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.cond.i192.i:                                  ; preds = %for.body.i206.i
  %inc.i190.i = add nuw nsw i32 %i.018.i193.i, 1
  %exitcond.not.i191.i = icmp eq i32 %inc.i190.i, 22
  br i1 %exitcond.not.i191.i, label %for.cond.i192.i.if.end14_crit_edge, label %for.cond.i192.i.for.body.i206.i_crit_edge

for.cond.i192.i.for.body.i206.i_crit_edge:        ; preds = %for.cond.i192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i206.i

for.cond.i192.i.if.end14_crit_edge:               ; preds = %for.cond.i192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.i206.i:                                  ; preds = %for.cond.i192.i.for.body.i206.i_crit_edge, %if.end51.i.for.body.i206.i_crit_edge
  %i.018.i193.i = phi i32 [ %inc.i190.i, %for.cond.i192.i.for.body.i206.i_crit_edge ], [ 0, %if.end51.i.for.body.i206.i_crit_edge ]
  %arrayidx.i194.i = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor2_init_data, i32 %i.018.i193.i
  %209 = ptrtoint ptr %arrayidx.i194.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx.i194.i, align 4
  %flags.i195.i = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor2_init_data, i32 %i.018.i193.i, i32 1
  %211 = ptrtoint ptr %flags.i195.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %flags.i195.i, align 1
  %data3.i196.i = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor2_init_data, i32 %i.018.i193.i, i32 2
  %len5.i197.i = getelementptr %struct.sensor_w_data, ptr @start_vga_cam.vga_sensor2_init_data, i32 %i.018.i193.i, i32 3
  %213 = ptrtoint ptr %len5.i197.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %len5.i197.i, align 4
  %215 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %usb_buf.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 31, ptr %216, align 1
  %218 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i.i198.i = getelementptr i8, ptr %218, i32 1
  %219 = ptrtoint ptr %arrayidx2.i.i198.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %212, ptr %arrayidx2.i.i198.i, align 1
  %220 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i.i199.i = getelementptr i8, ptr %220, i32 2
  %221 = ptrtoint ptr %arrayidx4.i.i199.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %210, ptr %arrayidx4.i.i199.i, align 1
  %222 = load ptr, ptr %usb_buf.i, align 4
  %add.ptr.i.i200.i = getelementptr i8, ptr %222, i32 3
  %223 = call ptr @memcpy(ptr %add.ptr.i.i200.i, ptr %data3.i196.i, i32 %214)
  %add.i.i201.i = add i32 %214, 3
  %224 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev.i.i, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 8
  %shl.i.i.i.i202.i = shl i32 %227, 8
  %or.i.i.i203.i = or i32 %shl.i.i.i.i202.i, -1073610752
  %228 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i.i204.i = tail call i32 @usb_bulk_msg(ptr noundef %225, i32 noundef %or.i.i.i203.i, ptr noundef %228, i32 noundef %add.i.i201.i, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i204.i)
  %cmp.i.i.i205.i = icmp slt i32 %call2.i.i.i204.i, 0
  br i1 %cmp.i.i.i205.i, label %for.body.i206.i.cleanup.sink.split_crit_edge, label %for.cond.i192.i

for.body.i206.i.cleanup.sink.split_crit_edge:     ; preds = %for.body.i206.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end14:                                         ; preds = %for.cond.i192.i.if.end14_crit_edge, %for.cond.i168.i.if.end14_crit_edge, %for.cond.i.i60.if.end14_crit_edge, %for.cond.i84.i.if.end14_crit_edge, %for.cond.i.i.if.end14_crit_edge
  %229 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %usb_buf.i, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %230, align 1
  %232 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i78 = getelementptr i8, ptr %232, i32 1
  %233 = ptrtoint ptr %arrayidx2.i78 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 77, ptr %arrayidx2.i78, align 1
  %234 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev.i.i, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 8
  %shl.i.i.i80 = shl i32 %237, 8
  %or.i.i81 = or i32 %shl.i.i.i80, -1073610752
  %238 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i82 = tail call i32 @usb_bulk_msg(ptr noundef %235, i32 noundef %or.i.i81, ptr noundef %238, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i82)
  %cmp.i.i83 = icmp slt i32 %call2.i.i82, 0
  br i1 %cmp.i.i83, label %if.end14.cleanup.sink.split_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end14.cleanup.sink.split_crit_edge, %for.body.i206.i.cleanup.sink.split_crit_edge, %for.body.i182.i.cleanup.sink.split_crit_edge, %for.body.i158.preheader.i.cleanup.sink.split_crit_edge, %for.body.i134.preheader.i.cleanup.sink.split_crit_edge, %for.body.i.i74.cleanup.sink.split_crit_edge, %sw.epilog.i57.cleanup.sink.split_crit_edge, %for.body.i98.i.cleanup.sink.split_crit_edge, %if.else.i.cleanup.sink.split_crit_edge, %for.body.i.i.cleanup.sink.split_crit_edge, %sw.epilog.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %call2.i.i82.sink = phi i32 [ %call2.i.i, %if.end.cleanup.sink.split_crit_edge ], [ %call2.i.i32, %sw.epilog.i.cleanup.sink.split_crit_edge ], [ %call2.i74.i, %if.else.i.cleanup.sink.split_crit_edge ], [ %call2.i.i55, %sw.epilog.i57.cleanup.sink.split_crit_edge ], [ %call2.i.i.i132.i, %for.body.i134.preheader.i.cleanup.sink.split_crit_edge ], [ %call2.i.i.i156.i, %for.body.i158.preheader.i.cleanup.sink.split_crit_edge ], [ %call2.i.i82, %if.end14.cleanup.sink.split_crit_edge ], [ %call2.i.i.i.i, %for.body.i.i.cleanup.sink.split_crit_edge ], [ %call2.i.i.i96.i, %for.body.i98.i.cleanup.sink.split_crit_edge ], [ %call2.i.i.i204.i, %for.body.i206.i.cleanup.sink.split_crit_edge ], [ %call2.i.i.i.i72, %for.body.i.i74.cleanup.sink.split_crit_edge ], [ %call2.i.i.i180.i, %for.body.i182.i.cleanup.sink.split_crit_edge ]
  %239 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %usb_buf.i, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %240, align 1
  %conv.i.i84 = zext i8 %242 to i32
  %call4.i.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i.i84, i32 noundef %call2.i.i82.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2.i.i82, %if.end14.cleanup_crit_edge ], [ %call2.i.i82.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp66.i = icmp sgt i32 %len, 0
  br i1 %cmp66.i, label %entry.for.body.i_crit_edge, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %sof_read to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sof_read, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %1, label %for.body.i.for.inc.sink.split.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb4.i
    i8 2, label %sw.bb11.i
    i8 3, label %sw.bb15.i
    i8 4, label %sw.bb23.i
  ]

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb.i:                                          ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.067.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp2.i = icmp eq i8 %4, -1
  br i1 %cmp2.i, label %sw.bb.i.for.inc.sink.split.i_crit_edge, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i.for.inc.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5.i = getelementptr i8, ptr %data, i32 %i.067.i
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp7.i = icmp eq i8 %6, -1
  %..i = select i1 %cmp7.i, i8 2, i8 0
  br label %for.inc.sink.split.i

sw.bb11.i:                                        ; preds = %for.body.i
  %arrayidx12.i = getelementptr i8, ptr %data, i32 %i.067.i
  %7 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %8, label %sw.default.i [
    i8 0, label %sw.bb11.i.for.inc.sink.split.i_crit_edge
    i8 -1, label %sw.bb11.i.for.inc.i_crit_edge
  ]

sw.bb11.i.for.inc.i_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb11.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.default.i:                                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb15.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16.i = getelementptr i8, ptr %data, i32 %i.067.i
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp18.i = icmp eq i8 %11, -1
  %.72.i = select i1 %cmp18.i, i8 4, i8 0
  br label %for.inc.sink.split.i

sw.bb23.i:                                        ; preds = %for.body.i
  %arrayidx24.i = getelementptr i8, ptr %data, i32 %i.067.i
  %12 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %13, label %sw.default36.i [
    i8 -106, label %do.body.i
    i8 -1, label %sw.bb23.i.for.inc.sink.split.i_crit_edge
  ]

sw.bb23.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

do.body.i:                                        ; preds = %sw.bb23.i
  %arrayidx24.i.le = getelementptr i8, ptr %data, i32 %i.067.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp27.i = icmp sgt i32 %15, 3
  br i1 %cmp27.i, label %do.end.i, label %do.body.i.pac_find_sof.exit_crit_edge

do.body.i.pac_find_sof.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pac_find_sof.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %add.i = add nuw nsw i32 %i.067.i, 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name.i, i32 noundef %len, i32 noundef %add.i) #9
  br label %pac_find_sof.exit

sw.default36.i:                                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %sw.default36.i, %sw.bb23.i.for.inc.sink.split.i_crit_edge, %sw.bb15.i, %sw.default.i, %sw.bb11.i.for.inc.sink.split.i_crit_edge, %sw.bb4.i, %sw.bb.i.for.inc.sink.split.i_crit_edge, %for.body.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %sw.default.i ], [ 0, %sw.default36.i ], [ 1, %sw.bb.i.for.inc.sink.split.i_crit_edge ], [ %..i, %sw.bb4.i ], [ 3, %sw.bb11.i.for.inc.sink.split.i_crit_edge ], [ %.72.i, %sw.bb15.i ], [ 2, %sw.bb23.i.for.inc.sink.split.i_crit_edge ], [ 0, %for.body.i.for.inc.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink.i, ptr %sof_read, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %sw.bb11.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len
  br i1 %exitcond.not.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

pac_find_sof.exit:                                ; preds = %do.end.i, %do.body.i.pac_find_sof.exit_crit_edge
  %17 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %sof_read, align 1
  %add.ptr34.i = getelementptr i8, ptr %arrayidx24.i.le, i32 1
  %tobool.not = icmp eq ptr %add.ptr34.i, null
  br i1 %tobool.not, label %pac_find_sof.exit.if.end6_crit_edge, label %if.then

pac_find_sof.exit.if.end6_crit_edge:              ; preds = %pac_find_sof.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %pac_find_sof.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr34.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %sub.ptr.sub, i32 5)
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef %18) #6
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef nonnull @pac_sof_marker, i32 noundef 5) #6
  %sub5 = sub i32 %len, %sub.ptr.sub
  br label %if.end6

if.end6:                                          ; preds = %if.then, %pac_find_sof.exit.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %len.addr.0 = phi i32 [ %sub5, %if.then ], [ %len, %pac_find_sof.exit.if.end6_crit_edge ], [ %len, %entry.if.end6_crit_edge ], [ %len, %for.inc.i.if.end6_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr34.i, %if.then ], [ %data, %pac_find_sof.exit.if.end6_crit_edge ], [ %data, %entry.if.end6_crit_edge ], [ %data, %for.inc.i.if.end6_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %1, align 1
  %3 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2.i, align 1
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -1073610752
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i = tail call i32 @usb_bulk_msg(ptr noundef %6, i32 noundef %or.i.i, ptr noundef %9, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %do.end.i, label %entry.stream_stop.exit_crit_edge

entry.stream_stop.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stream_stop.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i.i = zext i8 %13 to i32
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i.i, i32 noundef %call2.i.i) #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name.i) #9
  br label %stream_stop.exit

stream_stop.exit:                                 ; preds = %do.end.i, %entry.stream_stop.exit_crit_edge
  %call = tail call fastcc i32 @zero_the_pointer(ptr noundef %gspca_dev)
  %do_lcd_stop = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %14 = ptrtoint ptr %do_lcd_stop to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %do_lcd_stop, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %stream_stop.exit.if.end_crit_edge, label %if.then

stream_stop.exit.if.end_crit_edge:                ; preds = %stream_stop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %stream_stop.exit
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 25, ptr %17, align 1
  %19 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i5 = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx2.i5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 84, ptr %arrayidx2.i5, align 1
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i.i7 = shl i32 %24, 8
  %or.i.i8 = or i32 %shl.i.i.i7, -1073610752
  %25 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i9 = tail call i32 @usb_bulk_msg(ptr noundef %22, i32 noundef %or.i.i8, ptr noundef %25, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i9)
  %cmp.i.i10 = icmp slt i32 %call2.i.i9, 0
  br i1 %cmp.i.i10, label %do.end.i15, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i15:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv.i.i11 = zext i8 %29 to i32
  %call4.i.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i.i11, i32 noundef %call2.i.i9) #9
  %name.i13 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call3.i14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name.i13) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i15, %if.then.if.end_crit_edge, %stream_stop.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zero_the_pointer(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %call = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 25, ptr %1, align 1
  %arrayidx1 = getelementptr i8, ptr %1, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 81, ptr %arrayidx1, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -1073610752
  %8 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf, align 4
  %call2.i = tail call i32 @usb_bulk_msg(ptr noundef %5, i32 noundef %or.i, ptr noundef %9, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %mr_write.exit.thread, label %if.end5

mr_write.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i, i32 noundef %call2.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 25, ptr %1, align 1
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -70, ptr %arrayidx1, align 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i141 = shl i32 %19, 8
  %or.i142 = or i32 %shl.i.i141, -1073610752
  %20 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf, align 4
  %call2.i144 = tail call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or.i142, ptr noundef %21, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i144)
  %cmp.i145 = icmp slt i32 %call2.i144, 0
  br i1 %cmp.i145, label %mr_write.exit149.thread, label %if.end15

mr_write.exit149.thread:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv.i146 = zext i8 %25 to i32
  %call4.i147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i146, i32 noundef %call2.i144) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call16 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 25, ptr %1, align 1
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx1, align 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i151 = shl i32 %31, 8
  %or.i152 = or i32 %shl.i.i151, -1073610752
  %32 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf, align 4
  %call2.i154 = tail call i32 @usb_bulk_msg(ptr noundef %29, i32 noundef %or.i152, ptr noundef %33, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i154)
  %cmp.i155 = icmp slt i32 %call2.i154, 0
  br i1 %cmp.i155, label %mr_write.exit159.thread, label %if.end25

mr_write.exit159.thread:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv.i156 = zext i8 %37 to i32
  %call4.i157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i156, i32 noundef %call2.i154) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %call26 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 25, ptr %1, align 1
  %39 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx1, align 1
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i161 = shl i32 %43, 8
  %or.i162 = or i32 %shl.i.i161, -1073610752
  %44 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf, align 4
  %call2.i164 = tail call i32 @usb_bulk_msg(ptr noundef %41, i32 noundef %or.i162, ptr noundef %45, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i164)
  %cmp.i165 = icmp slt i32 %call2.i164, 0
  br i1 %cmp.i165, label %mr_write.exit169.thread, label %if.end29.while.cond_crit_edge

if.end29.while.cond_crit_edge:                    ; preds = %if.end29
  br label %while.cond

mr_write.exit169.thread:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  %conv.i166 = zext i8 %49 to i32
  %call4.i167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i166, i32 noundef %call2.i164) #9
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end29.while.cond_crit_edge
  %status.0 = phi i8 [ %51, %while.body.while.cond_crit_edge ], [ 0, %if.end29.while.cond_crit_edge ]
  %tries.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %if.end29.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %status.0)
  %cmp36.not = icmp eq i8 %status.0, 10
  %cmp36.not.not = xor i1 %cmp36.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %tries.0)
  %cmp38 = icmp ult i32 %tries.0, 256
  %or.cond = select i1 %cmp36.not.not, i1 %cmp38, i1 false
  br i1 %or.cond, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call40 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %1, align 1
  %inc = add nuw nsw i32 %tries.0, 1
  %cmp42 = icmp slt i32 %call40, 0
  br i1 %cmp42, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end:                                        ; preds = %while.cond
  br i1 %cmp36.not, label %while.end.if.end52_crit_edge, label %do.end

while.end.if.end52_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.le = zext i8 %status.0 to i32
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %conv.le) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end, %while.end.if.end52_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 25, ptr %1, align 1
  %53 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx1, align 1
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i171 = shl i32 %57, 8
  %or.i172 = or i32 %shl.i.i171, -1073610752
  %58 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf, align 4
  %call2.i174 = tail call i32 @usb_bulk_msg(ptr noundef %55, i32 noundef %or.i172, ptr noundef %59, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i174)
  %cmp.i175 = icmp slt i32 %call2.i174, 0
  br i1 %cmp.i175, label %if.end52.mr_write.exit179.thread_crit_edge, label %if.end63

if.end52.mr_write.exit179.thread_crit_edge:       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %mr_write.exit179.thread

mr_write.exit179.thread:                          ; preds = %while.cond53.3.mr_write.exit179.thread_crit_edge, %while.cond53.2.mr_write.exit179.thread_crit_edge, %while.cond53.1.mr_write.exit179.thread_crit_edge, %if.end52.mr_write.exit179.thread_crit_edge
  %call2.i174.lcssa = phi i32 [ %call2.i174, %if.end52.mr_write.exit179.thread_crit_edge ], [ %call2.i174.1, %while.cond53.1.mr_write.exit179.thread_crit_edge ], [ %call2.i174.2, %while.cond53.2.mr_write.exit179.thread_crit_edge ], [ %call2.i174.3, %while.cond53.3.mr_write.exit179.thread_crit_edge ]
  %60 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_buf, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv.i176 = zext i8 %63 to i32
  %call4.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i176, i32 noundef %call2.i174.lcssa) #9
  br label %cleanup

if.end63:                                         ; preds = %if.end52
  %call64 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp66 = icmp slt i32 %call64, 0
  br i1 %cmp66, label %if.end63.cleanup_crit_edge, label %while.cond53.1

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond53.1:                                   ; preds = %if.end63
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 25, ptr %1, align 1
  %65 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx1, align 1
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i171.1 = shl i32 %69, 8
  %or.i172.1 = or i32 %shl.i.i171.1, -1073610752
  %70 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usb_buf, align 4
  %call2.i174.1 = tail call i32 @usb_bulk_msg(ptr noundef %67, i32 noundef %or.i172.1, ptr noundef %71, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i174.1)
  %cmp.i175.1 = icmp slt i32 %call2.i174.1, 0
  br i1 %cmp.i175.1, label %while.cond53.1.mr_write.exit179.thread_crit_edge, label %if.end63.1

while.cond53.1.mr_write.exit179.thread_crit_edge: ; preds = %while.cond53.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %mr_write.exit179.thread

if.end63.1:                                       ; preds = %while.cond53.1
  %call64.1 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.1)
  %cmp66.1 = icmp slt i32 %call64.1, 0
  br i1 %cmp66.1, label %if.end63.1.cleanup_crit_edge, label %while.cond53.2

if.end63.1.cleanup_crit_edge:                     ; preds = %if.end63.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond53.2:                                   ; preds = %if.end63.1
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 25, ptr %1, align 1
  %73 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx1, align 1
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %shl.i.i171.2 = shl i32 %77, 8
  %or.i172.2 = or i32 %shl.i.i171.2, -1073610752
  %78 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf, align 4
  %call2.i174.2 = tail call i32 @usb_bulk_msg(ptr noundef %75, i32 noundef %or.i172.2, ptr noundef %79, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i174.2)
  %cmp.i175.2 = icmp slt i32 %call2.i174.2, 0
  br i1 %cmp.i175.2, label %while.cond53.2.mr_write.exit179.thread_crit_edge, label %if.end63.2

while.cond53.2.mr_write.exit179.thread_crit_edge: ; preds = %while.cond53.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %mr_write.exit179.thread

if.end63.2:                                       ; preds = %while.cond53.2
  %call64.2 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.2)
  %cmp66.2 = icmp slt i32 %call64.2, 0
  br i1 %cmp66.2, label %if.end63.2.cleanup_crit_edge, label %while.cond53.3

if.end63.2.cleanup_crit_edge:                     ; preds = %if.end63.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond53.3:                                   ; preds = %if.end63.2
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 25, ptr %1, align 1
  %81 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx1, align 1
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %shl.i.i171.3 = shl i32 %85, 8
  %or.i172.3 = or i32 %shl.i.i171.3, -1073610752
  %86 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_buf, align 4
  %call2.i174.3 = tail call i32 @usb_bulk_msg(ptr noundef %83, i32 noundef %or.i172.3, ptr noundef %87, i32 noundef 2, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i174.3)
  %cmp.i175.3 = icmp slt i32 %call2.i174.3, 0
  br i1 %cmp.i175.3, label %while.cond53.3.mr_write.exit179.thread_crit_edge, label %if.end63.3

while.cond53.3.mr_write.exit179.thread_crit_edge: ; preds = %while.cond53.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %mr_write.exit179.thread

if.end63.3:                                       ; preds = %while.cond53.3
  %call64.3 = tail call fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext 33, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.3)
  %cmp66.3 = icmp slt i32 %call64.3, 0
  br i1 %cmp66.3, label %if.end63.3.cleanup_crit_edge, label %while.end70

if.end63.3.cleanup_crit_edge:                     ; preds = %if.end63.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end70:                                      ; preds = %if.end63.3
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 25, ptr %1, align 1
  %call72 = tail call fastcc i32 @mr_write(ptr noundef %gspca_dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %while.end70.cleanup_crit_edge, label %if.end76

while.end70.cleanup_crit_edge:                    ; preds = %while.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end76:                                         ; preds = %while.end70
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = tail call fastcc i32 @mr_read(ptr noundef %gspca_dev)
  %89 = tail call i32 @llvm.smin.i32(i32 %call77, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %while.end70.cleanup_crit_edge, %if.end63.3.cleanup_crit_edge, %if.end63.2.cleanup_crit_edge, %if.end63.1.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %mr_write.exit179.thread, %while.body.cleanup_crit_edge, %mr_write.exit169.thread, %if.end25.cleanup_crit_edge, %mr_write.exit159.thread, %if.end15.cleanup_crit_edge, %mr_write.exit149.thread, %if.end5.cleanup_crit_edge, %mr_write.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call72, %while.end70.cleanup_crit_edge ], [ %89, %if.end76 ], [ %call2.i, %mr_write.exit.thread ], [ %call2.i144, %mr_write.exit149.thread ], [ %call2.i154, %mr_write.exit159.thread ], [ %call2.i164, %mr_write.exit169.thread ], [ %call2.i174.lcssa, %mr_write.exit179.thread ], [ %call64, %if.end63.cleanup_crit_edge ], [ %call64.1, %if.end63.1.cleanup_crit_edge ], [ %call64.2, %if.end63.2.cleanup_crit_edge ], [ %call64.3, %if.end63.3.cleanup_crit_edge ], [ %call40, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cam_get_response16(ptr noundef %gspca_dev, i8 noundef zeroext %reg, i32 noundef %verbose) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %reg, ptr %1, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -1073610752
  %7 = load ptr, ptr %usb_buf, align 4
  %call2.i = tail call i32 @usb_bulk_msg(ptr noundef %4, i32 noundef %or.i, ptr noundef %7, i32 noundef 1, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %mr_write.exit.thread, label %if.end

mr_write.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i, i32 noundef %call2.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i34 = shl i32 %15, 8
  %or2.i = or i32 %shl.i.i34, -1073643392
  %16 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf, align 4
  %call3.i = tail call i32 @usb_bulk_msg(ptr noundef %13, i32 noundef %or2.i, ptr noundef %17, i32 noundef 16, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i36 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i36, label %mr_read.exit.thread, label %if.end4

mr_read.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv.i37 = zext i8 %21 to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv.i37, i32 noundef %call3.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6 = icmp sgt i32 %22, 0
  br i1 %cmp6, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i8 %reg to i32
  %23 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv11 = zext i8 %26 to i32
  %arrayidx13 = getelementptr i8, ptr %24, i32 1
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %28 to i32
  %arrayidx16 = getelementptr i8, ptr %24, i32 2
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %30 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %conv, i32 noundef %conv11, i32 noundef %conv14, i32 noundef %conv17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %mr_read.exit.thread, %mr_write.exit.thread
  %retval.0 = phi i32 [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end4.cleanup_crit_edge ], [ %call2.i, %mr_write.exit.thread ], [ %call3.i, %mr_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mr_write(ptr nocapture noundef readonly %gspca_dev, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -1073610752
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf, align 4
  %call2 = tail call i32 @usb_bulk_msg(ptr noundef %1, i32 noundef %or, ptr noundef %5, i32 noundef %len, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mr_read(ptr nocapture noundef readonly %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or2 = or i32 %shl.i, -1073643392
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf, align 4
  %call3 = tail call i32 @usb_bulk_msg(ptr noundef %1, i32 noundef %or2, ptr noundef %5, i32 noundef 16, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %call3) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963793, label %sw.bb3
    i32 9963795, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %cam_type.i = getelementptr i8, ptr %1, i32 1033
  %10 = ptrtoint ptr %cam_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cam_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp eq i8 %11, 1
  %spec.select.i = select i1 %cmp.i, i8 11, i8 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.i = icmp sgt i32 %9, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext %spec.select.i, i8 noundef zeroext 0) #6
  br label %if.end11.i

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext %spec.select.i, i8 noundef zeroext 1) #6
  %sub.i = sub i32 257, %9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then9.i
  %val.addr.0.i = phi i32 [ %9, %if.then9.i ], [ %sub.i, %if.else.i ]
  %do_lcd_stop.i = getelementptr i8, ptr %1, i32 1035
  %12 = ptrtoint ptr %do_lcd_stop.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %do_lcd_stop.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end11.i.setbrightness.exit_crit_edge, label %if.then12.i

if.end11.i.setbrightness.exit_crit_edge:          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %setbrightness.exit

if.then12.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [16 x i8], ptr @setbrightness.quick_clix_table, i32 0, i32 %val.addr.0.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv13.i = zext i8 %15 to i32
  br label %setbrightness.exit

setbrightness.exit:                               ; preds = %if.then12.i, %if.end11.i.setbrightness.exit_crit_edge
  %val.addr.1.i = phi i32 [ %conv13.i, %if.then12.i ], [ %val.addr.0.i, %if.end11.i.setbrightness.exit_crit_edge ]
  %spec.select27.i = select i1 %cmp.i, i8 12, i8 8
  %conv15.i = trunc i32 %val.addr.1.i to i8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext %spec.select27.i, i8 noundef zeroext %conv15.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val2, align 4
  %conv.i = trunc i32 %17 to i8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 28, i8 noundef zeroext %conv.i) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %18 = getelementptr i8, ptr %1, i32 1024
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val4, align 4
  %min_clockdiv = getelementptr i8, ptr %1, i32 1028
  %23 = ptrtoint ptr %min_clockdiv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %min_clockdiv, align 4
  %tobool5.not = icmp eq ptr %24, null
  br i1 %tobool5.not, label %sw.bb3.cond.end_crit_edge, label %cond.true

sw.bb3.cond.end_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb3.cond.end_crit_edge
  %cond = phi i32 [ %26, %cond.true ], [ 0, %sw.bb3.cond.end_crit_edge ]
  %cam_type.i25 = getelementptr i8, ptr %1, i32 1033
  %27 = ptrtoint ptr %cam_type.i25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cam_type.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.i26 = icmp eq i8 %28, 0
  br i1 %cmp.i26, label %land.lhs.true.i, label %cond.end.if.else.i27_crit_edge

cond.end.if.else.i27_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i27

land.lhs.true.i:                                  ; preds = %cond.end
  %sensor_type.i = getelementptr i8, ptr %1, i32 1034
  %29 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sensor_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp3.i = icmp eq i8 %30, 1
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.if.else.i27_crit_edge

land.lhs.true.i.if.else.i27_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i27

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul i32 %22, 9267
  %div.i = sdiv i32 %mul.i, 10000
  %add.i = add nsw i32 %div.i, 300
  %31 = lshr i32 %add.i, 4
  %conv5.i = trunc i32 %31 to i8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 3, i8 noundef zeroext %conv5.i) #6
  %32 = trunc i32 %add.i to i8
  %conv6.i = and i8 %32, 15
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 4, i8 noundef zeroext %conv6.i) #6
  br label %sw.epilog

if.else.i27:                                      ; preds = %land.lhs.true.i.if.else.i27_crit_edge, %cond.end.if.else.i27_crit_edge
  %sensor_type8.i = getelementptr i8, ptr %1, i32 1034
  %33 = ptrtoint ptr %sensor_type8.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sensor_type8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp10.i = icmp eq i8 %34, 2
  br i1 %cmp10.i, label %if.then12.i29, label %if.else20.i

if.then12.i29:                                    ; preds = %if.else.i27
  call void @__sanitizer_cov_trace_pc() #8
  %35 = lshr i32 %22, 3
  %36 = lshr i32 %22, 11
  %conv15.i28 = trunc i32 %36 to i8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 3, i8 noundef zeroext %conv15.i28) #6
  %conv18.i = trunc i32 %35 to i8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 4, i8 noundef zeroext %conv18.i) #6
  br label %sw.epilog

if.else20.i:                                      ; preds = %if.else.i27
  %mul21.i = mul i32 %22, 60
  %add22.i = add i32 %mul21.i, 7999
  %div23.i = sdiv i32 %add22.i, 8000
  %conv24.i = trunc i32 %div23.i to i8
  %conv25.i = and i32 %div23.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25.i, i32 %cond)
  %cmp26.i = icmp slt i32 %conv25.i, %cond
  br i1 %cmp26.i, label %land.lhs.true28.i, label %if.else20.i.if.else33.i_crit_edge

if.else20.i.if.else33.i_crit_edge:                ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i

land.lhs.true28.i:                                ; preds = %if.else20.i
  %pixfmt.i = getelementptr i8, ptr %1, i32 240
  %37 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixfmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %38)
  %cmp29.i = icmp ugt i32 %38, 319
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true28.i.if.else33.i_crit_edge

land.lhs.true28.i.if.else33.i_crit_edge:          ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else33.i

if.then31.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv32.i = trunc i32 %cond to i8
  br label %if.end38.i

if.else33.i:                                      ; preds = %land.lhs.true28.i.if.else33.i_crit_edge, %if.else20.i.if.else33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv25.i)
  %cmp35.i = icmp ult i32 %conv25.i, 2
  %spec.store.select.i = select i1 %cmp35.i, i8 2, i8 %conv24.i
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else33.i, %if.then31.i
  %clockdiv.0.i = phi i8 [ %conv32.i, %if.then31.i ], [ %spec.store.select.i, %if.else33.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp41.i = icmp eq i8 %28, 1
  %39 = tail call i8 @llvm.umax.i8(i8 %clockdiv.0.i, i8 4) #6
  %spec.select.i30 = select i1 %cmp41.i, i8 %39, i8 %clockdiv.0.i
  %mul49.i = mul i32 %22, 30660
  %conv50.i = zext i8 %spec.select.i30 to i32
  %mul51.i = mul nuw nsw i32 %conv50.i, 8000
  %div52.i = sdiv i32 %mul49.i, %mul51.i
  %40 = tail call i32 @llvm.smin.i32(i32 %div52.i, i32 511) #6
  %sub.i31 = sub i32 511, %40
  %conv58.i = trunc i32 %sub.i31 to i8
  %41 = lshr i32 %sub.i31, 8
  %conv60.i = trunc i32 %41 to i8
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %42 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_buf.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 31, ptr %43, align 1
  %45 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %47 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %47, i32 2
  %48 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 14, ptr %arrayidx4.i.i, align 1
  %49 = load ptr, ptr %usb_buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 3
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv58.i, ptr %add.ptr.i.i, align 1
  %buf.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %49, i32 4
  %51 = ptrtoint ptr %buf.sroa.5.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv60.i, ptr %buf.sroa.5.0.add.ptr.i.sroa_idx.i, align 1
  %dev.i.i.i = getelementptr i8, ptr %1, i32 -100
  %52 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i.i.i = shl i32 %55, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -1073610752
  %56 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i.i = tail call i32 @usb_bulk_msg(ptr noundef %53, i32 noundef %or.i.i.i, ptr noundef %56, i32 noundef 5, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end38.i.sensor_write_reg.exit.i_crit_edge

if.end38.i.sensor_write_reg.exit.i_crit_edge:     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sensor_write_reg.exit.i

do.end.i.i.i:                                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_buf.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv.i.i.i = zext i8 %60 to i32
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i.i.i, i32 noundef %call2.i.i.i) #9
  br label %sensor_write_reg.exit.i

sensor_write_reg.exit.i:                          ; preds = %do.end.i.i.i, %if.end38.i.sensor_write_reg.exit.i_crit_edge
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 2, i8 noundef zeroext %spec.select.i30) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %61 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val9, align 4
  %cam_type.i32 = getelementptr i8, ptr %1, i32 1033
  %63 = ptrtoint ptr %cam_type.i32 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cam_type.i32, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %64, label %sw.bb8.if.else28.i_crit_edge [
    i8 0, label %land.lhs.true.i35
    i8 1, label %land.lhs.true10.i
  ]

sw.bb8.if.else28.i_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28.i

land.lhs.true.i35:                                ; preds = %sw.bb8
  %sensor_type.i33 = getelementptr i8, ptr %1, i32 1034
  %66 = ptrtoint ptr %sensor_type.i33 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sensor_type.i33, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp3.i34 = icmp eq i8 %67, 1
  br i1 %cmp3.i34, label %if.then.i37, label %land.lhs.true.i35.if.else28.i_crit_edge

land.lhs.true.i35.if.else28.i_crit_edge:          ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28.i

if.then.i37:                                      ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i36 = trunc i32 %62 to i8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext %conv5.i36) #6
  br label %sw.epilog

land.lhs.true10.i:                                ; preds = %sw.bb8
  %sensor_type11.i = getelementptr i8, ptr %1, i32 1034
  %68 = ptrtoint ptr %sensor_type11.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sensor_type11.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp13.i = icmp eq i8 %69, 2
  br i1 %cmp13.i, label %for.cond.preheader.i, label %land.lhs.true10.i.if.else28.i_crit_edge

land.lhs.true10.i.if.else28.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28.i

for.cond.preheader.i:                             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = lshr i32 %62, 8
  %conv19.i = trunc i32 %70 to i8
  %conv23.i = trunc i32 %62 to i8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 10, i8 noundef zeroext %conv19.i) #6
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 11, i8 noundef zeroext %conv23.i) #6
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 12, i8 noundef zeroext %conv19.i) #6
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 13, i8 noundef zeroext %conv23.i) #6
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext %conv19.i) #6
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 15, i8 noundef zeroext %conv23.i) #6
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 16, i8 noundef zeroext %conv19.i) #6
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 17, i8 noundef zeroext %conv23.i) #6
  br label %sw.epilog

if.else28.i:                                      ; preds = %land.lhs.true10.i.if.else28.i_crit_edge, %land.lhs.true.i35.if.else28.i_crit_edge, %sw.bb8.if.else28.i_crit_edge
  %conv29.i = trunc i32 %62 to i8
  tail call fastcc void @sensor_write1(ptr noundef %add.ptr, i8 noundef zeroext 16, i8 noundef zeroext %conv29.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else28.i, %for.cond.preheader.i, %if.then.i37, %sensor_write_reg.exit.i, %if.then12.i29, %if.then.i, %sw.bb1, %setbrightness.exit, %if.end.sw.epilog_crit_edge
  %71 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %72, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sensor_write1(ptr nocapture noundef readonly %gspca_dev, i8 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam_type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %cam_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cam_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 31, ptr %3, align 1
  %5 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx2.i, align 1
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %8, i32 2
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %reg, ptr %arrayidx4.i, align 1
  %10 = load ptr, ptr %usb_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 3
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %data, ptr %add.ptr.i, align 1
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i = shl i32 %15, 8
  %or.i.i = or i32 %shl.i.i.i, -1073610752
  %16 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i = tail call i32 @usb_bulk_msg(ptr noundef %13, i32 noundef %or.i.i, ptr noundef %16, i32 noundef 4, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.then.cleanup.sink.split_crit_edge, label %if.end

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx2.i, align 1
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i3 = getelementptr i8, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx4.i3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %reg, ptr %arrayidx4.i3, align 1
  %21 = load ptr, ptr %usb_buf.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %21, i32 3
  %22 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %data, ptr %add.ptr.i4, align 1
  %dev.i.i5 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %23 = ptrtoint ptr %dev.i.i5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i5, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i.i6 = shl i32 %26, 8
  %or.i.i7 = or i32 %shl.i.i.i6, -1073610752
  %27 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i8 = tail call i32 @usb_bulk_msg(ptr noundef %24, i32 noundef %or.i.i7, ptr noundef %27, i32 noundef 4, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i8)
  %cmp.i.i9 = icmp slt i32 %call2.i.i8, 0
  br i1 %cmp.i.i9, label %if.else.cleanup.sink.split_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sensor_type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %28 = ptrtoint ptr %sensor_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sensor_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  %conv3 = select i1 %tobool.not, i8 17, i8 19
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.else.if.end8_crit_edge
  %confirm_reg.036 = phi i8 [ %conv3, %if.end ], [ 17, %if.else.if.end8_crit_edge ]
  %usb_buf.i14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %30 = ptrtoint ptr %usb_buf.i14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i14, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 31, ptr %31, align 1
  %33 = load ptr, ptr %usb_buf.i14, align 4
  %arrayidx2.i15 = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx2.i15 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx2.i15, align 1
  %35 = load ptr, ptr %usb_buf.i14, align 4
  %arrayidx4.i16 = getelementptr i8, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx4.i16 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %confirm_reg.036, ptr %arrayidx4.i16, align 1
  %37 = load ptr, ptr %usb_buf.i14, align 4
  %add.ptr.i17 = getelementptr i8, ptr %37, i32 3
  %38 = ptrtoint ptr %add.ptr.i17 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %add.ptr.i17, align 1
  %dev.i.i18 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %39 = ptrtoint ptr %dev.i.i18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i18, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i.i19 = shl i32 %42, 8
  %or.i.i20 = or i32 %shl.i.i.i19, -1073610752
  %43 = load ptr, ptr %usb_buf.i14, align 4
  %call2.i.i21 = tail call i32 @usb_bulk_msg(ptr noundef %40, i32 noundef %or.i.i20, ptr noundef %43, i32 noundef 4, ptr noundef null, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i21)
  %cmp.i.i22 = icmp slt i32 %call2.i.i21, 0
  br i1 %cmp.i.i22, label %if.end8.cleanup.sink.split_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %usb_buf.i14.sink = phi ptr [ %usb_buf.i, %if.then.cleanup.sink.split_crit_edge ], [ %usb_buf.i, %if.else.cleanup.sink.split_crit_edge ], [ %usb_buf.i14, %if.end8.cleanup.sink.split_crit_edge ]
  %call2.i.i21.sink = phi i32 [ %call2.i.i, %if.then.cleanup.sink.split_crit_edge ], [ %call2.i.i8, %if.else.cleanup.sink.split_crit_edge ], [ %call2.i.i21, %if.end8.cleanup.sink.split_crit_edge ]
  %44 = ptrtoint ptr %usb_buf.i14.sink to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i14.sink, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv.i.i23 = zext i8 %47 to i32
  %call4.i.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv.i.i23, i32 noundef %call2.i.i21.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !95, !97, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !131, !133, !135, !136, !137, !138, !140, !141, !142, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 64, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__param_force_sensor_type, !8, !"__param_force_sensor_type", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 68, i32 1}
!9 = !{ptr @__UNIQUE_ID_force_sensor_typetype307, !8, !"__UNIQUE_ID_force_sensor_typetype307", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_force_sensor_type308, !11, !"__UNIQUE_ID_force_sensor_type308", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 69, i32 1}
!12 = !{ptr @__initcall__kmod_gspca_mr97310a__309_1077_sd_driver_init6, !13, !"__initcall__kmod_gspca_mr97310a__309_1077_sd_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 1077, i32 1}
!14 = !{ptr @__exitcall_sd_driver_exit, !13, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!15 = !{ptr @__param_str_force_sensor_type, !8, !"__param_str_force_sensor_type", i1 false, i1 false}
!16 = !{ptr @force_sensor_type, !17, !"force_sensor_type", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 67, i32 12}
!18 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 1066, i32 10}
!21 = !{ptr @sd_driver, !22, !"sd_driver", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 1065, i32 26}
!23 = !{ptr @sd_desc, !24, !"sd_desc", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 1037, i32 29}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 403, i32 4}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sd_config._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @sd_config._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 407, i32 3}
!33 = !{ptr @sd_config._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sd_config._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 438, i32 4}
!37 = !{ptr @sd_config._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sd_config._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 440, i32 4}
!41 = !{ptr @sd_config._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sd_config._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 441, i32 4}
!45 = !{ptr @sd_config._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sd_config._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 452, i32 5}
!49 = !{ptr @sd_config._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sd_config._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 458, i32 5}
!53 = !{ptr @sd_config._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sd_config._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sd_config._entry.23, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 460, i32 5}
!57 = !{ptr @sd_config._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @sd_config._entry.25, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 461, i32 5}
!60 = !{ptr @sd_config._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 464, i32 3}
!63 = !{ptr @sd_config._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sd_config._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 472, i32 3}
!67 = !{ptr @sd_config._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sd_config._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @vga_mode, !70, !"vga_mode", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 94, i32 37}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 279, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @zero_the_pointer._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @zero_the_pointer._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 131, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mr_write._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @mr_write._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 145, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mr_read._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @mr_read._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 215, i32 3}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @cam_get_response16._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @cam_get_response16._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 922, i32 11}
!93 = !{ptr @sd_init_controls.clockdiv, !94, !"clockdiv", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 918, i32 39}
!95 = !{ptr @sd_init_controls._key, !96, !"_key", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 937, i32 2}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 997, i32 3}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sd_init_controls._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @sd_init_controls._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @sd_ctrl_ops, !104, !"sd_ctrl_ops", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 910, i32 35}
!105 = !{ptr @setbrightness.quick_clix_table, !106, !"quick_clix_table", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 786, i32 18}
!107 = !{ptr @start_cif_cam.startup_string, !108, !"startup_string", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 490, i32 20}
!109 = !{ptr @start_cif_cam.cif_sensor0_init_data, !110, !"cif_sensor0_init_data", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 536, i32 37}
!111 = !{ptr @start_cif_cam.cif_sensor1_init_data, !112, !"cif_sensor1_init_data", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 557, i32 37}
!113 = !{ptr @start_vga_cam.startup_string, !114, !"startup_string", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 592, i32 20}
!115 = !{ptr @start_vga_cam.vga_sensor0_init_data, !116, !"vga_sensor0_init_data", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 646, i32 37}
!117 = distinct !{null, !118, !"color_adj", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 657, i32 37}
!119 = distinct !{null, !120, !"color_no_adj", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 664, i32 37}
!121 = !{ptr @start_vga_cam.vga_sensor1_init_data, !122, !"vga_sensor1_init_data", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 670, i32 37}
!123 = !{ptr @start_vga_cam.vga_sensor2_init_data, !124, !"vga_sensor2_init_data", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 695, i32 37}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/gspca/pac_common.h", i32 100, i32 5}
!127 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @pac_find_sof._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @pac_find_sof._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @pac_sof_marker, !132, !"pac_sof_marker", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/gspca/pac_common.h", i32 18, i32 28}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 319, i32 3}
!135 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @stream_stop._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @stream_stop._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.50, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 327, i32 3}
!140 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @lcd_stop._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @lcd_stop._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @device_table, !144, !"device_table", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/gspca/mr97310a.c", i32 1048, i32 35}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i8 0, i8 2}
