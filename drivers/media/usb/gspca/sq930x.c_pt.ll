; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/sq930x.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/sq930x.c"
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sensor_s = type { ptr, i8, i8, [5 x i8], i8, ptr }
%struct.ucbus_write_cmd = type { i16, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_write_cmd = type { i8, i16 }
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
%struct.sd = type { %struct.gspca_dev, %struct.anon.107, i8, [2 x i8], i8, i8 }
%struct.anon.107 = type { ptr, ptr }
%struct.cap_s = type { i8, [32 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [151 x i8] c"gspca_sq930x.author=Jean-Francois Moine <http://moinejf.free.fr>\0AGerard Klaver <gerard at gkall dot hobby dot nl\0ASam Revitch <samr7@cs.washington.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [56 x i8] c"gspca_sq930x.description=GSPCA/SQ930x USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_sq930x.file=drivers/media/usb/gspca/gspca_sq930x\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_sq930x.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_sq930x__307_1156_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_sq930x\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sq930x\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1054, i16 16440, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 1054, i16 16444, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1054, i16 16445, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1054, i16 16449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 257 }, %struct.usb_device_id { i16 3, i16 10096, i16 -27893, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 10096, i16 -27892, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr @sd_stopN, ptr null, ptr @sd_dq_callback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal global { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1111967570, i32 1, i32 320, i32 76800, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1111967570, i32 1, i32 640, i32 307200, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: info: %*ph\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/sq930x.c\00", [63 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sd_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: Sensor %s\0A\00", [47 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.7 = internal global ptr @sd_init._entry.5, section ".printk_index", align 4
@sensor_tb = internal constant { [6 x %struct.sensor_s], [32 x i8] } { [6 x %struct.sensor_s] [%struct.sensor_s { ptr @.str.31, i8 0, i8 0, [5 x i8] c"\00\03\01\00\04", i8 8, ptr @icx098bq_start_0 }, %struct.sensor_s { ptr @.str.32, i8 0, i8 0, [5 x i8] c"\00\03\01\00\04", i8 8, ptr @lz24bp_start_0 }, %struct.sensor_s { ptr @.str.33, i8 93, i8 -128, [5 x i8] c"\04\03\01\00\00", i8 7, ptr @mi0360_start_0 }, %struct.sensor_s { ptr @.str.34, i8 92, i8 127, [5 x i8] c"\04\03\01\00\00", i8 7, ptr @mi0360_start_0 }, %struct.sensor_s { ptr @.str.35, i8 33, i8 0, [5 x i8] c"\00\03\01\00\04", i8 7, ptr @ov7660_start_0 }, %struct.sensor_s { ptr @.str.36, i8 48, i8 0, [5 x i8] c"\00\03\01\00\04", i8 7, ptr @ov9630_start_0 }], [32 x i8] zeroinitializer }, align 32
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_sq930x: reg_r %04x failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@bridge_init.clkfreq_cmd = internal constant { %struct.ucbus_write_cmd, [28 x i8] } { %struct.ucbus_write_cmd { i16 -4047, i8 0 }, [28 x i8] zeroinitializer }, align 32
@ucbus_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Bug: usb_buf overflow\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ucbus_write\00", [20 x i8] zeroinitializer }, align 32
@ucbus_write._entry_ptr = internal global ptr @ucbus_write._entry, section ".printk_index", align 4
@ucbus_write._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: ucbus v: %04x i: %04x %02x...%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@ucbus_write._entry_ptr.14 = internal global ptr @ucbus_write._entry.12, section ".printk_index", align 4
@ucbus_write._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ucbus v: %04x i: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@ucbus_write._entry_ptr.17 = internal global ptr @ucbus_write._entry.15, section ".printk_index", align 4
@ucbus_write._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.4, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gspca_sq930x: ucbus_write failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ucbus_write._entry_ptr.20 = internal global ptr @ucbus_write._entry.18, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: reg_w v: %04x i: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013gspca_sq930x: reg_w %04x %04x failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.25 = internal global ptr @reg_w._entry.23, section ".printk_index", align 4
@cmos_probe.probe_order = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\05\02\04\03", [28 x i8] zeroinitializer }, align 32
@cmos_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gspca_sq930x: Unknown sensor\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmos_probe\00", [21 x i8] zeroinitializer }, align 32
@cmos_probe._entry_ptr = internal global ptr @cmos_probe._entry, section ".printk_index", align 4
@cmos_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013gspca_sq930x: Sensor %s not yet treated\0A\00", [53 x i8] zeroinitializer }, align 32
@cmos_probe._entry_ptr.30 = internal global ptr @cmos_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icx098bp\00", [23 x i8] zeroinitializer }, align 32
@icx098bq_start_0 = internal constant { [101 x %struct.ucbus_write_cmd], [108 x i8] } { [101 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 852, i8 0 }, %struct.ucbus_write_cmd { i16 1018, i8 0 }, %struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2047, i8 -50 }, %struct.ucbus_write_cmd { i16 -2046, i8 -63 }, %struct.ucbus_write_cmd { i16 -2044, i8 0 }, %struct.ucbus_write_cmd { i16 -2040, i8 0 }, %struct.ucbus_write_cmd { i16 -2039, i8 14 }, %struct.ucbus_write_cmd { i16 -2038, i8 1 }, %struct.ucbus_write_cmd { i16 -2037, i8 -18 }, %struct.ucbus_write_cmd { i16 -2041, i8 96 }, %struct.ucbus_write_cmd { i16 -2036, i8 2 }, %struct.ucbus_write_cmd { i16 -2035, i8 -16 }, %struct.ucbus_write_cmd { i16 -2034, i8 3 }, %struct.ucbus_write_cmd { i16 -2033, i8 10 }, %struct.ucbus_write_cmd { i16 -2020, i8 2 }, %struct.ucbus_write_cmd { i16 -2019, i8 -16 }, %struct.ucbus_write_cmd { i16 -2018, i8 3 }, %struct.ucbus_write_cmd { i16 -2017, i8 10 }, %struct.ucbus_write_cmd { i16 -1990, i8 0 }, %struct.ucbus_write_cmd { i16 -1989, i8 16 }, %struct.ucbus_write_cmd { i16 -1988, i8 0 }, %struct.ucbus_write_cmd { i16 -1987, i8 78 }, %struct.ucbus_write_cmd { i16 -2032, i8 4 }, %struct.ucbus_write_cmd { i16 -2031, i8 0 }, %struct.ucbus_write_cmd { i16 -2030, i8 2 }, %struct.ucbus_write_cmd { i16 -2029, i8 16 }, %struct.ucbus_write_cmd { i16 -2045, i8 0 }, %struct.ucbus_write_cmd { i16 -2028, i8 1 }, %struct.ucbus_write_cmd { i16 -2027, i8 24 }, %struct.ucbus_write_cmd { i16 -2026, i8 0 }, %struct.ucbus_write_cmd { i16 -2025, i8 72 }, %struct.ucbus_write_cmd { i16 -2024, i8 0 }, %struct.ucbus_write_cmd { i16 -2023, i8 37 }, %struct.ucbus_write_cmd { i16 -2022, i8 0 }, %struct.ucbus_write_cmd { i16 -2021, i8 60 }, %struct.ucbus_write_cmd { i16 -2001, i8 3 }, %struct.ucbus_write_cmd { i16 -2016, i8 -1 }, %struct.ucbus_write_cmd { i16 -2015, i8 13 }, %struct.ucbus_write_cmd { i16 -2014, i8 -1 }, %struct.ucbus_write_cmd { i16 -2013, i8 7 }, %struct.ucbus_write_cmd { i16 -2012, i8 -1 }, %struct.ucbus_write_cmd { i16 -2011, i8 3 }, %struct.ucbus_write_cmd { i16 -2010, i8 -1 }, %struct.ucbus_write_cmd { i16 -2009, i8 6 }, %struct.ucbus_write_cmd { i16 -2008, i8 -1 }, %struct.ucbus_write_cmd { i16 -2007, i8 3 }, %struct.ucbus_write_cmd { i16 -2006, i8 -1 }, %struct.ucbus_write_cmd { i16 -2005, i8 12 }, %struct.ucbus_write_cmd { i16 -2004, i8 -3 }, %struct.ucbus_write_cmd { i16 -2003, i8 1 }, %struct.ucbus_write_cmd { i16 -2002, i8 0 }, %struct.ucbus_write_cmd { i16 -2000, i8 0 }, %struct.ucbus_write_cmd { i16 -1999, i8 71 }, %struct.ucbus_write_cmd { i16 -1998, i8 0 }, %struct.ucbus_write_cmd { i16 -1997, i8 0 }, %struct.ucbus_write_cmd { i16 -1968, i8 0 }, %struct.ucbus_write_cmd { i16 -1967, i8 0 }, %struct.ucbus_write_cmd { i16 -1966, i8 0 }, %struct.ucbus_write_cmd { i16 -1965, i8 36 }, %struct.ucbus_write_cmd { i16 -1964, i8 0 }, %struct.ucbus_write_cmd { i16 -1963, i8 24 }, %struct.ucbus_write_cmd { i16 -1962, i8 0 }, %struct.ucbus_write_cmd { i16 -1961, i8 60 }, %struct.ucbus_write_cmd { i16 -1960, i8 0 }, %struct.ucbus_write_cmd { i16 -1959, i8 12 }, %struct.ucbus_write_cmd { i16 -1958, i8 0 }, %struct.ucbus_write_cmd { i16 -1957, i8 48 }, %struct.ucbus_write_cmd { i16 -1956, i8 0 }, %struct.ucbus_write_cmd { i16 -1955, i8 12 }, %struct.ucbus_write_cmd { i16 -1954, i8 0 }, %struct.ucbus_write_cmd { i16 -1953, i8 48 }, %struct.ucbus_write_cmd { i16 -1952, i8 0 }, %struct.ucbus_write_cmd { i16 -1951, i8 72 }, %struct.ucbus_write_cmd { i16 -1950, i8 1 }, %struct.ucbus_write_cmd { i16 -1949, i8 -36 }, %struct.ucbus_write_cmd { i16 -1948, i8 -1 }, %struct.ucbus_write_cmd { i16 -1947, i8 -104 }, %struct.ucbus_write_cmd { i16 -1946, i8 -1 }, %struct.ucbus_write_cmd { i16 -1945, i8 -64 }, %struct.ucbus_write_cmd { i16 -1944, i8 -1 }, %struct.ucbus_write_cmd { i16 -1943, i8 112 }, %struct.ucbus_write_cmd { i16 -1940, i8 -1 }, %struct.ucbus_write_cmd { i16 -1939, i8 0 }, %struct.ucbus_write_cmd { i16 -1942, i8 -1 }, %struct.ucbus_write_cmd { i16 -1941, i8 72 }, %struct.ucbus_write_cmd { i16 -1938, i8 -1 }, %struct.ucbus_write_cmd { i16 -1937, i8 0 }, %struct.ucbus_write_cmd { i16 -1936, i8 1 }, %struct.ucbus_write_cmd { i16 -1935, i8 -37 }, %struct.ucbus_write_cmd { i16 -1934, i8 1 }, %struct.ucbus_write_cmd { i16 -1933, i8 -6 }, %struct.ucbus_write_cmd { i16 -1932, i8 1 }, %struct.ucbus_write_cmd { i16 -1931, i8 -37 }, %struct.ucbus_write_cmd { i16 -1930, i8 1 }, %struct.ucbus_write_cmd { i16 -1929, i8 -6 }, %struct.ucbus_write_cmd { i16 -1928, i8 15 }, %struct.ucbus_write_cmd { i16 -1927, i8 15 }, %struct.ucbus_write_cmd { i16 -1926, i8 -1 }, %struct.ucbus_write_cmd { i16 -1925, i8 -1 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }], [108 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lz24bp\00", [25 x i8] zeroinitializer }, align 32
@lz24bp_start_0 = internal constant { [101 x %struct.ucbus_write_cmd], [108 x i8] } { [101 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 852, i8 0 }, %struct.ucbus_write_cmd { i16 1018, i8 0 }, %struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2047, i8 -66 }, %struct.ucbus_write_cmd { i16 -2046, i8 -58 }, %struct.ucbus_write_cmd { i16 -2044, i8 0 }, %struct.ucbus_write_cmd { i16 -2040, i8 0 }, %struct.ucbus_write_cmd { i16 -2039, i8 6 }, %struct.ucbus_write_cmd { i16 -2038, i8 1 }, %struct.ucbus_write_cmd { i16 -2037, i8 -2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -124 }, %struct.ucbus_write_cmd { i16 -2036, i8 2 }, %struct.ucbus_write_cmd { i16 -2035, i8 -9 }, %struct.ucbus_write_cmd { i16 -2034, i8 3 }, %struct.ucbus_write_cmd { i16 -2033, i8 11 }, %struct.ucbus_write_cmd { i16 -2020, i8 0 }, %struct.ucbus_write_cmd { i16 -2019, i8 73 }, %struct.ucbus_write_cmd { i16 -2018, i8 3 }, %struct.ucbus_write_cmd { i16 -2017, i8 11 }, %struct.ucbus_write_cmd { i16 -1990, i8 0 }, %struct.ucbus_write_cmd { i16 -1989, i8 1 }, %struct.ucbus_write_cmd { i16 -1988, i8 0 }, %struct.ucbus_write_cmd { i16 -1987, i8 107 }, %struct.ucbus_write_cmd { i16 -2032, i8 3 }, %struct.ucbus_write_cmd { i16 -2031, i8 16 }, %struct.ucbus_write_cmd { i16 -2030, i8 2 }, %struct.ucbus_write_cmd { i16 -2029, i8 111 }, %struct.ucbus_write_cmd { i16 -2045, i8 0 }, %struct.ucbus_write_cmd { i16 -2028, i8 0 }, %struct.ucbus_write_cmd { i16 -2027, i8 68 }, %struct.ucbus_write_cmd { i16 -2026, i8 0 }, %struct.ucbus_write_cmd { i16 -2025, i8 72 }, %struct.ucbus_write_cmd { i16 -2024, i8 0 }, %struct.ucbus_write_cmd { i16 -2023, i8 37 }, %struct.ucbus_write_cmd { i16 -2022, i8 0 }, %struct.ucbus_write_cmd { i16 -2021, i8 60 }, %struct.ucbus_write_cmd { i16 -2001, i8 3 }, %struct.ucbus_write_cmd { i16 -2016, i8 -1 }, %struct.ucbus_write_cmd { i16 -2015, i8 13 }, %struct.ucbus_write_cmd { i16 -2014, i8 -1 }, %struct.ucbus_write_cmd { i16 -2013, i8 7 }, %struct.ucbus_write_cmd { i16 -2012, i8 -3 }, %struct.ucbus_write_cmd { i16 -2011, i8 7 }, %struct.ucbus_write_cmd { i16 -2010, i8 -16 }, %struct.ucbus_write_cmd { i16 -2009, i8 12 }, %struct.ucbus_write_cmd { i16 -2008, i8 -1 }, %struct.ucbus_write_cmd { i16 -2007, i8 3 }, %struct.ucbus_write_cmd { i16 -2006, i8 -1 }, %struct.ucbus_write_cmd { i16 -2005, i8 12 }, %struct.ucbus_write_cmd { i16 -2004, i8 -4 }, %struct.ucbus_write_cmd { i16 -2003, i8 1 }, %struct.ucbus_write_cmd { i16 -2002, i8 0 }, %struct.ucbus_write_cmd { i16 -2000, i8 0 }, %struct.ucbus_write_cmd { i16 -1999, i8 71 }, %struct.ucbus_write_cmd { i16 -1998, i8 0 }, %struct.ucbus_write_cmd { i16 -1997, i8 0 }, %struct.ucbus_write_cmd { i16 -1968, i8 0 }, %struct.ucbus_write_cmd { i16 -1967, i8 0 }, %struct.ucbus_write_cmd { i16 -1966, i8 0 }, %struct.ucbus_write_cmd { i16 -1965, i8 36 }, %struct.ucbus_write_cmd { i16 -1964, i8 0 }, %struct.ucbus_write_cmd { i16 -1963, i8 12 }, %struct.ucbus_write_cmd { i16 -1962, i8 0 }, %struct.ucbus_write_cmd { i16 -1961, i8 48 }, %struct.ucbus_write_cmd { i16 -1960, i8 0 }, %struct.ucbus_write_cmd { i16 -1959, i8 24 }, %struct.ucbus_write_cmd { i16 -1958, i8 0 }, %struct.ucbus_write_cmd { i16 -1957, i8 60 }, %struct.ucbus_write_cmd { i16 -1956, i8 0 }, %struct.ucbus_write_cmd { i16 -1955, i8 24 }, %struct.ucbus_write_cmd { i16 -1954, i8 0 }, %struct.ucbus_write_cmd { i16 -1953, i8 60 }, %struct.ucbus_write_cmd { i16 -1952, i8 -1 }, %struct.ucbus_write_cmd { i16 -1951, i8 55 }, %struct.ucbus_write_cmd { i16 -1950, i8 -1 }, %struct.ucbus_write_cmd { i16 -1949, i8 29 }, %struct.ucbus_write_cmd { i16 -1948, i8 -1 }, %struct.ucbus_write_cmd { i16 -1947, i8 -104 }, %struct.ucbus_write_cmd { i16 -1946, i8 -1 }, %struct.ucbus_write_cmd { i16 -1945, i8 -64 }, %struct.ucbus_write_cmd { i16 -1944, i8 0 }, %struct.ucbus_write_cmd { i16 -1943, i8 55 }, %struct.ucbus_write_cmd { i16 -1940, i8 2 }, %struct.ucbus_write_cmd { i16 -1939, i8 29 }, %struct.ucbus_write_cmd { i16 -1942, i8 0 }, %struct.ucbus_write_cmd { i16 -1941, i8 55 }, %struct.ucbus_write_cmd { i16 -1938, i8 2 }, %struct.ucbus_write_cmd { i16 -1937, i8 29 }, %struct.ucbus_write_cmd { i16 -1936, i8 1 }, %struct.ucbus_write_cmd { i16 -1935, i8 -58 }, %struct.ucbus_write_cmd { i16 -1934, i8 2 }, %struct.ucbus_write_cmd { i16 -1933, i8 4 }, %struct.ucbus_write_cmd { i16 -1932, i8 1 }, %struct.ucbus_write_cmd { i16 -1931, i8 -58 }, %struct.ucbus_write_cmd { i16 -1930, i8 2 }, %struct.ucbus_write_cmd { i16 -1929, i8 4 }, %struct.ucbus_write_cmd { i16 -1928, i8 15 }, %struct.ucbus_write_cmd { i16 -1927, i8 15 }, %struct.ucbus_write_cmd { i16 -1926, i8 -1 }, %struct.ucbus_write_cmd { i16 -1925, i8 -1 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }], [108 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mi0360\00", [25 x i8] zeroinitializer }, align 32
@mi0360_start_0 = internal constant { [7 x %struct.ucbus_write_cmd], [36 x i8] } { [7 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 852, i8 0 }, %struct.ucbus_write_cmd { i16 1018, i8 0 }, %struct.ucbus_write_cmd { i16 -3278, i8 -52 }, %struct.ucbus_write_cmd { i16 -3277, i8 -52 }, %struct.ucbus_write_cmd { i16 -3276, i8 -52 }, %struct.ucbus_write_cmd { i16 -3275, i8 -52 }, %struct.ucbus_write_cmd { i16 -3265, i8 0 }], [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt9v111\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov7660\00", [25 x i8] zeroinitializer }, align 32
@ov7660_start_0 = internal constant { [7 x %struct.ucbus_write_cmd], [36 x i8] } { [7 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 852, i8 0 }, %struct.ucbus_write_cmd { i16 1018, i8 0 }, %struct.ucbus_write_cmd { i16 -3278, i8 0 }, %struct.ucbus_write_cmd { i16 -3277, i8 -64 }, %struct.ucbus_write_cmd { i16 -3276, i8 57 }, %struct.ucbus_write_cmd { i16 -3275, i8 -25 }, %struct.ucbus_write_cmd { i16 -3265, i8 3 }], [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ov9630\00", [25 x i8] zeroinitializer }, align 32
@ov9630_start_0 = internal constant { [7 x %struct.ucbus_write_cmd], [36 x i8] } { [7 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 852, i8 0 }, %struct.ucbus_write_cmd { i16 1018, i8 0 }, %struct.ucbus_write_cmd { i16 -3278, i8 0 }, %struct.ucbus_write_cmd { i16 -3277, i8 0 }, %struct.ucbus_write_cmd { i16 -3276, i8 62 }, %struct.ucbus_write_cmd { i16 -3275, i8 -8 }, %struct.ucbus_write_cmd { i16 -3265, i8 3 }], [36 x i8] zeroinitializer }, align 32
@mt9v111_init.cmd_001b = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00;\F6\01\03\02\00\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@mt9v111_init.cmd_011b = internal constant { [4 x [7 x i8]], [36 x i8] } { [4 x [7 x i8]] [[7 x i8] c"\10\01f\08\00\00\00", [7 x i8] c"\01\00\1A\04\00\00\00", [7 x i8] c" \00\10\04\00\00\00", [7 x i8] c"\02\01\AE\01\00\00\00"], [36 x i8] zeroinitializer }, align 32
@mt9v111_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: mt9v111_init timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt9v111_init\00", [19 x i8] zeroinitializer }, align 32
@mt9v111_init._entry_ptr = internal global ptr @mt9v111_init._entry, section ".printk_index", align 4
@reg_wb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: reg_wb v: %04x i: %04x %02x...%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_wb\00", [25 x i8] zeroinitializer }, align 32
@reg_wb._entry_ptr = internal global ptr @reg_wb._entry, section ".printk_index", align 4
@reg_wb._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013gspca_sq930x: reg_wb %04x %04x failed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@reg_wb._entry_ptr.43 = internal global ptr @reg_wb._entry.41, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sq930x:1093:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_sq930x: Could not initialize controls\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@icx098bq_start_1 = internal constant { [15 x %struct.ucbus_write_cmd], [36 x i8] } { [15 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 -2576, i8 0 }, %struct.ucbus_write_cmd { i16 -2575, i8 -51 }, %struct.ucbus_write_cmd { i16 -2574, i8 -128 }, %struct.ucbus_write_cmd { i16 -2573, i8 -128 }, %struct.ucbus_write_cmd { i16 -2572, i8 -64 }, %struct.ucbus_write_cmd { i16 -2576, i8 73 }, %struct.ucbus_write_cmd { i16 -2575, i8 -51 }, %struct.ucbus_write_cmd { i16 -2574, i8 -128 }, %struct.ucbus_write_cmd { i16 -2573, i8 -128 }, %struct.ucbus_write_cmd { i16 -2572, i8 -64 }, %struct.ucbus_write_cmd { i16 -2566, i8 0 }, %struct.ucbus_write_cmd { i16 -2570, i8 0 }, %struct.ucbus_write_cmd { i16 -2569, i8 0 }, %struct.ucbus_write_cmd { i16 -2568, i8 0 }, %struct.ucbus_write_cmd { i16 -2567, i8 0 }], [36 x i8] zeroinitializer }, align 32
@icx098bq_start_2 = internal constant { [24 x %struct.ucbus_write_cmd], [32 x i8] } { [24 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -1 }, %struct.ucbus_write_cmd { i16 -2043, i8 -126 }, %struct.ucbus_write_cmd { i16 -2042, i8 0 }, %struct.ucbus_write_cmd { i16 -2041, i8 127 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }, %struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -1 }, %struct.ucbus_write_cmd { i16 -2043, i8 64 }, %struct.ucbus_write_cmd { i16 -2042, i8 0 }, %struct.ucbus_write_cmd { i16 -2041, i8 127 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }, %struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -1 }, %struct.ucbus_write_cmd { i16 -2043, i8 -49 }, %struct.ucbus_write_cmd { i16 -2042, i8 -48 }, %struct.ucbus_write_cmd { i16 -2041, i8 127 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }, %struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -1 }, %struct.ucbus_write_cmd { i16 -2043, i8 0 }, %struct.ucbus_write_cmd { i16 -2042, i8 0 }, %struct.ucbus_write_cmd { i16 -2041, i8 127 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }], [32 x i8] zeroinitializer }, align 32
@lz24bp_start_1_gen = internal constant { [15 x %struct.ucbus_write_cmd], [36 x i8] } { [15 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 -2576, i8 0 }, %struct.ucbus_write_cmd { i16 -2575, i8 -1 }, %struct.ucbus_write_cmd { i16 -2574, i8 -128 }, %struct.ucbus_write_cmd { i16 -2573, i8 -128 }, %struct.ucbus_write_cmd { i16 -2572, i8 -77 }, %struct.ucbus_write_cmd { i16 -2576, i8 64 }, %struct.ucbus_write_cmd { i16 -2575, i8 -1 }, %struct.ucbus_write_cmd { i16 -2574, i8 -128 }, %struct.ucbus_write_cmd { i16 -2573, i8 -128 }, %struct.ucbus_write_cmd { i16 -2572, i8 -77 }, %struct.ucbus_write_cmd { i16 -2566, i8 0 }, %struct.ucbus_write_cmd { i16 -2570, i8 0 }, %struct.ucbus_write_cmd { i16 -2569, i8 0 }, %struct.ucbus_write_cmd { i16 -2568, i8 0 }, %struct.ucbus_write_cmd { i16 -2567, i8 0 }], [36 x i8] zeroinitializer }, align 32
@lz24bp_start_1_clm = internal constant { [15 x %struct.ucbus_write_cmd], [36 x i8] } { [15 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 -2576, i8 0 }, %struct.ucbus_write_cmd { i16 -2575, i8 -1 }, %struct.ucbus_write_cmd { i16 -2574, i8 -120 }, %struct.ucbus_write_cmd { i16 -2573, i8 -120 }, %struct.ucbus_write_cmd { i16 -2572, i8 -64 }, %struct.ucbus_write_cmd { i16 -2576, i8 64 }, %struct.ucbus_write_cmd { i16 -2575, i8 -1 }, %struct.ucbus_write_cmd { i16 -2574, i8 -120 }, %struct.ucbus_write_cmd { i16 -2573, i8 -120 }, %struct.ucbus_write_cmd { i16 -2572, i8 -64 }, %struct.ucbus_write_cmd { i16 -2566, i8 0 }, %struct.ucbus_write_cmd { i16 -2570, i8 0 }, %struct.ucbus_write_cmd { i16 -2569, i8 0 }, %struct.ucbus_write_cmd { i16 -2568, i8 0 }, %struct.ucbus_write_cmd { i16 -2567, i8 0 }], [36 x i8] zeroinitializer }, align 32
@lz24bp_start_2 = internal constant { [24 x %struct.ucbus_write_cmd], [32 x i8] } { [24 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -1 }, %struct.ucbus_write_cmd { i16 -2043, i8 -128 }, %struct.ucbus_write_cmd { i16 -2042, i8 0 }, %struct.ucbus_write_cmd { i16 -2041, i8 127 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }, %struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -1 }, %struct.ucbus_write_cmd { i16 -2043, i8 78 }, %struct.ucbus_write_cmd { i16 -2042, i8 0 }, %struct.ucbus_write_cmd { i16 -2041, i8 127 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }, %struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -1 }, %struct.ucbus_write_cmd { i16 -2043, i8 -64 }, %struct.ucbus_write_cmd { i16 -2042, i8 72 }, %struct.ucbus_write_cmd { i16 -2041, i8 127 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }, %struct.ucbus_write_cmd { i16 -2048, i8 2 }, %struct.ucbus_write_cmd { i16 -2041, i8 -1 }, %struct.ucbus_write_cmd { i16 -2043, i8 0 }, %struct.ucbus_write_cmd { i16 -2042, i8 0 }, %struct.ucbus_write_cmd { i16 -2041, i8 127 }, %struct.ucbus_write_cmd { i16 -2048, i8 3 }], [32 x i8] zeroinitializer }, align 32
@mi0360_init_23 = internal constant { [4 x %struct.i2c_write_cmd], [16 x i8] } { [4 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 48, i16 64 }, %struct.i2c_write_cmd { i8 49, i16 0 }, %struct.i2c_write_cmd { i8 52, i16 256 }, %struct.i2c_write_cmd { i8 61, i16 1679 }], [16 x i8] zeroinitializer }, align 32
@mi0360_init_24 = internal constant { [2 x %struct.i2c_write_cmd], [24 x i8] } { [2 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 3, i16 485 }, %struct.i2c_write_cmd { i8 4, i16 645 }], [24 x i8] zeroinitializer }, align 32
@mi0360_init_25 = internal constant { [5 x %struct.i2c_write_cmd], [44 x i8] } { [5 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 53, i16 32 }, %struct.i2c_write_cmd { i8 43, i16 32 }, %struct.i2c_write_cmd { i8 44, i16 42 }, %struct.i2c_write_cmd { i8 45, i16 40 }, %struct.i2c_write_cmd { i8 46, i16 32 }], [44 x i8] zeroinitializer }, align 32
@mi0360_start_1 = internal constant { [15 x %struct.ucbus_write_cmd], [36 x i8] } { [15 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 -2576, i8 17 }, %struct.ucbus_write_cmd { i16 -2575, i8 -103 }, %struct.ucbus_write_cmd { i16 -2574, i8 -128 }, %struct.ucbus_write_cmd { i16 -2573, i8 -128 }, %struct.ucbus_write_cmd { i16 -2572, i8 -90 }, %struct.ucbus_write_cmd { i16 -2576, i8 81 }, %struct.ucbus_write_cmd { i16 -2575, i8 -103 }, %struct.ucbus_write_cmd { i16 -2574, i8 -128 }, %struct.ucbus_write_cmd { i16 -2573, i8 -128 }, %struct.ucbus_write_cmd { i16 -2572, i8 -90 }, %struct.ucbus_write_cmd { i16 -2566, i8 0 }, %struct.ucbus_write_cmd { i16 -2570, i8 0 }, %struct.ucbus_write_cmd { i16 -2569, i8 0 }, %struct.ucbus_write_cmd { i16 -2568, i8 0 }, %struct.ucbus_write_cmd { i16 -2567, i8 0 }], [36 x i8] zeroinitializer }, align 32
@mi0360_start_2 = internal constant { [1 x %struct.i2c_write_cmd], [28 x i8] } { [1 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 98, i16 1053 }], [28 x i8] zeroinitializer }, align 32
@mi0360_start_3 = internal constant { [1 x %struct.i2c_write_cmd], [28 x i8] } { [1 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 5, i16 123 }], [28 x i8] zeroinitializer }, align 32
@mi0360_start_4 = internal constant { [1 x %struct.i2c_write_cmd], [28 x i8] } { [1 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 5, i16 1013 }], [28 x i8] zeroinitializer }, align 32
@mt9v111_init_0 = internal constant { [4 x %struct.i2c_write_cmd], [16 x i8] } { [4 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 1, i16 1 }, %struct.i2c_write_cmd { i8 6, i16 12300 }, %struct.i2c_write_cmd { i8 8, i16 -13312 }, %struct.i2c_write_cmd { i8 1, i16 4 }], [16 x i8] zeroinitializer }, align 32
@mt9v111_init_1 = internal constant { [2 x %struct.i2c_write_cmd], [24 x i8] } { [2 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 3, i16 485 }, %struct.i2c_write_cmd { i8 4, i16 645 }], [24 x i8] zeroinitializer }, align 32
@mt9v111_init_2 = internal constant { [8 x %struct.i2c_write_cmd], [32 x i8] } { [8 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 48, i16 30720 }, %struct.i2c_write_cmd { i8 49, i16 0 }, %struct.i2c_write_cmd { i8 7, i16 12290 }, %struct.i2c_write_cmd { i8 53, i16 32 }, %struct.i2c_write_cmd { i8 43, i16 32 }, %struct.i2c_write_cmd { i8 44, i16 32 }, %struct.i2c_write_cmd { i8 45, i16 32 }, %struct.i2c_write_cmd { i8 46, i16 32 }], [32 x i8] zeroinitializer }, align 32
@mt9v111_start_1 = internal constant { [15 x %struct.ucbus_write_cmd], [36 x i8] } { [15 x %struct.ucbus_write_cmd] [%struct.ucbus_write_cmd { i16 -2576, i8 17 }, %struct.ucbus_write_cmd { i16 -2575, i8 -106 }, %struct.ucbus_write_cmd { i16 -2574, i8 -128 }, %struct.ucbus_write_cmd { i16 -2573, i8 -128 }, %struct.ucbus_write_cmd { i16 -2572, i8 -86 }, %struct.ucbus_write_cmd { i16 -2576, i8 81 }, %struct.ucbus_write_cmd { i16 -2575, i8 -106 }, %struct.ucbus_write_cmd { i16 -2574, i8 -128 }, %struct.ucbus_write_cmd { i16 -2573, i8 -128 }, %struct.ucbus_write_cmd { i16 -2572, i8 -86 }, %struct.ucbus_write_cmd { i16 -2566, i8 0 }, %struct.ucbus_write_cmd { i16 -2570, i8 10 }, %struct.ucbus_write_cmd { i16 -2569, i8 10 }, %struct.ucbus_write_cmd { i16 -2568, i8 10 }, %struct.ucbus_write_cmd { i16 -2567, i8 10 }], [36 x i8] zeroinitializer }, align 32
@mt9v111_init_3 = internal constant { [1 x %struct.i2c_write_cmd], [28 x i8] } { [1 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 98, i16 1029 }], [28 x i8] zeroinitializer }, align 32
@mt9v111_init_4 = internal constant { [1 x %struct.i2c_write_cmd], [28 x i8] } { [1 x %struct.i2c_write_cmd] [%struct.i2c_write_cmd { i8 5, i16 93 }], [28 x i8] zeroinitializer }, align 32
@capconfig = internal constant { [4 x [2 x { i8, <{ [16 x i8], [16 x i8] }> }]], [88 x i8] } { [4 x [2 x { i8, <{ [16 x i8], [16 x i8] }> }]] [[2 x { i8, <{ [16 x i8], [16 x i8] }> }] [{ i8, <{ [16 x i8], [16 x i8] }> } { i8 2, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\05\1F \0E\00\9F\02\EE\01\01\00\08\18\12x\C8", [16 x i8] zeroinitializer }> }, { i8, <{ [16 x i8], [16 x i8] }> } { i8 4, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\01\1F \0E\00\9F\02\EE\01\02\00\08\18\12x\C8", [16 x i8] zeroinitializer }> }], [2 x { i8, <{ [16 x i8], [16 x i8] }> }] [{ i8, <{ [16 x i8], [16 x i8] }> } { i8 2, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\05\22 \0E\00\A2\02\EE\01\01\00\08\18\12x\C8", [16 x i8] zeroinitializer }> }, { i8, <{ [16 x i8], [16 x i8] }> } { i8 4, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\01\22 \0E\00\A2\02\EE\01\02\00\08\18\12x\C8", [16 x i8] zeroinitializer }> }], [2 x { i8, <{ [16 x i8], [16 x i8] }> }] [{ i8, <{ [16 x i8], [16 x i8] }> } { i8 2, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\05\02 \01 \82\02\E1\01\01\00\08\18\12x\C8", [16 x i8] zeroinitializer }> }, { i8, <{ [16 x i8], [16 x i8] }> } { i8 4, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\01\02 \01 \82\02\E1\01\02\00\08\18\12x\C8", [16 x i8] zeroinitializer }> }], [2 x { i8, <{ [16 x i8], [16 x i8] }> }] [{ i8, <{ [16 x i8], [16 x i8] }> } { i8 2, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\05\02 \01 \82\02\E1\01\01\00\08\18\12x\C8", [16 x i8] zeroinitializer }> }, { i8, <{ [16 x i8], [16 x i8] }> } { i8 4, <{ [16 x i8], [16 x i8] }> <{ [16 x i8] c"\01\02 \01 \82\02\E1\01\02\00\08\18\12x\C8", [16 x i8] zeroinitializer }> }]], [88 x i8] zeroinitializer }, align 32
@i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: i2c_w v: %04x i: %04x %02x...%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_write\00", [22 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr = internal global ptr @i2c_write._entry, section ".printk_index", align 4
@i2c_write._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_sq930x: i2c_write failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr.52 = internal global ptr @i2c_write._entry.50, section ".printk_index", align 4
@sd_dq_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gspca_sq930x: sd_dq_callback() err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sd_dq_callback\00", [17 x i8] zeroinitializer }, align 32
@sd_dq_callback._entry_ptr = internal global ptr @sd_dq_callback._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1144, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1156, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1145, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1124, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1108, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 47, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 856, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 869, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"sensor_tb\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 343, i32 30 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 426, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"clkfreq_cmd\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 616, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 537, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 559, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 563, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 573, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 442, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 451, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"probe_order\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 630, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 649, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 657, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 345, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"icx098bq_start_0\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 89, i32 37 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 356, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"lz24bp_start_0\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 137, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 367, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [15 x i8] c"mi0360_start_0\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 194, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 378, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 389, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"ov7660_start_0\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 269, i32 37 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 400, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"ov9630_start_0\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 274, i32 37 }
@___asan_gen_.200 = private unnamed_addr constant [9 x i8] c"cmd_001b\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 667, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant [9 x i8] c"cmd_011b\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 671, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 690, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 463, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 474, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1093, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1083, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1100, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"icx098bq_start_1\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 117, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"icx098bq_start_2\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 126, i32 37 }
@___asan_gen_.254 = private unnamed_addr constant [19 x i8] c"lz24bp_start_1_gen\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 165, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant [19 x i8] c"lz24bp_start_1_clm\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 174, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"lz24bp_start_2\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 183, i32 37 }
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"mi0360_init_23\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 198, i32 35 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"mi0360_init_24\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 204, i32 35 }
@___asan_gen_.269 = private unnamed_addr constant [15 x i8] c"mi0360_init_25\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 208, i32 35 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"mi0360_start_1\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 215, i32 37 }
@___asan_gen_.275 = private unnamed_addr constant [15 x i8] c"mi0360_start_2\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 223, i32 35 }
@___asan_gen_.278 = private unnamed_addr constant [15 x i8] c"mi0360_start_3\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 226, i32 35 }
@___asan_gen_.281 = private unnamed_addr constant [15 x i8] c"mi0360_start_4\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 229, i32 35 }
@___asan_gen_.284 = private unnamed_addr constant [15 x i8] c"mt9v111_init_0\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 233, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"mt9v111_init_1\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 239, i32 35 }
@___asan_gen_.290 = private unnamed_addr constant [15 x i8] c"mt9v111_init_2\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 243, i32 35 }
@___asan_gen_.293 = private unnamed_addr constant [16 x i8] c"mt9v111_start_1\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 253, i32 37 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"mt9v111_init_3\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 261, i32 35 }
@___asan_gen_.299 = private unnamed_addr constant [15 x i8] c"mt9v111_init_4\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 264, i32 35 }
@___asan_gen_.302 = private unnamed_addr constant [10 x i8] c"capconfig\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 283, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 509, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 519, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [36 x i8] c"../drivers/media/usb/gspca/sq930x.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1045, i32 3 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_sq930x__307_1156_sd_driver_init6, ptr @cmos_probe._entry, ptr @cmos_probe._entry.28, ptr @cmos_probe._entry_ptr, ptr @cmos_probe._entry_ptr.30, ptr @i2c_write._entry, ptr @i2c_write._entry.50, ptr @i2c_write._entry_ptr, ptr @i2c_write._entry_ptr.52, ptr @mt9v111_init._entry, ptr @mt9v111_init._entry_ptr, ptr @reg_r._entry, ptr @reg_r._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry.23, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.25, ptr @reg_wb._entry, ptr @reg_wb._entry.41, ptr @reg_wb._entry_ptr, ptr @reg_wb._entry_ptr.43, ptr @sd_dq_callback._entry, ptr @sd_dq_callback._entry_ptr, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.5, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.7, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @ucbus_write._entry, ptr @ucbus_write._entry.12, ptr @ucbus_write._entry.15, ptr @ucbus_write._entry.18, ptr @ucbus_write._entry_ptr, ptr @ucbus_write._entry_ptr.14, ptr @ucbus_write._entry_ptr.17, ptr @ucbus_write._entry_ptr.20, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @sensor_tb, ptr @.str.8, ptr @.str.9, ptr @bridge_init.clkfreq_cmd, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @cmos_probe.probe_order, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @icx098bq_start_0, ptr @.str.32, ptr @lz24bp_start_0, ptr @.str.33, ptr @mi0360_start_0, ptr @.str.34, ptr @.str.35, ptr @ov7660_start_0, ptr @.str.36, ptr @ov9630_start_0, ptr @mt9v111_init.cmd_001b, ptr @mt9v111_init.cmd_011b, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @sd_init_controls._key, ptr @.str.44, ptr @sd_ctrl_ops, ptr @.str.45, ptr @.str.46, ptr @icx098bq_start_1, ptr @icx098bq_start_2, ptr @lz24bp_start_1_gen, ptr @lz24bp_start_1_clm, ptr @lz24bp_start_2, ptr @mi0360_init_23, ptr @mi0360_init_24, ptr @mi0360_init_25, ptr @mi0360_start_1, ptr @mi0360_start_2, ptr @mi0360_start_3, ptr @mi0360_start_4, ptr @mt9v111_init_0, ptr @mt9v111_init_1, ptr @mt9v111_init_2, ptr @mt9v111_start_1, ptr @mt9v111_init_3, ptr @mt9v111_init_4, ptr @capconfig, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_tb to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_init.clkfreq_cmd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucbus_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucbus_write._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucbus_write._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucbus_write._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_probe.probe_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmos_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icx098bq_start_0 to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz24bp_start_0 to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_start_0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_start_0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9630_start_0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init.cmd_001b to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init.cmd_011b to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_wb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_wb._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icx098bq_start_1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icx098bq_start_2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz24bp_start_1_gen to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz24bp_start_1_clm to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lz24bp_start_2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_init_23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_init_24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_init_25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_start_1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_start_2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_start_3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_start_4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init_1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_start_1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init_3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init_4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capconfig to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_dq_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2624, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %shr = lshr i32 %1, 8
  %conv = trunc i32 %shr to i8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %sensor, align 1
  %3 = load i32, ptr %driver_info, align 4
  %conv3 = trunc i32 %3 to i8
  %type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %type, align 4
  %5 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %nmodes, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %7 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %bulk, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %arrayidx = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %arrayidx, align 1
  %1 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %gpio, align 1
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %2 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %8 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or2.i, i8 noundef zeroext 12, i8 noundef zeroext -64, i16 noundef zeroext 31, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 8, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_r.exit_crit_edge

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 31, i32 noundef %call3.i) #10
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp slt i32 %.pr, 0
  br i1 %cmp, label %reg_r.exit.cleanup_crit_edge, label %do.body

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %reg_r.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4 = icmp sgt i32 %15, 0
  br i1 %cmp4, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef 8, ptr noundef %17) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_init.clkfreq_cmd, i32 noundef 1, i32 noundef 1) #7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %arrayidx, align 1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 773, i16 noundef zeroext -768) #7
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %19 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp10 = icmp eq i8 %20, 2
  br i1 %cmp10, label %if.then12, label %do.end9.if.end21_crit_edge

