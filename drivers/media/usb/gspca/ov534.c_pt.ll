; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/ov534.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/ov534.c"
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
%struct.reg_array = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.framerates = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.rate_s = type { i8, i8, i8, i8 }
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
%struct.sd = type { %struct.gspca_dev, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.107, ptr, %struct.anon.108, ptr, ptr, ptr, ptr, i32, i16, i8, i8 }
%struct.anon.107 = type { ptr, ptr }
%struct.anon.108 = type { ptr, ptr }
%struct.v4l2_streamparm = type { i32, %union.anon.103 }
%union.anon.103 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [61 x i8] c"gspca_ov534.author=Antonio Ospite <ospite@studenti.unina.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [54 x i8] c"gspca_ov534.description=GSPCA/OV534 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_ov534.file=drivers/media/usb/gspca/gspca_ov534\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_ov534.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_ov534__309_1608_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_ov534\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ov534\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5141, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 12290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr @sd_get_streamparm, ptr @sd_set_streamparm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@ov772x_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1448695129, i32 1, i32 640, i32 153600, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1448695129, i32 1, i32 1280, i32 614400, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195528775, i32 1, i32 320, i32 76800, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195528775, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_init.bridge_init = internal constant { [2 x %struct.reg_array], [16 x i8] } { [2 x %struct.reg_array] [%struct.reg_array { ptr @bridge_init_767x, i32 40 }, %struct.reg_array { ptr @bridge_init_772x, i32 32 }], [16 x i8] zeroinitializer }, align 32
@bridge_init_767x = internal constant { [40 x [2 x i8]], [48 x i8] } { [40 x [2 x i8]] [[2 x i8] c"\F1B", [2 x i8] c"\88\F8", [2 x i8] c"\89\FF", [2 x i8] c"v\03", [2 x i8] c"\92\03", [2 x i8] c"\95\10", [2 x i8] c"\E2\00", [2 x i8] c"\E7>", [2 x i8] c"\8D\1C", [2 x i8] c"\8E\00", [2 x i8] c"\8F\00", [2 x i8] c"\1F\00", [2 x i8] c"\C3\F9", [2 x i8] c"\89\FF", [2 x i8] c"\88\F8", [2 x i8] c"v\03", [2 x i8] c"\92\01", [2 x i8] c"\93\18", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"\1D\00", [2 x i8] c"\1D\FF", [2 x i8] c"\1D\02", [2 x i8] c"\1DX", [2 x i8] c"\1D\00", [2 x i8] c"\1C\0A", [2 x i8] c"\1D\0A", [2 x i8] c"\1D\0E", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"4\05", [2 x i8] c"\C2\0C", [2 x i8] c"\C3\F9", [2 x i8] c"4\05", [2 x i8] c"\E7.", [2 x i8] c"1\F9", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"%B", [2 x i8] c"\94\11"], [48 x i8] zeroinitializer }, align 32
@bridge_init_772x = internal constant { [32 x [2 x i8]], [32 x i8] } { [32 x [2 x i8]] [[2 x i8] c"\88\F8", [2 x i8] c"\89\FF", [2 x i8] c"v\03", [2 x i8] c"\92\01", [2 x i8] c"\93\18", [2 x i8] c"\94\10", [2 x i8] c"\95\10", [2 x i8] c"\E2\00", [2 x i8] c"\E7>", [2 x i8] c"\96\00", [2 x i8] c"\97 ", [2 x i8] c"\97 ", [2 x i8] c"\97 ", [2 x i8] c"\97\0A", [2 x i8] c"\97?", [2 x i8] c"\97J", [2 x i8] c"\97 ", [2 x i8] c"\97\15", [2 x i8] c"\97\0B", [2 x i8] c"\8E@", [2 x i8] c"\1F\81", [2 x i8] c"4\05", [2 x i8] c"\E3\04", [2 x i8] c"\89\00", [2 x i8] c"v\00", [2 x i8] c"\E7.", [2 x i8] c"1\F9", [2 x i8] c"%B", [2 x i8] c"!\F0", [2 x i8] c"\1C\0A", [2 x i8] c"\1D\08", [2 x i8] c"\1D\0E"], [32 x i8] zeroinitializer }, align 32
@sd_init.sensor_init = internal constant { [2 x %struct.reg_array], [16 x i8] } { [2 x %struct.reg_array] [%struct.reg_array { ptr @sensor_init_767x, i32 153 }, %struct.reg_array { ptr @sensor_init_772x, i32 80 }], [16 x i8] zeroinitializer }, align 32
@sensor_init_767x = internal constant { [153 x [2 x i8]], [78 x i8] } { [153 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\11\03", [2 x i8] c":\04", [2 x i8] c"\12\00", [2 x i8] c"\17\13", [2 x i8] c"\18\01", [2 x i8] c"2\B6", [2 x i8] c"\19\02", [2 x i8] c"\1Az", [2 x i8] c"\03\0A", [2 x i8] c"\0C\00", [2 x i8] c">\00", [2 x i8] c"p:", [2 x i8] c"q5", [2 x i8] c"r\11", [2 x i8] c"s\F0", [2 x i8] c"\A2\02", [2 x i8] c"z*", [2 x i8] c"{\12", [2 x i8] c"|\1D", [2 x i8] c"}-", [2 x i8] c"~E", [2 x i8] c"\7FP", [2 x i8] c"\80Y", [2 x i8] c"\81b", [2 x i8] c"\82k", [2 x i8] c"\83s", [2 x i8] c"\84{", [2 x i8] c"\85\8A", [2 x i8] c"\86\98", [2 x i8] c"\87\B2", [2 x i8] c"\88\CA", [2 x i8] c"\89\E0", [2 x i8] c"\13\E0", [2 x i8] zeroinitializer, [2 x i8] c"\10\00", [2 x i8] c"\0D@", [2 x i8] c"\148", [2 x i8] c"\A5\05", [2 x i8] c"\AB\07", [2 x i8] c"$\95", [2 x i8] c"%3", [2 x i8] c"&\E3", [2 x i8] c"\9Fx", [2 x i8] c"\A0h", [2 x i8] c"\A1\03", [2 x i8] c"\A6\D8", [2 x i8] c"\A7\D8", [2 x i8] c"\A8\F0", [2 x i8] c"\A9\90", [2 x i8] c"\AA\94", [2 x i8] c"\13\E5", [2 x i8] c"\0Ea", [2 x i8] c"\0FK", [2 x i8] c"\16\02", [2 x i8] c"!\02", [2 x i8] c"\22\91", [2 x i8] c")\07", [2 x i8] c"3\0B", [2 x i8] c"5\0B", [2 x i8] c"7\1D", [2 x i8] c"8q", [2 x i8] c"9*", [2 x i8] c"<x", [2 x i8] c"M@", [2 x i8] c"N ", [2 x i8] c"i\00", [2 x i8] c"kJ", [2 x i8] c"t\10", [2 x i8] c"\8DO", [2 x i8] c"\8E\00", [2 x i8] c"\8F\00", [2 x i8] c"\90\00", [2 x i8] c"\91\00", [2 x i8] c"\96\00", [2 x i8] c"\9A\80", [2 x i8] c"\B0\84", [2 x i8] c"\B1\0C", [2 x i8] c"\B2\0E", [2 x i8] c"\B3\82", [2 x i8] c"\B8\0A", [2 x i8] c"C\0A", [2 x i8] c"D\F0", [2 x i8] c"E4", [2 x i8] c"FX", [2 x i8] c"G(", [2 x i8] c"H:", [2 x i8] c"Y\88", [2 x i8] c"Z\88", [2 x i8] c"[D", [2 x i8] c"\\g", [2 x i8] c"]I", [2 x i8] c"^\0E", [2 x i8] c"l\0A", [2 x i8] c"mU", [2 x i8] c"n\11", [2 x i8] c"o\9F", [2 x i8] c"j@", [2 x i8] c"\01@", [2 x i8] c"\02@", [2 x i8] c"\13\E7", [2 x i8] c"O\80", [2 x i8] c"P\80", [2 x i8] c"Q\00", [2 x i8] c"R\22", [2 x i8] c"S^", [2 x i8] c"T\80", [2 x i8] c"X\9E", [2 x i8] c"A\08", [2 x i8] c"?\00", [2 x i8] c"u\04", [2 x i8] c"v\E1", [2 x i8] c"L\00", [2 x i8] c"w\01", [2 x i8] c"=\C2", [2 x i8] c"K\09", [2 x i8] c"\C9`", [2 x i8] c"A8", [2 x i8] c"V@", [2 x i8] c"4\11", [2 x i8] c";\C2", [2 x i8] c"\A4\8A", [2 x i8] c"\96\00", [2 x i8] c"\970", [2 x i8] c"\98 ", [2 x i8] c"\99 ", [2 x i8] c"\9A\84", [2 x i8] c"\9B)", [2 x i8] c"\9C\03", [2 x i8] c"\9DL", [2 x i8] c"\9E?", [2 x i8] c"x\04", [2 x i8] c"y\01", [2 x i8] c"\C8\F0", [2 x i8] c"y\0F", [2 x i8] c"\C8\00", [2 x i8] c"y\10", [2 x i8] c"\C8~", [2 x i8] c"y\0A", [2 x i8] c"\C8\80", [2 x i8] c"y\0B", [2 x i8] c"\C8\01", [2 x i8] c"y\0C", [2 x i8] c"\C8\0F", [2 x i8] c"y\0D", [2 x i8] c"\C8 ", [2 x i8] c"y\09", [2 x i8] c"\C8\80", [2 x i8] c"y\02", [2 x i8] c"\C8\C0", [2 x i8] c"y\03", [2 x i8] c"\C8 ", [2 x i8] c"y&"], [78 x i8] zeroinitializer }, align 32
@sensor_init_772x = internal constant { [80 x [2 x i8]], [32 x i8] } { [80 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"\11\01", [2 x i8] c"=\03", [2 x i8] c"\17&", [2 x i8] c"\18\A0", [2 x i8] c"\19\07", [2 x i8] c"\1A\F0", [2 x i8] c"2\00", [2 x i8] c")\A0", [2 x i8] c",\F0", [2 x i8] c"e ", [2 x i8] c"\11\01", [2 x i8] c"B\7F", [2 x i8] c"c\AA", [2 x i8] c"d\FF", [2 x i8] c"f\00", [2 x i8] c"\13\F0", [2 x i8] c"\0DA", [2 x i8] c"\0F\C5", [2 x i8] c"\14\11", [2 x i8] c"\22\7F", [2 x i8] c"#\03", [2 x i8] c"$@", [2 x i8] c"%0", [2 x i8] c"&\A1", [2 x i8] c"*\00", [2 x i8] c"+\00", [2 x i8] c"k\AA", [2 x i8] c"\13\FF", [2 x i8] c"\90\05", [2 x i8] c"\91\01", [2 x i8] c"\92\03", [2 x i8] c"\93\00", [2 x i8] c"\94`", [2 x i8] c"\95<", [2 x i8] c"\96$", [2 x i8] c"\97\1E", [2 x i8] c"\98b", [2 x i8] c"\99\80", [2 x i8] c"\9A\1E", [2 x i8] c"\9B\08", [2 x i8] c"\9C ", [2 x i8] c"\9E\81", [2 x i8] c"\A6\07", [2 x i8] c"~\0C", [2 x i8] c"\7F\16", [2 x i8] c"\80*", [2 x i8] c"\81N", [2 x i8] c"\82a", [2 x i8] c"\83o", [2 x i8] c"\84{", [2 x i8] c"\85\86", [2 x i8] c"\86\8E", [2 x i8] c"\87\97", [2 x i8] c"\88\A4", [2 x i8] c"\89\AF", [2 x i8] c"\8A\C5", [2 x i8] c"\8B\D7", [2 x i8] c"\8C\E8", [2 x i8] c"\8D ", [2 x i8] c"+\00", [2 x i8] c"\22\7F", [2 x i8] c"#\03", [2 x i8] c"\11\01", [2 x i8] c"d\FF", [2 x i8] c"\0DA", [2 x i8] c"\14A", [2 x i8] c"\0E\CD", [2 x i8] c"\AC\BF", [2 x i8] c"\8E\00"], [32 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Sensor ID: %04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/ov534.c\00", [32 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@ov767x_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ov772x_framerates = internal constant { [4 x %struct.framerates], [32 x i8] } { [4 x %struct.framerates] [%struct.framerates { ptr @qvga_rates, i32 10 }, %struct.framerates { ptr @vga_rates, i32 5 }, %struct.framerates { ptr @qvga_rates, i32 10 }, %struct.framerates { ptr @vga_rates, i32 5 }], [32 x i8] zeroinitializer }, align 32
@ov534_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: SET 01 0000 %04x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov534_reg_write\00", [16 x i8] zeroinitializer }, align 32
@ov534_reg_write._entry_ptr = internal global ptr @ov534_reg_write._entry, section ".printk_index", align 4
@ov534_reg_write._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gspca_ov534: write failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ov534_reg_write._entry_ptr.9 = internal global ptr @ov534_reg_write._entry.7, section ".printk_index", align 4
@sccb_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: sccb write: %02x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sccb_reg_write\00", [17 x i8] zeroinitializer }, align 32
@sccb_reg_write._entry_ptr = internal global ptr @sccb_reg_write._entry, section ".printk_index", align 4
@sccb_reg_write._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_ov534: sccb_reg_write failed\0A\00", [58 x i8] zeroinitializer }, align 32
@sccb_reg_write._entry_ptr.14 = internal global ptr @sccb_reg_write._entry.12, section ".printk_index", align 4
@sccb_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: sccb status 0x%02x, attempt %d/5\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sccb_check_status\00", [46 x i8] zeroinitializer }, align 32
@sccb_check_status._entry_ptr = internal global ptr @sccb_check_status._entry, section ".printk_index", align 4
@ov534_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: GET 01 0000 %04x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov534_reg_read\00", [17 x i8] zeroinitializer }, align 32
@ov534_reg_read._entry_ptr = internal global ptr @ov534_reg_read._entry, section ".printk_index", align 4
@ov534_reg_read._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gspca_ov534: read failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ov534_reg_read._entry_ptr.21 = internal global ptr @ov534_reg_read._entry.19, section ".printk_index", align 4
@sccb_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gspca_ov534: sccb_reg_read failed 1\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sccb_reg_read\00", [18 x i8] zeroinitializer }, align 32
@sccb_reg_read._entry_ptr = internal global ptr @sccb_reg_read._entry, section ".printk_index", align 4
@sccb_reg_read._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gspca_ov534: sccb_reg_read failed 2\0A\00", [57 x i8] zeroinitializer }, align 32
@sccb_reg_read._entry_ptr.26 = internal global ptr @sccb_reg_read._entry.24, section ".printk_index", align 4
@qvga_rates = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\BB\96\89}dK<2%\1E", [22 x i8] zeroinitializer }, align 32
@vga_rates = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<2(\1E\0F", [27 x i8] zeroinitializer }, align 32
@ov534_set_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: led status: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov534_set_led\00", [18 x i8] zeroinitializer }, align 32
@ov534_set_led._entry_ptr = internal global ptr @ov534_set_led._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov534:1252:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@ov534_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @ov534_g_volatile_ctrl, ptr null, ptr @ov534_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_ov534: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sin_table = internal constant { [91 x i32], [84 x i8] } { [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], [84 x i8] zeroinitializer }, align 32
@setsaturation.color_tb = internal constant { [7 x [6 x i8]], [54 x i8] } { [7 x [6 x i8]] [[6 x i8] c"BB\00\110A", [6 x i8] c"RR\00\16<R", [6 x i8] c"ff\00\1BKf", [6 x i8] c"\80\80\00\22^\80", [6 x i8] c"\9A\9A\00)q\9A", [6 x i8] c"\B8\B8\001\87\B8", [6 x i8] c"\DD\DD\00;\A2\DD"], [54 x i8] zeroinitializer }, align 32
@sd_start.bridge_start = internal constant { [2 x [4 x %struct.reg_array]], [32 x i8] } { [2 x [4 x %struct.reg_array]] [[4 x %struct.reg_array] [%struct.reg_array { ptr @bridge_start_qvga_767x, i32 30 }, %struct.reg_array { ptr @bridge_start_vga_767x, i32 26 }, %struct.reg_array zeroinitializer, %struct.reg_array zeroinitializer], [4 x %struct.reg_array] [%struct.reg_array { ptr @bridge_start_qvga_yuyv_772x, i32 14 }, %struct.reg_array { ptr @bridge_start_vga_yuyv_772x, i32 14 }, %struct.reg_array { ptr @bridge_start_qvga_gbrg_772x, i32 14 }, %struct.reg_array { ptr @bridge_start_vga_gbrg_772x, i32 14 }]], [32 x i8] zeroinitializer }, align 32
@bridge_start_qvga_767x = internal constant { [30 x [2 x i8]], [36 x i8] } { [30 x [2 x i8]] [[2 x i8] c"\94\AA", [2 x i8] c"\F1B", [2 x i8] c"\E5\04", [2 x i8] c"\C0\80", [2 x i8] c"\C1`", [2 x i8] c"\C2\0C", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"\8C\00", [2 x i8] c"\8D\1C", [2 x i8] c"4\05", [2 x i8] c"\C2L", [2 x i8] c"\C3\F9", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"P\89", [2 x i8] c"Q\A0", [2 x i8] c"Rx", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"W\00", [2 x i8] c"\\\00", [2 x i8] c"ZP", [2 x i8] c"[<", [2 x i8] c"\1C\0A", [2 x i8] c"\1D\0A", [2 x i8] c"\94\11"], [36 x i8] zeroinitializer }, align 32
@bridge_start_vga_767x = internal constant { [26 x [2 x i8]], [44 x i8] } { [26 x [2 x i8]] [[2 x i8] c"\94\AA", [2 x i8] c"\F1B", [2 x i8] c"\E5\04", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"\C2\0C", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"\DA\00", [2 x i8] c"4\05", [2 x i8] c"\C3\F9", [2 x i8] c"\8C\00", [2 x i8] c"\8D\1C", [2 x i8] c"P\00", [2 x i8] c"Q\A0", [2 x i8] c"R<", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"W\00", [2 x i8] c"\\\00", [2 x i8] c"Z\A0", [2 x i8] c"[x", [2 x i8] c"\1C\0A", [2 x i8] c"\1D\0A", [2 x i8] c"\94\11"], [44 x i8] zeroinitializer }, align 32
@bridge_start_qvga_yuyv_772x = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\88\00", [2 x i8] c"\1C\00", [2 x i8] c"\1D@", [2 x i8] c"\1D\02", [2 x i8] c"\1D\00", [2 x i8] c"\1D\01", [2 x i8] c"\1DK", [2 x i8] c"\1D\00", [2 x i8] c"\8D\1C", [2 x i8] c"\8E\80", [2 x i8] c"\C0(", [2 x i8] c"\C1\1E", [2 x i8] c"\C2\0C", [2 x i8] c"\C3i"], [36 x i8] zeroinitializer }, align 32
@bridge_start_vga_yuyv_772x = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\88\00", [2 x i8] c"\1C\00", [2 x i8] c"\1D@", [2 x i8] c"\1D\02", [2 x i8] c"\1D\00", [2 x i8] c"\1D\02", [2 x i8] c"\1DX", [2 x i8] c"\1D\00", [2 x i8] c"\8D\1C", [2 x i8] c"\8E\80", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"\C2\0C", [2 x i8] c"\C3i"], [36 x i8] zeroinitializer }, align 32
@bridge_start_qvga_gbrg_772x = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\88\08", [2 x i8] c"\1C\00", [2 x i8] c"\1D\00", [2 x i8] c"\1D\02", [2 x i8] c"\1D\00", [2 x i8] c"\1D\00", [2 x i8] c"\1DK", [2 x i8] c"\1D\00", [2 x i8] c"\8D\00", [2 x i8] c"\8E\00", [2 x i8] c"\C0(", [2 x i8] c"\C1\1E", [2 x i8] c"\C2\01", [2 x i8] c"\C3\01"], [36 x i8] zeroinitializer }, align 32
@bridge_start_vga_gbrg_772x = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\88\08", [2 x i8] c"\1C\00", [2 x i8] c"\1D\00", [2 x i8] c"\1D\02", [2 x i8] c"\1D\00", [2 x i8] c"\1D\01", [2 x i8] c"\1D,", [2 x i8] c"\1D\00", [2 x i8] c"\8D\00", [2 x i8] c"\8E\00", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"\C2\01", [2 x i8] c"\C3\01"], [36 x i8] zeroinitializer }, align 32
@sd_start.sensor_start = internal constant { [2 x [4 x %struct.reg_array]], [32 x i8] } { [2 x [4 x %struct.reg_array]] [[4 x %struct.reg_array] [%struct.reg_array { ptr @sensor_start_qvga_767x, i32 4 }, %struct.reg_array { ptr @sensor_start_vga_767x, i32 4 }, %struct.reg_array zeroinitializer, %struct.reg_array zeroinitializer], [4 x %struct.reg_array] [%struct.reg_array { ptr @sensor_start_qvga_yuyv_772x, i32 9 }, %struct.reg_array { ptr @sensor_start_vga_yuyv_772x, i32 9 }, %struct.reg_array { ptr @sensor_start_qvga_gbrg_772x, i32 9 }, %struct.reg_array { ptr @sensor_start_vga_gbrg_772x, i32 9 }]], [32 x i8] zeroinitializer }, align 32
@sensor_start_qvga_767x = internal constant { [4 x [2 x i8]], [24 x i8] } { [4 x [2 x i8]] [[2 x i8] c"\11\01", [2 x i8] c"\1E\04", [2 x i8] c"\19\02", [2 x i8] c"\1Az"], [24 x i8] zeroinitializer }, align 32
@sensor_start_vga_767x = internal constant { [4 x [2 x i8]], [24 x i8] } { [4 x [2 x i8]] [[2 x i8] c"\11\01", [2 x i8] c"\1E\04", [2 x i8] c"\19\02", [2 x i8] c"\1Az"], [24 x i8] zeroinitializer }, align 32
@sensor_start_qvga_yuyv_772x = internal constant { [9 x [2 x i8]], [46 x i8] } { [9 x [2 x i8]] [[2 x i8] c"\12@", [2 x i8] c"\17?", [2 x i8] c"\18P", [2 x i8] c"\19\03", [2 x i8] c"\1Ax", [2 x i8] c")P", [2 x i8] c",x", [2 x i8] c"e/", [2 x i8] c"g\00"], [46 x i8] zeroinitializer }, align 32
@sensor_start_vga_yuyv_772x = internal constant { [9 x [2 x i8]], [46 x i8] } { [9 x [2 x i8]] [[2 x i8] c"\12\00", [2 x i8] c"\17&", [2 x i8] c"\18\A0", [2 x i8] c"\19\07", [2 x i8] c"\1A\F0", [2 x i8] c")\A0", [2 x i8] c",\F0", [2 x i8] c"e ", [2 x i8] c"g\00"], [46 x i8] zeroinitializer }, align 32
@sensor_start_qvga_gbrg_772x = internal constant { [9 x [2 x i8]], [46 x i8] } { [9 x [2 x i8]] [[2 x i8] c"\12A", [2 x i8] c"\17?", [2 x i8] c"\18P", [2 x i8] c"\19\03", [2 x i8] c"\1Ax", [2 x i8] c")P", [2 x i8] c",x", [2 x i8] c"e/", [2 x i8] c"g\02"], [46 x i8] zeroinitializer }, align 32
@sensor_start_vga_gbrg_772x = internal constant { [9 x [2 x i8]], [46 x i8] } { [9 x [2 x i8]] [[2 x i8] c"\12\01", [2 x i8] c"\17&", [2 x i8] c"\18\A0", [2 x i8] c"\19\07", [2 x i8] c"\1A\F0", [2 x i8] c")\A0", [2 x i8] c",\F0", [2 x i8] c"e ", [2 x i8] c"g\02"], [46 x i8] zeroinitializer }, align 32
@set_frame_rate.rate_0 = internal constant { [5 x %struct.rate_s], [44 x i8] } { [5 x %struct.rate_s] [%struct.rate_s { i8 60, i8 1, i8 -63, i8 4 }, %struct.rate_s { i8 50, i8 1, i8 65, i8 2 }, %struct.rate_s { i8 40, i8 2, i8 -63, i8 4 }, %struct.rate_s { i8 30, i8 4, i8 -127, i8 2 }, %struct.rate_s { i8 15, i8 3, i8 65, i8 4 }], [44 x i8] zeroinitializer }, align 32
@set_frame_rate.rate_1 = internal constant { [10 x %struct.rate_s], [56 x i8] } { [10 x %struct.rate_s] [%struct.rate_s { i8 -69, i8 1, i8 -127, i8 2 }, %struct.rate_s { i8 -106, i8 1, i8 -63, i8 4 }, %struct.rate_s { i8 -119, i8 2, i8 -63, i8 2 }, %struct.rate_s { i8 125, i8 2, i8 -127, i8 2 }, %struct.rate_s { i8 100, i8 2, i8 -63, i8 4 }, %struct.rate_s { i8 75, i8 3, i8 -63, i8 4 }, %struct.rate_s { i8 60, i8 4, i8 -63, i8 4 }, %struct.rate_s { i8 50, i8 2, i8 65, i8 4 }, %struct.rate_s { i8 37, i8 3, i8 65, i8 4 }, %struct.rate_s { i8 30, i8 4, i8 65, i8 4 }], [56 x i8] zeroinitializer }, align 32
@set_frame_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: frame_rate: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_frame_rate\00", [17 x i8] zeroinitializer }, align 32
@set_frame_rate._entry_ptr = internal global ptr @set_frame_rate._entry, section ".printk_index", align 4
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: bad header\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_pkt_scan._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: payload error\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.38 = internal global ptr @sd_pkt_scan._entry.36, section ".printk_index", align 4
@sd_pkt_scan._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.4, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: PTS not present\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.41 = internal global ptr @sd_pkt_scan._entry.39, section ".printk_index", align 4
@sd_pkt_scan._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.4, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: wrong sized frame\0A\00", [39 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.44 = internal global ptr @sd_pkt_scan._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 9963794, i64 10094849]
@__sancov_gen_cov_switch_values.52 = internal global [13 x i64] [i64 11, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963788, i64 9963794, i64 9963796, i64 9963797, i64 9963800, i64 9963803, i64 10094849]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1596, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1608, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1597, i32 16 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1581, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1568, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"ov772x_mode\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 86, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"bridge_init\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1317, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"bridge_init_767x\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 146, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"bridge_init_772x\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 422, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"sensor_init\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1321, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"sensor_init_767x\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 191, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"sensor_init_772x\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 460, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1343, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"ov767x_mode\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 108, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"ov772x_framerates\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 122, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 666, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 674, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 758, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 764, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 749, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 691, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 694, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 774, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 778, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [11 x i8] c"qvga_rates\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 119, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant [10 x i8] c"vga_rates\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 120, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 711, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1252, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"ov534_ctrl_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1199, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1299, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [10 x i8] c"sin_table\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [30 x i8] c"../include/linux/fixp-arith.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 22, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant [9 x i8] c"color_tb\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 904, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant [13 x i8] c"bridge_start\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1374, i32 32 }
@___asan_gen_.220 = private unnamed_addr constant [23 x i8] c"bridge_start_qvga_767x\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 382, i32 17 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"bridge_start_vga_767x\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 346, i32 17 }
@___asan_gen_.226 = private unnamed_addr constant [28 x i8] c"bridge_start_qvga_yuyv_772x\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 576, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant [27 x i8] c"bridge_start_vga_yuyv_772x\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 549, i32 17 }
@___asan_gen_.232 = private unnamed_addr constant [28 x i8] c"bridge_start_qvga_gbrg_772x\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 630, i32 17 }
@___asan_gen_.235 = private unnamed_addr constant [27 x i8] c"bridge_start_vga_gbrg_772x\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 603, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant [13 x i8] c"sensor_start\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1388, i32 32 }
@___asan_gen_.241 = private unnamed_addr constant [23 x i8] c"sensor_start_qvga_767x\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 415, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant [22 x i8] c"sensor_start_vga_767x\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 376, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant [28 x i8] c"sensor_start_qvga_yuyv_772x\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 592, i32 17 }
@___asan_gen_.250 = private unnamed_addr constant [27 x i8] c"sensor_start_vga_yuyv_772x\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 565, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant [28 x i8] c"sensor_start_qvga_gbrg_772x\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 646, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant [27 x i8] c"sensor_start_vga_gbrg_772x\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 619, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"rate_0\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 820, i32 29 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"rate_1\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 827, i32 29 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 860, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1475, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1481, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1487, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [35 x i8] c"../drivers/media/usb/gspca/ov534.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1509, i32 5 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_ov534__309_1608_sd_driver_init6, ptr @ov534_reg_read._entry, ptr @ov534_reg_read._entry.19, ptr @ov534_reg_read._entry_ptr, ptr @ov534_reg_read._entry_ptr.21, ptr @ov534_reg_write._entry, ptr @ov534_reg_write._entry.7, ptr @ov534_reg_write._entry_ptr, ptr @ov534_reg_write._entry_ptr.9, ptr @ov534_set_led._entry, ptr @ov534_set_led._entry_ptr, ptr @sccb_check_status._entry, ptr @sccb_check_status._entry_ptr, ptr @sccb_reg_read._entry, ptr @sccb_reg_read._entry.24, ptr @sccb_reg_read._entry_ptr, ptr @sccb_reg_read._entry_ptr.26, ptr @sccb_reg_write._entry, ptr @sccb_reg_write._entry.12, ptr @sccb_reg_write._entry_ptr, ptr @sccb_reg_write._entry_ptr.14, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry.36, ptr @sd_pkt_scan._entry.39, ptr @sd_pkt_scan._entry.42, ptr @sd_pkt_scan._entry_ptr, ptr @sd_pkt_scan._entry_ptr.38, ptr @sd_pkt_scan._entry_ptr.41, ptr @sd_pkt_scan._entry_ptr.44, ptr @set_frame_rate._entry, ptr @set_frame_rate._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @ov772x_mode, ptr @sd_init.bridge_init, ptr @bridge_init_767x, ptr @bridge_init_772x, ptr @sd_init.sensor_init, ptr @sensor_init_767x, ptr @sensor_init_772x, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ov767x_mode, ptr @ov772x_framerates, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @qvga_rates, ptr @vga_rates, ptr @.str.27, ptr @.str.28, ptr @sd_init_controls._key, ptr @.str.29, ptr @ov534_ctrl_ops, ptr @.str.30, ptr @.str.31, ptr @sin_table, ptr @setsaturation.color_tb, ptr @sd_start.bridge_start, ptr @bridge_start_qvga_767x, ptr @bridge_start_vga_767x, ptr @bridge_start_qvga_yuyv_772x, ptr @bridge_start_vga_yuyv_772x, ptr @bridge_start_qvga_gbrg_772x, ptr @bridge_start_vga_gbrg_772x, ptr @sd_start.sensor_start, ptr @sensor_start_qvga_767x, ptr @sensor_start_vga_767x, ptr @sensor_start_qvga_yuyv_772x, ptr @sensor_start_vga_yuyv_772x, ptr @sensor_start_qvga_gbrg_772x, ptr @sensor_start_vga_gbrg_772x, ptr @set_frame_rate.rate_0, ptr @set_frame_rate.rate_1, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init.bridge_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_init_767x to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_init_772x to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init.sensor_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_init_767x to i32), i32 306, i32 384, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_init_772x to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov767x_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov772x_framerates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov534_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov534_reg_write._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_reg_write._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov534_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov534_reg_read._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_reg_read._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qvga_rates to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_rates to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov534_set_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov534_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sin_table to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setsaturation.color_tb to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.bridge_start to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_qvga_767x to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_vga_767x to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_qvga_yuyv_772x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_vga_yuyv_772x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_qvga_gbrg_772x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_vga_gbrg_772x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.sensor_start to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_start_qvga_767x to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_start_vga_767x to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_start_qvga_yuyv_772x to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_start_vga_yuyv_772x to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_start_qvga_gbrg_772x to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_start_vga_gbrg_772x to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_frame_rate.rate_0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_frame_rate.rate_1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_frame_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2856, ptr noundef null) #7
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ov772x_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %nmodes, align 4
  %frame_rate = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %2 = ptrtoint ptr %frame_rate to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 30, ptr %frame_rate, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %2 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %entry.ov534_reg_write.exit80_crit_edge, label %do.body.i

