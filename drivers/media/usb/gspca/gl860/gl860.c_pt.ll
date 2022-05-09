; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/gl860/gl860.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/gl860/gl860.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_string = type { i32, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.106, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
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
%struct.anon.106 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.validx = type { i16, i16 }
%struct.idxdata = type { i8, [3 x i8] }
%struct.sd = type { %struct.gspca_dev, %struct.sd_gl860, %struct.sd_gl860, %struct.sd_gl860, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, i32, i8 }
%struct.sd_gl860 = type { i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [55 x i8] c"gspca_gl860.author=Olivier Lorin <o.lorin@laposte.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [59 x i8] c"gspca_gl860.description=Genesys Logic USB PC Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [59 x i8] c"gspca_gl860.file=drivers/media/usb/gspca/gl860/gspca_gl860\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_gl860.license=GPL\00", section ".modinfo", align 1
@__param_str_AC50Hz = internal constant [19 x i8] c"gspca_gl860.AC50Hz\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@AC50Hz = internal global { i32, [28 x i8] } { i32 255, [28 x i8] zeroinitializer }, align 32
@__param_AC50Hz = internal constant %struct.kernel_param { ptr @__param_str_AC50Hz, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @AC50Hz } }, section "__param", align 4
@__UNIQUE_ID_AC50Hztype307 = internal constant [32 x i8] c"gspca_gl860.parmtype=AC50Hz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_AC50Hz308 = internal constant [64 x i8] c"gspca_gl860.parm=AC50Hz: Does AC power frequency is 50Hz? (0/1)\00", section ".modinfo", align 1
@__param_str_sensor = internal constant [19 x i8] c"gspca_gl860.sensor\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_sensor = internal constant %struct.kparam_string { i32 7, ptr @sensor }, align 4
@__param_sensor = internal constant %struct.kernel_param { ptr @__param_str_sensor, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_sensor } }, section "__param", align 4
@__UNIQUE_ID_sensortype309 = internal constant [35 x i8] c"gspca_gl860.parmtype=sensor:string\00", section ".modinfo", align 1
@__UNIQUE_ID_sensor310 = internal constant [77 x i8] c"gspca_gl860.parm=sensor: Driver sensor ('MI1320'/'MI2020'/'OV9655'/'OV2640')\00", section ".modinfo", align 1
@__initcall__kmod_gspca_gl860__311_534_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.10, ptr @sd_probe, ptr @sd_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@gl860_RTx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: zero-length read request\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gl860_RTx\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/gspca/gl860/gl860.c\00", [58 x i8] zeroinitializer }, align 32
@gl860_RTx._entry_ptr = internal global ptr @gl860_RTx._entry, section ".printk_index", align 4
@gl860_RTx._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013gspca_gl860: ctrl transfer failed %4d [p%02x r%d v%04x i%04x len%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@gl860_RTx._entry_ptr.5 = internal global ptr @gl860_RTx._entry.3, section ".printk_index", align 4
@gl860_RTx._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: short ctrl transfer %d/%d\0A\00", [63 x i8] zeroinitializer }, align 32
@gl860_RTx._entry_ptr.8 = internal global ptr @gl860_RTx._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\FF\FF\FF\00", [28 x i8] zeroinitializer }, align 32
@sensor = internal global { [7 x i8], [25 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_gl860\00", [20 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1507, i16 1283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1507, i16 -3695, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc_mi1320 = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.10, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr null, ptr @sd_stop0, ptr @sd_callback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MI1320\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV2640\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV9655\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MI2020\00", [25 x i8] zeroinitializer }, align 32
@mi1320_mode = internal global { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1196573255, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 800, i32 600, i32 1196573255, i32 1, i32 800, i32 480000, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 960, i32 1196573255, i32 1, i32 1280, i32 1228800, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@dev_init_settings = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sd_desc_mi2020 = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.10, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr null, ptr @sd_stop0, ptr @sd_callback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@mi2020_mode = internal global { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1196573255, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 800, i32 598, i32 1196573255, i32 1, i32 800, i32 478400, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 1196573255, i32 1, i32 1280, i32 1310720, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1600, i32 1198, i32 1196573255, i32 1, i32 1600, i32 1916800, i32 8, i32 3, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_desc_ov2640 = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.10, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr null, ptr @sd_stop0, ptr @sd_callback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@ov2640_mode = internal global { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1196573255, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 800, i32 600, i32 1196573255, i32 1, i32 800, i32 480000, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 960, i32 1196573255, i32 1, i32 1280, i32 1228800, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1600, i32 1200, i32 1196573255, i32 1, i32 1600, i32 1920000, i32 8, i32 3, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_desc_ov9655 = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.10, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr null, ptr @sd_stop0, ptr @sd_callback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@ov9655_mode = internal global { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1196573255, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 960, i32 1196573255, i32 1, i32 1280, i32 1228800, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@gl860_guess_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: probing for sensor MI2020 or OVXXXX\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gl860_guess_sensor\00", [45 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr = internal global ptr @gl860_guess_sensor._entry, section ".printk_index", align 4
@gl860_guess_sensor._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: probe=0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.19 = internal global ptr @gl860_guess_sensor._entry.17, section ".printk_index", align 4
@gl860_guess_sensor._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: 0xff -> OVXXXX\0A\00", [42 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.22 = internal global ptr @gl860_guess_sensor._entry.20, section ".printk_index", align 4
@gl860_guess_sensor._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: probing for sensor OV2640 or OV9655\00", [54 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.25 = internal global ptr @gl860_guess_sensor._entry.23, section ".printk_index", align 4
@gl860_guess_sensor._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: probe=0x%02x -> OV2640\0A\00", [34 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.28 = internal global ptr @gl860_guess_sensor._entry.26, section ".printk_index", align 4
@gl860_guess_sensor._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: probe=0x%02x -> OV9655\0A\00", [34 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.31 = internal global ptr @gl860_guess_sensor._entry.29, section ".printk_index", align 4
@gl860_guess_sensor._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.33 = internal global ptr @gl860_guess_sensor._entry.32, section ".printk_index", align 4
@gl860_guess_sensor._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.16, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Not any 0xff -> MI2020\0A\00", [34 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.36 = internal global ptr @gl860_guess_sensor._entry.34, section ".printk_index", align 4
@gl860_guess_sensor._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.16, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: 05e3:f191 sensor MI1320 (1.3M)\0A\00", [58 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.39 = internal global ptr @gl860_guess_sensor._entry.37, section ".printk_index", align 4
@gl860_guess_sensor._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.16, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: 05e3:0503 sensor MI2020 (2.0M)\0A\00", [58 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.42 = internal global ptr @gl860_guess_sensor._entry.40, section ".printk_index", align 4
@gl860_guess_sensor._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.16, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: 05e3:0503 sensor OV9655 (1.3M)\0A\00", [58 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.45 = internal global ptr @gl860_guess_sensor._entry.43, section ".printk_index", align 4
@gl860_guess_sensor._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.16, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: 05e3:0503 sensor OV2640 (2.0M)\0A\00", [58 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.48 = internal global ptr @gl860_guess_sensor._entry.46, section ".printk_index", align 4
@gl860_guess_sensor._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.16, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: ***** Unknown sensor *****\0A\00", [62 x i8] zeroinitializer }, align 32
@gl860_guess_sensor._entry_ptr.51 = internal global ptr @gl860_guess_sensor._entry.49, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gl860:109:(hdl)->_lock\00", [41 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_gl860: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sd_pkt_scan.nSkipped = internal global { i32, [28 x i8] } zeroinitializer, align 32
@switch.table.sd_config = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sd_desc_mi1320, ptr @sd_desc_ov2640, ptr @sd_desc_mi1320, ptr @sd_desc_ov9655, ptr @sd_desc_mi1320, ptr @sd_desc_mi1320, ptr @sd_desc_mi1320, ptr @sd_desc_mi2020], [32 x i8] zeroinitializer }, align 32
@switch.table.sd_config.55 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @mi1320_mode, ptr @ov2640_mode, ptr @mi1320_mode, ptr @ov9655_mode, ptr @mi1320_mode, ptr @mi1320_mode, ptr @mi1320_mode, ptr @mi2020_mode], [32 x i8] zeroinitializer }, align 32
@switch.table.sd_config.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\03\04\03\02\03\03\03\04", [24 x i8] zeroinitializer }, align 32
@switch.table.sd_config.57 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @mi1320_init_settings, ptr @ov2640_init_settings, ptr @mi1320_init_settings, ptr @ov9655_init_settings, ptr @mi1320_init_settings, ptr @mi1320_init_settings, ptr @mi1320_init_settings, ptr @mi2020_init_settings], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 38, i64 64, i64 85, i64 150]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 200]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 200]
@__sancov_gen_cov_switch_values.61 = internal global [13 x i64] [i64 11, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963792, i64 9963796, i64 9963797, i64 9963800, i64 9963802, i64 9963803, i64 9963804]
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"AC50Hz\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 38, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 520, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 564, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 570, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 573, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 616, i32 27 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"sensor\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 42, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 534, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 500, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"sd_desc_mi1320\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 173, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 331, i32 21 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 333, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 335, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 337, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"mi1320_mode\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 277, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"dev_init_settings\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 21, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"sd_desc_mi2020\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 185, i32 29 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"mi2020_mode\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 223, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"sd_desc_ov2640\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 197, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"ov2640_mode\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 250, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"sd_desc_ov9655\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 209, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant [12 x i8] c"ov9655_mode\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 298, i32 31 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 652, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 662, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 668, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 669, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 685, i32 6 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 693, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 700, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 711, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 717, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 719, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 721, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 723, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 725, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 109, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 99, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 164, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [9 x i8] c"nSkipped\00", align 1
@___asan_gen_.240 = private constant [41 x i8] c"../drivers/media/usb/gspca/gl860/gl860.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 423, i32 13 }
@___asan_gen_.242 = private unnamed_addr constant [23 x i8] c"switch.table.sd_config\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [26 x i8] c"switch.table.sd_config.55\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [26 x i8] c"switch.table.sd_config.56\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [26 x i8] c"switch.table.sd_config.57\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_AC50Hz308, ptr @__UNIQUE_ID_AC50Hztype307, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__UNIQUE_ID_sensor310, ptr @__UNIQUE_ID_sensortype309, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_gl860__311_534_sd_driver_init6, ptr @__param_AC50Hz, ptr @__param_sensor, ptr @gl860_RTx._entry, ptr @gl860_RTx._entry.3, ptr @gl860_RTx._entry.6, ptr @gl860_RTx._entry_ptr, ptr @gl860_RTx._entry_ptr.5, ptr @gl860_RTx._entry_ptr.8, ptr @gl860_guess_sensor._entry, ptr @gl860_guess_sensor._entry.17, ptr @gl860_guess_sensor._entry.20, ptr @gl860_guess_sensor._entry.23, ptr @gl860_guess_sensor._entry.26, ptr @gl860_guess_sensor._entry.29, ptr @gl860_guess_sensor._entry.32, ptr @gl860_guess_sensor._entry.34, ptr @gl860_guess_sensor._entry.37, ptr @gl860_guess_sensor._entry.40, ptr @gl860_guess_sensor._entry.43, ptr @gl860_guess_sensor._entry.46, ptr @gl860_guess_sensor._entry.49, ptr @gl860_guess_sensor._entry_ptr, ptr @gl860_guess_sensor._entry_ptr.19, ptr @gl860_guess_sensor._entry_ptr.22, ptr @gl860_guess_sensor._entry_ptr.25, ptr @gl860_guess_sensor._entry_ptr.28, ptr @gl860_guess_sensor._entry_ptr.31, ptr @gl860_guess_sensor._entry_ptr.33, ptr @gl860_guess_sensor._entry_ptr.36, ptr @gl860_guess_sensor._entry_ptr.39, ptr @gl860_guess_sensor._entry_ptr.42, ptr @gl860_guess_sensor._entry_ptr.45, ptr @gl860_guess_sensor._entry_ptr.48, ptr @gl860_guess_sensor._entry_ptr.51, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @AC50Hz, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @sensor, ptr @.str.10, ptr @device_table, ptr @sd_desc_mi1320, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mi1320_mode, ptr @dev_init_settings, ptr @sd_desc_mi2020, ptr @mi2020_mode, ptr @sd_desc_ov2640, ptr @ov2640_mode, ptr @sd_desc_ov9655, ptr @ov9655_mode, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @sd_init_controls._key, ptr @.str.52, ptr @sd_ctrl_ops, ptr @.str.53, ptr @.str.54, ptr @sd_pkt_scan.nSkipped, ptr @switch.table.sd_config, ptr @switch.table.sd_config.55, ptr @switch.table.sd_config.56, ptr @switch.table.sd_config.57], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AC50Hz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_RTx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_RTx._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_RTx._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_mi1320 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1320_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_init_settings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_mi2020 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi2020_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_ov2640 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov2640_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_ov9655 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9655_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl860_guess_sensor._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan.nSkipped to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_config.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_config.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_config.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str.10) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext %pref, i32 noundef %req, i16 noundef zeroext %val, i16 noundef zeroext %index, i32 noundef %len, ptr nocapture noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i8 %pref to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %pref)
  %cmp = icmp eq i8 %pref, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2 = icmp sgt i32 %len, 0
  br i1 %cmp, label %if.then, label %if.else16