do.end9.if.end21_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then12:                                        ; preds = %do.end9
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx14 = getelementptr i8, ptr %22, i32 5
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %24)
  %cmp16 = icmp eq i8 %24, -10
  br i1 %cmp16, label %if.then18, label %if.then12.for.body.i_crit_edge

if.then12.for.body.i_crit_edge:                   ; preds = %if.then12
  br label %for.body.i

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sensor, align 1
  br label %if.end21

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then12.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then12.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i8], ptr @cmos_probe.probe_order, i32 0, i32 %i.045.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %27 to i32
  %cmd.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom.i, i32 5
  %28 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd.i, align 4
  %cmd_len.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom.i, i32 4
  %30 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cmd_len.i, align 1
  %conv.i = zext i8 %31 to i32
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef %29, i32 noundef %conv.i, i32 noundef 8) #7
  %gpio.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom.i, i32 3
  tail call fastcc void @gpio_init(ptr noundef %gspca_dev, ptr noundef %gpio.i) #7
  tail call void @msleep(i32 noundef 100) #7
  %i2c_addr.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom.i, i32 1
  %32 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i2c_addr.i, align 4
  %conv3.i = zext i8 %33 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, 28
  %34 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i = icmp slt i32 %35, 0
  br i1 %cmp.i.i, label %for.body.i.reg_r.exit.i_crit_edge, label %if.end.i.i