entry.ov534_reg_write.exit80_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit80

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp1.i = icmp sgt i32 %4, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 231, i32 noundef 58) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 58, ptr %6, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 231, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end7.i.ov534_reg_write.exit80.sink.split_crit_edge, label %ov534_reg_write.exit

do.end7.i.ov534_reg_write.exit80.sink.split_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit80.sink.split

ov534_reg_write.exit:                             ; preds = %do.end7.i
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i, align 8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i66 = icmp slt i32 %.pr, 0
  br i1 %cmp.i66, label %ov534_reg_write.exit.ov534_reg_write.exit80_crit_edge, label %do.body.i68

ov534_reg_write.exit.ov534_reg_write.exit80_crit_edge: ; preds = %ov534_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit80

do.body.i68:                                      ; preds = %ov534_reg_write.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp1.i67 = icmp sgt i32 %14, 6
  br i1 %cmp1.i67, label %do.end.i71, label %do.body.i68.do.end7.i77_crit_edge

do.body.i68.do.end7.i77_crit_edge:                ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i77

do.end.i71:                                       ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #9
  %name.i69 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i69, i32 noundef 224, i32 noundef 8) #10
  br label %do.end7.i77

do.end7.i77:                                      ; preds = %do.end.i71, %do.body.i68.do.end7.i77_crit_edge
  %15 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %16, align 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 8
  %shl.i.i73 = shl i32 %19, 8
  %or.i74 = or i32 %shl.i.i73, -2147483648
  %20 = load ptr, ptr %usb_buf.i, align 4
  %call10.i75 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i74, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i75)
  %cmp11.i76 = icmp slt i32 %call10.i75, 0
  br i1 %cmp11.i76, label %do.end7.i77.ov534_reg_write.exit80.sink.split_crit_edge, label %do.end7.i77.ov534_reg_write.exit80_crit_edge