if.then:                                          ; preds = %entry
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf, align 4
  %4 = call ptr @memcpy(ptr %3, ptr %pdata, i32 %len)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %conv5 = trunc i32 %req to i8
  %7 = load ptr, ptr %usb_buf, align 4
  %conv7 = trunc i32 %len to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp8.not = icmp eq i32 %len, 1
  %add = select i1 %cmp8.not, i32 400, i32 600
  %call10 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext %conv5, i8 noundef zeroext 64, i16 noundef zeroext %val, i16 noundef zeroext %index, ptr noundef %7, i16 noundef zeroext %conv7, i32 noundef %add) #6
  br label %if.end35

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i104 = shl i32 %9, 8
  %or12 = or i32 %shl.i104, -2147483648
  %conv13 = trunc i32 %req to i8
  %conv14 = trunc i32 %len to i16
  %call15 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or12, i8 noundef zeroext %conv13, i8 noundef zeroext 64, i16 noundef zeroext %val, i16 noundef zeroext %index, ptr noundef null, i16 noundef zeroext %conv14, i32 noundef 400) #6
  br label %if.end35

if.else16:                                        ; preds = %entry
  br i1 %cmp2, label %if.then19, label %if.end35.thread

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  %shl.i105 = shl i32 %11, 8
  %or22 = or i32 %shl.i105, -2147483520
  %conv23 = trunc i32 %req to i8
  %usb_buf24 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %12 = ptrtoint ptr %usb_buf24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf24, align 4
  %conv25 = trunc i32 %len to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp26.not = icmp eq i32 %len, 1
  %add29 = select i1 %cmp26.not, i32 400, i32 600
  %call30 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or22, i8 noundef zeroext %conv23, i8 noundef zeroext %pref, i16 noundef zeroext %val, i16 noundef zeroext %index, ptr noundef %13, i16 noundef zeroext %conv25, i32 noundef %add29) #6
  %14 = ptrtoint ptr %usb_buf24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf24, align 4
  %16 = call ptr @memcpy(ptr %pdata, ptr %15, i32 %len)
  br label %if.end35

if.end35.thread:                                  ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %do.end41

if.end35:                                         ; preds = %if.then19, %if.else, %if.then4
  %r.0 = phi i32 [ %call10, %if.then4 ], [ %call15, %if.else ], [ %call30, %if.then19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %cmp36 = icmp slt i32 %r.0, 0
  br i1 %cmp36, label %if.end35.do.end41_crit_edge, label %if.else47

if.end35.do.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

do.end41:                                         ; preds = %if.end35.do.end41_crit_edge, %if.end35.thread
  %r.0109 = phi i32 [ -22, %if.end35.thread ], [ %r.0, %if.end35.do.end41_crit_edge ]
  %conv44 = zext i16 %val to i32
  %conv45 = zext i16 %index to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %r.0109, i32 noundef %conv, i32 noundef %req, i32 noundef %conv44, i32 noundef %conv45, i32 noundef %len) #9
  br label %if.end62

if.else47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp48 = icmp sgt i32 %len, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0, i32 %len)
  %cmp50 = icmp slt i32 %r.0, %len
  %or.cond = select i1 %cmp48, i1 %cmp50, i1 false
  br i1 %or.cond, label %do.end55, label %if.else47.if.end62_crit_edge

if.else47.if.end62_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end55:                                         ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  %name58 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name58, i32 noundef %r.0, i32 noundef %len) #9
  br label %if.end62

if.end62:                                         ; preds = %do.end55, %if.else47.if.end62_crit_edge, %do.end41
  %r.0108 = phi i32 [ %r.0, %if.else47.if.end62_crit_edge ], [ %r.0, %do.end55 ], [ %r.0109, %do.end41 ]
  tail call void @msleep(i32 noundef 1) #6
  ret i32 %r.0108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fetch_validx(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %tbl, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp28 = icmp sgt i32 %len, 0
  br i1 %cmp28, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.validx, ptr %tbl, i32 %n.029
  %idx = getelementptr %struct.validx, ptr %tbl, i32 %n.029, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp1.not = icmp eq i16 %1, -1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i104.i = shl i32 %7, 8
  %or12.i = or i32 %shl.i104.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or12.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %3, i16 noundef zeroext %1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp36.i = icmp slt i32 %call15.i, 0
  br i1 %cmp36.i, label %do.end41.i, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end41.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv44.i = zext i16 %3 to i32
  %conv45.i = zext i16 %1 to i32
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i, i32 noundef 64, i32 noundef 1, i32 noundef %conv44.i, i32 noundef %conv45.i, i32 noundef 0) #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp9 = icmp eq i16 %3, -1
  br i1 %cmp9, label %if.else.for.end_crit_edge, label %if.else12

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = zext i16 %3 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.else12, %do.end41.i, %if.then.for.inc_crit_edge
  %.sink = phi i32 [ %conv8, %if.else12 ], [ 1, %if.then.for.inc_crit_edge ], [ 1, %do.end41.i ]
  tail call void @msleep(i32 noundef %.sink) #6
  %inc = add nuw nsw i32 %n.029, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.029, %if.else.for.end_crit_edge ], [ %len, %for.inc.for.end_crit_edge ]
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keep_on_fetching_validx(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %tbl, i32 noundef %len, i32 noundef %n) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inc27 = add i32 %n, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc27, i32 %len)
  %cmp28 = icmp slt i32 %inc27, %len
  br i1 %cmp28, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %inc29 = phi i32 [ %inc27, %while.body.lr.ph ], [ %inc, %if.end16.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.validx, ptr %tbl, i32 %inc29
  %idx = getelementptr %struct.validx, ptr %tbl, i32 %inc29, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp1.not = icmp eq i16 %1, -1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i104.i = shl i32 %7, 8
  %or12.i = or i32 %shl.i104.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or12.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %3, i16 noundef zeroext %1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp36.i = icmp slt i32 %call15.i, 0
  br i1 %cmp36.i, label %do.end41.i, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end41.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv44.i = zext i16 %3 to i32
  %conv45.i = zext i16 %1 to i32
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i, i32 noundef 64, i32 noundef 1, i32 noundef %conv44.i, i32 noundef %conv45.i, i32 noundef 0) #9
  br label %if.end16

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp9 = icmp eq i16 %3, -1
  br i1 %cmp9, label %if.else.while.end_crit_edge, label %if.else12

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = zext i16 %3 to i32
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %do.end41.i, %if.then.if.end16_crit_edge
  %conv8.sink = phi i32 [ %conv8, %if.else12 ], [ 1, %if.then.if.end16_crit_edge ], [ 1, %do.end41.i ]
  tail call void @msleep(i32 noundef %conv8.sink) #6
  %inc = add i32 %inc29, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %if.end16.while.end_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %if.else.while.end_crit_edge, %entry.while.end_crit_edge
  %inc.lcssa = phi i32 [ %inc27, %entry.while.end_crit_edge ], [ %inc29, %if.else.while.end_crit_edge ], [ %len, %if.end16.while.end_crit_edge ]
  ret i32 %inc.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fetch_idxdata(ptr noundef %gspca_dev, ptr nocapture noundef readonly %tbl, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp18 = icmp sgt i32 %len, 0
  br i1 %cmp18, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name58.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.idxdata, ptr %tbl, i32 %n.019
  %data = getelementptr %struct.idxdata, ptr %tbl, i32 %n.019, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @.str.9, i32 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp1.not = icmp eq i32 %bcmp, 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %conv = zext i8 %1 to i16
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %data, i32 3)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 31232, i16 noundef zeroext %conv, ptr noundef %9, i16 noundef zeroext 3, i32 noundef 600) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp36.i = icmp slt i32 %call10.i, 0
  br i1 %cmp36.i, label %do.end41.i, label %if.else47.i