for.body.i.reg_r.exit.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i.i = shl i32 %39, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %40 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or2.i.i, i8 noundef zeroext 12, i8 noundef zeroext -64, i16 noundef zeroext %or.i, i16 noundef zeroext 0, ptr noundef %41, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.end.i.i.reg_r.exit.i_crit_edge

if.end.i.i.reg_r.exit.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i.i = zext i16 %or.i to i32
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv7.i.i, i32 noundef %call3.i.i) #10
  %42 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call3.i.i, ptr %usb_err.i, align 8
  %43 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i, align 4
  %45 = call ptr @memset(ptr %44, i32 0, i32 64)
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end.i.i, %if.end.i.i.reg_r.exit.i_crit_edge, %for.body.i.reg_r.exit.i_crit_edge
  tail call void @msleep(i32 noundef 100) #7
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp7.not.i = icmp eq i8 %49, 0
  br i1 %cmp7.not.i, label %for.inc.i, label %if.end12.i

for.inc.i:                                        ; preds = %reg_r.exit.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %do.end.i62, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i62:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %if.end21.thread

if.end12.i:                                       ; preds = %reg_r.exit.i
  %50 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %27, ptr %sensor, align 1
  %51 = and i32 %i.045.i, 2147483645
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %do.end19.i, label %if.end12.i.if.end21_crit_edge