do.end7.i77.ov534_reg_write.exit80_crit_edge:     ; preds = %do.end7.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit80

do.end7.i77.ov534_reg_write.exit80.sink.split_crit_edge: ; preds = %do.end7.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit80.sink.split

ov534_reg_write.exit80.sink.split:                ; preds = %do.end7.i77.ov534_reg_write.exit80.sink.split_crit_edge, %do.end7.i.ov534_reg_write.exit80.sink.split_crit_edge
  %call10.i.sink101 = phi i32 [ %call10.i, %do.end7.i.ov534_reg_write.exit80.sink.split_crit_edge ], [ %call10.i75, %do.end7.i77.ov534_reg_write.exit80.sink.split_crit_edge ]
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i.sink101) #10
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call10.i.sink101, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit80

ov534_reg_write.exit80:                           ; preds = %ov534_reg_write.exit80.sink.split, %do.end7.i77.ov534_reg_write.exit80_crit_edge, %ov534_reg_write.exit.ov534_reg_write.exit80_crit_edge, %entry.ov534_reg_write.exit80_crit_edge
  tail call void @msleep(i32 noundef 100) #7
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i83 = icmp slt i32 %25, 0
  br i1 %cmp.i83, label %ov534_reg_write.exit80.ov534_reg_write.exit97_crit_edge, label %do.body.i85

ov534_reg_write.exit80.ov534_reg_write.exit97_crit_edge: ; preds = %ov534_reg_write.exit80
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit97

do.body.i85:                                      ; preds = %ov534_reg_write.exit80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp1.i84 = icmp sgt i32 %26, 6
  br i1 %cmp1.i84, label %do.end.i88, label %do.body.i85.do.end7.i94_crit_edge

do.body.i85.do.end7.i94_crit_edge:                ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i94

do.end.i88:                                       ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #9
  %name.i86 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i86, i32 noundef 241, i32 noundef 66) #10
  br label %do.end7.i94

do.end7.i94:                                      ; preds = %do.end.i88, %do.body.i85.do.end7.i94_crit_edge
  %usb_buf.i89 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %27 = ptrtoint ptr %usb_buf.i89 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i89, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 66, ptr %28, align 1
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %23, align 8
  %shl.i.i90 = shl i32 %31, 8
  %or.i91 = or i32 %shl.i.i90, -2147483648
  %32 = load ptr, ptr %usb_buf.i89, align 4
  %call10.i92 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i91, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 241, ptr noundef %32, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i92)
  %cmp11.i93 = icmp slt i32 %call10.i92, 0
  br i1 %cmp11.i93, label %do.end16.i96, label %do.end7.i94.ov534_reg_write.exit97_crit_edge

do.end7.i94.ov534_reg_write.exit97_crit_edge:     ; preds = %do.end7.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit97

do.end16.i96:                                     ; preds = %do.end7.i94
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i92) #10
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call10.i92, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit97

ov534_reg_write.exit97:                           ; preds = %do.end16.i96, %do.end7.i94.ov534_reg_write.exit97_crit_edge, %ov534_reg_write.exit80.ov534_reg_write.exit97_crit_edge
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128)
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 10)
  %call1 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 10)
  %conv = zext i8 %call1 to i16
  %shl = shl nuw i16 %conv, 8
  %call3 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 11)
  %call4 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 11)
  %conv5 = zext i8 %call4 to i16
  %or = or i16 %shl, %conv5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %34 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp sgt i32 %34, 0
  br i1 %cmp, label %do.end, label %ov534_reg_write.exit97.do.end13_crit_edge

ov534_reg_write.exit97.do.end13_crit_edge:        ; preds = %ov534_reg_write.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %ov534_reg_write.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv10 = zext i16 %or to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv10) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %ov534_reg_write.exit97.do.end13_crit_edge
  %35 = and i16 %or, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 30320, i16 %35)
  %cmp15 = icmp eq i16 %35, 30320
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %36 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ov767x_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %37 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %nmodes, align 4
  br label %if.end24

if.else:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %38 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %bulk, align 1
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16384, ptr %bulk_size, align 4
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %40 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %bulk_nurbs, align 2
  %mode_framerates = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %mode_framerates to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ov772x_framerates, ptr %mode_framerates, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then17
  %.sink = phi i8 [ 0, %if.then17 ], [ 1, %if.else ]
  %42 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink, ptr %42, align 1
  %idxprom = zext i8 %.sink to i32
  %arrayidx = getelementptr [2 x %struct.reg_array], ptr @sd_init.bridge_init, i32 0, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %len = getelementptr [2 x %struct.reg_array], ptr @sd_init.bridge_init, i32 0, i32 %idxprom, i32 1
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef %45, i32 noundef %47)
  tail call fastcc void @ov534_set_led(ptr noundef %gspca_dev, i32 noundef 1)
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %42, align 1
  %idxprom30 = zext i8 %49 to i32
  %len36 = getelementptr [2 x %struct.reg_array], ptr @sd_init.sensor_init, i32 0, i32 %idxprom30, i32 1
  %50 = ptrtoint ptr %len36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len36, align 4
  %dec13.i = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec13.i)
  %cmp14.i = icmp sgt i32 %dec13.i, -1
  br i1 %cmp14.i, label %while.body.i.preheader, label %if.end24.sccb_w_array.exit_crit_edge

if.end24.sccb_w_array.exit_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sccb_w_array.exit

while.body.i.preheader:                           ; preds = %if.end24
  %arrayidx31 = getelementptr [2 x %struct.reg_array], ptr @sd_init.sensor_init, i32 0, i32 %idxprom30
  %52 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx31, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec17.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ %dec13.i, %while.body.i.preheader ]
  %data.addr.015.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %53, %while.body.i.preheader ]
  %54 = ptrtoint ptr %data.addr.015.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data.addr.015.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp1.not.i = icmp eq i8 %55, -1
  %arrayidx5.i = getelementptr [2 x i8], ptr %data.addr.015.i, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx5.i, align 1
  br i1 %cmp1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext %55, i8 noundef zeroext %57) #7
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %57 to i16
  %call.i98 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i) #7
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %incdec.ptr.i = getelementptr [2 x i8], ptr %data.addr.015.i, i32 1
  %dec.i = add i32 %dec17.i, -1
  %cmp.i99 = icmp sgt i32 %dec.i, -1
  br i1 %cmp.i99, label %if.end.i.while.body.i_crit_edge, label %if.end.i.sccb_w_array.exit_crit_edge

if.end.i.sccb_w_array.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sccb_w_array.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

sccb_w_array.exit:                                ; preds = %if.end.i.sccb_w_array.exit_crit_edge, %if.end24.sccb_w_array.exit_crit_edge
  tail call void @sd_stopN(ptr noundef %gspca_dev)
  %58 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %usb_err.i, align 8
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %ctrl_handler2 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %2 = ptrtoint ptr %ctrl_handler2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctrl_handler, ptr %ctrl_handler2, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 13, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.29) #7
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp5 = icmp eq i8 %4, 1
  br i1 %cmp5, label %if.then7, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963779, i64 noundef -90, i64 noundef 90, i64 noundef 1, i64 noundef 0) #7
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %5 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %hue, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge
  %6 = select i1 %cmp, i64 6, i64 255
  %7 = select i1 %cmp, i64 3, i64 64
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef %6, i64 noundef 1, i64 noundef %7) #7
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %saturation, align 4
  %conv14 = select i1 %cmp, i64 -127, i64 0
  %9 = select i1 %cmp, i64 127, i64 255
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963776, i64 noundef %conv14, i64 noundef %9, i64 noundef 1, i64 noundef 0) #7
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %10 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %brightness, align 8
  %11 = select i1 %cmp, i64 128, i64 255
  %12 = select i1 %cmp, i64 64, i64 32
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef %11, i64 noundef 1, i64 noundef %12) #7
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %13 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %contrast, align 4
  %14 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp23 = icmp eq i8 %15, 1
  br i1 %cmp23, label %if.then25, label %if.end9.if.end28_crit_edge

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %16 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call26, ptr %16, align 8
  %call27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 20) #7
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call27, ptr %gain, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end9.if.end28_crit_edge
  %call29 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #7
  %19 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call29, ptr %19, align 4
  %21 = select i1 %cmp, i64 8, i64 0
  %22 = select i1 %cmp, i64 96, i64 255
  %23 = select i1 %cmp, i64 19, i64 120
  %call33 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963793, i64 noundef %21, i64 noundef %22, i64 noundef 1, i64 noundef %23) #7
  %exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call33, ptr %exposure, align 4
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %autowhitebalance = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %25 = ptrtoint ptr %autowhitebalance to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call34, ptr %autowhitebalance, align 8
  %26 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp37 = icmp eq i8 %27, 1
  br i1 %cmp37, label %if.then39, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 0) #7
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %28 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call40, ptr %sharpness, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end28.if.end41_crit_edge
  %29 = zext i1 %cmp to i64
  %call43 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef %29) #7
  %hflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %30 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call43, ptr %hflip, align 8
  %call44 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %31 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call44, ptr %vflip, align 4
  %call45 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @ov534_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #7
  %plfreq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %32 = ptrtoint ptr %plfreq to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45, ptr %plfreq, align 8
  %error = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %33 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %if.end50, label %do.end

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  %35 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  %37 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp53 = icmp eq i8 %38, 1
  br i1 %cmp53, label %if.then55, label %if.end50.if.end57_crit_edge

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %39 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %39, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end50.if.end57_crit_edge
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %19, i8 noundef zeroext 1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end
  %retval.0 = phi i32 [ %36, %do.end ], [ 0, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 30, i8 noundef zeroext 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %conv2 = zext i8 %3 to i32
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx4 = getelementptr [2 x [4 x %struct.reg_array]], ptr @sd_start.bridge_start, i32 0, i32 %idxprom, i32 %conv2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %len = getelementptr [2 x [4 x %struct.reg_array]], ptr @sd_start.bridge_start, i32 0, i32 %idxprom, i32 %conv2, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef %7, i32 noundef %9)
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor, align 1
  %idxprom10 = zext i8 %11 to i32
  %len18 = getelementptr [2 x [4 x %struct.reg_array]], ptr @sd_start.sensor_start, i32 0, i32 %idxprom10, i32 %conv2, i32 1
  %12 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len18, align 4
  %dec13.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec13.i)
  %cmp14.i = icmp sgt i32 %dec13.i, -1
  br i1 %cmp14.i, label %while.body.i.preheader, label %if.end.sccb_w_array.exit_crit_edge