do.end41.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv45.i = zext i8 %1 to i32
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call10.i, i32 noundef 64, i32 noundef 3, i32 noundef 31232, i32 noundef %conv45.i, i32 noundef 3) #9
  br label %for.inc

if.else47.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call10.i)
  %cmp50.i = icmp ult i32 %call10.i, 3
  br i1 %cmp50.i, label %do.end55.i, label %if.else47.i.for.inc_crit_edge

if.else47.i.for.inc_crit_edge:                    ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end55.i:                                       ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #8
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name58.i, i32 noundef %call10.i, i32 noundef 3) #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv9 = zext i8 %1 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.else, %do.end55.i, %if.else47.i.for.inc_crit_edge, %do.end41.i
  %.sink = phi i32 [ %conv9, %if.else ], [ 1, %do.end41.i ], [ 1, %if.else47.i.for.inc_crit_edge ], [ 1, %do.end55.i ]
  tail call void @msleep(i32 noundef %.sink) #6
  %inc = add nuw nsw i32 %n.019, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc_mi1320, i32 noundef 2704, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gspca_disconnect(ptr noundef %intf) #6
  ret void
}

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
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %0 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idProduct, align 4
  %nbRightUp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %2 = ptrtoint ptr %nbRightUp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nbRightUp, align 8
  %nbIm = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %3 = ptrtoint ptr %nbIm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nbIm, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %sensor, align 2
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @sensor, ptr noundef nonnull dereferenceable(7) @.str.11, i32 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %entry.if.end18.sink.split_crit_edge, label %if.else

entry.if.end18.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.sink.split

if.else:                                          ; preds = %entry
  %bcmp68 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @sensor, ptr noundef nonnull dereferenceable(7) @.str.12, i32 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp68)
  %cmp3 = icmp eq i32 %bcmp68, 0
  br i1 %cmp3, label %if.else.if.end18.sink.split_crit_edge, label %if.else6

if.else.if.end18.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.sink.split

if.else6:                                         ; preds = %if.else
  %bcmp69 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @sensor, ptr noundef nonnull dereferenceable(7) @.str.13, i32 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp69)
  %cmp8 = icmp eq i32 %bcmp69, 0
  br i1 %cmp8, label %if.else6.if.end18.sink.split_crit_edge, label %if.else11

if.else6.if.end18.sink.split_crit_edge:           ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.sink.split

if.else11:                                        ; preds = %if.else6
  %bcmp70 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @sensor, ptr noundef nonnull dereferenceable(7) @.str.14, i32 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp70)
  %cmp13 = icmp eq i32 %bcmp70, 0
  br i1 %cmp13, label %if.else11.if.end18.sink.split_crit_edge, label %if.else11.if.end18_crit_edge

if.else11.if.end18_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else11.if.end18.sink.split_crit_edge:          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.else11.if.end18.sink.split_crit_edge, %if.else6.if.end18.sink.split_crit_edge, %if.else.if.end18.sink.split_crit_edge, %entry.if.end18.sink.split_crit_edge
  %.sink = phi i8 [ 1, %entry.if.end18.sink.split_crit_edge ], [ 2, %if.else.if.end18.sink.split_crit_edge ], [ 4, %if.else6.if.end18.sink.split_crit_edge ], [ 8, %if.else11.if.end18.sink.split_crit_edge ]
  %5 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink, ptr %sensor, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else11.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3695, i16 %1)
  %cmp.i = icmp eq i16 %1, -3695
  br i1 %cmp.i, label %if.end203.i.thread, label %if.end.i

if.end203.i.thread:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %sensor, align 2
  br label %do.body209.i

if.end.i:                                         ; preds = %if.end18
  %7 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pr)
  %cmp4.i = icmp eq i8 %.pr, -1
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.if.end203.i_crit_edge

if.end.i.if.end203.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203.i

if.then6.i:                                       ; preds = %if.end.i
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i105.i.i = shl i32 %11, 8
  %or22.i.i = or i32 %shl.i105.i.i, -2147483520
  %usb_buf24.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %12 = ptrtoint ptr %usb_buf24.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf24.i.i, align 4
  %call30.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or22.i.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %13, i16 noundef zeroext 1, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %cmp36.i.i = icmp slt i32 %call30.i.i, 0
  br i1 %cmp36.i.i, label %do.end41.i.i, label %if.then6.i.gl860_RTx.exit.i_crit_edge

if.then6.i.gl860_RTx.exit.i_crit_edge:            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit.i

do.end41.i.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call30.i.i, i32 noundef 192, i32 noundef 2, i32 noundef 0, i32 noundef 4, i32 noundef 1) #9
  br label %gl860_RTx.exit.i

gl860_RTx.exit.i:                                 ; preds = %do.end41.i.i, %if.then6.i.gl860_RTx.exit.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i105.i3.i = shl i32 %17, 8
  %or22.i4.i = or i32 %shl.i105.i3.i, -2147483520
  %18 = ptrtoint ptr %usb_buf24.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf24.i.i, align 4
  %call30.i6.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or22.i4.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %19, i16 noundef zeroext 1, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i6.i)
  %cmp36.i7.i = icmp slt i32 %call30.i6.i, 0
  br i1 %cmp36.i7.i, label %do.end41.i9.i, label %gl860_RTx.exit.i.gl860_RTx.exit12.i_crit_edge

gl860_RTx.exit.i.gl860_RTx.exit12.i_crit_edge:    ; preds = %gl860_RTx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit12.i

do.end41.i9.i:                                    ; preds = %gl860_RTx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call30.i6.i, i32 noundef 192, i32 noundef 2, i32 noundef 0, i32 noundef 4, i32 noundef 1) #9
  br label %gl860_RTx.exit12.i

gl860_RTx.exit12.i:                               ; preds = %do.end41.i9.i, %gl860_RTx.exit.i.gl860_RTx.exit12.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i104.i.i = shl i32 %23, 8
  %or12.i.i = or i32 %shl.i104.i.i, -2147483648
  %call15.i.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or12.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp36.i14.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp36.i14.i, label %do.end41.i16.i, label %gl860_RTx.exit12.i.gl860_RTx.exit19.i_crit_edge

gl860_RTx.exit12.i.gl860_RTx.exit19.i_crit_edge:  ; preds = %gl860_RTx.exit12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit19.i

do.end41.i16.i:                                   ; preds = %gl860_RTx.exit12.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i.i, i32 noundef 64, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %gl860_RTx.exit19.i

gl860_RTx.exit19.i:                               ; preds = %do.end41.i16.i, %gl860_RTx.exit12.i.gl860_RTx.exit19.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i104.i21.i = shl i32 %27, 8
  %or12.i22.i = or i32 %shl.i104.i21.i, -2147483648
  %call15.i23.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or12.i22.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i23.i)
  %cmp36.i24.i = icmp slt i32 %call15.i23.i, 0
  br i1 %cmp36.i24.i, label %do.end41.i26.i, label %gl860_RTx.exit19.i.gl860_RTx.exit29.i_crit_edge

gl860_RTx.exit19.i.gl860_RTx.exit29.i_crit_edge:  ; preds = %gl860_RTx.exit19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit29.i

do.end41.i26.i:                                   ; preds = %gl860_RTx.exit19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i23.i, i32 noundef 64, i32 noundef 1, i32 noundef 16, i32 noundef 16, i32 noundef 0) #9
  br label %gl860_RTx.exit29.i

gl860_RTx.exit29.i:                               ; preds = %do.end41.i26.i, %gl860_RTx.exit19.i.gl860_RTx.exit29.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i104.i31.i = shl i32 %31, 8
  %or12.i32.i = or i32 %shl.i104.i31.i, -2147483648
  %call15.i33.i = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or12.i32.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 192, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i33.i)
  %cmp36.i34.i = icmp slt i32 %call15.i33.i, 0
  br i1 %cmp36.i34.i, label %do.end41.i36.i, label %gl860_RTx.exit29.i.gl860_RTx.exit39.i_crit_edge

gl860_RTx.exit29.i.gl860_RTx.exit39.i_crit_edge:  ; preds = %gl860_RTx.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit39.i

do.end41.i36.i:                                   ; preds = %gl860_RTx.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i33.i, i32 noundef 64, i32 noundef 1, i32 noundef 8, i32 noundef 192, i32 noundef 0) #9
  br label %gl860_RTx.exit39.i