if.end12.i.if.end21_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.le = zext i8 %27 to i32
  %arrayidx23.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom.i.le
  %53 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx23.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %54) #10
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %do.end19.i, %do.end.i62
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -22, ptr %usb_err.i, align 8
  br label %if.end44

if.end21:                                         ; preds = %if.end12.i.if.end21_crit_edge, %if.then18, %do.end9.if.end21_crit_edge
  %56 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr64 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr64)
  %cmp23 = icmp sgt i32 %.pr64, -1
  br i1 %cmp23, label %do.body26, label %if.end21.if.end44_crit_edge

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.body26:                                        ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %57 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp27 = icmp sgt i32 %57, 0
  br i1 %cmp27, label %do.end32, label %do.body26.do.end43_crit_edge

do.body26.do.end43_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %name35 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %58 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sensor, align 1
  %idxprom = zext i8 %59 to i32
  %arrayidx38 = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom
  %60 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx38, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name35, ptr noundef %61) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end32, %do.body26.do.end43_crit_edge
  tail call fastcc void @global_init(ptr noundef %gspca_dev, i32 noundef 1)
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %if.end21.if.end44_crit_edge, %if.end21.thread
  %62 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %reg_r.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %63, %if.end44 ], [ %.pr, %reg_r.exit.cleanup_crit_edge ], [ %3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 2, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.44) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 4095, i64 noundef 1, i64 noundef 854) #7
  %1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %1, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 1, i64 noundef 255, i64 noundef 1, i64 noundef 141) #7
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %gain, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %cmds.i = alloca [2 x %struct.ucbus_write_cmd], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_init.clkfreq_cmd, i32 noundef 1, i32 noundef 1) #7
  %arrayidx26.i.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %arrayidx26.i.i, align 1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 773, i16 noundef zeroext -768) #7
  tail call fastcc void @global_init(ptr noundef %gspca_dev, i32 noundef 0)
  tail call void @msleep(i32 noundef 100) #7
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sensor, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @icx098bq_start_0, i32 noundef 101, i32 noundef 8)
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @icx098bq_start_1, i32 noundef 15, i32 noundef 5)
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @icx098bq_start_2, i32 noundef 24, i32 noundef 6)
  tail call void @msleep(i32 noundef 50) #7
  %cam.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %4 = ptrtoint ptr %cam.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cam.i, align 4
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %6 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %curr_mode.i, align 1
  %idxprom.i = zext i8 %7 to i32
  %priv.i = getelementptr %struct.v4l2_pix_format, ptr %5, i32 %idxprom.i, i32 7
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priv.i, align 4
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor, align 1
  %idxprom1.i = zext i8 %11 to i32
  %arrayidx3.i = getelementptr [4 x [2 x %struct.cap_s]], ptr @capconfig, i32 0, i32 %idxprom1.i, i32 %9
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = zext i8 %13 to i16
  %or.i = or i16 %conv.i, 2560
  %cc_bytes.i = getelementptr [4 x [2 x %struct.cap_s]], ptr @capconfig, i32 0, i32 %idxprom1.i, i32 %9, i32 1
  tail call fastcc void @reg_wb(ptr noundef %gspca_dev, i16 noundef zeroext 2320, i16 noundef zeroext %or.i, ptr noundef %cc_bytes.i, i32 noundef 32) #7
  %gpio.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -124, ptr %gpio.i, align 1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 261, i16 noundef zeroext 31488) #7
  tail call void @msleep(i32 noundef 70) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 17, i16 noundef zeroext 0)
  %15 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 127, ptr %gpio.i, align 1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 261, i16 noundef zeroext -32768) #7
  %16 = ptrtoint ptr %cam.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cam.i, align 4
  %18 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %curr_mode.i, align 1
  %idxprom.i58 = zext i8 %19 to i32
  %priv.i59 = getelementptr %struct.v4l2_pix_format, ptr %17, i32 %idxprom.i58, i32 7
  %20 = ptrtoint ptr %priv.i59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %priv.i59, align 4
  %22 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sensor, align 1
  %idxprom1.i61 = zext i8 %23 to i32
  %arrayidx3.i62 = getelementptr [4 x [2 x %struct.cap_s]], ptr @capconfig, i32 0, i32 %idxprom1.i61, i32 %21
  %24 = ptrtoint ptr %arrayidx3.i62 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx3.i62, align 1
  %conv.i63 = zext i8 %25 to i16
  %or.i64 = or i16 %conv.i63, 2560
  %cc_bytes.i65 = getelementptr [4 x [2 x %struct.cap_s]], ptr @capconfig, i32 0, i32 %idxprom1.i61, i32 %21, i32 1
  tail call fastcc void @reg_wb(ptr noundef %gspca_dev, i16 noundef zeroext 2320, i16 noundef zeroext %or.i64, ptr noundef %cc_bytes.i65, i32 noundef 32) #7
  %26 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -124, ptr %gpio.i, align 1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 261, i16 noundef zeroext 31488) #7
  br label %out

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @lz24bp_start_0, i32 noundef 101, i32 noundef 8)
  %type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp.not = icmp eq i8 %28, 1
  %lz24bp_start_1_clm.lz24bp_start_1_gen = select i1 %cmp.not, ptr @lz24bp_start_1_clm, ptr @lz24bp_start_1_gen
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull %lz24bp_start_1_clm.lz24bp_start_1_gen, i32 noundef 15, i32 noundef 5)
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @lz24bp_start_2, i32 noundef 24, i32 noundef 6)
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %29 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %31 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %32 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %30, i32 %idxprom, i32 7
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp4 = icmp eq i32 %34, 1
  %conv6 = select i1 %cmp4, i16 1380, i16 784
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmds.i) #7
  %35 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -571675677832380417, ptr %cmds.i, align 8, !annotation !188
  %bw_data.i = getelementptr inbounds %struct.ucbus_write_cmd, ptr %cmds.i, i32 0, i32 1
  %36 = lshr i16 %conv6, 8
  %conv1.i = trunc i16 %36 to i8
  %37 = ptrtoint ptr %bw_data.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv1.i, ptr %bw_data.i, align 2
  %bw_data3.i = getelementptr inbounds %struct.ucbus_write_cmd, ptr %cmds.i, i32 1, i32 1
  %conv4.i = trunc i16 %conv6 to i8
  %38 = ptrtoint ptr %bw_data3.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv4.i, ptr %bw_data3.i, align 2
  call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull %cmds.i, i32 noundef 2, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmds.i) #7
  tail call void @msleep(i32 noundef 10) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_start_0, i32 noundef 7, i32 noundef 8)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_init_23, i32 noundef 4)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_init_24, i32 noundef 2)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_init_25, i32 noundef 5)
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_start_1, i32 noundef 15, i32 noundef 5)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_start_2, i32 noundef 1)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_start_3, i32 noundef 1)
  %cam.i67 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %39 = ptrtoint ptr %cam.i67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cam.i67, align 4
  %curr_mode.i68 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %41 = ptrtoint ptr %curr_mode.i68 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %curr_mode.i68, align 1
  %idxprom.i69 = zext i8 %42 to i32
  %priv.i70 = getelementptr %struct.v4l2_pix_format, ptr %40, i32 %idxprom.i69, i32 7
  %43 = ptrtoint ptr %priv.i70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %priv.i70, align 4
  %45 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sensor, align 1
  %idxprom1.i72 = zext i8 %46 to i32
  %arrayidx3.i73 = getelementptr [4 x [2 x %struct.cap_s]], ptr @capconfig, i32 0, i32 %idxprom1.i72, i32 %44
  %47 = ptrtoint ptr %arrayidx3.i73 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx3.i73, align 1
  %conv.i74 = zext i8 %48 to i16
  %or.i75 = or i16 %conv.i74, 2560
  %cc_bytes.i76 = getelementptr [4 x [2 x %struct.cap_s]], ptr @capconfig, i32 0, i32 %idxprom1.i72, i32 %44, i32 1
  tail call fastcc void @reg_wb(ptr noundef %gspca_dev, i16 noundef zeroext 2320, i16 noundef zeroext %or.i75, ptr noundef %cc_bytes.i76, i32 noundef 32) #7
  tail call void @msleep(i32 noundef 60) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 17, i16 noundef zeroext 0) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_start_4, i32 noundef 1)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @mi0360_start_0, i32 noundef 7, i32 noundef 8)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mt9v111_init_0, i32 noundef 4)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mt9v111_init_1, i32 noundef 2)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mt9v111_init_2, i32 noundef 8)
  tail call fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr noundef nonnull @mt9v111_start_1, i32 noundef 15, i32 noundef 5)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mt9v111_init_3, i32 noundef 1)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, ptr noundef nonnull @mt9v111_init_4, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb1
  %cam.i77 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %49 = ptrtoint ptr %cam.i77 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cam.i77, align 4
  %curr_mode.i78 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %51 = ptrtoint ptr %curr_mode.i78 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %curr_mode.i78, align 1
  %idxprom.i79 = zext i8 %52 to i32
  %priv.i80 = getelementptr %struct.v4l2_pix_format, ptr %50, i32 %idxprom.i79, i32 7
  %53 = ptrtoint ptr %priv.i80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %priv.i80, align 4
  %55 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sensor, align 1
  %idxprom1.i82 = zext i8 %56 to i32
  %arrayidx3.i83 = getelementptr [4 x [2 x %struct.cap_s]], ptr @capconfig, i32 0, i32 %idxprom1.i82, i32 %54
  %57 = ptrtoint ptr %arrayidx3.i83 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx3.i83, align 1
  %conv.i84 = zext i8 %58 to i16
  %or.i85 = or i16 %conv.i84, 2560
  %cc_bytes.i86 = getelementptr [4 x [2 x %struct.cap_s]], ptr @capconfig, i32 0, i32 %idxprom1.i82, i32 %54, i32 1
  tail call fastcc void @reg_wb(ptr noundef %gspca_dev, i16 noundef zeroext 2320, i16 noundef zeroext %or.i85, ptr noundef %cc_bytes.i86, i32 noundef 32) #7
  br label %out