if.end.sccb_w_array.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sccb_w_array.exit

while.body.i.preheader:                           ; preds = %if.end
  %arrayidx12 = getelementptr [2 x [4 x %struct.reg_array]], ptr @sd_start.sensor_start, i32 0, i32 %idxprom10, i32 %conv2
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec17.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ %dec13.i, %while.body.i.preheader ]
  %data.addr.015.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %15, %while.body.i.preheader ]
  %16 = ptrtoint ptr %data.addr.015.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data.addr.015.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp1.not.i = icmp eq i8 %17, -1
  %arrayidx5.i = getelementptr [2 x i8], ptr %data.addr.015.i, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.i, align 1
  br i1 %cmp1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext %17, i8 noundef zeroext %19) #7
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %19 to i16
  %call.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i) #7
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %incdec.ptr.i = getelementptr [2 x i8], ptr %data.addr.015.i, i32 1
  %dec.i = add i32 %dec17.i, -1
  %cmp.i = icmp sgt i32 %dec.i, -1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.sccb_w_array.exit_crit_edge

if.end.i.sccb_w_array.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sccb_w_array.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

sccb_w_array.exit:                                ; preds = %if.end.i.sccb_w_array.exit_crit_edge, %if.end.sccb_w_array.exit_crit_edge
  tail call fastcc void @set_frame_rate(ptr noundef %gspca_dev)
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %20 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hue, align 8
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %sccb_w_array.exit.if.end21_crit_edge, label %if.then19

sccb_w_array.exit.if.end21_crit_edge:             ; preds = %sccb_w_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %sccb_w_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %21) #7
  tail call fastcc void @sethue(ptr noundef %gspca_dev, i32 noundef %call)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %sccb_w_array.exit.if.end21_crit_edge
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %22 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %saturation, align 4
  %call22 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %23) #7
  tail call fastcc void @setsaturation(ptr noundef %gspca_dev, i32 noundef %call22)
  %24 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %tobool23.not = icmp eq ptr %26, null
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %26) #7
  tail call fastcc void @setagc(ptr noundef %gspca_dev, i32 noundef %call26)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %autowhitebalance = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %27 = ptrtoint ptr %autowhitebalance to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %autowhitebalance, align 8
  %call28 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %28) #7
  tail call fastcc void @setawb(ptr noundef %gspca_dev, i32 noundef %call28)
  %29 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call29 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %31) #7
  %32 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.i93 = icmp eq i8 %33, 0
  %conv2.i = select i1 %cmp.i93, i8 5, i8 1
  %34 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call29, label %if.end27.setaec.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
  ]

if.end27.setaec.exit_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %setaec.exit

sw.bb.i:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call.i94 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 19) #7
  %or16.i = or i8 %call.i94, %conv2.i
  br label %sw.epilog.sink.split.i

sw.bb6.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 19) #7
  %neg.i = xor i8 %conv2.i, -1
  %and.i = and i8 %call7.i, %neg.i
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb6.i, %sw.bb.i
  %and.sink.i = phi i8 [ %and.i, %sw.bb6.i ], [ %or16.i, %sw.bb.i ]
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %and.sink.i) #7
  br label %setaec.exit

setaec.exit:                                      ; preds = %sw.epilog.sink.split.i, %if.end27.setaec.exit_crit_edge
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gain, align 4
  %tobool30.not = icmp eq ptr %36, null
  br i1 %tobool30.not, label %setaec.exit.if.end34_crit_edge, label %if.then31

setaec.exit.if.end34_crit_edge:                   ; preds = %setaec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then31:                                        ; preds = %setaec.exit
  %call33 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %36) #7
  %and.i95 = and i32 %call33, 48
  %37 = zext i32 %and.i95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %and.i95, label %sw.default.i [
    i32 0, label %sw.bb.i96
    i32 16, label %sw.bb2.i
    i32 32, label %sw.bb4.i
  ]

sw.bb.i96:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i = and i32 %call33, 15
  br label %setgain.exit

sw.bb2.i:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %call33, 15
  %or.i = or i32 %and3.i, 48
  br label %setgain.exit

sw.bb4.i:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %and5.i = and i32 %call33, 15
  %or6.i = or i32 %and5.i, 112
  br label %setgain.exit

sw.default.i:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %and7.i = and i32 %call33, 15
  %or8.i = or i32 %and7.i, 240
  br label %setgain.exit

setgain.exit:                                     ; preds = %sw.default.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i96
  %val.addr.0.i = phi i32 [ %or8.i, %sw.default.i ], [ %or6.i, %sw.bb4.i ], [ %or.i, %sw.bb2.i ], [ %and1.i, %sw.bb.i96 ]
  %conv.i = trunc i32 %val.addr.0.i to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #7
  br label %if.end34

if.end34:                                         ; preds = %setgain.exit, %setaec.exit.if.end34_crit_edge
  %exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %exposure, align 4
  %call35 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %39) #7
  %40 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i98 = icmp eq i8 %41, 0
  br i1 %cmp.i98, label %if.then.i100, label %if.else.i101

if.then.i100:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i99 = trunc i32 %call35 to i8
  br label %setexposure.exit

if.else.i101:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %42 = lshr i32 %call35, 7
  %conv3.i = trunc i32 %42 to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 8, i8 noundef zeroext %conv3.i) #7
  %val.tr.i = trunc i32 %call35 to i8
  %conv4.i = shl i8 %val.tr.i, 1
  br label %setexposure.exit

setexposure.exit:                                 ; preds = %if.else.i101, %if.then.i100
  %conv4.sink.i = phi i8 [ %conv4.i, %if.else.i101 ], [ %conv2.i99, %if.then.i100 ]
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext %conv4.sink.i) #7
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %43 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %brightness, align 8
  %call36 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %44) #7
  %45 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i104 = icmp eq i8 %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp2.i = icmp slt i32 %call36, 0
  %sub.i = sub i32 128, %call36
  %47 = and i1 %cmp2.i, %cmp.i104
  %val.sink.i = select i1 %47, i32 %sub.i, i32 %call36
  %.sink.i = select i1 %cmp.i104, i8 85, i8 -101
  %conv6.i105 = trunc i32 %val.sink.i to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext %.sink.i, i8 noundef zeroext %conv6.i105) #7
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %48 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %contrast, align 4
  %call37 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %49) #7
  %50 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.i107 = icmp eq i8 %51, 0
  %conv2.i108 = trunc i32 %call37 to i8
  %..i = select i1 %cmp.i107, i8 86, i8 -100
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext %..i, i8 noundef zeroext %conv2.i108) #7
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %52 = ptrtoint ptr %sharpness to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sharpness, align 4
  %tobool38.not = icmp eq ptr %53, null
  br i1 %tobool38.not, label %setexposure.exit.if.end42_crit_edge, label %if.then39

setexposure.exit.if.end42_crit_edge:              ; preds = %setexposure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then39:                                        ; preds = %setexposure.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %53) #7
  %conv.i109 = trunc i32 %call41 to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -111, i8 noundef zeroext %conv.i109) #7
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -114, i8 noundef zeroext %conv.i109) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %setexposure.exit.if.end42_crit_edge
  %hflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %54 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hflip, align 8
  %call43 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %55) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %56 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vflip, align 4
  %call44 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %57) #7
  %58 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.i111 = icmp eq i8 %59, 0
  br i1 %cmp.i111, label %if.then.i113, label %if.else.i114

if.then.i113:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call.i112 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 30) #7
  %60 = and i8 %call.i112, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool.not.i = icmp eq i32 %call43, 0
  %61 = or i8 %60, 32
  %spec.select.i = select i1 %tobool.not.i, i8 %60, i8 %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool7.not.i = icmp eq i32 %call44, 0
  %62 = or i8 %spec.select.i, 16
  %val.1.i = select i1 %tobool7.not.i, i8 %spec.select.i, i8 %62
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 30, i8 noundef zeroext %val.1.i) #7
  br label %sethvflip.exit

if.else.i114:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 12) #7
  %63 = and i8 %call13.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp17.i = icmp eq i32 %call43, 0
  %64 = or i8 %63, 64
  %spec.select45.i = select i1 %cmp17.i, i8 %64, i8 %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp24.i = icmp eq i32 %call44, 0
  %65 = or i8 %spec.select45.i, -128
  %val.3.i = select i1 %cmp24.i, i8 %65, i8 %spec.select45.i
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 12, i8 noundef zeroext %val.3.i) #7
  br label %sethvflip.exit

sethvflip.exit:                                   ; preds = %if.else.i114, %if.then.i113
  %plfreq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %66 = ptrtoint ptr %plfreq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %plfreq, align 8
  %call45 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool.not.i115 = icmp eq i32 %call45, 0
  %cond.i = select i1 %tobool.not.i115, i8 0, i8 -98
  %68 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.i117 = icmp eq i8 %69, 0
  br i1 %cmp.i117, label %if.then.i118, label %sethvflip.exit.setlightfreq.exit_crit_edge

sethvflip.exit.setlightfreq.exit_crit_edge:       ; preds = %sethvflip.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %setlightfreq.exit

if.then.i118:                                     ; preds = %sethvflip.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 42, i8 noundef zeroext 0) #7
  %spec.store.select.i = select i1 %tobool.not.i115, i8 0, i8 -99
  br label %setlightfreq.exit

setlightfreq.exit:                                ; preds = %if.then.i118, %sethvflip.exit.setlightfreq.exit_crit_edge
  %val.addr.0.i119 = phi i8 [ %spec.store.select.i, %if.then.i118 ], [ %cond.i, %sethvflip.exit.setlightfreq.exit_crit_edge ]
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 43, i8 noundef zeroext %val.addr.0.i119) #7
  tail call fastcc void @ov534_set_led(ptr noundef %gspca_dev, i32 noundef 1)
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %72 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i120 = icmp slt i32 %73, 0
  br i1 %cmp.i120, label %setlightfreq.exit.ov534_reg_write.exit_crit_edge, label %do.body.i

setlightfreq.exit.ov534_reg_write.exit_crit_edge: ; preds = %setlightfreq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.body.i:                                        ; preds = %setlightfreq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %74 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %74)
  %cmp1.i = icmp sgt i32 %74, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 224, i32 noundef 0) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %75 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb_buf.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %76, align 1
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %71, align 8
  %shl.i.i = shl i32 %79, 8
  %or.i122 = or i32 %shl.i.i, -2147483648
  %80 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i122, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %80, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end7.i.ov534_reg_write.exit_crit_edge

do.end7.i.ov534_reg_write.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.end16.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i) #10
  %81 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call10.i, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit

ov534_reg_write.exit:                             ; preds = %do.end16.i, %do.end7.i.ov534_reg_write.exit_crit_edge, %setlightfreq.exit.ov534_reg_write.exit_crit_edge
  %82 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %usb_err.i, align 8
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %0 = ptrtoint ptr %bulk to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bulk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 2040, i32 2048
  %name30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %last_pts = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %last_fid = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %pixelformat = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 2
  %image_len = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %sizeimage = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 5
  br label %do.body

do.body:                                          ; preds = %scan_next.do.body_crit_edge, %entry
  %remaining_len.0 = phi i32 [ %len, %entry ], [ %sub128, %scan_next.do.body_crit_edge ]
  %data.addr.0 = phi ptr [ %data, %entry ], [ %add.ptr129, %scan_next.do.body_crit_edge ]
  %2 = tail call i32 @llvm.smin.i32(i32 %remaining_len.0, i32 %cond)
  %3 = ptrtoint ptr %data.addr.0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.addr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp4.not = icmp ne i8 %4, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp6 = icmp slt i32 %2, 12
  %or.cond = select i1 %cmp4.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %do.body8, label %if.end16

do.body8:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp9 = icmp sgt i32 %5, 4
  br i1 %cmp9, label %do.body8.discard.sink.split_crit_edge, label %do.body8.discard_crit_edge

do.body8.discard_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

do.body8.discard.sink.split_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard.sink.split

if.end16:                                         ; preds = %do.body
  %arrayidx17 = getelementptr i8, ptr %data.addr.0, i32 1
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %7 to i32
  %and = and i32 %conv18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end36, label %do.body21

do.body21:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp22 = icmp sgt i32 %8, 4
  br i1 %cmp22, label %do.body21.discard.sink.split_crit_edge, label %do.body21.discard_crit_edge

do.body21.discard_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

do.body21.discard.sink.split_crit_edge:           ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard.sink.split

if.end36:                                         ; preds = %if.end16
  %and39 = and i32 %conv18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body42, label %if.end57

do.body42:                                        ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp43 = icmp sgt i32 %9, 4
  br i1 %cmp43, label %do.body42.discard.sink.split_crit_edge, label %do.body42.discard_crit_edge

do.body42.discard_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

do.body42.discard.sink.split_crit_edge:           ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard.sink.split