gl860_RTx.exit39.i:                               ; preds = %do.end41.i36.i, %gl860_RTx.exit29.i.gl860_RTx.exit39.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i104.i41.i = shl i32 %35, 8
  %or12.i42.i = or i32 %shl.i104.i41.i, -2147483648
  %call15.i43.i = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or12.i42.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 193, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i43.i)
  %cmp36.i44.i = icmp slt i32 %call15.i43.i, 0
  br i1 %cmp36.i44.i, label %do.end41.i46.i, label %gl860_RTx.exit39.i.gl860_RTx.exit49.i_crit_edge

gl860_RTx.exit39.i.gl860_RTx.exit49.i_crit_edge:  ; preds = %gl860_RTx.exit39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit49.i

do.end41.i46.i:                                   ; preds = %gl860_RTx.exit39.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i43.i, i32 noundef 64, i32 noundef 1, i32 noundef 1, i32 noundef 193, i32 noundef 0) #9
  br label %gl860_RTx.exit49.i

gl860_RTx.exit49.i:                               ; preds = %do.end41.i46.i, %gl860_RTx.exit39.i.gl860_RTx.exit49.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %36 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i104.i51.i = shl i32 %39, 8
  %or12.i52.i = or i32 %shl.i104.i51.i, -2147483648
  %call15.i53.i = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or12.i52.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 194, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i53.i)
  %cmp36.i54.i = icmp slt i32 %call15.i53.i, 0
  br i1 %cmp36.i54.i, label %do.end41.i56.i, label %gl860_RTx.exit49.i.gl860_RTx.exit59.i_crit_edge

gl860_RTx.exit49.i.gl860_RTx.exit59.i_crit_edge:  ; preds = %gl860_RTx.exit49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit59.i

do.end41.i56.i:                                   ; preds = %gl860_RTx.exit49.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i53.i, i32 noundef 64, i32 noundef 1, i32 noundef 1, i32 noundef 194, i32 noundef 0) #9
  br label %gl860_RTx.exit59.i

gl860_RTx.exit59.i:                               ; preds = %do.end41.i56.i, %gl860_RTx.exit49.i.gl860_RTx.exit59.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %40 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i104.i61.i = shl i32 %43, 8
  %or12.i62.i = or i32 %shl.i104.i61.i, -2147483648
  %call15.i63.i = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or12.i62.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i63.i)
  %cmp36.i64.i = icmp slt i32 %call15.i63.i, 0
  br i1 %cmp36.i64.i, label %do.end41.i66.i, label %gl860_RTx.exit59.i.gl860_RTx.exit69.i_crit_edge

gl860_RTx.exit59.i.gl860_RTx.exit69.i_crit_edge:  ; preds = %gl860_RTx.exit59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit69.i

do.end41.i66.i:                                   ; preds = %gl860_RTx.exit59.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i63.i, i32 noundef 64, i32 noundef 1, i32 noundef 32, i32 noundef 6, i32 noundef 0) #9
  br label %gl860_RTx.exit69.i

gl860_RTx.exit69.i:                               ; preds = %do.end41.i66.i, %gl860_RTx.exit59.i.gl860_RTx.exit69.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i104.i71.i = shl i32 %47, 8
  %or12.i72.i = or i32 %shl.i104.i71.i, -2147483648
  %call15.i73.i = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or12.i72.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 106, i16 noundef zeroext 13, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i73.i)
  %cmp36.i74.i = icmp slt i32 %call15.i73.i, 0
  br i1 %cmp36.i74.i, label %do.end41.i76.i, label %gl860_RTx.exit69.i.gl860_RTx.exit79.i_crit_edge

gl860_RTx.exit69.i.gl860_RTx.exit79.i_crit_edge:  ; preds = %gl860_RTx.exit69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit79.i

do.end41.i76.i:                                   ; preds = %gl860_RTx.exit69.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i73.i, i32 noundef 64, i32 noundef 1, i32 noundef 106, i32 noundef 13, i32 noundef 0) #9
  br label %gl860_RTx.exit79.i

gl860_RTx.exit79.i:                               ; preds = %do.end41.i76.i, %gl860_RTx.exit69.i.gl860_RTx.exit79.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 56) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %48 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp15.i = icmp sgt i32 %48, 0
  br i1 %cmp15.i, label %do.end.i, label %gl860_RTx.exit79.i.do.end22.i_crit_edge

gl860_RTx.exit79.i.do.end22.i_crit_edge:          ; preds = %gl860_RTx.exit79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22.i

do.end.i:                                         ; preds = %gl860_RTx.exit79.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i) #9
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %gl860_RTx.exit79.i.do.end22.i_crit_edge
  %name39.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %do.end45.i.for.body.i_crit_edge, %do.end22.i
  %nOV.0169.i = phi i8 [ 0, %do.end22.i ], [ %spec.select.i, %do.end45.i.for.body.i_crit_edge ]
  %ntry.0168.i = phi i8 [ 0, %do.end22.i ], [ %inc51.i, %do.end45.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i104.i81.i = shl i32 %52, 8
  %or12.i82.i = or i32 %shl.i104.i81.i, -2147483648
  %call15.i83.i = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or12.i82.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i83.i)
  %cmp36.i84.i = icmp slt i32 %call15.i83.i, 0
  br i1 %cmp36.i84.i, label %do.end41.i86.i, label %for.body.i.gl860_RTx.exit89.i_crit_edge

for.body.i.gl860_RTx.exit89.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit89.i

do.end41.i86.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i83.i, i32 noundef 64, i32 noundef 1, i32 noundef 64, i32 noundef 0, i32 noundef 0) #9
  br label %gl860_RTx.exit89.i

gl860_RTx.exit89.i:                               ; preds = %do.end41.i86.i, %for.body.i.gl860_RTx.exit89.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i104.i91.i = shl i32 %56, 8
  %or12.i92.i = or i32 %shl.i104.i91.i, -2147483648
  %call15.i93.i = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or12.i92.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 99, i16 noundef zeroext 6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i93.i)
  %cmp36.i94.i = icmp slt i32 %call15.i93.i, 0
  br i1 %cmp36.i94.i, label %do.end41.i96.i, label %gl860_RTx.exit89.i.gl860_RTx.exit99.i_crit_edge

gl860_RTx.exit89.i.gl860_RTx.exit99.i_crit_edge:  ; preds = %gl860_RTx.exit89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit99.i

do.end41.i96.i:                                   ; preds = %gl860_RTx.exit89.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i93.i, i32 noundef 64, i32 noundef 1, i32 noundef 99, i32 noundef 6, i32 noundef 0) #9
  br label %gl860_RTx.exit99.i

gl860_RTx.exit99.i:                               ; preds = %do.end41.i96.i, %gl860_RTx.exit89.i.gl860_RTx.exit99.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i104.i101.i = shl i32 %60, 8
  %or12.i102.i = or i32 %shl.i104.i101.i, -2147483648
  %call15.i103.i = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or12.i102.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 31232, i16 noundef zeroext -32720, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i103.i)
  %cmp36.i104.i = icmp slt i32 %call15.i103.i, 0
  br i1 %cmp36.i104.i, label %do.end41.i106.i, label %gl860_RTx.exit99.i.gl860_RTx.exit109.i_crit_edge

gl860_RTx.exit99.i.gl860_RTx.exit109.i_crit_edge: ; preds = %gl860_RTx.exit99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit109.i

do.end41.i106.i:                                  ; preds = %gl860_RTx.exit99.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i103.i, i32 noundef 64, i32 noundef 1, i32 noundef 31232, i32 noundef 32816, i32 noundef 0) #9
  br label %gl860_RTx.exit109.i

gl860_RTx.exit109.i:                              ; preds = %do.end41.i106.i, %gl860_RTx.exit99.i.gl860_RTx.exit109.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 10) #6
  %61 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i105.i111.i = shl i32 %64, 8
  %or22.i112.i = or i32 %shl.i105.i111.i, -2147483520
  %65 = ptrtoint ptr %usb_buf24.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_buf24.i.i, align 4
  %call30.i114.i = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or22.i112.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 31232, i16 noundef zeroext -32720, ptr noundef %66, i16 noundef zeroext 1, i32 noundef 400) #6
  %67 = ptrtoint ptr %usb_buf24.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_buf24.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %probe.0.copyload159.i = load i8, ptr %68, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i114.i)
  %cmp36.i115.i = icmp slt i32 %call30.i114.i, 0
  br i1 %cmp36.i115.i, label %do.end41.i117.i, label %gl860_RTx.exit109.i.gl860_RTx.exit120.i_crit_edge

gl860_RTx.exit109.i.gl860_RTx.exit120.i_crit_edge: ; preds = %gl860_RTx.exit109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit120.i

do.end41.i117.i:                                  ; preds = %gl860_RTx.exit109.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i116.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call30.i114.i, i32 noundef 192, i32 noundef 2, i32 noundef 31232, i32 noundef 32816, i32 noundef 1) #9
  br label %gl860_RTx.exit120.i

gl860_RTx.exit120.i:                              ; preds = %do.end41.i117.i, %gl860_RTx.exit109.i.gl860_RTx.exit120.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %70 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp31.i = icmp sgt i32 %70, 0
  br i1 %cmp31.i, label %do.end36.i, label %gl860_RTx.exit120.i.do.end45.i_crit_edge

gl860_RTx.exit120.i.do.end45.i_crit_edge:         ; preds = %gl860_RTx.exit120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45.i

do.end36.i:                                       ; preds = %gl860_RTx.exit120.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv41.i = zext i8 %probe.0.copyload159.i to i32
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name39.i, i32 noundef %conv41.i) #9
  br label %do.end45.i

do.end45.i:                                       ; preds = %do.end36.i, %gl860_RTx.exit120.i.do.end45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %probe.0.copyload159.i)
  %cmp47.i = icmp eq i8 %probe.0.copyload159.i, -1
  %inc.i = zext i1 %cmp47.i to i8
  %spec.select.i = add i8 %nOV.0169.i, %inc.i
  %inc51.i = add nuw nsw i8 %ntry.0168.i, 1
  %cmp24.i = icmp ult i8 %ntry.0168.i, 3
  br i1 %cmp24.i, label %do.end45.i.for.body.i_crit_edge, label %for.end.i