out:                                              ; preds = %sw.epilog, %sw.bb
  tail call void @msleep(i32 noundef 1000) #7
  %59 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp10 = icmp eq i8 %60, 3
  br i1 %cmp10, label %if.then12, label %out.if.end13_crit_edge

out.if.end13_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx26.i.i, align 1
  %or34.i = or i8 %62, 16
  store i8 %or34.i, ptr %arrayidx26.i.i, align 1
  %conv38.i = zext i8 %or34.i to i16
  %neg39.i = xor i16 %conv38.i, -1
  %shl40.i = shl i16 %neg39.i, 8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 773, i16 noundef zeroext %shl40.i) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %out.if.end13_crit_edge
  %do_ctrl = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %63 = ptrtoint ptr %do_ctrl to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %do_ctrl, align 8
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %64 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %usb_err, align 8
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %do_ctrl = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %do_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %do_ctrl, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bulk_nurbs, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  %sub = add i32 %len, -8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %sub) #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_isoc_init(ptr nocapture noundef %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %bulk_nurbs, align 2
  %do_ctrl = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = ptrtoint ptr %do_ctrl to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %do_ctrl, align 8
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %2 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixfmt, align 8
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %5, %3
  %add = add i32 %mul, 8
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %bulk_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx26.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx26.i, align 1
  %and28.i = and i8 %3, -17
  store i8 %and28.i, ptr %arrayidx26.i, align 1
  %conv38.i = zext i8 %and28.i to i16
  %neg39.i = xor i16 %conv38.i, -1
  %shl40.i = shl i16 %neg39.i, 8
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 773, i16 noundef zeroext %shl40.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 17, i16 noundef zeroext 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_dq_callback(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %buf.i = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %do_ctrl = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %do_ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %do_ctrl, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bulk_nurbs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %do_ctrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %do_ctrl, align 8
  %5 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %7) #7
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gain, align 4
  %call3 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %9) #7
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %buf.i) #7
  %10 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 1
  %11 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 2
  %12 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 3
  %13 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 4
  %sensor1.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %14 = call ptr @memset(ptr %buf.i, i32 255, i32 15)
  %15 = ptrtoint ptr %sensor1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sensor1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %switch.i = icmp ult i8 %16, 2
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i = icmp eq i8 %16, 0
  %cond.i = select i1 %cmp.i, i32 528, i32 623
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %call)
  %cmp5.not.i = icmp sgt i32 %cond.i, %call
  %sub.i = sub i32 %cond.i, %call
  %intstartclk.0.i = select i1 %cmp5.not.i, i32 %sub.i, i32 0
  %17 = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 %call) #7
  %18 = lshr i32 %intstartclk.0.i, 8
  %conv7.i = trunc i32 %18 to i8
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7.i, ptr %buf.i, align 1
  %conv8.i = trunc i32 %intstartclk.0.i to i8
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8.i, ptr %10, align 1
  %21 = lshr i32 %17, 8
  %conv12.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv12.i, ptr %11, align 1
  %conv15.i = trunc i32 %17 to i8
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv15.i, ptr %12, align 1
  %conv18.i = trunc i32 %call3 to i8
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv18.i, ptr %13, align 1
  br label %setexposure.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 14
  %26 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 10
  %27 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 9
  %28 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 8
  %29 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 7
  %30 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 6
  %31 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 5
  %conv.i = zext i8 %16 to i32
  %i2c_addr.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %conv.i, i32 1
  %32 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i2c_addr.i, align 4
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %buf.i, align 1
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 8, ptr %10, align 1
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 9, ptr %11, align 1
  %37 = lshr i32 %call, 8
  %conv32.i = trunc i32 %37 to i8
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv32.i, ptr %12, align 1
  %i2c_dum.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %conv.i, i32 2
  %39 = ptrtoint ptr %i2c_dum.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %i2c_dum.i, align 1
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %13, align 1
  %conv37.i = trunc i32 %call to i8
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv37.i, ptr %31, align 1
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 53, ptr %30, align 1
  %44 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %29, align 1
  %45 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %40, ptr %28, align 1
  %div.i = sdiv i32 %call3, 2
  %46 = trunc i32 %div.i to i8
  %conv47.i = xor i8 %46, -128
  %47 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv47.i, ptr %27, align 1
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %26, align 1
  %49 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -125, ptr %25, align 1
  br label %setexposure.exit