if.end57:                                         ; preds = %if.end36
  %arrayidx58 = getelementptr i8, ptr %data.addr.0, i32 5
  %10 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %11 to i32
  %shl = shl nuw i32 %conv59, 24
  %arrayidx60 = getelementptr i8, ptr %data.addr.0, i32 4
  %12 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %13 to i32
  %shl62 = shl nuw nsw i32 %conv61, 16
  %or = or i32 %shl62, %shl
  %arrayidx63 = getelementptr i8, ptr %data.addr.0, i32 3
  %14 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %15 to i32
  %shl65 = shl nuw nsw i32 %conv64, 8
  %or66 = or i32 %or, %shl65
  %arrayidx67 = getelementptr i8, ptr %data.addr.0, i32 2
  %16 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %17 to i32
  %or69 = or i32 %or66, %conv68
  %18 = and i8 %7, 1
  %19 = zext i8 %18 to i16
  %20 = ptrtoint ptr %last_pts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_pts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or69, i32 %21)
  %cmp76.not = icmp eq i32 %or69, %21
  br i1 %cmp76.not, label %lor.lhs.false78, label %if.end57.if.then83_crit_edge

if.end57.if.then83_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

lor.lhs.false78:                                  ; preds = %if.end57
  %22 = ptrtoint ptr %last_fid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %last_fid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %19)
  %cmp81.not = icmp eq i16 %23, %19
  br i1 %cmp81.not, label %if.else, label %lor.lhs.false78.if.then83_crit_edge

lor.lhs.false78.if.then83_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then83

if.then83:                                        ; preds = %lor.lhs.false78.if.then83_crit_edge, %if.end57.if.then83_crit_edge
  %24 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %last_packet_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp85 = icmp eq i8 %25, 2
  br i1 %cmp85, label %if.then87, label %if.then83.if.end88_crit_edge

if.then83.if.end88_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then83.if.end88_crit_edge
  %26 = ptrtoint ptr %last_pts to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or69, ptr %last_pts, align 4
  %27 = ptrtoint ptr %last_fid to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %19, ptr %last_fid, align 8
  %add.ptr = getelementptr i8, ptr %data.addr.0, i32 12
  %sub = add nsw i32 %2, -12
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %sub) #7
  br label %scan_next

if.else:                                          ; preds = %lor.lhs.false78
  %and93 = and i32 %conv18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.else122, label %if.then95

if.then95:                                        ; preds = %if.else
  %28 = ptrtoint ptr %last_pts to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %last_pts, align 4
  %29 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixelformat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %30)
  %cmp97.not = icmp eq i32 %30, 1195724874
  br i1 %cmp97.not, label %if.then95.if.end119_crit_edge, label %land.lhs.true

if.then95.if.end119_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nsw i32 %2, -12
  br label %if.end119

land.lhs.true:                                    ; preds = %if.then95
  %31 = ptrtoint ptr %image_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %image_len, align 8
  %add = add nsw i32 %2, -12
  %sub99 = add i32 %add, %32
  %33 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub99, i32 %34)
  %cmp101.not = icmp eq i32 %sub99, %34
  br i1 %cmp101.not, label %land.lhs.true.if.end119_crit_edge, label %do.body104

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

do.body104:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %35 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp105 = icmp sgt i32 %35, 4
  br i1 %cmp105, label %do.body104.discard.sink.split_crit_edge, label %do.body104.discard_crit_edge

do.body104.discard_crit_edge:                     ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

do.body104.discard.sink.split_crit_edge:          ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard.sink.split

if.end119:                                        ; preds = %land.lhs.true.if.end119_crit_edge, %if.then95.if.end119_crit_edge
  %sub121.pre-phi = phi i32 [ %.pre, %if.then95.if.end119_crit_edge ], [ %add, %land.lhs.true.if.end119_crit_edge ]
  %add.ptr120 = getelementptr i8, ptr %data.addr.0, i32 12
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %add.ptr120, i32 noundef %sub121.pre-phi) #7
  br label %scan_next

if.else122:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr123 = getelementptr i8, ptr %data.addr.0, i32 12
  %sub124 = add nsw i32 %2, -12
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr123, i32 noundef %sub124) #7
  br label %scan_next

discard.sink.split:                               ; preds = %do.body104.discard.sink.split_crit_edge, %do.body42.discard.sink.split_crit_edge, %do.body21.discard.sink.split_crit_edge, %do.body8.discard.sink.split_crit_edge
  %.str.43.sink = phi ptr [ @.str.34, %do.body8.discard.sink.split_crit_edge ], [ @.str.37, %do.body21.discard.sink.split_crit_edge ], [ @.str.40, %do.body42.discard.sink.split_crit_edge ], [ @.str.43, %do.body104.discard.sink.split_crit_edge ]
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.43.sink, ptr noundef %name30) #10
  br label %discard

discard:                                          ; preds = %discard.sink.split, %do.body104.discard_crit_edge, %do.body42.discard_crit_edge, %do.body21.discard_crit_edge, %do.body8.discard_crit_edge
  %36 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %last_packet_type, align 4
  br label %scan_next

scan_next:                                        ; preds = %discard, %if.else122, %if.end119, %if.end88
  %sub128 = sub i32 %remaining_len.0, %2
  %add.ptr129 = getelementptr i8, ptr %data.addr.0, i32 %2
  %cmp131 = icmp sgt i32 %sub128, 0
  br i1 %cmp131, label %scan_next.do.body_crit_edge, label %do.end133

scan_next.do.body_crit_edge:                      ; preds = %scan_next
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end133:                                        ; preds = %scan_next
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %2 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %entry.ov534_reg_write.exit_crit_edge, label %do.body.i

entry.ov534_reg_write.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp1.i = icmp sgt i32 %4, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 224, i32 noundef 9) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 9, ptr %6, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end7.i.ov534_reg_write.exit_crit_edge

do.end7.i.ov534_reg_write.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.end16.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i) #10
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call10.i, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit

ov534_reg_write.exit:                             ; preds = %do.end16.i, %do.end7.i.ov534_reg_write.exit_crit_edge, %entry.ov534_reg_write.exit_crit_edge
  tail call fastcc void @ov534_set_led(ptr noundef %gspca_dev, i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sd_get_streamparm(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef writeonly %parm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %timeperframe, align 4
  %frame_rate = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %1 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %frame_rate, align 2
  %conv = zext i8 %2 to i32
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %denominator, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_set_streamparm(ptr noundef %gspca_dev, ptr nocapture noundef %parm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeperframe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %3, %1
  %conv = trunc i32 %div to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.sink = phi i8 [ %conv, %if.else ], [ 30, %lor.lhs.false.if.end_crit_edge ], [ 30, %entry.if.end_crit_edge ]
  %frame_rate5 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %4 = ptrtoint ptr %frame_rate5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.sink, ptr %frame_rate5, align 2
  %streaming = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 17
  %5 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %streaming, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @set_frame_rate(ptr noundef %gspca_dev)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %7 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %timeperframe, align 4
  %frame_rate9 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %8 = ptrtoint ptr %frame_rate9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %frame_rate9, align 2
  %conv10 = zext i8 %9 to i32
  %denominator11 = getelementptr inbounds %struct.v4l2_streamparm, ptr %parm, i32 0, i32 1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %denominator11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv10, ptr %denominator11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp = icmp sgt i32 %0, 6
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i8 %reg to i32
  %conv2 = zext i8 %val to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %do.end3.ov534_reg_write.exit52_crit_edge, label %do.body.i

do.end3.ov534_reg_write.exit52_crit_edge:         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52

do.body.i:                                        ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp1.i = icmp sgt i32 %5, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %reg to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 242, i32 noundef %conv4.i) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %reg, ptr %7, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 242, ptr noundef %11, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end7.i.ov534_reg_write.exit52.sink.split_crit_edge, label %ov534_reg_write.exit

do.end7.i.ov534_reg_write.exit52.sink.split_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52.sink.split

ov534_reg_write.exit:                             ; preds = %do.end7.i
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %usb_err.i, align 8
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i20 = icmp slt i32 %.pr, 0
  br i1 %cmp.i20, label %ov534_reg_write.exit.ov534_reg_write.exit52_crit_edge, label %do.body.i22

ov534_reg_write.exit.ov534_reg_write.exit52_crit_edge: ; preds = %ov534_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52

do.body.i22:                                      ; preds = %ov534_reg_write.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp1.i21 = icmp sgt i32 %15, 6
  br i1 %cmp1.i21, label %do.end.i26, label %do.body.i22.do.end7.i32_crit_edge

do.body.i22.do.end7.i32_crit_edge:                ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i32

do.end.i26:                                       ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #9
  %name.i23 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i24 = zext i8 %val to i32
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i23, i32 noundef 243, i32 noundef %conv4.i24) #10
  br label %do.end7.i32

do.end7.i32:                                      ; preds = %do.end.i26, %do.body.i22.do.end7.i32_crit_edge
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %val, ptr %17, align 1
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 8
  %shl.i.i28 = shl i32 %20, 8
  %or.i29 = or i32 %shl.i.i28, -2147483648
  %21 = load ptr, ptr %usb_buf.i, align 4
  %call10.i30 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i29, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 243, ptr noundef %21, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i30)
  %cmp11.i31 = icmp slt i32 %call10.i30, 0
  br i1 %cmp11.i31, label %do.end7.i32.ov534_reg_write.exit52.sink.split_crit_edge, label %ov534_reg_write.exit35

do.end7.i32.ov534_reg_write.exit52.sink.split_crit_edge: ; preds = %do.end7.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52.sink.split

ov534_reg_write.exit35:                           ; preds = %do.end7.i32
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr54.pr = load i32, ptr %usb_err.i, align 8
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr54.pr)
  %cmp.i38 = icmp slt i32 %.pr54.pr, 0
  br i1 %cmp.i38, label %ov534_reg_write.exit35.ov534_reg_write.exit52_crit_edge, label %do.body.i40

ov534_reg_write.exit35.ov534_reg_write.exit52_crit_edge: ; preds = %ov534_reg_write.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52

do.body.i40:                                      ; preds = %ov534_reg_write.exit35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp1.i39 = icmp sgt i32 %25, 6
  br i1 %cmp1.i39, label %do.end.i43, label %do.body.i40.do.end7.i49_crit_edge

do.body.i40.do.end7.i49_crit_edge:                ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i49

do.end.i43:                                       ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #9
  %name.i41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i41, i32 noundef 245, i32 noundef 55) #10
  br label %do.end7.i49

do.end7.i49:                                      ; preds = %do.end.i43, %do.body.i40.do.end7.i49_crit_edge
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 55, ptr %27, align 1
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %24, align 8
  %shl.i.i45 = shl i32 %30, 8
  %or.i46 = or i32 %shl.i.i45, -2147483648
  %31 = load ptr, ptr %usb_buf.i, align 4
  %call10.i47 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i46, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 245, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i47)
  %cmp11.i48 = icmp slt i32 %call10.i47, 0
  br i1 %cmp11.i48, label %do.end7.i49.ov534_reg_write.exit52.sink.split_crit_edge, label %do.end7.i49.ov534_reg_write.exit52_crit_edge

do.end7.i49.ov534_reg_write.exit52_crit_edge:     ; preds = %do.end7.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52

do.end7.i49.ov534_reg_write.exit52.sink.split_crit_edge: ; preds = %do.end7.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52.sink.split

ov534_reg_write.exit52.sink.split:                ; preds = %do.end7.i49.ov534_reg_write.exit52.sink.split_crit_edge, %do.end7.i32.ov534_reg_write.exit52.sink.split_crit_edge, %do.end7.i.ov534_reg_write.exit52.sink.split_crit_edge
  %call10.i.sink61 = phi i32 [ %call10.i, %do.end7.i.ov534_reg_write.exit52.sink.split_crit_edge ], [ %call10.i30, %do.end7.i32.ov534_reg_write.exit52.sink.split_crit_edge ], [ %call10.i47, %do.end7.i49.ov534_reg_write.exit52.sink.split_crit_edge ]
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i.sink61) #10
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call10.i.sink61, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit52

ov534_reg_write.exit52:                           ; preds = %ov534_reg_write.exit52.sink.split, %do.end7.i49.ov534_reg_write.exit52_crit_edge, %ov534_reg_write.exit35.ov534_reg_write.exit52_crit_edge, %ov534_reg_write.exit.ov534_reg_write.exit52_crit_edge, %do.end3.ov534_reg_write.exit52_crit_edge
  %call4 = tail call fastcc i32 @sccb_check_status(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end7, label %ov534_reg_write.exit52.if.end10_crit_edge

ov534_reg_write.exit52.if.end10_crit_edge:        ; preds = %ov534_reg_write.exit52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end7:                                          ; preds = %ov534_reg_write.exit52
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -5, ptr %usb_err.i, align 8
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %ov534_reg_write.exit52.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i16 %reg to i8
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %2 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %entry.ov534_reg_write.exit32_crit_edge, label %do.body.i

entry.ov534_reg_write.exit32_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit32

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp1.i = icmp sgt i32 %4, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv.mask = and i16 %reg, 255
  %conv4.i = zext i16 %conv.mask to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 242, i32 noundef %conv4.i) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %6, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 242, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end7.i.ov534_reg_write.exit32.sink.split_crit_edge, label %ov534_reg_write.exit

do.end7.i.ov534_reg_write.exit32.sink.split_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit32.sink.split

ov534_reg_write.exit:                             ; preds = %do.end7.i
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i, align 8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i18 = icmp slt i32 %.pr, 0
  br i1 %cmp.i18, label %ov534_reg_write.exit.ov534_reg_write.exit32_crit_edge, label %do.body.i20

ov534_reg_write.exit.ov534_reg_write.exit32_crit_edge: ; preds = %ov534_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit32

do.body.i20:                                      ; preds = %ov534_reg_write.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp1.i19 = icmp sgt i32 %14, 6
  br i1 %cmp1.i19, label %do.end.i23, label %do.body.i20.do.end7.i29_crit_edge

do.body.i20.do.end7.i29_crit_edge:                ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i29

do.end.i23:                                       ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #9
  %name.i21 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i21, i32 noundef 245, i32 noundef 51) #10
  br label %do.end7.i29

do.end7.i29:                                      ; preds = %do.end.i23, %do.body.i20.do.end7.i29_crit_edge
  %15 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 51, ptr %16, align 1
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 8
  %shl.i.i25 = shl i32 %19, 8
  %or.i26 = or i32 %shl.i.i25, -2147483648
  %20 = load ptr, ptr %usb_buf.i, align 4
  %call10.i27 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i26, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 245, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i27)
  %cmp11.i28 = icmp slt i32 %call10.i27, 0
  br i1 %cmp11.i28, label %do.end7.i29.ov534_reg_write.exit32.sink.split_crit_edge, label %do.end7.i29.ov534_reg_write.exit32_crit_edge