do.end45.i.for.body.i_crit_edge:                  ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i)
  %tobool.not.i = icmp eq i8 %spec.select.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %71 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp187.i = icmp sgt i32 %71, 0
  br i1 %tobool.not.i, label %do.body186.i, label %do.body53.i

do.body53.i:                                      ; preds = %for.end.i
  br i1 %cmp187.i, label %do.body68.i, label %do.body53.i.for.body87.i.preheader_crit_edge

do.body53.i.for.body87.i.preheader_crit_edge:     ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body87.i.preheader

do.body68.i:                                      ; preds = %do.body53.i
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name39.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr.i = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp69.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp69.i, label %do.end74.i, label %do.body68.i.for.body87.i.preheader_crit_edge

do.body68.i.for.body87.i.preheader_crit_edge:     ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body87.i.preheader

do.end74.i:                                       ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #8
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name39.i) #9
  br label %for.body87.i.preheader

for.body87.i.preheader:                           ; preds = %do.end74.i, %do.body68.i.for.body87.i.preheader_crit_edge, %do.body53.i.for.body87.i.preheader_crit_edge
  br label %for.body87.i

for.body87.i:                                     ; preds = %do.end162.i.for.body87.i_crit_edge, %for.body87.i.preheader
  %nb26.0174.i = phi i8 [ %spec.select1.i, %do.end162.i.for.body87.i_crit_edge ], [ 0, %for.body87.i.preheader ]
  %nb96.0173.i = phi i8 [ %nb96.1.i, %do.end162.i.for.body87.i_crit_edge ], [ 0, %for.body87.i.preheader ]
  %ntry.1172.i = phi i8 [ %inc176.i, %do.end162.i.for.body87.i_crit_edge ], [ 0, %for.body87.i.preheader ]
  %72 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %shl.i104.i122.i = shl i32 %75, 8
  %or12.i123.i = or i32 %shl.i104.i122.i, -2147483648
  %call15.i124.i = tail call i32 @usb_control_msg(ptr noundef %73, i32 noundef %or12.i123.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i124.i)
  %cmp36.i125.i = icmp slt i32 %call15.i124.i, 0
  br i1 %cmp36.i125.i, label %do.end41.i127.i, label %for.body87.i.gl860_RTx.exit130.i_crit_edge

for.body87.i.gl860_RTx.exit130.i_crit_edge:       ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit130.i

do.end41.i127.i:                                  ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i126.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i124.i, i32 noundef 64, i32 noundef 1, i32 noundef 64, i32 noundef 0, i32 noundef 0) #9
  br label %gl860_RTx.exit130.i

gl860_RTx.exit130.i:                              ; preds = %do.end41.i127.i, %for.body87.i.gl860_RTx.exit130.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 3) #6
  %76 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %shl.i104.i132.i = shl i32 %79, 8
  %or12.i133.i = or i32 %shl.i104.i132.i, -2147483648
  %call15.i134.i = tail call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or12.i133.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 24576, i16 noundef zeroext -32758, ptr noundef null, i16 noundef zeroext 0, i32 noundef 400) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i134.i)
  %cmp36.i135.i = icmp slt i32 %call15.i134.i, 0
  br i1 %cmp36.i135.i, label %do.end41.i137.i, label %gl860_RTx.exit130.i.gl860_RTx.exit140.i_crit_edge

gl860_RTx.exit130.i.gl860_RTx.exit140.i_crit_edge: ; preds = %gl860_RTx.exit130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit140.i

do.end41.i137.i:                                  ; preds = %gl860_RTx.exit130.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call15.i134.i, i32 noundef 64, i32 noundef 1, i32 noundef 24576, i32 noundef 32778, i32 noundef 0) #9
  br label %gl860_RTx.exit140.i

gl860_RTx.exit140.i:                              ; preds = %do.end41.i137.i, %gl860_RTx.exit130.i.gl860_RTx.exit140.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  tail call void @msleep(i32 noundef 10) #6
  %80 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i105.i142.i = shl i32 %83, 8
  %or22.i143.i = or i32 %shl.i105.i142.i, -2147483520
  %84 = ptrtoint ptr %usb_buf24.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf24.i.i, align 4
  %call30.i145.i = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or22.i143.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 24576, i16 noundef zeroext -32758, ptr noundef %85, i16 noundef zeroext 1, i32 noundef 400) #6
  %86 = ptrtoint ptr %usb_buf24.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_buf24.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %probe.0.copyload160.i = load i8, ptr %87, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i145.i)
  %cmp36.i146.i = icmp slt i32 %call30.i145.i, 0
  br i1 %cmp36.i146.i, label %do.end41.i148.i, label %gl860_RTx.exit140.i.gl860_RTx.exit151.i_crit_edge

gl860_RTx.exit140.i.gl860_RTx.exit151.i_crit_edge: ; preds = %gl860_RTx.exit140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit151.i

do.end41.i148.i:                                  ; preds = %gl860_RTx.exit140.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call30.i145.i, i32 noundef 192, i32 noundef 2, i32 noundef 24576, i32 noundef 32778, i32 noundef 1) #9
  br label %gl860_RTx.exit151.i

gl860_RTx.exit151.i:                              ; preds = %do.end41.i148.i, %gl860_RTx.exit140.i.gl860_RTx.exit151.i_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %conv91.i = zext i8 %probe.0.copyload160.i to i32
  %89 = zext i8 %probe.0.copyload160.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i8 %probe.0.copyload160.i, label %do.body147.i [
    i8 38, label %gl860_RTx.exit151.i.do.body98.i_crit_edge
    i8 64, label %gl860_RTx.exit151.i.do.body98.i_crit_edge132
    i8 -106, label %gl860_RTx.exit151.i.do.body126.i_crit_edge
    i8 85, label %gl860_RTx.exit151.i.do.body126.i_crit_edge133
  ]

gl860_RTx.exit151.i.do.body126.i_crit_edge133:    ; preds = %gl860_RTx.exit151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body126.i

gl860_RTx.exit151.i.do.body126.i_crit_edge:       ; preds = %gl860_RTx.exit151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body126.i

gl860_RTx.exit151.i.do.body98.i_crit_edge132:     ; preds = %gl860_RTx.exit151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98.i

gl860_RTx.exit151.i.do.body98.i_crit_edge:        ; preds = %gl860_RTx.exit151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body98.i

do.body98.i:                                      ; preds = %gl860_RTx.exit151.i.do.body98.i_crit_edge, %gl860_RTx.exit151.i.do.body98.i_crit_edge132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %90 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp99.i = icmp sgt i32 %90, 0
  br i1 %cmp99.i, label %do.end104.i, label %do.body98.i.do.end113.i_crit_edge

do.body98.i.do.end113.i_crit_edge:                ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end113.i

do.end104.i:                                      ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv91.i.le105 = zext i8 %probe.0.copyload160.i to i32
  %call110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name39.i, i32 noundef %conv91.i.le105) #9
  br label %do.end113.i

do.end113.i:                                      ; preds = %do.end104.i, %do.body98.i.do.end113.i_crit_edge
  %91 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 2, ptr %sensor, align 2
  %add.i = add i8 %nb26.0174.i, 4
  br label %for.end177.i

do.body126.i:                                     ; preds = %gl860_RTx.exit151.i.do.body126.i_crit_edge, %gl860_RTx.exit151.i.do.body126.i_crit_edge133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %92 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp127.i = icmp sgt i32 %92, 0
  br i1 %cmp127.i, label %do.end132.i, label %do.body126.i.do.end141.i_crit_edge

do.body126.i.do.end141.i_crit_edge:               ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end141.i

do.end132.i:                                      ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv91.i.le = zext i8 %probe.0.copyload160.i to i32
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name39.i, i32 noundef %conv91.i.le) #9
  br label %do.end141.i

do.end141.i:                                      ; preds = %do.end132.i, %do.body126.i.do.end141.i_crit_edge
  %93 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 4, ptr %sensor, align 2
  %add144.i = add i8 %nb96.0173.i, 4
  br label %for.end177.i

do.body147.i:                                     ; preds = %gl860_RTx.exit151.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %94 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp148.i = icmp sgt i32 %94, 0
  br i1 %cmp148.i, label %do.end153.i, label %do.body147.i.do.end162.i_crit_edge

do.body147.i.do.end162.i_crit_edge:               ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end162.i

do.end153.i:                                      ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #8
  %call159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name39.i, i32 noundef %conv91.i) #9
  br label %do.end162.i

do.end162.i:                                      ; preds = %do.end153.i, %do.body147.i.do.end162.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %probe.0.copyload160.i)
  %cmp164.i = icmp eq i8 %probe.0.copyload160.i, 0
  %inc167.i = zext i1 %cmp164.i to i8
  %spec.select1.i = add i8 %nb26.0174.i, %inc167.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %probe.0.copyload160.i)
  %cmp170.i = icmp eq i8 %probe.0.copyload160.i, -1
  %inc173.i = zext i1 %cmp170.i to i8
  %nb96.1.i = add i8 %nb96.0173.i, %inc173.i
  tail call void @msleep(i32 noundef 3) #6
  %inc176.i = add nuw nsw i8 %ntry.1172.i, 1
  %cmp85.i = icmp ult i8 %ntry.1172.i, 3
  br i1 %cmp85.i, label %do.end162.i.for.body87.i_crit_edge, label %do.end162.i.for.end177.i_crit_edge

do.end162.i.for.end177.i_crit_edge:               ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end177.i

do.end162.i.for.body87.i_crit_edge:               ; preds = %do.end162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body87.i