setexposure.exit:                                 ; preds = %sw.default.i, %sw.bb.i
  %i.0.i = phi i32 [ 15, %sw.default.i ], [ 5, %sw.bb.i ]
  %cmd.0.i = phi i16 [ 285, %sw.default.i ], [ 29, %sw.bb.i ]
  call fastcc void @reg_wb(ptr noundef %gspca_dev, i16 noundef zeroext %cmd.0.i, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef %i.0.i) #7
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %buf.i) #7
  %50 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %bulk_nurbs, align 2
  %urb = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 11
  %51 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %urb, align 8
  %call6 = tail call i32 @usb_submit_urb(ptr noundef %52, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %setexposure.exit.if.end11_crit_edge

setexposure.exit.if.end11_crit_edge:              ; preds = %setexposure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %setexposure.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %call6) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end, %setexposure.exit.if.end11_crit_edge
  tail call void @msleep(i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @global_init(ptr noundef %sd, i32 noundef %first_time) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  %conv = zext i8 %1 to i32
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %1, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_time)
  %tobool.not = icmp eq i32 %first_time, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ucbus_write(ptr noundef %sd, ptr noundef nonnull @icx098bq_start_0, i32 noundef 8, i32 noundef 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sensor, align 1
  %idxprom = zext i8 %4 to i32
  %gpio = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom, i32 3
  tail call fastcc void @gpio_init(ptr noundef %sd, ptr noundef %gpio)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not = icmp eq i8 %6, 1
  %gpio.i55 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 3
  %. = select i1 %cmp.not, i8 0, i8 64
  %.58 = select i1 %cmp.not, i16 -256, i16 -16640
  %7 = ptrtoint ptr %gpio.i55 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %., ptr %gpio.i55, align 1
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 261, i16 noundef zeroext %.58) #7
  tail call void @msleep(i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_time)
  %tobool7.not = icmp eq i32 %first_time, 0
  br i1 %tobool7.not, label %sw.bb2.if.end10_crit_edge, label %if.then8

sw.bb2.if.end10_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ucbus_write(ptr noundef %sd, ptr noundef nonnull @lz24bp_start_0, i32 noundef 8, i32 noundef 8)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb2.if.end10_crit_edge
  %8 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sensor, align 1
  %idxprom12 = zext i8 %9 to i32
  %gpio14 = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom12, i32 3
  tail call fastcc void @gpio_init(ptr noundef %sd, ptr noundef %gpio14)
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_time)
  %tobool17.not = icmp eq i32 %first_time, 0
  br i1 %tobool17.not, label %sw.bb16.if.end20_crit_edge, label %if.then18

sw.bb16.if.end20_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ucbus_write(ptr noundef %sd, ptr noundef nonnull @mi0360_start_0, i32 noundef 7, i32 noundef 8)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %sw.bb16.if.end20_crit_edge
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor, align 1
  %idxprom22 = zext i8 %11 to i32
  %gpio24 = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom22, i32 3
  tail call fastcc void @gpio_init(ptr noundef %sd, ptr noundef %gpio24)
  %gpio.i56 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 3
  %12 = ptrtoint ptr %gpio.i56 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gpio.i56, align 1
  %or.i = or i8 %13, -128
  store i8 %or.i, ptr %gpio.i56, align 1
  %conv13.i = zext i8 %or.i to i16
  %neg14.i = xor i16 %conv13.i, -1
  %shl.i = shl i16 %neg14.i, 8
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 261, i16 noundef zeroext %shl.i) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_time)
  %tobool26.not = icmp eq i32 %first_time, 0
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %sw.default
  tail call fastcc void @reg_wb(ptr noundef %sd, i16 noundef zeroext 27, i16 noundef zeroext 0, ptr noundef nonnull @mt9v111_init.cmd_001b, i32 noundef 11) #7
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then27
  %i.031.i = phi i32 [ 0, %if.then27 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x [7 x i8]], ptr @mt9v111_init.cmd_011b, i32 0, i32 %i.031.i
  tail call fastcc void @reg_wb(ptr noundef %sd, i16 noundef zeroext 27, i16 noundef zeroext 0, ptr noundef %arrayidx.i, i32 noundef 7) #7
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %if.end.i.for.cond1.i_crit_edge, %for.body.i
  %.sink.i = phi i32 [ 50, %if.end.i.for.cond1.i_crit_edge ], [ 400, %for.body.i ]
  %nwait.0.i = phi i32 [ %dec.i, %if.end.i.for.cond1.i_crit_edge ], [ 20, %for.body.i ]
  tail call void @msleep(i32 noundef %.sink.i) #7
  %14 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp slt i32 %15, 0
  br i1 %cmp.i.i, label %for.cond1.i.reg_r.exit.i_crit_edge, label %if.end.i.i

for.cond1.i.reg_r.exit.i_crit_edge:               ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit.i

if.end.i.i:                                       ; preds = %for.cond1.i
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %20 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or2.i.i, i8 noundef zeroext 12, i8 noundef zeroext -64, i16 noundef zeroext 795, i16 noundef zeroext 0, ptr noundef %21, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.end.i.i.reg_r.exit.i_crit_edge

if.end.i.i.reg_r.exit.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 795, i32 noundef %call3.i.i) #10
  %22 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  %23 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i.i, align 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 64)
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end.i.i, %if.end.i.i.reg_r.exit.i_crit_edge, %for.cond1.i.reg_r.exit.i_crit_edge
  %26 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp3.i = icmp eq i8 %29, 0
  br i1 %cmp3.i, label %reg_r.exit.i.for.inc.i_crit_edge, label %lor.lhs.false.i

reg_r.exit.i.for.inc.i_crit_edge:                 ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %reg_r.exit.i
  %30 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp5.not.i = icmp eq i32 %31, 0
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp7.i = icmp eq i32 %nwait.0.i, 0
  %dec.i = add nsw i32 %nwait.0.i, -1
  br i1 %cmp7.i, label %do.body.i, label %if.end.i.for.cond1.i_crit_edge

if.end.i.for.cond1.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp10.i = icmp sgt i32 %32, 0
  br i1 %cmp10.i, label %do.end.i, label %do.body.i.do.end17.i_crit_edge