do.end7.i29.ov534_reg_write.exit32_crit_edge:     ; preds = %do.end7.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit32

do.end7.i29.ov534_reg_write.exit32.sink.split_crit_edge: ; preds = %do.end7.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit32.sink.split

ov534_reg_write.exit32.sink.split:                ; preds = %do.end7.i29.ov534_reg_write.exit32.sink.split_crit_edge, %do.end7.i.ov534_reg_write.exit32.sink.split_crit_edge
  %call10.i.sink51 = phi i32 [ %call10.i, %do.end7.i.ov534_reg_write.exit32.sink.split_crit_edge ], [ %call10.i27, %do.end7.i29.ov534_reg_write.exit32.sink.split_crit_edge ]
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i.sink51) #10
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call10.i.sink51, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit32

ov534_reg_write.exit32:                           ; preds = %ov534_reg_write.exit32.sink.split, %do.end7.i29.ov534_reg_write.exit32_crit_edge, %ov534_reg_write.exit.ov534_reg_write.exit32_crit_edge, %entry.ov534_reg_write.exit32_crit_edge
  %call = tail call fastcc i32 @sccb_check_status(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %ov534_reg_write.exit32.if.end_crit_edge

ov534_reg_write.exit32.if.end_crit_edge:          ; preds = %ov534_reg_write.exit32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %ov534_reg_write.exit32
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %ov534_reg_write.exit32.if.end_crit_edge
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i35 = icmp slt i32 %25, 0
  br i1 %cmp.i35, label %if.end.ov534_reg_write.exit49_crit_edge, label %do.body.i37

if.end.ov534_reg_write.exit49_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit49

do.body.i37:                                      ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp1.i36 = icmp sgt i32 %26, 6
  br i1 %cmp1.i36, label %do.end.i40, label %do.body.i37.do.end7.i46_crit_edge

do.body.i37.do.end7.i46_crit_edge:                ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i46

do.end.i40:                                       ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #9
  %name.i38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i38, i32 noundef 245, i32 noundef 249) #10
  br label %do.end7.i46

do.end7.i46:                                      ; preds = %do.end.i40, %do.body.i37.do.end7.i46_crit_edge
  %usb_buf.i41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %27 = ptrtoint ptr %usb_buf.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i41, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -7, ptr %28, align 1
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %23, align 8
  %shl.i.i42 = shl i32 %31, 8
  %or.i43 = or i32 %shl.i.i42, -2147483648
  %32 = load ptr, ptr %usb_buf.i41, align 4
  %call10.i44 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i43, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 245, ptr noundef %32, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i44)
  %cmp11.i45 = icmp slt i32 %call10.i44, 0
  br i1 %cmp11.i45, label %do.end16.i48, label %do.end7.i46.ov534_reg_write.exit49_crit_edge

do.end7.i46.ov534_reg_write.exit49_crit_edge:     ; preds = %do.end7.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit49

do.end16.i48:                                     ; preds = %do.end7.i46
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i44) #10
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call10.i44, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit49

ov534_reg_write.exit49:                           ; preds = %do.end16.i48, %do.end7.i46.ov534_reg_write.exit49_crit_edge, %if.end.ov534_reg_write.exit49_crit_edge
  %call2 = tail call fastcc i32 @sccb_check_status(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end6, label %ov534_reg_write.exit49.if.end9_crit_edge

ov534_reg_write.exit49.if.end9_crit_edge:         ; preds = %ov534_reg_write.exit49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end6:                                          ; preds = %ov534_reg_write.exit49
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %ov534_reg_write.exit49.if.end9_crit_edge
  %call10 = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 244)
  ret i8 %call10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dec4 = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec4)
  %cmp5 = icmp sgt i32 %dec4, -1
  br i1 %cmp5, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %ov534_reg_write.exit.while.body_crit_edge, %while.body.lr.ph
  %dec7 = phi i32 [ %dec4, %while.body.lr.ph ], [ %dec, %ov534_reg_write.exit.while.body_crit_edge ]
  %data.addr.06 = phi ptr [ %data, %while.body.lr.ph ], [ %incdec.ptr, %ov534_reg_write.exit.while.body_crit_edge ]
  %0 = ptrtoint ptr %data.addr.06 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.06, align 1
  %conv = zext i8 %1 to i16
  %arrayidx1 = getelementptr [2 x i8], ptr %data.addr.06, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %while.body.ov534_reg_write.exit_crit_edge, label %do.body.i

while.body.ov534_reg_write.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.body.i:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp1.i = icmp sgt i32 %8, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %1 to i32
  %conv4.i = zext i8 %3 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv4.i) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %3, ptr %10, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %14 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end7.i.ov534_reg_write.exit_crit_edge

do.end7.i.ov534_reg_write.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.end16.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i) #10
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10.i, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit

ov534_reg_write.exit:                             ; preds = %do.end16.i, %do.end7.i.ov534_reg_write.exit_crit_edge, %while.body.ov534_reg_write.exit_crit_edge
  %incdec.ptr = getelementptr [2 x i8], ptr %data.addr.06, i32 1
  %dec = add i32 %dec7, -1
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %ov534_reg_write.exit.while.body_crit_edge, label %ov534_reg_write.exit.while.end_crit_edge

ov534_reg_write.exit.while.end_crit_edge:         ; preds = %ov534_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

ov534_reg_write.exit.while.body_crit_edge:        ; preds = %ov534_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %ov534_reg_write.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov534_set_led(ptr noundef %gspca_dev, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %status) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 33)
  %1 = or i8 %call4, -128
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %do.end3.ov534_reg_write.exit_crit_edge, label %do.body.i

do.end3.ov534_reg_write.exit_crit_edge:           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.body.i:                                        ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp1.i = icmp sgt i32 %6, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %1 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 33, i32 noundef %conv4.i) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %1, ptr %8, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %12 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %12, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end7.i.ov534_reg_write.exit_crit_edge

do.end7.i.ov534_reg_write.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.end16.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i) #10
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call10.i, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit

ov534_reg_write.exit:                             ; preds = %do.end16.i, %do.end7.i.ov534_reg_write.exit_crit_edge, %do.end3.ov534_reg_write.exit_crit_edge
  %call6 = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  %14 = and i8 %call6, 127
  %masksel = select i1 %tobool.not, i8 0, i8 -128
  %data.0 = or i8 %14, %masksel
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i37 = icmp slt i32 %18, 0
  br i1 %cmp.i37, label %ov534_reg_write.exit.ov534_reg_write.exit52_crit_edge, label %do.body.i39

ov534_reg_write.exit.ov534_reg_write.exit52_crit_edge: ; preds = %ov534_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52

do.body.i39:                                      ; preds = %ov534_reg_write.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp1.i38 = icmp sgt i32 %19, 6
  br i1 %cmp1.i38, label %do.end.i43, label %do.body.i39.do.end7.i49_crit_edge

do.body.i39.do.end7.i49_crit_edge:                ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i49

do.end.i43:                                       ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #9
  %name.i40 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i41 = zext i8 %data.0 to i32
  %call.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i40, i32 noundef 35, i32 noundef %conv4.i41) #10
  br label %do.end7.i49

do.end7.i49:                                      ; preds = %do.end.i43, %do.body.i39.do.end7.i49_crit_edge
  %usb_buf.i44 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %20 = ptrtoint ptr %usb_buf.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i44, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %data.0, ptr %21, align 1
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %16, align 8
  %shl.i.i45 = shl i32 %24, 8
  %or.i46 = or i32 %shl.i.i45, -2147483648
  %25 = load ptr, ptr %usb_buf.i44, align 4
  %call10.i47 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i46, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef %25, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i47)
  %cmp11.i48 = icmp slt i32 %call10.i47, 0
  br i1 %cmp11.i48, label %do.end16.i51, label %do.end7.i49.ov534_reg_write.exit52_crit_edge

do.end7.i49.ov534_reg_write.exit52_crit_edge:     ; preds = %do.end7.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit52

do.end16.i51:                                     ; preds = %do.end7.i49
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i47) #10
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call10.i47, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit52

ov534_reg_write.exit52:                           ; preds = %do.end16.i51, %do.end7.i49.ov534_reg_write.exit52_crit_edge, %ov534_reg_write.exit.ov534_reg_write.exit52_crit_edge
  br i1 %tobool.not, label %if.then15, label %ov534_reg_write.exit52.if.end20_crit_edge

ov534_reg_write.exit52.if.end20_crit_edge:        ; preds = %ov534_reg_write.exit52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %ov534_reg_write.exit52
  %call16 = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 33)
  %27 = and i8 %call16, 127
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i55 = icmp slt i32 %31, 0
  br i1 %cmp.i55, label %if.then15.if.end20_crit_edge, label %do.body.i57

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.body.i57:                                      ; preds = %if.then15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp1.i56 = icmp sgt i32 %32, 6
  br i1 %cmp1.i56, label %do.end.i61, label %do.body.i57.do.end7.i67_crit_edge

do.body.i57.do.end7.i67_crit_edge:                ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i67

do.end.i61:                                       ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #9
  %name.i58 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i59 = zext i8 %27 to i32
  %call.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i58, i32 noundef 33, i32 noundef %conv4.i59) #10
  br label %do.end7.i67

do.end7.i67:                                      ; preds = %do.end.i61, %do.body.i57.do.end7.i67_crit_edge
  %usb_buf.i62 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %33 = ptrtoint ptr %usb_buf.i62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf.i62, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %27, ptr %34, align 1
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %29, align 8
  %shl.i.i63 = shl i32 %37, 8
  %or.i64 = or i32 %shl.i.i63, -2147483648
  %38 = load ptr, ptr %usb_buf.i62, align 4
  %call10.i65 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i64, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %38, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i65)
  %cmp11.i66 = icmp slt i32 %call10.i65, 0
  br i1 %cmp11.i66, label %do.end16.i69, label %do.end7.i67.if.end20_crit_edge

do.end7.i67.if.end20_crit_edge:                   ; preds = %do.end7.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end16.i69:                                     ; preds = %do.end7.i67
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i65) #10
  %39 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call10.i65, ptr %usb_err.i, align 8
  br label %if.end20

if.end20:                                         ; preds = %do.end16.i69, %do.end7.i67.if.end20_crit_edge, %if.then15.if.end20_crit_edge, %ov534_reg_write.exit52.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sccb_check_status(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 246)
  %0 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %call, label %do.end [
    i8 0, label %entry.cleanup_crit_edge
    i8 4, label %entry.cleanup.loopexit11_crit_edge
    i8 3, label %entry.for.inc_crit_edge
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

entry.cleanup.loopexit11_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %conv, i32 noundef 1) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call.1 = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 246)
  %1 = zext i8 %call.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %call.1, label %do.end.1 [
    i8 0, label %for.inc.cleanup_crit_edge
    i8 4, label %for.inc.cleanup.loopexit11_crit_edge
    i8 3, label %for.inc.for.inc.1_crit_edge
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.cleanup.loopexit11_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit11

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %conv.1 = zext i8 %call.1 to i32
  %call3.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %conv.1, i32 noundef 2) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call.2 = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 246)
  %2 = zext i8 %call.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %call.2, label %do.end.2 [
    i8 0, label %for.inc.1.cleanup_crit_edge
    i8 4, label %for.inc.1.cleanup.loopexit11_crit_edge
    i8 3, label %for.inc.1.for.inc.2_crit_edge
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.1.cleanup.loopexit11_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit11

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %conv.2 = zext i8 %call.2 to i32
  %call3.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %conv.2, i32 noundef 3) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %for.inc.1.for.inc.2_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call.3 = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 246)
  %3 = zext i8 %call.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %call.3, label %do.end.3 [
    i8 0, label %for.inc.2.cleanup_crit_edge
    i8 4, label %for.inc.2.cleanup.loopexit11_crit_edge
    i8 3, label %for.inc.2.for.inc.3_crit_edge
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.2.cleanup.loopexit11_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit11

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %conv.3 = zext i8 %call.3 to i32
  %call3.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %conv.3, i32 noundef 4) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end.3, %for.inc.2.for.inc.3_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call.4 = tail call fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 246)
  %4 = zext i8 %call.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %call.4, label %do.end.4 [
    i8 0, label %for.inc.3.cleanup_crit_edge
    i8 4, label %for.inc.3.cleanup.loopexit11_crit_edge
    i8 3, label %for.inc.3.for.inc.4_crit_edge
  ]

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

for.inc.3.cleanup.loopexit11_crit_edge:           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit11

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %conv.4 = zext i8 %call.4 to i32
  %call3.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %conv.4, i32 noundef 5) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end.4, %for.inc.3.for.inc.4_crit_edge
  br label %cleanup

cleanup.loopexit11:                               ; preds = %for.inc.3.cleanup.loopexit11_crit_edge, %for.inc.2.cleanup.loopexit11_crit_edge, %for.inc.1.cleanup.loopexit11_crit_edge, %for.inc.cleanup.loopexit11_crit_edge, %entry.cleanup.loopexit11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit11, %for.inc.4, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.loopexit11 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 1, %for.inc.1.cleanup_crit_edge ], [ 1, %for.inc.2.cleanup_crit_edge ], [ 1, %for.inc.3.cleanup_crit_edge ], [ 0, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ov534_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
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
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or1 = or i32 %shl.i, -2147483520
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf, align 4
  %call2 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %reg, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp3 = icmp sgt i32 %8, 5
  br i1 %cmp3, label %do.end, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i16 %reg to i32
  %9 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv7 = zext i8 %12 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %conv, i32 noundef %conv7) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.end.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp12 = icmp slt i32 %call2, 0
  br i1 %cmp12, label %do.end17, label %do.end11.if.end23_crit_edge

do.end11.if.end23_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end17:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call2) #10
  %13 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2, ptr %usb_err, align 8
  %14 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %15, align 1
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %do.end11.if.end23_crit_edge
  %17 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %20, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov534_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -2608
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963794, label %sw.bb
    i32 10094849, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %usb_err = getelementptr i8, ptr %1, i32 -24
  %5 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %usb_err, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.cleanup.sink.split_crit_edge, label %land.lhs.true

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %sw.bb
  %gain = getelementptr i8, ptr %1, i32 204
  %8 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gain, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true3

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true3:                                   ; preds = %land.lhs.true
  %streaming = getelementptr i8, ptr %1, i32 -786
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %streaming, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %land.lhs.true3.cleanup.sink.split_crit_edge, label %if.then