for.end177.i:                                     ; preds = %do.end162.i.for.end177.i_crit_edge, %do.end141.i, %do.end113.i
  %nb96.2.i = phi i8 [ %nb96.0173.i, %do.end113.i ], [ %add144.i, %do.end141.i ], [ %nb96.1.i, %do.end162.i.for.end177.i_crit_edge ]
  %nb26.2.i = phi i8 [ %add.i, %do.end113.i ], [ %nb26.0174.i, %do.end141.i ], [ %spec.select1.i, %do.end162.i.for.end177.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %nb26.2.i)
  %cmp179.i = icmp ult i8 %nb26.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %nb96.2.i)
  %cmp182.i = icmp ult i8 %nb96.2.i, 4
  %or.cond.i = select i1 %cmp179.i, i1 %cmp182.i, i1 false
  br i1 %or.cond.i, label %for.end177.i.cleanup_crit_edge, label %if.end203thread-pre-split.i

for.end177.i.cleanup_crit_edge:                   ; preds = %for.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body186.i:                                     ; preds = %for.end.i
  br i1 %cmp187.i, label %do.end192.i, label %do.body186.i.if.end203.thread.i_crit_edge

do.body186.i.if.end203.thread.i_crit_edge:        ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203.thread.i

do.end192.i:                                      ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #8
  %call197.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name39.i) #9
  br label %if.end203.thread.i

if.end203.thread.i:                               ; preds = %do.end192.i, %do.body186.i.if.end203.thread.i_crit_edge
  %95 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 8, ptr %sensor, align 2
  br label %do.body230.i

if.end203thread-pre-split.i:                      ; preds = %for.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %96)
  %.pr162.i = load i8, ptr %sensor, align 2
  br label %if.end203.i

if.end203.i:                                      ; preds = %if.end203thread-pre-split.i, %if.end.i.if.end203.i_crit_edge
  %97 = phi i8 [ %.pr162.i, %if.end203thread-pre-split.i ], [ %.pr, %if.end.i.if.end203.i_crit_edge ]
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %97, label %do.body288.i [
    i8 1, label %if.end203.i.do.body209.i_crit_edge
    i8 8, label %if.end203.i.do.body230.i_crit_edge
    i8 4, label %do.body251.i
    i8 2, label %do.body272.i
  ]

if.end203.i.do.body230.i_crit_edge:               ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body230.i

if.end203.i.do.body209.i_crit_edge:               ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body209.i

do.body209.i:                                     ; preds = %if.end203.i.do.body209.i_crit_edge, %if.end203.i.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %99 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp210.i = icmp sgt i32 %99, 0
  br i1 %cmp210.i, label %do.body209.i.gl860_guess_sensor.exit.thread79_crit_edge, label %do.body209.i.if.end22_crit_edge

do.body209.i.if.end22_crit_edge:                  ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body209.i.gl860_guess_sensor.exit.thread79_crit_edge: ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_guess_sensor.exit.thread79

do.body230.i:                                     ; preds = %if.end203.i.do.body230.i_crit_edge, %if.end203.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %100 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp231.i = icmp sgt i32 %100, 0
  br i1 %cmp231.i, label %do.body230.i.gl860_guess_sensor.exit.thread79_crit_edge, label %do.body230.i.if.end22_crit_edge

do.body230.i.if.end22_crit_edge:                  ; preds = %do.body230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body230.i.gl860_guess_sensor.exit.thread79_crit_edge: ; preds = %do.body230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_guess_sensor.exit.thread79

do.body251.i:                                     ; preds = %if.end203.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %101 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp252.i = icmp sgt i32 %101, 0
  br i1 %cmp252.i, label %do.body251.i.gl860_guess_sensor.exit.thread79_crit_edge, label %do.body251.i.if.end22_crit_edge

do.body251.i.if.end22_crit_edge:                  ; preds = %do.body251.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body251.i.gl860_guess_sensor.exit.thread79_crit_edge: ; preds = %do.body251.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_guess_sensor.exit.thread79

do.body272.i:                                     ; preds = %if.end203.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %102 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp273.i = icmp sgt i32 %102, 0
  br i1 %cmp273.i, label %do.body272.i.gl860_guess_sensor.exit.thread79_crit_edge, label %do.body272.i.if.end22_crit_edge

do.body272.i.if.end22_crit_edge:                  ; preds = %do.body272.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body272.i.gl860_guess_sensor.exit.thread79_crit_edge: ; preds = %do.body272.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_guess_sensor.exit.thread79

do.body288.i:                                     ; preds = %if.end203.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %103 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp289.i = icmp sgt i32 %103, 0
  br i1 %cmp289.i, label %gl860_guess_sensor.exit, label %do.body288.i.cleanup_crit_edge

do.body288.i.cleanup_crit_edge:                   ; preds = %do.body288.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

gl860_guess_sensor.exit.thread79:                 ; preds = %do.body272.i.gl860_guess_sensor.exit.thread79_crit_edge, %do.body251.i.gl860_guess_sensor.exit.thread79_crit_edge, %do.body230.i.gl860_guess_sensor.exit.thread79_crit_edge, %do.body209.i.gl860_guess_sensor.exit.thread79_crit_edge
  %.str.38.sink.i.ph = phi ptr [ @.str.47, %do.body272.i.gl860_guess_sensor.exit.thread79_crit_edge ], [ @.str.44, %do.body251.i.gl860_guess_sensor.exit.thread79_crit_edge ], [ @.str.41, %do.body230.i.gl860_guess_sensor.exit.thread79_crit_edge ], [ @.str.38, %do.body209.i.gl860_guess_sensor.exit.thread79_crit_edge ]
  %name218.i82 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call220.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.38.sink.i.ph, ptr noundef %name218.i82) #9
  br label %if.end22

gl860_guess_sensor.exit:                          ; preds = %do.body288.i
  call void @__sanitizer_cov_trace_pc() #8
  %name218.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call220.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name218.i) #9
  br label %cleanup

if.end22:                                         ; preds = %gl860_guess_sensor.exit.thread79, %do.body272.i.if.end22_crit_edge, %do.body251.i.if.end22_crit_edge, %do.body230.i.if.end22_crit_edge, %do.body209.i.if.end22_crit_edge
  %cam23 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %104 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %sensor, align 2
  %switch.tableidx = add i8 %105, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %106 = icmp ult i8 %switch.tableidx, 8
  br i1 %106, label %switch.hole_check, label %if.end22.sw.epilog_crit_edge

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end22
  %switch.shifted = lshr i8 -117, %switch.tableidx
  %107 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %switch.lobit.not = icmp eq i8 %107, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %108 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.sd_config, i32 0, i32 %108
  %109 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %109)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %110 = sext i8 %switch.tableidx to i32
  %switch.gep114 = getelementptr inbounds [8 x ptr], ptr @switch.table.sd_config.55, i32 0, i32 %110
  %111 = ptrtoint ptr %switch.gep114 to i32
  call void @__asan_load4_noabort(i32 %111)
  %switch.load115 = load ptr, ptr %switch.gep114, align 4
  %112 = sext i8 %switch.tableidx to i32
  %switch.gep116 = getelementptr inbounds [8 x i8], ptr @switch.table.sd_config.56, i32 0, i32 %112
  %113 = ptrtoint ptr %switch.gep116 to i32
  call void @__asan_load1_noabort(i32 %113)
  %switch.load117 = load i8, ptr %switch.gep116, align 1
  %114 = sext i8 %switch.tableidx to i32
  %switch.gep118 = getelementptr inbounds [8 x ptr], ptr @switch.table.sd_config.57, i32 0, i32 %114
  %115 = ptrtoint ptr %switch.gep118 to i32
  call void @__asan_load4_noabort(i32 %115)
  %switch.load119 = load ptr, ptr %switch.gep118, align 4
  %sd_desc34 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 7
  %116 = ptrtoint ptr %sd_desc34 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %switch.load, ptr %sd_desc34, align 4
  %117 = ptrtoint ptr %cam23 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %switch.load115, ptr %cam23, align 4
  %nmodes36 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %118 = ptrtoint ptr %nmodes36 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %switch.load117, ptr %nmodes36, align 4
  store ptr %switch.load119, ptr @dev_init_settings, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge
  %119 = load ptr, ptr @dev_init_settings, align 4
  tail call void %119(ptr noundef %gspca_dev) #6, !callees !147
  %120 = load i32, ptr @AC50Hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %120)
  %cmp37.not = icmp eq i32 %120, 255
  br i1 %cmp37.not, label %sw.epilog.cleanup_crit_edge, label %if.then39

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv40 = trunc i32 %120 to i8
  %AC50Hz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %121 = ptrtoint ptr %AC50Hz to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv40, ptr %AC50Hz, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %sw.epilog.cleanup_crit_edge, %gl860_guess_sensor.exit, %do.body288.i.cleanup_crit_edge, %for.end177.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %gl860_guess_sensor.exit ], [ 0, %if.then39 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -1, %for.end177.i.cleanup_crit_edge ], [ -1, %do.body288.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_init_at_startup = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_init_at_startup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_init_at_startup, align 8
  %call = tail call i32 %1(ptr noundef %gspca_dev) #6
  ret i32 %call
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 11, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.52) #6
  %vmax = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %brightness, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %2 to i64
  %brightness4 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %brightness4 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %brightness4, align 2
  %conv5 = zext i16 %4 to i64
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef %conv, i64 noundef 1, i64 noundef %conv5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %contrast to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %contrast, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool8.not = icmp eq i16 %6, 0
  br i1 %tobool8.not, label %if.end.if.end17_crit_edge, label %if.then9

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = zext i16 %6 to i64
  %contrast14 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %contrast14 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %contrast14, align 2
  %conv15 = zext i16 %8 to i64
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef %conv12, i64 noundef 1, i64 noundef %conv15) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.end.if.end17_crit_edge
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 6
  %9 = ptrtoint ptr %saturation to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %saturation, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool19.not = icmp eq i16 %10, 0
  br i1 %tobool19.not, label %if.end17.if.end28_crit_edge, label %if.then20

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = zext i16 %10 to i64
  %saturation25 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %saturation25 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %saturation25, align 4
  %conv26 = zext i16 %12 to i64
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef %conv23, i64 noundef 1, i64 noundef %conv26) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.end17.if.end28_crit_edge
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %hue to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hue, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool30.not = icmp eq i16 %14, 0
  br i1 %tobool30.not, label %if.end28.if.end39_crit_edge, label %if.then31

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %conv34 = zext i16 %14 to i64
  %hue36 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %hue36 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hue36, align 2
  %conv37 = zext i16 %16 to i64
  %call38 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef %conv34, i64 noundef 1, i64 noundef %conv37) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.end28.if.end39_crit_edge
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %gamma to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %gamma, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool41.not = icmp eq i16 %18, 0
  br i1 %tobool41.not, label %if.end39.if.end50_crit_edge, label %if.then42

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %conv45 = zext i16 %18 to i64
  %gamma47 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %gamma47 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %gamma47, align 8
  %conv48 = zext i16 %20 to i64
  %call49 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963792, i64 noundef 0, i64 noundef %conv45, i64 noundef 1, i64 noundef %conv48) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then42, %if.end39.if.end50_crit_edge
  %mirror = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %mirror to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mirror, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool52.not = icmp eq i8 %22, 0
  br i1 %tobool52.not, label %if.end50.if.end61_crit_edge, label %if.then53

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %conv56 = zext i8 %22 to i64
  %mirror58 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %mirror58 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mirror58, align 8
  %conv59 = zext i8 %24 to i64
  %call60 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef %conv56, i64 noundef 1, i64 noundef %conv59) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then53, %if.end50.if.end61_crit_edge
  %flip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 9
  %25 = ptrtoint ptr %flip to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flip, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool63.not = icmp eq i8 %26, 0
  br i1 %tobool63.not, label %if.end61.if.end72_crit_edge, label %if.then64

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %conv67 = zext i8 %26 to i64
  %flip69 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %27 = ptrtoint ptr %flip69 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flip69, align 1
  %conv70 = zext i8 %28 to i64
  %call71 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef %conv67, i64 noundef 1, i64 noundef %conv70) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then64, %if.end61.if.end72_crit_edge
  %AC50Hz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 10
  %29 = ptrtoint ptr %AC50Hz to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %AC50Hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool74.not = icmp eq i8 %30, 0
  br i1 %tobool74.not, label %if.end72.if.end81_crit_edge, label %if.then75

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %AC50Hz79 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %31 = ptrtoint ptr %AC50Hz79 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %AC50Hz79, align 2
  %call80 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext %30, i64 noundef 0, i8 noundef zeroext %32) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %if.end72.if.end81_crit_edge
  %whitebal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %whitebal to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %whitebal, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool83.not = icmp eq i16 %34, 0
  br i1 %tobool83.not, label %if.end81.if.end92_crit_edge, label %if.then84

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %conv87 = zext i16 %34 to i64
  %whitebal89 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %35 = ptrtoint ptr %whitebal89 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %whitebal89, align 2
  %conv90 = zext i16 %36 to i64
  %call91 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963802, i64 noundef 0, i64 noundef %conv87, i64 noundef 1, i64 noundef %conv90) #6
  br label %if.end92

