; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/topro.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/topro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.framerates = type { ptr, i32 }
%struct.cmd = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.sd = type { %struct.gspca_dev, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, [521 x i8] }
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
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_streamparm = type { i32, %union.anon.103 }
%union.anon.103 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }

@__UNIQUE_ID_description303 = internal constant [62 x i8] c"gspca_topro.description=Topro TP6800/6810 gspca webcam driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [114 x i8] c"gspca_topro.author=Jean-Francois Moine <http://moinejf.free.fr>, Anders Blomdell <anders.blomdell@control.lth.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_topro.file=drivers/media/usb/gspca/gspca_topro\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_topro.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_topro__307_4968_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@__param_str_force_sensor = internal constant [25 x i8] c"gspca_topro.force_sensor\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_sensor = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_force_sensor = internal constant %struct.kernel_param { ptr @__param_str_force_sensor, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @force_sensor } }, section "__param", align 4
@__UNIQUE_ID_force_sensortype308 = internal constant [38 x i8] c"gspca_topro.parmtype=force_sensor:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_sensor309 = internal constant [66 x i8] c"gspca_topro.parm=force_sensor:Force sensor. 0: cx0342, 1: soi763a\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_topro\00", [20 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1698, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1698, i16 26640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr @sd_stopN, ptr null, ptr @sd_dq_callback, ptr @sd_get_jcomp, ptr @sd_set_jcomp, ptr @sd_get_streamparm, ptr @sd_set_streamparm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 38990, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@framerates = internal constant { [2 x %struct.framerates], [16 x i8] } { [2 x %struct.framerates] [%struct.framerates { ptr @rates, i32 6 }, %struct.framerates { ptr @rates, i32 6 }], [16 x i8] zeroinitializer }, align 32
@framerates_6810 = internal constant { [2 x %struct.framerates], [16 x i8] } { [2 x %struct.framerates] [%struct.framerates { ptr @rates_6810, i32 5 }, %struct.framerates { ptr @rates_6810, i32 5 }], [16 x i8] zeroinitializer }, align 32
@rates = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\1E\14\0F\0A\07\05", [26 x i8] zeroinitializer }, align 32
@rates_6810 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\1E\0F\0A\07\05", [27 x i8] zeroinitializer }, align 32
@sd_init.tp6800_preinit = internal constant { [6 x %struct.cmd], [20 x i8] } { [6 x %struct.cmd] [%struct.cmd { i8 16, i8 1 }, %struct.cmd { i8 17, i8 1 }, %struct.cmd { i8 21, i8 -97 }, %struct.cmd { i8 22, i8 -97 }, %struct.cmd { i8 23, i8 -128 }, %struct.cmd { i8 24, i8 64 }], [20 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 4044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: gpio: %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/topro.c\00", [32 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sd_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 4072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014gspca_topro: Unknown sensor %d - forced to soi763a\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.6 = internal global ptr @sd_init._entry.4, section ".printk_index", align 4
@sd_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 4079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016gspca_topro: Sensor soi763a\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.9 = internal global ptr @sd_init._entry.7, section ".printk_index", align 4
@sd_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 4084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016gspca_topro: Sensor cx0342\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.12 = internal global ptr @sd_init._entry.10, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013gspca_topro: reg_w err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013gspca_topro: reg_r err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@soi763a_6810_init.reg_init_1 = internal constant { [7 x %struct.cmd], [18 x i8] } { [7 x %struct.cmd] [%struct.cmd { i8 47, i8 47 }, %struct.cmd { i8 24, i8 -31 }, %struct.cmd { i8 37, i8 2 }, %struct.cmd { i8 33, i8 0 }, %struct.cmd { i8 63, i8 -128 }, %struct.cmd { i8 47, i8 47 }, %struct.cmd { i8 24, i8 -63 }], [18 x i8] zeroinitializer }, align 32
@soi763a_6810_init.sensor_init = internal constant { [128 x %struct.cmd], [64 x i8] } { [128 x %struct.cmd] [%struct.cmd zeroinitializer, %struct.cmd { i8 1, i8 -128 }, %struct.cmd { i8 2, i8 -128 }, %struct.cmd { i8 3, i8 -112 }, %struct.cmd { i8 4, i8 32 }, %struct.cmd { i8 5, i8 32 }, %struct.cmd { i8 6, i8 -128 }, %struct.cmd { i8 7, i8 0 }, %struct.cmd { i8 8, i8 -1 }, %struct.cmd { i8 9, i8 -1 }, %struct.cmd { i8 10, i8 118 }, %struct.cmd { i8 11, i8 48 }, %struct.cmd { i8 12, i8 32 }, %struct.cmd { i8 13, i8 32 }, %struct.cmd { i8 14, i8 -1 }, %struct.cmd { i8 15, i8 -1 }, %struct.cmd { i8 16, i8 65 }, %struct.cmd { i8 21, i8 20 }, %struct.cmd { i8 17, i8 64 }, %struct.cmd { i8 18, i8 72 }, %struct.cmd { i8 19, i8 -128 }, %struct.cmd { i8 20, i8 -128 }, %struct.cmd { i8 22, i8 3 }, %struct.cmd { i8 40, i8 -80 }, %struct.cmd { i8 113, i8 32 }, %struct.cmd { i8 117, i8 -114 }, %struct.cmd { i8 23, i8 27 }, %struct.cmd { i8 24, i8 -67 }, %struct.cmd { i8 25, i8 5 }, %struct.cmd { i8 26, i8 -10 }, %struct.cmd { i8 27, i8 4 }, %struct.cmd { i8 28, i8 127 }, %struct.cmd { i8 29, i8 -94 }, %struct.cmd { i8 30, i8 0 }, %struct.cmd { i8 31, i8 0 }, %struct.cmd { i8 32, i8 69 }, %struct.cmd { i8 33, i8 -128 }, %struct.cmd { i8 34, i8 -128 }, %struct.cmd { i8 35, i8 -18 }, %struct.cmd { i8 36, i8 80 }, %struct.cmd { i8 37, i8 122 }, %struct.cmd { i8 38, i8 -96 }, %struct.cmd { i8 39, i8 -102 }, %struct.cmd { i8 41, i8 48 }, %struct.cmd { i8 42, i8 -128 }, %struct.cmd { i8 43, i8 0 }, %struct.cmd { i8 44, i8 -84 }, %struct.cmd { i8 45, i8 5 }, %struct.cmd { i8 46, i8 -128 }, %struct.cmd { i8 47, i8 60 }, %struct.cmd { i8 48, i8 34 }, %struct.cmd { i8 49, i8 0 }, %struct.cmd { i8 50, i8 -122 }, %struct.cmd { i8 51, i8 8 }, %struct.cmd { i8 52, i8 -1 }, %struct.cmd { i8 53, i8 -1 }, %struct.cmd { i8 54, i8 -1 }, %struct.cmd { i8 55, i8 -1 }, %struct.cmd { i8 56, i8 -1 }, %struct.cmd { i8 57, i8 -1 }, %struct.cmd { i8 58, i8 -2 }, %struct.cmd { i8 59, i8 -2 }, %struct.cmd { i8 60, i8 -2 }, %struct.cmd { i8 61, i8 -2 }, %struct.cmd { i8 62, i8 -2 }, %struct.cmd { i8 63, i8 113 }, %struct.cmd { i8 64, i8 -1 }, %struct.cmd { i8 65, i8 -1 }, %struct.cmd { i8 66, i8 -1 }, %struct.cmd { i8 67, i8 -1 }, %struct.cmd { i8 68, i8 -1 }, %struct.cmd { i8 69, i8 -1 }, %struct.cmd { i8 70, i8 -1 }, %struct.cmd { i8 71, i8 -1 }, %struct.cmd { i8 72, i8 -1 }, %struct.cmd { i8 73, i8 -1 }, %struct.cmd { i8 74, i8 -2 }, %struct.cmd { i8 75, i8 -1 }, %struct.cmd { i8 76, i8 0 }, %struct.cmd { i8 77, i8 0 }, %struct.cmd { i8 78, i8 -1 }, %struct.cmd { i8 79, i8 -1 }, %struct.cmd { i8 80, i8 -1 }, %struct.cmd { i8 81, i8 -1 }, %struct.cmd { i8 82, i8 -1 }, %struct.cmd { i8 83, i8 -1 }, %struct.cmd { i8 84, i8 -1 }, %struct.cmd { i8 85, i8 -1 }, %struct.cmd { i8 86, i8 -1 }, %struct.cmd { i8 87, i8 -1 }, %struct.cmd { i8 88, i8 -1 }, %struct.cmd { i8 89, i8 -1 }, %struct.cmd { i8 90, i8 -1 }, %struct.cmd { i8 91, i8 -2 }, %struct.cmd { i8 92, i8 -1 }, %struct.cmd { i8 93, i8 -113 }, %struct.cmd { i8 94, i8 -1 }, %struct.cmd { i8 95, i8 -113 }, %struct.cmd { i8 96, i8 -94 }, %struct.cmd { i8 97, i8 74 }, %struct.cmd { i8 98, i8 -13 }, %struct.cmd { i8 99, i8 117 }, %struct.cmd { i8 100, i8 -16 }, %struct.cmd { i8 101, i8 0 }, %struct.cmd { i8 102, i8 85 }, %struct.cmd { i8 103, i8 -110 }, %struct.cmd { i8 104, i8 -96 }, %struct.cmd { i8 105, i8 74 }, %struct.cmd { i8 106, i8 34 }, %struct.cmd { i8 107, i8 0 }, %struct.cmd { i8 108, i8 51 }, %struct.cmd { i8 109, i8 68 }, %struct.cmd { i8 110, i8 34 }, %struct.cmd { i8 111, i8 -124 }, %struct.cmd { i8 112, i8 11 }, %struct.cmd { i8 114, i8 16 }, %struct.cmd { i8 115, i8 80 }, %struct.cmd { i8 116, i8 33 }, %struct.cmd { i8 118, i8 0 }, %struct.cmd { i8 119, i8 -91 }, %struct.cmd { i8 120, i8 -128 }, %struct.cmd { i8 121, i8 -128 }, %struct.cmd { i8 122, i8 -128 }, %struct.cmd { i8 123, i8 -30 }, %struct.cmd { i8 124, i8 0 }, %struct.cmd { i8 125, i8 -9 }, %struct.cmd { i8 126, i8 0 }, %struct.cmd { i8 127, i8 0 }], [64 x i8] zeroinitializer }, align 32
@tp6810_ov_init_common = internal constant { [18 x %struct.cmd], [60 x i8] } { [18 x %struct.cmd] [%struct.cmd { i8 28, i8 0 }, %struct.cmd { i8 16, i8 0 }, %struct.cmd { i8 78, i8 0 }, %struct.cmd { i8 79, i8 0 }, %struct.cmd { i8 80, i8 -1 }, %struct.cmd { i8 81, i8 3 }, %struct.cmd { i8 0, i8 7 }, %struct.cmd { i8 82, i8 64 }, %struct.cmd { i8 83, i8 64 }, %struct.cmd { i8 84, i8 64 }, %struct.cmd { i8 121, i8 3 }, %struct.cmd { i8 47, i8 23 }, %struct.cmd { i8 48, i8 24 }, %struct.cmd { i8 33, i8 0 }, %struct.cmd { i8 63, i8 -122 }, %struct.cmd { i8 37, i8 24 }, %struct.cmd { i8 38, i8 15 }, %struct.cmd { i8 123, i8 -112 }], [60 x i8] zeroinitializer }, align 32
@cx0342_6810_init.reg_init_1 = internal constant { [9 x %struct.cmd], [46 x i8] } { [9 x %struct.cmd] [%struct.cmd { i8 47, i8 47 }, %struct.cmd { i8 37, i8 2 }, %struct.cmd { i8 33, i8 0 }, %struct.cmd { i8 63, i8 -128 }, %struct.cmd { i8 47, i8 47 }, %struct.cmd { i8 24, i8 -31 }, %struct.cmd { i8 24, i8 -63 }, %struct.cmd { i8 24, i8 -31 }, %struct.cmd { i8 17, i8 0 }], [46 x i8] zeroinitializer }, align 32
@cx0342_6810_init.sensor_init = internal constant { [31 x %struct.cmd], [34 x i8] } { [31 x %struct.cmd] [%struct.cmd { i8 38, i8 7 }, %struct.cmd { i8 35, i8 88 }, %struct.cmd { i8 80, i8 40 }, %struct.cmd { i8 82, i8 40 }, %struct.cmd { i8 84, i8 80 }, %struct.cmd { i8 85, i8 3 }, %struct.cmd { i8 88, i8 -1 }, %struct.cmd { i8 89, i8 7 }, %struct.cmd { i8 90, i8 -1 }, %struct.cmd { i8 91, i8 7 }, %struct.cmd { i8 -128, i8 92 }, %struct.cmd { i8 -127, i8 1 }, %struct.cmd { i8 -124, i8 -4 }, %struct.cmd { i8 -123, i8 3 }, %struct.cmd { i8 -122, i8 0 }, %struct.cmd { i8 -121, i8 0 }, %struct.cmd { i8 32, i8 64 }, %struct.cmd { i8 28, i8 1 }, %struct.cmd { i8 64, i8 0 }, %struct.cmd { i8 32, i8 2 }, %struct.cmd { i8 115, i8 5 }, %struct.cmd { i8 48, i8 0 }, %struct.cmd { i8 51, i8 0 }, %struct.cmd { i8 52, i8 1 }, %struct.cmd { i8 53, i8 11 }, %struct.cmd { i8 54, i8 11 }, %struct.cmd { i8 55, i8 7 }, %struct.cmd { i8 76, i8 64 }, %struct.cmd { i8 77, i8 2 }, %struct.cmd { i8 39, i8 -127 }, %struct.cmd { i8 37, i8 1 }], [34 x i8] zeroinitializer }, align 32
@tp6810_cx_init_common = internal constant { [23 x %struct.cmd], [50 x i8] } { [23 x %struct.cmd] [%struct.cmd { i8 28, i8 0 }, %struct.cmd { i8 16, i8 0 }, %struct.cmd { i8 78, i8 0 }, %struct.cmd { i8 79, i8 0 }, %struct.cmd { i8 80, i8 -1 }, %struct.cmd { i8 81, i8 3 }, %struct.cmd { i8 0, i8 7 }, %struct.cmd { i8 121, i8 3 }, %struct.cmd { i8 47, i8 55 }, %struct.cmd { i8 48, i8 16 }, %struct.cmd { i8 33, i8 0 }, %struct.cmd { i8 82, i8 64 }, %struct.cmd { i8 83, i8 64 }, %struct.cmd { i8 84, i8 64 }, %struct.cmd { i8 48, i8 24 }, %struct.cmd { i8 75, i8 0 }, %struct.cmd { i8 63, i8 -125 }, %struct.cmd { i8 121, i8 5 }, %struct.cmd { i8 33, i8 0 }, %struct.cmd { i8 124, i8 4 }, %struct.cmd { i8 37, i8 20 }, %struct.cmd { i8 38, i8 15 }, %struct.cmd { i8 123, i8 16 }], [50 x i8] zeroinitializer }, align 32
@cx0342_timing_seq = internal constant { [35 x %struct.cmd], [58 x i8] } { [35 x %struct.cmd] [%struct.cmd { i8 -110, i8 32 }, %struct.cmd { i8 -108, i8 36 }, %struct.cmd { i8 -107, i8 0 }, %struct.cmd { i8 -106, i8 47 }, %struct.cmd { i8 -105, i8 0 }, %struct.cmd { i8 -96, i8 2 }, %struct.cmd { i8 -95, i8 0 }, %struct.cmd { i8 -94, i8 32 }, %struct.cmd { i8 -93, i8 0 }, %struct.cmd { i8 -92, i8 -28 }, %struct.cmd { i8 -91, i8 0 }, %struct.cmd { i8 -90, i8 -18 }, %struct.cmd { i8 -89, i8 0 }, %struct.cmd { i8 -80, i8 48 }, %struct.cmd { i8 -79, i8 0 }, %struct.cmd { i8 -64, i8 52 }, %struct.cmd { i8 -62, i8 -30 }, %struct.cmd { i8 -61, i8 0 }, %struct.cmd { i8 -60, i8 -10 }, %struct.cmd { i8 -59, i8 0 }, %struct.cmd { i8 -58, i8 -12 }, %struct.cmd { i8 -57, i8 2 }, %struct.cmd { i8 -48, i8 38 }, %struct.cmd { i8 -47, i8 0 }, %struct.cmd { i8 -46, i8 -30 }, %struct.cmd { i8 -45, i8 0 }, %struct.cmd { i8 -32, i8 38 }, %struct.cmd { i8 -30, i8 41 }, %struct.cmd { i8 -28, i8 -16 }, %struct.cmd { i8 -27, i8 0 }, %struct.cmd { i8 -26, i8 -13 }, %struct.cmd { i8 -25, i8 0 }, %struct.cmd { i8 -16, i8 36 }, %struct.cmd { i8 -14, i8 2 }, %struct.cmd { i8 37, i8 1 }], [58 x i8] zeroinitializer }, align 32
@set_dqt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: q %d -> %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_dqt\00", [24 x i8] zeroinitializer }, align 32
@set_dqt._entry_ptr = internal global ptr @set_dqt._entry, section ".printk_index", align 4
@jpeg_q = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"XMC977--$$\1E\1E\1A\1A\16\16^", [47 x i8] zeroinitializer }, align 32
@DQT = internal constant { [17 x [130 x i8]], [574 x i8] } { [17 x [130 x i8]] [[130 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\01\04\04\04\06\05\06\0B\06\06\0B\18\10\0E\10\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", [130 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\01\08\09\09\0C\0A\0C\17\0D\0D\171!\1C!11111111111111111111111111111111111111111111111111", [130 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\06\06\06\04\04\04\04\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\01\0C\0D\0D\12\0F\12#\13\13#J1*1JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ", [130 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\08\08\08\04\04\04\04\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc", [130 x i8] c"\00\04\05\05\05\05\05\05\05\05\05\0A\0A\0A\05\05\05\05\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\01\11\16\16\1E\1A\1E:  :{RFR{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{", [130 x i8] c"\00\04\06\06\06\06\06\06\06\06\06\0C\0C\0C\06\06\06\06\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\01\11\1B\1B$\1F$F''F\94cTc\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94", [130 x i8] c"\00\05\07\07\07\07\07\07\07\07\07\0E\0E\0E\07\07\07\07\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E!!!!!!!!!!!!!!!!!!!!!\01\15\1F\1F*$*R--R\ADsbs\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD", [130 x i8] c"\00\05\08\08\08\08\08\08\08\08\08\10\10\10\08\08\08\08\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10&&&&&&&&&&&&&&&&&&&&&\01\15$$0*0^44^\C6\84p\84\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6", [130 x i8] c"\00\06\0A\0A\0A\0A\0A\0A\0A\0A\0A\14\14\14\0A\0A\0A\0A\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14/////////////////////\01\19--<4<uAAu\F7\A5\8C\A5\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7\F7", [130 x i8] c"\00\06\0C\0C\0C\0C\0C\0C\0C\0C\0C\18\18\18\0C\0C\0C\0C\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18999999999999999999999\01\1966H?H\8DNN\8D\FF\C6\A8\C6\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [130 x i8] c"\00\07\0E\0E\0E\0E\0E\0E\0E\0E\0E\1C\1C\1C\0E\0E\0E\0E\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1CBBBBBBBBBBBBBBBBBBBBB\01\1D??TIT\A4[[\A4\FF\E7\C4\E7\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [130 x i8] c"\00\07\10\10\10\10\10\10\10\10\10   \10\10\10\10                          LLLLLLLLLLLLLLLLLLLLL\01\1DHH`T`\BChh\BC\FF\FF\E0\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [130 x i8] c"\00\08\14\14\14\14\14\14\14\14\14(((\14\14\14\14((((((((((((((((((((((((((_____________________\01\22ZZxix\EB\82\82\EB\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [130 x i8] c"\00\08\18\18\18\18\18\18\18\18\18000\18\18\18\1800000000000000000000000000rrrrrrrrrrrrrrrrrrrrr\01\22ll\90~\90\FF\9C\9C\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [130 x i8] c"\00\0A\1C\1C\1C\1C\1C\1C\1C\1C\1C888\1C\1C\1C\1C88888888888888888888888888\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\01*~~\A8\93\A8\FF\B6\B6\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [130 x i8] c"\00\0A         @@@    @@@@@@@@@@@@@@@@@@@@@@@@@@\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\01*\90\90\C0\A8\C0\FF\D0\D0\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [130 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\01\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04"], [574 x i8] zeroinitializer }, align 32
@jpeg_head = internal constant { [521 x i8], [151 x i8] } { [521 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01^\00\00\02\03\01\01\01\01\01\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\10\00\02\01\02\04\04\03\04\07\05\04\06\01\00\00W\01\02\03\00\11\04\12!1\13AQa\05\222\14q\81\91\15#BRb\A1\B1\063r\C1\D1$CS\82\164\92\A2\E1\F1\F0\07\08\17\18%&'(5678DEFGHTUVWXcdefghstuvwx\83\84\85\86\87\88\93\94\95\96\97\98\A3\A4\A5\A6\A7\A8\B2\B3\B4\B5\B6\B7\B8\C2\C3\C4\C5\C6\C7\C8\D2\D3\D4\D5\D6\D7\D8\E2\E3\E4\E5\E6\E7\E8\F2\F3\F4\F5\F6\F7\F8\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\11\00\02\01\02\04\04\03\04\07\05\04\06\01\00\00W\00\01\11\02!\03\121A\13\22Qa\042q\05\14#B3R\81\91\A1\B1\F0\06\15\C1\D1\E1$Cb\F1\16%4Sr\82\92\07\08\17\18&'(5678DEFGHTUVWXcdefghstuvwx\83\84\85\86\87\88\93\94\95\96\97\98\A2\A3\A4\A5\A6\A7\A8\B2\B3\B4\B5\B6\B7\B8\C2\C3\C4\C5\C6\C7\C8\D2\D3\D4\D5\D6\D7\D8\E2\E3\E4\E5\E6\E7\E8\F2\F3\F4\F5\F6\F7\F8\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [151 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"topro:4885:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 4915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_topro: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@setgamma.gamma_tb = internal constant { [6 x [3 x [1024 x i8]]], [4608 x i8] } { [6 x [3 x [1024 x i8]]] [[3 x [1024 x i8]] [[1024 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\02\02\03\05\07\07\08\09\09\0A\0C\0C\0D\0E\0E\10\11\11\12\14\14\15\16\16\17\17\18\1A\1A\1B\1B\1C\1E\1E\1F\1F  \22##%%&&''(())+,,--//00113344455778899::;;;<<==??@@@BBCCDDDEEGGGHHIIJJJKKKLLMMMOOPPPRRRSSTTTUUUVVXXXYYYZZZ[[[\\\\\\^^^___```aaabbbccceeefffggghhhiiiijjjlllmmmnnnnooopppqqqqsssttttuuuwwwwxxxyyyyzzzz{{{||||}}}}\7F\7F\7F\80\80\80\80\81\81\81\81\82\82\82\82\84\84\84\85\85\85\85\86\86\86\86\88\88\88\88\89\89\89\89\8A\8A\8A\8A\8B\8B\8B\8B\8D\8D\8D\8D\8E\8E\8E\8E\8F\8F\8F\8F\90\90\90\90\90\91\91\91\91\92\92\92\92\93\93\93\93\94\94\94\94\96\96\96\96\96\97\97\97\97\98\98\98\98\99\99\99\99\99\9A\9A\9A\9A\9B\9B\9B\9B\9C\9C\9C\9C\9C\9D\9D\9D\9D\9E\9E\9E\9E\9E\A0\A0\A0\A0\A1\A1\A1\A1\A1\A2\A2\A2\A2\A3\A3\A3\A3\A3\A4\A4\A4\A4\A4\A5\A5\A5\A5\A6\A6\A6\A6\A6\A8\A8\A8\A8\A8\A9\A9\A9\A9\AB\AB\AB\AB\AB\AC\AC\AC\AC\AC\AD\AD\AD\AD\AE\AE\AE\AE\AE\AF\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B4\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\F0\F0\F0\F0\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB", [1024 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\02\02\03\05\07\07\08\09\09\0A\0C\0C\0D\0E\0E\10\11\11\12\14\14\15\16\16\17\17\18\1A\1A\1B\1B\1C\1E\1E\1F\1F  \22##%%&&''(())+,,--//00113344455778899::;;;<<==??@@@BBCCDDDEEGGGHHIIJJJKKKLLMMMOOPPPRRRSSTTTUUUVVXXXYYYZZZ[[[\\\\\\^^^___```aaabbbccceeefffggghhhiiiijjjlllmmmnnnnooopppqqqqsssttttuuuwwwwxxxyyyyzzzz{{{||||}}}}\7F\7F\7F\80\80\80\80\81\81\81\81\82\82\82\82\84\84\84\85\85\85\85\86\86\86\86\88\88\88\88\89\89\89\89\8A\8A\8A\8A\8B\8B\8B\8B\8D\8D\8D\8D\8E\8E\8E\8E\8F\8F\8F\8F\90\90\90\90\90\91\91\91\91\92\92\92\92\93\93\93\93\94\94\94\94\96\96\96\96\96\97\97\97\97\98\98\98\98\99\99\99\99\99\9A\9A\9A\9A\9B\9B\9B\9B\9C\9C\9C\9C\9C\9D\9D\9D\9D\9E\9E\9E\9E\9E\A0\A0\A0\A0\A1\A1\A1\A1\A1\A2\A2\A2\A2\A3\A3\A3\A3\A3\A4\A4\A4\A4\A4\A5\A5\A5\A5\A6\A6\A6\A6\A6\A8\A8\A8\A8\A8\A9\A9\A9\A9\AB\AB\AB\AB\AB\AC\AC\AC\AC\AC\AD\AD\AD\AD\AE\AE\AE\AE\AE\AF\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B4\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\F0\F0\F0\F0\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB", [1024 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\02\02\03\05\07\07\08\09\09\0A\0C\0C\0D\0E\0E\10\11\11\12\14\14\15\16\16\17\17\18\1A\1A\1B\1B\1C\1E\1E\1F\1F  \22##%%&&''(())+,,--//00113344455778899::;;;<<==??@@@BBCCDDDEEGGGHHIIJJJKKKLLMMMOOPPPRRRSSTTTUUUVVXXXYYYZZZ[[[\\\\\\^^^___```aaabbbccceeefffggghhhiiiijjjlllmmmnnnnooopppqqqqsssttttuuuvwwwxxxyyyyzzzz{{{||||}}}}\7F\7F\7F\80\80\80\80\81\81\81\81\82\82\82\82\84\84\84\85\85\85\85\86\86\86\86\88\88\88\88\89\89\89\89\8A\8A\8A\8A\8B\8B\8B\8B\8D\8D\8D\8D\8E\8E\8E\8E\8F\8F\8F\8F\90\90\90\90\90\91\91\91\91\92\92\92\92\93\93\93\93\94\94\94\94\96\96\96\96\96\97\97\97\97\98\98\98\98\99\99\99\99\99\9A\9A\9A\9A\9B\9B\9B\9B\9C\9C\9C\9C\9C\9D\9D\9D\9D\9E\9E\9E\9E\9E\A0\A0\A0\A0\A1\A1\A1\A1\A1\A2\A2\A2\A2\A3\A3\A3\A3\A3\A4\A4\A4\A4\A4\A5\A5\A5\A5\A6\A6\A6\A6\A6\A8\A8\A8\A8\A8\A9\A9\A9\A9\AB\AB\AB\AB\AB\AC\AC\AC\AC\AC\AD\AD\AD\AD\AE\AE\AE\AE\AE\AF\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B4\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\F0\F0\F0\F0\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB"], [3 x [1024 x i8]] [[1024 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\05\07\08\09\0A\0C\0D\0E\10\11\12\14\15\16\17\18\1A\1A\1B\1C\1E\1F \22\22#%&''()++,-//01334557889::;<<=??@BBCCDEEGGHIIJJKKLMMOOPPRRSSTTUVVXXYYZZ[[\\\\^^^__``aabbcceeeffgghhiiijjllmmmnnoooppqqssstttuuwwwxxyyyzzz{{|||}}}\7F\7F\80\80\80\81\81\81\82\82\82\84\84\84\85\85\85\86\86\86\88\88\88\89\89\89\8A\8A\8A\8B\8B\8B\8D\8D\8D\8E\8E\8E\8F\8F\8F\90\90\90\91\91\91\92\92\92\92\93\93\93\94\94\94\96\96\96\97\97\97\97\98\98\98\99\99\99\9A\9A\9A\9A\9B\9B\9B\9C\9C\9C\9C\9D\9D\9D\9E\9E\9E\9E\A0\A0\A0\A1\A1\A1\A1\A2\A2\A2\A2\A3\A3\A3\A4\A4\A4\A4\A5\A5\A5\A5\A6\A6\A6\A8\A8\A8\A8\A9\A9\A9\A9\AB\AB\AB\AB\AC\AC\AC\AD\AD\AD\AD\AE\AE\AE\AE\AF\AF\AF\AF\B0\B0\B0\B0\B1\B1\B1\B1\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B9\B9\B9\B9\BA\BA\BA\BA\BC\BC\BC\BC\BD\BD\BD\BD\BD\BE\BE\BE\BE\BF\BF\BF\BF\C0\C0\C0\C0\C0\C2\C2\C2\C2\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C9\C9\C9\C9\C9\CA\CA\CA\CA\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CD\CD\CD\CD\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\D0\D0\D0\D0\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [1024 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\05\07\07\08\09\0A\0C\0D\0E\10\10\11\12\14\15\15\16\17\18\1A\1A\1B\1C\1E\1E\1F  \22#%%&''())+,,--/00113445578899::;;<==??@@BBCCDDEEGGHHIIJJKKLLMMMOOPPRRSSSTTUUVVVXXYYZZZ[[\\\\\\^^___```aabbbcceeefffggghhiiijjjlllmmmnnnooopppqqqssstttuuuwwwxxxyyyyzzz{{{||||}}}\7F\7F\7F\80\80\80\80\81\81\81\82\82\82\82\84\84\84\85\85\85\85\86\86\86\88\88\88\88\89\89\89\89\8A\8A\8A\8B\8B\8B\8B\8D\8D\8D\8D\8E\8E\8E\8E\8F\8F\8F\90\90\90\90\91\91\91\91\92\92\92\92\93\93\93\93\94\94\94\94\96\96\96\96\97\97\97\97\98\98\98\98\99\99\99\99\9A\9A\9A\9A\9A\9B\9B\9B\9B\9C\9C\9C\9C\9D\9D\9D\9D\9E\9E\9E\9E\9E\A0\A0\A0\A0\A1\A1\A1\A1\A2\A2\A2\A2\A2\A3\A3\A3\A3\A4\A4\A4\A4\A4\A5\A5\A5\A5\A6\A6\A6\A6\A6\A8\A8\A8\A8\A9\A9\A9\A9\A9\AB\AB\AB\AB\AC\AC\AC\AC\AC\AD\AD\AD\AD\AD\AE\AE\AE\AE\AF\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B4\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [1024 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\05\05\07\08\09\0A\0A\0C\0D\0E\0E\10\11\12\12\14\15\16\16\17\18\18\1A\1B\1B\1C\1E\1E\1F\1F \22\22##%&&''())++,,--/0011334455778899::;;;<<==??@@BBBCCDDEEGGGHHIIIJJKKKLLMMMOOPPPRRRSSTTTUUUVVXXXYYYZZZ[[[\\\\\\^^^___```aaabbbccceeeffffggghhhiiijjjjlllmmmmnnnoooopppqqqqsssttttuuuuwwwxxxxyyyyzzzz{{{{||||}}}}\7F\7F\7F\7F\80\80\80\80\81\81\81\81\82\82\82\82\84\84\84\84\85\85\85\85\86\86\86\86\88\88\88\88\88\89\89\89\89\8A\8A\8A\8A\8B\8B\8B\8B\8B\8D\8D\8D\8D\8E\8E\8E\8E\8E\8F\8F\8F\8F\90\90\90\90\90\91\91\91\91\92\92\92\92\92\93\93\93\93\94\94\94\94\94\96\96\96\96\96\97\97\97\97\97\98\98\98\98\99\99\99\99\99\9A\9A\9A\9A\9A\9B\9B\9B\9B\9B\9C\9C\9C\9C\9C\9D\9D\9D\9D\9D\9E\9E\9E\9E\9E\A0\A0\A0\A0\A0\A1\A1\A1\A1\A1\A2\A2\A2\A2\A2\A3\A3\A3\A3\A3\A4\A4\A4\A4\A4\A4\A5\A5\A5\A5\A5\A6\A6\A6\A6\A6\A8\A8\A8\A8\A8\A9\A9\A9\A9\A9\A9\AB\AB\AB\AB\AB\AC\AC\AC\AC\AC\AD\AD\AD\AD\AD\AD\AE\AE\AE\AE\AE\AF\AF\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B3\B3\B4\B4\B4\B4\B4\B6\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B9\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C0\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF"], [3 x [1024 x i8]] [[1024 x i8] c"\00\01\02\05\07\08\0A\0C\0D\0E\10\12\14\15\16\17\18\1A\1B\1C\1E\1F \22#%&'()+,--/0134457889:;;<=??@BBCDDEGGHIIJKKLLMOOPPRSSTTUUVVXXYZZ[[\\\\^^__``aabbcceeeffgghhiijjjllmmnnnoopppqqsssttuuuwwxxxyyyzz{{{|||}}\7F\7F\7F\80\80\80\81\81\81\82\82\82\84\84\84\85\85\85\86\86\86\88\88\88\89\89\89\8A\8A\8A\8B\8B\8B\8D\8D\8D\8D\8E\8E\8E\8F\8F\8F\90\90\90\91\91\91\91\92\92\92\93\93\93\93\94\94\94\96\96\96\97\97\97\97\98\98\98\98\99\99\99\9A\9A\9A\9A\9B\9B\9B\9B\9C\9C\9C\9D\9D\9D\9D\9E\9E\9E\9E\A0\A0\A0\A0\A1\A1\A1\A1\A2\A2\A2\A2\A3\A3\A3\A4\A4\A4\A4\A5\A5\A5\A5\A5\A6\A6\A6\A6\A8\A8\A8\A8\A9\A9\A9\A9\AB\AB\AB\AB\AC\AC\AC\AC\AD\AD\AD\AD\AD\AE\AE\AE\AE\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B4\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B9\B9\B9\B9\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C2\C2\C2\C2\C3\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB", [1024 x i8] c"\00\00\00\00\01\02\03\05\07\08\09\0A\0D\0E\10\11\12\14\15\16\16\17\18\1A\1B\1C\1E\1F  \22#%&&'())+,--/001334557889::;;<==??@BBCCDDEEGGHHIJJKKLLMMMOOPPRRSSTTUUVVVXXYYZZZ[[\\\\\\^^___``aaabbccceeeffggghhhiiijjlllmmmnnnooopppqqqsssstttuuuwwwxxxyyyyzzz{{{{|||}}}}\7F\7F\7F\80\80\80\80\81\81\81\82\82\82\82\84\84\84\84\85\85\85\85\86\86\86\88\88\88\88\89\89\89\89\8A\8A\8A\8A\8B\8B\8B\8B\8D\8D\8D\8D\8E\8E\8E\8E\8F\8F\8F\8F\90\90\90\90\91\91\91\91\91\92\92\92\92\93\93\93\93\94\94\94\94\94\96\96\96\96\97\97\97\97\98\98\98\98\98\99\99\99\99\99\9A\9A\9A\9A\9B\9B\9B\9B\9B\9C\9C\9C\9C\9D\9D\9D\9D\9D\9E\9E\9E\9E\9E\A0\A0\A0\A0\A0\A1\A1\A1\A1\A1\A2\A2\A2\A2\A2\A3\A3\A3\A3\A3\A4\A4\A4\A4\A4\A5\A5\A5\A5\A5\A6\A6\A6\A6\A6\A8\A8\A8\A8\A8\A9\A9\A9\A9\A9\AB\AB\AB\AB\AB\AC\AC\AC\AC\AC\AC\AD\AD\AD\AD\AD\AE\AE\AE\AE\AE\AF\AF\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B3\B3\B4\B4\B4\B4\B4\B4\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B8\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C0\C2\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB", [1024 x i8] c"\00\00\00\01\02\05\07\08\09\0A\0C\0E\10\11\12\14\15\16\17\18\1A\1B\1C\1E\1F  \22#%&'(()+,--/01134557889::;<<=??@@BCCDDEGGHHIJJKKLLMMOOPPRRSSTTUUVVXXYYZZ[[\\\\\\^^__``aaabbcceeeffggghhiiijjjllmmmnnnoopppqqqssstttuuuwwxxxyyyzzzz{{{|||}}}\7F\7F\7F\80\80\80\81\81\81\81\82\82\82\84\84\84\85\85\85\85\86\86\86\88\88\88\88\89\89\89\8A\8A\8A\8A\8B\8B\8B\8B\8D\8D\8D\8E\8E\8E\8E\8F\8F\8F\8F\90\90\90\91\91\91\91\92\92\92\92\93\93\93\93\94\94\94\94\96\96\96\96\97\97\97\97\98\98\98\98\99\99\99\99\9A\9A\9A\9A\9B\9B\9B\9B\9B\9C\9C\9C\9C\9D\9D\9D\9D\9E\9E\9E\9E\9E\A0\A0\A0\A0\A1\A1\A1\A1\A2\A2\A2\A2\A2\A3\A3\A3\A3\A4\A4\A4\A4\A4\A5\A5\A5\A5\A5\A6\A6\A6\A6\A8\A8\A8\A8\A8\A9\A9\A9\A9\A9\AB\AB\AB\AB\AB\AC\AC\AC\AC\AD\AD\AD\AD\AD\AE\AE\AE\AE\AE\AF\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B3\B4\B3\B4\B4\B4\B6\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B9\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C2\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB"], [3 x [1024 x i8]] [[1024 x i8] c"\08\09\0C\0D\10\11\14\15\17\18\1A\1C\1E\1F #%&'(+,-/01345789:;<=?@BCDEGHHIJKLMMOPRSSTUVVXYZZ[\\\\^__`aabcceffghhiijllmmnooppqssttuuwwxxyzz{{||}}\7F\7F\80\80\81\81\82\82\84\84\85\85\86\86\86\88\88\89\89\8A\8A\8B\8B\8D\8D\8D\8E\8E\8F\8F\90\90\91\91\91\92\92\93\93\93\94\94\96\96\97\97\97\98\98\99\99\99\9A\9A\9A\9B\9B\9C\9C\9C\9D\9D\9E\9E\9E\A0\A0\A0\A1\A1\A2\A2\A2\A3\A3\A3\A4\A4\A4\A5\A5\A5\A6\A6\A8\A8\A8\A9\A9\A9\AB\AB\AB\AC\AC\AC\AD\AD\AD\AE\AE\AE\AF\AF\AF\B0\B0\B0\B1\B1\B1\B2\B2\B2\B2\B3\B3\B3\B4\B4\B4\B6\B6\B6\B7\B7\B7\B8\B8\B8\B8\B9\B9\B9\BA\BA\BA\BC\BC\BC\BC\BD\BD\BD\BE\BE\BE\BE\BF\BF\BF\C0\C0\C0\C0\C2\C2\C2\C3\C3\C3\C3\C4\C4\C4\C5\C5\C5\C5\C6\C6\C6\C6\C7\C7\C7\C9\C9\C9\C9\CA\CA\CA\CA\CB\CB\CB\CB\CC\CC\CC\CD\CD\CD\CD\CE\CE\CE\CE\CF\CF\CF\CF\D0\D0\D0\D0\D1\D1\D1\D1\D3\D3\D3\D3\D4\D4\D4\D4\D6\D6\D6\D6\D7\D7\D7\D7\D8\D8\D8\D8\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DD\DD\DD\DD\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E1\E1\E1\E1\E2\E2\E2\E2\E2\E3\E3\E3\E3\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\EB\EB\EB\EB\EB\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [1024 x i8] c"\03\05\07\09\0A\0C\0D\10\11\12\14\15\17\18\1A\1B\1C\1E\1F \22#%&'()+,,-/0133457889:;;<=??@BBCDEEGGHIIJKKLMMOOPRRSSTTUUVXXYYZZ[[\\\\^^__``aabbcceeffggghhiijjlllmmnnoooppqqqsstttuuwwwxxyyyzzz{{{||}}}\7F\7F\7F\80\80\80\81\81\81\82\82\82\84\84\84\85\85\85\86\86\86\88\88\88\89\89\89\8A\8A\8A\8B\8B\8B\8D\8D\8D\8E\8E\8E\8E\8F\8F\8F\90\90\90\91\91\91\91\92\92\92\93\93\93\93\94\94\94\96\96\96\96\97\97\97\98\98\98\98\99\99\99\9A\9A\9A\9A\9B\9B\9B\9B\9C\9C\9C\9C\9D\9D\9D\9E\9E\9E\9E\A0\A0\A0\A0\A1\A1\A1\A1\A2\A2\A2\A2\A3\A3\A3\A3\A4\A4\A4\A4\A5\A5\A5\A5\A6\A6\A6\A6\A8\A8\A8\A8\A9\A9\A9\A9\A9\AB\AB\AB\AB\AC\AC\AC\AC\AD\AD\AD\AD\AD\AE\AE\AE\AE\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B3\B4\B4\B4\B4\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C7\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [1024 x i8] c"\07\08\0A\0C\0E\10\12\14\16\17\18\1B\1C\1E\1F #%&'()+-/01345789:;;<=?@BCDDEGHIJJKLMMOPRRSTUUVXXYZ[[\\^^__`aabcceefgghhijjllmmnnoppqqssttuuwwxxyyzz{{||}}\7F\7F\80\80\81\81\81\82\82\84\84\85\85\86\86\88\88\88\89\89\8A\8A\8B\8B\8B\8D\8D\8E\8E\8E\8F\8F\90\90\90\91\91\92\92\92\93\93\94\94\94\96\96\96\97\97\98\98\98\99\99\99\9A\9A\9B\9B\9B\9C\9C\9C\9D\9D\9D\9E\9E\9E\A0\A0\A1\A1\A1\A2\A2\A2\A3\A3\A3\A4\A4\A4\A5\A5\A5\A6\A6\A6\A8\A8\A8\A8\A9\A9\A9\AB\AB\AB\AC\AC\AC\AD\AD\AD\AE\AE\AE\AF\AF\AF\AF\B0\B0\B0\B1\B1\B1\B2\B2\B2\B2\B3\B3\B3\B4\B4\B4\B4\B6\B6\B6\B7\B7\B7\B7\B8\B8\B8\B9\B9\B9\B9\BA\BA\BA\BC\BC\BC\BC\BD\BD\BD\BD\BE\BE\BE\BF\BF\BF\BF\C0\C0\C0\C0\C2\C2\C2\C2\C3\C3\C3\C3\C4\C4\C4\C5\C5\C5\C5\C6\C6\C6\C6\C7\C7\C7\C7\C9\C9\C9\C9\CA\CA\CA\CA\CB\CB\CB\CB\CC\CC\CC\CC\CD\CD\CD\CD\CD\CE\CE\CE\CE\CF\CF\CF\CF\D0\D0\D0\D0\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D9\D9\D9\D9\D9\DA\DA\DA\DA\DB\DB\DB\DB\DB\DD\DD\DD\DD\DE\DE\DE\DE\DE\DF\DF\DF\DF\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E5\E5\E5\E5\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF"], [3 x [1024 x i8]] [[1024 x i8] c"\11\14\15\17\1A\1B\1E\1F\22#%'(+,-/134589:;<=@BCDEGHIJKLMOPRSSTUVXYZ[[\\^_`aabceefghhijllmnoopqqsttuwwxyyzz{||}\7F\7F\80\80\81\81\82\84\84\85\85\86\86\88\89\89\8A\8A\8B\8B\8D\8D\8E\8E\8F\90\90\91\91\92\92\93\93\94\94\96\96\97\97\98\98\98\99\99\9A\9A\9B\9B\9C\9C\9D\9D\9E\9E\A0\A0\A0\A1\A1\A2\A2\A3\A3\A3\A4\A4\A5\A5\A6\A6\A6\A8\A8\A9\A9\AB\AB\AB\AC\AC\AD\AD\AD\AE\AE\AF\AF\AF\B0\B0\B1\B1\B1\B2\B2\B2\B3\B3\B4\B4\B4\B6\B6\B6\B7\B7\B8\B8\B8\B9\B9\B9\BA\BA\BA\BC\BC\BD\BD\BD\BE\BE\BE\BF\BF\BF\C0\C0\C0\C2\C2\C2\C3\C3\C3\C4\C4\C4\C5\C5\C5\C6\C6\C6\C7\C7\C7\C9\C9\C9\CA\CA\CA\CB\CB\CB\CB\CC\CC\CC\CD\CD\CD\CE\CE\CE\CF\CF\CF\CF\D0\D0\D0\D1\D1\D1\D3\D3\D3\D3\D4\D4\D4\D6\D6\D6\D7\D7\D7\D7\D8\D8\D8\D9\D9\D9\D9\DA\DA\DA\DB\DB\DB\DB\DD\DD\DD\DE\DE\DE\DE\DF\DF\DF\DF\E0\E0\E0\E1\E1\E1\E1\E2\E2\E2\E2\E3\E3\E3\E3\E4\E4\E4\E5\E5\E5\E5\E6\E6\E6\E6\E7\E7\E7\E7\E8\E8\E8\E8\E9\E9\E9\E9\EB\EB\EB\EB\EC\EC\EC\EC\ED\ED\ED\ED\EE\EE\EE\EE\EF\EF\EF\EF\F0\F0\F0\F0\F1\F1\F1\F1\F3\F3\F3\F3\F4\F4\F4\F4\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F8\F8\F8\F8\F9\F9\F9\F9\FA\F9\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB", [1024 x i8] c"\08\0A\0C\0E\10\11\14\15\16\17\1A\1B\1C\1E\1F #%&'()+,-/013445789:;<<=?@BBCDEEGHIIJKKLMOOPRRSTTUUVXXYZZ[[\\^^__``aabcceeffgghhiijjllmmnnooppqqsstttuuwwxxyyyzz{{|||}}\7F\7F\7F\80\80\81\81\81\82\82\84\84\84\85\85\86\86\86\88\88\88\89\89\8A\8A\8A\8B\8B\8B\8D\8D\8D\8E\8E\8E\8F\8F\90\90\90\91\91\91\92\92\92\93\93\93\94\94\94\96\96\96\97\97\97\98\98\98\98\99\99\99\9A\9A\9A\9B\9B\9B\9C\9C\9C\9C\9D\9D\9D\9E\9E\9E\A0\A0\A0\A0\A1\A1\A1\A2\A2\A2\A3\A3\A3\A3\A4\A4\A4\A5\A5\A5\A5\A6\A6\A6\A6\A8\A8\A8\A9\A9\A9\A9\AB\AA\AB\AB\AC\AC\AC\AD\AD\AD\AD\AE\AE\AE\AE\AF\AF\AF\AF\B0\B0\B0\B0\B1\B1\B1\B1\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B6\B6\B6\B6\B7\B7\B7\B7\B8\B8\B8\B8\B9\B9\B9\B9\BA\BA\BA\BA\BA\BC\BC\BC\BC\BD\BD\BD\BD\BE\BE\BE\BE\BE\BF\BF\BF\BF\C0\C0\C0\C0\C2\C2\C2\C2\C2\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C9\C9\C9\C9\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CE\CE\CE\CE\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\E9\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB", [1024 x i8] c"\0D\10\11\14\15\17\18\1B\1C\1E \22#&'()+-/01345789:;<=?@BCDEGHIJKKLMOPRRSTUVVXYZZ[\\^^_``abbceefgghiijllmmnooppqssttuuwxxyyzz{{||}}\7F\7F\80\80\81\81\82\82\84\84\85\85\86\86\88\88\89\89\8A\8A\8B\8B\8D\8D\8D\8E\8E\8F\8F\90\90\91\91\91\92\92\93\93\94\94\94\96\96\97\97\98\98\98\99\99\9A\9A\9A\9B\9B\9C\9C\9C\9D\9D\9D\9E\9E\A0\A0\A0\A1\A1\A1\A2\A2\A3\A3\A3\A4\A4\A4\A5\A5\A5\A6\A6\A8\A8\A8\A9\A9\A9\AB\AB\AB\AC\AC\AC\AD\AD\AD\AE\AE\AE\AF\AF\AF\B0\B0\B0\B1\B1\B1\B2\B2\B2\B3\B3\B3\B4\B4\B4\B6\B6\B6\B6\B7\B7\B7\B8\B8\B8\B9\B9\B9\BA\BA\BA\BA\BC\BC\BC\BD\BD\BD\BE\BE\BE\BE\BF\BF\BF\C0\C0\C0\C0\C2\C2\C2\C3\C3\C3\C3\C4\C4\C4\C5\C5\C5\C5\C6\C6\C6\C6\C7\C7\C7\C9\C9\C9\C9\CA\CA\CA\CA\CB\CB\CB\CC\CC\CC\CC\CD\CD\CD\CD\CE\CE\CE\CE\CF\CF\CF\CF\D0\D0\D0\D0\D1\D1\D1\D1\D3\D3\D3\D3\D4\D4\D4\D4\D6\D6\D6\D6\D7\D7\D7\D7\D8\D8\D8\D8\D9\D9\D9\D9\DA\DA\DA\DA\DB\DB\DB\DB\DD\DD\DD\DD\DD\DE\DE\DE\DE\DF\DF\DF\DF\E0\E0\E0\E0\E0\E1\E1\E1\E1\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E9\E9\E9\E9\E9\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB\FB"], [3 x [1024 x i8]] [[1024 x i8] c"\16\18\19\1B\1D\1E !#$%'(*+,-/012456789;<=>?@ABCDEFGHIJJKLMNOPQQRSTUVVWXYYZ[\\\\]^__`abbcddeffghhijjkklmmnooppqqrssttuuvwwxxyyzz{{|}}~~\7F\7F\80\80\81\81\82\82\83\83\84\84\84\85\85\86\86\87\87\88\88\89\89\8A\8A\8B\8B\8B\8C\8C\8D\8D\8E\8E\8E\8F\8F\90\90\91\91\91\92\92\93\93\94\94\94\95\95\96\96\96\97\97\98\98\98\99\99\9A\9A\9A\9B\9B\9B\9C\9C\9D\9D\9D\9E\9E\9E\9F\9F\A0\A0\A0\A1\A1\A1\A2\A2\A2\A3\A3\A4\A4\A4\A5\A5\A5\A6\A6\A6\A7\A7\A7\A8\A8\A8\A9\A9\A9\AA\AA\AA\AB\AB\AB\AC\AC\AC\AD\AD\AD\AE\AE\AE\AF\AF\AF\B0\B0\B0\B0\B1\B1\B1\B2\B2\B2\B3\B3\B3\B4\B4\B4\B4\B5\B5\B5\B6\B6\B6\B7\B7\B7\B7\B8\B8\B8\B9\B9\B9\BA\BA\BA\BA\BB\BB\BB\BC\BC\BC\BC\BD\BD\BD\BE\BE\BE\BE\BF\BF\BF\C0\C0\C0\C0\C1\C1\C1\C1\C2\C2\C2\C3\C3\C3\C3\C4\C4\C4\C4\C5\C5\C5\C5\C6\C6\C6\C7\C7\C7\C7\C8\C8\C8\C8\C9\C9\C9\C9\CA\CA\CA\CA\CB\CB\CB\CB\CC\CC\CC\CC\CD\CD\CD\CD\CE\CE\CE\CE\CF\CF\CF\CF\D0\D0\D0\D0\D1\D1\D1\D1\D2\D2\D2\D2\D3\D3\D3\D3\D4\D4\D4\D4\D5\D5\D5\D5\D6\D6\D6\D6\D6\D7\D7\D7\D7\D8\D8\D8\D8\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DC\DC\DC\DC\DD\DD\DD\DD\DD\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\EA\EA\EA\EA\EA\EB\EB\EB\EB\EB\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\F0\F0\F0\F0\F1\F1\F1\F1\F1\F2\F2\F2\F2\F2\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [1024 x i8] c"\0F\11\12\14\15\16\18\19\1A\1B\1D\1E\1F !\22$%&'()*+,-./011234567889:;<<=>??@ABBCDDEFGGHIIJKKLLMNNOPPQQRSSTTUUVVWXXYYZZ[[\\\\]]^^__``aabbccddeefffgghhiijjjkkllmmmnnoooppqqqrrsssttuuuvvvwwxxxyyyzzz{{{||}}}~~~\7F\7F\7F\80\80\80\81\81\81\82\82\82\83\83\83\84\84\84\84\85\85\85\86\86\86\87\87\87\88\88\88\88\89\89\89\8A\8A\8A\8B\8B\8B\8B\8C\8C\8C\8D\8D\8D\8E\8E\8E\8E\8F\8F\8F\90\90\90\90\91\91\91\91\92\92\92\93\93\93\93\94\94\94\94\95\95\95\96\96\96\96\97\97\97\97\98\98\98\98\99\99\99\99\9A\9A\9A\9A\9B\9B\9B\9B\9C\9C\9C\9C\9D\9D\9D\9D\9E\9E\9E\9E\9F\9F\9F\9F\A0\A0\A0\A0\A1\A1\A1\A1\A2\A2\A2\A2\A2\A3\A3\A3\A3\A4\A4\A4\A4\A5\A5\A5\A5\A5\A6\A6\A6\A6\A7\A7\A7\A7\A8\A8\A8\A8\A8\A9\A9\A9\A9\AA\AA\AA\AA\AA\AB\AB\AB\AB\AC\AC\AC\AC\AC\AD\AD\AD\AD\AD\AE\AE\AE\AE\AF\AF\AF\AF\AF\B0\B0\B0\B0\B0\B1\B1\B1\B1\B1\B2\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B4\B5\B5\B5\B5\B5\B6\B6\B6\B6\B6\B7\B7\B7\B7\B7\B8\B8\B8\B8\B8\B9\B9\B9\B9\B9\BA\BA\BA\BA\BA\BB\BB\BB\BB\BB\BB\BC\BC\BC\BC\BC\BD\BD\BD\BD\BD\BE\BE\BE\BE\BE\BF\BF\BF\BF\BF\C0\C0\C0\C0\C0\C0\C1\C1\C1\C1\C1\C2\C2\C2\C2\C2\C3\C3\C3\C3\C3\C3\C4\C4\C4\C4\C4\C5\C5\C5\C5\C5\C5\C6\C6\C6\C6\C6\C7\C7\C7\C7\C7\C7\C8\C8\C8\C8\C8\C9\C9\C9\C9\C9\C9\CA\CA\CA\CA\CA\CB\CB\CB\CB\CB\CB\CC\CC\CC\CC\CC\CD\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CE\CF\CF\CF\CF\CF\D0\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D1\D2\D2\D2\D2\D2\D2\D3\D3\D3\D3\D3\D4\D4\D4\D4\D4\D4\D5\D5\D5\D5\D5\D5\D6\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DB\DC\DC\DC\DC\DC\DD\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\E9\EA\EA\EA\EA\EA\EA\EB\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F1\F2\F2\F2\F2\F2\F2\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [1024 x i8] c"\13\15\16\18\19\1B\1C\1E\1F \22#$&'()*,-./0123456789:;<=>?@ABCDDEFGHIIJKLMMNOPPQRSSTUUVWWXYYZ[[\\]]^__``abbccdeeffgghiijjkkllmmnnooppqqrrssttuuvvwwxxyyzzz{{||}}~~~\7F\7F\80\80\81\81\81\82\82\83\83\84\84\84\85\85\86\86\86\87\87\88\88\88\89\89\89\8A\8A\8B\8B\8B\8C\8C\8C\8D\8D\8E\8E\8E\8F\8F\8F\90\90\90\91\91\92\92\92\93\93\93\94\94\94\95\95\95\96\96\96\97\97\97\98\98\98\99\99\99\9A\9A\9A\9B\9B\9B\9C\9C\9C\9D\9D\9D\9E\9E\9E\9E\9F\9F\9F\A0\A0\A0\A1\A1\A1\A2\A2\A2\A2\A3\A3\A3\A4\A4\A4\A5\A5\A5\A5\A6\A6\A6\A7\A7\A7\A7\A8\A8\A8\A9\A9\A9\A9\AA\AA\AA\AB\AB\AB\AB\AC\AC\AC\AC\AD\AD\AD\AE\AE\AE\AE\AF\AF\AF\AF\B0\B0\B0\B1\B1\B1\B1\B2\B2\B2\B2\B3\B3\B3\B3\B4\B4\B4\B4\B5\B5\B5\B5\B6\B6\B6\B6\B7\B7\B7\B7\B8\B8\B8\B8\B9\B9\B9\B9\BA\BA\BA\BA\BB\BB\BB\BB\BC\BC\BC\BC\BD\BD\BD\BD\BE\BE\BE\BE\BF\BF\BF\BF\BF\C0\C0\C0\C0\C1\C1\C1\C1\C2\C2\C2\C2\C2\C3\C3\C3\C3\C4\C4\C4\C4\C5\C5\C5\C5\C5\C6\C6\C6\C6\C7\C7\C7\C7\C7\C8\C8\C8\C8\C9\C9\C9\C9\C9\CA\CA\CA\CA\CB\CB\CB\CB\CB\CC\CC\CC\CC\CD\CD\CD\CD\CD\CE\CE\CE\CE\CE\CF\CF\CF\CF\D0\D0\D0\D0\D0\D1\D1\D1\D1\D1\D2\D2\D2\D2\D2\D3\D3\D3\D3\D4\D4\D4\D4\D4\D5\D5\D5\D5\D5\D6\D6\D6\D6\D6\D7\D7\D7\D7\D7\D8\D8\D8\D8\D8\D9\D9\D9\D9\D9\DA\DA\DA\DA\DA\DB\DB\DB\DB\DB\DC\DC\DC\DC\DC\DD\DD\DD\DD\DD\DE\DE\DE\DE\DE\DF\DF\DF\DF\DF\E0\E0\E0\E0\E0\E1\E1\E1\E1\E1\E2\E2\E2\E2\E2\E3\E3\E3\E3\E3\E4\E4\E4\E4\E4\E4\E5\E5\E5\E5\E5\E6\E6\E6\E6\E6\E7\E7\E7\E7\E7\E8\E8\E8\E8\E8\E9\E9\E9\E9\E9\E9\EA\EA\EA\EA\EA\EB\EB\EB\EB\EB\EC\EC\EC\EC\EC\ED\ED\ED\ED\ED\ED\EE\EE\EE\EE\EE\EF\EF\EF\EF\EF\F0\F0\F0\F0\F0\F0\F1\F1\F1\F1\F1\F2\F2\F2\F2\F2\F3\F3\F3\F3\F3\F3\F4\F4\F4\F4\F4\F5\F5\F5\F5\F5\F6\F6\F6\F6\F6\F6\F7\F7\F7\F7\F7\F8\F8\F8\F8\F8\F9\F9\F9\F9\F9\F9\FA\FA\FA\FA\FA\FB\FB\FB\FB\FB\FC\FC\FC\FC\FC\FC\FD\FD\FD\FD\FD\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF"]], [4608 x i8] zeroinitializer }, align 32
@bulk_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gspca_topro: bulk write error %d tag=%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bulk_w\00", [25 x i8] zeroinitializer }, align 32
@bulk_w._entry_ptr = internal global ptr @bulk_w._entry, section ".printk_index", align 4
@tp6810_late_start = internal constant { [68 x %struct.cmd], [56 x i8] } { [68 x %struct.cmd] [%struct.cmd { i8 125, i8 1 }, %struct.cmd { i8 -80, i8 4 }, %struct.cmd { i8 -79, i8 4 }, %struct.cmd { i8 -78, i8 4 }, %struct.cmd { i8 -77, i8 4 }, %struct.cmd { i8 -76, i8 4 }, %struct.cmd { i8 -75, i8 4 }, %struct.cmd { i8 -74, i8 8 }, %struct.cmd { i8 -73, i8 8 }, %struct.cmd { i8 -72, i8 4 }, %struct.cmd { i8 -71, i8 4 }, %struct.cmd { i8 -70, i8 4 }, %struct.cmd { i8 -69, i8 4 }, %struct.cmd { i8 -68, i8 4 }, %struct.cmd { i8 -67, i8 8 }, %struct.cmd { i8 -66, i8 8 }, %struct.cmd { i8 -65, i8 8 }, %struct.cmd { i8 -64, i8 4 }, %struct.cmd { i8 -63, i8 4 }, %struct.cmd { i8 -62, i8 8 }, %struct.cmd { i8 -61, i8 8 }, %struct.cmd { i8 -60, i8 8 }, %struct.cmd { i8 -59, i8 8 }, %struct.cmd { i8 -58, i8 8 }, %struct.cmd { i8 -57, i8 19 }, %struct.cmd { i8 -56, i8 4 }, %struct.cmd { i8 -55, i8 8 }, %struct.cmd { i8 -54, i8 8 }, %struct.cmd { i8 -53, i8 8 }, %struct.cmd { i8 -52, i8 8 }, %struct.cmd { i8 -51, i8 8 }, %struct.cmd { i8 -50, i8 19 }, %struct.cmd { i8 -49, i8 19 }, %struct.cmd { i8 -48, i8 8 }, %struct.cmd { i8 -47, i8 8 }, %struct.cmd { i8 -46, i8 8 }, %struct.cmd { i8 -45, i8 8 }, %struct.cmd { i8 -44, i8 8 }, %struct.cmd { i8 -43, i8 19 }, %struct.cmd { i8 -42, i8 19 }, %struct.cmd { i8 -41, i8 19 }, %struct.cmd { i8 -40, i8 8 }, %struct.cmd { i8 -39, i8 8 }, %struct.cmd { i8 -38, i8 8 }, %struct.cmd { i8 -37, i8 8 }, %struct.cmd { i8 -36, i8 19 }, %struct.cmd { i8 -35, i8 19 }, %struct.cmd { i8 -34, i8 19 }, %struct.cmd { i8 -33, i8 19 }, %struct.cmd { i8 -32, i8 8 }, %struct.cmd { i8 -31, i8 8 }, %struct.cmd { i8 -30, i8 8 }, %struct.cmd { i8 -29, i8 19 }, %struct.cmd { i8 -28, i8 19 }, %struct.cmd { i8 -27, i8 19 }, %struct.cmd { i8 -26, i8 19 }, %struct.cmd { i8 -25, i8 19 }, %struct.cmd { i8 -24, i8 8 }, %struct.cmd { i8 -23, i8 8 }, %struct.cmd { i8 -22, i8 19 }, %struct.cmd { i8 -21, i8 19 }, %struct.cmd { i8 -20, i8 19 }, %struct.cmd { i8 -19, i8 19 }, %struct.cmd { i8 -18, i8 19 }, %struct.cmd { i8 -17, i8 19 }, %struct.cmd { i8 125, i8 2 }, %struct.cmd { i8 125, i8 8 }, %struct.cmd { i8 125, i8 0 }], [56 x i8] zeroinitializer }, align 32
@cx0342_6800_start.reg_init = internal constant { [29 x %struct.cmd], [38 x i8] } { [29 x %struct.cmd] [%struct.cmd { i8 23, i8 -97 }, %struct.cmd { i8 22, i8 64 }, %struct.cmd { i8 16, i8 0 }, %struct.cmd { i8 80, i8 0 }, %struct.cmd { i8 81, i8 0 }, %struct.cmd { i8 82, i8 -1 }, %struct.cmd { i8 83, i8 3 }, %struct.cmd { i8 84, i8 7 }, %struct.cmd { i8 92, i8 64 }, %struct.cmd { i8 122, i8 64 }, %struct.cmd { i8 47, i8 23 }, %struct.cmd { i8 48, i8 24 }, %struct.cmd { i8 55, i8 0 }, %struct.cmd { i8 56, i8 0 }, %struct.cmd { i8 57, i8 0 }, %struct.cmd { i8 58, i8 0 }, %struct.cmd { i8 59, i8 0 }, %struct.cmd { i8 60, i8 0 }, %struct.cmd { i8 61, i8 0 }, %struct.cmd { i8 62, i8 0 }, %struct.cmd { i8 33, i8 3 }, %struct.cmd { i8 49, i8 11 }, %struct.cmd { i8 50, i8 -118 }, %struct.cmd { i8 51, i8 2 }, %struct.cmd { i8 52, i8 14 }, %struct.cmd { i8 53, i8 -12 }, %struct.cmd { i8 54, i8 1 }, %struct.cmd { i8 120, i8 0 }, %struct.cmd { i8 18, i8 32 }], [38 x i8] zeroinitializer }, align 32
@cx0342_6800_start.sensor_init = internal constant { [29 x %struct.cmd], [38 x i8] } { [29 x %struct.cmd] [%struct.cmd { i8 38, i8 7 }, %struct.cmd { i8 35, i8 88 }, %struct.cmd { i8 80, i8 22 }, %struct.cmd { i8 82, i8 22 }, %struct.cmd { i8 84, i8 -64 }, %struct.cmd { i8 85, i8 3 }, %struct.cmd { i8 88, i8 -1 }, %struct.cmd { i8 89, i8 7 }, %struct.cmd { i8 90, i8 -1 }, %struct.cmd { i8 91, i8 7 }, %struct.cmd { i8 -128, i8 92 }, %struct.cmd { i8 -127, i8 1 }, %struct.cmd { i8 -124, i8 -4 }, %struct.cmd { i8 -123, i8 3 }, %struct.cmd { i8 -122, i8 0 }, %struct.cmd { i8 -121, i8 0 }, %struct.cmd { i8 32, i8 64 }, %struct.cmd { i8 28, i8 1 }, %struct.cmd { i8 64, i8 0 }, %struct.cmd { i8 32, i8 2 }, %struct.cmd { i8 115, i8 5 }, %struct.cmd { i8 48, i8 0 }, %struct.cmd { i8 51, i8 0 }, %struct.cmd { i8 52, i8 1 }, %struct.cmd { i8 53, i8 11 }, %struct.cmd { i8 54, i8 11 }, %struct.cmd { i8 55, i8 7 }, %struct.cmd { i8 76, i8 64 }, %struct.cmd { i8 77, i8 2 }], [38 x i8] zeroinitializer }, align 32
@color_gain = internal constant { [2 x [18 x i8]], [60 x i8] } { [2 x [18 x i8]] [[18 x i8] c"L\00\A9\001\00\B6\03l\03\E0\00\DF\00F\03\DC\03", [18 x i8] c"L\00\95\00\1D\00\B6\03l\03\D7\00\D5\00F\03\DC\03"], [60 x i8] zeroinitializer }, align 32
@soi763a_6800_start.reg_init = internal constant { [33 x %struct.cmd], [62 x i8] } { [33 x %struct.cmd] [%struct.cmd { i8 121, i8 4 }, %struct.cmd { i8 121, i8 1 }, %struct.cmd { i8 16, i8 0 }, %struct.cmd { i8 80, i8 0 }, %struct.cmd { i8 81, i8 0 }, %struct.cmd { i8 82, i8 -1 }, %struct.cmd { i8 83, i8 3 }, %struct.cmd { i8 84, i8 7 }, %struct.cmd { i8 92, i8 64 }, %struct.cmd { i8 121, i8 3 }, %struct.cmd { i8 122, i8 64 }, %struct.cmd { i8 47, i8 70 }, %struct.cmd { i8 48, i8 16 }, %struct.cmd { i8 55, i8 0 }, %struct.cmd { i8 56, i8 0 }, %struct.cmd { i8 57, i8 0 }, %struct.cmd { i8 58, i8 0 }, %struct.cmd { i8 59, i8 0 }, %struct.cmd { i8 60, i8 0 }, %struct.cmd { i8 61, i8 0 }, %struct.cmd { i8 62, i8 0 }, %struct.cmd { i8 33, i8 3 }, %struct.cmd { i8 63, i8 4 }, %struct.cmd { i8 93, i8 14 }, %struct.cmd { i8 49, i8 27 }, %struct.cmd { i8 50, i8 -102 }, %struct.cmd { i8 51, i8 2 }, %struct.cmd { i8 52, i8 15 }, %struct.cmd { i8 53, i8 -12 }, %struct.cmd { i8 54, i8 1 }, %struct.cmd { i8 120, i8 1 }, %struct.cmd { i8 18, i8 33 }, %struct.cmd { i8 26, i8 0 }], [62 x i8] zeroinitializer }, align 32
@soi763a_6800_start.sensor_init = internal constant { [46 x %struct.cmd], [36 x i8] } { [46 x %struct.cmd] [%struct.cmd { i8 18, i8 72 }, %struct.cmd { i8 19, i8 -96 }, %struct.cmd { i8 3, i8 -92 }, %struct.cmd { i8 4, i8 48 }, %struct.cmd { i8 5, i8 -120 }, %struct.cmd { i8 6, i8 96 }, %struct.cmd { i8 16, i8 65 }, %struct.cmd { i8 17, i8 64 }, %struct.cmd { i8 19, i8 -96 }, %struct.cmd { i8 20, i8 0 }, %struct.cmd { i8 21, i8 20 }, %struct.cmd { i8 31, i8 65 }, %struct.cmd { i8 32, i8 -128 }, %struct.cmd { i8 35, i8 -18 }, %struct.cmd { i8 36, i8 80 }, %struct.cmd { i8 37, i8 122 }, %struct.cmd { i8 38, i8 0 }, %struct.cmd { i8 39, i8 -30 }, %struct.cmd { i8 40, i8 -80 }, %struct.cmd { i8 42, i8 0 }, %struct.cmd { i8 43, i8 0 }, %struct.cmd { i8 45, i8 -127 }, %struct.cmd { i8 47, i8 -99 }, %struct.cmd { i8 96, i8 -128 }, %struct.cmd { i8 97, i8 0 }, %struct.cmd { i8 98, i8 -120 }, %struct.cmd { i8 99, i8 17 }, %struct.cmd { i8 100, i8 -119 }, %struct.cmd { i8 101, i8 0 }, %struct.cmd { i8 103, i8 -108 }, %struct.cmd { i8 104, i8 122 }, %struct.cmd { i8 105, i8 15 }, %struct.cmd { i8 108, i8 -128 }, %struct.cmd { i8 109, i8 -128 }, %struct.cmd { i8 110, i8 -128 }, %struct.cmd { i8 111, i8 -1 }, %struct.cmd { i8 113, i8 32 }, %struct.cmd { i8 116, i8 32 }, %struct.cmd { i8 117, i8 -122 }, %struct.cmd { i8 119, i8 -75 }, %struct.cmd { i8 23, i8 24 }, %struct.cmd { i8 24, i8 -65 }, %struct.cmd { i8 25, i8 3 }, %struct.cmd { i8 26, i8 -8 }, %struct.cmd { i8 1, i8 -128 }, %struct.cmd { i8 2, i8 -128 }], [36 x i8] zeroinitializer }, align 32
@cx0342_6810_start.bridge_init_2 = internal constant { [7 x %struct.cmd], [18 x i8] } { [7 x %struct.cmd] [%struct.cmd { i8 77, i8 0 }, %struct.cmd { i8 76, i8 -1 }, %struct.cmd { i8 78, i8 -1 }, %struct.cmd { i8 79, i8 0 }, %struct.cmd { i8 122, i8 0 }, %struct.cmd { i8 121, i8 4 }, %struct.cmd { i8 121, i8 1 }], [18 x i8] zeroinitializer }, align 32
@cx0342_6810_start.bridge_init_3 = internal constant { [6 x %struct.cmd], [20 x i8] } { [6 x %struct.cmd] [%struct.cmd { i8 49, i8 8 }, %struct.cmd { i8 50, i8 -121 }, %struct.cmd { i8 51, i8 2 }, %struct.cmd { i8 52, i8 14 }, %struct.cmd { i8 53, i8 -12 }, %struct.cmd { i8 54, i8 1 }], [20 x i8] zeroinitializer }, align 32
@tp6810_bridge_start = internal constant { [9 x %struct.cmd], [46 x i8] } { [9 x %struct.cmd] [%struct.cmd { i8 89, i8 -120 }, %struct.cmd { i8 90, i8 15 }, %struct.cmd { i8 91, i8 78 }, %struct.cmd { i8 92, i8 99 }, %struct.cmd { i8 93, i8 0 }, %struct.cmd { i8 3, i8 127 }, %struct.cmd { i8 4, i8 -128 }, %struct.cmd { i8 6, i8 0 }, %struct.cmd zeroinitializer], [46 x i8] zeroinitializer }, align 32
@soi763a_6810_start.bridge_init_3 = internal constant { [6 x %struct.cmd], [20 x i8] } { [6 x %struct.cmd] [%struct.cmd { i8 49, i8 32 }, %struct.cmd { i8 50, i8 -97 }, %struct.cmd { i8 51, i8 2 }, %struct.cmd { i8 52, i8 19 }, %struct.cmd { i8 53, i8 -8 }, %struct.cmd { i8 54, i8 1 }], [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 4618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: bad frame\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_dq_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 4712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013gspca_topro: bulk err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sd_dq_callback\00", [17 x i8] zeroinitializer }, align 32
@sd_dq_callback._entry_ptr = internal global ptr @sd_dq_callback._entry, section ".printk_index", align 4
@sd_dq_callback._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 4728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_dq_callback._entry_ptr.29 = internal global ptr @sd_dq_callback._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 90, i64 170]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 85, i64 170, i64 204]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 32, i64 9963790, i64 9963791, i64 9963792, i64 9963793, i64 9963794, i64 9963803, i64 10291459]
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4956, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"force_sensor\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 18, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4968, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4941, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4925, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 140, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"framerates\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 168, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"framerates_6810\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 179, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 167, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"rates_6810\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 178, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"tp6800_preinit\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4020, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4044, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4071, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4079, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4084, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 987, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1005, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1244, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1256, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"tp6810_ov_init_common\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 799, i32 25 }
@___asan_gen_.124 = private unnamed_addr constant [11 x i8] c"reg_init_1\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1182, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1197, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"tp6810_cx_init_common\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 773, i32 25 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"cx0342_timing_seq\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 905, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1444, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"jpeg_q\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 156, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant [4 x i8] c"DQT\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 429, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 21, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4885, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4875, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4915, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [9 x i8] c"gamma_tb\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1494, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1089, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"tp6810_late_start\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 832, i32 25 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4164, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4197, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"color_gain\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 1479, i32 17 }
@___asan_gen_.196 = private unnamed_addr constant [9 x i8] c"reg_init\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4351, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"sensor_init\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4391, i32 26 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"bridge_init_2\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4260, i32 26 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4269, i32 26 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c"tp6810_bridge_start\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 820, i32 25 }
@___asan_gen_.211 = private unnamed_addr constant [14 x i8] c"bridge_init_3\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4477, i32 26 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4618, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4712, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private constant [35 x i8] c"../drivers/media/usb/gspca/topro.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 4728, i32 4 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_force_sensor309, ptr @__UNIQUE_ID_force_sensortype308, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_topro__307_4968_sd_driver_init6, ptr @__param_force_sensor, ptr @bulk_w._entry, ptr @bulk_w._entry_ptr, ptr @reg_r._entry, ptr @reg_r._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @sd_dq_callback._entry, ptr @sd_dq_callback._entry.28, ptr @sd_dq_callback._entry_ptr, ptr @sd_dq_callback._entry_ptr.29, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.10, ptr @sd_init._entry.4, ptr @sd_init._entry.7, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.12, ptr @sd_init._entry_ptr.6, ptr @sd_init._entry_ptr.9, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry_ptr, ptr @set_dqt._entry, ptr @set_dqt._entry_ptr, ptr @sd_driver, ptr @force_sensor, ptr @.str, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @framerates, ptr @framerates_6810, ptr @rates, ptr @rates_6810, ptr @sd_init.tp6800_preinit, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @soi763a_6810_init.reg_init_1, ptr @soi763a_6810_init.sensor_init, ptr @tp6810_ov_init_common, ptr @cx0342_6810_init.reg_init_1, ptr @cx0342_6810_init.sensor_init, ptr @tp6810_cx_init_common, ptr @cx0342_timing_seq, ptr @.str.17, ptr @.str.18, ptr @jpeg_q, ptr @DQT, ptr @jpeg_head, ptr @sd_init_controls._key, ptr @.str.19, ptr @sd_ctrl_ops, ptr @.str.20, ptr @.str.21, ptr @setgamma.gamma_tb, ptr @.str.22, ptr @.str.23, ptr @tp6810_late_start, ptr @cx0342_6800_start.reg_init, ptr @cx0342_6800_start.sensor_init, ptr @color_gain, ptr @soi763a_6800_start.reg_init, ptr @soi763a_6800_start.sensor_init, ptr @cx0342_6810_start.bridge_init_2, ptr @cx0342_6810_start.bridge_init_3, ptr @tp6810_bridge_start, ptr @soi763a_6810_start.bridge_init_3, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_sensor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @framerates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @framerates_6810 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_6810 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init.tp6800_preinit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi763a_6810_init.reg_init_1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi763a_6810_init.sensor_init to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp6810_ov_init_common to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx0342_6810_init.reg_init_1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx0342_6810_init.sensor_init to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp6810_cx_init_common to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx0342_timing_seq to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dqt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_q to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DQT to i32), i32 2210, i32 2784, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 521, i32 672, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setgamma.gamma_tb to i32), i32 18432, i32 23040, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp6810_late_start to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx0342_6800_start.reg_init to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx0342_6800_start.sensor_init to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @color_gain to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi763a_6800_start.reg_init to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi763a_6800_start.sensor_init to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx0342_6810_start.bridge_init_2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx0342_6810_start.bridge_init_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tp6810_bridge_start to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi763a_6810_start.bridge_init_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_dq_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_dq_callback._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %interface, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %interface, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3160, ptr noundef null) #8
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %1 to i8
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %bridge, align 1
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %3 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vga_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %nmodes, align 4
  %conv3 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp = icmp eq i32 %conv3, 0
  %cond = select i1 %cmp, ptr @framerates, ptr @framerates_6810
  %mode_framerates = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %mode_framerates to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cond, ptr %mode_framerates, align 4
  %framerate = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %6 = ptrtoint ptr %framerate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 30, ptr %framerate, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br i1 %cmp, label %entry.do.body.i_crit_edge, label %if.else

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %reg_w.exit.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %p.addr.0.i = phi ptr [ %incdec.ptr.i, %reg_w.exit.i.do.body.i_crit_edge ], [ @sd_init.tp6800_preinit, %entry.do.body.i_crit_edge ]
  %l.addr.0.i = phi i32 [ %dec.i, %reg_w.exit.i.do.body.i_crit_edge ], [ 6, %entry.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp slt i32 %3, 0
  br i1 %cmp.i.i, label %do.body.i.reg_w.exit.i_crit_edge, label %if.end.i.i

do.body.i.reg_w.exit.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  %val.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i, align 1
  %6 = ptrtoint ptr %p.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p.addr.0.i, align 1
  %8 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %conv.i.i = zext i8 %5 to i16
  %conv2.i.i = zext i8 %7 to i16
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %conv2.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit.i_crit_edge

if.end.i.i.reg_w.exit.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i) #11
  %12 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit.i_crit_edge, %do.body.i.reg_w.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.cmd, ptr %p.addr.0.i, i32 1
  %dec.i = add nsw i32 %l.addr.0.i, -1
  %cmp.i.not = icmp eq i32 %dec.i, 0
  br i1 %cmp.i.not, label %reg_w.exit.i.if.end_crit_edge, label %reg_w.exit.i.do.body.i_crit_edge

reg_w.exit.i.do.body.i_crit_edge:                 ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

reg_w.exit.i.if.end_crit_edge:                    ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i95 = icmp slt i32 %14, 0
  br i1 %cmp.i.i95, label %if.else.if.end_crit_edge, label %if.end.i.i104

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i104:                                    ; preds = %if.else
  %15 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i.i98 = shl i32 %18, 8
  %or.i.i99 = or i32 %shl.i.i.i98, -2147483648
  %call3.i.i102 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i.i99, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 47, i16 noundef zeroext 47, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i102)
  %cmp4.i.i103 = icmp slt i32 %call3.i.i102, 0
  br i1 %cmp4.i.i103, label %if.end.i.i104.if.end.sink.split_crit_edge, label %reg_w.exit.i110

if.end.i.i104.if.end.sink.split_crit_edge:        ; preds = %if.end.i.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

reg_w.exit.i110:                                  ; preds = %if.end.i.i104
  %19 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i.i95.1 = icmp slt i32 %.pr, 0
  br i1 %cmp.i.i95.1, label %reg_w.exit.i110.if.end_crit_edge, label %if.end.i.i104.1

reg_w.exit.i110.if.end_crit_edge:                 ; preds = %reg_w.exit.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i104.1:                                  ; preds = %reg_w.exit.i110
  %20 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i.i98.1 = shl i32 %23, 8
  %or.i.i99.1 = or i32 %shl.i.i.i98.1, -2147483648
  %call3.i.i102.1 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i.i99.1, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 111, i16 noundef zeroext 21, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i102.1)
  %cmp4.i.i103.1 = icmp slt i32 %call3.i.i102.1, 0
  br i1 %cmp4.i.i103.1, label %if.end.i.i104.1.if.end.sink.split_crit_edge, label %reg_w.exit.i110.1

if.end.i.i104.1.if.end.sink.split_crit_edge:      ; preds = %if.end.i.i104.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

reg_w.exit.i110.1:                                ; preds = %if.end.i.i104.1
  %24 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr172.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr172.pr)
  %cmp.i.i95.2 = icmp slt i32 %.pr172.pr, 0
  br i1 %cmp.i.i95.2, label %reg_w.exit.i110.1.if.end_crit_edge, label %if.end.i.i104.2

reg_w.exit.i110.1.if.end_crit_edge:               ; preds = %reg_w.exit.i110.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i104.2:                                  ; preds = %reg_w.exit.i110.1
  %25 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i.i98.2 = shl i32 %28, 8
  %or.i.i99.2 = or i32 %shl.i.i.i98.2, -2147483648
  %call3.i.i102.2 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i.i99.2, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 22, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i102.2)
  %cmp4.i.i103.2 = icmp slt i32 %call3.i.i102.2, 0
  br i1 %cmp4.i.i103.2, label %if.end.i.i104.2.if.end.sink.split_crit_edge, label %reg_w.exit.i110.2

if.end.i.i104.2.if.end.sink.split_crit_edge:      ; preds = %if.end.i.i104.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

reg_w.exit.i110.2:                                ; preds = %if.end.i.i104.2
  %29 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr174.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr174.pr)
  %cmp.i.i95.3 = icmp slt i32 %.pr174.pr, 0
  br i1 %cmp.i.i95.3, label %reg_w.exit.i110.2.if.end_crit_edge, label %if.end.i.i104.3

reg_w.exit.i110.2.if.end_crit_edge:               ; preds = %reg_w.exit.i110.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i104.3:                                  ; preds = %reg_w.exit.i110.2
  %30 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i.i98.3 = shl i32 %33, 8
  %or.i.i99.3 = or i32 %shl.i.i.i98.3, -2147483648
  %call3.i.i102.3 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i.i99.3, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 159, i16 noundef zeroext 23, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i102.3)
  %cmp4.i.i103.3 = icmp slt i32 %call3.i.i102.3, 0
  br i1 %cmp4.i.i103.3, label %if.end.i.i104.3.if.end.sink.split_crit_edge, label %reg_w.exit.i110.3

if.end.i.i104.3.if.end.sink.split_crit_edge:      ; preds = %if.end.i.i104.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

reg_w.exit.i110.3:                                ; preds = %if.end.i.i104.3
  %34 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr176.pr.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr176.pr.pr)
  %cmp.i.i95.4 = icmp slt i32 %.pr176.pr.pr, 0
  br i1 %cmp.i.i95.4, label %reg_w.exit.i110.3.if.end_crit_edge, label %if.end.i.i104.4

reg_w.exit.i110.3.if.end_crit_edge:               ; preds = %reg_w.exit.i110.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i104.4:                                  ; preds = %reg_w.exit.i110.3
  %35 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i.i98.4 = shl i32 %38, 8
  %or.i.i99.4 = or i32 %shl.i.i.i98.4, -2147483648
  %call3.i.i102.4 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i.i99.4, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 193, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i102.4)
  %cmp4.i.i103.4 = icmp slt i32 %call3.i.i102.4, 0
  br i1 %cmp4.i.i103.4, label %if.end.i.i104.4.if.end.sink.split_crit_edge, label %if.end.i.i104.4.if.end_crit_edge

if.end.i.i104.4.if.end_crit_edge:                 ; preds = %if.end.i.i104.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i104.4.if.end.sink.split_crit_edge:      ; preds = %if.end.i.i104.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.i.i104.4.if.end.sink.split_crit_edge, %if.end.i.i104.3.if.end.sink.split_crit_edge, %if.end.i.i104.2.if.end.sink.split_crit_edge, %if.end.i.i104.1.if.end.sink.split_crit_edge, %if.end.i.i104.if.end.sink.split_crit_edge
  %call3.i.i102.sink199 = phi i32 [ %call3.i.i102, %if.end.i.i104.if.end.sink.split_crit_edge ], [ %call3.i.i102.1, %if.end.i.i104.1.if.end.sink.split_crit_edge ], [ %call3.i.i102.2, %if.end.i.i104.2.if.end.sink.split_crit_edge ], [ %call3.i.i102.3, %if.end.i.i104.3.if.end.sink.split_crit_edge ], [ %call3.i.i102.4, %if.end.i.i104.4.if.end.sink.split_crit_edge ]
  %call7.i.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i102.sink199) #11
  %39 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call3.i.i102.sink199, ptr %usb_err.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i.i104.4.if.end_crit_edge, %reg_w.exit.i110.3.if.end_crit_edge, %reg_w.exit.i110.2.if.end_crit_edge, %reg_w.exit.i110.1.if.end_crit_edge, %reg_w.exit.i110.if.end_crit_edge, %if.else.if.end_crit_edge, %reg_w.exit.i.if.end_crit_edge
  tail call void @msleep(i32 noundef 15) #8
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %40 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i112 = icmp slt i32 %41, 0
  br i1 %cmp.i112, label %if.end.reg_r.exit_crit_edge, label %if.end.i

if.end.reg_r.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit

if.end.i:                                         ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i.i = shl i32 %45, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or2.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef %47, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_r.exit_crit_edge

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i) #11
  %48 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge, %if.end.reg_r.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp2 = icmp sgt i32 %49, 0
  br i1 %cmp2, label %do.end, label %reg_r.exit.do.end9_crit_edge

reg_r.exit.do.end9_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %50 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %conv6 = zext i8 %53 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %conv6) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %reg_r.exit.do.end9_crit_edge
  %54 = load i32, ptr @force_sensor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp10 = icmp sgt i32 %54, -1
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %conv13 = trunc i32 %54 to i8
  br label %if.end41.sink.split

if.else14:                                        ; preds = %do.end9
  %55 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp17 = icmp eq i8 %56, 0
  br i1 %cmp17, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.else14
  %usb_buf20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %57 = ptrtoint ptr %usb_buf20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_buf20, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %61 = and i8 %60, 7
  %and = zext i8 %61 to i32
  %62 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.then19.if.end41_crit_edge [
    i32 0, label %if.then19.if.end41.sink.split_crit_edge
    i32 1, label %sw.bb24
  ]

if.then19.if.end41.sink.split_crit_edge:          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.then19.if.end41_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

sw.bb24:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.else26:                                        ; preds = %if.else14
  %63 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i.i114 = icmp slt i32 %64, 0
  br i1 %cmp.i.i114, label %if.else26.reg_r.exit.thread.i_crit_edge, label %if.end.i.i119

if.else26.reg_r.exit.thread.i_crit_edge:          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit.thread.i

if.end.i.i119:                                    ; preds = %if.else26
  %dev1.i.i115 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %65 = ptrtoint ptr %dev1.i.i115 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1.i.i115, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i.i116 = shl i32 %68, 8
  %or2.i.i = or i32 %shl.i.i.i116, -2147483520
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %69 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i117 = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or2.i.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef %70, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i117)
  %cmp4.i.i118 = icmp slt i32 %call3.i.i117, 0
  br i1 %cmp4.i.i118, label %do.end.i.i121, label %reg_r.exit.i

do.end.i.i121:                                    ; preds = %if.end.i.i119
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i.i117) #11
  %71 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call3.i.i117, ptr %usb_err.i, align 8
  br label %reg_r.exit.thread.i

reg_r.exit.thread.i:                              ; preds = %do.end.i.i121, %if.else26.reg_r.exit.thread.i_crit_edge
  %usb_buf358.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %72 = ptrtoint ptr %usb_buf358.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %usb_buf358.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  br label %reg_w.exit.i124

reg_r.exit.i:                                     ; preds = %if.end.i.i119
  %76 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr.i = load i32, ptr %usb_err.i, align 8
  %77 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usb_buf.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i154.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i154.i, label %reg_r.exit.i.reg_w.exit.thread.i_crit_edge, label %if.end.i159.i

reg_r.exit.i.reg_w.exit.thread.i_crit_edge:       ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.thread.i

if.end.i159.i:                                    ; preds = %reg_r.exit.i
  %81 = ptrtoint ptr %dev1.i.i115 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1.i.i115, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i156.i = shl i32 %84, 8
  %or.i.i122 = or i32 %shl.i.i156.i, -2147483648
  %conv.i.i123 = zext i8 %80 to i16
  %call3.i157.i = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or.i.i122, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i123, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i157.i)
  %cmp4.i158.i = icmp slt i32 %call3.i157.i, 0
  br i1 %cmp4.i158.i, label %do.end.i161.i, label %if.end.i159.i.reg_w.exit.i124_crit_edge

if.end.i159.i.reg_w.exit.i124_crit_edge:          ; preds = %if.end.i159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i124

do.end.i161.i:                                    ; preds = %if.end.i159.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i157.i) #11
  %85 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call3.i157.i, ptr %usb_err.i, align 8
  br label %reg_w.exit.thread.i

reg_w.exit.thread.i:                              ; preds = %do.end.i161.i, %reg_r.exit.i.reg_w.exit.thread.i_crit_edge
  %86 = or i8 %80, 32
  br label %reg_w.exit173.i

reg_w.exit.i124:                                  ; preds = %if.end.i159.i.reg_w.exit.i124_crit_edge, %reg_r.exit.thread.i
  %.ph.i = phi i8 [ %80, %if.end.i159.i.reg_w.exit.i124_crit_edge ], [ %75, %reg_r.exit.thread.i ]
  %87 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr360.i = load i32, ptr %usb_err.i, align 8
  %88 = or i8 %.ph.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr360.i)
  %cmp.i163.i = icmp slt i32 %.pr360.i, 0
  br i1 %cmp.i163.i, label %reg_w.exit.i124.reg_w.exit218.i_crit_edge, label %if.end.i170.i

reg_w.exit.i124.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.i

if.end.i170.i:                                    ; preds = %reg_w.exit.i124
  %dev1.i164.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %89 = ptrtoint ptr %dev1.i164.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev1.i164.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i165.i = shl i32 %92, 8
  %or.i166.i = or i32 %shl.i.i165.i, -2147483648
  %conv.i167.i = zext i8 %88 to i16
  %call3.i168.i = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i166.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i167.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i168.i)
  %cmp4.i169.i = icmp slt i32 %call3.i168.i, 0
  br i1 %cmp4.i169.i, label %if.end.i170.i.reg_w.exit218.sink.split.i_crit_edge, label %if.end.i170.i.reg_w.exit173.i_crit_edge

if.end.i170.i.reg_w.exit173.i_crit_edge:          ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit173.i

if.end.i170.i.reg_w.exit218.sink.split.i_crit_edge: ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit173.i:                                  ; preds = %if.end.i170.i.reg_w.exit173.i_crit_edge, %reg_w.exit.thread.i
  %.ph363.i = phi i8 [ %88, %if.end.i170.i.reg_w.exit173.i_crit_edge ], [ %86, %reg_w.exit.thread.i ]
  %.ph364.i = phi i8 [ %.ph.i, %if.end.i170.i.reg_w.exit173.i_crit_edge ], [ %80, %reg_w.exit.thread.i ]
  %93 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr365.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr365.i)
  %cmp.i175.i = icmp slt i32 %.pr365.i, 0
  br i1 %cmp.i175.i, label %reg_w.exit173.i.reg_w.exit218.i_crit_edge, label %if.end.i182.i

reg_w.exit173.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.i

if.end.i182.i:                                    ; preds = %reg_w.exit173.i
  %dev1.i176.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %94 = ptrtoint ptr %dev1.i176.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev1.i176.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  %shl.i.i177.i = shl i32 %97, 8
  %or.i178.i = or i32 %shl.i.i177.i, -2147483648
  %conv.i179.i = zext i8 %.ph364.i to i16
  %call3.i180.i = tail call i32 @usb_control_msg(ptr noundef %95, i32 noundef %or.i178.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i179.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i180.i)
  %cmp4.i181.i = icmp slt i32 %call3.i180.i, 0
  br i1 %cmp4.i181.i, label %if.end.i182.i.reg_w.exit218.sink.split.i_crit_edge, label %reg_w.exit185.i

if.end.i182.i.reg_w.exit218.sink.split.i_crit_edge: ; preds = %if.end.i182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit185.i:                                  ; preds = %if.end.i182.i
  %98 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr370.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr370.pr.i)
  %cmp.i187.i = icmp slt i32 %.pr370.pr.i, 0
  br i1 %cmp.i187.i, label %reg_w.exit185.i.reg_w.exit218.i_crit_edge, label %if.end.i193.i

reg_w.exit185.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.i

if.end.i193.i:                                    ; preds = %reg_w.exit185.i
  %99 = ptrtoint ptr %dev1.i176.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev1.i176.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  %shl.i.i189.i = shl i32 %102, 8
  %or.i190.i = or i32 %shl.i.i189.i, -2147483648
  %call3.i191.i = tail call i32 @usb_control_msg(ptr noundef %100, i32 noundef %or.i190.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i191.i)
  %cmp4.i192.i = icmp slt i32 %call3.i191.i, 0
  br i1 %cmp4.i192.i, label %if.end.i193.i.reg_w.exit218.sink.split.i_crit_edge, label %reg_w.exit196.i

if.end.i193.i.reg_w.exit218.sink.split.i_crit_edge: ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit196.i:                                  ; preds = %if.end.i193.i
  %103 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr375.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr375.pr.i)
  %cmp.i198.i = icmp slt i32 %.pr375.pr.i, 0
  br i1 %cmp.i198.i, label %reg_w.exit196.i.reg_w.exit218.i_crit_edge, label %if.end.i204.i

reg_w.exit196.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.i

if.end.i204.i:                                    ; preds = %reg_w.exit196.i
  %104 = ptrtoint ptr %dev1.i176.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev1.i176.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 8
  %shl.i.i200.i = shl i32 %107, 8
  %or.i201.i = or i32 %shl.i.i200.i, -2147483648
  %call3.i202.i = tail call i32 @usb_control_msg(ptr noundef %105, i32 noundef %or.i201.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 33, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i202.i)
  %cmp4.i203.i = icmp slt i32 %call3.i202.i, 0
  br i1 %cmp4.i203.i, label %if.end.i204.i.reg_w.exit218.sink.split.i_crit_edge, label %reg_w.exit207.i

if.end.i204.i.reg_w.exit218.sink.split.i_crit_edge: ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit207.i:                                  ; preds = %if.end.i204.i
  %108 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr380.pr.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr380.pr.pr.i)
  %cmp.i209.i = icmp slt i32 %.pr380.pr.pr.i, 0
  br i1 %cmp.i209.i, label %reg_w.exit207.i.reg_w.exit218.i_crit_edge, label %if.end.i215.i

reg_w.exit207.i.reg_w.exit218.i_crit_edge:        ; preds = %reg_w.exit207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.i

if.end.i215.i:                                    ; preds = %reg_w.exit207.i
  %109 = ptrtoint ptr %dev1.i176.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev1.i176.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 8
  %shl.i.i211.i = shl i32 %112, 8
  %or.i212.i = or i32 %shl.i.i211.i, -2147483648
  %call3.i213.i = tail call i32 @usb_control_msg(ptr noundef %110, i32 noundef %or.i212.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 26, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i213.i)
  %cmp4.i214.i = icmp slt i32 %call3.i213.i, 0
  br i1 %cmp4.i214.i, label %if.end.i215.i.reg_w.exit218.sink.split.i_crit_edge, label %if.end.i215.i.reg_w.exit218.i_crit_edge

if.end.i215.i.reg_w.exit218.i_crit_edge:          ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.i

if.end.i215.i.reg_w.exit218.sink.split.i_crit_edge: ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit218.sink.split.i

reg_w.exit218.sink.split.i:                       ; preds = %if.end.i215.i.reg_w.exit218.sink.split.i_crit_edge, %if.end.i204.i.reg_w.exit218.sink.split.i_crit_edge, %if.end.i193.i.reg_w.exit218.sink.split.i_crit_edge, %if.end.i182.i.reg_w.exit218.sink.split.i_crit_edge, %if.end.i170.i.reg_w.exit218.sink.split.i_crit_edge
  %call3.i168.sink479.i = phi i32 [ %call3.i168.i, %if.end.i170.i.reg_w.exit218.sink.split.i_crit_edge ], [ %call3.i180.i, %if.end.i182.i.reg_w.exit218.sink.split.i_crit_edge ], [ %call3.i191.i, %if.end.i193.i.reg_w.exit218.sink.split.i_crit_edge ], [ %call3.i202.i, %if.end.i204.i.reg_w.exit218.sink.split.i_crit_edge ], [ %call3.i213.i, %if.end.i215.i.reg_w.exit218.sink.split.i_crit_edge ]
  %.ph477.i = phi i8 [ %88, %if.end.i170.i.reg_w.exit218.sink.split.i_crit_edge ], [ %.ph363.i, %if.end.i182.i.reg_w.exit218.sink.split.i_crit_edge ], [ %.ph363.i, %if.end.i193.i.reg_w.exit218.sink.split.i_crit_edge ], [ %.ph363.i, %if.end.i204.i.reg_w.exit218.sink.split.i_crit_edge ], [ %.ph363.i, %if.end.i215.i.reg_w.exit218.sink.split.i_crit_edge ]
  %.ph478.i = phi i8 [ %.ph.i, %if.end.i170.i.reg_w.exit218.sink.split.i_crit_edge ], [ %.ph364.i, %if.end.i182.i.reg_w.exit218.sink.split.i_crit_edge ], [ %.ph364.i, %if.end.i193.i.reg_w.exit218.sink.split.i_crit_edge ], [ %.ph364.i, %if.end.i204.i.reg_w.exit218.sink.split.i_crit_edge ], [ %.ph364.i, %if.end.i215.i.reg_w.exit218.sink.split.i_crit_edge ]
  %call7.i171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i168.sink479.i) #11
  %113 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call3.i168.sink479.i, ptr %usb_err.i, align 8
  br label %reg_w.exit218.i

reg_w.exit218.i:                                  ; preds = %reg_w.exit218.sink.split.i, %if.end.i215.i.reg_w.exit218.i_crit_edge, %reg_w.exit207.i.reg_w.exit218.i_crit_edge, %reg_w.exit196.i.reg_w.exit218.i_crit_edge, %reg_w.exit185.i.reg_w.exit218.i_crit_edge, %reg_w.exit173.i.reg_w.exit218.i_crit_edge, %reg_w.exit.i124.reg_w.exit218.i_crit_edge
  %114 = phi i8 [ %.ph363.i, %reg_w.exit207.i.reg_w.exit218.i_crit_edge ], [ %.ph363.i, %if.end.i215.i.reg_w.exit218.i_crit_edge ], [ %.ph363.i, %reg_w.exit196.i.reg_w.exit218.i_crit_edge ], [ %.ph363.i, %reg_w.exit173.i.reg_w.exit218.i_crit_edge ], [ %.ph363.i, %reg_w.exit185.i.reg_w.exit218.i_crit_edge ], [ %88, %reg_w.exit.i124.reg_w.exit218.i_crit_edge ], [ %.ph477.i, %reg_w.exit218.sink.split.i ]
  %115 = phi i8 [ %.ph364.i, %reg_w.exit207.i.reg_w.exit218.i_crit_edge ], [ %.ph364.i, %if.end.i215.i.reg_w.exit218.i_crit_edge ], [ %.ph364.i, %reg_w.exit196.i.reg_w.exit218.i_crit_edge ], [ %.ph364.i, %reg_w.exit173.i.reg_w.exit218.i_crit_edge ], [ %.ph364.i, %reg_w.exit185.i.reg_w.exit218.i_crit_edge ], [ %.ph.i, %reg_w.exit.i124.reg_w.exit218.i_crit_edge ], [ %.ph478.i, %reg_w.exit218.sink.split.i ]
  %call.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i125 = icmp sgt i32 %call.i, -1
  br i1 %cmp.i125, label %reg_w.exit218.i.if.end41.sink.split_crit_edge, label %if.end.i126

reg_w.exit218.i.if.end41.sink.split_crit_edge:    ; preds = %reg_w.exit218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

if.end.i126:                                      ; preds = %reg_w.exit218.i
  %116 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i220.i = icmp slt i32 %117, 0
  br i1 %cmp.i220.i, label %if.end.i126.reg_w.exit252.i_crit_edge, label %if.end.i227.i

if.end.i126.reg_w.exit252.i_crit_edge:            ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit252.i

if.end.i227.i:                                    ; preds = %if.end.i126
  %dev1.i221.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %118 = ptrtoint ptr %dev1.i221.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev1.i221.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %shl.i.i222.i = shl i32 %121, 8
  %or.i223.i = or i32 %shl.i.i222.i, -2147483648
  %conv.i224.i = zext i8 %114 to i16
  %call3.i225.i = tail call i32 @usb_control_msg(ptr noundef %119, i32 noundef %or.i223.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i224.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i225.i)
  %cmp4.i226.i = icmp slt i32 %call3.i225.i, 0
  br i1 %cmp4.i226.i, label %if.end.i227.i.reg_w.exit252.sink.split.i_crit_edge, label %reg_w.exit230.i

if.end.i227.i.reg_w.exit252.sink.split.i_crit_edge: ; preds = %if.end.i227.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit252.sink.split.i

reg_w.exit230.i:                                  ; preds = %if.end.i227.i
  %122 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr383.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr383.i)
  %cmp.i232.i = icmp slt i32 %.pr383.i, 0
  br i1 %cmp.i232.i, label %reg_w.exit230.i.reg_w.exit252.i_crit_edge, label %if.end.i238.i

reg_w.exit230.i.reg_w.exit252.i_crit_edge:        ; preds = %reg_w.exit230.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit252.i

if.end.i238.i:                                    ; preds = %reg_w.exit230.i
  %123 = ptrtoint ptr %dev1.i221.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev1.i221.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i234.i = shl i32 %126, 8
  %or.i235.i = or i32 %shl.i.i234.i, -2147483648
  %call3.i236.i = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i235.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i236.i)
  %cmp4.i237.i = icmp slt i32 %call3.i236.i, 0
  br i1 %cmp4.i237.i, label %if.end.i238.i.reg_w.exit252.sink.split.i_crit_edge, label %reg_w.exit241.i

if.end.i238.i.reg_w.exit252.sink.split.i_crit_edge: ; preds = %if.end.i238.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit252.sink.split.i

reg_w.exit241.i:                                  ; preds = %if.end.i238.i
  %127 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr386.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr386.pr.i)
  %cmp.i243.i = icmp slt i32 %.pr386.pr.i, 0
  br i1 %cmp.i243.i, label %reg_w.exit241.i.reg_w.exit252.i_crit_edge, label %if.end.i249.i

reg_w.exit241.i.reg_w.exit252.i_crit_edge:        ; preds = %reg_w.exit241.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit252.i

if.end.i249.i:                                    ; preds = %reg_w.exit241.i
  %128 = ptrtoint ptr %dev1.i221.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev1.i221.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 8
  %shl.i.i245.i = shl i32 %131, 8
  %or.i246.i = or i32 %shl.i.i245.i, -2147483648
  %call3.i247.i = tail call i32 @usb_control_msg(ptr noundef %129, i32 noundef %or.i246.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 127, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i247.i)
  %cmp4.i248.i = icmp slt i32 %call3.i247.i, 0
  br i1 %cmp4.i248.i, label %if.end.i249.i.reg_w.exit252.sink.split.i_crit_edge, label %if.end.i249.i.reg_w.exit252.i_crit_edge

if.end.i249.i.reg_w.exit252.i_crit_edge:          ; preds = %if.end.i249.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit252.i

if.end.i249.i.reg_w.exit252.sink.split.i_crit_edge: ; preds = %if.end.i249.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit252.sink.split.i

reg_w.exit252.sink.split.i:                       ; preds = %if.end.i249.i.reg_w.exit252.sink.split.i_crit_edge, %if.end.i238.i.reg_w.exit252.sink.split.i_crit_edge, %if.end.i227.i.reg_w.exit252.sink.split.i_crit_edge
  %call3.i225.sink480.i = phi i32 [ %call3.i225.i, %if.end.i227.i.reg_w.exit252.sink.split.i_crit_edge ], [ %call3.i236.i, %if.end.i238.i.reg_w.exit252.sink.split.i_crit_edge ], [ %call3.i247.i, %if.end.i249.i.reg_w.exit252.sink.split.i_crit_edge ]
  %call7.i228.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i225.sink480.i) #11
  %132 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %call3.i225.sink480.i, ptr %usb_err.i, align 8
  br label %reg_w.exit252.i

reg_w.exit252.i:                                  ; preds = %reg_w.exit252.sink.split.i, %if.end.i249.i.reg_w.exit252.i_crit_edge, %reg_w.exit241.i.reg_w.exit252.i_crit_edge, %reg_w.exit230.i.reg_w.exit252.i_crit_edge, %if.end.i126.reg_w.exit252.i_crit_edge
  %call6.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp7.i = icmp sgt i32 %call6.i, -1
  br i1 %cmp7.i, label %reg_w.exit252.i.do.end34_crit_edge, label %if.end10.i

reg_w.exit252.i.do.end34_crit_edge:               ; preds = %reg_w.exit252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end10.i:                                       ; preds = %reg_w.exit252.i
  %133 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i254.i = icmp slt i32 %134, 0
  br i1 %cmp.i254.i, label %if.end10.i.reg_w.exit310.i_crit_edge, label %if.end.i261.i

if.end10.i.reg_w.exit310.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.i

if.end.i261.i:                                    ; preds = %if.end10.i
  %dev1.i255.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %135 = ptrtoint ptr %dev1.i255.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev1.i255.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 8
  %shl.i.i256.i = shl i32 %138, 8
  %or.i257.i = or i32 %shl.i.i256.i, -2147483648
  %conv.i258.i = zext i8 %114 to i16
  %call3.i259.i = tail call i32 @usb_control_msg(ptr noundef %136, i32 noundef %or.i257.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i258.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i259.i)
  %cmp4.i260.i = icmp slt i32 %call3.i259.i, 0
  br i1 %cmp4.i260.i, label %if.end.i261.i.reg_w.exit310.sink.split.i_crit_edge, label %reg_w.exit264.i

if.end.i261.i.reg_w.exit310.sink.split.i_crit_edge: ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.sink.split.i

reg_w.exit264.i:                                  ; preds = %if.end.i261.i
  %139 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pr389.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr389.i)
  %cmp.i266.i = icmp slt i32 %.pr389.i, 0
  br i1 %cmp.i266.i, label %reg_w.exit264.i.reg_w.exit310.i_crit_edge, label %if.end.i273.i

reg_w.exit264.i.reg_w.exit310.i_crit_edge:        ; preds = %reg_w.exit264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.i

if.end.i273.i:                                    ; preds = %reg_w.exit264.i
  %140 = ptrtoint ptr %dev1.i255.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev1.i255.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %shl.i.i268.i = shl i32 %143, 8
  %or.i269.i = or i32 %shl.i.i268.i, -2147483648
  %conv.i270.i = zext i8 %115 to i16
  %call3.i271.i = tail call i32 @usb_control_msg(ptr noundef %141, i32 noundef %or.i269.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i270.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i271.i)
  %cmp4.i272.i = icmp slt i32 %call3.i271.i, 0
  br i1 %cmp4.i272.i, label %if.end.i273.i.reg_w.exit310.sink.split.i_crit_edge, label %reg_w.exit276.i

if.end.i273.i.reg_w.exit310.sink.split.i_crit_edge: ; preds = %if.end.i273.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.sink.split.i

reg_w.exit276.i:                                  ; preds = %if.end.i273.i
  %144 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pr392.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr392.pr.i)
  %cmp.i278.i = icmp slt i32 %.pr392.pr.i, 0
  br i1 %cmp.i278.i, label %reg_w.exit276.i.reg_w.exit310.i_crit_edge, label %if.end.i285.i

reg_w.exit276.i.reg_w.exit310.i_crit_edge:        ; preds = %reg_w.exit276.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.i

if.end.i285.i:                                    ; preds = %reg_w.exit276.i
  %145 = ptrtoint ptr %dev1.i255.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev1.i255.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 8
  %shl.i.i280.i = shl i32 %148, 8
  %or.i281.i = or i32 %shl.i.i280.i, -2147483648
  %call3.i283.i = tail call i32 @usb_control_msg(ptr noundef %146, i32 noundef %or.i281.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i258.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i283.i)
  %cmp4.i284.i = icmp slt i32 %call3.i283.i, 0
  br i1 %cmp4.i284.i, label %if.end.i285.i.reg_w.exit310.sink.split.i_crit_edge, label %reg_w.exit288.i

if.end.i285.i.reg_w.exit310.sink.split.i_crit_edge: ; preds = %if.end.i285.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.sink.split.i

reg_w.exit288.i:                                  ; preds = %if.end.i285.i
  %149 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pr395.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr395.pr.i)
  %cmp.i290.i = icmp slt i32 %.pr395.pr.i, 0
  br i1 %cmp.i290.i, label %reg_w.exit288.i.reg_w.exit310.i_crit_edge, label %if.end.i296.i

reg_w.exit288.i.reg_w.exit310.i_crit_edge:        ; preds = %reg_w.exit288.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.i

if.end.i296.i:                                    ; preds = %reg_w.exit288.i
  %150 = ptrtoint ptr %dev1.i255.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev1.i255.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 8
  %shl.i.i292.i = shl i32 %153, 8
  %or.i293.i = or i32 %shl.i.i292.i, -2147483648
  %call3.i294.i = tail call i32 @usb_control_msg(ptr noundef %151, i32 noundef %or.i293.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i294.i)
  %cmp4.i295.i = icmp slt i32 %call3.i294.i, 0
  br i1 %cmp4.i295.i, label %if.end.i296.i.reg_w.exit310.sink.split.i_crit_edge, label %reg_w.exit299.i

if.end.i296.i.reg_w.exit310.sink.split.i_crit_edge: ; preds = %if.end.i296.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.sink.split.i

reg_w.exit299.i:                                  ; preds = %if.end.i296.i
  %154 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pr398.pr.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr398.pr.pr.i)
  %cmp.i301.i = icmp slt i32 %.pr398.pr.pr.i, 0
  br i1 %cmp.i301.i, label %reg_w.exit299.i.reg_w.exit310.i_crit_edge, label %if.end.i307.i

reg_w.exit299.i.reg_w.exit310.i_crit_edge:        ; preds = %reg_w.exit299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.i

if.end.i307.i:                                    ; preds = %reg_w.exit299.i
  %155 = ptrtoint ptr %dev1.i255.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev1.i255.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 8
  %shl.i.i303.i = shl i32 %158, 8
  %or.i304.i = or i32 %shl.i.i303.i, -2147483648
  %call3.i305.i = tail call i32 @usb_control_msg(ptr noundef %156, i32 noundef %or.i304.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 17, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i305.i)
  %cmp4.i306.i = icmp slt i32 %call3.i305.i, 0
  br i1 %cmp4.i306.i, label %if.end.i307.i.reg_w.exit310.sink.split.i_crit_edge, label %if.end.i307.i.reg_w.exit310.i_crit_edge

if.end.i307.i.reg_w.exit310.i_crit_edge:          ; preds = %if.end.i307.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.i

if.end.i307.i.reg_w.exit310.sink.split.i_crit_edge: ; preds = %if.end.i307.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit310.sink.split.i

reg_w.exit310.sink.split.i:                       ; preds = %if.end.i307.i.reg_w.exit310.sink.split.i_crit_edge, %if.end.i296.i.reg_w.exit310.sink.split.i_crit_edge, %if.end.i285.i.reg_w.exit310.sink.split.i_crit_edge, %if.end.i273.i.reg_w.exit310.sink.split.i_crit_edge, %if.end.i261.i.reg_w.exit310.sink.split.i_crit_edge
  %call3.i259.sink481.i = phi i32 [ %call3.i259.i, %if.end.i261.i.reg_w.exit310.sink.split.i_crit_edge ], [ %call3.i271.i, %if.end.i273.i.reg_w.exit310.sink.split.i_crit_edge ], [ %call3.i283.i, %if.end.i285.i.reg_w.exit310.sink.split.i_crit_edge ], [ %call3.i294.i, %if.end.i296.i.reg_w.exit310.sink.split.i_crit_edge ], [ %call3.i305.i, %if.end.i307.i.reg_w.exit310.sink.split.i_crit_edge ]
  %call7.i262.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i259.sink481.i) #11
  %159 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call3.i259.sink481.i, ptr %usb_err.i, align 8
  br label %reg_w.exit310.i

reg_w.exit310.i:                                  ; preds = %reg_w.exit310.sink.split.i, %if.end.i307.i.reg_w.exit310.i_crit_edge, %reg_w.exit299.i.reg_w.exit310.i_crit_edge, %reg_w.exit288.i.reg_w.exit310.i_crit_edge, %reg_w.exit276.i.reg_w.exit310.i_crit_edge, %reg_w.exit264.i.reg_w.exit310.i_crit_edge, %if.end10.i.reg_w.exit310.i_crit_edge
  %call17.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp sgt i32 %call17.i, 0
  br i1 %cmp18.i, label %reg_w.exit310.i.do.end34_crit_edge, label %if.end21.i

reg_w.exit310.i.do.end34_crit_edge:               ; preds = %reg_w.exit310.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end21.i:                                       ; preds = %reg_w.exit310.i
  %160 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp.i312.i = icmp slt i32 %161, 0
  br i1 %cmp.i312.i, label %if.end21.i.reg_w.exit357.i_crit_edge, label %if.end.i319.i

if.end21.i.reg_w.exit357.i_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.i

if.end.i319.i:                                    ; preds = %if.end21.i
  %dev1.i313.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %162 = ptrtoint ptr %dev1.i313.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev1.i313.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 8
  %shl.i.i314.i = shl i32 %165, 8
  %or.i315.i = or i32 %shl.i.i314.i, -2147483648
  %conv.i316.i = zext i8 %114 to i16
  %call3.i317.i = tail call i32 @usb_control_msg(ptr noundef %163, i32 noundef %or.i315.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i316.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i317.i)
  %cmp4.i318.i = icmp slt i32 %call3.i317.i, 0
  br i1 %cmp4.i318.i, label %if.end.i319.i.reg_w.exit357.sink.split.i_crit_edge, label %reg_w.exit322.i

if.end.i319.i.reg_w.exit357.sink.split.i_crit_edge: ; preds = %if.end.i319.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.sink.split.i

reg_w.exit322.i:                                  ; preds = %if.end.i319.i
  %166 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr401.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr401.i)
  %cmp.i324.i = icmp slt i32 %.pr401.i, 0
  br i1 %cmp.i324.i, label %reg_w.exit322.i.reg_w.exit357.i_crit_edge, label %if.end.i331.i

reg_w.exit322.i.reg_w.exit357.i_crit_edge:        ; preds = %reg_w.exit322.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.i

if.end.i331.i:                                    ; preds = %reg_w.exit322.i
  %167 = ptrtoint ptr %dev1.i313.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev1.i313.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 8
  %shl.i.i326.i = shl i32 %170, 8
  %or.i327.i = or i32 %shl.i.i326.i, -2147483648
  %conv.i328.i = zext i8 %115 to i16
  %call3.i329.i = tail call i32 @usb_control_msg(ptr noundef %168, i32 noundef %or.i327.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i328.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i329.i)
  %cmp4.i330.i = icmp slt i32 %call3.i329.i, 0
  br i1 %cmp4.i330.i, label %if.end.i331.i.reg_w.exit357.sink.split.i_crit_edge, label %reg_w.exit334.i

if.end.i331.i.reg_w.exit357.sink.split.i_crit_edge: ; preds = %if.end.i331.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.sink.split.i

reg_w.exit334.i:                                  ; preds = %if.end.i331.i
  %171 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr404.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr404.pr.i)
  %cmp.i336.i = icmp slt i32 %.pr404.pr.i, 0
  br i1 %cmp.i336.i, label %reg_w.exit334.i.reg_w.exit357.i_crit_edge, label %if.end.i343.i

reg_w.exit334.i.reg_w.exit357.i_crit_edge:        ; preds = %reg_w.exit334.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.i

if.end.i343.i:                                    ; preds = %reg_w.exit334.i
  %172 = ptrtoint ptr %dev1.i313.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev1.i313.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 8
  %shl.i.i338.i = shl i32 %175, 8
  %or.i339.i = or i32 %shl.i.i338.i, -2147483648
  %call3.i341.i = tail call i32 @usb_control_msg(ptr noundef %173, i32 noundef %or.i339.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i316.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i341.i)
  %cmp4.i342.i = icmp slt i32 %call3.i341.i, 0
  br i1 %cmp4.i342.i, label %if.end.i343.i.reg_w.exit357.sink.split.i_crit_edge, label %reg_w.exit346.i

if.end.i343.i.reg_w.exit357.sink.split.i_crit_edge: ; preds = %if.end.i343.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.sink.split.i

reg_w.exit346.i:                                  ; preds = %if.end.i343.i
  %176 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pr407.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr407.pr.i)
  %cmp.i348.i = icmp slt i32 %.pr407.pr.i, 0
  br i1 %cmp.i348.i, label %reg_w.exit346.i.reg_w.exit357.i_crit_edge, label %if.end.i354.i

reg_w.exit346.i.reg_w.exit357.i_crit_edge:        ; preds = %reg_w.exit346.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.i

if.end.i354.i:                                    ; preds = %reg_w.exit346.i
  %177 = ptrtoint ptr %dev1.i313.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev1.i313.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 8
  %shl.i.i350.i = shl i32 %180, 8
  %or.i351.i = or i32 %shl.i.i350.i, -2147483648
  %call3.i352.i = tail call i32 @usb_control_msg(ptr noundef %178, i32 noundef %or.i351.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 110, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i352.i)
  %cmp4.i353.i = icmp slt i32 %call3.i352.i, 0
  br i1 %cmp4.i353.i, label %if.end.i354.i.reg_w.exit357.sink.split.i_crit_edge, label %if.end.i354.i.reg_w.exit357.i_crit_edge

if.end.i354.i.reg_w.exit357.i_crit_edge:          ; preds = %if.end.i354.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.i

if.end.i354.i.reg_w.exit357.sink.split.i_crit_edge: ; preds = %if.end.i354.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit357.sink.split.i

reg_w.exit357.sink.split.i:                       ; preds = %if.end.i354.i.reg_w.exit357.sink.split.i_crit_edge, %if.end.i343.i.reg_w.exit357.sink.split.i_crit_edge, %if.end.i331.i.reg_w.exit357.sink.split.i_crit_edge, %if.end.i319.i.reg_w.exit357.sink.split.i_crit_edge
  %call3.i329.sink482.i = phi i32 [ %call3.i317.i, %if.end.i319.i.reg_w.exit357.sink.split.i_crit_edge ], [ %call3.i329.i, %if.end.i331.i.reg_w.exit357.sink.split.i_crit_edge ], [ %call3.i341.i, %if.end.i343.i.reg_w.exit357.sink.split.i_crit_edge ], [ %call3.i352.i, %if.end.i354.i.reg_w.exit357.sink.split.i_crit_edge ]
  %call7.i332.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i329.sink482.i) #11
  %181 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %call3.i329.sink482.i, ptr %usb_err.i, align 8
  br label %reg_w.exit357.i

reg_w.exit357.i:                                  ; preds = %reg_w.exit357.sink.split.i, %if.end.i354.i.reg_w.exit357.i_crit_edge, %reg_w.exit346.i.reg_w.exit357.i_crit_edge, %reg_w.exit334.i.reg_w.exit357.i_crit_edge, %reg_w.exit322.i.reg_w.exit357.i_crit_edge, %if.end21.i.reg_w.exit357.i_crit_edge
  %call28.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp sgt i32 %call28.i, 0
  br i1 %cmp29.i, label %reg_w.exit357.i.do.end34_crit_edge, label %if.end32.i

reg_w.exit357.i.do.end34_crit_edge:               ; preds = %reg_w.exit357.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end32.i:                                       ; preds = %reg_w.exit357.i
  %call33.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp sgt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end32.i.do.end34_crit_edge, label %if.end37.i

if.end32.i.do.end34_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end37.i:                                       ; preds = %if.end32.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %114) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %115) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %114) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext 4) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext 93) #8
  %call44.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 0, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp sgt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end37.i.do.end34_crit_edge, label %if.end48.i

if.end37.i.do.end34_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end48.i:                                       ; preds = %if.end37.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %114) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %115) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %114) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext 92) #8
  %call55.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 54, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp sgt i32 %call55.i, 0
  br i1 %cmp56.i, label %if.end48.i.do.end34_crit_edge, label %if.end59.i

if.end48.i.do.end34_crit_edge:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end59.i:                                       ; preds = %if.end48.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %115) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %114) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %115) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext 97) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 26, i8 noundef zeroext 16) #8
  %call63.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call63.i)
  %cmp64.i = icmp sgt i32 %call63.i, -1
  br i1 %cmp64.i, label %if.end59.i.do.end34_crit_edge, label %if.end67.i

if.end59.i.do.end34_crit_edge:                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end67.i:                                       ; preds = %if.end59.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %114) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %115) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %114) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext 32) #8
  %call74.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %cmp75.i = icmp sgt i32 %call74.i, 0
  br i1 %cmp75.i, label %if.end67.i.if.end41.sink.split_crit_edge, label %if.end67.i.do.end34_crit_edge

if.end67.i.do.end34_crit_edge:                    ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end67.i.if.end41.sink.split_crit_edge:         ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split

do.end34:                                         ; preds = %if.end67.i.do.end34_crit_edge, %if.end59.i.do.end34_crit_edge, %if.end48.i.do.end34_crit_edge, %if.end37.i.do.end34_crit_edge, %if.end32.i.do.end34_crit_edge, %reg_w.exit357.i.do.end34_crit_edge, %reg_w.exit310.i.do.end34_crit_edge, %reg_w.exit252.i.do.end34_crit_edge
  %retval.0.i.ph.neg = phi i32 [ 9, %if.end67.i.do.end34_crit_edge ], [ 8, %if.end59.i.do.end34_crit_edge ], [ 7, %if.end48.i.do.end34_crit_edge ], [ 6, %if.end37.i.do.end34_crit_edge ], [ 5, %if.end32.i.do.end34_crit_edge ], [ 4, %reg_w.exit357.i.do.end34_crit_edge ], [ 3, %reg_w.exit310.i.do.end34_crit_edge ], [ 2, %reg_w.exit252.i.do.end34_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %retval.0.i.ph.neg) #11
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %do.end34, %if.end67.i.if.end41.sink.split_crit_edge, %reg_w.exit218.i.if.end41.sink.split_crit_edge, %sw.bb24, %if.then19.if.end41.sink.split_crit_edge, %if.then12
  %sensor27.0.sink = phi i8 [ 0, %sw.bb24 ], [ %conv13, %if.then12 ], [ 1, %if.then19.if.end41.sink.split_crit_edge ], [ 1, %do.end34 ], [ 1, %reg_w.exit218.i.if.end41.sink.split_crit_edge ], [ 0, %if.end67.i.if.end41.sink.split_crit_edge ]
  %sensor39 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %182 = ptrtoint ptr %sensor39 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %sensor27.0.sink, ptr %sensor39, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.then19.if.end41_crit_edge
  %sensor42 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %183 = ptrtoint ptr %sensor42 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %sensor42, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %184)
  %cmp44 = icmp eq i8 %184, 1
  br i1 %cmp44, label %do.end49, label %do.end61

do.end49:                                         ; preds = %if.end41
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  %185 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %186)
  %cmp54 = icmp eq i8 %186, 1
  br i1 %cmp54, label %if.then56, label %do.end49.if.end70_crit_edge

do.end49.if.end70_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then56:                                        ; preds = %do.end49
  %dev1.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %reg_w.exit.i.i.do.body.i.i_crit_edge, %if.then56
  %p.addr.0.i.i = phi ptr [ @soi763a_6810_init.reg_init_1, %if.then56 ], [ %incdec.ptr.i.i, %reg_w.exit.i.i.do.body.i.i_crit_edge ]
  %l.addr.0.i.i = phi i32 [ 7, %if.then56 ], [ %dec.i.i, %reg_w.exit.i.i.do.body.i.i_crit_edge ]
  %187 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp.i.i.i = icmp slt i32 %188, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.reg_w.exit.i.i_crit_edge, label %if.end.i.i.i

do.body.i.i.reg_w.exit.i.i_crit_edge:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i
  %val.i.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i.i, i32 0, i32 1
  %189 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %val.i.i, align 1
  %191 = ptrtoint ptr %p.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %p.addr.0.i.i, align 1
  %193 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev1.i.i.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 8
  %shl.i.i.i.i = shl i32 %196, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %conv.i.i.i = zext i8 %190 to i16
  %conv2.i.i.i = zext i8 %192 to i16
  %call3.i.i.i = tail call i32 @usb_control_msg(ptr noundef %194, i32 noundef %or.i.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i.i, i16 noundef zeroext %conv2.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp4.i.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp4.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i.reg_w.exit.i.i_crit_edge

if.end.i.i.i.reg_w.exit.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i.i) #11
  %197 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call3.i.i.i, ptr %usb_err.i, align 8
  br label %reg_w.exit.i.i

reg_w.exit.i.i:                                   ; preds = %do.end.i.i.i, %if.end.i.i.i.reg_w.exit.i.i_crit_edge, %do.body.i.i.reg_w.exit.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.cmd, ptr %p.addr.0.i.i, i32 1
  %dec.i.i = add nsw i32 %l.addr.0.i.i, -1
  %cmp.i.not.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.not.i, label %reg_w.exit.i.i.do.body.i10.i_crit_edge, label %reg_w.exit.i.i.do.body.i.i_crit_edge

reg_w.exit.i.i.do.body.i.i_crit_edge:             ; preds = %reg_w.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

reg_w.exit.i.i.do.body.i10.i_crit_edge:           ; preds = %reg_w.exit.i.i
  br label %do.body.i10.i

do.body.i10.i:                                    ; preds = %reg_w.exit.i24.i.do.body.i10.i_crit_edge, %reg_w.exit.i.i.do.body.i10.i_crit_edge
  %p.addr.0.i7.i = phi ptr [ %incdec.ptr.i21.i, %reg_w.exit.i24.i.do.body.i10.i_crit_edge ], [ @tp6810_ov_init_common, %reg_w.exit.i.i.do.body.i10.i_crit_edge ]
  %l.addr.0.i8.i = phi i32 [ %dec.i22.i, %reg_w.exit.i24.i.do.body.i10.i_crit_edge ], [ 18, %reg_w.exit.i.i.do.body.i10.i_crit_edge ]
  %198 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp.i.i9.i = icmp slt i32 %199, 0
  br i1 %cmp.i.i9.i, label %do.body.i10.i.reg_w.exit.i24.i_crit_edge, label %if.end.i.i18.i

do.body.i10.i.reg_w.exit.i24.i_crit_edge:         ; preds = %do.body.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i24.i

if.end.i.i18.i:                                   ; preds = %do.body.i10.i
  %val.i11.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i7.i, i32 0, i32 1
  %200 = ptrtoint ptr %val.i11.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %val.i11.i, align 1
  %202 = ptrtoint ptr %p.addr.0.i7.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %p.addr.0.i7.i, align 1
  %204 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev1.i.i.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 8
  %shl.i.i.i12.i = shl i32 %207, 8
  %or.i.i13.i = or i32 %shl.i.i.i12.i, -2147483648
  %conv.i.i14.i = zext i8 %201 to i16
  %conv2.i.i15.i = zext i8 %203 to i16
  %call3.i.i16.i = tail call i32 @usb_control_msg(ptr noundef %205, i32 noundef %or.i.i13.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i14.i, i16 noundef zeroext %conv2.i.i15.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i16.i)
  %cmp4.i.i17.i = icmp slt i32 %call3.i.i16.i, 0
  br i1 %cmp4.i.i17.i, label %do.end.i.i20.i, label %if.end.i.i18.i.reg_w.exit.i24.i_crit_edge

if.end.i.i18.i.reg_w.exit.i24.i_crit_edge:        ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i24.i

do.end.i.i20.i:                                   ; preds = %if.end.i.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i16.i) #11
  %208 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %call3.i.i16.i, ptr %usb_err.i, align 8
  br label %reg_w.exit.i24.i

reg_w.exit.i24.i:                                 ; preds = %do.end.i.i20.i, %if.end.i.i18.i.reg_w.exit.i24.i_crit_edge, %do.body.i10.i.reg_w.exit.i24.i_crit_edge
  %incdec.ptr.i21.i = getelementptr %struct.cmd, ptr %p.addr.0.i7.i, i32 1
  %dec.i22.i = add nsw i32 %l.addr.0.i8.i, -1
  %cmp.i23.not.i = icmp eq i32 %dec.i22.i, 0
  br i1 %cmp.i23.not.i, label %do.body.i31.preheader.i, label %reg_w.exit.i24.i.do.body.i10.i_crit_edge

reg_w.exit.i24.i.do.body.i10.i_crit_edge:         ; preds = %reg_w.exit.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i10.i

do.body.i31.preheader.i:                          ; preds = %reg_w.exit.i24.i
  %209 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp.i.i30.i = icmp slt i32 %210, 0
  br i1 %cmp.i.i30.i, label %do.body.i31.preheader.i.reg_w.exit.i45.i_crit_edge, label %if.end.i.i39.i

do.body.i31.preheader.i.reg_w.exit.i45.i_crit_edge: ; preds = %do.body.i31.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i45.i

if.end.i.i39.i:                                   ; preds = %do.body.i31.preheader.i
  %211 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev1.i.i.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %212, align 8
  %shl.i.i.i33.i = shl i32 %214, 8
  %or.i.i34.i = or i32 %shl.i.i.i33.i, -2147483648
  %call3.i.i37.i = tail call i32 @usb_control_msg(ptr noundef %212, i32 noundef %or.i.i34.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 84, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i37.i)
  %cmp4.i.i38.i = icmp slt i32 %call3.i.i37.i, 0
  br i1 %cmp4.i.i38.i, label %do.end.i.i41.i, label %if.end.i.i39.i.reg_w.exit.i45.i_crit_edge

if.end.i.i39.i.reg_w.exit.i45.i_crit_edge:        ; preds = %if.end.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i45.i

do.end.i.i41.i:                                   ; preds = %if.end.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i37.i) #11
  %215 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %call3.i.i37.i, ptr %usb_err.i, align 8
  br label %reg_w.exit.i45.i

reg_w.exit.i45.i:                                 ; preds = %do.end.i.i41.i, %if.end.i.i39.i.reg_w.exit.i45.i_crit_edge, %do.body.i31.preheader.i.reg_w.exit.i45.i_crit_edge
  %call.i127 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128) #8
  tail call void @msleep(i32 noundef 10) #8
  br label %do.body.i53.i

do.body.i53.i:                                    ; preds = %do.body.i53.i.do.body.i53.i_crit_edge, %reg_w.exit.i45.i
  %p.addr.0.i47.i = phi ptr [ @soi763a_6810_init.sensor_init, %reg_w.exit.i45.i ], [ %incdec.ptr.i50.i, %do.body.i53.i.do.body.i53.i_crit_edge ]
  %l.addr.0.i48.i = phi i32 [ 128, %reg_w.exit.i45.i ], [ %dec.i51.i, %do.body.i53.i.do.body.i53.i_crit_edge ]
  %216 = ptrtoint ptr %p.addr.0.i47.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %p.addr.0.i47.i, align 1
  %val.i49.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i47.i, i32 0, i32 1
  %218 = ptrtoint ptr %val.i49.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %val.i49.i, align 1
  %call.i.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %217, i8 noundef zeroext %219) #8
  %incdec.ptr.i50.i = getelementptr %struct.cmd, ptr %p.addr.0.i47.i, i32 1
  %dec.i51.i = add nsw i32 %l.addr.0.i48.i, -1
  %cmp.i52.not.i = icmp eq i32 %dec.i51.i, 0
  br i1 %cmp.i52.not.i, label %do.body.i53.i.if.end70_crit_edge, label %do.body.i53.i.do.body.i53.i_crit_edge

do.body.i53.i.do.body.i53.i_crit_edge:            ; preds = %do.body.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i53.i

do.body.i53.i.if.end70_crit_edge:                 ; preds = %do.body.i53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

do.end61:                                         ; preds = %if.end41
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  %220 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %221)
  %cmp66 = icmp eq i8 %221, 1
  br i1 %cmp66, label %if.then68, label %do.end61.if.end70_crit_edge

do.end61.if.end70_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then68:                                        ; preds = %do.end61
  %dev1.i.i.i129 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %do.body.i.i133

do.body.i.i133:                                   ; preds = %reg_w.exit.i.i147.do.body.i.i133_crit_edge, %if.then68
  %p.addr.0.i.i130 = phi ptr [ @cx0342_6810_init.reg_init_1, %if.then68 ], [ %incdec.ptr.i.i144, %reg_w.exit.i.i147.do.body.i.i133_crit_edge ]
  %l.addr.0.i.i131 = phi i32 [ 9, %if.then68 ], [ %dec.i.i145, %reg_w.exit.i.i147.do.body.i.i133_crit_edge ]
  %222 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp.i.i.i132 = icmp slt i32 %223, 0
  br i1 %cmp.i.i.i132, label %do.body.i.i133.reg_w.exit.i.i147_crit_edge, label %if.end.i.i.i141

do.body.i.i133.reg_w.exit.i.i147_crit_edge:       ; preds = %do.body.i.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i147

if.end.i.i.i141:                                  ; preds = %do.body.i.i133
  %val.i.i134 = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i.i130, i32 0, i32 1
  %224 = ptrtoint ptr %val.i.i134 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %val.i.i134, align 1
  %226 = ptrtoint ptr %p.addr.0.i.i130 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %p.addr.0.i.i130, align 1
  %228 = ptrtoint ptr %dev1.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev1.i.i.i129, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %229, align 8
  %shl.i.i.i.i135 = shl i32 %231, 8
  %or.i.i.i136 = or i32 %shl.i.i.i.i135, -2147483648
  %conv.i.i.i137 = zext i8 %225 to i16
  %conv2.i.i.i138 = zext i8 %227 to i16
  %call3.i.i.i139 = tail call i32 @usb_control_msg(ptr noundef %229, i32 noundef %or.i.i.i136, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i.i137, i16 noundef zeroext %conv2.i.i.i138, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i139)
  %cmp4.i.i.i140 = icmp slt i32 %call3.i.i.i139, 0
  br i1 %cmp4.i.i.i140, label %do.end.i.i.i143, label %if.end.i.i.i141.reg_w.exit.i.i147_crit_edge

if.end.i.i.i141.reg_w.exit.i.i147_crit_edge:      ; preds = %if.end.i.i.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i147

do.end.i.i.i143:                                  ; preds = %if.end.i.i.i141
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i.i139) #11
  %232 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %call3.i.i.i139, ptr %usb_err.i, align 8
  br label %reg_w.exit.i.i147

reg_w.exit.i.i147:                                ; preds = %do.end.i.i.i143, %if.end.i.i.i141.reg_w.exit.i.i147_crit_edge, %do.body.i.i133.reg_w.exit.i.i147_crit_edge
  %incdec.ptr.i.i144 = getelementptr %struct.cmd, ptr %p.addr.0.i.i130, i32 1
  %dec.i.i145 = add nsw i32 %l.addr.0.i.i131, -1
  %cmp.i.not.i146 = icmp eq i32 %dec.i.i145, 0
  br i1 %cmp.i.not.i146, label %reg_w.exit.i.i147.do.body.i11.i_crit_edge, label %reg_w.exit.i.i147.do.body.i.i133_crit_edge

reg_w.exit.i.i147.do.body.i.i133_crit_edge:       ; preds = %reg_w.exit.i.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i133

reg_w.exit.i.i147.do.body.i11.i_crit_edge:        ; preds = %reg_w.exit.i.i147
  br label %do.body.i11.i

do.body.i11.i:                                    ; preds = %reg_w.exit.i25.i.do.body.i11.i_crit_edge, %reg_w.exit.i.i147.do.body.i11.i_crit_edge
  %p.addr.0.i8.i = phi ptr [ %incdec.ptr.i22.i, %reg_w.exit.i25.i.do.body.i11.i_crit_edge ], [ @tp6810_cx_init_common, %reg_w.exit.i.i147.do.body.i11.i_crit_edge ]
  %l.addr.0.i9.i = phi i32 [ %dec.i23.i, %reg_w.exit.i25.i.do.body.i11.i_crit_edge ], [ 23, %reg_w.exit.i.i147.do.body.i11.i_crit_edge ]
  %233 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %cmp.i.i10.i = icmp slt i32 %234, 0
  br i1 %cmp.i.i10.i, label %do.body.i11.i.reg_w.exit.i25.i_crit_edge, label %if.end.i.i19.i

do.body.i11.i.reg_w.exit.i25.i_crit_edge:         ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i25.i

if.end.i.i19.i:                                   ; preds = %do.body.i11.i
  %val.i12.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i8.i, i32 0, i32 1
  %235 = ptrtoint ptr %val.i12.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %val.i12.i, align 1
  %237 = ptrtoint ptr %p.addr.0.i8.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %p.addr.0.i8.i, align 1
  %239 = ptrtoint ptr %dev1.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev1.i.i.i129, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %240, align 8
  %shl.i.i.i13.i = shl i32 %242, 8
  %or.i.i14.i = or i32 %shl.i.i.i13.i, -2147483648
  %conv.i.i15.i = zext i8 %236 to i16
  %conv2.i.i16.i = zext i8 %238 to i16
  %call3.i.i17.i = tail call i32 @usb_control_msg(ptr noundef %240, i32 noundef %or.i.i14.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i15.i, i16 noundef zeroext %conv2.i.i16.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i17.i)
  %cmp4.i.i18.i = icmp slt i32 %call3.i.i17.i, 0
  br i1 %cmp4.i.i18.i, label %do.end.i.i21.i, label %if.end.i.i19.i.reg_w.exit.i25.i_crit_edge

if.end.i.i19.i.reg_w.exit.i25.i_crit_edge:        ; preds = %if.end.i.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i25.i

do.end.i.i21.i:                                   ; preds = %if.end.i.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i17.i) #11
  %243 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %call3.i.i17.i, ptr %usb_err.i, align 8
  br label %reg_w.exit.i25.i

reg_w.exit.i25.i:                                 ; preds = %do.end.i.i21.i, %if.end.i.i19.i.reg_w.exit.i25.i_crit_edge, %do.body.i11.i.reg_w.exit.i25.i_crit_edge
  %incdec.ptr.i22.i = getelementptr %struct.cmd, ptr %p.addr.0.i8.i, i32 1
  %dec.i23.i = add nsw i32 %l.addr.0.i9.i, -1
  %cmp.i24.not.i = icmp eq i32 %dec.i23.i, 0
  br i1 %cmp.i24.not.i, label %do.body.i32.preheader.i, label %reg_w.exit.i25.i.do.body.i11.i_crit_edge

reg_w.exit.i25.i.do.body.i11.i_crit_edge:         ; preds = %reg_w.exit.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i11.i

do.body.i32.preheader.i:                          ; preds = %reg_w.exit.i25.i
  %244 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp.i.i31.i = icmp slt i32 %245, 0
  br i1 %cmp.i.i31.i, label %do.body.i32.preheader.i.do.body.i55.i.preheader_crit_edge, label %if.end.i.i40.i

do.body.i32.preheader.i.do.body.i55.i.preheader_crit_edge: ; preds = %do.body.i32.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i55.i.preheader

if.end.i.i40.i:                                   ; preds = %do.body.i32.preheader.i
  %246 = ptrtoint ptr %dev1.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev1.i.i.i129, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 8
  %shl.i.i.i34.i = shl i32 %249, 8
  %or.i.i35.i = or i32 %shl.i.i.i34.i, -2147483648
  %call3.i.i38.i = tail call i32 @usb_control_msg(ptr noundef %247, i32 noundef %or.i.i35.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 72, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i38.i)
  %cmp4.i.i39.i = icmp slt i32 %call3.i.i38.i, 0
  br i1 %cmp4.i.i39.i, label %if.end.i.i40.i.reg_w.exit.sink.split.i_crit_edge, label %reg_w.exit.i46.i

if.end.i.i40.i.reg_w.exit.sink.split.i_crit_edge: ; preds = %if.end.i.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.sink.split.i

reg_w.exit.i46.i:                                 ; preds = %if.end.i.i40.i
  %250 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %.pr.i148 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i148)
  %cmp.i.i31.1.i = icmp slt i32 %.pr.i148, 0
  br i1 %cmp.i.i31.1.i, label %reg_w.exit.i46.i.do.body.i55.i.preheader_crit_edge, label %if.end.i.i40.1.i

reg_w.exit.i46.i.do.body.i55.i.preheader_crit_edge: ; preds = %reg_w.exit.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i55.i.preheader

if.end.i.i40.1.i:                                 ; preds = %reg_w.exit.i46.i
  %251 = ptrtoint ptr %dev1.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev1.i.i.i129, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %252, align 8
  %shl.i.i.i34.1.i = shl i32 %254, 8
  %or.i.i35.1.i = or i32 %shl.i.i.i34.1.i, -2147483648
  %call3.i.i38.1.i = tail call i32 @usb_control_msg(ptr noundef %252, i32 noundef %or.i.i35.1.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i38.1.i)
  %cmp4.i.i39.1.i = icmp slt i32 %call3.i.i38.1.i, 0
  br i1 %cmp4.i.i39.1.i, label %if.end.i.i40.1.i.reg_w.exit.sink.split.i_crit_edge, label %reg_w.exit.i46.1.i

if.end.i.i40.1.i.reg_w.exit.sink.split.i_crit_edge: ; preds = %if.end.i.i40.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.sink.split.i

reg_w.exit.i46.1.i:                               ; preds = %if.end.i.i40.1.i
  %255 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %.pr68.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr68.pr.i)
  %cmp.i48.i = icmp slt i32 %.pr68.pr.i, 0
  br i1 %cmp.i48.i, label %reg_w.exit.i46.1.i.do.body.i55.i.preheader_crit_edge, label %if.end.i.i153

reg_w.exit.i46.1.i.do.body.i55.i.preheader_crit_edge: ; preds = %reg_w.exit.i46.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i55.i.preheader

if.end.i.i153:                                    ; preds = %reg_w.exit.i46.1.i
  %256 = ptrtoint ptr %dev1.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev1.i.i.i129, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %257, align 8
  %shl.i.i.i149 = shl i32 %259, 8
  %or.i.i150 = or i32 %shl.i.i.i149, -2147483648
  %call3.i.i151 = tail call i32 @usb_control_msg(ptr noundef %257, i32 noundef %or.i.i150, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i151)
  %cmp4.i.i152 = icmp slt i32 %call3.i.i151, 0
  br i1 %cmp4.i.i152, label %if.end.i.i153.reg_w.exit.sink.split.i_crit_edge, label %if.end.i.i153.do.body.i55.i.preheader_crit_edge

if.end.i.i153.do.body.i55.i.preheader_crit_edge:  ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i55.i.preheader

if.end.i.i153.reg_w.exit.sink.split.i_crit_edge:  ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.sink.split.i

reg_w.exit.sink.split.i:                          ; preds = %if.end.i.i153.reg_w.exit.sink.split.i_crit_edge, %if.end.i.i40.1.i.reg_w.exit.sink.split.i_crit_edge, %if.end.i.i40.i.reg_w.exit.sink.split.i_crit_edge
  %call3.i.i38.sink75.i = phi i32 [ %call3.i.i38.i, %if.end.i.i40.i.reg_w.exit.sink.split.i_crit_edge ], [ %call3.i.i38.1.i, %if.end.i.i40.1.i.reg_w.exit.sink.split.i_crit_edge ], [ %call3.i.i151, %if.end.i.i153.reg_w.exit.sink.split.i_crit_edge ]
  %call7.i.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i38.sink75.i) #11
  %260 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %call3.i.i38.sink75.i, ptr %usb_err.i, align 8
  br label %do.body.i55.i.preheader

do.body.i55.i.preheader:                          ; preds = %reg_w.exit.sink.split.i, %if.end.i.i153.do.body.i55.i.preheader_crit_edge, %reg_w.exit.i46.1.i.do.body.i55.i.preheader_crit_edge, %reg_w.exit.i46.i.do.body.i55.i.preheader_crit_edge, %do.body.i32.preheader.i.do.body.i55.i.preheader_crit_edge
  br label %do.body.i55.i

do.body.i55.i:                                    ; preds = %do.body.i55.i.do.body.i55.i_crit_edge, %do.body.i55.i.preheader
  %p.addr.0.i49.i = phi ptr [ %incdec.ptr.i52.i, %do.body.i55.i.do.body.i55.i_crit_edge ], [ @cx0342_6810_init.sensor_init, %do.body.i55.i.preheader ]
  %l.addr.0.i50.i = phi i32 [ %dec.i53.i, %do.body.i55.i.do.body.i55.i_crit_edge ], [ 31, %do.body.i55.i.preheader ]
  %261 = ptrtoint ptr %p.addr.0.i49.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %p.addr.0.i49.i, align 1
  %val.i51.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i49.i, i32 0, i32 1
  %263 = ptrtoint ptr %val.i51.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %val.i51.i, align 1
  %call.i.i155 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %262, i8 noundef zeroext %264) #8
  %incdec.ptr.i52.i = getelementptr %struct.cmd, ptr %p.addr.0.i49.i, i32 1
  %dec.i53.i = add nsw i32 %l.addr.0.i50.i, -1
  %cmp.i54.not.i = icmp eq i32 %dec.i53.i, 0
  br i1 %cmp.i54.not.i, label %do.body.i55.i.do.body.i64.i_crit_edge, label %do.body.i55.i.do.body.i55.i_crit_edge

do.body.i55.i.do.body.i55.i_crit_edge:            ; preds = %do.body.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i55.i

do.body.i55.i.do.body.i64.i_crit_edge:            ; preds = %do.body.i55.i
  br label %do.body.i64.i

do.body.i64.i:                                    ; preds = %do.body.i64.i.do.body.i64.i_crit_edge, %do.body.i55.i.do.body.i64.i_crit_edge
  %p.addr.0.i57.i = phi ptr [ %incdec.ptr.i61.i, %do.body.i64.i.do.body.i64.i_crit_edge ], [ @cx0342_timing_seq, %do.body.i55.i.do.body.i64.i_crit_edge ]
  %l.addr.0.i58.i = phi i32 [ %dec.i62.i, %do.body.i64.i.do.body.i64.i_crit_edge ], [ 35, %do.body.i55.i.do.body.i64.i_crit_edge ]
  %265 = ptrtoint ptr %p.addr.0.i57.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %p.addr.0.i57.i, align 1
  %val.i59.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i57.i, i32 0, i32 1
  %267 = ptrtoint ptr %val.i59.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %val.i59.i, align 1
  %call.i60.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %266, i8 noundef zeroext %268) #8
  %incdec.ptr.i61.i = getelementptr %struct.cmd, ptr %p.addr.0.i57.i, i32 1
  %dec.i62.i = add nsw i32 %l.addr.0.i58.i, -1
  %cmp.i63.not.i = icmp eq i32 %dec.i62.i, 0
  br i1 %cmp.i63.not.i, label %do.body.i64.i.if.end70_crit_edge, label %do.body.i64.i.do.body.i64.i_crit_edge

do.body.i64.i.do.body.i64.i_crit_edge:            ; preds = %do.body.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i64.i

do.body.i64.i.if.end70_crit_edge:                 ; preds = %do.body.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end70:                                         ; preds = %do.body.i64.i.if.end70_crit_edge, %do.end61.if.end70_crit_edge, %do.body.i53.i.if.end70_crit_edge, %do.end49.if.end70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %269 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %269)
  %cmp.i156 = icmp sgt i32 %269, 2
  br i1 %cmp.i156, label %do.end.i158, label %if.end70.do.end4.i_crit_edge

if.end70.do.end4.i_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i158:                                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %quality.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %270 = ptrtoint ptr %quality.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %quality.i, align 1
  %conv.i = zext i8 %271 to i32
  %call.i157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef 0) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i158, %if.end70.do.end4.i_crit_edge
  %quality5.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %272 = ptrtoint ptr %quality5.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %quality5.i, align 1
  %273 = ptrtoint ptr %sensor42 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %sensor42, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %274)
  %cmp12.i = icmp eq i8 %274, 1
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %do.end4.i
  %jpeg_hdr.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then14.i
  %i.033.i.i = phi i32 [ 0, %if.then14.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.033.i.i, 7
  %arrayidx.i.i = getelementptr [521 x i8], ptr @jpeg_head, i32 0, i32 %add.i.i
  %275 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i159 = zext i8 %276 to i16
  %mul6.i.i = mul nuw nsw i16 %conv.i.i159, 24
  %add7.i.i = add nuw nsw i16 %mul6.i.i, 50
  %div8.i.i163164 = udiv i16 %add7.i.i, 100
  %conv9.i.i = trunc i16 %div8.i.i163164 to i8
  %arrayidx11.i.i = getelementptr i8, ptr %jpeg_hdr.i, i32 %add.i.i
  %277 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv9.i.i, ptr %arrayidx11.i.i, align 1
  %add12.i.i = add nuw nsw i32 %i.033.i.i, 72
  %arrayidx13.i.i = getelementptr [521 x i8], ptr @jpeg_head, i32 0, i32 %add12.i.i
  %278 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %279 to i16
  %mul15.i.i = mul nuw nsw i16 %conv14.i.i, 24
  %add16.i.i = add nuw nsw i16 %mul15.i.i, 50
  %div17.i.i165166 = udiv i16 %add16.i.i, 100
  %conv18.i.i = trunc i16 %div17.i.i165166 to i8
  %arrayidx20.i.i = getelementptr i8, ptr %jpeg_hdr.i, i32 %add12.i.i
  %280 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv18.i.i, ptr %arrayidx20.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.body.i.i.set_dqt.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.set_dqt.exit_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_dqt.exit

if.else.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 6
  %281 = call ptr @memcpy(ptr %arrayidx18.i, ptr @DQT, i32 130)
  br label %set_dqt.exit

set_dqt.exit:                                     ; preds = %if.else.i, %for.body.i.i.set_dqt.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.19) #8
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 220, i64 noundef 1, i64 noundef 78) #8
  %1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %exposure, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 256) #8
  %red = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %5 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %red, align 8
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 256) #8
  %blue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %6 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %blue, align 4
  %7 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %sensor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = phi i8 [ %.pr, %if.then ], [ %4, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp8 = icmp eq i8 %8, 1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 3) #8
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 256) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %call12.sink = phi ptr [ %call11, %if.then10 ], [ %call12, %if.else ]
  %9 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12.sink, ptr %9, align 8
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 2) #8
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %11 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %sharpness, align 4
  %12 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp18 = icmp eq i8 %13, 1
  br i1 %cmp18, label %land.rhs, label %if.end14.land.end_crit_edge

if.end14.land.end_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %14 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp21 = icmp ne i8 %15, 0
  %phi.cast = zext i1 %cmp21 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end14.land.end_crit_edge
  %16 = phi i32 [ 1, %if.end14.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %17 = zext i32 %16 to i64
  %call24 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963792, i64 noundef 0, i64 noundef 5, i64 noundef 1, i64 noundef %17) #8
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %18 = ptrtoint ptr %gamma to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call24, ptr %gamma, align 8
  %bridge25 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %19 = ptrtoint ptr %bridge25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bridge25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp27 = icmp eq i8 %20, 1
  br i1 %cmp27, label %if.then29, label %land.end.if.end31_crit_edge

land.end.if.end31_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call30, ptr %1, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.end.if.end31_crit_edge
  %22 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp34 = icmp eq i8 %23, 1
  br i1 %cmp34, label %if.then36, label %if.end31.if.end44_crit_edge

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %bridge25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bridge25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp39 = icmp eq i8 %25, 1
  %26 = select i1 %cmp39, i64 0, i64 13
  %call43 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef %26) #8
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %27 = ptrtoint ptr %jpegqual to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call43, ptr %jpegqual, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.end31.if.end44_crit_edge
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %28 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %if.end49, label %do.end

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %tobool51.not = icmp eq ptr %33, null
  br i1 %tobool51.not, label %if.else54, label %if.then52

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  br label %cleanup

if.else54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %exposure) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else54, %if.then52, %do.end
  %retval.0 = phi i32 [ %31, %do.end ], [ 0, %if.else54 ], [ 0, %if.then52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %actual_count.i265.i = alloca i32, align 4
  %actual_count.i.i171 = alloca i32, align 4
  %actual_count.i.i132 = alloca i32, align 4
  %actual_count.i.i = alloca i32, align 4
  %actual_count.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height, align 4
  %2 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixfmt, align 8
  %4 = call ptr @memcpy(ptr %jpeg_hdr, ptr @jpeg_head, i32 521)
  %5 = lshr i32 %1, 8
  %conv.i = trunc i32 %5 to i8
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 493
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %1 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 494
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %8 = lshr i32 %3, 8
  %conv4.i = trunc i32 %8 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 495
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %3 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 496
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %quality = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %11 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %quality, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp sgt i32 %13, 2
  br i1 %cmp.i, label %do.end.i, label %entry.do.end4.i_crit_edge

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv.i81 = zext i8 %12 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef %conv.i81, i32 noundef %conv.i81) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %14 = ptrtoint ptr %quality to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %quality, align 1
  %15 = tail call i8 @llvm.umin.i8(i8 %12, i8 16) #8
  %sensor.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %16 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp12.i = icmp eq i8 %17, 1
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %do.end4.i
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i82 = getelementptr [17 x i8], ptr @jpeg_q, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i82, align 1
  %20 = add nsw i32 %idxprom.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %cmp1.i.i = icmp ult i32 %20, 10
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else3.i.i

if.then2.i.i:                                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %div31.rhs.trunc.i.i = zext i8 %19 to i16
  %div3132.i.i = udiv i16 5000, %div31.rhs.trunc.i.i
  %div31.zext.i.i = zext i16 %div3132.i.i to i32
  br label %if.end4.i.i

if.else3.i.i:                                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv16.i = zext i8 %19 to i32
  %mul.neg.i.i = mul nsw i32 %conv16.i, -2
  %sub.i.i = add nsw i32 %mul.neg.i.i, 200
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.else3.i.i, %if.then2.i.i
  %sc.0.i.i = phi i32 [ %div31.zext.i.i, %if.then2.i.i ], [ %sub.i.i, %if.else3.i.i ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end4.i.i
  %i.033.i.i = phi i32 [ 0, %if.end4.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.033.i.i, 7
  %arrayidx.i.i = getelementptr [521 x i8], ptr @jpeg_head, i32 0, i32 %add.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %22 to i32
  %mul6.i.i = mul nsw i32 %sc.0.i.i, %conv.i.i
  %add7.i.i = add nsw i32 %mul6.i.i, 50
  %div8.i.i = sdiv i32 %add7.i.i, 100
  %conv9.i.i = trunc i32 %div8.i.i to i8
  %arrayidx11.i.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i.i
  %23 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv9.i.i, ptr %arrayidx11.i.i, align 1
  %add12.i.i = add nuw nsw i32 %i.033.i.i, 72
  %arrayidx13.i.i = getelementptr [521 x i8], ptr @jpeg_head, i32 0, i32 %add12.i.i
  %24 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %25 to i32
  %mul15.i.i = mul nsw i32 %sc.0.i.i, %conv14.i.i
  %add16.i.i = add nsw i32 %mul15.i.i, 50
  %div17.i.i = sdiv i32 %add16.i.i, 100
  %conv18.i.i = trunc i32 %div17.i.i to i8
  %arrayidx20.i.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i.i
  %26 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv18.i.i, ptr %arrayidx20.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.body.i.i.set_dqt.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.set_dqt.exit_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_dqt.exit

if.else.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 6
  %idxprom19.i = zext i8 %15 to i32
  %arrayidx20.i = getelementptr [17 x [130 x i8]], ptr @DQT, i32 0, i32 %idxprom19.i
  %27 = call ptr @memcpy(ptr %arrayidx18.i, ptr %arrayidx20.i, i32 130)
  br label %set_dqt.exit

set_dqt.exit:                                     ; preds = %if.else.i, %for.body.i.i.set_dqt.exit_crit_edge
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %28 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp = icmp eq i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp4 = icmp eq i8 %17, 0
  %usb_err.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %set_dqt.exit
  %dev1.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br i1 %cmp4, label %if.then.do.body.i.i_crit_edge, label %if.then.do.body.i.i92_crit_edge

if.then.do.body.i.i92_crit_edge:                  ; preds = %if.then
  br label %do.body.i.i92

if.then.do.body.i.i_crit_edge:                    ; preds = %if.then
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %reg_w.exit.i.i.do.body.i.i_crit_edge, %if.then.do.body.i.i_crit_edge
  %p.addr.0.i.i = phi ptr [ %incdec.ptr.i.i, %reg_w.exit.i.i.do.body.i.i_crit_edge ], [ @cx0342_6800_start.reg_init, %if.then.do.body.i.i_crit_edge ]
  %l.addr.0.i.i = phi i32 [ %dec.i.i, %reg_w.exit.i.i.do.body.i.i_crit_edge ], [ 29, %if.then.do.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i = icmp slt i32 %31, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.reg_w.exit.i.i_crit_edge, label %if.end.i.i.i

do.body.i.i.reg_w.exit.i.i_crit_edge:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i
  %val.i.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i.i, align 1
  %34 = ptrtoint ptr %p.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %p.addr.0.i.i, align 1
  %36 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i.i.i = shl i32 %39, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %conv.i.i.i = zext i8 %33 to i16
  %conv2.i.i.i = zext i8 %35 to i16
  %call3.i.i.i = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i.i, i16 noundef zeroext %conv2.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp4.i.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp4.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i.reg_w.exit.i.i_crit_edge

if.end.i.i.i.reg_w.exit.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i.i) #11
  %40 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call3.i.i.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i.i

reg_w.exit.i.i:                                   ; preds = %do.end.i.i.i, %if.end.i.i.i.reg_w.exit.i.i_crit_edge, %do.body.i.i.reg_w.exit.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.cmd, ptr %p.addr.0.i.i, i32 1
  %dec.i.i = add nsw i32 %l.addr.0.i.i, -1
  %cmp.i.not.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.not.i, label %reg_w.exit.i.i.do.body.i34.i_crit_edge, label %reg_w.exit.i.i.do.body.i.i_crit_edge

reg_w.exit.i.i.do.body.i.i_crit_edge:             ; preds = %reg_w.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

reg_w.exit.i.i.do.body.i34.i_crit_edge:           ; preds = %reg_w.exit.i.i
  br label %do.body.i34.i

do.body.i34.i:                                    ; preds = %do.body.i34.i.do.body.i34.i_crit_edge, %reg_w.exit.i.i.do.body.i34.i_crit_edge
  %p.addr.0.i28.i = phi ptr [ %incdec.ptr.i31.i, %do.body.i34.i.do.body.i34.i_crit_edge ], [ @cx0342_6800_start.sensor_init, %reg_w.exit.i.i.do.body.i34.i_crit_edge ]
  %l.addr.0.i29.i = phi i32 [ %dec.i32.i, %do.body.i34.i.do.body.i34.i_crit_edge ], [ 29, %reg_w.exit.i.i.do.body.i34.i_crit_edge ]
  %41 = ptrtoint ptr %p.addr.0.i28.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %p.addr.0.i28.i, align 1
  %val.i30.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i28.i, i32 0, i32 1
  %43 = ptrtoint ptr %val.i30.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val.i30.i, align 1
  %call.i.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %42, i8 noundef zeroext %44) #8
  %incdec.ptr.i31.i = getelementptr %struct.cmd, ptr %p.addr.0.i28.i, i32 1
  %dec.i32.i = add nsw i32 %l.addr.0.i29.i, -1
  %cmp.i33.not.i = icmp eq i32 %dec.i32.i, 0
  br i1 %cmp.i33.not.i, label %do.body.i34.i.do.body.i42.i_crit_edge, label %do.body.i34.i.do.body.i34.i_crit_edge

do.body.i34.i.do.body.i34.i_crit_edge:            ; preds = %do.body.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i34.i

do.body.i34.i.do.body.i42.i_crit_edge:            ; preds = %do.body.i34.i
  br label %do.body.i42.i

do.body.i42.i:                                    ; preds = %do.body.i42.i.do.body.i42.i_crit_edge, %do.body.i34.i.do.body.i42.i_crit_edge
  %p.addr.0.i35.i = phi ptr [ %incdec.ptr.i39.i, %do.body.i42.i.do.body.i42.i_crit_edge ], [ @cx0342_timing_seq, %do.body.i34.i.do.body.i42.i_crit_edge ]
  %l.addr.0.i36.i = phi i32 [ %dec.i40.i, %do.body.i42.i.do.body.i42.i_crit_edge ], [ 35, %do.body.i34.i.do.body.i42.i_crit_edge ]
  %45 = ptrtoint ptr %p.addr.0.i35.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %p.addr.0.i35.i, align 1
  %val.i37.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i35.i, i32 0, i32 1
  %47 = ptrtoint ptr %val.i37.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %val.i37.i, align 1
  %call.i38.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %46, i8 noundef zeroext %48) #8
  %incdec.ptr.i39.i = getelementptr %struct.cmd, ptr %p.addr.0.i35.i, i32 1
  %dec.i40.i = add nsw i32 %l.addr.0.i36.i, -1
  %cmp.i41.not.i = icmp eq i32 %dec.i40.i, 0
  br i1 %cmp.i41.not.i, label %i2c_w_buf.exit43.i, label %do.body.i42.i.do.body.i42.i_crit_edge

do.body.i42.i.do.body.i42.i_crit_edge:            ; preds = %do.body.i42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i42.i

i2c_w_buf.exit43.i:                               ; preds = %do.body.i42.i
  %49 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i44.i = icmp slt i32 %50, 0
  br i1 %cmp.i44.i, label %i2c_w_buf.exit43.i.reg_w.exit55.i_crit_edge, label %if.end.i.i

i2c_w_buf.exit43.i.reg_w.exit55.i_crit_edge:      ; preds = %i2c_w_buf.exit43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit55.i

if.end.i.i:                                       ; preds = %i2c_w_buf.exit43.i
  %51 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1.i.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i.i = shl i32 %54, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 92, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.reg_w.exit55.sink.split.i_crit_edge, label %reg_w.exit.i

if.end.i.i.reg_w.exit55.sink.split.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit55.sink.split.i

reg_w.exit.i:                                     ; preds = %if.end.i.i
  %55 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i46.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i46.i, label %reg_w.exit.i.reg_w.exit55.i_crit_edge, label %if.end.i52.i

reg_w.exit.i.reg_w.exit55.i_crit_edge:            ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit55.i

if.end.i52.i:                                     ; preds = %reg_w.exit.i
  %56 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i48.i = shl i32 %59, 8
  %or.i49.i = or i32 %shl.i.i48.i, -2147483648
  %call3.i50.i = tail call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i49.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 84, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i50.i)
  %cmp4.i51.i = icmp slt i32 %call3.i50.i, 0
  br i1 %cmp4.i51.i, label %if.end.i52.i.reg_w.exit55.sink.split.i_crit_edge, label %if.end.i52.i.reg_w.exit55.i_crit_edge

if.end.i52.i.reg_w.exit55.i_crit_edge:            ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit55.i

if.end.i52.i.reg_w.exit55.sink.split.i_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit55.sink.split.i

reg_w.exit55.sink.split.i:                        ; preds = %if.end.i52.i.reg_w.exit55.sink.split.i_crit_edge, %if.end.i.i.reg_w.exit55.sink.split.i_crit_edge
  %call3.i.sink74.i = phi i32 [ %call3.i.i, %if.end.i.i.reg_w.exit55.sink.split.i_crit_edge ], [ %call3.i50.i, %if.end.i52.i.reg_w.exit55.sink.split.i_crit_edge ]
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.sink74.i) #11
  %60 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call3.i.sink74.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit55.i

reg_w.exit55.i:                                   ; preds = %reg_w.exit55.sink.split.i, %if.end.i52.i.reg_w.exit55.i_crit_edge, %reg_w.exit.i.reg_w.exit55.i_crit_edge, %i2c_w_buf.exit43.i.reg_w.exit55.i_crit_edge
  %call.i83 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext 0) #8
  %call1.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 32, i8 noundef zeroext 1) #8
  %61 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp.i85 = icmp eq i8 %62, 0
  %exposure.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %exposure.i, align 4
  %call3.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %64) #8
  %gain.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %65 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gain.i, align 8
  %call4.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %66) #8
  br i1 %cmp.i85, label %if.then.i, label %if.else.i86

if.then.i:                                        ; preds = %reg_w.exit55.i
  call void @__sanitizer_cov_trace_pc() #10
  %blue.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %67 = ptrtoint ptr %blue.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %blue.i, align 4
  %call5.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %68) #8
  %red.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %69 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %red.i, align 8
  %call6.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %70) #8
  tail call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call3.i, i32 noundef %call4.i, i32 noundef %call5.i, i32 noundef %call6.i) #8
  br label %if.end.i

if.else.i86:                                      ; preds = %reg_w.exit55.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call3.i, i32 noundef %call4.i, i32 noundef 0, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i86, %if.then.i
  tail call fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef 1) #8
  %71 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i.i57.i = icmp slt i32 %72, 0
  br i1 %cmp.i.i57.i, label %if.end.i.reg_w.exit.i67.i_crit_edge, label %if.end.i.i63.i

if.end.i.reg_w.exit.i67.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i67.i

if.end.i.i63.i:                                   ; preds = %if.end.i
  %73 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev1.i.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 8
  %shl.i.i.i59.i = shl i32 %76, 8
  %or.i.i60.i = or i32 %shl.i.i.i59.i, -2147483648
  %call3.i.i61.i = tail call i32 @usb_control_msg(ptr noundef %74, i32 noundef %or.i.i60.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i61.i)
  %cmp4.i.i62.i = icmp slt i32 %call3.i.i61.i, 0
  br i1 %cmp4.i.i62.i, label %do.end.i.i65.i, label %reg_w.exit.i67thread-pre-split.i

do.end.i.i65.i:                                   ; preds = %if.end.i.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i61.i) #11
  %77 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call3.i.i61.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i67.i

reg_w.exit.i67thread-pre-split.i:                 ; preds = %if.end.i.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr73.i = load i32, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i67.i

reg_w.exit.i67.i:                                 ; preds = %reg_w.exit.i67thread-pre-split.i, %do.end.i.i65.i, %if.end.i.reg_w.exit.i67.i_crit_edge
  %79 = phi i32 [ %.pr73.i, %reg_w.exit.i67thread-pre-split.i ], [ %call3.i.i61.i, %do.end.i.i65.i ], [ %72, %if.end.i.reg_w.exit.i67.i_crit_edge ]
  %80 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %81)
  %cmp.i66.i = icmp eq i32 %81, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i36.i.i = icmp slt i32 %79, 0
  br i1 %cmp.i66.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %reg_w.exit.i67.i
  br i1 %cmp.i36.i.i, label %if.then.i.i.reg_w.exit45.i.i_crit_edge, label %if.end.i42.i.i

if.then.i.i.reg_w.exit45.i.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit45.i.i

if.end.i42.i.i:                                   ; preds = %if.then.i.i
  %82 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1.i.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %shl.i.i38.i.i = shl i32 %85, 8
  %or.i39.i.i = or i32 %shl.i.i38.i.i, -2147483648
  %call3.i40.i.i = tail call i32 @usb_control_msg(ptr noundef %83, i32 noundef %or.i39.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 6, i16 noundef zeroext 63, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i40.i.i)
  %cmp4.i41.i.i = icmp slt i32 %call3.i40.i.i, 0
  br i1 %cmp4.i41.i.i, label %do.end.i44.i.i, label %if.end.i42.i.i.reg_w.exit45.i.i_crit_edge

if.end.i42.i.i.reg_w.exit45.i.i_crit_edge:        ; preds = %if.end.i42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit45.i.i

do.end.i44.i.i:                                   ; preds = %if.end.i42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i43.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i40.i.i) #11
  %86 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call3.i40.i.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit45.i.i

reg_w.exit45.i.i:                                 ; preds = %do.end.i44.i.i, %if.end.i42.i.i.reg_w.exit45.i.i_crit_edge, %if.then.i.i.reg_w.exit45.i.i_crit_edge
  tail call void @msleep(i32 noundef 100) #8
  %call.i68.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 39, i8 noundef zeroext 1) #8
  tail call void @msleep(i32 noundef 100) #8
  %87 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i47.i.i = icmp slt i32 %88, 0
  br i1 %cmp.i47.i.i, label %reg_w.exit45.i.i.if.end.i70.i_crit_edge, label %if.end.i53.i.i

reg_w.exit45.i.i.if.end.i70.i_crit_edge:          ; preds = %reg_w.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

if.end.i53.i.i:                                   ; preds = %reg_w.exit45.i.i
  %89 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev1.i.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i49.i.i = shl i32 %92, 8
  %or.i50.i.i = or i32 %shl.i.i49.i.i, -2147483648
  %call3.i51.i.i = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i50.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i51.i.i)
  %cmp4.i52.i.i = icmp slt i32 %call3.i51.i.i, 0
  br i1 %cmp4.i52.i.i, label %if.end.i53.i.i.if.end.sink.split.i.i_crit_edge, label %reg_w.exit56.i.i

if.end.i53.i.i.if.end.sink.split.i.i_crit_edge:   ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i.i

reg_w.exit56.i.i:                                 ; preds = %if.end.i53.i.i
  %93 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr.i.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp.i58.i.i = icmp slt i32 %.pr.i.i, 0
  br i1 %cmp.i58.i.i, label %reg_w.exit56.i.i.if.end.i70.i_crit_edge, label %if.end.i64.i.i

reg_w.exit56.i.i.if.end.i70.i_crit_edge:          ; preds = %reg_w.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

if.end.i64.i.i:                                   ; preds = %reg_w.exit56.i.i
  %94 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev1.i.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  %shl.i.i60.i.i = shl i32 %97, 8
  %or.i61.i.i = or i32 %shl.i.i60.i.i, -2147483648
  %call3.i62.i.i = tail call i32 @usb_control_msg(ptr noundef %95, i32 noundef %or.i61.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i62.i.i)
  %cmp4.i63.i.i = icmp slt i32 %call3.i62.i.i, 0
  br i1 %cmp4.i63.i.i, label %if.end.i64.i.i.if.end.sink.split.i.i_crit_edge, label %reg_w.exit67.i.i

if.end.i64.i.i.if.end.sink.split.i.i_crit_edge:   ; preds = %if.end.i64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i.i

reg_w.exit67.i.i:                                 ; preds = %if.end.i64.i.i
  %98 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr130.pr.i.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr130.pr.i.i)
  %cmp.i69.i.i = icmp slt i32 %.pr130.pr.i.i, 0
  br i1 %cmp.i69.i.i, label %reg_w.exit67.i.i.if.end.i70.i_crit_edge, label %if.end.i75.i.i

reg_w.exit67.i.i.if.end.i70.i_crit_edge:          ; preds = %reg_w.exit67.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

if.end.i75.i.i:                                   ; preds = %reg_w.exit67.i.i
  %99 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev1.i.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  %shl.i.i71.i.i = shl i32 %102, 8
  %or.i72.i.i = or i32 %shl.i.i71.i.i, -2147483648
  %call3.i73.i.i = tail call i32 @usb_control_msg(ptr noundef %100, i32 noundef %or.i72.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 13, i16 noundef zeroext 93, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i73.i.i)
  %cmp4.i74.i.i = icmp slt i32 %call3.i73.i.i, 0
  br i1 %cmp4.i74.i.i, label %if.end.i75.i.i.if.end.sink.split.i.i_crit_edge, label %if.end.i75.i.i.if.end.i70.i_crit_edge

if.end.i75.i.i.if.end.i70.i_crit_edge:            ; preds = %if.end.i75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

if.end.i75.i.i.if.end.sink.split.i.i_crit_edge:   ; preds = %if.end.i75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i.i

if.else.i.i:                                      ; preds = %reg_w.exit.i67.i
  br i1 %cmp.i36.i.i, label %if.else.i.i.reg_w.exit89.i.i_crit_edge, label %if.end.i86.i.i

if.else.i.i.reg_w.exit89.i.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit89.i.i

if.end.i86.i.i:                                   ; preds = %if.else.i.i
  %103 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev1.i.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %shl.i.i82.i.i = shl i32 %106, 8
  %or.i83.i.i = or i32 %shl.i.i82.i.i, -2147483648
  %call3.i84.i.i = tail call i32 @usb_control_msg(ptr noundef %104, i32 noundef %or.i83.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 63, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i84.i.i)
  %cmp4.i85.i.i = icmp slt i32 %call3.i84.i.i, 0
  br i1 %cmp4.i85.i.i, label %do.end.i88.i.i, label %if.end.i86.i.i.reg_w.exit89.i.i_crit_edge

if.end.i86.i.i.reg_w.exit89.i.i_crit_edge:        ; preds = %if.end.i86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit89.i.i

do.end.i88.i.i:                                   ; preds = %if.end.i86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i87.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i84.i.i) #11
  %107 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call3.i84.i.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit89.i.i

reg_w.exit89.i.i:                                 ; preds = %do.end.i88.i.i, %if.end.i86.i.i.reg_w.exit89.i.i_crit_edge, %if.else.i.i.reg_w.exit89.i.i_crit_edge
  tail call void @msleep(i32 noundef 100) #8
  %call3.i69.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 39, i8 noundef zeroext 1) #8
  tail call void @msleep(i32 noundef 100) #8
  %108 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp.i91.i.i = icmp slt i32 %109, 0
  br i1 %cmp.i91.i.i, label %reg_w.exit89.i.i.if.end.i70.i_crit_edge, label %if.end.i97.i.i

reg_w.exit89.i.i.if.end.i70.i_crit_edge:          ; preds = %reg_w.exit89.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

if.end.i97.i.i:                                   ; preds = %reg_w.exit89.i.i
  %110 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev1.i.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 8
  %shl.i.i93.i.i = shl i32 %113, 8
  %or.i94.i.i = or i32 %shl.i.i93.i.i, -2147483648
  %call3.i95.i.i = tail call i32 @usb_control_msg(ptr noundef %111, i32 noundef %or.i94.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i95.i.i)
  %cmp4.i96.i.i = icmp slt i32 %call3.i95.i.i, 0
  br i1 %cmp4.i96.i.i, label %if.end.i97.i.i.if.end.sink.split.i.i_crit_edge, label %reg_w.exit100.i.i

if.end.i97.i.i.if.end.sink.split.i.i_crit_edge:   ; preds = %if.end.i97.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i.i

reg_w.exit100.i.i:                                ; preds = %if.end.i97.i.i
  %114 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr132.i.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr132.i.i)
  %cmp.i102.i.i = icmp slt i32 %.pr132.i.i, 0
  br i1 %cmp.i102.i.i, label %reg_w.exit100.i.i.if.end.i70.i_crit_edge, label %if.end.i108.i.i

reg_w.exit100.i.i.if.end.i70.i_crit_edge:         ; preds = %reg_w.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

if.end.i108.i.i:                                  ; preds = %reg_w.exit100.i.i
  %115 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev1.i.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  %shl.i.i104.i.i = shl i32 %118, 8
  %or.i105.i.i = or i32 %shl.i.i104.i.i, -2147483648
  %call3.i106.i.i = tail call i32 @usb_control_msg(ptr noundef %116, i32 noundef %or.i105.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i106.i.i)
  %cmp4.i107.i.i = icmp slt i32 %call3.i106.i.i, 0
  br i1 %cmp4.i107.i.i, label %if.end.i108.i.i.if.end.sink.split.i.i_crit_edge, label %reg_w.exit111.i.i

if.end.i108.i.i.if.end.sink.split.i.i_crit_edge:  ; preds = %if.end.i108.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i.i

reg_w.exit111.i.i:                                ; preds = %if.end.i108.i.i
  %119 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr134.pr.i.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr134.pr.i.i)
  %cmp.i113.i.i = icmp slt i32 %.pr134.pr.i.i, 0
  br i1 %cmp.i113.i.i, label %reg_w.exit111.i.i.if.end.i70.i_crit_edge, label %if.end.i119.i.i

reg_w.exit111.i.i.if.end.i70.i_crit_edge:         ; preds = %reg_w.exit111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

if.end.i119.i.i:                                  ; preds = %reg_w.exit111.i.i
  %120 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev1.i.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 8
  %shl.i.i115.i.i = shl i32 %123, 8
  %or.i116.i.i = or i32 %shl.i.i115.i.i, -2147483648
  %call3.i117.i.i = tail call i32 @usb_control_msg(ptr noundef %121, i32 noundef %or.i116.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 9, i16 noundef zeroext 93, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i117.i.i)
  %cmp4.i118.i.i = icmp slt i32 %call3.i117.i.i, 0
  br i1 %cmp4.i118.i.i, label %if.end.i119.i.i.if.end.sink.split.i.i_crit_edge, label %if.end.i119.i.i.if.end.i70.i_crit_edge

if.end.i119.i.i.if.end.i70.i_crit_edge:           ; preds = %if.end.i119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70.i

if.end.i119.i.i.if.end.sink.split.i.i_crit_edge:  ; preds = %if.end.i119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i.i

if.end.sink.split.i.i:                            ; preds = %if.end.i119.i.i.if.end.sink.split.i.i_crit_edge, %if.end.i108.i.i.if.end.sink.split.i.i_crit_edge, %if.end.i97.i.i.if.end.sink.split.i.i_crit_edge, %if.end.i75.i.i.if.end.sink.split.i.i_crit_edge, %if.end.i64.i.i.if.end.sink.split.i.i_crit_edge, %if.end.i53.i.i.if.end.sink.split.i.i_crit_edge
  %call3.i95.sink149.sink151.i.i = phi i32 [ %call3.i51.i.i, %if.end.i53.i.i.if.end.sink.split.i.i_crit_edge ], [ %call3.i62.i.i, %if.end.i64.i.i.if.end.sink.split.i.i_crit_edge ], [ %call3.i73.i.i, %if.end.i75.i.i.if.end.sink.split.i.i_crit_edge ], [ %call3.i95.i.i, %if.end.i97.i.i.if.end.sink.split.i.i_crit_edge ], [ %call3.i106.i.i, %if.end.i108.i.i.if.end.sink.split.i.i_crit_edge ], [ %call3.i117.i.i, %if.end.i119.i.i.if.end.sink.split.i.i_crit_edge ]
  %.sink150.ph.i.i = phi i8 [ 55, %if.end.i53.i.i.if.end.sink.split.i.i_crit_edge ], [ 55, %if.end.i64.i.i.if.end.sink.split.i.i_crit_edge ], [ 55, %if.end.i75.i.i.if.end.sink.split.i.i_crit_edge ], [ -49, %if.end.i97.i.i.if.end.sink.split.i.i_crit_edge ], [ -49, %if.end.i108.i.i.if.end.sink.split.i.i_crit_edge ], [ -49, %if.end.i119.i.i.if.end.sink.split.i.i_crit_edge ]
  %.sink.ph.i.i = phi i8 [ 1, %if.end.i53.i.i.if.end.sink.split.i.i_crit_edge ], [ 1, %if.end.i64.i.i.if.end.sink.split.i.i_crit_edge ], [ 1, %if.end.i75.i.i.if.end.sink.split.i.i_crit_edge ], [ 0, %if.end.i97.i.i.if.end.sink.split.i.i_crit_edge ], [ 0, %if.end.i108.i.i.if.end.sink.split.i.i_crit_edge ], [ 0, %if.end.i119.i.i.if.end.sink.split.i.i_crit_edge ]
  %call7.i98.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i95.sink149.sink151.i.i) #11
  %124 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call3.i95.sink149.sink151.i.i, ptr %usb_err.i.i.i, align 8
  br label %if.end.i70.i

if.end.i70.i:                                     ; preds = %if.end.sink.split.i.i, %if.end.i119.i.i.if.end.i70.i_crit_edge, %reg_w.exit111.i.i.if.end.i70.i_crit_edge, %reg_w.exit100.i.i.if.end.i70.i_crit_edge, %reg_w.exit89.i.i.if.end.i70.i_crit_edge, %if.end.i75.i.i.if.end.i70.i_crit_edge, %reg_w.exit67.i.i.if.end.i70.i_crit_edge, %reg_w.exit56.i.i.if.end.i70.i_crit_edge, %reg_w.exit45.i.i.if.end.i70.i_crit_edge
  %.sink150.i.i = phi i8 [ 55, %reg_w.exit45.i.i.if.end.i70.i_crit_edge ], [ 55, %reg_w.exit56.i.i.if.end.i70.i_crit_edge ], [ 55, %reg_w.exit67.i.i.if.end.i70.i_crit_edge ], [ 55, %if.end.i75.i.i.if.end.i70.i_crit_edge ], [ -49, %reg_w.exit89.i.i.if.end.i70.i_crit_edge ], [ -49, %reg_w.exit100.i.i.if.end.i70.i_crit_edge ], [ -49, %reg_w.exit111.i.i.if.end.i70.i_crit_edge ], [ -49, %if.end.i119.i.i.if.end.i70.i_crit_edge ], [ %.sink150.ph.i.i, %if.end.sink.split.i.i ]
  %.sink.i.i = phi i8 [ 1, %reg_w.exit45.i.i.if.end.i70.i_crit_edge ], [ 1, %reg_w.exit56.i.i.if.end.i70.i_crit_edge ], [ 1, %reg_w.exit67.i.i.if.end.i70.i_crit_edge ], [ 1, %if.end.i75.i.i.if.end.i70.i_crit_edge ], [ 0, %reg_w.exit89.i.i.if.end.i70.i_crit_edge ], [ 0, %reg_w.exit100.i.i.if.end.i70.i_crit_edge ], [ 0, %reg_w.exit111.i.i.if.end.i70.i_crit_edge ], [ 0, %if.end.i119.i.i.if.end.i70.i_crit_edge ], [ %.sink.ph.i.i, %if.end.sink.split.i.i ]
  %call4.i.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext %.sink150.i.i) #8
  %call5.i.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext %.sink.i.i) #8
  %call6.i.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 32, i8 noundef zeroext 1) #8
  %125 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i.i.i) #8
  %127 = ptrtoint ptr %actual_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %actual_count.i.i.i, align 4, !annotation !179
  %128 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i125.i.i = icmp slt i32 %129, 0
  br i1 %cmp.i125.i.i, label %if.end.i70.i.bulk_w.exit.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end.i70.i.bulk_w.exit.i.i_crit_edge:           ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end.i70.i
  %usb_buf.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %130 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %usb_buf.i.i.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 3, ptr %131, align 1
  %133 = load ptr, ptr %usb_buf.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr i8, ptr %133, i32 1
  %134 = call ptr @memcpy(ptr %arrayidx4.i.i.i, ptr @color_gain, i32 18)
  %135 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %126, align 8
  %shl.i.i126.i.i = shl i32 %136, 8
  %or.i127.i.i = or i32 %shl.i.i126.i.i, -1073643520
  %137 = load ptr, ptr %usb_buf.i.i.i, align 4
  %call6.i.i.i = call i32 @usb_bulk_msg(ptr noundef %126, i32 noundef %or.i127.i.i, ptr noundef %137, i32 noundef 19, ptr noundef nonnull %actual_count.i.i.i, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %cmp7.i.i.i = icmp slt i32 %call6.i.i.i, 0
  br i1 %cmp7.i.i.i, label %do.end.i128.i.i, label %for.cond.preheader.i.i.i.bulk_w.exit.i.i_crit_edge

for.cond.preheader.i.i.i.bulk_w.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit.i.i

do.end.i128.i.i:                                  ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i.i.i, i32 noundef 3) #11
  %138 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %call6.i.i.i, ptr %usb_err.i.i.i, align 8
  br label %bulk_w.exit.i.i

bulk_w.exit.i.i:                                  ; preds = %do.end.i128.i.i, %for.cond.preheader.i.i.i.bulk_w.exit.i.i_crit_edge, %if.end.i70.i.bulk_w.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i.i.i) #8
  %gamma.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %139 = ptrtoint ptr %gamma.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %gamma.i.i, align 8
  %call7.i71.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %140) #8
  call fastcc void @setgamma(ptr noundef %gspca_dev, i32 noundef %call7.i71.i) #8
  %141 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %142)
  %cmp8.i.i = icmp eq i8 %142, 1
  br i1 %cmp8.i.i, label %if.then10.i.i, label %bulk_w.exit.i.i.if.end45_crit_edge

bulk_w.exit.i.i.if.end45_crit_edge:               ; preds = %bulk_w.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then10.i.i:                                    ; preds = %bulk_w.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %jpegqual.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %143 = ptrtoint ptr %jpegqual.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %jpegqual.i.i, align 8
  %call11.i.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %144) #8
  call fastcc void @setquality(ptr noundef %gspca_dev, i32 noundef %call11.i.i) #8
  br label %if.end45

do.body.i.i92:                                    ; preds = %reg_w.exit.i.i106.do.body.i.i92_crit_edge, %if.then.do.body.i.i92_crit_edge
  %p.addr.0.i.i89 = phi ptr [ %incdec.ptr.i.i103, %reg_w.exit.i.i106.do.body.i.i92_crit_edge ], [ @soi763a_6800_start.reg_init, %if.then.do.body.i.i92_crit_edge ]
  %l.addr.0.i.i90 = phi i32 [ %dec.i.i104, %reg_w.exit.i.i106.do.body.i.i92_crit_edge ], [ 33, %if.then.do.body.i.i92_crit_edge ]
  %145 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp.i.i.i91 = icmp slt i32 %146, 0
  br i1 %cmp.i.i.i91, label %do.body.i.i92.reg_w.exit.i.i106_crit_edge, label %if.end.i.i.i100

do.body.i.i92.reg_w.exit.i.i106_crit_edge:        ; preds = %do.body.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i106

if.end.i.i.i100:                                  ; preds = %do.body.i.i92
  %val.i.i93 = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i.i89, i32 0, i32 1
  %147 = ptrtoint ptr %val.i.i93 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %val.i.i93, align 1
  %149 = ptrtoint ptr %p.addr.0.i.i89 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %p.addr.0.i.i89, align 1
  %151 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev1.i.i.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %shl.i.i.i.i94 = shl i32 %154, 8
  %or.i.i.i95 = or i32 %shl.i.i.i.i94, -2147483648
  %conv.i.i.i96 = zext i8 %148 to i16
  %conv2.i.i.i97 = zext i8 %150 to i16
  %call3.i.i.i98 = tail call i32 @usb_control_msg(ptr noundef %152, i32 noundef %or.i.i.i95, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i.i96, i16 noundef zeroext %conv2.i.i.i97, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i98)
  %cmp4.i.i.i99 = icmp slt i32 %call3.i.i.i98, 0
  br i1 %cmp4.i.i.i99, label %do.end.i.i.i102, label %if.end.i.i.i100.reg_w.exit.i.i106_crit_edge

if.end.i.i.i100.reg_w.exit.i.i106_crit_edge:      ; preds = %if.end.i.i.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i106

do.end.i.i.i102:                                  ; preds = %if.end.i.i.i100
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i.i98) #11
  %155 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call3.i.i.i98, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i.i106

reg_w.exit.i.i106:                                ; preds = %do.end.i.i.i102, %if.end.i.i.i100.reg_w.exit.i.i106_crit_edge, %do.body.i.i92.reg_w.exit.i.i106_crit_edge
  %incdec.ptr.i.i103 = getelementptr %struct.cmd, ptr %p.addr.0.i.i89, i32 1
  %dec.i.i104 = add nsw i32 %l.addr.0.i.i90, -1
  %cmp.i.not.i105 = icmp eq i32 %dec.i.i104, 0
  br i1 %cmp.i.not.i105, label %reg_w_buf.exit.i, label %reg_w.exit.i.i106.do.body.i.i92_crit_edge

reg_w.exit.i.i106.do.body.i.i92_crit_edge:        ; preds = %reg_w.exit.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i92

reg_w_buf.exit.i:                                 ; preds = %reg_w.exit.i.i106
  %call.i107 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128) #8
  tail call void @msleep(i32 noundef 10) #8
  br label %do.body.i47.i

do.body.i47.i:                                    ; preds = %do.body.i47.i.do.body.i47.i_crit_edge, %reg_w_buf.exit.i
  %p.addr.0.i41.i = phi ptr [ @soi763a_6800_start.sensor_init, %reg_w_buf.exit.i ], [ %incdec.ptr.i44.i, %do.body.i47.i.do.body.i47.i_crit_edge ]
  %l.addr.0.i42.i = phi i32 [ 46, %reg_w_buf.exit.i ], [ %dec.i45.i, %do.body.i47.i.do.body.i47.i_crit_edge ]
  %156 = ptrtoint ptr %p.addr.0.i41.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %p.addr.0.i41.i, align 1
  %val.i43.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i41.i, i32 0, i32 1
  %158 = ptrtoint ptr %val.i43.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %val.i43.i, align 1
  %call.i.i108 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %157, i8 noundef zeroext %159) #8
  %incdec.ptr.i44.i = getelementptr %struct.cmd, ptr %p.addr.0.i41.i, i32 1
  %dec.i45.i = add nsw i32 %l.addr.0.i42.i, -1
  %cmp.i46.not.i = icmp eq i32 %dec.i45.i, 0
  br i1 %cmp.i46.not.i, label %i2c_w_buf.exit.i, label %do.body.i47.i.do.body.i47.i_crit_edge

do.body.i47.i.do.body.i47.i_crit_edge:            ; preds = %do.body.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i47.i

i2c_w_buf.exit.i:                                 ; preds = %do.body.i47.i
  %160 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp.i48.i = icmp slt i32 %161, 0
  br i1 %cmp.i48.i, label %i2c_w_buf.exit.i.reg_w.exit59.i_crit_edge, label %if.end.i.i113

i2c_w_buf.exit.i.reg_w.exit59.i_crit_edge:        ; preds = %i2c_w_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit59.i

if.end.i.i113:                                    ; preds = %i2c_w_buf.exit.i
  %162 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev1.i.i.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 8
  %shl.i.i.i109 = shl i32 %165, 8
  %or.i.i110 = or i32 %shl.i.i.i109, -2147483648
  %call3.i.i111 = tail call i32 @usb_control_msg(ptr noundef %163, i32 noundef %or.i.i110, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 92, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i111)
  %cmp4.i.i112 = icmp slt i32 %call3.i.i111, 0
  br i1 %cmp4.i.i112, label %if.end.i.i113.reg_w.exit59.sink.split.i_crit_edge, label %reg_w.exit.i115

if.end.i.i113.reg_w.exit59.sink.split.i_crit_edge: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit59.sink.split.i

reg_w.exit.i115:                                  ; preds = %if.end.i.i113
  %166 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr.i114 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i114)
  %cmp.i50.i = icmp slt i32 %.pr.i114, 0
  br i1 %cmp.i50.i, label %reg_w.exit.i115.reg_w.exit59.i_crit_edge, label %if.end.i56.i

reg_w.exit.i115.reg_w.exit59.i_crit_edge:         ; preds = %reg_w.exit.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit59.i

if.end.i56.i:                                     ; preds = %reg_w.exit.i115
  %167 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev1.i.i.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 8
  %shl.i.i52.i = shl i32 %170, 8
  %or.i53.i = or i32 %shl.i.i52.i, -2147483648
  %call3.i54.i = tail call i32 @usb_control_msg(ptr noundef %168, i32 noundef %or.i53.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 84, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i54.i)
  %cmp4.i55.i = icmp slt i32 %call3.i54.i, 0
  br i1 %cmp4.i55.i, label %if.end.i56.i.reg_w.exit59.sink.split.i_crit_edge, label %if.end.i56.i.reg_w.exit59.i_crit_edge

if.end.i56.i.reg_w.exit59.i_crit_edge:            ; preds = %if.end.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit59.i

if.end.i56.i.reg_w.exit59.sink.split.i_crit_edge: ; preds = %if.end.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit59.sink.split.i

reg_w.exit59.sink.split.i:                        ; preds = %if.end.i56.i.reg_w.exit59.sink.split.i_crit_edge, %if.end.i.i113.reg_w.exit59.sink.split.i_crit_edge
  %call3.i.sink69.i = phi i32 [ %call3.i.i111, %if.end.i.i113.reg_w.exit59.sink.split.i_crit_edge ], [ %call3.i54.i, %if.end.i56.i.reg_w.exit59.sink.split.i_crit_edge ]
  %call7.i.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.sink69.i) #11
  %171 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call3.i.sink69.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit59.i

reg_w.exit59.i:                                   ; preds = %reg_w.exit59.sink.split.i, %if.end.i56.i.reg_w.exit59.i_crit_edge, %reg_w.exit.i115.reg_w.exit59.i_crit_edge, %i2c_w_buf.exit.i.reg_w.exit59.i_crit_edge
  %sharpness.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %172 = ptrtoint ptr %sharpness.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %sharpness.i, align 4
  %call1.i117 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %173) #8
  tail call fastcc void @setsharpness(ptr noundef %gspca_dev, i32 noundef %call1.i117) #8
  %174 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i.i) #8
  %176 = ptrtoint ptr %actual_count.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %actual_count.i.i, align 4, !annotation !179
  %177 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i62.i = icmp slt i32 %178, 0
  br i1 %cmp.i62.i, label %reg_w.exit59.i.bulk_w.exit.i_crit_edge, label %for.cond.preheader.i.i

reg_w.exit59.i.bulk_w.exit.i_crit_edge:           ; preds = %reg_w.exit59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit.i

for.cond.preheader.i.i:                           ; preds = %reg_w.exit59.i
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %179 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %usb_buf.i.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 3, ptr %180, align 1
  %182 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %182, i32 1
  %183 = call ptr @memcpy(ptr %arrayidx4.i.i, ptr getelementptr inbounds ([2 x [18 x i8]], ptr @color_gain, i32 0, i32 1), i32 18)
  %184 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %175, align 8
  %shl.i.i63.i = shl i32 %185, 8
  %or.i64.i = or i32 %shl.i.i63.i, -1073643520
  %186 = load ptr, ptr %usb_buf.i.i, align 4
  %call6.i.i118 = call i32 @usb_bulk_msg(ptr noundef %175, i32 noundef %or.i64.i, ptr noundef %186, i32 noundef 19, ptr noundef nonnull %actual_count.i.i, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i118)
  %cmp7.i.i = icmp slt i32 %call6.i.i118, 0
  br i1 %cmp7.i.i, label %do.end.i65.i, label %for.cond.preheader.i.i.bulk_w.exit.i_crit_edge

for.cond.preheader.i.i.bulk_w.exit.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit.i

do.end.i65.i:                                     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i.i118, i32 noundef 3) #11
  %187 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call6.i.i118, ptr %usb_err.i.i.i, align 8
  br label %bulk_w.exit.i

bulk_w.exit.i:                                    ; preds = %do.end.i65.i, %for.cond.preheader.i.i.bulk_w.exit.i_crit_edge, %reg_w.exit59.i.bulk_w.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i.i) #8
  call fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef 1) #8
  %188 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp.i120 = icmp eq i8 %189, 0
  %exposure.i121 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %190 = ptrtoint ptr %exposure.i121 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %exposure.i121, align 4
  %call3.i122 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %191) #8
  %gain.i123 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %192 = ptrtoint ptr %gain.i123 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %gain.i123, align 8
  %call4.i124 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %193) #8
  br i1 %cmp.i120, label %if.then.i129, label %if.else.i130

if.then.i129:                                     ; preds = %bulk_w.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %blue.i125 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %194 = ptrtoint ptr %blue.i125 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %blue.i125, align 4
  %call5.i126 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %195) #8
  %red.i127 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %196 = ptrtoint ptr %red.i127 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %red.i127, align 8
  %call6.i128 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %197) #8
  call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call3.i122, i32 noundef %call4.i124, i32 noundef %call5.i126, i32 noundef %call6.i128) #8
  br label %if.end.i131

if.else.i130:                                     ; preds = %bulk_w.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call3.i122, i32 noundef %call4.i124, i32 noundef 0, i32 noundef 0) #8
  br label %if.end.i131

if.end.i131:                                      ; preds = %if.else.i130, %if.then.i129
  %198 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %199)
  %cmp13.i = icmp eq i8 %199, 1
  br i1 %cmp13.i, label %if.then15.i, label %if.end.i131.soi763a_6800_start.exit_crit_edge

if.end.i131.soi763a_6800_start.exit_crit_edge:    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #10
  br label %soi763a_6800_start.exit

if.then15.i:                                      ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #10
  %jpegqual.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %200 = ptrtoint ptr %jpegqual.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %jpegqual.i, align 8
  %call16.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %201) #8
  call fastcc void @setquality(ptr noundef %gspca_dev, i32 noundef %call16.i) #8
  br label %soi763a_6800_start.exit

soi763a_6800_start.exit:                          ; preds = %if.then15.i, %if.end.i131.soi763a_6800_start.exit_crit_edge
  %gamma.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %202 = ptrtoint ptr %gamma.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %gamma.i, align 8
  %call18.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %203) #8
  call fastcc void @setgamma(ptr noundef %gspca_dev, i32 noundef %call18.i) #8
  br label %if.end45

if.else7:                                         ; preds = %set_dqt.exit
  %204 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp.i.i = icmp slt i32 %205, 0
  br i1 %cmp4, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else7
  br i1 %cmp.i.i, label %if.then12.reg_w.exit.i142_crit_edge, label %if.end.i.i138

if.then12.reg_w.exit.i142_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i142

if.end.i.i138:                                    ; preds = %if.then12
  %alt.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %206 = ptrtoint ptr %alt.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %alt.i, align 2
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %208 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev1.i.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 8
  %shl.i.i.i133 = shl i32 %211, 8
  %or.i.i134 = or i32 %shl.i.i.i133, -2147483648
  %conv.i.i135 = zext i8 %207 to i16
  %call3.i.i136 = tail call i32 @usb_control_msg(ptr noundef %209, i32 noundef %or.i.i134, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i135, i16 noundef zeroext 34, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i136)
  %cmp4.i.i137 = icmp slt i32 %call3.i.i136, 0
  br i1 %cmp4.i.i137, label %do.end.i.i, label %if.end.i.i138.reg_w.exit.i142_crit_edge

if.end.i.i138.reg_w.exit.i142_crit_edge:          ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i142

do.end.i.i:                                       ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i136) #11
  %212 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %call3.i.i136, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i142

reg_w.exit.i142:                                  ; preds = %do.end.i.i, %if.end.i.i138.reg_w.exit.i142_crit_edge, %if.then12.reg_w.exit.i142_crit_edge
  %call.i.i140 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext 111) #8
  %call.i.1.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext 2) #8
  %call.i.2.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 20, i8 noundef zeroext 0) #8
  %call.i.3.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 22, i8 noundef zeroext 0) #8
  %call.i.4.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext 0) #8
  %call.i.5.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 26, i8 noundef zeroext 0) #8
  %call.i.6.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 32, i8 noundef zeroext -127) #8
  %dev1.i.i.i141 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %do.body.i31.i

do.body.i31.i:                                    ; preds = %reg_w.exit.i.i153.do.body.i31.i_crit_edge, %reg_w.exit.i142
  %p.addr.0.i29.i = phi ptr [ @cx0342_6810_start.bridge_init_2, %reg_w.exit.i142 ], [ %incdec.ptr.i33.i, %reg_w.exit.i.i153.do.body.i31.i_crit_edge ]
  %l.addr.0.i30.i = phi i32 [ 7, %reg_w.exit.i142 ], [ %dec.i34.i, %reg_w.exit.i.i153.do.body.i31.i_crit_edge ]
  %213 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp.i.i.i143 = icmp slt i32 %214, 0
  br i1 %cmp.i.i.i143, label %do.body.i31.i.reg_w.exit.i.i153_crit_edge, label %if.end.i.i.i150

do.body.i31.i.reg_w.exit.i.i153_crit_edge:        ; preds = %do.body.i31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i153

if.end.i.i.i150:                                  ; preds = %do.body.i31.i
  %val.i32.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i29.i, i32 0, i32 1
  %215 = ptrtoint ptr %val.i32.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %val.i32.i, align 1
  %217 = ptrtoint ptr %p.addr.0.i29.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %p.addr.0.i29.i, align 1
  %219 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev1.i.i.i141, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 8
  %shl.i.i.i.i144 = shl i32 %222, 8
  %or.i.i.i145 = or i32 %shl.i.i.i.i144, -2147483648
  %conv.i.i.i146 = zext i8 %216 to i16
  %conv2.i.i.i147 = zext i8 %218 to i16
  %call3.i.i.i148 = tail call i32 @usb_control_msg(ptr noundef %220, i32 noundef %or.i.i.i145, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i.i146, i16 noundef zeroext %conv2.i.i.i147, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i148)
  %cmp4.i.i.i149 = icmp slt i32 %call3.i.i.i148, 0
  br i1 %cmp4.i.i.i149, label %do.end.i.i.i152, label %if.end.i.i.i150.reg_w.exit.i.i153_crit_edge

if.end.i.i.i150.reg_w.exit.i.i153_crit_edge:      ; preds = %if.end.i.i.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.i153

do.end.i.i.i152:                                  ; preds = %if.end.i.i.i150
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i.i148) #11
  %223 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %call3.i.i.i148, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i.i153

reg_w.exit.i.i153:                                ; preds = %do.end.i.i.i152, %if.end.i.i.i150.reg_w.exit.i.i153_crit_edge, %do.body.i31.i.reg_w.exit.i.i153_crit_edge
  %incdec.ptr.i33.i = getelementptr %struct.cmd, ptr %p.addr.0.i29.i, i32 1
  %dec.i34.i = add nsw i32 %l.addr.0.i30.i, -1
  %cmp.i35.not.i = icmp eq i32 %dec.i34.i, 0
  br i1 %cmp.i35.not.i, label %reg_w.exit.i.i153.do.body.i42.i154_crit_edge, label %reg_w.exit.i.i153.do.body.i31.i_crit_edge

reg_w.exit.i.i153.do.body.i31.i_crit_edge:        ; preds = %reg_w.exit.i.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i31.i

reg_w.exit.i.i153.do.body.i42.i154_crit_edge:     ; preds = %reg_w.exit.i.i153
  br label %do.body.i42.i154

do.body.i42.i154:                                 ; preds = %reg_w.exit.i56.i.do.body.i42.i154_crit_edge, %reg_w.exit.i.i153.do.body.i42.i154_crit_edge
  %p.addr.0.i39.i = phi ptr [ %incdec.ptr.i53.i, %reg_w.exit.i56.i.do.body.i42.i154_crit_edge ], [ @tp6810_cx_init_common, %reg_w.exit.i.i153.do.body.i42.i154_crit_edge ]
  %l.addr.0.i40.i = phi i32 [ %dec.i54.i, %reg_w.exit.i56.i.do.body.i42.i154_crit_edge ], [ 23, %reg_w.exit.i.i153.do.body.i42.i154_crit_edge ]
  %224 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp.i.i41.i = icmp slt i32 %225, 0
  br i1 %cmp.i.i41.i, label %do.body.i42.i154.reg_w.exit.i56.i_crit_edge, label %if.end.i.i50.i

do.body.i42.i154.reg_w.exit.i56.i_crit_edge:      ; preds = %do.body.i42.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i56.i

if.end.i.i50.i:                                   ; preds = %do.body.i42.i154
  %val.i43.i155 = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i39.i, i32 0, i32 1
  %226 = ptrtoint ptr %val.i43.i155 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %val.i43.i155, align 1
  %228 = ptrtoint ptr %p.addr.0.i39.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %p.addr.0.i39.i, align 1
  %230 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev1.i.i.i141, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 8
  %shl.i.i.i44.i = shl i32 %233, 8
  %or.i.i45.i = or i32 %shl.i.i.i44.i, -2147483648
  %conv.i.i46.i = zext i8 %227 to i16
  %conv2.i.i47.i = zext i8 %229 to i16
  %call3.i.i48.i = tail call i32 @usb_control_msg(ptr noundef %231, i32 noundef %or.i.i45.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i46.i, i16 noundef zeroext %conv2.i.i47.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i48.i)
  %cmp4.i.i49.i = icmp slt i32 %call3.i.i48.i, 0
  br i1 %cmp4.i.i49.i, label %do.end.i.i52.i, label %if.end.i.i50.i.reg_w.exit.i56.i_crit_edge

if.end.i.i50.i.reg_w.exit.i56.i_crit_edge:        ; preds = %if.end.i.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i56.i

do.end.i.i52.i:                                   ; preds = %if.end.i.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i48.i) #11
  %234 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %call3.i.i48.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i56.i

reg_w.exit.i56.i:                                 ; preds = %do.end.i.i52.i, %if.end.i.i50.i.reg_w.exit.i56.i_crit_edge, %do.body.i42.i154.reg_w.exit.i56.i_crit_edge
  %incdec.ptr.i53.i = getelementptr %struct.cmd, ptr %p.addr.0.i39.i, i32 1
  %dec.i54.i = add nsw i32 %l.addr.0.i40.i, -1
  %cmp.i55.not.i = icmp eq i32 %dec.i54.i, 0
  br i1 %cmp.i55.not.i, label %reg_w.exit.i56.i.do.body.i64.i_crit_edge, label %reg_w.exit.i56.i.do.body.i42.i154_crit_edge

reg_w.exit.i56.i.do.body.i42.i154_crit_edge:      ; preds = %reg_w.exit.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i42.i154

reg_w.exit.i56.i.do.body.i64.i_crit_edge:         ; preds = %reg_w.exit.i56.i
  br label %do.body.i64.i

do.body.i64.i:                                    ; preds = %reg_w.exit.i78.i.do.body.i64.i_crit_edge, %reg_w.exit.i56.i.do.body.i64.i_crit_edge
  %p.addr.0.i61.i = phi ptr [ %incdec.ptr.i75.i, %reg_w.exit.i78.i.do.body.i64.i_crit_edge ], [ @cx0342_6810_start.bridge_init_3, %reg_w.exit.i56.i.do.body.i64.i_crit_edge ]
  %l.addr.0.i62.i = phi i32 [ %dec.i76.i, %reg_w.exit.i78.i.do.body.i64.i_crit_edge ], [ 6, %reg_w.exit.i56.i.do.body.i64.i_crit_edge ]
  %235 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp.i.i63.i = icmp slt i32 %236, 0
  br i1 %cmp.i.i63.i, label %do.body.i64.i.reg_w.exit.i78.i_crit_edge, label %if.end.i.i72.i

do.body.i64.i.reg_w.exit.i78.i_crit_edge:         ; preds = %do.body.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i78.i

if.end.i.i72.i:                                   ; preds = %do.body.i64.i
  %val.i65.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i61.i, i32 0, i32 1
  %237 = ptrtoint ptr %val.i65.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %val.i65.i, align 1
  %239 = ptrtoint ptr %p.addr.0.i61.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %p.addr.0.i61.i, align 1
  %241 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev1.i.i.i141, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %242, align 8
  %shl.i.i.i66.i = shl i32 %244, 8
  %or.i.i67.i = or i32 %shl.i.i.i66.i, -2147483648
  %conv.i.i68.i = zext i8 %238 to i16
  %conv2.i.i69.i = zext i8 %240 to i16
  %call3.i.i70.i = tail call i32 @usb_control_msg(ptr noundef %242, i32 noundef %or.i.i67.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i68.i, i16 noundef zeroext %conv2.i.i69.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i70.i)
  %cmp4.i.i71.i = icmp slt i32 %call3.i.i70.i, 0
  br i1 %cmp4.i.i71.i, label %do.end.i.i74.i, label %if.end.i.i72.i.reg_w.exit.i78.i_crit_edge

if.end.i.i72.i.reg_w.exit.i78.i_crit_edge:        ; preds = %if.end.i.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i78.i

do.end.i.i74.i:                                   ; preds = %if.end.i.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i70.i) #11
  %245 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %call3.i.i70.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i78.i

reg_w.exit.i78.i:                                 ; preds = %do.end.i.i74.i, %if.end.i.i72.i.reg_w.exit.i78.i_crit_edge, %do.body.i64.i.reg_w.exit.i78.i_crit_edge
  %incdec.ptr.i75.i = getelementptr %struct.cmd, ptr %p.addr.0.i61.i, i32 1
  %dec.i76.i = add nsw i32 %l.addr.0.i62.i, -1
  %cmp.i77.not.i = icmp eq i32 %dec.i76.i, 0
  br i1 %cmp.i77.not.i, label %reg_w_buf.exit80.i, label %reg_w.exit.i78.i.do.body.i64.i_crit_edge

reg_w.exit.i78.i.do.body.i64.i_crit_edge:         ; preds = %reg_w.exit.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i64.i

reg_w_buf.exit80.i:                               ; preds = %reg_w.exit.i78.i
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %246 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %curr_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool.not.i = icmp eq i8 %247, 0
  %248 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp.i115.i = icmp slt i32 %249, 0
  br i1 %tobool.not.i, label %if.else.i158, label %if.then.i156

if.then.i156:                                     ; preds = %reg_w_buf.exit80.i
  br i1 %cmp.i115.i, label %if.then.i156.if.end.i161_crit_edge, label %if.end.i88.i

if.then.i156.if.end.i161_crit_edge:               ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i88.i:                                     ; preds = %if.then.i156
  %250 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev1.i.i.i141, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 8
  %shl.i.i84.i = shl i32 %253, 8
  %or.i85.i = or i32 %shl.i.i84.i, -2147483648
  %call3.i86.i = tail call i32 @usb_control_msg(ptr noundef %251, i32 noundef %or.i85.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 127, i16 noundef zeroext 74, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i86.i)
  %cmp4.i87.i = icmp slt i32 %call3.i86.i, 0
  br i1 %cmp4.i87.i, label %if.end.i88.i.if.end.sink.split.i_crit_edge, label %reg_w.exit91.i

if.end.i88.i.if.end.sink.split.i_crit_edge:       ; preds = %if.end.i88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

reg_w.exit91.i:                                   ; preds = %if.end.i88.i
  %254 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %.pr.i157 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i157)
  %cmp.i93.i = icmp slt i32 %.pr.i157, 0
  br i1 %cmp.i93.i, label %reg_w.exit91.i.if.end.i161_crit_edge, label %if.end.i99.i

reg_w.exit91.i.if.end.i161_crit_edge:             ; preds = %reg_w.exit91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i99.i:                                     ; preds = %reg_w.exit91.i
  %255 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev1.i.i.i141, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %256, align 8
  %shl.i.i95.i = shl i32 %258, 8
  %or.i96.i = or i32 %shl.i.i95.i, -2147483648
  %call3.i97.i = tail call i32 @usb_control_msg(ptr noundef %256, i32 noundef %or.i96.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i97.i)
  %cmp4.i98.i = icmp slt i32 %call3.i97.i, 0
  br i1 %cmp4.i98.i, label %if.end.i99.i.if.end.sink.split.i_crit_edge, label %reg_w.exit102.i

if.end.i99.i.if.end.sink.split.i_crit_edge:       ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

reg_w.exit102.i:                                  ; preds = %if.end.i99.i
  %259 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %.pr261.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr261.pr.i)
  %cmp.i104.i = icmp slt i32 %.pr261.pr.i, 0
  br i1 %cmp.i104.i, label %reg_w.exit102.i.if.end.i161_crit_edge, label %if.end.i110.i

reg_w.exit102.i.if.end.i161_crit_edge:            ; preds = %reg_w.exit102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i110.i:                                    ; preds = %reg_w.exit102.i
  %260 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev1.i.i.i141, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %261, align 8
  %shl.i.i106.i = shl i32 %263, 8
  %or.i107.i = or i32 %shl.i.i106.i, -2147483648
  %call3.i108.i = tail call i32 @usb_control_msg(ptr noundef %261, i32 noundef %or.i107.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i108.i)
  %cmp4.i109.i = icmp slt i32 %call3.i108.i, 0
  br i1 %cmp4.i109.i, label %if.end.i110.i.if.end.sink.split.i_crit_edge, label %if.end.i110.i.if.end.i161_crit_edge

if.end.i110.i.if.end.i161_crit_edge:              ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i110.i.if.end.sink.split.i_crit_edge:      ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

if.else.i158:                                     ; preds = %reg_w_buf.exit80.i
  br i1 %cmp.i115.i, label %if.else.i158.if.end.i161_crit_edge, label %if.end.i121.i

if.else.i158.if.end.i161_crit_edge:               ; preds = %if.else.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i121.i:                                    ; preds = %if.else.i158
  %264 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev1.i.i.i141, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %265, align 8
  %shl.i.i117.i = shl i32 %267, 8
  %or.i118.i = or i32 %shl.i.i117.i, -2147483648
  %call3.i119.i = tail call i32 @usb_control_msg(ptr noundef %265, i32 noundef %or.i118.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 74, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i119.i)
  %cmp4.i120.i = icmp slt i32 %call3.i119.i, 0
  br i1 %cmp4.i120.i, label %if.end.i121.i.if.end.sink.split.i_crit_edge, label %reg_w.exit124.i

if.end.i121.i.if.end.sink.split.i_crit_edge:      ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

reg_w.exit124.i:                                  ; preds = %if.end.i121.i
  %268 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %.pr263.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr263.i)
  %cmp.i126.i = icmp slt i32 %.pr263.i, 0
  br i1 %cmp.i126.i, label %reg_w.exit124.i.if.end.i161_crit_edge, label %if.end.i132.i

reg_w.exit124.i.if.end.i161_crit_edge:            ; preds = %reg_w.exit124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i132.i:                                    ; preds = %reg_w.exit124.i
  %269 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev1.i.i.i141, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %270, align 8
  %shl.i.i128.i = shl i32 %272, 8
  %or.i129.i = or i32 %shl.i.i128.i, -2147483648
  %call3.i130.i = tail call i32 @usb_control_msg(ptr noundef %270, i32 noundef %or.i129.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 133, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i130.i)
  %cmp4.i131.i = icmp slt i32 %call3.i130.i, 0
  br i1 %cmp4.i131.i, label %if.end.i132.i.if.end.sink.split.i_crit_edge, label %reg_w.exit135.i

if.end.i132.i.if.end.sink.split.i_crit_edge:      ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

reg_w.exit135.i:                                  ; preds = %if.end.i132.i
  %273 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %.pr265.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr265.pr.i)
  %cmp.i137.i = icmp slt i32 %.pr265.pr.i, 0
  br i1 %cmp.i137.i, label %reg_w.exit135.i.if.end.i161_crit_edge, label %if.end.i143.i

reg_w.exit135.i.if.end.i161_crit_edge:            ; preds = %reg_w.exit135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i143.i:                                    ; preds = %reg_w.exit135.i
  %274 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev1.i.i.i141, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 8
  %shl.i.i139.i = shl i32 %277, 8
  %or.i140.i = or i32 %shl.i.i139.i, -2147483648
  %call3.i141.i = tail call i32 @usb_control_msg(ptr noundef %275, i32 noundef %or.i140.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i141.i)
  %cmp4.i142.i = icmp slt i32 %call3.i141.i, 0
  br i1 %cmp4.i142.i, label %if.end.i143.i.if.end.sink.split.i_crit_edge, label %if.end.i143.i.if.end.i161_crit_edge

if.end.i143.i.if.end.i161_crit_edge:              ; preds = %if.end.i143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i161

if.end.i143.i.if.end.sink.split.i_crit_edge:      ; preds = %if.end.i143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.end.i143.i.if.end.sink.split.i_crit_edge, %if.end.i132.i.if.end.sink.split.i_crit_edge, %if.end.i121.i.if.end.sink.split.i_crit_edge, %if.end.i110.i.if.end.sink.split.i_crit_edge, %if.end.i99.i.if.end.sink.split.i_crit_edge, %if.end.i88.i.if.end.sink.split.i_crit_edge
  %call3.i119.sink313.i = phi i32 [ %call3.i86.i, %if.end.i88.i.if.end.sink.split.i_crit_edge ], [ %call3.i97.i, %if.end.i99.i.if.end.sink.split.i_crit_edge ], [ %call3.i108.i, %if.end.i110.i.if.end.sink.split.i_crit_edge ], [ %call3.i119.i, %if.end.i121.i.if.end.sink.split.i_crit_edge ], [ %call3.i130.i, %if.end.i132.i.if.end.sink.split.i_crit_edge ], [ %call3.i141.i, %if.end.i143.i.if.end.sink.split.i_crit_edge ]
  %call7.i122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i119.sink313.i) #11
  %278 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %call3.i119.sink313.i, ptr %usb_err.i.i.i, align 8
  br label %if.end.i161

if.end.i161:                                      ; preds = %if.end.sink.split.i, %if.end.i143.i.if.end.i161_crit_edge, %reg_w.exit135.i.if.end.i161_crit_edge, %reg_w.exit124.i.if.end.i161_crit_edge, %if.else.i158.if.end.i161_crit_edge, %if.end.i110.i.if.end.i161_crit_edge, %reg_w.exit102.i.if.end.i161_crit_edge, %reg_w.exit91.i.if.end.i161_crit_edge, %if.then.i156.if.end.i161_crit_edge
  %gamma.i159 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %279 = ptrtoint ptr %gamma.i159 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %gamma.i159, align 8
  %call.i160 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %280) #8
  tail call fastcc void @setgamma(ptr noundef %gspca_dev, i32 noundef %call.i160) #8
  br label %do.body.i152.i

do.body.i152.i:                                   ; preds = %reg_w.exit.i166.i.do.body.i152.i_crit_edge, %if.end.i161
  %p.addr.0.i149.i = phi ptr [ @tp6810_bridge_start, %if.end.i161 ], [ %incdec.ptr.i163.i, %reg_w.exit.i166.i.do.body.i152.i_crit_edge ]
  %l.addr.0.i150.i = phi i32 [ 9, %if.end.i161 ], [ %dec.i164.i, %reg_w.exit.i166.i.do.body.i152.i_crit_edge ]
  %281 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %cmp.i.i151.i = icmp slt i32 %282, 0
  br i1 %cmp.i.i151.i, label %do.body.i152.i.reg_w.exit.i166.i_crit_edge, label %if.end.i.i160.i

do.body.i152.i.reg_w.exit.i166.i_crit_edge:       ; preds = %do.body.i152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i166.i

if.end.i.i160.i:                                  ; preds = %do.body.i152.i
  %val.i153.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i149.i, i32 0, i32 1
  %283 = ptrtoint ptr %val.i153.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %val.i153.i, align 1
  %285 = ptrtoint ptr %p.addr.0.i149.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %p.addr.0.i149.i, align 1
  %287 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev1.i.i.i141, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %288, align 8
  %shl.i.i.i154.i = shl i32 %290, 8
  %or.i.i155.i = or i32 %shl.i.i.i154.i, -2147483648
  %conv.i.i156.i = zext i8 %284 to i16
  %conv2.i.i157.i = zext i8 %286 to i16
  %call3.i.i158.i = tail call i32 @usb_control_msg(ptr noundef %288, i32 noundef %or.i.i155.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i156.i, i16 noundef zeroext %conv2.i.i157.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i158.i)
  %cmp4.i.i159.i = icmp slt i32 %call3.i.i158.i, 0
  br i1 %cmp4.i.i159.i, label %do.end.i.i162.i, label %if.end.i.i160.i.reg_w.exit.i166.i_crit_edge

if.end.i.i160.i.reg_w.exit.i166.i_crit_edge:      ; preds = %if.end.i.i160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i166.i

do.end.i.i162.i:                                  ; preds = %if.end.i.i160.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i158.i) #11
  %291 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %call3.i.i158.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i166.i

reg_w.exit.i166.i:                                ; preds = %do.end.i.i162.i, %if.end.i.i160.i.reg_w.exit.i166.i_crit_edge, %do.body.i152.i.reg_w.exit.i166.i_crit_edge
  %incdec.ptr.i163.i = getelementptr %struct.cmd, ptr %p.addr.0.i149.i, i32 1
  %dec.i164.i = add nsw i32 %l.addr.0.i150.i, -1
  %cmp.i165.not.i = icmp eq i32 %dec.i164.i, 0
  br i1 %cmp.i165.not.i, label %reg_w_buf.exit168.i, label %reg_w.exit.i166.i.do.body.i152.i_crit_edge

reg_w.exit.i166.i.do.body.i152.i_crit_edge:       ; preds = %reg_w.exit.i166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i152.i

reg_w_buf.exit168.i:                              ; preds = %reg_w.exit.i166.i
  %sharpness.i162 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %292 = ptrtoint ptr %sharpness.i162 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %sharpness.i162, align 4
  %call1.i163 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %293) #8
  tail call fastcc void @setsharpness(ptr noundef %gspca_dev, i32 noundef %call1.i163) #8
  %294 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dev1.i.i.i141, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i.i132) #8
  %296 = ptrtoint ptr %actual_count.i.i132 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 -1, ptr %actual_count.i.i132, align 4, !annotation !179
  %297 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %cmp.i171.i = icmp slt i32 %298, 0
  br i1 %cmp.i171.i, label %reg_w_buf.exit168.i.bulk_w.exit.thread.i_crit_edge, label %for.cond.preheader.i.i168

reg_w_buf.exit168.i.bulk_w.exit.thread.i_crit_edge: ; preds = %reg_w_buf.exit168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit.thread.i

for.cond.preheader.i.i168:                        ; preds = %reg_w_buf.exit168.i
  %usb_buf.i.i164 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %299 = ptrtoint ptr %usb_buf.i.i164 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %usb_buf.i.i164, align 4
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 3, ptr %300, align 1
  %302 = load ptr, ptr %usb_buf.i.i164, align 4
  %arrayidx4.i.i165 = getelementptr i8, ptr %302, i32 1
  %303 = call ptr @memcpy(ptr %arrayidx4.i.i165, ptr @color_gain, i32 18)
  %304 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %295, align 8
  %shl.i.i172.i = shl i32 %305, 8
  %or.i173.i = or i32 %shl.i.i172.i, -1073643520
  %306 = load ptr, ptr %usb_buf.i.i164, align 4
  %call6.i.i166 = call i32 @usb_bulk_msg(ptr noundef %295, i32 noundef %or.i173.i, ptr noundef %306, i32 noundef 19, ptr noundef nonnull %actual_count.i.i132, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i166)
  %cmp7.i.i167 = icmp slt i32 %call6.i.i166, 0
  br i1 %cmp7.i.i167, label %do.end.i174.i, label %bulk_w.exit.i170

do.end.i174.i:                                    ; preds = %for.cond.preheader.i.i168
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i.i169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i.i166, i32 noundef 3) #11
  %307 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %call6.i.i166, ptr %usb_err.i.i.i, align 8
  br label %bulk_w.exit.thread.i

bulk_w.exit.thread.i:                             ; preds = %do.end.i174.i, %reg_w_buf.exit168.i.bulk_w.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i.i132) #8
  br label %reg_w.exit185.i

bulk_w.exit.i170:                                 ; preds = %for.cond.preheader.i.i168
  %308 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %.pr267.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i.i132) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr267.i)
  %cmp.i176.i = icmp slt i32 %.pr267.i, 0
  br i1 %cmp.i176.i, label %bulk_w.exit.i170.reg_w.exit185.i_crit_edge, label %if.end.i182.i

bulk_w.exit.i170.reg_w.exit185.i_crit_edge:       ; preds = %bulk_w.exit.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit185.i

if.end.i182.i:                                    ; preds = %bulk_w.exit.i170
  %309 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dev1.i.i.i141, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %310, align 8
  %shl.i.i178.i = shl i32 %312, 8
  %or.i179.i = or i32 %shl.i.i178.i, -2147483648
  %call3.i180.i = call i32 @usb_control_msg(ptr noundef %310, i32 noundef %or.i179.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 135, i16 noundef zeroext 63, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i180.i)
  %cmp4.i181.i = icmp slt i32 %call3.i180.i, 0
  br i1 %cmp4.i181.i, label %do.end.i184.i, label %if.end.i182.i.reg_w.exit185.i_crit_edge

if.end.i182.i.reg_w.exit185.i_crit_edge:          ; preds = %if.end.i182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit185.i

do.end.i184.i:                                    ; preds = %if.end.i182.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i183.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i180.i) #11
  %313 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %call3.i180.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit185.i

reg_w.exit185.i:                                  ; preds = %do.end.i184.i, %if.end.i182.i.reg_w.exit185.i_crit_edge, %bulk_w.exit.i170.reg_w.exit185.i_crit_edge, %bulk_w.exit.thread.i
  %call.i189.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 39, i8 noundef zeroext -127) #8
  %call.i189.1.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext 111) #8
  %call.i189.2.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext 2) #8
  %call.i189.3.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 20, i8 noundef zeroext 0) #8
  %call.i189.4.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 22, i8 noundef zeroext 0) #8
  %call.i189.5.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext 0) #8
  %call.i189.6.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 26, i8 noundef zeroext 0) #8
  %call.i189.7.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 32, i8 noundef zeroext -127) #8
  %314 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %cmp.i.i200.i = icmp slt i32 %315, 0
  br i1 %cmp.i.i200.i, label %reg_w.exit185.i.reg_w.exit.i215.3.i_crit_edge, label %if.end.i.i209.i

reg_w.exit185.i.reg_w.exit.i215.3.i_crit_edge:    ; preds = %reg_w.exit185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.i

if.end.i.i209.i:                                  ; preds = %reg_w.exit185.i
  %316 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dev1.i.i.i141, align 4
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %317, align 8
  %shl.i.i.i203.i = shl i32 %319, 8
  %or.i.i204.i = or i32 %shl.i.i.i203.i, -2147483648
  %call3.i.i207.i = call i32 @usb_control_msg(ptr noundef %317, i32 noundef %or.i.i204.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 77, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i207.i)
  %cmp4.i.i208.i = icmp slt i32 %call3.i.i207.i, 0
  br i1 %cmp4.i.i208.i, label %if.end.i.i209.i.reg_w.exit.i215.3.sink.split.i_crit_edge, label %reg_w.exit.i215.i

if.end.i.i209.i.reg_w.exit.i215.3.sink.split.i_crit_edge: ; preds = %if.end.i.i209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.sink.split.i

reg_w.exit.i215.i:                                ; preds = %if.end.i.i209.i
  %320 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %.pr281.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr281.i)
  %cmp.i.i200.1.i = icmp slt i32 %.pr281.i, 0
  br i1 %cmp.i.i200.1.i, label %reg_w.exit.i215.i.reg_w.exit.i215.3.i_crit_edge, label %if.end.i.i209.1.i

reg_w.exit.i215.i.reg_w.exit.i215.3.i_crit_edge:  ; preds = %reg_w.exit.i215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.i

if.end.i.i209.1.i:                                ; preds = %reg_w.exit.i215.i
  %321 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %dev1.i.i.i141, align 4
  %323 = ptrtoint ptr %322 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %322, align 8
  %shl.i.i.i203.1.i = shl i32 %324, 8
  %or.i.i204.1.i = or i32 %shl.i.i.i203.1.i, -2147483648
  %call3.i.i207.1.i = call i32 @usb_control_msg(ptr noundef %322, i32 noundef %or.i.i204.1.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 76, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i207.1.i)
  %cmp4.i.i208.1.i = icmp slt i32 %call3.i.i207.1.i, 0
  br i1 %cmp4.i.i208.1.i, label %if.end.i.i209.1.i.reg_w.exit.i215.3.sink.split.i_crit_edge, label %reg_w.exit.i215.1.i

if.end.i.i209.1.i.reg_w.exit.i215.3.sink.split.i_crit_edge: ; preds = %if.end.i.i209.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.sink.split.i

reg_w.exit.i215.1.i:                              ; preds = %if.end.i.i209.1.i
  %325 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %.pr283.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr283.pr.i)
  %cmp.i.i200.2.i = icmp slt i32 %.pr283.pr.i, 0
  br i1 %cmp.i.i200.2.i, label %reg_w.exit.i215.1.i.reg_w.exit.i215.3.i_crit_edge, label %if.end.i.i209.2.i

reg_w.exit.i215.1.i.reg_w.exit.i215.3.i_crit_edge: ; preds = %reg_w.exit.i215.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.i

if.end.i.i209.2.i:                                ; preds = %reg_w.exit.i215.1.i
  %326 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dev1.i.i.i141, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %327, align 8
  %shl.i.i.i203.2.i = shl i32 %329, 8
  %or.i.i204.2.i = or i32 %shl.i.i.i203.2.i, -2147483648
  %call3.i.i207.2.i = call i32 @usb_control_msg(ptr noundef %327, i32 noundef %or.i.i204.2.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 78, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i207.2.i)
  %cmp4.i.i208.2.i = icmp slt i32 %call3.i.i207.2.i, 0
  br i1 %cmp4.i.i208.2.i, label %if.end.i.i209.2.i.reg_w.exit.i215.3.sink.split.i_crit_edge, label %reg_w.exit.i215.2.i

if.end.i.i209.2.i.reg_w.exit.i215.3.sink.split.i_crit_edge: ; preds = %if.end.i.i209.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.sink.split.i

reg_w.exit.i215.2.i:                              ; preds = %if.end.i.i209.2.i
  %330 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %.pr285.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr285.pr.i)
  %cmp.i.i200.3.i = icmp slt i32 %.pr285.pr.i, 0
  br i1 %cmp.i.i200.3.i, label %reg_w.exit.i215.2.i.reg_w.exit.i215.3.i_crit_edge, label %if.end.i.i209.3.i

reg_w.exit.i215.2.i.reg_w.exit.i215.3.i_crit_edge: ; preds = %reg_w.exit.i215.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.i

if.end.i.i209.3.i:                                ; preds = %reg_w.exit.i215.2.i
  %331 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev1.i.i.i141, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %332, align 8
  %shl.i.i.i203.3.i = shl i32 %334, 8
  %or.i.i204.3.i = or i32 %shl.i.i.i203.3.i, -2147483648
  %call3.i.i207.3.i = call i32 @usb_control_msg(ptr noundef %332, i32 noundef %or.i.i204.3.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 79, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i207.3.i)
  %cmp4.i.i208.3.i = icmp slt i32 %call3.i.i207.3.i, 0
  br i1 %cmp4.i.i208.3.i, label %if.end.i.i209.3.i.reg_w.exit.i215.3.sink.split.i_crit_edge, label %if.end.i.i209.3.i.reg_w.exit.i215.3.i_crit_edge

if.end.i.i209.3.i.reg_w.exit.i215.3.i_crit_edge:  ; preds = %if.end.i.i209.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.i

if.end.i.i209.3.i.reg_w.exit.i215.3.sink.split.i_crit_edge: ; preds = %if.end.i.i209.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i215.3.sink.split.i

reg_w.exit.i215.3.sink.split.i:                   ; preds = %if.end.i.i209.3.i.reg_w.exit.i215.3.sink.split.i_crit_edge, %if.end.i.i209.2.i.reg_w.exit.i215.3.sink.split.i_crit_edge, %if.end.i.i209.1.i.reg_w.exit.i215.3.sink.split.i_crit_edge, %if.end.i.i209.i.reg_w.exit.i215.3.sink.split.i_crit_edge
  %call3.i.i207.1.sink314.i = phi i32 [ %call3.i.i207.i, %if.end.i.i209.i.reg_w.exit.i215.3.sink.split.i_crit_edge ], [ %call3.i.i207.1.i, %if.end.i.i209.1.i.reg_w.exit.i215.3.sink.split.i_crit_edge ], [ %call3.i.i207.2.i, %if.end.i.i209.2.i.reg_w.exit.i215.3.sink.split.i_crit_edge ], [ %call3.i.i207.3.i, %if.end.i.i209.3.i.reg_w.exit.i215.3.sink.split.i_crit_edge ]
  %call7.i.i210.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i207.1.sink314.i) #11
  %335 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %call3.i.i207.1.sink314.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i215.3.i

reg_w.exit.i215.3.i:                              ; preds = %reg_w.exit.i215.3.sink.split.i, %if.end.i.i209.3.i.reg_w.exit.i215.3.i_crit_edge, %reg_w.exit.i215.2.i.reg_w.exit.i215.3.i_crit_edge, %reg_w.exit.i215.1.i.reg_w.exit.i215.3.i_crit_edge, %reg_w.exit.i215.i.reg_w.exit.i215.3.i_crit_edge, %reg_w.exit185.i.reg_w.exit.i215.3.i_crit_edge
  %call.i221.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext -45) #8
  %call.i221.1.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext 1) #8
  %call.i221.2.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 20, i8 noundef zeroext 64) #8
  %call.i221.3.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 22, i8 noundef zeroext 64) #8
  %call.i221.4.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext 64) #8
  %call.i221.5.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 26, i8 noundef zeroext 64) #8
  %call.i221.6.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 32, i8 noundef zeroext -127) #8
  %336 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %cmp.i.i232.i = icmp slt i32 %337, 0
  br i1 %cmp.i.i232.i, label %reg_w.exit.i215.3.i.cx0342_6810_start.exit_crit_edge, label %if.end.i.i241.i

reg_w.exit.i215.3.i.cx0342_6810_start.exit_crit_edge: ; preds = %reg_w.exit.i215.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx0342_6810_start.exit

if.end.i.i241.i:                                  ; preds = %reg_w.exit.i215.3.i
  %338 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dev1.i.i.i141, align 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %339, align 8
  %shl.i.i.i235.i = shl i32 %341, 8
  %or.i.i236.i = or i32 %shl.i.i.i235.i, -2147483648
  %call3.i.i239.i = call i32 @usb_control_msg(ptr noundef %339, i32 noundef %or.i.i236.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 77, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i239.i)
  %cmp4.i.i240.i = icmp slt i32 %call3.i.i239.i, 0
  br i1 %cmp4.i.i240.i, label %if.end.i.i241.i.reg_w.exit.i247.3.sink.split.i_crit_edge, label %reg_w.exit.i247.i

if.end.i.i241.i.reg_w.exit.i247.3.sink.split.i_crit_edge: ; preds = %if.end.i.i241.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i247.3.sink.split.i

reg_w.exit.i247.i:                                ; preds = %if.end.i.i241.i
  %342 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %.pr287.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr287.i)
  %cmp.i.i232.1.i = icmp slt i32 %.pr287.i, 0
  br i1 %cmp.i.i232.1.i, label %reg_w.exit.i247.i.cx0342_6810_start.exit_crit_edge, label %if.end.i.i241.1.i

reg_w.exit.i247.i.cx0342_6810_start.exit_crit_edge: ; preds = %reg_w.exit.i247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx0342_6810_start.exit

if.end.i.i241.1.i:                                ; preds = %reg_w.exit.i247.i
  %343 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev1.i.i.i141, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %344, align 8
  %shl.i.i.i235.1.i = shl i32 %346, 8
  %or.i.i236.1.i = or i32 %shl.i.i.i235.1.i, -2147483648
  %call3.i.i239.1.i = call i32 @usb_control_msg(ptr noundef %344, i32 noundef %or.i.i236.1.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 76, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i239.1.i)
  %cmp4.i.i240.1.i = icmp slt i32 %call3.i.i239.1.i, 0
  br i1 %cmp4.i.i240.1.i, label %if.end.i.i241.1.i.reg_w.exit.i247.3.sink.split.i_crit_edge, label %reg_w.exit.i247.1.i

if.end.i.i241.1.i.reg_w.exit.i247.3.sink.split.i_crit_edge: ; preds = %if.end.i.i241.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i247.3.sink.split.i

reg_w.exit.i247.1.i:                              ; preds = %if.end.i.i241.1.i
  %347 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %.pr289.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr289.pr.i)
  %cmp.i.i232.2.i = icmp slt i32 %.pr289.pr.i, 0
  br i1 %cmp.i.i232.2.i, label %reg_w.exit.i247.1.i.cx0342_6810_start.exit_crit_edge, label %if.end.i.i241.2.i

reg_w.exit.i247.1.i.cx0342_6810_start.exit_crit_edge: ; preds = %reg_w.exit.i247.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx0342_6810_start.exit

if.end.i.i241.2.i:                                ; preds = %reg_w.exit.i247.1.i
  %348 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev1.i.i.i141, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %349, align 8
  %shl.i.i.i235.2.i = shl i32 %351, 8
  %or.i.i236.2.i = or i32 %shl.i.i.i235.2.i, -2147483648
  %call3.i.i239.2.i = call i32 @usb_control_msg(ptr noundef %349, i32 noundef %or.i.i236.2.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 78, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i239.2.i)
  %cmp4.i.i240.2.i = icmp slt i32 %call3.i.i239.2.i, 0
  br i1 %cmp4.i.i240.2.i, label %if.end.i.i241.2.i.reg_w.exit.i247.3.sink.split.i_crit_edge, label %reg_w.exit.i247.2.i

if.end.i.i241.2.i.reg_w.exit.i247.3.sink.split.i_crit_edge: ; preds = %if.end.i.i241.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i247.3.sink.split.i

reg_w.exit.i247.2.i:                              ; preds = %if.end.i.i241.2.i
  %352 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %.pr291.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr291.pr.i)
  %cmp.i.i232.3.i = icmp slt i32 %.pr291.pr.i, 0
  br i1 %cmp.i.i232.3.i, label %reg_w.exit.i247.2.i.cx0342_6810_start.exit_crit_edge, label %if.end.i.i241.3.i

reg_w.exit.i247.2.i.cx0342_6810_start.exit_crit_edge: ; preds = %reg_w.exit.i247.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx0342_6810_start.exit

if.end.i.i241.3.i:                                ; preds = %reg_w.exit.i247.2.i
  %353 = ptrtoint ptr %dev1.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %dev1.i.i.i141, align 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %354, align 8
  %shl.i.i.i235.3.i = shl i32 %356, 8
  %or.i.i236.3.i = or i32 %shl.i.i.i235.3.i, -2147483648
  %call3.i.i239.3.i = call i32 @usb_control_msg(ptr noundef %354, i32 noundef %or.i.i236.3.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 79, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i239.3.i)
  %cmp4.i.i240.3.i = icmp slt i32 %call3.i.i239.3.i, 0
  br i1 %cmp4.i.i240.3.i, label %if.end.i.i241.3.i.reg_w.exit.i247.3.sink.split.i_crit_edge, label %if.end.i.i241.3.i.cx0342_6810_start.exit_crit_edge

if.end.i.i241.3.i.cx0342_6810_start.exit_crit_edge: ; preds = %if.end.i.i241.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx0342_6810_start.exit

if.end.i.i241.3.i.reg_w.exit.i247.3.sink.split.i_crit_edge: ; preds = %if.end.i.i241.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i247.3.sink.split.i

reg_w.exit.i247.3.sink.split.i:                   ; preds = %if.end.i.i241.3.i.reg_w.exit.i247.3.sink.split.i_crit_edge, %if.end.i.i241.2.i.reg_w.exit.i247.3.sink.split.i_crit_edge, %if.end.i.i241.1.i.reg_w.exit.i247.3.sink.split.i_crit_edge, %if.end.i.i241.i.reg_w.exit.i247.3.sink.split.i_crit_edge
  %call3.i.i239.1.sink315.i = phi i32 [ %call3.i.i239.i, %if.end.i.i241.i.reg_w.exit.i247.3.sink.split.i_crit_edge ], [ %call3.i.i239.1.i, %if.end.i.i241.1.i.reg_w.exit.i247.3.sink.split.i_crit_edge ], [ %call3.i.i239.2.i, %if.end.i.i241.2.i.reg_w.exit.i247.3.sink.split.i_crit_edge ], [ %call3.i.i239.3.i, %if.end.i.i241.3.i.reg_w.exit.i247.3.sink.split.i_crit_edge ]
  %call7.i.i242.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i239.1.sink315.i) #11
  %357 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %call3.i.i239.1.sink315.i, ptr %usb_err.i.i.i, align 8
  br label %cx0342_6810_start.exit

cx0342_6810_start.exit:                           ; preds = %reg_w.exit.i247.3.sink.split.i, %if.end.i.i241.3.i.cx0342_6810_start.exit_crit_edge, %reg_w.exit.i247.2.i.cx0342_6810_start.exit_crit_edge, %reg_w.exit.i247.1.i.cx0342_6810_start.exit_crit_edge, %reg_w.exit.i247.i.cx0342_6810_start.exit_crit_edge, %reg_w.exit.i215.3.i.cx0342_6810_start.exit_crit_edge
  %call.i253.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 115, i8 noundef zeroext 5) #8
  %call.i253.1.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 48, i8 noundef zeroext 0) #8
  %call.i253.2.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 51, i8 noundef zeroext 0) #8
  %call.i253.3.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 52, i8 noundef zeroext 1) #8
  %call.i253.4.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 53, i8 noundef zeroext 11) #8
  %call.i253.5.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 54, i8 noundef zeroext 11) #8
  %call.i253.6.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 55, i8 noundef zeroext 7) #8
  %call.i253.7.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 76, i8 noundef zeroext 64) #8
  %call.i253.8.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 77, i8 noundef zeroext 2) #8
  %call.i253.9.i = call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 39, i8 noundef zeroext -127) #8
  call fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef 1) #8
  br label %if.end14

if.else13:                                        ; preds = %if.else7
  br i1 %cmp.i.i, label %if.else13.reg_w.exit.thread.i_crit_edge, label %if.end.i.i181

if.else13.reg_w.exit.thread.i_crit_edge:          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.thread.i

if.end.i.i181:                                    ; preds = %if.else13
  %alt.i174 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %358 = ptrtoint ptr %alt.i174 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %alt.i174, align 2
  %dev1.i.i175 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %360 = ptrtoint ptr %dev1.i.i175 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %dev1.i.i175, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %361, align 8
  %shl.i.i.i176 = shl i32 %363, 8
  %or.i.i177 = or i32 %shl.i.i.i176, -2147483648
  %conv.i.i178 = zext i8 %359 to i16
  %call3.i.i179 = tail call i32 @usb_control_msg(ptr noundef %361, i32 noundef %or.i.i177, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i178, i16 noundef zeroext 34, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i179)
  %cmp4.i.i180 = icmp slt i32 %call3.i.i179, 0
  br i1 %cmp4.i.i180, label %do.end.i.i183, label %reg_w.exit.i185

do.end.i.i183:                                    ; preds = %if.end.i.i181
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i179) #11
  %364 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %call3.i.i179, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.thread.i

reg_w.exit.thread.i:                              ; preds = %do.end.i.i183, %if.else13.reg_w.exit.thread.i_crit_edge
  %dev1.i81321.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i.i171) #8
  br label %bulk_w.exit.i195

reg_w.exit.i185:                                  ; preds = %if.end.i.i181
  %365 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %.pr.i184 = load i32, ptr %usb_err.i.i.i, align 8
  %366 = ptrtoint ptr %dev1.i.i175 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %dev1.i.i175, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i.i171) #8
  %368 = ptrtoint ptr %actual_count.i.i171 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 -1, ptr %actual_count.i.i171, align 4, !annotation !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i184)
  %cmp.i83.i = icmp slt i32 %.pr.i184, 0
  br i1 %cmp.i83.i, label %bulk_w.exit.thread361.i, label %for.cond.preheader.i.i192

bulk_w.exit.thread361.i:                          ; preds = %reg_w.exit.i185
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i.i171) #8
  br label %reg_w.exit97.i

for.cond.preheader.i.i192:                        ; preds = %reg_w.exit.i185
  %usb_buf.i.i186 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %369 = ptrtoint ptr %usb_buf.i.i186 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %usb_buf.i.i186, align 4
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 3, ptr %370, align 1
  %372 = load ptr, ptr %usb_buf.i.i186, align 4
  %arrayidx4.i.i187 = getelementptr i8, ptr %372, i32 1
  %373 = call ptr @memset(ptr %arrayidx4.i.i187, i32 0, i32 18)
  %374 = ptrtoint ptr %367 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %367, align 8
  %shl.i.i84.i188 = shl i32 %375, 8
  %or.i85.i189 = or i32 %shl.i.i84.i188, -1073643520
  %376 = load ptr, ptr %usb_buf.i.i186, align 4
  %call6.i.i190 = call i32 @usb_bulk_msg(ptr noundef %367, i32 noundef %or.i85.i189, ptr noundef %376, i32 noundef 19, ptr noundef nonnull %actual_count.i.i171, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i190)
  %cmp7.i.i191 = icmp slt i32 %call6.i.i190, 0
  br i1 %cmp7.i.i191, label %bulk_w.exit.thread.i194, label %for.cond.preheader.i.i192.bulk_w.exit.i195_crit_edge

for.cond.preheader.i.i192.bulk_w.exit.i195_crit_edge: ; preds = %for.cond.preheader.i.i192
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit.i195

bulk_w.exit.thread.i194:                          ; preds = %for.cond.preheader.i.i192
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i.i193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i.i190, i32 noundef 3) #11
  %377 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %call6.i.i190, ptr %usb_err.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i.i171) #8
  br label %reg_w.exit97.i

bulk_w.exit.i195:                                 ; preds = %for.cond.preheader.i.i192.bulk_w.exit.i195_crit_edge, %reg_w.exit.thread.i
  %dev1.i81323.ph.ph.i = phi ptr [ %dev1.i.i175, %for.cond.preheader.i.i192.bulk_w.exit.i195_crit_edge ], [ %dev1.i81321.i, %reg_w.exit.thread.i ]
  %378 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %.pr326.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i.i171) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr326.pr.i)
  %cmp.i88.i = icmp slt i32 %.pr326.pr.i, 0
  br i1 %cmp.i88.i, label %bulk_w.exit.i195.reg_w.exit97.i_crit_edge, label %if.end.i94.i

bulk_w.exit.i195.reg_w.exit97.i_crit_edge:        ; preds = %bulk_w.exit.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit97.i

if.end.i94.i:                                     ; preds = %bulk_w.exit.i195
  %379 = ptrtoint ptr %dev1.i81323.ph.ph.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %dev1.i81323.ph.ph.i, align 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %380, align 8
  %shl.i.i90.i = shl i32 %382, 8
  %or.i91.i = or i32 %shl.i.i90.i, -2147483648
  %call3.i92.i = call i32 @usb_control_msg(ptr noundef %380, i32 noundef %or.i91.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 89, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i92.i)
  %cmp4.i93.i = icmp slt i32 %call3.i92.i, 0
  br i1 %cmp4.i93.i, label %do.end.i96.i, label %if.end.i94.i.reg_w.exit97.i_crit_edge

if.end.i94.i.reg_w.exit97.i_crit_edge:            ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit97.i

do.end.i96.i:                                     ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i92.i) #11
  %383 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %call3.i92.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit97.i

reg_w.exit97.i:                                   ; preds = %do.end.i96.i, %if.end.i94.i.reg_w.exit97.i_crit_edge, %bulk_w.exit.i195.reg_w.exit97.i_crit_edge, %bulk_w.exit.thread.i194, %bulk_w.exit.thread361.i
  %dev1.i81323329.i = phi ptr [ %dev1.i.i175, %bulk_w.exit.thread.i194 ], [ %dev1.i81323.ph.ph.i, %bulk_w.exit.i195.reg_w.exit97.i_crit_edge ], [ %dev1.i81323.ph.ph.i, %if.end.i94.i.reg_w.exit97.i_crit_edge ], [ %dev1.i81323.ph.ph.i, %do.end.i96.i ], [ %dev1.i.i175, %bulk_w.exit.thread361.i ]
  %384 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %385)
  %cmp.i197 = icmp eq i8 %385, 0
  %exposure.i198 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %386 = ptrtoint ptr %exposure.i198 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %exposure.i198, align 4
  %call.i199 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %387) #8
  %gain.i200 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %388 = ptrtoint ptr %gain.i200 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %gain.i200, align 8
  %call2.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %389) #8
  br i1 %cmp.i197, label %if.then.i205, label %if.else.i206

if.then.i205:                                     ; preds = %reg_w.exit97.i
  call void @__sanitizer_cov_trace_pc() #10
  %blue.i201 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %390 = ptrtoint ptr %blue.i201 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %blue.i201, align 4
  %call3.i202 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %391) #8
  %red.i203 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %392 = ptrtoint ptr %red.i203 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %red.i203, align 8
  %call4.i204 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %393) #8
  call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call.i199, i32 noundef %call2.i, i32 noundef %call3.i202, i32 noundef %call4.i204) #8
  br label %if.end.i208

if.else.i206:                                     ; preds = %reg_w.exit97.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call.i199, i32 noundef %call2.i, i32 noundef 0, i32 noundef 0) #8
  br label %if.end.i208

if.end.i208:                                      ; preds = %if.else.i206, %if.then.i205
  %394 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %395)
  %cmp.i.i.i207 = icmp slt i32 %395, 0
  br i1 %cmp.i.i.i207, label %if.end.i208.do.body.i105.i.preheader_crit_edge, label %if.end.i.i.i213

if.end.i208.do.body.i105.i.preheader_crit_edge:   ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i105.i.preheader

if.end.i.i.i213:                                  ; preds = %if.end.i208
  %396 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %dev1.i81323329.i, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %397, align 8
  %shl.i.i.i.i209 = shl i32 %399, 8
  %or.i.i.i210 = or i32 %shl.i.i.i.i209, -2147483648
  %call3.i.i.i211 = call i32 @usb_control_msg(ptr noundef %397, i32 noundef %or.i.i.i210, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 122, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i211)
  %cmp4.i.i.i212 = icmp slt i32 %call3.i.i.i211, 0
  br i1 %cmp4.i.i.i212, label %if.end.i.i.i213.reg_w.exit.i.2.sink.split.i_crit_edge, label %reg_w.exit.i.i214

if.end.i.i.i213.reg_w.exit.i.2.sink.split.i_crit_edge: ; preds = %if.end.i.i.i213
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.2.sink.split.i

reg_w.exit.i.i214:                                ; preds = %if.end.i.i.i213
  %400 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %.pr365.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr365.i)
  %cmp.i.i.1.i = icmp slt i32 %.pr365.i, 0
  br i1 %cmp.i.i.1.i, label %reg_w.exit.i.i214.do.body.i105.i.preheader_crit_edge, label %if.end.i.i.1.i

reg_w.exit.i.i214.do.body.i105.i.preheader_crit_edge: ; preds = %reg_w.exit.i.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i105.i.preheader

if.end.i.i.1.i:                                   ; preds = %reg_w.exit.i.i214
  %401 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %dev1.i81323329.i, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %402, align 8
  %shl.i.i.i.1.i = shl i32 %404, 8
  %or.i.i.1.i = or i32 %shl.i.i.i.1.i, -2147483648
  %call3.i.i.1.i = call i32 @usb_control_msg(ptr noundef %402, i32 noundef %or.i.i.1.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 121, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.1.i)
  %cmp4.i.i.1.i = icmp slt i32 %call3.i.i.1.i, 0
  br i1 %cmp4.i.i.1.i, label %if.end.i.i.1.i.reg_w.exit.i.2.sink.split.i_crit_edge, label %reg_w.exit.i.1.i

if.end.i.i.1.i.reg_w.exit.i.2.sink.split.i_crit_edge: ; preds = %if.end.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.2.sink.split.i

reg_w.exit.i.1.i:                                 ; preds = %if.end.i.i.1.i
  %405 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %.pr367.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr367.pr.i)
  %cmp.i.i.2.i = icmp slt i32 %.pr367.pr.i, 0
  br i1 %cmp.i.i.2.i, label %reg_w.exit.i.1.i.do.body.i105.i.preheader_crit_edge, label %if.end.i.i.2.i

reg_w.exit.i.1.i.do.body.i105.i.preheader_crit_edge: ; preds = %reg_w.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i105.i.preheader

if.end.i.i.2.i:                                   ; preds = %reg_w.exit.i.1.i
  %406 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev1.i81323329.i, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %407, align 8
  %shl.i.i.i.2.i = shl i32 %409, 8
  %or.i.i.2.i = or i32 %shl.i.i.i.2.i, -2147483648
  %call3.i.i.2.i = call i32 @usb_control_msg(ptr noundef %407, i32 noundef %or.i.i.2.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 121, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.2.i)
  %cmp4.i.i.2.i = icmp slt i32 %call3.i.i.2.i, 0
  br i1 %cmp4.i.i.2.i, label %if.end.i.i.2.i.reg_w.exit.i.2.sink.split.i_crit_edge, label %if.end.i.i.2.i.do.body.i105.i.preheader_crit_edge

if.end.i.i.2.i.do.body.i105.i.preheader_crit_edge: ; preds = %if.end.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i105.i.preheader

if.end.i.i.2.i.reg_w.exit.i.2.sink.split.i_crit_edge: ; preds = %if.end.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.2.sink.split.i

reg_w.exit.i.2.sink.split.i:                      ; preds = %if.end.i.i.2.i.reg_w.exit.i.2.sink.split.i_crit_edge, %if.end.i.i.1.i.reg_w.exit.i.2.sink.split.i_crit_edge, %if.end.i.i.i213.reg_w.exit.i.2.sink.split.i_crit_edge
  %call3.i.i.sink390.i = phi i32 [ %call3.i.i.i211, %if.end.i.i.i213.reg_w.exit.i.2.sink.split.i_crit_edge ], [ %call3.i.i.1.i, %if.end.i.i.1.i.reg_w.exit.i.2.sink.split.i_crit_edge ], [ %call3.i.i.2.i, %if.end.i.i.2.i.reg_w.exit.i.2.sink.split.i_crit_edge ]
  %call7.i.i.i215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i.sink390.i) #11
  %410 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %call3.i.i.sink390.i, ptr %usb_err.i.i.i, align 8
  br label %do.body.i105.i.preheader

do.body.i105.i.preheader:                         ; preds = %reg_w.exit.i.2.sink.split.i, %if.end.i.i.2.i.do.body.i105.i.preheader_crit_edge, %reg_w.exit.i.1.i.do.body.i105.i.preheader_crit_edge, %reg_w.exit.i.i214.do.body.i105.i.preheader_crit_edge, %if.end.i208.do.body.i105.i.preheader_crit_edge
  br label %do.body.i105.i

do.body.i105.i:                                   ; preds = %reg_w.exit.i119.i.do.body.i105.i_crit_edge, %do.body.i105.i.preheader
  %p.addr.0.i102.i = phi ptr [ %incdec.ptr.i116.i, %reg_w.exit.i119.i.do.body.i105.i_crit_edge ], [ @tp6810_ov_init_common, %do.body.i105.i.preheader ]
  %l.addr.0.i103.i = phi i32 [ %dec.i117.i, %reg_w.exit.i119.i.do.body.i105.i_crit_edge ], [ 18, %do.body.i105.i.preheader ]
  %411 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %cmp.i.i104.i = icmp slt i32 %412, 0
  br i1 %cmp.i.i104.i, label %do.body.i105.i.reg_w.exit.i119.i_crit_edge, label %if.end.i.i113.i

do.body.i105.i.reg_w.exit.i119.i_crit_edge:       ; preds = %do.body.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i119.i

if.end.i.i113.i:                                  ; preds = %do.body.i105.i
  %val.i106.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i102.i, i32 0, i32 1
  %413 = ptrtoint ptr %val.i106.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %val.i106.i, align 1
  %415 = ptrtoint ptr %p.addr.0.i102.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %p.addr.0.i102.i, align 1
  %417 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %dev1.i81323329.i, align 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %418, align 8
  %shl.i.i.i107.i = shl i32 %420, 8
  %or.i.i108.i = or i32 %shl.i.i.i107.i, -2147483648
  %conv.i.i109.i = zext i8 %414 to i16
  %conv2.i.i110.i = zext i8 %416 to i16
  %call3.i.i111.i = call i32 @usb_control_msg(ptr noundef %418, i32 noundef %or.i.i108.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i109.i, i16 noundef zeroext %conv2.i.i110.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i111.i)
  %cmp4.i.i112.i = icmp slt i32 %call3.i.i111.i, 0
  br i1 %cmp4.i.i112.i, label %do.end.i.i115.i, label %if.end.i.i113.i.reg_w.exit.i119.i_crit_edge

if.end.i.i113.i.reg_w.exit.i119.i_crit_edge:      ; preds = %if.end.i.i113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i119.i

do.end.i.i115.i:                                  ; preds = %if.end.i.i113.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i111.i) #11
  %421 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %call3.i.i111.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i119.i

reg_w.exit.i119.i:                                ; preds = %do.end.i.i115.i, %if.end.i.i113.i.reg_w.exit.i119.i_crit_edge, %do.body.i105.i.reg_w.exit.i119.i_crit_edge
  %incdec.ptr.i116.i = getelementptr %struct.cmd, ptr %p.addr.0.i102.i, i32 1
  %dec.i117.i = add nsw i32 %l.addr.0.i103.i, -1
  %cmp.i118.not.i = icmp eq i32 %dec.i117.i, 0
  br i1 %cmp.i118.not.i, label %reg_w.exit.i119.i.do.body.i127.i_crit_edge, label %reg_w.exit.i119.i.do.body.i105.i_crit_edge

reg_w.exit.i119.i.do.body.i105.i_crit_edge:       ; preds = %reg_w.exit.i119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i105.i

reg_w.exit.i119.i.do.body.i127.i_crit_edge:       ; preds = %reg_w.exit.i119.i
  br label %do.body.i127.i

do.body.i127.i:                                   ; preds = %reg_w.exit.i141.i.do.body.i127.i_crit_edge, %reg_w.exit.i119.i.do.body.i127.i_crit_edge
  %p.addr.0.i124.i = phi ptr [ %incdec.ptr.i138.i, %reg_w.exit.i141.i.do.body.i127.i_crit_edge ], [ @soi763a_6810_start.bridge_init_3, %reg_w.exit.i119.i.do.body.i127.i_crit_edge ]
  %l.addr.0.i125.i = phi i32 [ %dec.i139.i, %reg_w.exit.i141.i.do.body.i127.i_crit_edge ], [ 6, %reg_w.exit.i119.i.do.body.i127.i_crit_edge ]
  %422 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %423)
  %cmp.i.i126.i = icmp slt i32 %423, 0
  br i1 %cmp.i.i126.i, label %do.body.i127.i.reg_w.exit.i141.i_crit_edge, label %if.end.i.i135.i

do.body.i127.i.reg_w.exit.i141.i_crit_edge:       ; preds = %do.body.i127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i141.i

if.end.i.i135.i:                                  ; preds = %do.body.i127.i
  %val.i128.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i124.i, i32 0, i32 1
  %424 = ptrtoint ptr %val.i128.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %val.i128.i, align 1
  %426 = ptrtoint ptr %p.addr.0.i124.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %p.addr.0.i124.i, align 1
  %428 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev1.i81323329.i, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 8
  %shl.i.i.i129.i = shl i32 %431, 8
  %or.i.i130.i = or i32 %shl.i.i.i129.i, -2147483648
  %conv.i.i131.i = zext i8 %425 to i16
  %conv2.i.i132.i = zext i8 %427 to i16
  %call3.i.i133.i = call i32 @usb_control_msg(ptr noundef %429, i32 noundef %or.i.i130.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i131.i, i16 noundef zeroext %conv2.i.i132.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i133.i)
  %cmp4.i.i134.i = icmp slt i32 %call3.i.i133.i, 0
  br i1 %cmp4.i.i134.i, label %do.end.i.i137.i, label %if.end.i.i135.i.reg_w.exit.i141.i_crit_edge

if.end.i.i135.i.reg_w.exit.i141.i_crit_edge:      ; preds = %if.end.i.i135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i141.i

do.end.i.i137.i:                                  ; preds = %if.end.i.i135.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i136.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i133.i) #11
  %432 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %call3.i.i133.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i141.i

reg_w.exit.i141.i:                                ; preds = %do.end.i.i137.i, %if.end.i.i135.i.reg_w.exit.i141.i_crit_edge, %do.body.i127.i.reg_w.exit.i141.i_crit_edge
  %incdec.ptr.i138.i = getelementptr %struct.cmd, ptr %p.addr.0.i124.i, i32 1
  %dec.i139.i = add nsw i32 %l.addr.0.i125.i, -1
  %cmp.i140.not.i = icmp eq i32 %dec.i139.i, 0
  br i1 %cmp.i140.not.i, label %reg_w_buf.exit143.i, label %reg_w.exit.i141.i.do.body.i127.i_crit_edge

reg_w.exit.i141.i.do.body.i127.i_crit_edge:       ; preds = %reg_w.exit.i141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i127.i

reg_w_buf.exit143.i:                              ; preds = %reg_w.exit.i141.i
  %curr_mode.i216 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %433 = ptrtoint ptr %curr_mode.i216 to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %curr_mode.i216, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %434)
  %tobool.not.i217 = icmp eq i8 %434, 0
  %435 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %cmp.i178.i = icmp slt i32 %436, 0
  br i1 %tobool.not.i217, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %reg_w_buf.exit143.i
  br i1 %cmp.i178.i, label %if.then9.i.if.end11.i_crit_edge, label %if.end.i151.i

if.then9.i.if.end11.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i151.i:                                    ; preds = %if.then9.i
  %437 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %dev1.i81323329.i, align 4
  %439 = ptrtoint ptr %438 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %438, align 8
  %shl.i.i147.i = shl i32 %440, 8
  %or.i148.i = or i32 %shl.i.i147.i, -2147483648
  %call3.i149.i = call i32 @usb_control_msg(ptr noundef %438, i32 noundef %or.i148.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 127, i16 noundef zeroext 74, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i149.i)
  %cmp4.i150.i = icmp slt i32 %call3.i149.i, 0
  br i1 %cmp4.i150.i, label %if.end.i151.i.if.end11.sink.split.i_crit_edge, label %reg_w.exit154.i

if.end.i151.i.if.end11.sink.split.i_crit_edge:    ; preds = %if.end.i151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

reg_w.exit154.i:                                  ; preds = %if.end.i151.i
  %441 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %.pr330.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr330.i)
  %cmp.i156.i = icmp slt i32 %.pr330.i, 0
  br i1 %cmp.i156.i, label %reg_w.exit154.i.if.end11.i_crit_edge, label %if.end.i162.i

reg_w.exit154.i.if.end11.i_crit_edge:             ; preds = %reg_w.exit154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i162.i:                                    ; preds = %reg_w.exit154.i
  %442 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev1.i81323329.i, align 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %443, align 8
  %shl.i.i158.i = shl i32 %445, 8
  %or.i159.i = or i32 %shl.i.i158.i, -2147483648
  %call3.i160.i = call i32 @usb_control_msg(ptr noundef %443, i32 noundef %or.i159.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i160.i)
  %cmp4.i161.i = icmp slt i32 %call3.i160.i, 0
  br i1 %cmp4.i161.i, label %if.end.i162.i.if.end11.sink.split.i_crit_edge, label %reg_w.exit165.i

if.end.i162.i.if.end11.sink.split.i_crit_edge:    ; preds = %if.end.i162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

reg_w.exit165.i:                                  ; preds = %if.end.i162.i
  %446 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %.pr332.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr332.pr.i)
  %cmp.i167.i = icmp slt i32 %.pr332.pr.i, 0
  br i1 %cmp.i167.i, label %reg_w.exit165.i.if.end11.i_crit_edge, label %if.end.i173.i

reg_w.exit165.i.if.end11.i_crit_edge:             ; preds = %reg_w.exit165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i173.i:                                    ; preds = %reg_w.exit165.i
  %447 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %dev1.i81323329.i, align 4
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %448, align 8
  %shl.i.i169.i = shl i32 %450, 8
  %or.i170.i = or i32 %shl.i.i169.i, -2147483648
  %call3.i171.i = call i32 @usb_control_msg(ptr noundef %448, i32 noundef %or.i170.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i171.i)
  %cmp4.i172.i = icmp slt i32 %call3.i171.i, 0
  br i1 %cmp4.i172.i, label %if.end.i173.i.if.end11.sink.split.i_crit_edge, label %if.end.i173.i.if.end11.i_crit_edge

if.end.i173.i.if.end11.i_crit_edge:               ; preds = %if.end.i173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i173.i.if.end11.sink.split.i_crit_edge:    ; preds = %if.end.i173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

if.else10.i:                                      ; preds = %reg_w_buf.exit143.i
  br i1 %cmp.i178.i, label %if.else10.i.if.end11.i_crit_edge, label %if.end.i184.i

if.else10.i.if.end11.i_crit_edge:                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i184.i:                                    ; preds = %if.else10.i
  %451 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %dev1.i81323329.i, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %452, align 8
  %shl.i.i180.i = shl i32 %454, 8
  %or.i181.i = or i32 %shl.i.i180.i, -2147483648
  %call3.i182.i = call i32 @usb_control_msg(ptr noundef %452, i32 noundef %or.i181.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 74, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i182.i)
  %cmp4.i183.i = icmp slt i32 %call3.i182.i, 0
  br i1 %cmp4.i183.i, label %if.end.i184.i.if.end11.sink.split.i_crit_edge, label %reg_w.exit187.i

if.end.i184.i.if.end11.sink.split.i_crit_edge:    ; preds = %if.end.i184.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

reg_w.exit187.i:                                  ; preds = %if.end.i184.i
  %455 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %.pr334.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr334.i)
  %cmp.i189.i = icmp slt i32 %.pr334.i, 0
  br i1 %cmp.i189.i, label %reg_w.exit187.i.if.end11.i_crit_edge, label %if.end.i195.i

reg_w.exit187.i.if.end11.i_crit_edge:             ; preds = %reg_w.exit187.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i195.i:                                    ; preds = %reg_w.exit187.i
  %456 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %dev1.i81323329.i, align 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %457, align 8
  %shl.i.i191.i = shl i32 %459, 8
  %or.i192.i = or i32 %shl.i.i191.i, -2147483648
  %call3.i193.i = call i32 @usb_control_msg(ptr noundef %457, i32 noundef %or.i192.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 133, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i193.i)
  %cmp4.i194.i = icmp slt i32 %call3.i193.i, 0
  br i1 %cmp4.i194.i, label %if.end.i195.i.if.end11.sink.split.i_crit_edge, label %reg_w.exit198.i

if.end.i195.i.if.end11.sink.split.i_crit_edge:    ; preds = %if.end.i195.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

reg_w.exit198.i:                                  ; preds = %if.end.i195.i
  %460 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %.pr336.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr336.pr.i)
  %cmp.i200.i = icmp slt i32 %.pr336.pr.i, 0
  br i1 %cmp.i200.i, label %reg_w.exit198.i.if.end11.i_crit_edge, label %if.end.i206.i

reg_w.exit198.i.if.end11.i_crit_edge:             ; preds = %reg_w.exit198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i206.i:                                    ; preds = %reg_w.exit198.i
  %461 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %dev1.i81323329.i, align 4
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %462, align 8
  %shl.i.i202.i = shl i32 %464, 8
  %or.i203.i = or i32 %shl.i.i202.i, -2147483648
  %call3.i204.i = call i32 @usb_control_msg(ptr noundef %462, i32 noundef %or.i203.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i204.i)
  %cmp4.i205.i = icmp slt i32 %call3.i204.i, 0
  br i1 %cmp4.i205.i, label %if.end.i206.i.if.end11.sink.split.i_crit_edge, label %if.end.i206.i.if.end11.i_crit_edge

if.end.i206.i.if.end11.i_crit_edge:               ; preds = %if.end.i206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i206.i.if.end11.sink.split.i_crit_edge:    ; preds = %if.end.i206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %if.end.i206.i.if.end11.sink.split.i_crit_edge, %if.end.i195.i.if.end11.sink.split.i_crit_edge, %if.end.i184.i.if.end11.sink.split.i_crit_edge, %if.end.i173.i.if.end11.sink.split.i_crit_edge, %if.end.i162.i.if.end11.sink.split.i_crit_edge, %if.end.i151.i.if.end11.sink.split.i_crit_edge
  %call3.i182.sink391.i = phi i32 [ %call3.i149.i, %if.end.i151.i.if.end11.sink.split.i_crit_edge ], [ %call3.i160.i, %if.end.i162.i.if.end11.sink.split.i_crit_edge ], [ %call3.i171.i, %if.end.i173.i.if.end11.sink.split.i_crit_edge ], [ %call3.i182.i, %if.end.i184.i.if.end11.sink.split.i_crit_edge ], [ %call3.i193.i, %if.end.i195.i.if.end11.sink.split.i_crit_edge ], [ %call3.i204.i, %if.end.i206.i.if.end11.sink.split.i_crit_edge ]
  %call7.i185.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i182.sink391.i) #11
  %465 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %call3.i182.sink391.i, ptr %usb_err.i.i.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.sink.split.i, %if.end.i206.i.if.end11.i_crit_edge, %reg_w.exit198.i.if.end11.i_crit_edge, %reg_w.exit187.i.if.end11.i_crit_edge, %if.else10.i.if.end11.i_crit_edge, %if.end.i173.i.if.end11.i_crit_edge, %reg_w.exit165.i.if.end11.i_crit_edge, %reg_w.exit154.i.if.end11.i_crit_edge, %if.then9.i.if.end11.i_crit_edge
  %gamma.i218 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %466 = ptrtoint ptr %gamma.i218 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %gamma.i218, align 8
  %call12.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %467) #8
  call fastcc void @setgamma(ptr noundef %gspca_dev, i32 noundef %call12.i) #8
  br label %do.body.i215.i

do.body.i215.i:                                   ; preds = %reg_w.exit.i229.i.do.body.i215.i_crit_edge, %if.end11.i
  %p.addr.0.i212.i = phi ptr [ @tp6810_bridge_start, %if.end11.i ], [ %incdec.ptr.i226.i, %reg_w.exit.i229.i.do.body.i215.i_crit_edge ]
  %l.addr.0.i213.i = phi i32 [ 9, %if.end11.i ], [ %dec.i227.i, %reg_w.exit.i229.i.do.body.i215.i_crit_edge ]
  %468 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %469)
  %cmp.i.i214.i = icmp slt i32 %469, 0
  br i1 %cmp.i.i214.i, label %do.body.i215.i.reg_w.exit.i229.i_crit_edge, label %if.end.i.i223.i

do.body.i215.i.reg_w.exit.i229.i_crit_edge:       ; preds = %do.body.i215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i229.i

if.end.i.i223.i:                                  ; preds = %do.body.i215.i
  %val.i216.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i212.i, i32 0, i32 1
  %470 = ptrtoint ptr %val.i216.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %val.i216.i, align 1
  %472 = ptrtoint ptr %p.addr.0.i212.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %p.addr.0.i212.i, align 1
  %474 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %dev1.i81323329.i, align 4
  %476 = ptrtoint ptr %475 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %475, align 8
  %shl.i.i.i217.i = shl i32 %477, 8
  %or.i.i218.i = or i32 %shl.i.i.i217.i, -2147483648
  %conv.i.i219.i = zext i8 %471 to i16
  %conv2.i.i220.i = zext i8 %473 to i16
  %call3.i.i221.i = call i32 @usb_control_msg(ptr noundef %475, i32 noundef %or.i.i218.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i219.i, i16 noundef zeroext %conv2.i.i220.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i221.i)
  %cmp4.i.i222.i = icmp slt i32 %call3.i.i221.i, 0
  br i1 %cmp4.i.i222.i, label %do.end.i.i225.i, label %if.end.i.i223.i.reg_w.exit.i229.i_crit_edge

if.end.i.i223.i.reg_w.exit.i229.i_crit_edge:      ; preds = %if.end.i.i223.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i229.i

do.end.i.i225.i:                                  ; preds = %if.end.i.i223.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i224.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i221.i) #11
  %478 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %call3.i.i221.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit.i229.i

reg_w.exit.i229.i:                                ; preds = %do.end.i.i225.i, %if.end.i.i223.i.reg_w.exit.i229.i_crit_edge, %do.body.i215.i.reg_w.exit.i229.i_crit_edge
  %incdec.ptr.i226.i = getelementptr %struct.cmd, ptr %p.addr.0.i212.i, i32 1
  %dec.i227.i = add nsw i32 %l.addr.0.i213.i, -1
  %cmp.i228.not.i = icmp eq i32 %dec.i227.i, 0
  br i1 %cmp.i228.not.i, label %reg_w_buf.exit231.i, label %reg_w.exit.i229.i.do.body.i215.i_crit_edge

reg_w.exit.i229.i.do.body.i215.i_crit_edge:       ; preds = %reg_w.exit.i229.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i215.i

reg_w_buf.exit231.i:                              ; preds = %reg_w.exit.i229.i
  %479 = ptrtoint ptr %curr_mode.i216 to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %curr_mode.i216, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %480)
  %tobool14.not.i = icmp eq i8 %480, 0
  br i1 %tobool14.not.i, label %reg_w_buf.exit231.i.if.end16.i_crit_edge, label %if.then15.i219

reg_w_buf.exit231.i.if.end16.i_crit_edge:         ; preds = %reg_w_buf.exit231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then15.i219:                                   ; preds = %reg_w_buf.exit231.i
  %481 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %482)
  %cmp.i233.i = icmp slt i32 %482, 0
  br i1 %cmp.i233.i, label %if.then15.i219.reg_w.exit264.i_crit_edge, label %if.end.i239.i

if.then15.i219.reg_w.exit264.i_crit_edge:         ; preds = %if.then15.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit264.i

if.end.i239.i:                                    ; preds = %if.then15.i219
  %483 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %dev1.i81323329.i, align 4
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %484, align 8
  %shl.i.i235.i = shl i32 %486, 8
  %or.i236.i = or i32 %shl.i.i235.i, -2147483648
  %call3.i237.i = call i32 @usb_control_msg(ptr noundef %484, i32 noundef %or.i236.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 79, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i237.i)
  %cmp4.i238.i = icmp slt i32 %call3.i237.i, 0
  br i1 %cmp4.i238.i, label %if.end.i239.i.reg_w.exit264.sink.split.i_crit_edge, label %reg_w.exit242.i

if.end.i239.i.reg_w.exit264.sink.split.i_crit_edge: ; preds = %if.end.i239.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit264.sink.split.i

reg_w.exit242.i:                                  ; preds = %if.end.i239.i
  %487 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %.pr338.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr338.i)
  %cmp.i244.i = icmp slt i32 %.pr338.i, 0
  br i1 %cmp.i244.i, label %reg_w.exit242.i.reg_w.exit264.i_crit_edge, label %if.end.i250.i

reg_w.exit242.i.reg_w.exit264.i_crit_edge:        ; preds = %reg_w.exit242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit264.i

if.end.i250.i:                                    ; preds = %reg_w.exit242.i
  %488 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %dev1.i81323329.i, align 4
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %489, align 8
  %shl.i.i246.i = shl i32 %491, 8
  %or.i247.i = or i32 %shl.i.i246.i, -2147483648
  %call3.i248.i = call i32 @usb_control_msg(ptr noundef %489, i32 noundef %or.i247.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 124, i16 noundef zeroext 78, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i248.i)
  %cmp4.i249.i = icmp slt i32 %call3.i248.i, 0
  br i1 %cmp4.i249.i, label %if.end.i250.i.reg_w.exit264.sink.split.i_crit_edge, label %if.end.i250.i.if.end16.i_crit_edge

if.end.i250.i.if.end16.i_crit_edge:               ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.end.i250.i.reg_w.exit264.sink.split.i_crit_edge: ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit264.sink.split.i

if.end16.i:                                       ; preds = %if.end.i250.i.if.end16.i_crit_edge, %reg_w_buf.exit231.i.if.end16.i_crit_edge
  %492 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %.pr340.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr340.pr.i)
  %cmp.i255.i = icmp slt i32 %.pr340.pr.i, 0
  br i1 %cmp.i255.i, label %if.end16.i.reg_w.exit264.i_crit_edge, label %if.end.i261.i

if.end16.i.reg_w.exit264.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit264.i

if.end.i261.i:                                    ; preds = %if.end16.i
  %493 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %dev1.i81323329.i, align 4
  %495 = ptrtoint ptr %494 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %494, align 8
  %shl.i.i257.i = shl i32 %496, 8
  %or.i258.i = or i32 %shl.i.i257.i, -2147483648
  %call3.i259.i = call i32 @usb_control_msg(ptr noundef %494, i32 noundef %or.i258.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i259.i)
  %cmp4.i260.i = icmp slt i32 %call3.i259.i, 0
  br i1 %cmp4.i260.i, label %if.end.i261.i.reg_w.exit264.sink.split.i_crit_edge, label %if.end.i261.i.reg_w.exit264.i_crit_edge

if.end.i261.i.reg_w.exit264.i_crit_edge:          ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit264.i

if.end.i261.i.reg_w.exit264.sink.split.i_crit_edge: ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit264.sink.split.i

reg_w.exit264.sink.split.i:                       ; preds = %if.end.i261.i.reg_w.exit264.sink.split.i_crit_edge, %if.end.i250.i.reg_w.exit264.sink.split.i_crit_edge, %if.end.i239.i.reg_w.exit264.sink.split.i_crit_edge
  %call3.i237.sink392.i = phi i32 [ %call3.i237.i, %if.end.i239.i.reg_w.exit264.sink.split.i_crit_edge ], [ %call3.i248.i, %if.end.i250.i.reg_w.exit264.sink.split.i_crit_edge ], [ %call3.i259.i, %if.end.i261.i.reg_w.exit264.sink.split.i_crit_edge ]
  %call7.i240.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i237.sink392.i) #11
  %497 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %call3.i237.sink392.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit264.i

reg_w.exit264.i:                                  ; preds = %reg_w.exit264.sink.split.i, %if.end.i261.i.reg_w.exit264.i_crit_edge, %if.end16.i.reg_w.exit264.i_crit_edge, %reg_w.exit242.i.reg_w.exit264.i_crit_edge, %if.then15.i219.reg_w.exit264.i_crit_edge
  %sharpness.i220 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %498 = ptrtoint ptr %sharpness.i220 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %sharpness.i220, align 4
  %call17.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %499) #8
  call fastcc void @setsharpness(ptr noundef %gspca_dev, i32 noundef %call17.i) #8
  %500 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %dev1.i81323329.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i265.i) #8
  %502 = ptrtoint ptr %actual_count.i265.i to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 -1, ptr %actual_count.i265.i, align 4, !annotation !179
  %503 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %504)
  %cmp.i268.i = icmp slt i32 %504, 0
  br i1 %cmp.i268.i, label %reg_w.exit264.i.bulk_w.exit287.i_crit_edge, label %for.cond.preheader.i270.i

reg_w.exit264.i.bulk_w.exit287.i_crit_edge:       ; preds = %reg_w.exit264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit287.i

for.cond.preheader.i270.i:                        ; preds = %reg_w.exit264.i
  %usb_buf.i269.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %505 = ptrtoint ptr %usb_buf.i269.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %usb_buf.i269.i, align 4
  %507 = ptrtoint ptr %506 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 3, ptr %506, align 1
  %508 = load ptr, ptr %usb_buf.i269.i, align 4
  %arrayidx4.i273.i = getelementptr i8, ptr %508, i32 1
  %509 = call ptr @memcpy(ptr %arrayidx4.i273.i, ptr getelementptr inbounds ([2 x [18 x i8]], ptr @color_gain, i32 0, i32 1), i32 18)
  %510 = ptrtoint ptr %501 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %501, align 8
  %shl.i.i274.i = shl i32 %511, 8
  %or.i275.i = or i32 %shl.i.i274.i, -1073643520
  %512 = load ptr, ptr %usb_buf.i269.i, align 4
  %call6.i277.i = call i32 @usb_bulk_msg(ptr noundef %501, i32 noundef %or.i275.i, ptr noundef %512, i32 noundef 19, ptr noundef nonnull %actual_count.i265.i, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i277.i)
  %cmp7.i278.i = icmp slt i32 %call6.i277.i, 0
  br i1 %cmp7.i278.i, label %do.end.i281.i, label %for.cond.preheader.i270.i.bulk_w.exit287.i_crit_edge

for.cond.preheader.i270.i.bulk_w.exit287.i_crit_edge: ; preds = %for.cond.preheader.i270.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit287.i

do.end.i281.i:                                    ; preds = %for.cond.preheader.i270.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i280.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i277.i, i32 noundef 3) #11
  %513 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %call6.i277.i, ptr %usb_err.i.i.i, align 8
  br label %bulk_w.exit287.i

bulk_w.exit287.i:                                 ; preds = %do.end.i281.i, %for.cond.preheader.i270.i.bulk_w.exit287.i_crit_edge, %reg_w.exit264.i.bulk_w.exit287.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i265.i) #8
  call fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef 1) #8
  %514 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %515)
  %cmp.i289.i = icmp slt i32 %515, 0
  br i1 %cmp.i289.i, label %bulk_w.exit287.i.reg_w.exit298.i_crit_edge, label %if.end.i295.i

bulk_w.exit287.i.reg_w.exit298.i_crit_edge:       ; preds = %bulk_w.exit287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit298.i

if.end.i295.i:                                    ; preds = %bulk_w.exit287.i
  %516 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %dev1.i81323329.i, align 4
  %518 = ptrtoint ptr %517 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %517, align 8
  %shl.i.i291.i = shl i32 %519, 8
  %or.i292.i = or i32 %shl.i.i291.i, -2147483648
  %call3.i293.i = call i32 @usb_control_msg(ptr noundef %517, i32 noundef %or.i292.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 240, i16 noundef zeroext 63, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i293.i)
  %cmp4.i294.i = icmp slt i32 %call3.i293.i, 0
  br i1 %cmp4.i294.i, label %do.end.i297.i, label %if.end.i295.i.reg_w.exit298.i_crit_edge

if.end.i295.i.reg_w.exit298.i_crit_edge:          ; preds = %if.end.i295.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit298.i

do.end.i297.i:                                    ; preds = %if.end.i295.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i296.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i293.i) #11
  %520 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %call3.i293.i, ptr %usb_err.i.i.i, align 8
  br label %reg_w.exit298.i

reg_w.exit298.i:                                  ; preds = %do.end.i297.i, %if.end.i295.i.reg_w.exit298.i_crit_edge, %bulk_w.exit287.i.reg_w.exit298.i_crit_edge
  %521 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %522)
  %cmp20.i = icmp eq i8 %522, 0
  %523 = ptrtoint ptr %exposure.i198 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %exposure.i198, align 4
  %call24.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %524) #8
  %525 = ptrtoint ptr %gain.i200 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %gain.i200, align 8
  %call26.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %526) #8
  br i1 %cmp20.i, label %if.then22.i, label %if.else31.i

if.then22.i:                                      ; preds = %reg_w.exit298.i
  call void @__sanitizer_cov_trace_pc() #10
  %blue27.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %527 = ptrtoint ptr %blue27.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %blue27.i, align 4
  %call28.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %528) #8
  %red29.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %529 = ptrtoint ptr %red29.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %red29.i, align 8
  %call30.i = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %530) #8
  call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call24.i, i32 noundef %call26.i, i32 noundef %call28.i, i32 noundef %call30.i) #8
  br label %if.end36.i

if.else31.i:                                      ; preds = %reg_w.exit298.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call24.i, i32 noundef %call26.i, i32 noundef 0, i32 noundef 0) #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else31.i, %if.then22.i
  %531 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %532)
  %cmp.i.i303.i = icmp slt i32 %532, 0
  br i1 %cmp.i.i303.i, label %if.end36.i.if.end14_crit_edge, label %if.end.i.i312.i

if.end36.i.if.end14_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i.i312.i:                                  ; preds = %if.end36.i
  %533 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %dev1.i81323329.i, align 4
  %535 = ptrtoint ptr %534 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %534, align 8
  %shl.i.i.i306.i = shl i32 %536, 8
  %or.i.i307.i = or i32 %shl.i.i.i306.i, -2147483648
  %call3.i.i310.i = call i32 @usb_control_msg(ptr noundef %534, i32 noundef %or.i.i307.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i310.i)
  %cmp4.i.i311.i = icmp slt i32 %call3.i.i310.i, 0
  br i1 %cmp4.i.i311.i, label %if.end.i.i312.i.reg_w.exit.i318.3.sink.split.i_crit_edge, label %reg_w.exit.i318.i

if.end.i.i312.i.reg_w.exit.i318.3.sink.split.i_crit_edge: ; preds = %if.end.i.i312.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i318.3.sink.split.i

reg_w.exit.i318.i:                                ; preds = %if.end.i.i312.i
  %537 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %.pr369.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr369.i)
  %cmp.i.i303.1.i = icmp slt i32 %.pr369.i, 0
  br i1 %cmp.i.i303.1.i, label %reg_w.exit.i318.i.if.end14_crit_edge, label %if.end.i.i312.1.i

reg_w.exit.i318.i.if.end14_crit_edge:             ; preds = %reg_w.exit.i318.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i.i312.1.i:                                ; preds = %reg_w.exit.i318.i
  %538 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %dev1.i81323329.i, align 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %539, align 8
  %shl.i.i.i306.1.i = shl i32 %541, 8
  %or.i.i307.1.i = or i32 %shl.i.i.i306.1.i, -2147483648
  %call3.i.i310.1.i = call i32 @usb_control_msg(ptr noundef %539, i32 noundef %or.i.i307.1.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i310.1.i)
  %cmp4.i.i311.1.i = icmp slt i32 %call3.i.i310.1.i, 0
  br i1 %cmp4.i.i311.1.i, label %if.end.i.i312.1.i.reg_w.exit.i318.3.sink.split.i_crit_edge, label %reg_w.exit.i318.1.i

if.end.i.i312.1.i.reg_w.exit.i318.3.sink.split.i_crit_edge: ; preds = %if.end.i.i312.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i318.3.sink.split.i

reg_w.exit.i318.1.i:                              ; preds = %if.end.i.i312.1.i
  %542 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %.pr371.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr371.pr.i)
  %cmp.i.i303.2.i = icmp slt i32 %.pr371.pr.i, 0
  br i1 %cmp.i.i303.2.i, label %reg_w.exit.i318.1.i.if.end14_crit_edge, label %if.end.i.i312.2.i

reg_w.exit.i318.1.i.if.end14_crit_edge:           ; preds = %reg_w.exit.i318.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i.i312.2.i:                                ; preds = %reg_w.exit.i318.1.i
  %543 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %dev1.i81323329.i, align 4
  %545 = ptrtoint ptr %544 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %544, align 8
  %shl.i.i.i306.2.i = shl i32 %546, 8
  %or.i.i307.2.i = or i32 %shl.i.i.i306.2.i, -2147483648
  %call3.i.i310.2.i = call i32 @usb_control_msg(ptr noundef %544, i32 noundef %or.i.i307.2.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 95, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i310.2.i)
  %cmp4.i.i311.2.i = icmp slt i32 %call3.i.i310.2.i, 0
  br i1 %cmp4.i.i311.2.i, label %if.end.i.i312.2.i.reg_w.exit.i318.3.sink.split.i_crit_edge, label %reg_w.exit.i318.2.i

if.end.i.i312.2.i.reg_w.exit.i318.3.sink.split.i_crit_edge: ; preds = %if.end.i.i312.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i318.3.sink.split.i

reg_w.exit.i318.2.i:                              ; preds = %if.end.i.i312.2.i
  %547 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %.pr373.pr.i = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr373.pr.i)
  %cmp.i.i303.3.i = icmp slt i32 %.pr373.pr.i, 0
  br i1 %cmp.i.i303.3.i, label %reg_w.exit.i318.2.i.if.end14_crit_edge, label %if.end.i.i312.3.i

reg_w.exit.i318.2.i.if.end14_crit_edge:           ; preds = %reg_w.exit.i318.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i.i312.3.i:                                ; preds = %reg_w.exit.i318.2.i
  %548 = ptrtoint ptr %dev1.i81323329.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %dev1.i81323329.i, align 4
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %549, align 8
  %shl.i.i.i306.3.i = shl i32 %551, 8
  %or.i.i307.3.i = or i32 %shl.i.i.i306.3.i, -2147483648
  %call3.i.i310.3.i = call i32 @usb_control_msg(ptr noundef %549, i32 noundef %or.i.i307.3.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i310.3.i)
  %cmp4.i.i311.3.i = icmp slt i32 %call3.i.i310.3.i, 0
  br i1 %cmp4.i.i311.3.i, label %if.end.i.i312.3.i.reg_w.exit.i318.3.sink.split.i_crit_edge, label %if.end.i.i312.3.i.if.end14_crit_edge

if.end.i.i312.3.i.if.end14_crit_edge:             ; preds = %if.end.i.i312.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i.i312.3.i.reg_w.exit.i318.3.sink.split.i_crit_edge: ; preds = %if.end.i.i312.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i318.3.sink.split.i

reg_w.exit.i318.3.sink.split.i:                   ; preds = %if.end.i.i312.3.i.reg_w.exit.i318.3.sink.split.i_crit_edge, %if.end.i.i312.2.i.reg_w.exit.i318.3.sink.split.i_crit_edge, %if.end.i.i312.1.i.reg_w.exit.i318.3.sink.split.i_crit_edge, %if.end.i.i312.i.reg_w.exit.i318.3.sink.split.i_crit_edge
  %call3.i.i310.1.sink393.i = phi i32 [ %call3.i.i310.i, %if.end.i.i312.i.reg_w.exit.i318.3.sink.split.i_crit_edge ], [ %call3.i.i310.1.i, %if.end.i.i312.1.i.reg_w.exit.i318.3.sink.split.i_crit_edge ], [ %call3.i.i310.2.i, %if.end.i.i312.2.i.reg_w.exit.i318.3.sink.split.i_crit_edge ], [ %call3.i.i310.3.i, %if.end.i.i312.3.i.reg_w.exit.i318.3.sink.split.i_crit_edge ]
  %call7.i.i313.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i310.1.sink393.i) #11
  %552 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 %call3.i.i310.1.sink393.i, ptr %usb_err.i.i.i, align 8
  br label %if.end14

if.end14:                                         ; preds = %reg_w.exit.i318.3.sink.split.i, %if.end.i.i312.3.i.if.end14_crit_edge, %reg_w.exit.i318.2.i.if.end14_crit_edge, %reg_w.exit.i318.1.i.if.end14_crit_edge, %reg_w.exit.i318.i.if.end14_crit_edge, %if.end36.i.if.end14_crit_edge, %cx0342_6810_start.exit
  %usb_err.i.i221 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i.i222 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %reg_w.exit.i233.do.body.i_crit_edge, %if.end14
  %p.addr.0.i = phi ptr [ @tp6810_late_start, %if.end14 ], [ %incdec.ptr.i, %reg_w.exit.i233.do.body.i_crit_edge ]
  %l.addr.0.i = phi i32 [ 68, %if.end14 ], [ %dec.i, %reg_w.exit.i233.do.body.i_crit_edge ]
  %553 = ptrtoint ptr %usb_err.i.i221 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %usb_err.i.i221, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %554)
  %cmp.i.i223 = icmp slt i32 %554, 0
  br i1 %cmp.i.i223, label %do.body.i.reg_w.exit.i233_crit_edge, label %if.end.i.i229

do.body.i.reg_w.exit.i233_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i233

if.end.i.i229:                                    ; preds = %do.body.i
  %val.i = getelementptr inbounds %struct.cmd, ptr %p.addr.0.i, i32 0, i32 1
  %555 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %val.i, align 1
  %557 = ptrtoint ptr %p.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %p.addr.0.i, align 1
  %559 = ptrtoint ptr %dev1.i.i222 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %dev1.i.i222, align 4
  %561 = ptrtoint ptr %560 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %560, align 8
  %shl.i.i.i224 = shl i32 %562, 8
  %or.i.i225 = or i32 %shl.i.i.i224, -2147483648
  %conv.i.i226 = zext i8 %556 to i16
  %conv2.i.i = zext i8 %558 to i16
  %call3.i.i227 = call i32 @usb_control_msg(ptr noundef %560, i32 noundef %or.i.i225, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i226, i16 noundef zeroext %conv2.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i227)
  %cmp4.i.i228 = icmp slt i32 %call3.i.i227, 0
  br i1 %cmp4.i.i228, label %do.end.i.i231, label %if.end.i.i229.reg_w.exit.i233_crit_edge

if.end.i.i229.reg_w.exit.i233_crit_edge:          ; preds = %if.end.i.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i233

do.end.i.i231:                                    ; preds = %if.end.i.i229
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i227) #11
  %563 = ptrtoint ptr %usb_err.i.i221 to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %call3.i.i227, ptr %usb_err.i.i221, align 8
  br label %reg_w.exit.i233

reg_w.exit.i233:                                  ; preds = %do.end.i.i231, %if.end.i.i229.reg_w.exit.i233_crit_edge, %do.body.i.reg_w.exit.i233_crit_edge
  %incdec.ptr.i = getelementptr %struct.cmd, ptr %p.addr.0.i, i32 1
  %dec.i = add nsw i32 %l.addr.0.i, -1
  %cmp.i232.not = icmp eq i32 %dec.i, 0
  br i1 %cmp.i232.not, label %reg_w_buf.exit, label %reg_w.exit.i233.do.body.i_crit_edge

reg_w.exit.i233.do.body.i_crit_edge:              ; preds = %reg_w.exit.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

reg_w_buf.exit:                                   ; preds = %reg_w.exit.i233
  %564 = ptrtoint ptr %usb_err.i.i221 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %usb_err.i.i221, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %565)
  %cmp.i235 = icmp slt i32 %565, 0
  br i1 %cmp.i235, label %reg_w_buf.exit.reg_w.exit250_crit_edge, label %if.end.i237

reg_w_buf.exit.reg_w.exit250_crit_edge:           ; preds = %reg_w_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit250

if.end.i237:                                      ; preds = %reg_w_buf.exit
  %566 = ptrtoint ptr %dev1.i.i222 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %dev1.i.i222, align 4
  %568 = ptrtoint ptr %567 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %567, align 8
  %shl.i.i = shl i32 %569, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i236 = call i32 @usb_control_msg(ptr noundef %567, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 128, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i236)
  %cmp4.i = icmp slt i32 %call3.i236, 0
  br i1 %cmp4.i, label %if.end.i237.reg_w.exit250.sink.split_crit_edge, label %reg_w.exit

if.end.i237.reg_w.exit250.sink.split_crit_edge:   ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit250.sink.split

reg_w.exit:                                       ; preds = %if.end.i237
  %570 = ptrtoint ptr %usb_err.i.i221 to i32
  call void @__asan_load4_noabort(i32 %570)
  %.pr = load i32, ptr %usb_err.i.i221, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i240 = icmp slt i32 %.pr, 0
  br i1 %cmp.i240, label %reg_w.exit.reg_w.exit250_crit_edge, label %if.end.i247

reg_w.exit.reg_w.exit250_crit_edge:               ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit250

if.end.i247:                                      ; preds = %reg_w.exit
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %571 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %curr_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %572)
  %tobool.not = icmp eq i8 %572, 0
  %conv16 = select i1 %tobool.not, i8 14, i8 10
  %573 = ptrtoint ptr %dev1.i.i222 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %dev1.i.i222, align 4
  %575 = ptrtoint ptr %574 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %574, align 8
  %shl.i.i242 = shl i32 %576, 8
  %or.i243 = or i32 %shl.i.i242, -2147483648
  %conv.i244 = zext i8 %conv16 to i16
  %call3.i245 = call i32 @usb_control_msg(ptr noundef %574, i32 noundef %or.i243, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i244, i16 noundef zeroext 130, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i245)
  %cmp4.i246 = icmp slt i32 %call3.i245, 0
  br i1 %cmp4.i246, label %if.end.i247.reg_w.exit250.sink.split_crit_edge, label %if.end.i247.reg_w.exit250_crit_edge

if.end.i247.reg_w.exit250_crit_edge:              ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit250

if.end.i247.reg_w.exit250.sink.split_crit_edge:   ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit250.sink.split

reg_w.exit250.sink.split:                         ; preds = %if.end.i247.reg_w.exit250.sink.split_crit_edge, %if.end.i237.reg_w.exit250.sink.split_crit_edge
  %call3.i236.sink257 = phi i32 [ %call3.i236, %if.end.i237.reg_w.exit250.sink.split_crit_edge ], [ %call3.i245, %if.end.i247.reg_w.exit250.sink.split_crit_edge ]
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i236.sink257) #11
  %577 = ptrtoint ptr %usb_err.i.i221 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %call3.i236.sink257, ptr %usb_err.i.i221, align 8
  br label %reg_w.exit250

reg_w.exit250:                                    ; preds = %reg_w.exit250.sink.split, %if.end.i247.reg_w.exit250_crit_edge, %reg_w.exit.reg_w.exit250_crit_edge, %reg_w_buf.exit.reg_w.exit250_crit_edge
  %578 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %579)
  %cmp19 = icmp eq i8 %579, 0
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %580 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %exposure, align 4
  %call = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %581) #8
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %582 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %gain, align 8
  %call22 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %583) #8
  br i1 %cmp19, label %if.then21, label %if.else25

if.then21:                                        ; preds = %reg_w.exit250
  call void @__sanitizer_cov_trace_pc() #10
  %blue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %584 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %blue, align 4
  %call23 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %585) #8
  %red = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %586 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %red, align 8
  %call24 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %587) #8
  call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call, i32 noundef %call22, i32 noundef %call23, i32 noundef %call24)
  br label %if.end30

if.else25:                                        ; preds = %reg_w.exit250
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call, i32 noundef %call22, i32 noundef 0, i32 noundef 0)
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then21
  %588 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %589)
  %cmp33 = icmp eq i8 %589, 1
  br i1 %cmp33, label %if.then35, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %590 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %jpegqual, align 8
  %call36 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %591) #8
  call fastcc void @setquality(ptr noundef %gspca_dev, i32 noundef %call36)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge
  %592 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %593)
  %cmp40 = icmp eq i8 %593, 1
  br i1 %cmp40, label %if.then42, label %if.end37.if.end45_crit_edge

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %594 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %594, align 8
  %call43 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %596) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool.not.i251 = icmp eq i32 %call43, 0
  %conv.i252 = select i1 %tobool.not.i251, i8 -1, i8 13
  %ag_cnt.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %597 = ptrtoint ptr %ag_cnt.i to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 %conv.i252, ptr %ag_cnt.i, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end37.if.end45_crit_edge, %soi763a_6800_start.exit, %if.then10.i.i, %bulk_w.exit.i.i.if.end45_crit_edge
  %exposure46 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %598 = ptrtoint ptr %exposure46 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %exposure46, align 4
  %call47 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %599) #8
  call fastcc void @setframerate(ptr noundef %gspca_dev, i32 noundef %call47)
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %600 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %usb_err, align 8
  ret i32 %601
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  br i1 %cmp, label %if.then, label %if.end70

if.then:                                          ; preds = %entry
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %3, label %if.end [
    i8 90, label %if.then.if.end25_crit_edge
    i8 -86, label %if.then.cleanup_crit_edge
    i8 0, label %if.then.cleanup_crit_edge188
  ]

if.then.cleanup_crit_edge188:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %3)
  %cmp14 = icmp ugt i8 %3, -64
  br i1 %cmp14, label %do.body, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp17 = icmp sgt i32 %5, 3
  br i1 %cmp17, label %do.end, label %do.body.do.end23_crit_edge

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name) #11
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %6 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %last_packet_type, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end.if.end25_crit_edge, %if.then.if.end25_crit_edge
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %dec = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec)
  %cmp26 = icmp slt i32 %dec, 2
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %last_packet_type29 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %7 = ptrtoint ptr %last_packet_type29 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %last_packet_type29, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp32 = icmp eq i8 %9, -1
  br i1 %cmp32, label %land.lhs.true, label %if.end30.if.else_crit_edge

if.end30.if.else_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end30
  %arrayidx = getelementptr i8, ptr %data, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %11)
  %cmp35 = icmp eq i8 %11, -40
  br i1 %cmp35, label %if.then37, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %dec)
  %cmp38 = icmp ult i32 %dec, 7
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %last_packet_type41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %12 = ptrtoint ptr %last_packet_type41 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %last_packet_type41, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.then37
  %arrayidx43 = getelementptr i8, ptr %data, i32 7
  %13 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx43, align 1
  %15 = and i8 %14, 15
  %quality = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %16 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %quality, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp46.not = icmp eq i8 %15, %17
  br i1 %cmp46.not, label %if.end42.if.end53_crit_edge, label %if.then48

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @set_dqt(ptr noundef %gspca_dev, i8 noundef zeroext %15)
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end42.if.end53_crit_edge
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 521) #8
  %add.ptr = getelementptr i8, ptr %data, i32 8
  %sub = add i32 %len, -8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr, i32 noundef %sub) #8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end30.if.else_crit_edge
  %sub55 = add i32 %len, -3
  %arrayidx56 = getelementptr i8, ptr %incdec.ptr, i32 %sub55
  %18 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp58 = icmp eq i8 %19, -1
  br i1 %cmp58, label %land.lhs.true60, label %if.else.if.else67_crit_edge

if.else.if.else67_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

land.lhs.true60:                                  ; preds = %if.else
  %sub61 = add i32 %len, -2
  %arrayidx62 = getelementptr i8, ptr %incdec.ptr, i32 %sub61
  %20 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %21)
  %cmp64 = icmp eq i8 %21, -39
  br i1 %cmp64, label %if.then66, label %land.lhs.true60.if.else67_crit_edge

land.lhs.true60.if.else67_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

if.then66:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %incdec.ptr, i32 noundef %dec) #8
  br label %cleanup

if.else67:                                        ; preds = %land.lhs.true60.if.else67_crit_edge, %if.else.if.else67_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %incdec.ptr, i32 noundef %dec) #8
  br label %cleanup

if.end70:                                         ; preds = %entry
  %22 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %3, label %if.end70.cleanup_crit_edge [
    i8 85, label %sw.bb
    i8 -86, label %sw.bb110
    i8 -52, label %sw.bb112
  ]

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end70
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp72 = icmp slt i32 %len, 8
  br i1 %cmp72, label %sw.bb.if.then94_crit_edge, label %lor.lhs.false74

sw.bb.if.then94_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

lor.lhs.false74:                                  ; preds = %sw.bb
  %arrayidx75 = getelementptr i8, ptr %data, i32 1
  %23 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp77.not = icmp eq i8 %24, -1
  br i1 %cmp77.not, label %lor.lhs.false79, label %lor.lhs.false74.if.then94_crit_edge

lor.lhs.false74.if.then94_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

lor.lhs.false79:                                  ; preds = %lor.lhs.false74
  %arrayidx80 = getelementptr i8, ptr %data, i32 2
  %25 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %26)
  %cmp82.not = icmp eq i8 %26, -40
  br i1 %cmp82.not, label %lor.lhs.false84, label %lor.lhs.false79.if.then94_crit_edge

lor.lhs.false79.if.then94_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

lor.lhs.false84:                                  ; preds = %lor.lhs.false79
  %arrayidx85 = getelementptr i8, ptr %data, i32 3
  %27 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp87.not = icmp eq i8 %28, -1
  br i1 %cmp87.not, label %lor.lhs.false89, label %lor.lhs.false84.if.then94_crit_edge

lor.lhs.false84.if.then94_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

lor.lhs.false89:                                  ; preds = %lor.lhs.false84
  %arrayidx90 = getelementptr i8, ptr %data, i32 4
  %29 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %30)
  %cmp92.not = icmp eq i8 %30, -2
  br i1 %cmp92.not, label %if.end96, label %lor.lhs.false89.if.then94_crit_edge

lor.lhs.false89.if.then94_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false89.if.then94_crit_edge, %lor.lhs.false84.if.then94_crit_edge, %lor.lhs.false79.if.then94_crit_edge, %lor.lhs.false74.if.then94_crit_edge, %sw.bb.if.then94_crit_edge
  %last_packet_type95 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %31 = ptrtoint ptr %last_packet_type95 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %last_packet_type95, align 4
  br label %cleanup

if.end96:                                         ; preds = %lor.lhs.false89
  %arrayidx97 = getelementptr i8, ptr %data, i32 7
  %32 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx97, align 1
  %quality99 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %34 = ptrtoint ptr %quality99 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %quality99, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp101.not = icmp eq i8 %33, %35
  br i1 %cmp101.not, label %if.end96.if.end105_crit_edge, label %if.then103

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then103:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @set_dqt(ptr noundef %gspca_dev, i8 noundef zeroext %33)
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end96.if.end105_crit_edge
  %jpeg_hdr106 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr106, i32 noundef 521) #8
  %add.ptr108 = getelementptr i8, ptr %data, i32 8
  %sub109 = add nsw i32 %len, -8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr108, i32 noundef %sub109) #8
  br label %cleanup

sw.bb110:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %last_packet_type111 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %36 = ptrtoint ptr %last_packet_type111 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %last_packet_type111, align 4
  br label %cleanup

sw.bb112:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp113 = icmp sgt i32 %len, 2
  br i1 %cmp113, label %land.lhs.true115, label %sw.bb112.if.else128_crit_edge

sw.bb112.if.else128_crit_edge:                    ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else128

land.lhs.true115:                                 ; preds = %sw.bb112
  %arrayidx116 = getelementptr i8, ptr %data, i32 1
  %37 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %cmp118.not = icmp eq i8 %38, -1
  br i1 %cmp118.not, label %lor.lhs.false120, label %land.lhs.true115.if.then125_crit_edge

land.lhs.true115.if.then125_crit_edge:            ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then125

lor.lhs.false120:                                 ; preds = %land.lhs.true115
  %arrayidx121 = getelementptr i8, ptr %data, i32 2
  %39 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %40)
  %cmp123.not = icmp eq i8 %40, -40
  br i1 %cmp123.not, label %lor.lhs.false120.if.else128_crit_edge, label %lor.lhs.false120.if.then125_crit_edge

lor.lhs.false120.if.then125_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then125

lor.lhs.false120.if.else128_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else128

if.then125:                                       ; preds = %lor.lhs.false120.if.then125_crit_edge, %land.lhs.true115.if.then125_crit_edge
  %sub127 = add nsw i32 %len, -1
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %arrayidx116, i32 noundef %sub127) #8
  br label %cleanup

if.else128:                                       ; preds = %lor.lhs.false120.if.else128_crit_edge, %sw.bb112.if.else128_crit_edge
  %last_packet_type129 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %41 = ptrtoint ptr %last_packet_type129 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %last_packet_type129, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else128, %if.then125, %sw.bb110, %if.end105, %if.then94, %if.end70.cleanup_crit_edge, %if.else67, %if.then66, %if.end53, %if.then40, %if.then28, %do.end23, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_isoc_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %actual_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3 = icmp eq i8 %3, 0
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  br i1 %cmp.i, label %if.then5.reg_w.exit33_crit_edge, label %if.end.i

if.then5.reg_w.exit33_crit_edge:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit33

if.end.i:                                         ; preds = %if.then5
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.reg_w.exit33.sink.split_crit_edge, label %reg_w.exit

if.end.i.reg_w.exit33.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit33.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i24 = icmp slt i32 %.pr, 0
  br i1 %cmp.i24, label %reg_w.exit.reg_w.exit33_crit_edge, label %if.end.i30

reg_w.exit.reg_w.exit33_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit33

if.end.i30:                                       ; preds = %reg_w.exit
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i26 = shl i32 %14, 8
  %or.i27 = or i32 %shl.i.i26, -2147483648
  %call3.i28 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i27, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 135, i16 noundef zeroext 63, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i28)
  %cmp4.i29 = icmp slt i32 %call3.i28, 0
  br i1 %cmp4.i29, label %if.end.i30.reg_w.exit33.sink.split_crit_edge, label %if.end.i30.reg_w.exit33_crit_edge

if.end.i30.reg_w.exit33_crit_edge:                ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit33

if.end.i30.reg_w.exit33.sink.split_crit_edge:     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit33.sink.split

reg_w.exit33.sink.split:                          ; preds = %if.end.i30.reg_w.exit33.sink.split_crit_edge, %if.end.i.reg_w.exit33.sink.split_crit_edge
  %call3.i.sink165 = phi i32 [ %call3.i, %if.end.i.reg_w.exit33.sink.split_crit_edge ], [ %call3.i28, %if.end.i30.reg_w.exit33.sink.split_crit_edge ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.sink165) #11
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call3.i.sink165, ptr %usb_err.i, align 8
  br label %reg_w.exit33

reg_w.exit33:                                     ; preds = %reg_w.exit33.sink.split, %if.end.i30.reg_w.exit33_crit_edge, %reg_w.exit.reg_w.exit33_crit_edge, %if.then5.reg_w.exit33_crit_edge
  %call.i = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 39, i8 noundef zeroext -127) #8
  %call.i.1 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext 55) #8
  %call.i.2 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext 1) #8
  %call.i.3 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 20, i8 noundef zeroext 0) #8
  %call.i.4 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 22, i8 noundef zeroext 0) #8
  %call.i.5 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext 0) #8
  %call.i.6 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 26, i8 noundef zeroext 0) #8
  %call.i.7 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 32, i8 noundef zeroext -127) #8
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp slt i32 %17, 0
  br i1 %cmp.i.i, label %reg_w.exit33.reg_w.exit.i.3.thread162_crit_edge, label %if.end.i.i

reg_w.exit33.reg_w.exit.i.3.thread162_crit_edge:  ; preds = %reg_w.exit33
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.3.thread162

if.end.i.i:                                       ; preds = %reg_w.exit33
  %18 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i.i = shl i32 %21, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 77, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %reg_w.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i) #11
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call3.i.i, ptr %usb_err.i, align 8
  br label %reg_w.exit.i.3.thread162

reg_w.exit.i:                                     ; preds = %if.end.i.i
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr130 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr130)
  %cmp.i.i.1 = icmp slt i32 %.pr130, 0
  br i1 %cmp.i.i.1, label %reg_w.exit.i.reg_w.exit.i.3.thread_crit_edge, label %if.end.i.i.1

reg_w.exit.i.reg_w.exit.i.3.thread_crit_edge:     ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.3.thread

if.end.i.i.1:                                     ; preds = %reg_w.exit.i
  %24 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i.i.1 = shl i32 %27, 8
  %or.i.i.1 = or i32 %shl.i.i.i.1, -2147483648
  %call3.i.i.1 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i.i.1, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 76, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.1)
  %cmp4.i.i.1 = icmp slt i32 %call3.i.i.1, 0
  br i1 %cmp4.i.i.1, label %if.end.i.i.1.reg_w.exit.i.3.thread.sink.split_crit_edge, label %reg_w.exit.i.1

if.end.i.i.1.reg_w.exit.i.3.thread.sink.split_crit_edge: ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.3.thread.sink.split

reg_w.exit.i.1:                                   ; preds = %if.end.i.i.1
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr132.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr132.pr)
  %cmp.i.i.2 = icmp slt i32 %.pr132.pr, 0
  br i1 %cmp.i.i.2, label %reg_w.exit.i.1.reg_w.exit.i.3.thread157_crit_edge, label %if.end.i.i.2

reg_w.exit.i.1.reg_w.exit.i.3.thread157_crit_edge: ; preds = %reg_w.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.3.thread157

if.end.i.i.2:                                     ; preds = %reg_w.exit.i.1
  %29 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i.i.2 = shl i32 %32, 8
  %or.i.i.2 = or i32 %shl.i.i.i.2, -2147483648
  %call3.i.i.2 = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i.i.2, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 78, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.2)
  %cmp4.i.i.2 = icmp slt i32 %call3.i.i.2, 0
  br i1 %cmp4.i.i.2, label %do.end.i.i.2, label %reg_w.exit.i.2

do.end.i.i.2:                                     ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i.2) #11
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call3.i.i.2, ptr %usb_err.i, align 8
  br label %reg_w.exit.i.3.thread157

reg_w.exit.i.2:                                   ; preds = %if.end.i.i.2
  %34 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr134.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr134.pr)
  %cmp.i.i.3 = icmp slt i32 %.pr134.pr, 0
  br i1 %cmp.i.i.3, label %reg_w.exit.i.2.reg_w.exit.i.3.thread_crit_edge, label %if.end.i.i.3

reg_w.exit.i.2.reg_w.exit.i.3.thread_crit_edge:   ; preds = %reg_w.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.3.thread

if.end.i.i.3:                                     ; preds = %reg_w.exit.i.2
  %35 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i.i.3 = shl i32 %38, 8
  %or.i.i.3 = or i32 %shl.i.i.i.3, -2147483648
  %call3.i.i.3 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i.i.3, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 79, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.3)
  %cmp4.i.i.3 = icmp slt i32 %call3.i.i.3, 0
  br i1 %cmp4.i.i.3, label %if.end.i.i.3.reg_w.exit.i.3.thread.sink.split_crit_edge, label %reg_w.exit.i.3

if.end.i.i.3.reg_w.exit.i.3.thread.sink.split_crit_edge: ; preds = %if.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i.3.thread.sink.split

reg_w.exit.i.3.thread.sink.split:                 ; preds = %if.end.i.i.3.reg_w.exit.i.3.thread.sink.split_crit_edge, %if.end.i.i.1.reg_w.exit.i.3.thread.sink.split_crit_edge
  %call3.i.i.1.sink166 = phi i32 [ %call3.i.i.1, %if.end.i.i.1.reg_w.exit.i.3.thread.sink.split_crit_edge ], [ %call3.i.i.3, %if.end.i.i.3.reg_w.exit.i.3.thread.sink.split_crit_edge ]
  %call7.i.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i.1.sink166) #11
  %39 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call3.i.i.1.sink166, ptr %usb_err.i, align 8
  br label %reg_w.exit.i.3.thread

reg_w.exit.i.3.thread:                            ; preds = %reg_w.exit.i.3.thread.sink.split, %reg_w.exit.i.2.reg_w.exit.i.3.thread_crit_edge, %reg_w.exit.i.reg_w.exit.i.3.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i) #8
  br label %bulk_w.exit.thread

reg_w.exit.i.3.thread157:                         ; preds = %do.end.i.i.2, %reg_w.exit.i.1.reg_w.exit.i.3.thread157_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i) #8
  br label %bulk_w.exit.thread

reg_w.exit.i.3.thread162:                         ; preds = %do.end.i.i, %reg_w.exit33.reg_w.exit.i.3.thread162_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i) #8
  br label %bulk_w.exit.thread

reg_w.exit.i.3:                                   ; preds = %if.end.i.i.3
  %40 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr136.pr.pr = load i32, ptr %usb_err.i, align 8
  %41 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i) #8
  %43 = ptrtoint ptr %actual_count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %actual_count.i, align 4, !annotation !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr136.pr.pr)
  %cmp.i46 = icmp slt i32 %.pr136.pr.pr, 0
  br i1 %cmp.i46, label %reg_w.exit.i.3.bulk_w.exit.thread_crit_edge, label %for.cond.preheader.i

reg_w.exit.i.3.bulk_w.exit.thread_crit_edge:      ; preds = %reg_w.exit.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit.thread

for.cond.preheader.i:                             ; preds = %reg_w.exit.i.3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %44 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %45, align 1
  %47 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %47, i32 1
  %48 = call ptr @memset(ptr %arrayidx4.i, i32 0, i32 18)
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %42, align 8
  %shl.i.i47 = shl i32 %50, 8
  %or.i48 = or i32 %shl.i.i47, -1073643520
  %51 = load ptr, ptr %usb_buf.i, align 4
  %call6.i = call i32 @usb_bulk_msg(ptr noundef %42, i32 noundef %or.i48, ptr noundef %51, i32 noundef 19, ptr noundef nonnull %actual_count.i, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end.i49, label %bulk_w.exit

do.end.i49:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i, i32 noundef 3) #11
  %52 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call6.i, ptr %usb_err.i, align 8
  br label %bulk_w.exit.thread

bulk_w.exit.thread:                               ; preds = %do.end.i49, %reg_w.exit.i.3.bulk_w.exit.thread_crit_edge, %reg_w.exit.i.3.thread162, %reg_w.exit.i.3.thread157, %reg_w.exit.i.3.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i) #8
  br label %if.end6

bulk_w.exit:                                      ; preds = %for.cond.preheader.i
  %53 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr126 = load i32, ptr %usb_err.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr126)
  %cmp.i51 = icmp slt i32 %.pr126, 0
  br i1 %cmp.i51, label %bulk_w.exit.if.end6_crit_edge, label %if.end.i57

bulk_w.exit.if.end6_crit_edge:                    ; preds = %bulk_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i57:                                       ; preds = %bulk_w.exit
  %54 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i53 = shl i32 %57, 8
  %or.i54 = or i32 %shl.i.i53, -2147483648
  %call3.i55 = call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or.i54, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 89, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i55)
  %cmp4.i56 = icmp slt i32 %call3.i55, 0
  br i1 %cmp4.i56, label %do.end.i59, label %if.end.i57.if.end6_crit_edge

if.end.i57.if.end6_crit_edge:                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end.i59:                                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i55) #11
  %58 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call3.i55, ptr %usb_err.i, align 8
  br label %if.end6

if.else:                                          ; preds = %if.end
  br i1 %cmp.i, label %if.else.reg_w.exit71_crit_edge, label %if.end.i68

if.else.reg_w.exit71_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit71

if.end.i68:                                       ; preds = %if.else
  %dev1.i63 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %59 = ptrtoint ptr %dev1.i63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev1.i63, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i64 = shl i32 %62, 8
  %or.i65 = or i32 %shl.i.i64, -2147483648
  %call3.i66 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i65, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 33, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i66)
  %cmp4.i67 = icmp slt i32 %call3.i66, 0
  br i1 %cmp4.i67, label %do.end.i70, label %if.end.i68.reg_w.exit71_crit_edge

if.end.i68.reg_w.exit71_crit_edge:                ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit71

do.end.i70:                                       ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i66) #11
  %63 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call3.i66, ptr %usb_err.i, align 8
  br label %reg_w.exit71

reg_w.exit71:                                     ; preds = %do.end.i70, %if.end.i68.reg_w.exit71_crit_edge, %if.else.reg_w.exit71_crit_edge
  %call.i75 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext 117) #8
  %call.i75.1 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 118, i8 noundef zeroext 3) #8
  %call.i75.2 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %64 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i83 = icmp slt i32 %65, 0
  br i1 %cmp.i83, label %reg_w.exit71.reg_r.exit.thread_crit_edge, label %if.end.i89

reg_w.exit71.reg_r.exit.thread_crit_edge:         ; preds = %reg_w.exit71
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit.thread

if.end.i89:                                       ; preds = %reg_w.exit71
  %dev1.i84 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %66 = ptrtoint ptr %dev1.i84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i84, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i85 = shl i32 %69, 8
  %or2.i = or i32 %shl.i.i85, -2147483520
  %usb_buf.i86 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %70 = ptrtoint ptr %usb_buf.i86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usb_buf.i86, align 4
  %call3.i87 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or2.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 123, ptr noundef %71, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i87)
  %cmp4.i88 = icmp slt i32 %call3.i87, 0
  br i1 %cmp4.i88, label %do.end.i91, label %reg_r.exit

do.end.i91:                                       ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i87) #11
  %72 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call3.i87, ptr %usb_err.i, align 8
  br label %reg_r.exit.thread

reg_r.exit.thread:                                ; preds = %do.end.i91, %reg_w.exit71.reg_r.exit.thread_crit_edge
  %dev1.i.i93139 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %reg_w.exit.i111

reg_r.exit:                                       ; preds = %if.end.i89
  %73 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pr138 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr138)
  %cmp.i.i96 = icmp slt i32 %.pr138, 0
  br i1 %cmp.i.i96, label %reg_r.exit.if.end6_crit_edge, label %if.end.i.i105

reg_r.exit.if.end6_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i.i105:                                    ; preds = %reg_r.exit
  %dev1.i.i93 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %74 = ptrtoint ptr %dev1.i.i93 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1.i.i93, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %shl.i.i.i99 = shl i32 %77, 8
  %or.i.i100 = or i32 %shl.i.i.i99, -2147483648
  %call3.i.i103 = tail call i32 @usb_control_msg(ptr noundef %75, i32 noundef %or.i.i100, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 144, i16 noundef zeroext 123, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i103)
  %cmp4.i.i104 = icmp slt i32 %call3.i.i103, 0
  br i1 %cmp4.i.i104, label %do.end.i.i107, label %if.end.i.i105.reg_w.exit.i111_crit_edge

if.end.i.i105.reg_w.exit.i111_crit_edge:          ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit.i111

do.end.i.i107:                                    ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i103) #11
  %78 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call3.i.i103, ptr %usb_err.i, align 8
  br label %if.end6

reg_w.exit.i111:                                  ; preds = %if.end.i.i105.reg_w.exit.i111_crit_edge, %reg_r.exit.thread
  %dev1.i.i93141.ph = phi ptr [ %dev1.i.i93, %if.end.i.i105.reg_w.exit.i111_crit_edge ], [ %dev1.i.i93139, %reg_r.exit.thread ]
  %79 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr142 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr142)
  %cmp.i.i96.1 = icmp slt i32 %.pr142, 0
  br i1 %cmp.i.i96.1, label %reg_w.exit.i111.if.end6_crit_edge, label %if.end.i.i105.1

reg_w.exit.i111.if.end6_crit_edge:                ; preds = %reg_w.exit.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i.i105.1:                                  ; preds = %reg_w.exit.i111
  %80 = ptrtoint ptr %dev1.i.i93141.ph to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev1.i.i93141.ph, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i.i.i99.1 = shl i32 %83, 8
  %or.i.i100.1 = or i32 %shl.i.i.i99.1, -2147483648
  %call3.i.i103.1 = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or.i.i100.1, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 135, i16 noundef zeroext 63, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i103.1)
  %cmp4.i.i104.1 = icmp slt i32 %call3.i.i103.1, 0
  br i1 %cmp4.i.i104.1, label %do.end.i.i107.1, label %if.end.i.i105.1.if.end6_crit_edge

if.end.i.i105.1.if.end6_crit_edge:                ; preds = %if.end.i.i105.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end.i.i107.1:                                  ; preds = %if.end.i.i105.1
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i106.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.i103.1) #11
  %84 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call3.i.i103.1, ptr %usb_err.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %do.end.i.i107.1, %if.end.i.i105.1.if.end6_crit_edge, %reg_w.exit.i111.if.end6_crit_edge, %do.end.i.i107, %reg_r.exit.if.end6_crit_edge, %do.end.i59, %if.end.i57.if.end6_crit_edge, %bulk_w.exit.if.end6_crit_edge, %bulk_w.exit.thread
  %usb_err.i114 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %85 = ptrtoint ptr %usb_err.i114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %usb_err.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i115 = icmp slt i32 %86, 0
  br i1 %cmp.i115, label %if.end6.reg_w.exit124_crit_edge, label %if.end.i121

if.end6.reg_w.exit124_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit124

if.end.i121:                                      ; preds = %if.end6
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %87 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %curr_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not = icmp eq i8 %88, 0
  %dev1.i116 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %89 = ptrtoint ptr %dev1.i116 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev1.i116, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i117 = shl i32 %92, 8
  %or.i118 = or i32 %shl.i.i117, -2147483648
  %conv.i = zext i1 %tobool.not to i16
  %call3.i119 = call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i118, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i119)
  %cmp4.i120 = icmp slt i32 %call3.i119, 0
  br i1 %cmp4.i120, label %do.end.i123, label %if.end.i121.reg_w.exit124_crit_edge

if.end.i121.reg_w.exit124_crit_edge:              ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit124

do.end.i123:                                      ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i119) #11
  %93 = ptrtoint ptr %usb_err.i114 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call3.i119, ptr %usb_err.i114, align 8
  br label %reg_w.exit124

reg_w.exit124:                                    ; preds = %do.end.i123, %if.end.i121.reg_w.exit124_crit_edge, %if.end6.reg_w.exit124_crit_edge
  %94 = ptrtoint ptr %usb_err.i114 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %usb_err.i114, align 8
  br label %cleanup

cleanup:                                          ; preds = %reg_w.exit124, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %95, %reg_w.exit124 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %2 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 47, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #11
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef 0)
  %usb_err.i5 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %9 = ptrtoint ptr %usb_err.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_err.i5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i6 = icmp slt i32 %10, 0
  br i1 %cmp.i6, label %if.end.reg_w.exit15_crit_edge, label %if.end.i12

if.end.reg_w.exit15_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit15

if.end.i12:                                       ; preds = %if.end
  %dev1.i7 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev1.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i7, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i8 = shl i32 %14, 8
  %or.i9 = or i32 %shl.i.i8, -2147483648
  %call3.i10 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i9, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i10)
  %cmp4.i11 = icmp slt i32 %call3.i10, 0
  br i1 %cmp4.i11, label %do.end.i14, label %if.end.i12.reg_w.exit15_crit_edge

if.end.i12.reg_w.exit15_crit_edge:                ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit15

do.end.i14:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i10) #11
  %15 = ptrtoint ptr %usb_err.i5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call3.i10, ptr %usb_err.i5, align 8
  br label %reg_w.exit15

reg_w.exit15:                                     ; preds = %do.end.i14, %if.end.i12.reg_w.exit15_crit_edge, %if.end.reg_w.exit15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_dq_callback(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #8
  %0 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alen, align 4, !annotation !179
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %1 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ag_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp slt i8 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec = add nsw i8 %2, -1
  %3 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %dec, ptr %ag_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %cmp4 = icmp ugt i8 %2, 6
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conv3 = sext i8 %dec to i32
  %4 = zext i32 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %conv3, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb10
    i32 2, label %sw.bb11
    i32 1, label %sw.bb20
    i32 0, label %sw.bb21
  ]

sw.default:                                       ; preds = %if.end7
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %5 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp slt i32 %6, 0
  br i1 %cmp.i, label %sw.default.cleanup_crit_edge, label %if.end.i

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.default
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 125, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #11
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %usb_err.i180 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %12 = ptrtoint ptr %usb_err.i180 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_err.i180, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i181 = icmp slt i32 %13, 0
  br i1 %cmp.i181, label %sw.bb.cleanup_crit_edge, label %if.end.i187

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i187:                                      ; preds = %sw.bb
  %dev1.i182 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev1.i182 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i182, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i183 = shl i32 %17, 8
  %or.i184 = or i32 %shl.i.i183, -2147483648
  %call3.i185 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i184, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 176, i16 noundef zeroext 39, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i185)
  %cmp4.i186 = icmp slt i32 %call3.i185, 0
  br i1 %cmp4.i186, label %do.end.i189, label %if.end.i187.cleanup_crit_edge

if.end.i187.cleanup_crit_edge:                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i189:                                      ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i185) #11
  %18 = ptrtoint ptr %usb_err.i180 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i185, ptr %usb_err.i180, align 8
  br label %cleanup

sw.bb10:                                          ; preds = %if.end7
  %usb_err.i191 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %19 = ptrtoint ptr %usb_err.i191 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err.i191, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i192 = icmp slt i32 %20, 0
  br i1 %cmp.i192, label %sw.bb10.cleanup_crit_edge, label %if.end.i198

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i198:                                      ; preds = %sw.bb10
  %dev1.i193 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %21 = ptrtoint ptr %dev1.i193 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i193, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i194 = shl i32 %24, 8
  %or.i195 = or i32 %shl.i.i194, -2147483648
  %call3.i196 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i195, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 12, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i196)
  %cmp4.i197 = icmp slt i32 %call3.i196, 0
  br i1 %cmp4.i197, label %do.end.i200, label %if.end.i198.cleanup_crit_edge

if.end.i198.cleanup_crit_edge:                    ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i200:                                      ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i196) #11
  %25 = ptrtoint ptr %usb_err.i191 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call3.i196, ptr %usb_err.i191, align 8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end7
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i = shl i32 %29, 8
  %or13 = or i32 %shl.i, -1073676160
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %30 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf, align 4
  %call14 = call i32 @usb_bulk_msg(ptr noundef %27, i32 noundef %or13, ptr noundef %31, i32 noundef 32, ptr noundef nonnull %alen, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call14) #11
  br label %cleanup

sw.bb20:                                          ; preds = %if.end7
  %usb_err.i203 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %32 = ptrtoint ptr %usb_err.i203 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usb_err.i203, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i204 = icmp slt i32 %33, 0
  br i1 %cmp.i204, label %sw.bb20.cleanup_crit_edge, label %if.end.i210

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i210:                                      ; preds = %sw.bb20
  %dev1.i205 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %34 = ptrtoint ptr %dev1.i205 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i205, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i206 = shl i32 %37, 8
  %or.i207 = or i32 %shl.i.i206, -2147483648
  %call3.i208 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i207, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 208, i16 noundef zeroext 39, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i208)
  %cmp4.i209 = icmp slt i32 %call3.i208, 0
  br i1 %cmp4.i209, label %do.end.i212, label %if.end.i210.cleanup_crit_edge

if.end.i210.cleanup_crit_edge:                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i212:                                      ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i208) #11
  %38 = ptrtoint ptr %usb_err.i203 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call3.i208, ptr %usb_err.i203, align 8
  br label %cleanup

sw.bb21:                                          ; preds = %if.end7
  %dev22 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %39 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev22, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i214 = shl i32 %42, 8
  %or26 = or i32 %shl.i214, -1073676160
  %usb_buf27 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %43 = ptrtoint ptr %usb_buf27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf27, align 4
  %call28 = call i32 @usb_bulk_msg(ptr noundef %40, i32 noundef %or26, ptr noundef %44, i32 noundef 32, ptr noundef nonnull %alen, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %if.end37

do.end34:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call28) #11
  br label %cleanup

if.end37:                                         ; preds = %sw.bb21
  %45 = ptrtoint ptr %usb_buf27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb_buf27, align 4
  %arrayidx = getelementptr i8, ptr %46, i32 8
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1
  %conv39 = zext i8 %48 to i32
  %shl = shl nuw nsw i32 %conv39, 8
  %arrayidx41 = getelementptr i8, ptr %46, i32 7
  %49 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %50 to i32
  %add = or i32 %shl, %conv42
  %arrayidx44 = getelementptr i8, ptr %46, i32 11
  %51 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %52 to i32
  %arrayidx49 = getelementptr i8, ptr %46, i32 10
  %53 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %54 to i32
  %arrayidx53 = getelementptr i8, ptr %46, i32 14
  %55 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %56 to i32
  %arrayidx58 = getelementptr i8, ptr %46, i32 13
  %57 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %58 to i32
  %arrayidx62 = getelementptr i8, ptr %46, i32 17
  %59 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %60 to i32
  %arrayidx67 = getelementptr i8, ptr %46, i32 16
  %61 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %62 to i32
  %arrayidx71 = getelementptr i8, ptr %46, i32 20
  %63 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %64 to i32
  %arrayidx76 = getelementptr i8, ptr %46, i32 19
  %65 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %66 to i32
  %arrayidx80 = getelementptr i8, ptr %46, i32 23
  %67 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %68 to i32
  %arrayidx85 = getelementptr i8, ptr %46, i32 22
  %69 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %70 to i32
  %arrayidx89 = getelementptr i8, ptr %46, i32 26
  %71 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %72 to i32
  %arrayidx94 = getelementptr i8, ptr %46, i32 25
  %73 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %74 to i32
  %arrayidx98 = getelementptr i8, ptr %46, i32 29
  %75 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %76 to i32
  %arrayidx103 = getelementptr i8, ptr %46, i32 28
  %77 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %78 to i32
  %reass.add = add nuw nsw i32 %conv54, %conv45
  %reass.add227 = add nuw nsw i32 %reass.add, %conv63
  %reass.add228 = add nuw nsw i32 %reass.add227, %conv72
  %reass.add229 = add nuw nsw i32 %reass.add228, %conv81
  %reass.add230 = add nuw nsw i32 %reass.add229, %conv90
  %reass.add231 = add nuw nsw i32 %reass.add230, %conv99
  %reass.mul = shl nuw nsw i32 %reass.add231, 8
  %add74 = add nuw nsw i32 %add, %conv50
  %add78 = add nuw nsw i32 %add74, %conv59
  %add83 = add nuw nsw i32 %add78, %conv68
  %add87 = add nuw nsw i32 %add83, %conv77
  %add92 = add i32 %add87, %conv86
  %add96 = add i32 %add92, %conv95
  %add101 = add i32 %add96, %conv104
  %add105 = add i32 %add101, %reass.mul
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %79 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %80)
  %cmp106 = icmp eq i32 %80, 640
  %spec.select.v = select i1 %cmp106, i32 32, i32 8
  %spec.select = sdiv i32 %add105, %spec.select.v
  %usb_err.i216 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %81 = ptrtoint ptr %usb_err.i216 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %usb_err.i216, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i217 = icmp slt i32 %82, 0
  br i1 %cmp.i217, label %if.end37.reg_w.exit226_crit_edge, label %if.end.i223

if.end37.reg_w.exit226_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit226

if.end.i223:                                      ; preds = %if.end37
  %83 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev22, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %shl.i.i219 = shl i32 %86, 8
  %or.i220 = or i32 %shl.i.i219, -2147483648
  %call3.i221 = call i32 @usb_control_msg(ptr noundef %84, i32 noundef %or.i220, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 125, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i221)
  %cmp4.i222 = icmp slt i32 %call3.i221, 0
  br i1 %cmp4.i222, label %do.end.i225, label %if.end.i223.reg_w.exit226_crit_edge

if.end.i223.reg_w.exit226_crit_edge:              ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit226

do.end.i225:                                      ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i221) #11
  %87 = ptrtoint ptr %usb_err.i216 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call3.i221, ptr %usb_err.i216, align 8
  br label %reg_w.exit226

reg_w.exit226:                                    ; preds = %do.end.i225, %if.end.i223.reg_w.exit226_crit_edge, %if.end37.reg_w.exit226_crit_edge
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %88 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %exposure, align 4
  %call111 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %89) #8
  %call112 = call i32 @gspca_expo_autogain(ptr noundef %gspca_dev, i32 noundef %spec.select, i32 noundef 60, i32 noundef 6, i32 noundef 2, i32 noundef 70) #8
  %90 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 13, ptr %ag_cnt, align 2
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %91 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %92)
  %cmp115 = icmp eq i8 %92, 1
  br i1 %cmp115, label %if.then117, label %reg_w.exit226.cleanup_crit_edge

reg_w.exit226.cleanup_crit_edge:                  ; preds = %reg_w.exit226
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then117:                                       ; preds = %reg_w.exit226
  %93 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %exposure, align 4
  %call119 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %94) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call111)
  %cmp120 = icmp sgt i32 %call111, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call119)
  %cmp122 = icmp slt i32 %call119, 128
  %or.cond = select i1 %cmp120, i1 %cmp122, i1 false
  br i1 %or.cond, label %if.then117.if.then129_crit_edge, label %lor.lhs.false

if.then117.if.then129_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

lor.lhs.false:                                    ; preds = %if.then117
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call111)
  %cmp124 = icmp slt i32 %call111, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call119)
  %cmp127 = icmp sgt i32 %call119, 127
  %or.cond179 = select i1 %cmp124, i1 %cmp127, i1 false
  br i1 %or.cond179, label %lor.lhs.false.if.then129_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.then129_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then129

if.then129:                                       ; preds = %lor.lhs.false.if.then129_crit_edge, %if.then117.if.then129_crit_edge
  call fastcc void @setframerate(ptr noundef %gspca_dev, i32 noundef %call119)
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %lor.lhs.false.cleanup_crit_edge, %reg_w.exit226.cleanup_crit_edge, %do.end34, %do.end.i212, %if.end.i210.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %do.end, %sw.bb11.cleanup_crit_edge, %do.end.i200, %if.end.i198.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %do.end.i189, %if.end.i187.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end.i, %if.end.i.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_get_jcomp(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef writeonly %jcomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memset(ptr %jcomp, i32 0, i32 140)
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %3 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jpegqual, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %4) #8
  %5 = ptrtoint ptr %jcomp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %jcomp, align 4
  %jpeg_markers = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %jcomp, i32 0, i32 6
  %6 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %jpeg_markers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_set_jcomp(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %jcomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jpegqual, align 8
  %4 = ptrtoint ptr %jcomp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jcomp, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #8
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %3, i32 noundef %5) #8
  %10 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sd_get_streamparm(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef writeonly %parm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %timeperframe, align 4
  %bridge.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %1 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bridge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i = icmp eq i8 %2, 0
  %framerate.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %3 = ptrtoint ptr %framerate.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %framerate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %4)
  %cmp6.not.i = icmp ult i8 %4, 30
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %entry
  br i1 %cmp6.not.i, label %for.inc27.i, label %land.lhs.true33.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp6.not.i, label %for.inc.i, label %land.lhs.true.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %4)
  %cmp6.not.1.i = icmp ult i8 %4, 20
  br i1 %cmp6.not.1.i, label %for.inc.1.i, label %for.inc.i.get_fr_idx.exit_crit_edge

for.inc.i.get_fr_idx.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp6.not.2.i = icmp ult i8 %4, 15
  br i1 %cmp6.not.2.i, label %for.inc.2.i, label %for.inc.1.i.get_fr_idx.exit_crit_edge

for.inc.1.i.get_fr_idx.exit_crit_edge:            ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp6.not.3.i = icmp ult i8 %4, 10
  br i1 %cmp6.not.3.i, label %for.inc.3.i, label %for.inc.2.i.get_fr_idx.exit_crit_edge

for.inc.2.i.get_fr_idx.exit_crit_edge:            ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp6.not.4.i = icmp ult i8 %4, 7
  br i1 %cmp6.not.4.i, label %for.inc.3.i.if.else10_crit_edge, label %for.inc.3.i.get_fr_idx.exit_crit_edge

for.inc.3.i.get_fr_idx.exit_crit_edge:            ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit

for.inc.3.i.if.else10_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else10

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %pixfmt.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %5 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixfmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %6)
  %cmp11.i = icmp eq i32 %6, 640
  %spec.select.i.neg = select i1 %cmp11.i, i32 -5, i32 -6
  br label %get_fr_idx.exit

for.inc27.i:                                      ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp23.not.1.i = icmp ult i8 %4, 15
  br i1 %cmp23.not.1.i, label %for.inc27.1.i, label %for.inc27.i.for.end29.thread.i_crit_edge

for.inc27.i.for.end29.thread.i_crit_edge:         ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.1.i:                                    ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp23.not.2.i = icmp ult i8 %4, 10
  br i1 %cmp23.not.2.i, label %for.inc27.2.i, label %for.inc27.1.i.for.end29.thread.i_crit_edge

for.inc27.1.i.for.end29.thread.i_crit_edge:       ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.2.i:                                    ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp23.not.3.i = icmp ult i8 %4, 7
  br i1 %cmp23.not.3.i, label %for.inc27.2.i.if.else_crit_edge, label %for.inc27.2.i.for.end29.thread.i_crit_edge

for.inc27.2.i.for.end29.thread.i_crit_edge:       ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.2.i.if.else_crit_edge:                  ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.end29.thread.i:                               ; preds = %for.inc27.2.i.for.end29.thread.i_crit_edge, %for.inc27.1.i.for.end29.thread.i_crit_edge, %for.inc27.i.for.end29.thread.i_crit_edge
  %i.163.lcssa.ph.i = phi i32 [ 4, %for.inc27.2.i.for.end29.thread.i_crit_edge ], [ 5, %for.inc27.1.i.for.end29.thread.i_crit_edge ], [ 6, %for.inc27.i.for.end29.thread.i_crit_edge ]
  br label %if.else

land.lhs.true33.i:                                ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %pixfmt34.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %7 = ptrtoint ptr %pixfmt34.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixfmt34.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %8)
  %cmp36.i = icmp eq i32 %8, 640
  %spec.select56.i = select i1 %cmp36.i, i32 6, i32 7
  br label %if.else

get_fr_idx.exit:                                  ; preds = %land.lhs.true.i, %for.inc.3.i.get_fr_idx.exit_crit_edge, %for.inc.2.i.get_fr_idx.exit_crit_edge, %for.inc.1.i.get_fr_idx.exit_crit_edge, %for.inc.i.get_fr_idx.exit_crit_edge
  %i.3.i.neg = phi i32 [ %spec.select.i.neg, %land.lhs.true.i ], [ -2, %for.inc.3.i.get_fr_idx.exit_crit_edge ], [ -3, %for.inc.2.i.get_fr_idx.exit_crit_edge ], [ -4, %for.inc.1.i.get_fr_idx.exit_crit_edge ], [ -5, %for.inc.i.get_fr_idx.exit_crit_edge ]
  br label %if.else10

if.else:                                          ; preds = %land.lhs.true33.i, %for.end29.thread.i, %for.inc27.2.i.if.else_crit_edge
  %i.2.i = phi i32 [ %spec.select56.i, %land.lhs.true33.i ], [ 3, %for.inc27.2.i.if.else_crit_edge ], [ %i.163.lcssa.ph.i, %for.end29.thread.i ]
  %sub7 = xor i32 %i.2.i, 7
  %arrayidx8 = getelementptr [5 x i8], ptr @rates_6810, i32 0, i32 %sub7
  br label %if.end14

if.else10:                                        ; preds = %get_fr_idx.exit, %for.inc.3.i.if.else10_crit_edge
  %i.3.i23.neg = phi i32 [ %i.3.i.neg, %get_fr_idx.exit ], [ -1, %for.inc.3.i.if.else10_crit_edge ]
  %sub11 = add nsw i32 %i.3.i23.neg, 6
  %arrayidx12 = getelementptr [6 x i8], ptr @rates, i32 0, i32 %sub11
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.else
  %fr.0.in.in = phi ptr [ %arrayidx8, %if.else ], [ %arrayidx12, %if.else10 ]
  %9 = ptrtoint ptr %fr.0.in.in to i32
  call void @__asan_load1_noabort(i32 %9)
  %fr.0.in = load i8, ptr %fr.0.in.in, align 1
  %fr.0 = zext i8 %fr.0.in to i32
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %fr.0, ptr %denominator, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_set_streamparm(ptr nocapture noundef %gspca_dev, ptr nocapture noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeperframe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %lor.lhs.false.if.end_crit_edge, label %if.else

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %3, %1
  %conv = trunc i32 %div to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.sink = phi i8 [ %conv, %if.else ], [ 30, %lor.lhs.false.if.end_crit_edge ], [ 30, %entry.if.end_crit_edge ]
  %framerate5 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %4 = ptrtoint ptr %framerate5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.sink, ptr %framerate5, align 4
  %streaming = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 17
  %5 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %streaming, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %exposure, align 4
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %8) #8
  tail call fastcc void @setframerate(ptr noundef %gspca_dev, i32 noundef %call)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %bridge.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %9 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bridge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  %framerate.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %11 = ptrtoint ptr %framerate.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %framerate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %12)
  %cmp6.not.i = icmp ult i8 %12, 30
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %if.end7
  br i1 %cmp6.not.i, label %for.inc27.i, label %land.lhs.true33.i

for.cond.preheader.i:                             ; preds = %if.end7
  br i1 %cmp6.not.i, label %for.inc.i, label %land.lhs.true.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %12)
  %cmp6.not.1.i = icmp ult i8 %12, 20
  br i1 %cmp6.not.1.i, label %for.inc.1.i, label %for.inc.i.get_fr_idx.exit.thread37_crit_edge

for.inc.i.get_fr_idx.exit.thread37_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit.thread37

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %12)
  %cmp6.not.2.i = icmp ult i8 %12, 15
  br i1 %cmp6.not.2.i, label %for.inc.2.i, label %for.inc.1.i.get_fr_idx.exit.thread37_crit_edge

for.inc.1.i.get_fr_idx.exit.thread37_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit.thread37

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp6.not.3.i = icmp ult i8 %12, 10
  br i1 %cmp6.not.3.i, label %for.inc.3.i, label %for.inc.2.i.get_fr_idx.exit.thread37_crit_edge

for.inc.2.i.get_fr_idx.exit.thread37_crit_edge:   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit.thread37

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp6.not.4.i = icmp ult i8 %12, 7
  br i1 %cmp6.not.4.i, label %for.inc.3.i.if.else13_crit_edge, label %for.inc.3.i.get_fr_idx.exit.thread37_crit_edge

for.inc.3.i.get_fr_idx.exit.thread37_crit_edge:   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit.thread37

for.inc.3.i.if.else13_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %pixfmt.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %13 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixfmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %14)
  %cmp11.i = icmp eq i32 %14, 640
  %spec.select.i = select i1 %cmp11.i, i32 5, i32 6
  br label %get_fr_idx.exit

for.inc27.i:                                      ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %12)
  %cmp23.not.1.i = icmp ult i8 %12, 15
  br i1 %cmp23.not.1.i, label %for.inc27.1.i, label %for.inc27.i.for.end29.thread.i_crit_edge

for.inc27.i.for.end29.thread.i_crit_edge:         ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.1.i:                                    ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp23.not.2.i = icmp ult i8 %12, 10
  br i1 %cmp23.not.2.i, label %for.inc27.2.i, label %for.inc27.1.i.for.end29.thread.i_crit_edge

for.inc27.1.i.for.end29.thread.i_crit_edge:       ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.2.i:                                    ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp23.not.3.i = icmp ult i8 %12, 7
  br i1 %cmp23.not.3.i, label %for.inc27.2.i.if.end39.i_crit_edge, label %for.inc27.2.i.for.end29.thread.i_crit_edge

for.inc27.2.i.for.end29.thread.i_crit_edge:       ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.2.i.if.end39.i_crit_edge:               ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

for.end29.thread.i:                               ; preds = %for.inc27.2.i.for.end29.thread.i_crit_edge, %for.inc27.1.i.for.end29.thread.i_crit_edge, %for.inc27.i.for.end29.thread.i_crit_edge
  %i.163.lcssa.ph.i = phi i32 [ 4, %for.inc27.2.i.for.end29.thread.i_crit_edge ], [ 5, %for.inc27.1.i.for.end29.thread.i_crit_edge ], [ 6, %for.inc27.i.for.end29.thread.i_crit_edge ]
  br label %if.end39.i

land.lhs.true33.i:                                ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %pixfmt34.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %15 = ptrtoint ptr %pixfmt34.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixfmt34.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %16)
  %cmp36.i = icmp eq i32 %16, 640
  %spec.select56.i = select i1 %cmp36.i, i32 6, i32 7
  br label %if.end39.i

if.end39.i:                                       ; preds = %land.lhs.true33.i, %for.end29.thread.i, %for.inc27.2.i.if.end39.i_crit_edge
  %i.2.i = phi i32 [ %spec.select56.i, %land.lhs.true33.i ], [ 3, %for.inc27.2.i.if.end39.i_crit_edge ], [ %i.163.lcssa.ph.i, %for.end29.thread.i ]
  %or.i = or i32 %i.2.i, 128
  br label %get_fr_idx.exit

get_fr_idx.exit.thread37:                         ; preds = %for.inc.3.i.get_fr_idx.exit.thread37_crit_edge, %for.inc.2.i.get_fr_idx.exit.thread37_crit_edge, %for.inc.1.i.get_fr_idx.exit.thread37_crit_edge, %for.inc.i.get_fr_idx.exit.thread37_crit_edge
  %i.3.i.ph = phi i32 [ 5, %for.inc.i.get_fr_idx.exit.thread37_crit_edge ], [ 4, %for.inc.1.i.get_fr_idx.exit.thread37_crit_edge ], [ 3, %for.inc.2.i.get_fr_idx.exit.thread37_crit_edge ], [ 2, %for.inc.3.i.get_fr_idx.exit.thread37_crit_edge ]
  br label %if.else13

get_fr_idx.exit:                                  ; preds = %if.end39.i, %land.lhs.true.i
  %i.3.i = phi i32 [ %or.i, %if.end39.i ], [ %spec.select.i, %land.lhs.true.i ]
  %and = and i32 %i.3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %get_fr_idx.exit.if.else13_crit_edge, label %if.then10

get_fr_idx.exit.if.else13_crit_edge:              ; preds = %get_fr_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else13

if.then10:                                        ; preds = %get_fr_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and11 = and i32 %i.3.i, 7
  %sub = xor i32 %and11, 7
  %arrayidx = getelementptr [5 x i8], ptr @rates_6810, i32 0, i32 %sub
  br label %if.end17

if.else13:                                        ; preds = %get_fr_idx.exit.if.else13_crit_edge, %get_fr_idx.exit.thread37, %for.inc.3.i.if.else13_crit_edge
  %i.3.i36 = phi i32 [ %i.3.i, %get_fr_idx.exit.if.else13_crit_edge ], [ 1, %for.inc.3.i.if.else13_crit_edge ], [ %i.3.i.ph, %get_fr_idx.exit.thread37 ]
  %sub14 = sub nsw i32 6, %i.3.i36
  %arrayidx15 = getelementptr [6 x i8], ptr @rates, i32 0, i32 %sub14
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.then10
  %fr.0.in.in = phi ptr [ %arrayidx, %if.then10 ], [ %arrayidx15, %if.else13 ]
  %17 = ptrtoint ptr %fr.0.in.in to i32
  call void @__asan_load1_noabort(i32 %17)
  %fr.0.in = load i8, ptr %fr.0.in.in, align 1
  %fr.0 = zext i8 %fr.0.in to i32
  %18 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %timeperframe, align 4
  %denominator19 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %denominator19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %fr.0, ptr %denominator19, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_dqt(ptr noundef %gspca_dev, i8 noundef zeroext %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %quality = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %1 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %quality, align 1
  %conv = zext i8 %2 to i32
  %conv2 = zext i8 %q to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %quality5 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %3 = ptrtoint ptr %quality5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %q, ptr %quality5, align 1
  %4 = tail call i8 @llvm.umin.i8(i8 %q, i8 16)
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp12 = icmp eq i8 %6, 1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end4
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [17 x i8], ptr @jpeg_q, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = add nsw i32 %idxprom, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp1.i = icmp ult i32 %9, 10
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %div31.rhs.trunc.i = zext i8 %8 to i16
  %div3132.i = udiv i16 5000, %div31.rhs.trunc.i
  %div31.zext.i = zext i16 %div3132.i to i32
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = zext i8 %8 to i32
  %mul.neg.i = mul nsw i32 %conv16, -2
  %sub.i = add nsw i32 %mul.neg.i, 200
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i
  %sc.0.i = phi i32 [ %div31.zext.i, %if.then2.i ], [ %sub.i, %if.else3.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i
  %i.033.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.033.i, 7
  %arrayidx.i = getelementptr [521 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %mul6.i = mul nsw i32 %sc.0.i, %conv.i
  %add7.i = add nsw i32 %mul6.i, 50
  %div8.i = sdiv i32 %add7.i, 100
  %conv9.i = trunc i32 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.033.i, 72
  %arrayidx13.i = getelementptr [521 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %13 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %14 to i32
  %mul15.i = mul nsw i32 %sc.0.i, %conv14.i
  %add16.i = add nsw i32 %mul15.i, 50
  %div17.i = sdiv i32 %add16.i, 100
  %conv18.i = trunc i32 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %15 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.body.i.if.end22_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end22_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 11, i32 6
  %idxprom19 = zext i8 %4 to i32
  %arrayidx20 = getelementptr [17 x [130 x i8]], ptr @DQT, i32 0, i32 %idxprom19
  %16 = call ptr @memcpy(ptr %arrayidx18, ptr %arrayidx20, i32 130)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %for.body.i.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %index, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %conv = zext i8 %value to i16
  %conv2 = zext i8 %index to i16
  %call3 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext %conv2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3) #11
  %6 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_w(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %index, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit47_crit_edge, label %if.end.i

entry.reg_w.exit47_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.reg_w.exit47.sink.split_crit_edge, label %reg_w.exit

if.end.i.reg_w.exit47.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i15 = icmp slt i32 %.pr, 0
  br i1 %cmp.i15, label %reg_w.exit.reg_w.exit47_crit_edge, label %if.end.i21

reg_w.exit.reg_w.exit47_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47

if.end.i21:                                       ; preds = %reg_w.exit
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i17 = shl i32 %10, 8
  %or.i18 = or i32 %shl.i.i17, -2147483648
  %conv.i = zext i8 %index to i16
  %call3.i19 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i18, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 25, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i19)
  %cmp4.i20 = icmp slt i32 %call3.i19, 0
  br i1 %cmp4.i20, label %if.end.i21.reg_w.exit47.sink.split_crit_edge, label %reg_w.exit24

if.end.i21.reg_w.exit47.sink.split_crit_edge:     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47.sink.split

reg_w.exit24:                                     ; preds = %if.end.i21
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr69.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr69.pr)
  %cmp.i26 = icmp slt i32 %.pr69.pr, 0
  br i1 %cmp.i26, label %reg_w.exit24.reg_w.exit47_crit_edge, label %if.end.i33

reg_w.exit24.reg_w.exit47_crit_edge:              ; preds = %reg_w.exit24
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47

if.end.i33:                                       ; preds = %reg_w.exit24
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i28 = shl i32 %15, 8
  %or.i29 = or i32 %shl.i.i28, -2147483648
  %conv.i30 = zext i8 %value to i16
  %call3.i31 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i29, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i30, i16 noundef zeroext 19, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i31)
  %cmp4.i32 = icmp slt i32 %call3.i31, 0
  br i1 %cmp4.i32, label %if.end.i33.reg_w.exit47.sink.split_crit_edge, label %reg_w.exit36

if.end.i33.reg_w.exit47.sink.split_crit_edge:     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47.sink.split

reg_w.exit36:                                     ; preds = %if.end.i33
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr71.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr71.pr)
  %cmp.i38 = icmp slt i32 %.pr71.pr, 0
  br i1 %cmp.i38, label %reg_w.exit36.reg_w.exit47_crit_edge, label %if.end.i44

reg_w.exit36.reg_w.exit47_crit_edge:              ; preds = %reg_w.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47

if.end.i44:                                       ; preds = %reg_w.exit36
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i40 = shl i32 %20, 8
  %or.i41 = or i32 %shl.i.i40, -2147483648
  %call3.i42 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i41, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i42)
  %cmp4.i43 = icmp slt i32 %call3.i42, 0
  br i1 %cmp4.i43, label %if.end.i44.reg_w.exit47.sink.split_crit_edge, label %if.end.i44.reg_w.exit47_crit_edge

if.end.i44.reg_w.exit47_crit_edge:                ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47

if.end.i44.reg_w.exit47.sink.split_crit_edge:     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47.sink.split

reg_w.exit47.sink.split:                          ; preds = %if.end.i44.reg_w.exit47.sink.split_crit_edge, %if.end.i33.reg_w.exit47.sink.split_crit_edge, %if.end.i21.reg_w.exit47.sink.split_crit_edge, %if.end.i.reg_w.exit47.sink.split_crit_edge
  %call3.i19.sink83 = phi i32 [ %call3.i, %if.end.i.reg_w.exit47.sink.split_crit_edge ], [ %call3.i19, %if.end.i21.reg_w.exit47.sink.split_crit_edge ], [ %call3.i31, %if.end.i33.reg_w.exit47.sink.split_crit_edge ], [ %call3.i42, %if.end.i44.reg_w.exit47.sink.split_crit_edge ]
  %call7.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i19.sink83) #11
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call3.i19.sink83, ptr %usb_err.i, align 8
  br label %reg_w.exit47

reg_w.exit47:                                     ; preds = %reg_w.exit47.sink.split, %if.end.i44.reg_w.exit47_crit_edge, %reg_w.exit36.reg_w.exit47_crit_edge, %reg_w.exit24.reg_w.exit47_crit_edge, %reg_w.exit.reg_w.exit47_crit_edge, %entry.reg_w.exit47_crit_edge
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %22 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  br i1 %cmp, label %reg_w.exit47.cleanup_crit_edge, label %if.end

reg_w.exit47.cleanup_crit_edge:                   ; preds = %reg_w.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %reg_w.exit47
  tail call void @msleep(i32 noundef 5) #8
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i49 = icmp slt i32 %25, 0
  br i1 %cmp.i49, label %if.end.reg_r.exit_crit_edge, label %if.end.i54

if.end.reg_r.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit

if.end.i54:                                       ; preds = %if.end
  %dev1.i50 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev1.i50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i50, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i51 = shl i32 %29, 8
  %or2.i = or i32 %shl.i.i51, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %30 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i, align 4
  %call3.i52 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or2.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i52)
  %cmp4.i53 = icmp slt i32 %call3.i52, 0
  br i1 %cmp4.i53, label %do.end.i56, label %if.end.i54.reg_r.exit_crit_edge

if.end.i54.reg_r.exit_crit_edge:                  ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit

do.end.i56:                                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i52) #11
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call3.i52, ptr %usb_err.i, align 8
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i56, %if.end.i54.reg_r.exit_crit_edge, %if.end.reg_r.exit_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %33 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp3 = icmp eq i8 %36, 0
  br i1 %cmp3, label %reg_r.exit.cleanup_crit_edge, label %if.end6

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %reg_r.exit
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i58 = icmp slt i32 %38, 0
  br i1 %cmp.i58, label %if.end6.cleanup_crit_edge, label %if.end.i64

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i64:                                       ; preds = %if.end6
  %dev1.i59 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %39 = ptrtoint ptr %dev1.i59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1.i59, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i60 = shl i32 %42, 8
  %or.i61 = or i32 %shl.i.i60, -2147483648
  %call3.i62 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i61, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i62)
  %cmp4.i63 = icmp slt i32 %call3.i62, 0
  br i1 %cmp4.i63, label %do.end.i66, label %if.end.i64.cleanup_crit_edge

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i66:                                       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i62) #11
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call3.i62, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i66, %if.end.i64.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %reg_r.exit.cleanup_crit_edge, %reg_w.exit47.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %reg_w.exit47.cleanup_crit_edge ], [ 0, %reg_r.exit.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ -1, %if.end.i64.cleanup_crit_edge ], [ -1, %do.end.i66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_r(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %index, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit39_crit_edge, label %if.end.i

entry.reg_w.exit39_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit39

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %index to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 25, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.reg_w.exit39.sink.split_crit_edge, label %reg_w.exit

if.end.i.reg_w.exit39.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit39.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i30 = icmp slt i32 %.pr, 0
  br i1 %cmp.i30, label %reg_w.exit.reg_w.exit39_crit_edge, label %if.end.i36

reg_w.exit.reg_w.exit39_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit39

if.end.i36:                                       ; preds = %reg_w.exit
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i32 = shl i32 %10, 8
  %or.i33 = or i32 %shl.i.i32, -2147483648
  %call3.i34 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i33, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i34)
  %cmp4.i35 = icmp slt i32 %call3.i34, 0
  br i1 %cmp4.i35, label %if.end.i36.reg_w.exit39.sink.split_crit_edge, label %if.end.i36.reg_w.exit39_crit_edge

if.end.i36.reg_w.exit39_crit_edge:                ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit39

if.end.i36.reg_w.exit39.sink.split_crit_edge:     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit39.sink.split

reg_w.exit39.sink.split:                          ; preds = %if.end.i36.reg_w.exit39.sink.split_crit_edge, %if.end.i.reg_w.exit39.sink.split_crit_edge
  %call3.i.sink85 = phi i32 [ %call3.i, %if.end.i.reg_w.exit39.sink.split_crit_edge ], [ %call3.i34, %if.end.i36.reg_w.exit39.sink.split_crit_edge ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.sink85) #11
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call3.i.sink85, ptr %usb_err.i, align 8
  br label %reg_w.exit39

reg_w.exit39:                                     ; preds = %reg_w.exit39.sink.split, %if.end.i36.reg_w.exit39_crit_edge, %reg_w.exit.reg_w.exit39_crit_edge, %entry.reg_w.exit39_crit_edge
  tail call void @msleep(i32 noundef 5) #8
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i41 = icmp slt i32 %13, 0
  br i1 %cmp.i41, label %reg_w.exit39.reg_r.exit_crit_edge, label %if.end.i46

reg_w.exit39.reg_r.exit_crit_edge:                ; preds = %reg_w.exit39
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit

if.end.i46:                                       ; preds = %reg_w.exit39
  %dev1.i42 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev1.i42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i42, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i43 = shl i32 %17, 8
  %or2.i = or i32 %shl.i.i43, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %call3.i44 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or2.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef %19, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i44)
  %cmp4.i45 = icmp slt i32 %call3.i44, 0
  br i1 %cmp4.i45, label %do.end.i48, label %if.end.i46.reg_r.exit_crit_edge

if.end.i46.reg_r.exit_crit_edge:                  ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit

do.end.i48:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i44) #11
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call3.i44, ptr %usb_err.i, align 8
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i48, %if.end.i46.reg_r.exit_crit_edge, %reg_w.exit39.reg_r.exit_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %21 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv = zext i8 %24 to i32
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %25 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  br i1 %cmp, label %reg_r.exit.cleanup_crit_edge, label %if.end

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp3 = icmp sgt i32 %len, 1
  br i1 %cmp3, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i50 = icmp slt i32 %28, 0
  br i1 %cmp.i50, label %if.then5.reg_r.exit60_crit_edge, label %if.end.i57

if.then5.reg_r.exit60_crit_edge:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit60

if.end.i57:                                       ; preds = %if.then5
  %dev1.i51 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %29 = ptrtoint ptr %dev1.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1.i51, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i52 = shl i32 %32, 8
  %or2.i53 = or i32 %shl.i.i52, -2147483520
  %call3.i55 = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or2.i53, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 27, ptr noundef %22, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i55)
  %cmp4.i56 = icmp slt i32 %call3.i55, 0
  br i1 %cmp4.i56, label %do.end.i59, label %if.end.i57.reg_r.exit60_crit_edge

if.end.i57.reg_r.exit60_crit_edge:                ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit60

do.end.i59:                                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i55) #11
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call3.i55, ptr %usb_err.i, align 8
  br label %reg_r.exit60

reg_r.exit60:                                     ; preds = %do.end.i59, %if.end.i57.reg_r.exit60_crit_edge, %if.then5.reg_r.exit60_crit_edge
  %34 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv8 = zext i8 %37 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %or = or i32 %shl, %conv
  br label %if.end9

if.end9:                                          ; preds = %reg_r.exit60, %if.end.if.end9_crit_edge
  %v.0 = phi i32 [ %or, %reg_r.exit60 ], [ %conv, %if.end.if.end9_crit_edge ]
  %38 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i62 = icmp slt i32 %39, 0
  br i1 %cmp.i62, label %if.end9.reg_r.exit72_crit_edge, label %if.end.i69

if.end9.reg_r.exit72_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit72

if.end.i69:                                       ; preds = %if.end9
  %dev1.i63 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %40 = ptrtoint ptr %dev1.i63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i63, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i64 = shl i32 %43, 8
  %or2.i65 = or i32 %shl.i.i64, -2147483520
  %44 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf, align 4
  %call3.i67 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or2.i65, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %45, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i67)
  %cmp4.i68 = icmp slt i32 %call3.i67, 0
  br i1 %cmp4.i68, label %do.end.i71, label %if.end.i69.reg_r.exit72_crit_edge

if.end.i69.reg_r.exit72_crit_edge:                ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_r.exit72

do.end.i71:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i67) #11
  %46 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call3.i67, ptr %usb_err.i, align 8
  br label %reg_r.exit72

reg_r.exit72:                                     ; preds = %do.end.i71, %if.end.i69.reg_r.exit72_crit_edge, %if.end9.reg_r.exit72_crit_edge
  %47 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp13 = icmp eq i8 %50, 0
  br i1 %cmp13, label %reg_r.exit72.cleanup_crit_edge, label %if.end16

reg_r.exit72.cleanup_crit_edge:                   ; preds = %reg_r.exit72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %reg_r.exit72
  %51 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i74 = icmp slt i32 %52, 0
  br i1 %cmp.i74, label %if.end16.cleanup_crit_edge, label %if.end.i80

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i80:                                       ; preds = %if.end16
  %dev1.i75 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %53 = ptrtoint ptr %dev1.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i75, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i76 = shl i32 %56, 8
  %or.i77 = or i32 %shl.i.i76, -2147483648
  %call3.i78 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i77, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i78)
  %cmp4.i79 = icmp slt i32 %call3.i78, 0
  br i1 %cmp4.i79, label %do.end.i82, label %if.end.i80.cleanup_crit_edge

if.end.i80.cleanup_crit_edge:                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i82:                                       ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i78) #11
  %57 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call3.i78, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i82, %if.end.i80.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %reg_r.exit72.cleanup_crit_edge, %reg_r.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %reg_r.exit.cleanup_crit_edge ], [ %v.0, %reg_r.exit72.cleanup_crit_edge ], [ -1, %if.end16.cleanup_crit_edge ], [ -1, %if.end.i80.cleanup_crit_edge ], [ -1, %do.end.i82 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %4 = load i8, ptr %streaming, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963803, label %sw.bb
    i32 9963792, label %sw.bb1
    i32 9963791, label %sw.bb3
    i32 9963790, label %sw.bb5
    i32 9963793, label %sw.bb7
    i32 9963794, label %sw.bb8
    i32 10291459, label %sw.bb14
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  tail call fastcc void @setsharpness(ptr noundef %add.ptr, i32 noundef %9)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val2, align 4
  tail call fastcc void @setgamma(ptr noundef %add.ptr, i32 noundef %11)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val4, align 4
  %14 = lshr i32 %13, 8
  %conv.i = trunc i32 %14 to i8
  %call.i = tail call fastcc i32 @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 27, i8 noundef zeroext %conv.i) #8
  %conv1.i = trunc i32 %13 to i8
  %call2.i = tail call fastcc i32 @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 26, i8 noundef zeroext %conv1.i) #8
  %call3.i = tail call fastcc i32 @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 32, i8 noundef zeroext -128) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val6, align 4
  %17 = lshr i32 %16, 8
  %conv.i34 = trunc i32 %17 to i8
  %call.i35 = tail call fastcc i32 @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 25, i8 noundef zeroext %conv.i34) #8
  %conv1.i36 = trunc i32 %16 to i8
  %call2.i37 = tail call fastcc i32 @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 24, i8 noundef zeroext %conv1.i36) #8
  %call3.i38 = tail call fastcc i32 @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 32, i8 noundef zeroext -128) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sd_setgain(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %18 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sd_setgain(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %jpeg_hdr = getelementptr i8, ptr %1, i32 1049
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp slt i32 %21, 1
  br i1 %cmp.i, label %sw.bb14.if.end4.i_crit_edge, label %if.else.i

sw.bb14.if.end4.i_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.else.i:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %21)
  %cmp1.i = icmp ult i32 %21, 50
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %div31.rhs.trunc.i = trunc i32 %21 to i16
  %div3132.i = udiv i16 5000, %div31.rhs.trunc.i
  %div31.zext.i = zext i16 %div3132.i to i32
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.neg.i = mul i32 %21, -2
  %sub.i = add i32 %mul.neg.i, 200
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i, %sw.bb14.if.end4.i_crit_edge
  %sc.0.i = phi i32 [ %div31.zext.i, %if.then2.i ], [ %sub.i, %if.else3.i ], [ 5000, %sw.bb14.if.end4.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i
  %i.033.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.033.i, 7
  %arrayidx.i = getelementptr [521 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i39 = zext i8 %23 to i32
  %mul6.i = mul i32 %sc.0.i, %conv.i39
  %add7.i = add i32 %mul6.i, 50
  %div8.i = sdiv i32 %add7.i, 100
  %conv9.i = trunc i32 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.033.i, 72
  %arrayidx13.i = getelementptr [521 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %26 to i32
  %mul15.i = mul i32 %sc.0.i, %conv14.i
  %add16.i = add i32 %mul15.i, 50
  %div17.i = sdiv i32 %add16.i, 100
  %conv18.i = trunc i32 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i.sw.epilog_crit_edge, %if.end12, %sw.bb8.sw.epilog_crit_edge, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %if.end.sw.epilog_crit_edge
  %28 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setsharpness(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %2 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %3)
  %cmp2 = icmp eq i32 %3, 640
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %or = or i32 %val, 8
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.then4.if.end_crit_edge, label %if.end.i

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then4
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #11
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or5 = or i32 %val, 12
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end.i, %if.end.i.if.end_crit_edge, %if.then4.if.end_crit_edge
  %val.addr.0 = phi i32 [ %or5, %if.else ], [ %or, %if.then4.if.end_crit_edge ], [ %or, %if.end.i.if.end_crit_edge ], [ %or, %do.end.i ]
  %usb_err.i19 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %11 = ptrtoint ptr %usb_err.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb_err.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i20 = icmp slt i32 %12, 0
  br i1 %cmp.i20, label %if.end.if.end10_crit_edge, label %if.end.i26

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i26:                                       ; preds = %if.end
  %dev1.i21 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %13 = ptrtoint ptr %dev1.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i21, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i22 = shl i32 %16, 8
  %or.i23 = or i32 %shl.i.i22, -2147483648
  %17 = trunc i32 %val.addr.0 to i16
  %conv.i = and i16 %17, 255
  %call3.i24 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i23, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 93, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i24)
  %cmp4.i25 = icmp slt i32 %call3.i24, 0
  br i1 %cmp4.i25, label %do.end.i28, label %if.end.i26.if.end10_crit_edge

if.end.i26.if.end10_crit_edge:                    ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end.i28:                                       ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i24) #11
  %18 = ptrtoint ptr %usb_err.i19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i24, ptr %usb_err.i19, align 8
  br label %if.end10

if.else7:                                         ; preds = %entry
  %usb_err.i30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %19 = ptrtoint ptr %usb_err.i30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err.i30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i31 = icmp slt i32 %20, 0
  br i1 %cmp.i31, label %if.else7.if.end10_crit_edge, label %if.end.i38

if.else7.if.end10_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i38:                                       ; preds = %if.else7
  %val.tr = trunc i32 %val to i8
  %21 = shl i8 %val.tr, 5
  %conv9 = or i8 %21, 8
  %dev1.i32 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %22 = ptrtoint ptr %dev1.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i32, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i33 = shl i32 %25, 8
  %or.i34 = or i32 %shl.i.i33, -2147483648
  %conv.i35 = zext i8 %conv9 to i16
  %call3.i36 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i34, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i35, i16 noundef zeroext 89, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i36)
  %cmp4.i37 = icmp slt i32 %call3.i36, 0
  br i1 %cmp4.i37, label %do.end.i40, label %if.end.i38.if.end10_crit_edge

if.end.i38.if.end10_crit_edge:                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end.i40:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i36) #11
  %26 = ptrtoint ptr %usb_err.i30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call3.i36, ptr %usb_err.i30, align 8
  br label %if.end10

if.end10:                                         ; preds = %do.end.i40, %if.end.i38.if.end10_crit_edge, %if.else7.if.end10_crit_edge, %do.end.i28, %if.end.i26.if.end10_crit_edge, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setgamma(ptr noundef %gspca_dev, i32 noundef %gamma) unnamed_addr #2 align 64 {
entry:
  %actual_count.i110 = alloca i32, align 4
  %actual_count.i87 = alloca i32, align 4
  %actual_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit_crit_edge, label %if.end.i

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_w.exit_crit_edge

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #11
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %7 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %if.then, label %reg_w.exit.if.end_crit_edge

reg_w.exit.if.end_crit_edge:                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %reg_w.exit
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i71 = icmp slt i32 %10, 0
  br i1 %cmp.i71, label %if.then.if.end.thread_crit_edge, label %if.end.i77

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end.i77:                                       ; preds = %if.then
  %dev1.i72 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev1.i72 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i72, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i73 = shl i32 %14, 8
  %or.i74 = or i32 %shl.i.i73, -2147483648
  %call3.i75 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i74, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 40, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i75)
  %cmp4.i76 = icmp slt i32 %call3.i75, 0
  br i1 %cmp4.i76, label %do.end.i79, label %if.end.i77.if.end_crit_edge

if.end.i77.if.end_crit_edge:                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i79:                                       ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i75) #11
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call3.i75, ptr %usb_err.i, align 8
  br label %if.end.thread

if.end.thread:                                    ; preds = %do.end.i79, %if.then.if.end.thread_crit_edge
  %dev1.i81257 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i) #8
  br label %bulk_w.exit

if.end:                                           ; preds = %if.end.i77.if.end_crit_edge, %reg_w.exit.if.end_crit_edge
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %usb_err.i, align 8
  %dev1.i81 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %17 = ptrtoint ptr %dev1.i81 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i81, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i) #8
  %19 = ptrtoint ptr %actual_count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %actual_count.i, align 4, !annotation !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i83 = icmp slt i32 %.pr, 0
  br i1 %cmp.i83, label %if.end.bulk_w.exit_crit_edge, label %for.cond.preheader.i

if.end.bulk_w.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit

for.cond.preheader.i:                             ; preds = %if.end
  %arrayidx = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end15.i, %for.cond.preheader.i
  %length.addr.0.i = phi i32 [ %sub.i, %if.end15.i ], [ 1024, %for.cond.preheader.i ]
  %data.addr.0.i = phi ptr [ %add.ptr.i, %if.end15.i ], [ %arrayidx, %for.cond.preheader.i ]
  %20 = call i32 @llvm.smin.i32(i32 %length.addr.0.i, i32 31) #8
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %22, align 1
  %24 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %24, i32 1
  %25 = call ptr @memcpy(ptr %arrayidx4.i, ptr %data.addr.0.i, i32 %20)
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %18, align 8
  %shl.i.i84 = shl i32 %27, 8
  %or.i85 = or i32 %shl.i.i84, -1073643520
  %28 = load ptr, ptr %usb_buf.i, align 4
  %add.i = add nsw i32 %20, 1
  %call6.i = call i32 @usb_bulk_msg(ptr noundef %18, i32 noundef %or.i85, ptr noundef %28, i32 noundef %add.i, ptr noundef nonnull %actual_count.i, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %bulk_w.exit.thread, label %if.end11.i

bulk_w.exit.thread:                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i, i32 noundef 0) #11
  %29 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call6.i, ptr %usb_err.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i87) #8
  br label %bulk_w.exit109.thread

if.end11.i:                                       ; preds = %for.cond.i
  %sub.i = sub i32 %length.addr.0.i, %20
  %cmp12.i = icmp slt i32 %sub.i, 1
  br i1 %cmp12.i, label %if.end11.i.bulk_w.exit_crit_edge, label %if.end15.i

if.end11.i.bulk_w.exit_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %data.addr.0.i, i32 %20
  br label %for.cond.i

bulk_w.exit:                                      ; preds = %if.end11.i.bulk_w.exit_crit_edge, %if.end.bulk_w.exit_crit_edge, %if.end.thread
  %dev1.i81260.ph = phi ptr [ %dev1.i81, %if.end.bulk_w.exit_crit_edge ], [ %dev1.i81257, %if.end.thread ], [ %dev1.i81, %if.end11.i.bulk_w.exit_crit_edge ]
  %30 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr288 = load i32, ptr %usb_err.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i) #8
  %31 = ptrtoint ptr %dev1.i81260.ph to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i81260.ph, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i87) #8
  %33 = ptrtoint ptr %actual_count.i87 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %actual_count.i87, align 4, !annotation !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr288)
  %cmp.i90 = icmp slt i32 %.pr288, 0
  br i1 %cmp.i90, label %bulk_w.exit.bulk_w.exit109.thread_crit_edge, label %for.cond.preheader.i92

bulk_w.exit.bulk_w.exit109.thread_crit_edge:      ; preds = %bulk_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit109.thread

for.cond.preheader.i92:                           ; preds = %bulk_w.exit
  %arrayidx4 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 1
  %usb_buf.i91 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %for.cond.i101

for.cond.i101:                                    ; preds = %if.end15.i108, %for.cond.preheader.i92
  %length.addr.0.i93 = phi i32 [ %sub.i104, %if.end15.i108 ], [ 1024, %for.cond.preheader.i92 ]
  %data.addr.0.i94 = phi ptr [ %add.ptr.i107, %if.end15.i108 ], [ %arrayidx4, %for.cond.preheader.i92 ]
  %34 = call i32 @llvm.smin.i32(i32 %length.addr.0.i93, i32 31) #8
  %35 = ptrtoint ptr %usb_buf.i91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_buf.i91, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %36, align 1
  %38 = load ptr, ptr %usb_buf.i91, align 4
  %arrayidx4.i95 = getelementptr i8, ptr %38, i32 1
  %39 = call ptr @memcpy(ptr %arrayidx4.i95, ptr %data.addr.0.i94, i32 %34)
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %32, align 8
  %shl.i.i96 = shl i32 %41, 8
  %or.i97 = or i32 %shl.i.i96, -1073643520
  %42 = load ptr, ptr %usb_buf.i91, align 4
  %add.i98 = add nsw i32 %34, 1
  %call6.i99 = call i32 @usb_bulk_msg(ptr noundef %32, i32 noundef %or.i97, ptr noundef %42, i32 noundef %add.i98, ptr noundef nonnull %actual_count.i87, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i99)
  %cmp7.i100 = icmp slt i32 %call6.i99, 0
  br i1 %cmp7.i100, label %do.end.i103, label %if.end11.i106

do.end.i103:                                      ; preds = %for.cond.i101
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i99, i32 noundef 1) #11
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call6.i99, ptr %usb_err.i, align 8
  br label %bulk_w.exit109.thread

if.end11.i106:                                    ; preds = %for.cond.i101
  %sub.i104 = sub i32 %length.addr.0.i93, %34
  %cmp12.i105 = icmp slt i32 %sub.i104, 1
  br i1 %cmp12.i105, label %bulk_w.exit109, label %if.end15.i108

if.end15.i108:                                    ; preds = %if.end11.i106
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i107 = getelementptr i8, ptr %data.addr.0.i94, i32 %34
  br label %for.cond.i101

bulk_w.exit109.thread:                            ; preds = %do.end.i103, %bulk_w.exit.bulk_w.exit109.thread_crit_edge, %bulk_w.exit.thread
  %dev1.i81260292 = phi ptr [ %dev1.i81, %bulk_w.exit.thread ], [ %dev1.i81260.ph, %bulk_w.exit.bulk_w.exit109.thread_crit_edge ], [ %dev1.i81260.ph, %do.end.i103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i87) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i110) #8
  br label %bulk_w.exit132

bulk_w.exit109:                                   ; preds = %if.end11.i106
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr263 = load i32, ptr %usb_err.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i87) #8
  %45 = ptrtoint ptr %dev1.i81260.ph to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1.i81260.ph, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_count.i110) #8
  %47 = ptrtoint ptr %actual_count.i110 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %actual_count.i110, align 4, !annotation !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr263)
  %cmp.i113 = icmp slt i32 %.pr263, 0
  br i1 %cmp.i113, label %bulk_w.exit109.bulk_w.exit132_crit_edge, label %for.cond.preheader.i115

bulk_w.exit109.bulk_w.exit132_crit_edge:          ; preds = %bulk_w.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit132

for.cond.preheader.i115:                          ; preds = %bulk_w.exit109
  %arrayidx7 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 2
  br label %for.cond.i124

for.cond.i124:                                    ; preds = %if.end15.i131, %for.cond.preheader.i115
  %length.addr.0.i116 = phi i32 [ %sub.i127, %if.end15.i131 ], [ 1024, %for.cond.preheader.i115 ]
  %data.addr.0.i117 = phi ptr [ %add.ptr.i130, %if.end15.i131 ], [ %arrayidx7, %for.cond.preheader.i115 ]
  %48 = call i32 @llvm.smin.i32(i32 %length.addr.0.i116, i32 31) #8
  %49 = ptrtoint ptr %usb_buf.i91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb_buf.i91, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %50, align 1
  %52 = load ptr, ptr %usb_buf.i91, align 4
  %arrayidx4.i118 = getelementptr i8, ptr %52, i32 1
  %53 = call ptr @memcpy(ptr %arrayidx4.i118, ptr %data.addr.0.i117, i32 %48)
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %46, align 8
  %shl.i.i119 = shl i32 %55, 8
  %or.i120 = or i32 %shl.i.i119, -1073643520
  %56 = load ptr, ptr %usb_buf.i91, align 4
  %add.i121 = add nsw i32 %48, 1
  %call6.i122 = call i32 @usb_bulk_msg(ptr noundef %46, i32 noundef %or.i120, ptr noundef %56, i32 noundef %add.i121, ptr noundef nonnull %actual_count.i110, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i122)
  %cmp7.i123 = icmp slt i32 %call6.i122, 0
  br i1 %cmp7.i123, label %do.end.i126, label %if.end11.i129

do.end.i126:                                      ; preds = %for.cond.i124
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call6.i122, i32 noundef 2) #11
  %57 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call6.i122, ptr %usb_err.i, align 8
  br label %bulk_w.exit132

if.end11.i129:                                    ; preds = %for.cond.i124
  %sub.i127 = sub i32 %length.addr.0.i116, %48
  %cmp12.i128 = icmp slt i32 %sub.i127, 1
  br i1 %cmp12.i128, label %if.end11.i129.bulk_w.exit132_crit_edge, label %if.end15.i131

if.end11.i129.bulk_w.exit132_crit_edge:           ; preds = %if.end11.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %bulk_w.exit132

if.end15.i131:                                    ; preds = %if.end11.i129
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i130 = getelementptr i8, ptr %data.addr.0.i117, i32 %48
  br label %for.cond.i124

bulk_w.exit132:                                   ; preds = %if.end11.i129.bulk_w.exit132_crit_edge, %do.end.i126, %bulk_w.exit109.bulk_w.exit132_crit_edge, %bulk_w.exit109.thread
  %dev1.i81260291 = phi ptr [ %dev1.i81260292, %bulk_w.exit109.thread ], [ %dev1.i81260.ph, %bulk_w.exit109.bulk_w.exit132_crit_edge ], [ %dev1.i81260.ph, %do.end.i126 ], [ %dev1.i81260.ph, %if.end11.i129.bulk_w.exit132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_count.i110) #8
  %58 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp11 = icmp eq i8 %59, 1
  br i1 %cmp11, label %if.then13, label %bulk_w.exit132.if.end39_crit_edge

bulk_w.exit132.if.end39_crit_edge:                ; preds = %bulk_w.exit132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then13:                                        ; preds = %bulk_w.exit132
  %60 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i134 = icmp slt i32 %61, 0
  br i1 %cmp.i134, label %if.then13.reg_w.exit165_crit_edge, label %if.end.i140

if.then13.reg_w.exit165_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit165

if.end.i140:                                      ; preds = %if.then13
  %62 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i81260291, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i136 = shl i32 %65, 8
  %or.i137 = or i32 %shl.i.i136, -2147483648
  %call3.i138 = call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or.i137, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 43, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i138)
  %cmp4.i139 = icmp slt i32 %call3.i138, 0
  br i1 %cmp4.i139, label %if.end.i140.reg_w.exit154.thread.sink.split_crit_edge, label %reg_w.exit143

if.end.i140.reg_w.exit154.thread.sink.split_crit_edge: ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit154.thread.sink.split

reg_w.exit143:                                    ; preds = %if.end.i140
  %66 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr266 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr266)
  %cmp.i145 = icmp slt i32 %.pr266, 0
  br i1 %cmp.i145, label %reg_w.exit143.reg_w.exit165_crit_edge, label %if.end.i151

reg_w.exit143.reg_w.exit165_crit_edge:            ; preds = %reg_w.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit165

if.end.i151:                                      ; preds = %reg_w.exit143
  %67 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev1.i81260291, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %shl.i.i147 = shl i32 %70, 8
  %or.i148 = or i32 %shl.i.i147, -2147483648
  %call3.i149 = call i32 @usb_control_msg(ptr noundef %68, i32 noundef %or.i148, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 40, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i149)
  %cmp4.i150 = icmp slt i32 %call3.i149, 0
  br i1 %cmp4.i150, label %if.end.i151.reg_w.exit154.thread.sink.split_crit_edge, label %reg_w.exit154

if.end.i151.reg_w.exit154.thread.sink.split_crit_edge: ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit154.thread.sink.split

reg_w.exit154.thread.sink.split:                  ; preds = %if.end.i151.reg_w.exit154.thread.sink.split_crit_edge, %if.end.i140.reg_w.exit154.thread.sink.split_crit_edge
  %call3.i138.sink382 = phi i32 [ %call3.i138, %if.end.i140.reg_w.exit154.thread.sink.split_crit_edge ], [ %call3.i149, %if.end.i151.reg_w.exit154.thread.sink.split_crit_edge ]
  %call7.i141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i138.sink382) #11
  %71 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call3.i138.sink382, ptr %usb_err.i, align 8
  br label %reg_w.exit165

reg_w.exit154:                                    ; preds = %if.end.i151
  %72 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr295 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr295)
  %cmp.i156 = icmp slt i32 %.pr295, 0
  br i1 %cmp.i156, label %reg_w.exit154.for.body22.preheader_crit_edge, label %if.end.i162

reg_w.exit154.for.body22.preheader_crit_edge:     ; preds = %reg_w.exit154
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i162:                                      ; preds = %reg_w.exit154
  %73 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %76 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1.i81260291, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %shl.i.i158 = shl i32 %79, 8
  %or.i159 = or i32 %shl.i.i158, -2147483648
  %conv.i = zext i8 %75 to i16
  %call3.i160 = call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or.i159, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 85, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i160)
  %cmp4.i161 = icmp slt i32 %call3.i160, 0
  br i1 %cmp4.i161, label %if.end.i162.reg_w.exit187.sink.split_crit_edge, label %if.end.i162.reg_w.exit165_crit_edge

if.end.i162.reg_w.exit165_crit_edge:              ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit165

if.end.i162.reg_w.exit187.sink.split_crit_edge:   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit187.sink.split

reg_w.exit165:                                    ; preds = %if.end.i162.reg_w.exit165_crit_edge, %reg_w.exit154.thread.sink.split, %reg_w.exit143.reg_w.exit165_crit_edge, %if.then13.reg_w.exit165_crit_edge
  %80 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr297 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr297)
  %cmp.i156.1 = icmp slt i32 %.pr297, 0
  br i1 %cmp.i156.1, label %reg_w.exit165.for.body22.preheader_crit_edge, label %if.end.i162.1

reg_w.exit165.for.body22.preheader_crit_edge:     ; preds = %reg_w.exit165
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i162.1:                                    ; preds = %reg_w.exit165
  %arrayidx18.1 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx18.1, align 1
  %83 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev1.i81260291, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %shl.i.i158.1 = shl i32 %86, 8
  %or.i159.1 = or i32 %shl.i.i158.1, -2147483648
  %conv.i.1 = zext i8 %82 to i16
  %call3.i160.1 = call i32 @usb_control_msg(ptr noundef %84, i32 noundef %or.i159.1, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.1, i16 noundef zeroext 85, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i160.1)
  %cmp4.i161.1 = icmp slt i32 %call3.i160.1, 0
  br i1 %cmp4.i161.1, label %if.end.i162.1.reg_w.exit187.sink.split_crit_edge, label %reg_w.exit165.1

if.end.i162.1.reg_w.exit187.sink.split_crit_edge: ; preds = %if.end.i162.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit187.sink.split

reg_w.exit165.1:                                  ; preds = %if.end.i162.1
  %87 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr303.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr303.pr)
  %cmp.i156.2 = icmp slt i32 %.pr303.pr, 0
  br i1 %cmp.i156.2, label %reg_w.exit165.1.for.body22.preheader_crit_edge, label %if.end.i162.2

reg_w.exit165.1.for.body22.preheader_crit_edge:   ; preds = %reg_w.exit165.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i162.2:                                    ; preds = %reg_w.exit165.1
  %arrayidx18.2 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx18.2, align 1
  %90 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev1.i81260291, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 8
  %shl.i.i158.2 = shl i32 %93, 8
  %or.i159.2 = or i32 %shl.i.i158.2, -2147483648
  %conv.i.2 = zext i8 %89 to i16
  %call3.i160.2 = call i32 @usb_control_msg(ptr noundef %91, i32 noundef %or.i159.2, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.2, i16 noundef zeroext 85, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i160.2)
  %cmp4.i161.2 = icmp slt i32 %call3.i160.2, 0
  br i1 %cmp4.i161.2, label %if.end.i162.2.reg_w.exit187.sink.split_crit_edge, label %reg_w.exit165.2

if.end.i162.2.reg_w.exit187.sink.split_crit_edge: ; preds = %if.end.i162.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit187.sink.split

reg_w.exit165.2:                                  ; preds = %if.end.i162.2
  %94 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr309.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr309.pr)
  %cmp.i156.3 = icmp slt i32 %.pr309.pr, 0
  br i1 %cmp.i156.3, label %reg_w.exit165.2.for.body22.preheader_crit_edge, label %if.end.i162.3

reg_w.exit165.2.for.body22.preheader_crit_edge:   ; preds = %reg_w.exit165.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i162.3:                                    ; preds = %reg_w.exit165.2
  %arrayidx18.3 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 0, i32 3
  %95 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx18.3, align 1
  %97 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev1.i81260291, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %shl.i.i158.3 = shl i32 %100, 8
  %or.i159.3 = or i32 %shl.i.i158.3, -2147483648
  %conv.i.3 = zext i8 %96 to i16
  %call3.i160.3 = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or.i159.3, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.3, i16 noundef zeroext 85, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i160.3)
  %cmp4.i161.3 = icmp slt i32 %call3.i160.3, 0
  br i1 %cmp4.i161.3, label %if.end.i162.3.reg_w.exit187.sink.split_crit_edge, label %reg_w.exit165.3

if.end.i162.3.reg_w.exit187.sink.split_crit_edge: ; preds = %if.end.i162.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit187.sink.split

reg_w.exit165.3:                                  ; preds = %if.end.i162.3
  %101 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr315.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr315.pr.pr)
  %cmp.i156.4 = icmp slt i32 %.pr315.pr.pr, 0
  br i1 %cmp.i156.4, label %reg_w.exit165.3.for.body22.preheader_crit_edge, label %if.end.i162.4

reg_w.exit165.3.for.body22.preheader_crit_edge:   ; preds = %reg_w.exit165.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i162.4:                                    ; preds = %reg_w.exit165.3
  %arrayidx18.4 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 0, i32 4
  %102 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx18.4, align 1
  %104 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev1.i81260291, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 8
  %shl.i.i158.4 = shl i32 %107, 8
  %or.i159.4 = or i32 %shl.i.i158.4, -2147483648
  %conv.i.4 = zext i8 %103 to i16
  %call3.i160.4 = call i32 @usb_control_msg(ptr noundef %105, i32 noundef %or.i159.4, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.4, i16 noundef zeroext 85, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i160.4)
  %cmp4.i161.4 = icmp slt i32 %call3.i160.4, 0
  br i1 %cmp4.i161.4, label %if.end.i162.4.reg_w.exit187.sink.split_crit_edge, label %reg_w.exit165.4

if.end.i162.4.reg_w.exit187.sink.split_crit_edge: ; preds = %if.end.i162.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit187.sink.split

reg_w.exit165.4:                                  ; preds = %if.end.i162.4
  %108 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr321.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr321.pr.pr)
  %cmp.i156.5 = icmp slt i32 %.pr321.pr.pr, 0
  br i1 %cmp.i156.5, label %reg_w.exit165.4.for.body22.preheader_crit_edge, label %if.end.i162.5

reg_w.exit165.4.for.body22.preheader_crit_edge:   ; preds = %reg_w.exit165.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i162.5:                                    ; preds = %reg_w.exit165.4
  %arrayidx18.5 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 0, i32 5
  %109 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx18.5, align 1
  %111 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev1.i81260291, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 8
  %shl.i.i158.5 = shl i32 %114, 8
  %or.i159.5 = or i32 %shl.i.i158.5, -2147483648
  %conv.i.5 = zext i8 %110 to i16
  %call3.i160.5 = call i32 @usb_control_msg(ptr noundef %112, i32 noundef %or.i159.5, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.5, i16 noundef zeroext 85, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i160.5)
  %cmp4.i161.5 = icmp slt i32 %call3.i160.5, 0
  br i1 %cmp4.i161.5, label %if.end.i162.5.reg_w.exit187.sink.split_crit_edge, label %reg_w.exit165.5

if.end.i162.5.reg_w.exit187.sink.split_crit_edge: ; preds = %if.end.i162.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit187.sink.split

reg_w.exit165.5:                                  ; preds = %if.end.i162.5
  %115 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr326.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr326.pr.pr)
  %cmp.i167 = icmp slt i32 %.pr326.pr.pr, 0
  br i1 %cmp.i167, label %reg_w.exit165.5.for.body22.preheader_crit_edge, label %if.end.i173

reg_w.exit165.5.for.body22.preheader_crit_edge:   ; preds = %reg_w.exit165.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i173:                                      ; preds = %reg_w.exit165.5
  %116 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev1.i81260291, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 8
  %shl.i.i169 = shl i32 %119, 8
  %or.i170 = or i32 %shl.i.i169, -2147483648
  %call3.i171 = call i32 @usb_control_msg(ptr noundef %117, i32 noundef %or.i170, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 43, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i171)
  %cmp4.i172 = icmp slt i32 %call3.i171, 0
  br i1 %cmp4.i172, label %if.end.i173.reg_w.exit187.sink.split_crit_edge, label %reg_w.exit176

if.end.i173.reg_w.exit187.sink.split_crit_edge:   ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit187.sink.split

reg_w.exit176:                                    ; preds = %if.end.i173
  %120 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pr268 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr268)
  %cmp.i178 = icmp slt i32 %.pr268, 0
  br i1 %cmp.i178, label %reg_w.exit176.for.body22.preheader_crit_edge, label %if.end.i184

reg_w.exit176.for.body22.preheader_crit_edge:     ; preds = %reg_w.exit176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i184:                                      ; preds = %reg_w.exit176
  %121 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev1.i81260291, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 8
  %shl.i.i180 = shl i32 %124, 8
  %or.i181 = or i32 %shl.i.i180, -2147483648
  %call3.i182 = call i32 @usb_control_msg(ptr noundef %122, i32 noundef %or.i181, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 40, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i182)
  %cmp4.i183 = icmp slt i32 %call3.i182, 0
  br i1 %cmp4.i183, label %if.end.i184.reg_w.exit187.sink.split_crit_edge, label %if.end.i184.for.body22.preheader_crit_edge

if.end.i184.for.body22.preheader_crit_edge:       ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

if.end.i184.reg_w.exit187.sink.split_crit_edge:   ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit187.sink.split

reg_w.exit187.sink.split:                         ; preds = %if.end.i184.reg_w.exit187.sink.split_crit_edge, %if.end.i173.reg_w.exit187.sink.split_crit_edge, %if.end.i162.5.reg_w.exit187.sink.split_crit_edge, %if.end.i162.4.reg_w.exit187.sink.split_crit_edge, %if.end.i162.3.reg_w.exit187.sink.split_crit_edge, %if.end.i162.2.reg_w.exit187.sink.split_crit_edge, %if.end.i162.1.reg_w.exit187.sink.split_crit_edge, %if.end.i162.reg_w.exit187.sink.split_crit_edge
  %call3.i160.2.sink383 = phi i32 [ %call3.i160, %if.end.i162.reg_w.exit187.sink.split_crit_edge ], [ %call3.i160.1, %if.end.i162.1.reg_w.exit187.sink.split_crit_edge ], [ %call3.i160.2, %if.end.i162.2.reg_w.exit187.sink.split_crit_edge ], [ %call3.i160.3, %if.end.i162.3.reg_w.exit187.sink.split_crit_edge ], [ %call3.i160.4, %if.end.i162.4.reg_w.exit187.sink.split_crit_edge ], [ %call3.i160.5, %if.end.i162.5.reg_w.exit187.sink.split_crit_edge ], [ %call3.i171, %if.end.i173.reg_w.exit187.sink.split_crit_edge ], [ %call3.i182, %if.end.i184.reg_w.exit187.sink.split_crit_edge ]
  %call7.i163.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i160.2.sink383) #11
  %125 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call3.i160.2.sink383, ptr %usb_err.i, align 8
  br label %for.body22.preheader

for.body22.preheader:                             ; preds = %reg_w.exit187.sink.split, %if.end.i184.for.body22.preheader_crit_edge, %reg_w.exit176.for.body22.preheader_crit_edge, %reg_w.exit165.5.for.body22.preheader_crit_edge, %reg_w.exit165.4.for.body22.preheader_crit_edge, %reg_w.exit165.3.for.body22.preheader_crit_edge, %reg_w.exit165.2.for.body22.preheader_crit_edge, %reg_w.exit165.1.for.body22.preheader_crit_edge, %reg_w.exit165.for.body22.preheader_crit_edge, %reg_w.exit154.for.body22.preheader_crit_edge
  br label %for.body22

for.body22:                                       ; preds = %reg_w.exit199.for.body22_crit_edge, %for.body22.preheader
  %i.1280 = phi i32 [ %inc27, %reg_w.exit199.for.body22_crit_edge ], [ 0, %for.body22.preheader ]
  %126 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i189 = icmp slt i32 %127, 0
  br i1 %cmp.i189, label %for.body22.reg_w.exit199_crit_edge, label %if.end.i196

for.body22.reg_w.exit199_crit_edge:               ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit199

if.end.i196:                                      ; preds = %for.body22
  %arrayidx25 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 1, i32 %i.1280
  %128 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx25, align 1
  %130 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev1.i81260291, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 8
  %shl.i.i191 = shl i32 %133, 8
  %or.i192 = or i32 %shl.i.i191, -2147483648
  %conv.i193 = zext i8 %129 to i16
  %call3.i194 = call i32 @usb_control_msg(ptr noundef %131, i32 noundef %or.i192, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i193, i16 noundef zeroext 86, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i194)
  %cmp4.i195 = icmp slt i32 %call3.i194, 0
  br i1 %cmp4.i195, label %do.end.i198, label %if.end.i196.reg_w.exit199_crit_edge

if.end.i196.reg_w.exit199_crit_edge:              ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit199

do.end.i198:                                      ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i194) #11
  %134 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call3.i194, ptr %usb_err.i, align 8
  br label %reg_w.exit199

reg_w.exit199:                                    ; preds = %do.end.i198, %if.end.i196.reg_w.exit199_crit_edge, %for.body22.reg_w.exit199_crit_edge
  %inc27 = add nuw nsw i32 %i.1280, 1
  %exitcond.not = icmp eq i32 %inc27, 6
  br i1 %exitcond.not, label %for.end28, label %reg_w.exit199.for.body22_crit_edge

reg_w.exit199.for.body22_crit_edge:               ; preds = %reg_w.exit199
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.end28:                                        ; preds = %reg_w.exit199
  %135 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp.i201 = icmp slt i32 %136, 0
  br i1 %cmp.i201, label %for.end28.for.body32.preheader_crit_edge, label %if.end.i207

for.end28.for.body32.preheader_crit_edge:         ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32.preheader

if.end.i207:                                      ; preds = %for.end28
  %137 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev1.i81260291, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 8
  %shl.i.i203 = shl i32 %140, 8
  %or.i204 = or i32 %shl.i.i203, -2147483648
  %call3.i205 = call i32 @usb_control_msg(ptr noundef %138, i32 noundef %or.i204, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 43, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i205)
  %cmp4.i206 = icmp slt i32 %call3.i205, 0
  br i1 %cmp4.i206, label %if.end.i207.reg_w.exit221.sink.split_crit_edge, label %reg_w.exit210

if.end.i207.reg_w.exit221.sink.split_crit_edge:   ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit221.sink.split

reg_w.exit210:                                    ; preds = %if.end.i207
  %141 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr270 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr270)
  %cmp.i212 = icmp slt i32 %.pr270, 0
  br i1 %cmp.i212, label %reg_w.exit210.for.body32.preheader_crit_edge, label %if.end.i218

reg_w.exit210.for.body32.preheader_crit_edge:     ; preds = %reg_w.exit210
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32.preheader

if.end.i218:                                      ; preds = %reg_w.exit210
  %142 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev1.i81260291, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 8
  %shl.i.i214 = shl i32 %145, 8
  %or.i215 = or i32 %shl.i.i214, -2147483648
  %call3.i216 = call i32 @usb_control_msg(ptr noundef %143, i32 noundef %or.i215, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 40, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i216)
  %cmp4.i217 = icmp slt i32 %call3.i216, 0
  br i1 %cmp4.i217, label %if.end.i218.reg_w.exit221.sink.split_crit_edge, label %if.end.i218.for.body32.preheader_crit_edge

if.end.i218.for.body32.preheader_crit_edge:       ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32.preheader

if.end.i218.reg_w.exit221.sink.split_crit_edge:   ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit221.sink.split

reg_w.exit221.sink.split:                         ; preds = %if.end.i218.reg_w.exit221.sink.split_crit_edge, %if.end.i207.reg_w.exit221.sink.split_crit_edge
  %call3.i205.sink384 = phi i32 [ %call3.i205, %if.end.i207.reg_w.exit221.sink.split_crit_edge ], [ %call3.i216, %if.end.i218.reg_w.exit221.sink.split_crit_edge ]
  %call7.i208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i205.sink384) #11
  %146 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %call3.i205.sink384, ptr %usb_err.i, align 8
  br label %for.body32.preheader

for.body32.preheader:                             ; preds = %reg_w.exit221.sink.split, %if.end.i218.for.body32.preheader_crit_edge, %reg_w.exit210.for.body32.preheader_crit_edge, %for.end28.for.body32.preheader_crit_edge
  br label %for.body32

for.body32:                                       ; preds = %reg_w.exit233.for.body32_crit_edge, %for.body32.preheader
  %i.2282 = phi i32 [ %inc37, %reg_w.exit233.for.body32_crit_edge ], [ 0, %for.body32.preheader ]
  %147 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp.i223 = icmp slt i32 %148, 0
  br i1 %cmp.i223, label %for.body32.reg_w.exit233_crit_edge, label %if.end.i230

for.body32.reg_w.exit233_crit_edge:               ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit233

if.end.i230:                                      ; preds = %for.body32
  %arrayidx35 = getelementptr [6 x [3 x [1024 x i8]]], ptr @setgamma.gamma_tb, i32 0, i32 %gamma, i32 2, i32 %i.2282
  %149 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx35, align 1
  %151 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev1.i81260291, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %shl.i.i225 = shl i32 %154, 8
  %or.i226 = or i32 %shl.i.i225, -2147483648
  %conv.i227 = zext i8 %150 to i16
  %call3.i228 = call i32 @usb_control_msg(ptr noundef %152, i32 noundef %or.i226, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i227, i16 noundef zeroext 87, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i228)
  %cmp4.i229 = icmp slt i32 %call3.i228, 0
  br i1 %cmp4.i229, label %do.end.i232, label %if.end.i230.reg_w.exit233_crit_edge

if.end.i230.reg_w.exit233_crit_edge:              ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit233

do.end.i232:                                      ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i228) #11
  %155 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %call3.i228, ptr %usb_err.i, align 8
  br label %reg_w.exit233

reg_w.exit233:                                    ; preds = %do.end.i232, %if.end.i230.reg_w.exit233_crit_edge, %for.body32.reg_w.exit233_crit_edge
  %inc37 = add nuw nsw i32 %i.2282, 1
  %exitcond287.not = icmp eq i32 %inc37, 6
  br i1 %exitcond287.not, label %for.end38, label %reg_w.exit233.for.body32_crit_edge

reg_w.exit233.for.body32_crit_edge:               ; preds = %reg_w.exit233
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body32

for.end38:                                        ; preds = %reg_w.exit233
  %156 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp.i235 = icmp slt i32 %157, 0
  br i1 %cmp.i235, label %for.end38.reg_w.exit255_crit_edge, label %if.end.i241

for.end38.reg_w.exit255_crit_edge:                ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit255

if.end.i241:                                      ; preds = %for.end38
  %158 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev1.i81260291, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 8
  %shl.i.i237 = shl i32 %161, 8
  %or.i238 = or i32 %shl.i.i237, -2147483648
  %call3.i239 = call i32 @usb_control_msg(ptr noundef %159, i32 noundef %or.i238, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 40, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i239)
  %cmp4.i240 = icmp slt i32 %call3.i239, 0
  br i1 %cmp4.i240, label %if.end.i241.reg_w.exit255.sink.split_crit_edge, label %if.end.i241.if.end39_crit_edge

if.end.i241.if.end39_crit_edge:                   ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end.i241.reg_w.exit255.sink.split_crit_edge:   ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit255.sink.split

if.end39:                                         ; preds = %if.end.i241.if.end39_crit_edge, %bulk_w.exit132.if.end39_crit_edge
  %162 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %.pr272 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr272)
  %cmp.i246 = icmp slt i32 %.pr272, 0
  br i1 %cmp.i246, label %if.end39.reg_w.exit255_crit_edge, label %if.end.i252

if.end39.reg_w.exit255_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit255

if.end.i252:                                      ; preds = %if.end39
  %163 = ptrtoint ptr %dev1.i81260291 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev1.i81260291, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  %shl.i.i248 = shl i32 %166, 8
  %or.i249 = or i32 %shl.i.i248, -2147483648
  %call3.i250 = call i32 @usb_control_msg(ptr noundef %164, i32 noundef %or.i249, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 33, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i250)
  %cmp4.i251 = icmp slt i32 %call3.i250, 0
  br i1 %cmp4.i251, label %if.end.i252.reg_w.exit255.sink.split_crit_edge, label %if.end.i252.reg_w.exit255_crit_edge

if.end.i252.reg_w.exit255_crit_edge:              ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit255

if.end.i252.reg_w.exit255.sink.split_crit_edge:   ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit255.sink.split

reg_w.exit255.sink.split:                         ; preds = %if.end.i252.reg_w.exit255.sink.split_crit_edge, %if.end.i241.reg_w.exit255.sink.split_crit_edge
  %call3.i239.sink385 = phi i32 [ %call3.i239, %if.end.i241.reg_w.exit255.sink.split_crit_edge ], [ %call3.i250, %if.end.i252.reg_w.exit255.sink.split_crit_edge ]
  %call7.i242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i239.sink385) #11
  %167 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %call3.i239.sink385, ptr %usb_err.i, align 8
  br label %reg_w.exit255

reg_w.exit255:                                    ; preds = %reg_w.exit255.sink.split, %if.end.i252.reg_w.exit255_crit_edge, %if.end39.reg_w.exit255_crit_edge, %for.end38.reg_w.exit255_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_setgain(ptr nocapture noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gain, align 8
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val1, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then:                                          ; preds = %entry
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %7
  %blue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %8 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blue, align 4
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val8, align 4
  %mul = mul i32 %11, %3
  %div = sdiv i32 %mul, %spec.select
  store i32 %div, ptr %val8, align 4
  %12 = load ptr, ptr %blue, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %14)
  %cmp13 = icmp sgt i32 %14, 4095
  br i1 %cmp13, label %if.then15, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %val12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4095, ptr %val12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then.if.end_crit_edge
  %red = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %16 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %red, align 8
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val18, align 4
  %mul19 = mul i32 %19, %3
  %div20 = sdiv i32 %mul19, %spec.select
  store i32 %div20, ptr %val18, align 4
  %20 = load ptr, ptr %red, align 8
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %22)
  %cmp25 = icmp sgt i32 %22, 4095
  br i1 %cmp25, label %if.then27, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4095, ptr %val24, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end.if.end31_crit_edge, %entry.if.end31_crit_edge
  %streaming = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 17
  %24 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %streaming, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not = icmp eq i8 %25, 0
  br i1 %tobool32.not, label %if.end31.if.end51_crit_edge, label %if.then33

if.end31.if.end51_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then33:                                        ; preds = %if.end31
  %26 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp36 = icmp eq i8 %27, 0
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %exposure, align 4
  %val39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val39, align 4
  %32 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gain, align 8
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val41, align 4
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %blue42 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %36 = ptrtoint ptr %blue42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %blue42, align 4
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 22
  %38 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val43, align 4
  %red44 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %40 = ptrtoint ptr %red44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %red44, align 8
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val45, align 4
  tail call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %31, i32 noundef %35, i32 noundef %39, i32 noundef %43)
  br label %if.end51

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %31, i32 noundef %35, i32 noundef 0, i32 noundef 0)
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then38, %if.end31.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setexposure(ptr nocapture noundef %gspca_dev, i32 noundef %expo, i32 noundef %gain, i32 noundef %blue, i32 noundef %red) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.end59

if.then:                                          ; preds = %entry
  %shl = shl i32 %expo, 2
  %sub = add i32 %shl, -1
  %conv2 = trunc i32 %sub to i8
  %call = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext %conv2)
  %2 = lshr i32 %sub, 8
  %conv3 = trunc i32 %2 to i8
  %call4 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext %conv3)
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %3 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp6 = icmp eq i8 %4, 0
  br i1 %cmp6, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = lshr i32 %gain, 8
  %conv10 = trunc i32 %5 to i8
  %call11 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 23, i8 noundef zeroext %conv10)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %conv12 = trunc i32 %gain to i8
  %call13 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 22, i8 noundef zeroext %conv12)
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp16 = icmp eq i8 %7, 0
  br i1 %cmp16, label %if.then18, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = lshr i32 %gain, 8
  %conv20 = trunc i32 %8 to i8
  %call21 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 21, i8 noundef zeroext %conv20)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end.if.end22_crit_edge
  %call24 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 20, i8 noundef zeroext %conv12)
  %9 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp27 = icmp eq i8 %10, 0
  br i1 %cmp27, label %if.then29, label %if.end22.if.end52_crit_edge

if.end22.if.end52_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then29:                                        ; preds = %if.end22
  %11 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp32 = icmp eq i8 %12, 0
  br i1 %cmp32, label %if.then34, label %if.then29.if.end38_crit_edge

if.then29.if.end38_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %13 = lshr i32 %blue, 8
  %conv36 = trunc i32 %13 to i8
  %call37 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 27, i8 noundef zeroext %conv36)
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then29.if.end38_crit_edge
  %conv39 = trunc i32 %blue to i8
  %call40 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 26, i8 noundef zeroext %conv39)
  %14 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp43 = icmp eq i8 %15, 0
  br i1 %cmp43, label %if.then45, label %if.end38.if.end49_crit_edge

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %16 = lshr i32 %red, 8
  %conv47 = trunc i32 %16 to i8
  %call48 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 25, i8 noundef zeroext %conv47)
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end38.if.end49_crit_edge
  %conv50 = trunc i32 %red to i8
  %call51 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %conv50)
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.end22.if.end52_crit_edge
  %17 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp55 = icmp eq i8 %18, 0
  %conv57 = select i1 %cmp55, i8 -128, i8 -127
  %call58 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 32, i8 noundef zeroext %conv57)
  br label %cleanup

if.end59:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv60 = trunc i32 %expo to i8
  %call61 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext %conv60)
  %conv62 = trunc i32 %gain to i8
  %call63 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 0, i8 noundef zeroext %conv62)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setquality(ptr nocapture noundef %gspca_dev, i32 noundef %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %q)
  %cmp.not = icmp eq i32 %q, 16
  %sub = sub i32 15, %q
  %spec.select = select i1 %cmp.not, i32 16, i32 %sub
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit36_crit_edge, label %if.end.i

entry.reg_w.exit36_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit36

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 122, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.reg_w.exit36.sink.split_crit_edge, label %reg_w.exit

if.end.i.reg_w.exit36.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit36.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i16 = icmp slt i32 %.pr, 0
  br i1 %cmp.i16, label %reg_w.exit.reg_w.exit36_crit_edge, label %if.end.i22

reg_w.exit.reg_w.exit36_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit36

if.end.i22:                                       ; preds = %reg_w.exit
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i18 = shl i32 %10, 8
  %or.i19 = or i32 %shl.i.i18, -2147483648
  %call3.i20 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i19, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 121, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i20)
  %cmp4.i21 = icmp slt i32 %call3.i20, 0
  br i1 %cmp4.i21, label %if.end.i22.reg_w.exit36.sink.split_crit_edge, label %reg_w.exit25

if.end.i22.reg_w.exit36.sink.split_crit_edge:     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit36.sink.split

reg_w.exit25:                                     ; preds = %if.end.i22
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr49.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr49.pr)
  %cmp.i27 = icmp slt i32 %.pr49.pr, 0
  br i1 %cmp.i27, label %reg_w.exit25.reg_w.exit36_crit_edge, label %if.end.i33

reg_w.exit25.reg_w.exit36_crit_edge:              ; preds = %reg_w.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit36

if.end.i33:                                       ; preds = %reg_w.exit25
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i29 = shl i32 %15, 8
  %or.i30 = or i32 %shl.i.i29, -2147483648
  %16 = trunc i32 %spec.select to i16
  %conv.i = and i16 %16, 255
  %call3.i31 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i30, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 121, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i31)
  %cmp4.i32 = icmp slt i32 %call3.i31, 0
  br i1 %cmp4.i32, label %if.end.i33.reg_w.exit36.sink.split_crit_edge, label %if.end.i33.reg_w.exit36_crit_edge

if.end.i33.reg_w.exit36_crit_edge:                ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit36

if.end.i33.reg_w.exit36.sink.split_crit_edge:     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit36.sink.split

reg_w.exit36.sink.split:                          ; preds = %if.end.i33.reg_w.exit36.sink.split_crit_edge, %if.end.i22.reg_w.exit36.sink.split_crit_edge, %if.end.i.reg_w.exit36.sink.split_crit_edge
  %call3.i.sink58 = phi i32 [ %call3.i, %if.end.i.reg_w.exit36.sink.split_crit_edge ], [ %call3.i20, %if.end.i22.reg_w.exit36.sink.split_crit_edge ], [ %call3.i31, %if.end.i33.reg_w.exit36.sink.split_crit_edge ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i.sink58) #11
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call3.i.sink58, ptr %usb_err.i, align 8
  br label %reg_w.exit36

reg_w.exit36:                                     ; preds = %reg_w.exit36.sink.split, %if.end.i33.reg_w.exit36_crit_edge, %reg_w.exit25.reg_w.exit36_crit_edge, %reg_w.exit.reg_w.exit36_crit_edge, %entry.reg_w.exit36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select)
  %cmp1 = icmp eq i32 %spec.select, 15
  br i1 %cmp1, label %land.lhs.true, label %reg_w.exit36.if.end7_crit_edge

reg_w.exit36.if.end7_crit_edge:                   ; preds = %reg_w.exit36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %reg_w.exit36
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %18 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp4 = icmp eq i8 %19, 1
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  tail call void @msleep(i32 noundef 4) #8
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i38 = icmp slt i32 %21, 0
  br i1 %cmp.i38, label %if.then6.if.end7_crit_edge, label %if.end.i44

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.i44:                                       ; preds = %if.then6
  %dev1.i39 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %22 = ptrtoint ptr %dev1.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i39, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i40 = shl i32 %25, 8
  %or.i41 = or i32 %shl.i.i40, -2147483648
  %call3.i42 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i41, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 122, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i42)
  %cmp4.i43 = icmp slt i32 %call3.i42, 0
  br i1 %cmp4.i43, label %do.end.i46, label %if.end.i44.if.end7_crit_edge

if.end.i44.if.end7_crit_edge:                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end.i46:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i42) #11
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call3.i42, ptr %usb_err.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %do.end.i46, %if.end.i44.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %reg_w.exit36.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setframerate(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  %framerate.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %2 = ptrtoint ptr %framerate.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %framerate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %3)
  %cmp6.not.i = icmp ult i8 %3, 30
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %entry
  br i1 %cmp6.not.i, label %for.inc27.i, label %land.lhs.true33.i

for.cond.preheader.i:                             ; preds = %entry
  br i1 %cmp6.not.i, label %for.inc.i, label %land.lhs.true.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %3)
  %cmp6.not.1.i = icmp ult i8 %3, 20
  br i1 %cmp6.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.thread.i_crit_edge

for.inc.i.for.end.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp6.not.2.i = icmp ult i8 %3, 15
  br i1 %cmp6.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.thread.i_crit_edge

for.inc.1.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp6.not.3.i = icmp ult i8 %3, 10
  br i1 %cmp6.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.thread.i_crit_edge

for.inc.2.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp6.not.4.i = icmp ult i8 %3, 7
  br i1 %cmp6.not.4.i, label %for.inc.3.i.if.end10_crit_edge, label %for.inc.3.i.for.end.thread.i_crit_edge

for.inc.3.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.3.i.if.end10_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.end.thread.i:                                 ; preds = %for.inc.3.i.for.end.thread.i_crit_edge, %for.inc.2.i.for.end.thread.i_crit_edge, %for.inc.1.i.for.end.thread.i_crit_edge, %for.inc.i.for.end.thread.i_crit_edge
  %i.064.lcssa.neg.ph.i = phi i8 [ 2, %for.inc.3.i.for.end.thread.i_crit_edge ], [ 3, %for.inc.2.i.for.end.thread.i_crit_edge ], [ 4, %for.inc.1.i.for.end.thread.i_crit_edge ], [ 5, %for.inc.i.for.end.thread.i_crit_edge ]
  br label %if.end10

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %pixfmt.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %4 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixfmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %5)
  %cmp11.i = icmp eq i32 %5, 640
  %spec.select.i = select i1 %cmp11.i, i8 5, i8 6
  br label %if.end10

for.inc27.i:                                      ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp23.not.1.i = icmp ult i8 %3, 15
  br i1 %cmp23.not.1.i, label %for.inc27.1.i, label %for.inc27.i.for.end29.thread.i_crit_edge

for.inc27.i.for.end29.thread.i_crit_edge:         ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.1.i:                                    ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp23.not.2.i = icmp ult i8 %3, 10
  br i1 %cmp23.not.2.i, label %for.inc27.2.i, label %for.inc27.1.i.for.end29.thread.i_crit_edge

for.inc27.1.i.for.end29.thread.i_crit_edge:       ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.2.i:                                    ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp23.not.3.i = icmp ult i8 %3, 7
  br i1 %cmp23.not.3.i, label %for.inc27.2.i.get_fr_idx.exit_crit_edge, label %for.inc27.2.i.for.end29.thread.i_crit_edge

for.inc27.2.i.for.end29.thread.i_crit_edge:       ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end29.thread.i

for.inc27.2.i.get_fr_idx.exit_crit_edge:          ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_fr_idx.exit

for.end29.thread.i:                               ; preds = %for.inc27.2.i.for.end29.thread.i_crit_edge, %for.inc27.1.i.for.end29.thread.i_crit_edge, %for.inc27.i.for.end29.thread.i_crit_edge
  %i.163.lcssa.ph.i = phi i8 [ 4, %for.inc27.2.i.for.end29.thread.i_crit_edge ], [ 5, %for.inc27.1.i.for.end29.thread.i_crit_edge ], [ 6, %for.inc27.i.for.end29.thread.i_crit_edge ]
  br label %get_fr_idx.exit

land.lhs.true33.i:                                ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %pixfmt34.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %6 = ptrtoint ptr %pixfmt34.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixfmt34.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %7)
  %cmp36.i = icmp eq i32 %7, 640
  %spec.select56.i = select i1 %cmp36.i, i8 6, i8 7
  br label %get_fr_idx.exit

get_fr_idx.exit:                                  ; preds = %land.lhs.true33.i, %for.end29.thread.i, %for.inc27.2.i.get_fr_idx.exit_crit_edge
  %i.2.i = phi i8 [ %spec.select56.i, %land.lhs.true33.i ], [ 3, %for.inc27.2.i.get_fr_idx.exit_crit_edge ], [ %i.163.lcssa.ph.i, %for.end29.thread.i ]
  %or.i = or i8 %i.2.i, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %get_fr_idx.exit.if.end10_crit_edge

get_fr_idx.exit.if.end10_crit_edge:               ; preds = %get_fr_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %get_fr_idx.exit
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i25 = icmp slt i32 %9, 0
  br i1 %cmp.i25, label %if.then.reg_w.exit_crit_edge, label %if.end.i

if.then.reg_w.exit_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit

if.end.i:                                         ; preds = %if.then
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or2.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 123, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i) #11
  br label %reg_w.exit.sink.split

reg_r.exit:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i27 = icmp slt i32 %.pr, 0
  br i1 %cmp.i27, label %reg_r.exit.reg_w.exit_crit_edge, label %if.end.i33

reg_r.exit.reg_w.exit_crit_edge:                  ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit

if.end.i33:                                       ; preds = %reg_r.exit
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %17 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp4 = icmp eq i8 %18, 0
  %conv6 = select i1 %cmp4, i8 16, i8 -112
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i29 = shl i32 %22, 8
  %or.i30 = or i32 %shl.i.i29, -2147483648
  %conv.i = zext i8 %conv6 to i16
  %call3.i31 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i30, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 123, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i31)
  %cmp4.i32 = icmp slt i32 %call3.i31, 0
  br i1 %cmp4.i32, label %do.end.i35, label %if.end.i33.reg_w.exit_crit_edge

if.end.i33.reg_w.exit_crit_edge:                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit

do.end.i35:                                       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i31) #11
  br label %reg_w.exit.sink.split

reg_w.exit.sink.split:                            ; preds = %do.end.i35, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call3.i31, %do.end.i35 ]
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %reg_w.exit.sink.split, %if.end.i33.reg_w.exit_crit_edge, %reg_r.exit.reg_w.exit_crit_edge, %if.then.reg_w.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %val)
  %cmp7 = icmp sgt i32 %val, 127
  %spec.select = select i1 %cmp7, i8 -16, i8 %or.i
  br label %if.end10

if.end10:                                         ; preds = %reg_w.exit, %get_fr_idx.exit.if.end10_crit_edge, %land.lhs.true.i, %for.end.thread.i, %for.inc.3.i.if.end10_crit_edge
  %fr_idx.0 = phi i8 [ %or.i, %get_fr_idx.exit.if.end10_crit_edge ], [ %spec.select, %reg_w.exit ], [ %i.064.lcssa.neg.ph.i, %for.end.thread.i ], [ 1, %for.inc.3.i.if.end10_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %usb_err.i36 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %24 = ptrtoint ptr %usb_err.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i37 = icmp slt i32 %25, 0
  br i1 %cmp.i37, label %if.end10.reg_w.exit47_crit_edge, label %if.end.i44

if.end10.reg_w.exit47_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47

if.end.i44:                                       ; preds = %if.end10
  %dev1.i38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev1.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i38, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i39 = shl i32 %29, 8
  %or.i40 = or i32 %shl.i.i39, -2147483648
  %conv.i41 = zext i8 %fr_idx.0 to i16
  %call3.i42 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i40, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i41, i16 noundef zeroext 63, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i42)
  %cmp4.i43 = icmp slt i32 %call3.i42, 0
  br i1 %cmp4.i43, label %do.end.i46, label %if.end.i44.reg_w.exit47_crit_edge

if.end.i44.reg_w.exit47_crit_edge:                ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit47

do.end.i46:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i42) #11
  %30 = ptrtoint ptr %usb_err.i36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call3.i42, ptr %usb_err.i36, align 8
  br label %reg_w.exit47

reg_w.exit47:                                     ; preds = %do.end.i46, %if.end.i44.reg_w.exit47_crit_edge, %if.end10.reg_w.exit47_crit_edge
  %sensor11 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %31 = ptrtoint ptr %sensor11 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sensor11, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp13 = icmp eq i8 %32, 0
  br i1 %cmp13, label %if.then15, label %reg_w.exit47.if.end17_crit_edge

reg_w.exit47.if.end17_crit_edge:                  ; preds = %reg_w.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %reg_w.exit47
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call fastcc i32 @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 39, i8 noundef zeroext 1)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %reg_w.exit47.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_led(ptr nocapture noundef %gspca_dev, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit_crit_edge, label %if.end.i

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 13, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i) #11
  br label %reg_w.exit.sink.split

reg_r.exit:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i9 = icmp slt i32 %.pr, 0
  br i1 %cmp.i9, label %reg_r.exit.reg_w.exit_crit_edge, label %if.end.i14

reg_r.exit.reg_w.exit_crit_edge:                  ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit

if.end.i14:                                       ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %9 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = and i8 %12, -65
  %masksel = select i1 %tobool.not, i8 64, i8 0
  %data.0 = or i8 %13, %masksel
  %dev1.i10 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev1.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i10, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i11 = shl i32 %17, 8
  %or.i = or i32 %shl.i.i11, -2147483648
  %conv.i = zext i8 %data.0 to i16
  %call3.i12 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i12)
  %cmp4.i13 = icmp slt i32 %call3.i12, 0
  br i1 %cmp4.i13, label %do.end.i16, label %if.end.i14.reg_w.exit_crit_edge

if.end.i14.reg_w.exit_crit_edge:                  ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %reg_w.exit

do.end.i16:                                       ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i12) #11
  br label %reg_w.exit.sink.split

reg_w.exit.sink.split:                            ; preds = %do.end.i16, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call3.i12, %do.end.i16 ]
  %18 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %reg_w.exit.sink.split, %if.end.i14.reg_w.exit_crit_edge, %reg_r.exit.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_expo_autogain(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !89, !91, !93, !94, !96, !97, !98, !99, !101, !103, !105, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !153, !155, !157, !159, !160, !161, !162, !164, !165, !167, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__UNIQUE_ID_description303, !1, !"__UNIQUE_ID_description303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/topro.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_author304, !3, !"__UNIQUE_ID_author304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/topro.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/topro.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_topro__307_4968_sd_driver_init6, !8, !"__initcall__kmod_gspca_topro__307_4968_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/topro.c", i32 4968, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @__param_force_sensor, !11, !"__param_force_sensor", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/topro.c", i32 4970, i32 1}
!12 = !{ptr @__UNIQUE_ID_force_sensortype308, !11, !"__UNIQUE_ID_force_sensortype308", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_force_sensor309, !14, !"__UNIQUE_ID_force_sensor309", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/topro.c", i32 4971, i32 1}
!15 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sd_driver, !17, !"sd_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/topro.c", i32 4956, i32 26}
!18 = !{ptr @sd_desc, !19, !"sd_desc", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/topro.c", i32 4925, i32 29}
!20 = !{ptr @vga_mode, !21, !"vga_mode", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/topro.c", i32 140, i32 37}
!22 = !{ptr @framerates, !23, !"framerates", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/topro.c", i32 168, i32 32}
!24 = !{ptr @rates, !25, !"rates", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/topro.c", i32 167, i32 17}
!26 = !{ptr @framerates_6810, !27, !"framerates_6810", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/topro.c", i32 179, i32 32}
!28 = !{ptr @rates_6810, !29, !"rates_6810", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/topro.c", i32 178, i32 17}
!30 = !{ptr @sd_init.tp6800_preinit, !31, !"tp6800_preinit", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/topro.c", i32 4020, i32 26}
!32 = distinct !{null, !33, !"tp6810_preinit", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/topro.c", i32 4028, i32 26}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/topro.c", i32 4044, i32 2}
!36 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sd_init._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @sd_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/topro.c", i32 4071, i32 5}
!42 = !{ptr @sd_init._entry.4, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sd_init._entry_ptr.6, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/topro.c", i32 4079, i32 3}
!46 = !{ptr @sd_init._entry.7, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sd_init._entry_ptr.9, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/topro.c", i32 4084, i32 3}
!50 = !{ptr @sd_init._entry.10, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sd_init._entry_ptr.12, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/topro.c", i32 987, i32 3}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @reg_w._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @reg_w._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/topro.c", i32 1005, i32 3}
!59 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @reg_r._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @reg_r._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @soi763a_6810_init.reg_init_1, !63, !"reg_init_1", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/topro.c", i32 1244, i32 26}
!64 = distinct !{null, !65, !"reg_init_2", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/topro.c", i32 1253, i32 26}
!66 = !{ptr @soi763a_6810_init.sensor_init, !67, !"sensor_init", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/topro.c", i32 1256, i32 26}
!68 = !{ptr @tp6810_ov_init_common, !69, !"tp6810_ov_init_common", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/topro.c", i32 799, i32 25}
!70 = !{ptr @cx0342_6810_init.reg_init_1, !71, !"reg_init_1", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/topro.c", i32 1182, i32 26}
!72 = distinct !{null, !73, !"reg_init_2", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/topro.c", i32 1193, i32 26}
!74 = !{ptr @cx0342_6810_init.sensor_init, !75, !"sensor_init", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/topro.c", i32 1197, i32 26}
!76 = !{ptr @tp6810_cx_init_common, !77, !"tp6810_cx_init_common", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/gspca/topro.c", i32 773, i32 25}
!78 = !{ptr @cx0342_timing_seq, !79, !"cx0342_timing_seq", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/topro.c", i32 905, i32 25}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/gspca/topro.c", i32 1444, i32 2}
!82 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @set_dqt._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @set_dqt._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @jpeg_head, !86, !"jpeg_head", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/topro.c", i32 21, i32 17}
!87 = !{ptr @jpeg_q, !88, !"jpeg_q", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/topro.c", i32 156, i32 17}
!89 = !{ptr @DQT, !90, !"DQT", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/gspca/topro.c", i32 429, i32 17}
!91 = !{ptr @sd_init_controls._key, !92, !"_key", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/topro.c", i32 4885, i32 2}
!93 = !{ptr @.str.19, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/topro.c", i32 4915, i32 3}
!96 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sd_init_controls._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sd_init_controls._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @sd_ctrl_ops, !100, !"sd_ctrl_ops", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/topro.c", i32 4875, i32 35}
!101 = !{ptr @setgamma.gamma_tb, !102, !"gamma_tb", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/topro.c", i32 1494, i32 18}
!103 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/topro.c", i32 1089, i32 4}
!105 = !{ptr @.str.23, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @bulk_w._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @bulk_w._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @cx0342_6800_start.reg_init, !109, !"reg_init", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/topro.c", i32 4164, i32 26}
!110 = !{ptr @cx0342_6800_start.sensor_init, !111, !"sensor_init", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/topro.c", i32 4197, i32 26}
!112 = !{ptr @color_gain, !113, !"color_gain", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/topro.c", i32 1479, i32 17}
!114 = !{ptr @soi763a_6800_start.reg_init, !115, !"reg_init", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/topro.c", i32 4351, i32 26}
!116 = !{ptr @soi763a_6800_start.sensor_init, !117, !"sensor_init", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/gspca/topro.c", i32 4391, i32 26}
!118 = distinct !{null, !119, !"sensor_init_2", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/gspca/topro.c", i32 4251, i32 26}
!120 = !{ptr @cx0342_6810_start.bridge_init_2, !121, !"bridge_init_2", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/gspca/topro.c", i32 4260, i32 26}
!122 = !{ptr @cx0342_6810_start.bridge_init_3, !123, !"bridge_init_3", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/topro.c", i32 4269, i32 26}
!124 = distinct !{null, !125, !"sensor_init_3", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/gspca/topro.c", i32 4277, i32 26}
!126 = distinct !{null, !127, !"bridge_init_5", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/gspca/topro.c", i32 4287, i32 26}
!128 = distinct !{null, !129, !"sensor_init_4", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/gspca/topro.c", i32 4293, i32 26}
!130 = distinct !{null, !131, !"sensor_init_5", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/gspca/topro.c", i32 4303, i32 26}
!132 = !{ptr @tp6810_bridge_start, !133, !"tp6810_bridge_start", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/gspca/topro.c", i32 820, i32 25}
!134 = distinct !{null, !135, !"bridge_init_2", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/gspca/topro.c", i32 4472, i32 26}
!136 = !{ptr @soi763a_6810_start.bridge_init_3, !137, !"bridge_init_3", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/gspca/topro.c", i32 4477, i32 26}
!138 = distinct !{null, !139, !"bridge_init_6", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/gspca/topro.c", i32 4485, i32 26}
!140 = distinct !{null, !141, !"color_null", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/gspca/topro.c", i32 1474, i32 17}
!142 = !{ptr @tp6810_late_start, !143, !"tp6810_late_start", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/gspca/topro.c", i32 832, i32 25}
!144 = !{ptr @.str.24, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/gspca/topro.c", i32 4618, i32 5}
!146 = !{ptr @.str.25, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @sd_pkt_scan._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @sd_pkt_scan._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = distinct !{null, !150, !"cx_sensor_init", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/gspca/topro.c", i32 4098, i32 26}
!151 = distinct !{null, !152, !"cx_bridge_init", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/gspca/topro.c", i32 4108, i32 26}
!153 = distinct !{null, !154, !"ov_sensor_init", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/gspca/topro.c", i32 4114, i32 26}
!155 = distinct !{null, !156, !"ov_bridge_init", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/gspca/topro.c", i32 4119, i32 26}
!157 = !{ptr @.str.26, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/gspca/topro.c", i32 4712, i32 4}
!159 = !{ptr @.str.27, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @sd_dq_callback._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @sd_dq_callback._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @sd_dq_callback._entry.28, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/gspca/topro.c", i32 4728, i32 4}
!164 = !{ptr @sd_dq_callback._entry_ptr.29, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @device_table, !166, !"device_table", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/gspca/topro.c", i32 4941, i32 35}
!167 = !{ptr @__param_str_force_sensor, !11, !"__param_str_force_sensor", i1 false, i1 false}
!168 = !{ptr @force_sensor, !169, !"force_sensor", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/gspca/topro.c", i32 18, i32 12}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
!180 = !{i8 0, i8 2}