do.body.i.do.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i) #10
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i, %do.body.i.do.end17.i_crit_edge
  %33 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -62, ptr %usb_err.i.i, align 8
  br label %sw.epilog

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %reg_r.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else29:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %gpio33 = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %conv, i32 3
  tail call fastcc void @gpio_init(ptr noundef %sd, ptr noundef %gpio33)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else29, %for.inc.i.sw.epilog_crit_edge, %do.end17.i, %if.end20, %if.end10, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ucbus_write(ptr noundef %gspca_dev, ptr nocapture noundef readonly %cmd, i32 noundef %ncmds, i32 noundef %batchsize) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end87.for.cond_crit_edge, %for.cond.preheader
  %ncmds.addr.0 = phi i32 [ %sub8, %if.end87.for.cond_crit_edge ], [ %ncmds, %for.cond.preheader ]
  %cmd.addr.0 = phi ptr [ %incdec.ptr92, %if.end87.for.cond_crit_edge ], [ %cmd, %for.cond.preheader ]
  %2 = tail call i32 @llvm.smin.i32(i32 %ncmds.addr.0, i32 %batchsize)
  %sub8 = sub i32 %ncmds.addr.0, %2
  %3 = ptrtoint ptr %cmd.addr.0 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmd.addr.0, align 2
  %shl = shl i16 %4, 8
  %or = or i16 %shl, 1
  %bw_data = getelementptr inbounds %struct.ucbus_write_cmd, ptr %cmd.addr.0, i32 0, i32 1
  %5 = ptrtoint ptr %bw_data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bw_data, align 2
  %conv10 = zext i8 %6 to i16
  %or14 = tail call i16 @llvm.fshl.i16(i16 %conv10, i16 %4, i16 8)
  %7 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf, align 4
  %dec134 = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec134)
  %cmp16135 = icmp sgt i32 %dec134, 0
  br i1 %cmp16135, label %for.cond.while.body_crit_edge, label %for.cond.while.end_crit_edge

for.cond.while.end_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

for.cond.while.body_crit_edge:                    ; preds = %for.cond
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.cond.while.body_crit_edge
  %dec138 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec134, %for.cond.while.body_crit_edge ]
  %cmd.addr.1137 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %cmd.addr.0, %for.cond.while.body_crit_edge ]
  %buf.0136 = phi ptr [ %incdec.ptr27, %while.body.while.body_crit_edge ], [ %8, %for.cond.while.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.ucbus_write_cmd, ptr %cmd.addr.1137, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr, align 2
  %conv19 = trunc i16 %10 to i8
  %incdec.ptr20 = getelementptr i8, ptr %buf.0136, i32 1
  %11 = ptrtoint ptr %buf.0136 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %buf.0136, align 1
  %12 = load i16, ptr %incdec.ptr, align 2
  %13 = lshr i16 %12, 8
  %conv24 = trunc i16 %13 to i8
  %incdec.ptr25 = getelementptr i8, ptr %buf.0136, i32 2
  %14 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %incdec.ptr20, align 1
  %bw_data26 = getelementptr %struct.ucbus_write_cmd, ptr %cmd.addr.1137, i32 1, i32 1
  %15 = ptrtoint ptr %bw_data26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bw_data26, align 2
  %incdec.ptr27 = getelementptr i8, ptr %buf.0136, i32 3
  %17 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %incdec.ptr25, align 1
  %dec = add nsw i32 %dec138, -1
  %cmp16.not = icmp eq i32 %dec, 0
  br i1 %cmp16.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.cond.while.end_crit_edge
  %buf.0.lcssa = phi ptr [ %8, %for.cond.while.end_crit_edge ], [ %incdec.ptr27, %while.body.while.end_crit_edge ]
  %cmd.addr.1.lcssa = phi ptr [ %cmd.addr.0, %for.cond.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %18 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf, align 4
  %cmp29.not = icmp eq ptr %buf.0.lcssa, %19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp54 = icmp sgt i32 %20, 6
  br i1 %cmp29.not, label %do.body53, label %do.body32

do.body32:                                        ; preds = %while.end
  br i1 %cmp54, label %do.end38, label %do.body32.if.end70_crit_edge

do.body32.if.end70_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %conv43 = zext i16 %or to i32
  %conv44 = zext i16 %or14 to i32
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %19, align 1
  %conv46 = zext i8 %22 to i32
  %arrayidx47 = getelementptr i8, ptr %buf.0.lcssa, i32 -1
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %24 to i32
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name41, i32 noundef %conv43, i32 noundef %conv44, i32 noundef %conv46, i32 noundef %conv48) #10
  br label %if.end70

do.body53:                                        ; preds = %while.end
  br i1 %cmp54, label %do.end59, label %do.body53.if.end70_crit_edge

do.body53.if.end70_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %conv64 = zext i16 %or to i32
  %conv65 = zext i16 %or14 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name41, i32 noundef %conv64, i32 noundef %conv65) #10
  br label %if.end70

if.end70:                                         ; preds = %do.end59, %do.body53.if.end70_crit_edge, %do.end38, %do.body32.if.end70_crit_edge
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i = shl i32 %28, 8
  %or73 = or i32 %shl.i, -2147483648
  %29 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %buf.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv76 = trunc i32 %sub.ptr.sub to i16
  %call77 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or73, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext %or, i16 noundef zeroext %or14, ptr noundef %30, i16 noundef zeroext %conv76, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end83, label %if.end87

do.end83:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call77) #10
  %31 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call77, ptr %usb_err, align 8
  br label %cleanup

if.end87:                                         ; preds = %if.end70
  tail call void @msleep(i32 noundef 30) #7
  %cmp88 = icmp slt i32 %sub8, 1
  %incdec.ptr92 = getelementptr %struct.ucbus_write_cmd, ptr %cmd.addr.1.lcssa, i32 1
  br i1 %cmp88, label %if.end87.cleanup_crit_edge, label %if.end87.for.cond_crit_edge

if.end87.for.cond_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end87.cleanup_crit_edge, %do.end83, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %value, i16 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp1 = icmp sgt i32 %2, 6
  br i1 %cmp1, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i16 %value to i32
  %conv4 = zext i16 %index to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %conv, i32 noundef %conv4) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %call10 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  tail call void @msleep(i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end16, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %conv18 = zext i16 %value to i32
  %conv19 = zext i16 %index to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %call10) #10
  %7 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call10, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_init(ptr noundef %sd, ptr nocapture noundef readonly %gpio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr i8, ptr %gpio, i32 1
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gpio, align 1
  %gpio.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio.i, align 1
  %conv5.i = and i8 %3, -16
  %or.i = or i8 %conv5.i, %1
  store i8 %or.i, ptr %gpio.i, align 1
  %conv13.i = zext i8 %or.i to i16
  %neg14.i = xor i16 %conv13.i, -1
  %shl.i = shl i16 %neg14.i, 8
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 261, i16 noundef zeroext %shl.i) #7
  %incdec.ptr1 = getelementptr i8, ptr %gpio, i32 2
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %6 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gpio.i, align 1
  %conv5.i17 = and i8 %7, -16
  %or.i18 = or i8 %conv5.i17, %5
  store i8 %or.i18, ptr %gpio.i, align 1
  %conv13.i19 = zext i8 %or.i18 to i16
  %neg14.i20 = xor i16 %conv13.i19, -1
  %shl.i21 = shl i16 %neg14.i20, 8
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 261, i16 noundef zeroext %shl.i21) #7
  %incdec.ptr3 = getelementptr i8, ptr %gpio, i32 3
  %8 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr1, align 1
  %10 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gpio.i, align 1
  %conv5.i23 = and i8 %11, -16
  %or.i24 = or i8 %conv5.i23, %9
  store i8 %or.i24, ptr %gpio.i, align 1
  %conv13.i25 = zext i8 %or.i24 to i16
  %neg14.i26 = xor i16 %conv13.i25, -1
  %shl.i27 = shl i16 %neg14.i26, 8
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 261, i16 noundef zeroext %shl.i27) #7
  %incdec.ptr5 = getelementptr i8, ptr %gpio, i32 4
  %12 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr3, align 1
  %14 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gpio.i, align 1
  %conv5.i29 = and i8 %15, -16
  %or.i30 = or i8 %conv5.i29, %13
  store i8 %or.i30, ptr %gpio.i, align 1
  %conv13.i31 = zext i8 %or.i30 to i16
  %neg14.i32 = xor i16 %conv13.i31, -1
  %shl.i33 = shl i16 %neg14.i32, 8
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 261, i16 noundef zeroext %shl.i33) #7
  %16 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr5, align 1
  %18 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gpio.i, align 1
  %conv5.i35 = and i8 %19, -16
  %or.i36 = or i8 %conv5.i35, %17
  store i8 %or.i36, ptr %gpio.i, align 1
  %conv13.i37 = zext i8 %or.i36 to i16
  %neg14.i38 = xor i16 %conv13.i37, -1
  %shl.i39 = shl i16 %neg14.i38, 8
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 261, i16 noundef zeroext %shl.i39) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_wb(ptr noundef %gspca_dev, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp1 = icmp sgt i32 %2, 6
  br i1 %cmp1, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i16 %value to i32
  %conv4 = zext i16 %index to i32
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv5 = zext i8 %4 to i32
  %sub = add i32 %len, -1
  %arrayidx = getelementptr i8, ptr %data, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf, align 4
  %9 = call ptr @memcpy(ptr %8, ptr %data, i32 %len)
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, -2147483648
  %14 = load ptr, ptr %usb_buf, align 4
  %conv13 = trunc i32 %len to i16
  %call14 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %14, i16 noundef zeroext %conv13, i32 noundef 1000) #7
  tail call void @msleep(i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end20, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %conv22 = zext i16 %value to i32
  %conv23 = zext i16 %index to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %call14) #10
  %15 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call14, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %4 = load i8, ptr %streaming, align 2, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963793, i32 %6)
  %cond = icmp eq i32 %6, 9963793
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %gain = getelementptr i8, ptr %1, i32 1028
  %9 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gain, align 4
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val1, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %buf.i) #7
  %13 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 1
  %14 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 2
  %15 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 3
  %16 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 4
  %sensor1.i = getelementptr i8, ptr %1, i32 1035
  %17 = call ptr @memset(ptr %buf.i, i32 255, i32 15)
  %18 = ptrtoint ptr %sensor1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sensor1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %switch.i = icmp ult i8 %19, 2
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  %cond.i = select i1 %cmp.i, i32 528, i32 623
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %8)
  %cmp5.not.i = icmp sgt i32 %cond.i, %8
  %sub.i = sub i32 %cond.i, %8
  %intstartclk.0.i = select i1 %cmp5.not.i, i32 %sub.i, i32 0
  %20 = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 %8) #7
  %21 = lshr i32 %intstartclk.0.i, 8
  %conv7.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7.i, ptr %buf.i, align 1
  %conv8.i = trunc i32 %intstartclk.0.i to i8
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv8.i, ptr %13, align 1
  %24 = lshr i32 %20, 8
  %conv12.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv12.i, ptr %14, align 1
  %conv15.i = trunc i32 %20 to i8
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv15.i, ptr %15, align 1
  %conv18.i = trunc i32 %12 to i8
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv18.i, ptr %16, align 1
  br label %setexposure.exit

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %28 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 14
  %29 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 10
  %30 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 9
  %31 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 8
  %32 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 7
  %33 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 6
  %34 = getelementptr inbounds [15 x i8], ptr %buf.i, i32 0, i32 5
  %conv.i = zext i8 %19 to i32
  %i2c_addr.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %conv.i, i32 1
  %35 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_addr.i, align 4
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %buf.i, align 1
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %13, align 1
  %39 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 9, ptr %14, align 1
  %40 = lshr i32 %8, 8
  %conv32.i = trunc i32 %40 to i8
  %41 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv32.i, ptr %15, align 1
  %i2c_dum.i = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %conv.i, i32 2
  %42 = ptrtoint ptr %i2c_dum.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %i2c_dum.i, align 1
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %16, align 1
  %conv37.i = trunc i32 %8 to i8
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv37.i, ptr %34, align 1
  %46 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 53, ptr %33, align 1
  %47 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %32, align 1
  %48 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %43, ptr %31, align 1
  %div.i = sdiv i32 %12, 2
  %49 = trunc i32 %div.i to i8
  %conv47.i = xor i8 %49, -128
  %50 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv47.i, ptr %30, align 1
  %51 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 0, ptr %29, align 1
  %52 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -125, ptr %28, align 1
  br label %setexposure.exit