land.lhs.true3.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 0) #7
  %conv.i = zext i8 %call.i to i32
  br label %cleanup.sink.split.sink.split

sw.bb8:                                           ; preds = %entry
  %usb_err9 = getelementptr i8, ptr %1, i32 -24
  %12 = ptrtoint ptr %usb_err9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %usb_err9, align 8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %land.lhs.true11, label %sw.bb8.cleanup.sink.split_crit_edge

sw.bb8.cleanup.sink.split_crit_edge:              ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true11:                                  ; preds = %sw.bb8
  %exposure = getelementptr i8, ptr %1, i32 216
  %15 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exposure, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %land.lhs.true11.cleanup.sink.split_crit_edge, label %land.lhs.true13

land.lhs.true11.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %streaming14 = getelementptr i8, ptr %1, i32 -786
  %17 = ptrtoint ptr %streaming14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %streaming14, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %land.lhs.true13.cleanup.sink.split_crit_edge, label %if.then16

land.lhs.true13.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then16:                                        ; preds = %land.lhs.true13
  %sensor.i = getelementptr i8, ptr %1, i32 243
  %19 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sensor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i = icmp eq i8 %20, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %call.i37 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 16) #7
  %conv2.i = zext i8 %call.i37 to i32
  br label %cleanup.sink.split.sink.split

if.else.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 8) #7
  %call4.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 16) #7
  %conv5.i = zext i8 %call3.i to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 8
  %conv6.i = zext i8 %call4.i to i32
  %or.i = or i32 %shl.i, %conv6.i
  %21 = lshr i32 %or.i, 1
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.else.i, %if.then.i, %if.then
  %exposure.sink = phi ptr [ %gain, %if.then ], [ %exposure, %if.then.i ], [ %exposure, %if.else.i ]
  %retval.0.i.sink = phi i32 [ %conv.i, %if.then ], [ %conv2.i, %if.then.i ], [ %21, %if.else.i ]
  %usb_err9.sink.ph = phi ptr [ %usb_err, %if.then ], [ %usb_err9, %if.then.i ], [ %usb_err9, %if.else.i ]
  %22 = ptrtoint ptr %exposure.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %exposure.sink, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.sink, ptr %val19, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %land.lhs.true13.cleanup.sink.split_crit_edge, %land.lhs.true11.cleanup.sink.split_crit_edge, %sw.bb8.cleanup.sink.split_crit_edge, %land.lhs.true3.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %usb_err9.sink = phi ptr [ %usb_err, %land.lhs.true3.cleanup.sink.split_crit_edge ], [ %usb_err, %land.lhs.true.cleanup.sink.split_crit_edge ], [ %usb_err, %sw.bb.cleanup.sink.split_crit_edge ], [ %usb_err9, %land.lhs.true13.cleanup.sink.split_crit_edge ], [ %usb_err9, %land.lhs.true11.cleanup.sink.split_crit_edge ], [ %usb_err9, %sw.bb8.cleanup.sink.split_crit_edge ], [ %usb_err9.sink.ph, %cleanup.sink.split.sink.split ]
  %25 = ptrtoint ptr %usb_err9.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_err9.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %26, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov534_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -2608
  %usb_err = getelementptr i8, ptr %1, i32 -24
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 -786
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !170
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
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963779, label %sw.bb
    i32 9963778, label %sw.bb2
    i32 9963776, label %sw.bb4
    i32 9963777, label %sw.bb6
    i32 9963794, label %sw.bb8
    i32 9963788, label %sw.bb20
    i32 10094849, label %sw.bb22
    i32 9963803, label %sw.bb34
    i32 9963796, label %sw.bb36
    i32 9963797, label %sw.bb39
    i32 9963800, label %sw.bb42
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  tail call fastcc void @sethue(ptr noundef %add.ptr, i32 noundef %9)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val3, align 4
  tail call fastcc void @setsaturation(ptr noundef %add.ptr, i32 noundef %11)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val5, align 4
  %sensor.i = getelementptr i8, ptr %1, i32 243
  %14 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sensor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.i = icmp slt i32 %13, 0
  %sub.i = sub i32 128, %13
  %16 = and i1 %cmp2.i, %cmp.i
  %val.sink.i = select i1 %16, i32 %sub.i, i32 %13
  %.sink.i = select i1 %cmp.i, i8 85, i8 -101
  %conv6.i = trunc i32 %val.sink.i to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext %.sink.i, i8 noundef zeroext %conv6.i) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val7, align 4
  %sensor.i84 = getelementptr i8, ptr %1, i32 243
  %19 = ptrtoint ptr %sensor.i84 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sensor.i84, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i85 = icmp eq i8 %20, 0
  %conv2.i = trunc i32 %18 to i8
  %..i = select i1 %cmp.i85, i8 86, i8 -100
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext %..i, i8 noundef zeroext %conv2.i) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val9, align 4
  tail call fastcc void @setagc(ptr noundef %add.ptr, i32 noundef %22)
  %23 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool11.not = icmp eq i32 %24, 0
  br i1 %tobool11.not, label %land.lhs.true, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb8
  %25 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool13.not = icmp eq i32 %26, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true14:                                  ; preds = %land.lhs.true
  %gain = getelementptr i8, ptr %1, i32 204
  %27 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gain, align 4
  %tobool15.not = icmp eq ptr %28, null
  br i1 %tobool15.not, label %land.lhs.true14.sw.epilog_crit_edge, label %if.then16

land.lhs.true14.sw.epilog_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val18, align 4
  tail call fastcc void @setgain(ptr noundef %add.ptr, i32 noundef %30)
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val21, align 4
  tail call fastcc void @setawb(ptr noundef %add.ptr, i32 noundef %32)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val23, align 4
  %sensor.i86 = getelementptr i8, ptr %1, i32 243
  %35 = ptrtoint ptr %sensor.i86 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sensor.i86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i87 = icmp eq i8 %36, 0
  %conv2.i88 = select i1 %cmp.i87, i8 5, i8 1
  %37 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %34, label %sw.bb22.setaec.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
  ]

sw.bb22.setaec.exit_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %setaec.exit

sw.bb.i:                                          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 19) #7
  %or16.i = or i8 %call.i, %conv2.i88
  br label %sw.epilog.sink.split.i

sw.bb6.i:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 19) #7
  %neg.i = xor i8 %conv2.i88, -1
  %and.i = and i8 %call7.i, %neg.i
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb6.i, %sw.bb.i
  %and.sink.i = phi i8 [ %and.i, %sw.bb6.i ], [ %or16.i, %sw.bb.i ]
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %and.sink.i) #7
  br label %setaec.exit

setaec.exit:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb22.setaec.exit_crit_edge
  %38 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool25.not = icmp eq i32 %39, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %setaec.exit.sw.epilog_crit_edge

setaec.exit.sw.epilog_crit_edge:                  ; preds = %setaec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %setaec.exit
  %40 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp = icmp eq i32 %41, 1
  br i1 %cmp, label %land.lhs.true28, label %land.lhs.true26.sw.epilog_crit_edge

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true28:                                  ; preds = %land.lhs.true26
  %exposure = getelementptr i8, ptr %1, i32 216
  %42 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %exposure, align 4
  %tobool29.not = icmp eq ptr %43, null
  br i1 %tobool29.not, label %land.lhs.true28.sw.epilog_crit_edge, label %if.then30

land.lhs.true28.sw.epilog_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val32, align 4
  tail call fastcc void @setexposure(ptr noundef %add.ptr, i32 noundef %45)
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %46 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val35, align 4
  %conv.i = trunc i32 %47 to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext -111, i8 noundef zeroext %conv.i) #7
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext -114, i8 noundef zeroext %conv.i) #7
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val37, align 4
  %vflip = getelementptr i8, ptr %1, i32 228
  %50 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vflip, align 4
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val38, align 4
  %sensor.i89 = getelementptr i8, ptr %1, i32 243
  %54 = ptrtoint ptr %sensor.i89 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sensor.i89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp.i90 = icmp eq i8 %55, 0
  br i1 %cmp.i90, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %call.i91 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 30) #7
  %56 = and i8 %call.i91, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  %57 = or i8 %56, 32
  %spec.select.i = select i1 %tobool.not.i, i8 %56, i8 %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool7.not.i = icmp eq i32 %53, 0
  %58 = or i8 %spec.select.i, 16
  %val.1.i = select i1 %tobool7.not.i, i8 %spec.select.i, i8 %58
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext 30, i8 noundef zeroext %val.1.i) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 12) #7
  %59 = and i8 %call13.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp17.i = icmp eq i32 %49, 0
  %60 = or i8 %59, 64
  %spec.select45.i = select i1 %cmp17.i, i8 %60, i8 %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp24.i = icmp eq i32 %53, 0
  %61 = or i8 %spec.select45.i, -128
  %val.3.i = select i1 %cmp24.i, i8 %61, i8 %spec.select45.i
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext 12, i8 noundef zeroext %val.3.i) #7
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  %hflip = getelementptr i8, ptr %1, i32 224
  %62 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hflip, align 8
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %63, i32 0, i32 22
  %64 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val40, align 4
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %66 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val41, align 4
  %sensor.i92 = getelementptr i8, ptr %1, i32 243
  %68 = ptrtoint ptr %sensor.i92 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sensor.i92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.i93 = icmp eq i8 %69, 0
  br i1 %cmp.i93, label %if.then.i99, label %if.else.i105

if.then.i99:                                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  %call.i94 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 30) #7
  %70 = and i8 %call.i94, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i95 = icmp eq i32 %65, 0
  %71 = or i8 %70, 32
  %spec.select.i96 = select i1 %tobool.not.i95, i8 %70, i8 %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool7.not.i97 = icmp eq i32 %67, 0
  %72 = or i8 %spec.select.i96, 16
  %val.1.i98 = select i1 %tobool7.not.i97, i8 %spec.select.i96, i8 %72
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext 30, i8 noundef zeroext %val.1.i98) #7
  br label %sw.epilog

if.else.i105:                                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i100 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %add.ptr, i16 noundef zeroext 12) #7
  %73 = and i8 %call13.i100, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp17.i101 = icmp eq i32 %65, 0
  %74 = or i8 %73, 64
  %spec.select45.i102 = select i1 %cmp17.i101, i8 %74, i8 %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp24.i103 = icmp eq i32 %67, 0
  %75 = or i8 %spec.select45.i102, -128
  %val.3.i104 = select i1 %cmp24.i103, i8 %75, i8 %spec.select45.i102
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext 12, i8 noundef zeroext %val.3.i104) #7
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %76 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i107 = icmp eq i32 %77, 0
  %cond.i = select i1 %tobool.not.i107, i8 0, i8 -98
  %sensor.i108 = getelementptr i8, ptr %1, i32 243
  %78 = ptrtoint ptr %sensor.i108 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sensor.i108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp.i109 = icmp eq i8 %79, 0
  br i1 %cmp.i109, label %if.then.i110, label %sw.bb42.setlightfreq.exit_crit_edge

sw.bb42.setlightfreq.exit_crit_edge:              ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  br label %setlightfreq.exit

if.then.i110:                                     ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext 42, i8 noundef zeroext 0) #7
  %spec.store.select.i = select i1 %tobool.not.i107, i8 0, i8 -99
  br label %setlightfreq.exit

setlightfreq.exit:                                ; preds = %if.then.i110, %sw.bb42.setlightfreq.exit_crit_edge
  %val.addr.0.i = phi i8 [ %spec.store.select.i, %if.then.i110 ], [ %cond.i, %sw.bb42.setlightfreq.exit_crit_edge ]
  tail call fastcc void @sccb_reg_write(ptr noundef %add.ptr, i8 noundef zeroext 43, i8 noundef zeroext %val.addr.0.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %setlightfreq.exit, %if.else.i105, %if.then.i99, %if.else.i, %if.then.i, %sw.bb34, %if.then30, %land.lhs.true28.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %setaec.exit.sw.epilog_crit_edge, %sw.bb20, %if.then16, %land.lhs.true14.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  %80 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %81, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sethue(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.if.end23_crit_edge, label %if.else

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else:                                          ; preds = %entry
  %rem.i = srem i32 %val, 360
  %2 = trunc i32 %rem.i to i16
  %rem13.lhs.trunc.i = add nsw i16 %2, 360
  %rem134.i = urem i16 %rem13.lhs.trunc.i, 360
  %rem13.zext.i = zext i16 %rem134.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i)
  %cmp.i.i = icmp ugt i16 %rem134.i, 180
  %sub.i.i = add nsw i32 %rem13.zext.i, -180
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub.i.i, i32 %rem13.zext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i)
  %cmp1.i.i = icmp ugt i32 %spec.select.i.i, 90
  %sub3.i.i = sub nuw nsw i32 180, %spec.select.i.i
  %degrees.addr.1.i.i = select i1 %cmp1.i.i, i32 %sub3.i.i, i32 %spec.select.i.i
  %arrayidx.i.i = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %sub5.i.i = sub i32 0, %4
  %cond.i.i = select i1 %cmp.i.i, i32 %sub5.i.i, i32 %4
  %5 = ashr i32 %cond.i.i, 9
  %mul = and i32 %5, -128
  %div = sdiv i32 %mul, 32767
  %add = add i32 %val, 90
  %rem.i33 = srem i32 %add, 360
  %6 = trunc i32 %rem.i33 to i16
  %rem13.lhs.trunc.i34 = add nsw i16 %6, 360
  %rem134.i35 = urem i16 %rem13.lhs.trunc.i34, 360
  %rem13.zext.i36 = zext i16 %rem134.i35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i35)
  %cmp.i.i37 = icmp ugt i16 %rem134.i35, 180
  %sub.i.i38 = add nsw i32 %rem13.zext.i36, -180
  %spec.select.i.i39 = select i1 %cmp.i.i37, i32 %sub.i.i38, i32 %rem13.zext.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i39)
  %cmp1.i.i40 = icmp ugt i32 %spec.select.i.i39, 90
  %sub3.i.i41 = sub nuw nsw i32 180, %spec.select.i.i39
  %degrees.addr.1.i.i42 = select i1 %cmp1.i.i40, i32 %sub3.i.i41, i32 %spec.select.i.i39
  %arrayidx.i.i43 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i42
  %7 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i43, align 4
  %sub5.i.i44 = sub i32 0, %8
  %cond.i.i45 = select i1 %cmp.i.i37, i32 %sub5.i.i44, i32 %8
  %9 = ashr i32 %cond.i.i45, 9
  %mul5 = and i32 %9, -128
  %div6 = sdiv i32 %mul5, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32766, i32 %mul)
  %cmp9 = icmp slt i32 %mul, -32766
  %call12 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 171)
  br i1 %cmp9, label %if.then11, label %if.else17

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i8 %call12, 2
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -85, i8 noundef zeroext %10)
  %sub = sub nsw i32 0, %div
  br label %if.end

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %11 = and i8 %call12, -3
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -85, i8 noundef zeroext %11)
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then11
  %huesin.0.in = phi i32 [ %sub, %if.then11 ], [ %div, %if.else17 ]
  %conv21 = trunc i32 %div6 to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -87, i8 noundef zeroext %conv21)
  %conv22 = trunc i32 %huesin.0.in to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -86, i8 noundef zeroext %conv22)
  br label %if.end23