if.end92:                                         ; preds = %if.then84, %if.end81.if.end92_crit_edge
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %sharpness to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sharpness, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool94.not = icmp eq i16 %38, 0
  br i1 %tobool94.not, label %if.end92.if.end103_crit_edge, label %if.then95

if.end92.if.end103_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %conv98 = zext i16 %38 to i64
  %sharpness100 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %sharpness100 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sharpness100, align 4
  %conv101 = zext i16 %40 to i64
  %call102 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef %conv98, i64 noundef 1, i64 noundef %conv101) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then95, %if.end92.if.end103_crit_edge
  %41 = ptrtoint ptr %vmax to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vmax, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool105.not = icmp eq i16 %42, 0
  br i1 %tobool105.not, label %if.end103.if.end114_crit_edge, label %if.then106

if.end103.if.end114_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %conv109 = zext i16 %42 to i64
  %vcur110 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %43 = ptrtoint ptr %vcur110 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vcur110, align 8
  %conv112 = zext i16 %44 to i64
  %call113 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963804, i64 noundef 0, i64 noundef %conv109, i64 noundef 1, i64 noundef %conv112) #6
  br label %if.end114

if.end114:                                        ; preds = %if.then106, %if.end103.if.end114_crit_edge
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %45 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool115.not = icmp eq i32 %46, 0
  br i1 %tobool115.not, label %if.end114.cleanup_crit_edge, label %do.end

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  %47 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end114.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %do.end ], [ 0, %if.end114.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_init_pre_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %dev_init_pre_alt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_init_pre_alt, align 4
  %call = tail call i32 %1(ptr noundef %gspca_dev) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %0 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %1 to i32
  %swapRB = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %2 = ptrtoint ptr %swapRB to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %swapRB, align 8
  %conv1 = zext i8 %3 to i32
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %4 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cam, align 4
  %bytesperline = getelementptr %struct.v4l2_pix_format, ptr %5, i32 %conv, i32 4
  %6 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytesperline, align 4
  %add = add i32 %7, 1
  %mul = mul i32 %add, %conv1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 514, i16 %9)
  %cond = icmp eq i16 %9, 514
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  store i32 0, ptr @sd_pkt_scan.nSkipped, align 4
  %nbIm = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %10 = ptrtoint ptr %nbIm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbIm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %12 = icmp ult i32 %11, 10
  br i1 %12, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nuw nsw i32 %11, 1
  %13 = ptrtoint ptr %nbIm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc, ptr %nbIm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %sub = add i32 %len, -2
  %14 = load i32, ptr @sd_pkt_scan.nSkipped, align 4
  %add8 = add i32 %14, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %mul)
  %cmp9.not = icmp sgt i32 %add8, %mul
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %add8, ptr @sd_pkt_scan.nSkipped, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %14)
  %cmp13 = icmp sgt i32 %mul, %14
  br i1 %cmp13, label %if.then19, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub20 = sub i32 %mul, %14
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 %sub20
  %sub23 = sub i32 %sub, %sub20
  %add24 = add nsw i32 %mul, 1
  store i32 %add24, ptr @sd_pkt_scan.nSkipped, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.else.if.end25_crit_edge
  %len.addr.0 = phi i32 [ %sub23, %if.then19 ], [ %sub, %if.else.if.end25_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr21, %if.then19 ], [ %add.ptr, %if.else.if.end25_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end25, %if.then11, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_isoc_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_configure_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_configure_alt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_configure_alt, align 4
  %call = tail call i32 %1(ptr noundef %gspca_dev) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 29
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_post_unset_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %2 = ptrtoint ptr %dev_post_unset_alt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_post_unset_alt, align 8
  tail call void %3(ptr noundef %gspca_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_callback(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %entry.if.end46_crit_edge, label %if.then

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then:                                          ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i105.i = shl i32 %5, 8
  %or22.i = or i32 %shl.i105.i, -2147483520
  %usb_buf24.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf24.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf24.i, align 4
  %call30.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or22.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 400) #6
  %8 = ptrtoint ptr %usb_buf24.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf24.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %state.0.copyload = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp36.i = icmp slt i32 %call30.i, 0
  br i1 %cmp36.i, label %do.end41.i, label %if.then.gl860_RTx.exit_crit_edge

if.then.gl860_RTx.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %gl860_RTx.exit

do.end41.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call30.i, i32 noundef 192, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 1) #9
  br label %gl860_RTx.exit

gl860_RTx.exit:                                   ; preds = %do.end41.i, %if.then.gl860_RTx.exit_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  %11 = zext i8 %state.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %state.0.copyload, label %gl860_RTx.exit.land.lhs.true26_crit_edge [
    i8 -56, label %gl860_RTx.exit.land.lhs.true_crit_edge
    i8 64, label %gl860_RTx.exit.land.lhs.true_crit_edge74
  ]

gl860_RTx.exit.land.lhs.true_crit_edge74:         ; preds = %gl860_RTx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

gl860_RTx.exit.land.lhs.true_crit_edge:           ; preds = %gl860_RTx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

gl860_RTx.exit.land.lhs.true26_crit_edge:         ; preds = %gl860_RTx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true26

land.lhs.true:                                    ; preds = %gl860_RTx.exit.land.lhs.true_crit_edge, %gl860_RTx.exit.land.lhs.true_crit_edge74
  %nbRightUp = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %12 = ptrtoint ptr %nbRightUp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbRightUp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %13)
  %cmp10 = icmp sgt i32 %13, -4
  br i1 %cmp10, label %if.then12, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp14 = icmp sgt i32 %13, 0
  br i1 %cmp14, label %if.then12.if.end22_crit_edge, label %if.end

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %13)
  %cmp19 = icmp eq i32 %13, -3
  br i1 %cmp19, label %if.then21, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mirrorMask = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %14 = ptrtoint ptr %mirrorMask to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %mirrorMask, align 1
  %waitSet = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %15 = ptrtoint ptr %waitSet to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %waitSet, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge, %if.then12.if.end22_crit_edge
  %16 = phi i32 [ -3, %if.then21 ], [ %13, %if.end.if.end22_crit_edge ], [ 0, %if.then12.if.end22_crit_edge ]
  %dec = add nsw i32 %16, -1
  %17 = ptrtoint ptr %nbRightUp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec, ptr %nbRightUp, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %land.lhs.true.if.end24_crit_edge
  %18 = zext i8 %state.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %state.0.copyload, label %if.end24.land.lhs.true26_crit_edge [
    i8 -56, label %if.end24.if.end46_crit_edge
    i8 64, label %if.end24.if.end46_crit_edge75
  ]

if.end24.if.end46_crit_edge75:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end24.if.end46_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end24.land.lhs.true26_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end24.land.lhs.true26_crit_edge, %gl860_RTx.exit.land.lhs.true26_crit_edge
  %nbRightUp27 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %19 = ptrtoint ptr %nbRightUp27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbRightUp27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp28 = icmp slt i32 %20, 4
  br i1 %cmp28, label %if.then30, label %land.lhs.true26.if.end46_crit_edge