setexposure.exit:                                 ; preds = %sw.default.i, %sw.bb.i
  %i.0.i = phi i32 [ 15, %sw.default.i ], [ 5, %sw.bb.i ]
  %cmd.0.i = phi i16 [ 285, %sw.default.i ], [ 29, %sw.bb.i ]
  call fastcc void @reg_wb(ptr noundef %add.ptr, i16 noundef zeroext %cmd.0.i, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef %i.0.i) #7
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %buf.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %setexposure.exit, %if.end.sw.epilog_crit_edge
  %53 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %54, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_write(ptr noundef %sd, ptr nocapture noundef readonly %cmd, i32 noundef %ncmds) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor2 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %2 = ptrtoint ptr %sensor2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sensor2, align 1
  %idxprom = zext i8 %3 to i32
  %i2c_addr = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 4
  %conv = zext i8 %5 to i16
  %shl = shl nuw i16 %conv, 8
  %or = or i16 %shl, 2
  %val4 = getelementptr inbounds %struct.i2c_write_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %val4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val4, align 2
  %8 = and i16 %7, -256
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmd, align 2
  %conv6 = zext i8 %10 to i16
  %or7 = or i16 %8, %conv6
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf, align 4
  %i2c_dum = getelementptr [6 x %struct.sensor_s], ptr @sensor_tb, i32 0, i32 %idxprom, i32 2
  %13 = ptrtoint ptr %i2c_dum to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_dum, align 1
  %incdec.ptr = getelementptr i8, ptr %12, i32 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %12, align 1
  %16 = load i16, ptr %val4, align 2
  %conv10 = trunc i16 %16 to i8
  %incdec.ptr11 = getelementptr i8, ptr %12, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10, ptr %incdec.ptr, align 1
  %dec90 = add i32 %ncmds, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec90)
  %cmp1291 = icmp sgt i32 %dec90, 0
  br i1 %cmp1291, label %if.end.while.body_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %dec94 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec90, %if.end.while.body_crit_edge ]
  %cmd.addr.093 = phi ptr [ %incdec.ptr14, %while.body.while.body_crit_edge ], [ %cmd, %if.end.while.body_crit_edge ]
  %buf.092 = phi ptr [ %incdec.ptr25, %while.body.while.body_crit_edge ], [ %incdec.ptr11, %if.end.while.body_crit_edge ]
  %incdec.ptr14 = getelementptr %struct.i2c_write_cmd, ptr %cmd.addr.093, i32 1
  %18 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr14, align 2
  %incdec.ptr16 = getelementptr i8, ptr %buf.092, i32 1
  %20 = ptrtoint ptr %buf.092 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %buf.092, align 1
  %val17 = getelementptr %struct.i2c_write_cmd, ptr %cmd.addr.093, i32 1, i32 1
  %21 = ptrtoint ptr %val17 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val17, align 2
  %23 = lshr i16 %22, 8
  %conv19 = trunc i16 %23 to i8
  %incdec.ptr20 = getelementptr i8, ptr %buf.092, i32 2
  %24 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv19, ptr %incdec.ptr16, align 1
  %incdec.ptr22 = getelementptr i8, ptr %buf.092, i32 3
  %25 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %14, ptr %incdec.ptr20, align 1
  %26 = load i16, ptr %val17, align 2
  %conv24 = trunc i16 %26 to i8
  %incdec.ptr25 = getelementptr i8, ptr %buf.092, i32 4
  %27 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv24, ptr %incdec.ptr22, align 1
  %dec = add nsw i32 %dec94, -1
  %cmp12.not = icmp eq i32 %dec, 0
  br i1 %cmp12.not, label %while.body.do.body_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %while.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %buf.0.lcssa = phi ptr [ %incdec.ptr11, %if.end.do.body_crit_edge ], [ %incdec.ptr25, %while.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp26 = icmp sgt i32 %28, 6
  br i1 %cmp26, label %do.end, label %do.body.do.end39_crit_edge

do.body.do.end39_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv30 = zext i16 %or to i32
  %conv31 = zext i16 %or7 to i32
  %29 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv34 = zext i8 %32 to i32
  %arrayidx35 = getelementptr i8, ptr %buf.0.lcssa, i32 -1
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %34 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %conv30, i32 noundef %conv31, i32 noundef %conv34, i32 noundef %conv36) #10
  br label %do.end39

do.end39:                                         ; preds = %do.end, %do.body.do.end39_crit_edge
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i = shl i32 %38, 8
  %or42 = or i32 %shl.i, -2147483648
  %39 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_buf, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %buf.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv45 = trunc i32 %sub.ptr.sub to i16
  %call46 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or42, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext %or, i16 noundef zeroext %or7, ptr noundef %40, i16 noundef zeroext %conv45, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end52, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end52:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call46) #10
  %41 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call46, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_sq930x__307_1156_sd_driver_init6, !8, !"__initcall__kmod_gspca_sq930x__307_1156_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1156, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1145, i32 14}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1144, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1108, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 47, i32 31}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 856, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 869, i32 3}
!27 = !{ptr @sd_init._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sd_init._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 426, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @reg_r._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @reg_r._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @bridge_init.clkfreq_cmd, !35, !"clkfreq_cmd", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 616, i32 38}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 537, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ucbus_write._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ucbus_write._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 559, i32 4}
!43 = !{ptr @ucbus_write._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ucbus_write._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 563, i32 4}
!47 = !{ptr @ucbus_write._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ucbus_write._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 573, i32 4}
!51 = !{ptr @ucbus_write._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ucbus_write._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 442, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @reg_w._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @reg_w._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 451, i32 3}
!60 = !{ptr @reg_w._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @reg_w._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @cmos_probe.probe_order, !63, !"probe_order", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 630, i32 18}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 649, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cmos_probe._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cmos_probe._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 657, i32 3}
!71 = !{ptr @cmos_probe._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cmos_probe._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 345, i32 3}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 356, i32 3}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 367, i32 3}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 378, i32 3}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 389, i32 3}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 400, i32 3}
!85 = !{ptr @sensor_tb, !86, !"sensor_tb", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 343, i32 30}
!87 = !{ptr @icx098bq_start_0, !88, !"icx098bq_start_0", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 89, i32 37}
!89 = !{ptr @lz24bp_start_0, !90, !"lz24bp_start_0", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 137, i32 37}
!91 = !{ptr @mi0360_start_0, !92, !"mi0360_start_0", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 194, i32 37}
!93 = !{ptr @ov7660_start_0, !94, !"ov7660_start_0", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 269, i32 37}
!95 = !{ptr @ov9630_start_0, !96, !"ov9630_start_0", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 274, i32 37}
!97 = !{ptr @mt9v111_init.cmd_001b, !98, !"cmd_001b", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 667, i32 18}
!99 = !{ptr @mt9v111_init.cmd_011b, !100, !"cmd_011b", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 671, i32 18}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 690, i32 5}
!103 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mt9v111_init._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @mt9v111_init._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 463, i32 2}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @reg_wb._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @reg_wb._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 474, i32 3}
!113 = !{ptr @reg_wb._entry.41, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @reg_wb._entry_ptr.43, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @sd_init_controls._key, !116, !"_key", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1093, i32 2}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1100, i32 3}
!120 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sd_init_controls._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @sd_init_controls._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @sd_ctrl_ops, !124, !"sd_ctrl_ops", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1083, i32 35}
!125 = !{ptr @icx098bq_start_1, !126, !"icx098bq_start_1", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 117, i32 37}
!127 = !{ptr @icx098bq_start_2, !128, !"icx098bq_start_2", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 126, i32 37}
!129 = !{ptr @capconfig, !130, !"capconfig", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 283, i32 3}
!131 = !{ptr @lz24bp_start_1_gen, !132, !"lz24bp_start_1_gen", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 165, i32 37}
!133 = !{ptr @lz24bp_start_1_clm, !134, !"lz24bp_start_1_clm", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 174, i32 37}
!135 = !{ptr @lz24bp_start_2, !136, !"lz24bp_start_2", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 183, i32 37}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 509, i32 2}
!139 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @i2c_write._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @i2c_write._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 519, i32 3}
!144 = !{ptr @i2c_write._entry.50, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @i2c_write._entry_ptr.52, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @mi0360_init_23, !147, !"mi0360_init_23", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 198, i32 35}
!148 = !{ptr @mi0360_init_24, !149, !"mi0360_init_24", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 204, i32 35}
!150 = !{ptr @mi0360_init_25, !151, !"mi0360_init_25", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 208, i32 35}
!152 = !{ptr @mi0360_start_1, !153, !"mi0360_start_1", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 215, i32 37}
!154 = !{ptr @mi0360_start_2, !155, !"mi0360_start_2", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 223, i32 35}
!156 = !{ptr @mi0360_start_3, !157, !"mi0360_start_3", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 226, i32 35}
!158 = !{ptr @mi0360_start_4, !159, !"mi0360_start_4", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 229, i32 35}
!160 = !{ptr @mt9v111_init_0, !161, !"mt9v111_init_0", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 233, i32 35}
!162 = !{ptr @mt9v111_init_1, !163, !"mt9v111_init_1", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 239, i32 35}
!164 = !{ptr @mt9v111_init_2, !165, !"mt9v111_init_2", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 243, i32 35}
!166 = !{ptr @mt9v111_start_1, !167, !"mt9v111_start_1", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 253, i32 37}
!168 = !{ptr @mt9v111_init_3, !169, !"mt9v111_init_3", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 261, i32 35}
!170 = !{ptr @mt9v111_init_4, !171, !"mt9v111_init_4", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 264, i32 35}
!172 = !{ptr @.str.53, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1045, i32 3}
!174 = !{ptr @.str.54, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @sd_dq_callback._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @sd_dq_callback._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @device_table, !178, !"device_table", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/gspca/sq930x.c", i32 1124, i32 35}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
!189 = !{i8 0, i8 2}