if.end23:                                         ; preds = %if.end, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setsaturation(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr [7 x [6 x i8]], ptr @setsaturation.color_tb, i32 0, i32 %val, i32 0
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 79, i8 noundef zeroext %3)
  %arrayidx5.1 = getelementptr [7 x [6 x i8]], ptr @setsaturation.color_tb, i32 0, i32 %val, i32 1
  %4 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5.1, align 1
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 80, i8 noundef zeroext %5)
  %arrayidx5.2 = getelementptr [7 x [6 x i8]], ptr @setsaturation.color_tb, i32 0, i32 %val, i32 2
  %6 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.2, align 1
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 81, i8 noundef zeroext %7)
  %arrayidx5.3 = getelementptr [7 x [6 x i8]], ptr @setsaturation.color_tb, i32 0, i32 %val, i32 3
  %8 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.3, align 1
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 82, i8 noundef zeroext %9)
  %arrayidx5.4 = getelementptr [7 x [6 x i8]], ptr @setsaturation.color_tb, i32 0, i32 %val, i32 4
  %10 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.4, align 1
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 83, i8 noundef zeroext %11)
  %arrayidx5.5 = getelementptr [7 x [6 x i8]], ptr @setsaturation.color_tb, i32 0, i32 %val, i32 5
  %12 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5.5, align 1
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 84, i8 noundef zeroext %13)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = trunc i32 %val to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -89, i8 noundef zeroext %conv6)
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext -88, i8 noundef zeroext %conv6)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.preheader
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setagc(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %call6 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 19)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = or i8 %call6, 4
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %0)
  %call2 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 100)
  %1 = or i8 %call2, 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = and i8 %call6, -5
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %2)
  %call9 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 100)
  %3 = and i8 %call9, -4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ %3, %if.else ], [ %1, %if.then ]
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 100, i8 noundef zeroext %.sink)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setgain(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %val, 48
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb2
    i32 32, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and1 = and i32 %val, 15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and3 = and i32 %val, 15
  %or = or i32 %and3, 48
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and5 = and i32 %val, 15
  %or6 = or i32 %and5, 112
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and7 = and i32 %val, 15
  %or8 = or i32 %and7, 240
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %val.addr.0 = phi i32 [ %or8, %sw.default ], [ %or6, %sw.bb4 ], [ %or, %sw.bb2 ], [ %and1, %sw.bb ]
  %conv = trunc i32 %val.addr.0 to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 0, i8 noundef zeroext %conv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setawb(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %call9 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 19)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = or i8 %call9, 2
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %0)
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  br i1 %cmp, label %if.then4, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 99)
  %3 = or i8 %call5, -64
  br label %if.end22.sink.split

if.else:                                          ; preds = %entry
  %4 = and i8 %call9, -3
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %4)
  %sensor12 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %5 = ptrtoint ptr %sensor12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensor12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp14 = icmp eq i8 %6, 1
  br i1 %cmp14, label %if.then16, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call fastcc zeroext i8 @sccb_reg_read(ptr noundef %gspca_dev, i16 noundef zeroext 99)
  %7 = and i8 %call17, 63
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.then16, %if.then4
  %.sink = phi i8 [ %7, %if.then16 ], [ %3, %if.then4 ]
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 99, i8 noundef zeroext %.sink)
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = trunc i32 %val to i8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = lshr i32 %val, 7
  %conv3 = trunc i32 %2 to i8
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 8, i8 noundef zeroext %conv3)
  %val.tr = trunc i32 %val to i8
  %conv4 = shl i8 %val.tr, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv4.sink = phi i8 [ %conv4, %if.else ], [ %conv2, %if.then ]
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext %conv4.sink)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_frame_rate(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %2 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %4 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %5 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %3, i32 %idxprom, i32 7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  %set_frame_rate.rate_0.set_frame_rate.rate_1 = select i1 %cmp2, ptr @set_frame_rate.rate_0, ptr @set_frame_rate.rate_1
  %dec37 = select i1 %cmp2, i32 4, i32 9
  %frame_rate = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %8 = ptrtoint ptr %frame_rate to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %frame_rate, align 2
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %dec40 = phi i32 [ %dec37, %while.body.lr.ph ], [ %dec, %if.end13.while.body_crit_edge ]
  %r.139 = phi ptr [ %set_frame_rate.rate_0.set_frame_rate.rate_1, %while.body.lr.ph ], [ %incdec.ptr, %if.end13.while.body_crit_edge ]
  %10 = ptrtoint ptr %r.139 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %r.139, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp10.not = icmp ult i8 %9, %11
  br i1 %cmp10.not, label %if.end13, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end13:                                         ; preds = %while.body
  %incdec.ptr = getelementptr %struct.rate_s, ptr %r.139, i32 1
  %dec = add nsw i32 %dec40, -1
  %cmp6 = icmp sgt i32 %dec40, 1
  br i1 %cmp6, label %if.end13.while.body_crit_edge, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %while.body.while.end_crit_edge
  %r.1.lcssa.ph = phi ptr [ %incdec.ptr, %if.end13.while.end_crit_edge ], [ %r.139, %while.body.while.end_crit_edge ]
  %r11 = getelementptr inbounds %struct.rate_s, ptr %r.1.lcssa.ph, i32 0, i32 1
  %12 = ptrtoint ptr %r11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %r11, align 1
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext %13)
  %r0d = getelementptr inbounds %struct.rate_s, ptr %r.1.lcssa.ph, i32 0, i32 2
  %14 = ptrtoint ptr %r0d to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %r0d, align 1
  tail call fastcc void @sccb_reg_write(ptr noundef %gspca_dev, i8 noundef zeroext 13, i8 noundef zeroext %15)
  %re5 = getelementptr inbounds %struct.rate_s, ptr %r.1.lcssa.ph, i32 0, i32 3
  %16 = ptrtoint ptr %re5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %re5, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp slt i32 %21, 0
  br i1 %cmp.i, label %while.end.ov534_reg_write.exit_crit_edge, label %do.body.i

while.end.ov534_reg_write.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.body.i:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp1.i = icmp sgt i32 %22, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %17 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 229, i32 noundef %conv4.i) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %17, ptr %24, align 1
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %28 = load ptr, ptr %usb_buf.i, align 4
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %28, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end7.i.ov534_reg_write.exit_crit_edge

do.end7.i.ov534_reg_write.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov534_reg_write.exit

do.end16.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call10.i) #10
  %29 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call10.i, ptr %usb_err.i, align 8
  br label %ov534_reg_write.exit

ov534_reg_write.exit:                             ; preds = %do.end16.i, %do.end7.i.ov534_reg_write.exit_crit_edge, %while.end.ov534_reg_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %30 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp14 = icmp sgt i32 %30, 0
  br i1 %cmp14, label %do.end, label %ov534_reg_write.exit.cleanup_crit_edge

ov534_reg_write.exit.cleanup_crit_edge:           ; preds = %ov534_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %ov534_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %r.1.lcssa.ph to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %r.1.lcssa.ph, align 1
  %conv19 = zext i8 %32 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %conv19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ov534_reg_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/ov534.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/ov534.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/ov534.c", i32 45, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_ov534__309_1608_sd_driver_init6, !8, !"__initcall__kmod_gspca_ov534__309_1608_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1608, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1597, i32 16}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1596, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1568, i32 29}
!17 = !{ptr @ov772x_mode, !18, !"ov772x_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/ov534.c", i32 86, i32 37}
!19 = !{ptr @sd_init.bridge_init, !20, !"bridge_init", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1317, i32 32}
!21 = !{ptr @sd_init.sensor_init, !22, !"sensor_init", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1321, i32 32}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1343, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sd_init._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @sd_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @bridge_init_767x, !30, !"bridge_init_767x", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/ov534.c", i32 146, i32 17}
!31 = !{ptr @bridge_init_772x, !32, !"bridge_init_772x", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/ov534.c", i32 422, i32 17}
!33 = !{ptr @sensor_init_767x, !34, !"sensor_init_767x", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/ov534.c", i32 191, i32 17}
!35 = !{ptr @sensor_init_772x, !36, !"sensor_init_772x", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/ov534.c", i32 460, i32 17}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/ov534.c", i32 666, i32 2}
!39 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ov534_reg_write._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ov534_reg_write._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/ov534.c", i32 674, i32 3}
!44 = !{ptr @ov534_reg_write._entry.7, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ov534_reg_write._entry_ptr.9, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/ov534.c", i32 758, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sccb_reg_write._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sccb_reg_write._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/ov534.c", i32 764, i32 3}
!53 = !{ptr @sccb_reg_write._entry.12, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sccb_reg_write._entry_ptr.14, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/ov534.c", i32 749, i32 4}
!57 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sccb_check_status._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sccb_check_status._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/ov534.c", i32 691, i32 2}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ov534_reg_read._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ov534_reg_read._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/ov534.c", i32 694, i32 3}
!67 = !{ptr @ov534_reg_read._entry.19, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ov534_reg_read._entry_ptr.21, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/ov534.c", i32 774, i32 3}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sccb_reg_read._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @sccb_reg_read._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/ov534.c", i32 778, i32 3}
!76 = !{ptr @sccb_reg_read._entry.24, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sccb_reg_read._entry_ptr.26, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ov767x_mode, !79, !"ov767x_mode", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/ov534.c", i32 108, i32 37}
!80 = !{ptr @ov772x_framerates, !81, !"ov772x_framerates", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/gspca/ov534.c", i32 122, i32 32}
!82 = !{ptr @qvga_rates, !83, !"qvga_rates", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/ov534.c", i32 119, i32 17}
!84 = !{ptr @vga_rates, !85, !"vga_rates", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/ov534.c", i32 120, i32 17}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/ov534.c", i32 711, i32 2}
!88 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ov534_set_led._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @ov534_set_led._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @sd_init_controls._key, !92, !"_key", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1252, i32 2}
!93 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1299, i32 3}
!96 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sd_init_controls._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sd_init_controls._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @ov534_ctrl_ops, !100, !"ov534_ctrl_ops", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1199, i32 35}
!101 = !{ptr @sin_table, !102, !"sin_table", i1 false, i1 false}
!102 = !{!"../include/linux/fixp-arith.h", i32 22, i32 18}
!103 = !{ptr @setsaturation.color_tb, !104, !"color_tb", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/ov534.c", i32 904, i32 13}
!105 = !{ptr @sd_start.bridge_start, !106, !"bridge_start", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1374, i32 32}
!107 = !{ptr @sd_start.sensor_start, !108, !"sensor_start", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1388, i32 32}
!109 = !{ptr @bridge_start_qvga_767x, !110, !"bridge_start_qvga_767x", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/ov534.c", i32 382, i32 17}
!111 = !{ptr @bridge_start_vga_767x, !112, !"bridge_start_vga_767x", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/gspca/ov534.c", i32 346, i32 17}
!113 = !{ptr @bridge_start_qvga_yuyv_772x, !114, !"bridge_start_qvga_yuyv_772x", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/gspca/ov534.c", i32 576, i32 17}
!115 = !{ptr @bridge_start_vga_yuyv_772x, !116, !"bridge_start_vga_yuyv_772x", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/gspca/ov534.c", i32 549, i32 17}
!117 = !{ptr @bridge_start_qvga_gbrg_772x, !118, !"bridge_start_qvga_gbrg_772x", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/ov534.c", i32 630, i32 17}
!119 = !{ptr @bridge_start_vga_gbrg_772x, !120, !"bridge_start_vga_gbrg_772x", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/gspca/ov534.c", i32 603, i32 17}
!121 = !{ptr @sensor_start_qvga_767x, !122, !"sensor_start_qvga_767x", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/gspca/ov534.c", i32 415, i32 17}
!123 = !{ptr @sensor_start_vga_767x, !124, !"sensor_start_vga_767x", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/gspca/ov534.c", i32 376, i32 17}
!125 = !{ptr @sensor_start_qvga_yuyv_772x, !126, !"sensor_start_qvga_yuyv_772x", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/gspca/ov534.c", i32 592, i32 17}
!127 = !{ptr @sensor_start_vga_yuyv_772x, !128, !"sensor_start_vga_yuyv_772x", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/gspca/ov534.c", i32 565, i32 17}
!129 = !{ptr @sensor_start_qvga_gbrg_772x, !130, !"sensor_start_qvga_gbrg_772x", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/gspca/ov534.c", i32 646, i32 17}
!131 = !{ptr @sensor_start_vga_gbrg_772x, !132, !"sensor_start_vga_gbrg_772x", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/gspca/ov534.c", i32 619, i32 17}
!133 = !{ptr @set_frame_rate.rate_0, !134, !"rate_0", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/gspca/ov534.c", i32 820, i32 29}
!135 = !{ptr @set_frame_rate.rate_1, !136, !"rate_1", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/gspca/ov534.c", i32 827, i32 29}
!137 = !{ptr @.str.32, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/gspca/ov534.c", i32 860, i32 2}
!139 = !{ptr @.str.33, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @set_frame_rate._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @set_frame_rate._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.34, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1475, i32 4}
!144 = !{ptr @.str.35, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @sd_pkt_scan._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @sd_pkt_scan._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.37, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1481, i32 4}
!149 = !{ptr @sd_pkt_scan._entry.36, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @sd_pkt_scan._entry_ptr.38, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.40, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1487, i32 4}
!153 = !{ptr @sd_pkt_scan._entry.39, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @sd_pkt_scan._entry_ptr.41, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.43, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1509, i32 5}
!157 = !{ptr @sd_pkt_scan._entry.42, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @sd_pkt_scan._entry_ptr.44, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @device_table, !160, !"device_table", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/gspca/ov534.c", i32 1581, i32 35}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i8 0, i8 2}