land.lhs.true26.if.end46_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then30:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp32 = icmp slt i32 %20, 0
  br i1 %cmp32, label %if.then30.if.end43_crit_edge, label %if.end36

if.then30.if.end43_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp38 = icmp eq i32 %20, 3
  br i1 %cmp38, label %if.then40, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %mirrorMask41 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %21 = ptrtoint ptr %mirrorMask41 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %mirrorMask41, align 1
  %waitSet42 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %22 = ptrtoint ptr %waitSet42 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %waitSet42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end36.if.end43_crit_edge, %if.then30.if.end43_crit_edge
  %23 = phi i32 [ 3, %if.then40 ], [ %20, %if.end36.if.end43_crit_edge ], [ 0, %if.then30.if.end43_crit_edge ]
  %inc = add nuw nsw i32 %23, 1
  %24 = ptrtoint ptr %nbRightUp27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %nbRightUp27, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end43, %land.lhs.true26.if.end46_crit_edge, %if.end24.if.end46_crit_edge, %if.end24.if.end46_crit_edge75, %entry.if.end46_crit_edge
  %waitSet47 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %25 = ptrtoint ptr %waitSet47 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %waitSet47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool48.not = icmp eq i8 %26, 0
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %dev_camera_settings = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %27 = ptrtoint ptr %dev_camera_settings to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_camera_settings, align 4
  %call50 = tail call i32 %28(ptr noundef %gspca_dev) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mi1320_init_settings(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mi2020_init_settings(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ov2640_init_settings(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ov9655_init_settings(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb5
    i32 9963779, label %sw.bb9
    i32 9963792, label %sw.bb13
    i32 9963796, label %sw.bb17
    i32 9963797, label %sw.bb21
    i32 9963800, label %sw.bb25
    i32 9963802, label %sw.bb29
    i32 9963803, label %sw.bb33
    i32 9963804, label %sw.bb37
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i16
  %brightness = getelementptr i8, ptr %1, i32 1026
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %brightness, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %conv3 = trunc i32 %9 to i16
  %contrast = getelementptr i8, ptr %1, i32 1030
  %10 = ptrtoint ptr %contrast to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3, ptr %contrast, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val6, align 4
  %conv7 = trunc i32 %12 to i16
  %saturation = getelementptr i8, ptr %1, i32 1036
  %13 = ptrtoint ptr %saturation to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %saturation, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val10, align 4
  %conv11 = trunc i32 %15 to i16
  %hue = getelementptr i8, ptr %1, i32 1034
  %16 = ptrtoint ptr %hue to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv11, ptr %hue, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val14, align 4
  %conv15 = trunc i32 %18 to i16
  %gamma = getelementptr i8, ptr %1, i32 1032
  %19 = ptrtoint ptr %gamma to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv15, ptr %gamma, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val18, align 4
  %conv19 = trunc i32 %21 to i8
  %mirror = getelementptr i8, ptr %1, i32 1040
  %22 = ptrtoint ptr %mirror to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv19, ptr %mirror, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val22, align 4
  %conv23 = trunc i32 %24 to i8
  %flip = getelementptr i8, ptr %1, i32 1041
  %25 = ptrtoint ptr %flip to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv23, ptr %flip, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val26, align 4
  %conv27 = trunc i32 %27 to i8
  %AC50Hz = getelementptr i8, ptr %1, i32 1042
  %28 = ptrtoint ptr %AC50Hz to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv27, ptr %AC50Hz, align 2
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val30, align 4
  %conv31 = trunc i32 %30 to i16
  %whitebal = getelementptr i8, ptr %1, i32 1038
  %31 = ptrtoint ptr %whitebal to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv31, ptr %whitebal, align 2
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val34, align 4
  %conv35 = trunc i32 %33 to i16
  %sharpness = getelementptr i8, ptr %1, i32 1028
  %34 = ptrtoint ptr %sharpness to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv35, ptr %sharpness, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val38, align 4
  %conv39 = trunc i32 %36 to i16
  %vcur40 = getelementptr i8, ptr %1, i32 1024
  %37 = ptrtoint ptr %vcur40 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv39, ptr %vcur40, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb33, %sw.bb29, %sw.bb25, %sw.bb21, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb
  %streaming = getelementptr i8, ptr %1, i32 238
  %38 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %streaming, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not = icmp eq i8 %39, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %waitSet = getelementptr i8, ptr %1, i32 1116
  %40 = ptrtoint ptr %waitSet to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %waitSet, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !129, !130, !131, !132, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__param_AC50Hz, !8, !"__param_AC50Hz", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 39, i32 1}
!9 = !{ptr @__UNIQUE_ID_AC50Hztype307, !8, !"__UNIQUE_ID_AC50Hztype307", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_AC50Hz308, !11, !"__UNIQUE_ID_AC50Hz308", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 40, i32 1}
!12 = !{ptr @__param_sensor, !13, !"__param_sensor", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 43, i32 1}
!14 = !{ptr @__UNIQUE_ID_sensortype309, !13, !"__UNIQUE_ID_sensortype309", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_sensor310, !16, !"__UNIQUE_ID_sensor310", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 44, i32 1}
!17 = !{ptr @__initcall__kmod_gspca_gl860__311_534_sd_driver_init6, !18, !"__initcall__kmod_gspca_gl860__311_534_sd_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 534, i32 1}
!19 = !{ptr @__exitcall_sd_driver_exit, !18, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 564, i32 4}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gl860_RTx._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @gl860_RTx._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 570, i32 3}
!28 = !{ptr @gl860_RTx._entry.3, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gl860_RTx._entry_ptr.5, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 573, i32 3}
!32 = !{ptr @gl860_RTx._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gl860_RTx._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 616, i32 27}
!36 = !{ptr @__param_str_AC50Hz, !8, !"__param_str_AC50Hz", i1 false, i1 false}
!37 = !{ptr @AC50Hz, !38, !"AC50Hz", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 38, i32 12}
!39 = !{ptr @__param_str_sensor, !13, !"__param_str_sensor", i1 false, i1 false}
!40 = !{ptr @__param_string_sensor, !13, !"__param_string_sensor", i1 false, i1 false}
!41 = !{ptr @sensor, !42, !"sensor", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 42, i32 13}
!43 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sd_driver, !45, !"sd_driver", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 520, i32 26}
!46 = !{ptr @sd_desc_mi1320, !47, !"sd_desc_mi1320", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 173, i32 29}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 331, i32 21}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 333, i32 26}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 335, i32 26}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 337, i32 26}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 652, i32 3}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @gl860_guess_sensor._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @gl860_guess_sensor._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 662, i32 4}
!63 = !{ptr @gl860_guess_sensor._entry.17, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @gl860_guess_sensor._entry_ptr.19, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 668, i32 4}
!67 = !{ptr @gl860_guess_sensor._entry.20, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @gl860_guess_sensor._entry_ptr.22, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 669, i32 4}
!71 = !{ptr @gl860_guess_sensor._entry.23, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @gl860_guess_sensor._entry_ptr.25, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 685, i32 6}
!75 = !{ptr @gl860_guess_sensor._entry.26, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @gl860_guess_sensor._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 693, i32 6}
!79 = !{ptr @gl860_guess_sensor._entry.29, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @gl860_guess_sensor._entry_ptr.31, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @gl860_guess_sensor._entry.32, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 700, i32 5}
!83 = !{ptr @gl860_guess_sensor._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 711, i32 4}
!86 = !{ptr @gl860_guess_sensor._entry.34, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @gl860_guess_sensor._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 717, i32 3}
!90 = !{ptr @gl860_guess_sensor._entry.37, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @gl860_guess_sensor._entry_ptr.39, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 719, i32 3}
!94 = !{ptr @gl860_guess_sensor._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @gl860_guess_sensor._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 721, i32 3}
!98 = !{ptr @gl860_guess_sensor._entry.43, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @gl860_guess_sensor._entry_ptr.45, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 723, i32 3}
!102 = !{ptr @gl860_guess_sensor._entry.46, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @gl860_guess_sensor._entry_ptr.48, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 725, i32 3}
!106 = !{ptr @gl860_guess_sensor._entry.49, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @gl860_guess_sensor._entry_ptr.51, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @mi1320_mode, !109, !"mi1320_mode", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 277, i32 31}
!110 = !{ptr @dev_init_settings, !111, !"dev_init_settings", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 21, i32 15}
!112 = !{ptr @sd_desc_mi2020, !113, !"sd_desc_mi2020", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 185, i32 29}
!114 = !{ptr @mi2020_mode, !115, !"mi2020_mode", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 223, i32 31}
!116 = !{ptr @sd_desc_ov2640, !117, !"sd_desc_ov2640", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 197, i32 29}
!118 = !{ptr @ov2640_mode, !119, !"ov2640_mode", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 250, i32 31}
!120 = !{ptr @sd_desc_ov9655, !121, !"sd_desc_ov9655", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 209, i32 29}
!122 = !{ptr @ov9655_mode, !123, !"ov9655_mode", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 298, i32 31}
!124 = !{ptr @sd_init_controls._key, !125, !"_key", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 109, i32 2}
!126 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 164, i32 3}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @sd_init_controls._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @sd_init_controls._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @sd_ctrl_ops, !133, !"sd_ctrl_ops", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 99, i32 35}
!134 = !{ptr @sd_pkt_scan.nSkipped, !135, !"nSkipped", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 423, i32 13}
!136 = !{ptr @device_table, !137, !"device_table", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/gspca/gl860/gl860.c", i32 500, i32 35}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{ptr @mi1320_init_settings, ptr @mi2020_init_settings, ptr @ov2640_init_settings, ptr @ov9655_init_settings}
!148 = !{i8 0, i8 2}
