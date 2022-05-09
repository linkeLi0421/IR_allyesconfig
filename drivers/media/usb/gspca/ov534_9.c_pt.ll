; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/ov534_9.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/ov534_9.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.sd = type { %struct.gspca_dev, i32, i8, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [59 x i8] c"gspca_ov534_9.author=Jean-Francois Moine <moinejf@free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_ov534_9.description=GSPCA/OV534_9 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_ov534_9.file=drivers/media/usb/gspca/gspca_ov534_9\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_ov534_9.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_ov534_9__309_1821_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_ov534_9\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ov534_9\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1449, i16 -32667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 12291, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1449, i16 5456, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Sensor ID: %04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/ov534_9.c\00", [62 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@ov965x_mode = internal constant { [5 x %struct.v4l2_pix_format], [48 x i8] } { [5 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 800, i32 600, i32 1195724874, i32 1, i32 800, i32 180590, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1024, i32 768, i32 1195724874, i32 1, i32 1024, i32 295502, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 1195724874, i32 1, i32 1280, i32 492110, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@bridge_init = internal constant { [31 x [2 x i8]], [34 x i8] } { [31 x [2 x i8]] [[2 x i8] c"\88\F8", [2 x i8] c"\89\FF", [2 x i8] c"v\03", [2 x i8] c"\92\03", [2 x i8] c"\95\10", [2 x i8] c"\E2\00", [2 x i8] c"\E7>", [2 x i8] c"\8D\1C", [2 x i8] c"\8E\00", [2 x i8] c"\8F\00", [2 x i8] c"\1F\00", [2 x i8] c"\C3\F9", [2 x i8] c"\89\FF", [2 x i8] c"\88\F8", [2 x i8] c"v\03", [2 x i8] c"\92\01", [2 x i8] c"\93\18", [2 x i8] c"\1C\0A", [2 x i8] c"\1DH", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"4\05", [2 x i8] c"\C2\0C", [2 x i8] c"\C3\F9", [2 x i8] c"4\05", [2 x i8] c"\E7.", [2 x i8] c"1\F9", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"%B", [2 x i8] c"\94\11"], [34 x i8] zeroinitializer }, align 32
@ov965x_init = internal constant { [177 x [2 x i8]], [94 x i8] } { [177 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] zeroinitializer, [2 x i8] c"\01\80", [2 x i8] c"\02\80", [2 x i8] c"\03\1B", [2 x i8] c"\04\03", [2 x i8] c"\0BW", [2 x i8] c"\0Ea", [2 x i8] c"\0FB", [2 x i8] c"\11\00", [2 x i8] c"\12\02", [2 x i8] c"\13\E7", [2 x i8] c"\14(", [2 x i8] c"\16$", [2 x i8] c"\17\1D", [2 x i8] c"\18\BD", [2 x i8] c"\19\01", [2 x i8] c"\1A\81", [2 x i8] c"\1E\04", [2 x i8] c"$<", [2 x i8] c"%6", [2 x i8] c"&q", [2 x i8] c"'\08", [2 x i8] c"(\08", [2 x i8] c")\15", [2 x i8] c"*\00", [2 x i8] c"+\00", [2 x i8] c",\08", [2 x i8] c"2\FF", [2 x i8] c"3\00", [2 x i8] c"4?", [2 x i8] c"5\00", [2 x i8] c"6\F8", [2 x i8] c"8r", [2 x i8] c"9W", [2 x i8] c":\80", [2 x i8] c";\C4", [2 x i8] c"=\99", [2 x i8] c"?\C1", [2 x i8] c"@\C0", [2 x i8] c"A@", [2 x i8] c"B\C0", [2 x i8] c"C\0A", [2 x i8] c"D\F0", [2 x i8] c"EF", [2 x i8] c"Fb", [2 x i8] c"G*", [2 x i8] c"H<", [2 x i8] c"J\FC", [2 x i8] c"K\FC", [2 x i8] c"L\7F", [2 x i8] c"M\7F", [2 x i8] c"N\7F", [2 x i8] c"O\98", [2 x i8] c"P\98", [2 x i8] c"Q\00", [2 x i8] c"R(", [2 x i8] c"Sp", [2 x i8] c"T\98", [2 x i8] c"X\1A", [2 x i8] c"Y\85", [2 x i8] c"Z\A9", [2 x i8] c"[d", [2 x i8] c"\\\84", [2 x i8] c"]S", [2 x i8] c"^\0E", [2 x i8] c"_\F0", [2 x i8] c"`\F0", [2 x i8] c"a\F0", [2 x i8] c"b\00", [2 x i8] c"c\00", [2 x i8] c"d\02", [2 x i8] c"e\16", [2 x i8] c"f\01", [2 x i8] c"i\02", [2 x i8] c"kZ", [2 x i8] c"l\04", [2 x i8] c"mU", [2 x i8] c"n\00", [2 x i8] c"o\9D", [2 x i8] c"p!", [2 x i8] c"qx", [2 x i8] c"r\00", [2 x i8] c"s\01", [2 x i8] c"t:", [2 x i8] c"u5", [2 x i8] c"v\01", [2 x i8] c"w\02", [2 x i8] c"z\12", [2 x i8] c"{\08", [2 x i8] c"|\16", [2 x i8] c"}0", [2 x i8] c"~^", [2 x i8] c"\7Fr", [2 x i8] c"\80\82", [2 x i8] c"\81\8E", [2 x i8] c"\82\9A", [2 x i8] c"\83\A4", [2 x i8] c"\84\AC", [2 x i8] c"\85\B8", [2 x i8] c"\86\C3", [2 x i8] c"\87\D6", [2 x i8] c"\88\E6", [2 x i8] c"\89\F2", [2 x i8] c"\8A\03", [2 x i8] c"\8C\89", [2 x i8] c"\14(", [2 x i8] c"\90}", [2 x i8] c"\91{", [2 x i8] c"\9D\03", [2 x i8] c"\9E\04", [2 x i8] c"\9Fz", [2 x i8] c"\A0y", [2 x i8] c"\A1@", [2 x i8] c"\A4P", [2 x i8] c"\A5h", [2 x i8] c"\A6J", [2 x i8] c"\A8\C1", [2 x i8] c"\A9\EF", [2 x i8] c"\AA\92", [2 x i8] c"\AB\04", [2 x i8] c"\AC\80", [2 x i8] c"\AD\80", [2 x i8] c"\AE\80", [2 x i8] c"\AF\80", [2 x i8] c"\B2\F2", [2 x i8] c"\B3 ", [2 x i8] c"\B4 ", [2 x i8] c"\B5\00", [2 x i8] c"\B6\AF", [2 x i8] c"\BB\AE", [2 x i8] c"\BC\7F", [2 x i8] c"\DB\7F", [2 x i8] c"\BE\7F", [2 x i8] c"\BF\7F", [2 x i8] c"\C0\E2", [2 x i8] c"\C1\C0", [2 x i8] c"\C2\01", [2 x i8] c"\C3N", [2 x i8] c"\C6\85", [2 x i8] c"\C7\80", [2 x i8] c"\C9\E0", [2 x i8] c"\CA\E8", [2 x i8] c"\CB\F0", [2 x i8] c"\CC\D8", [2 x i8] c"\CD\F1", [2 x i8] c"O\98", [2 x i8] c"P\98", [2 x i8] c"Q\00", [2 x i8] c"R(", [2 x i8] c"Sp", [2 x i8] c"T\98", [2 x i8] c"X\1A", [2 x i8] c"\FFA", [2 x i8] c"A@", [2 x i8] c"\C5\03", [2 x i8] c"j\02", [2 x i8] c"\12b", [2 x i8] c"6\FA", [2 x i8] c"i\0A", [2 x i8] c"\8C\89", [2 x i8] c"\14(", [2 x i8] c">\0C", [2 x i8] c"A@", [2 x i8] c"r\00", [2 x i8] c"s\00", [2 x i8] c"t:", [2 x i8] c"u5", [2 x i8] c"v\01", [2 x i8] c"\C7\80", [2 x i8] c"\03\12", [2 x i8] c"\17\16", [2 x i8] c"\18\02", [2 x i8] c"\19\01", [2 x i8] c"\1A=", [2 x i8] c"2\FF", [2 x i8] c"\C0\AA"], [94 x i8] zeroinitializer }, align 32
@bridge_init_2 = internal constant { [24 x [2 x i8]], [48 x i8] } { [24 x [2 x i8]] [[2 x i8] c"\94\AA", [2 x i8] c"\F1`", [2 x i8] c"\E5\04", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"\8C\00", [2 x i8] c"\8D\1C", [2 x i8] c"4\05", [2 x i8] c"\C2\0C", [2 x i8] c"\C3\F9", [2 x i8] c"\DA\01", [2 x i8] c"P\00", [2 x i8] c"Q\A0", [2 x i8] c"R<", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"W\00", [2 x i8] c"\\\00", [2 x i8] c"Z\A0", [2 x i8] c"[x", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"\94\11"], [48 x i8] zeroinitializer }, align 32
@ov965x_init_2 = internal constant { [34 x [2 x i8]], [60 x i8] } { [34 x [2 x i8]] [[2 x i8] c";\C4", [2 x i8] c"\1E\04", [2 x i8] c"\13\E0", [2 x i8] zeroinitializer, [2 x i8] c"\13\E7", [2 x i8] c"\11\03", [2 x i8] c"kZ", [2 x i8] c"j\05", [2 x i8] c"\C5\07", [2 x i8] c"\A2K", [2 x i8] c"\A3>", [2 x i8] c"-\00", [2 x i8] c"\FFB", [2 x i8] c"B\C0", [2 x i8] c"-\00", [2 x i8] c"\FFB", [2 x i8] c"B\C1", [2 x i8] c"?\01", [2 x i8] c"\FFB", [2 x i8] c"B\C1", [2 x i8] c"O\98", [2 x i8] c"P\98", [2 x i8] c"Q\00", [2 x i8] c"R(", [2 x i8] c"Sp", [2 x i8] c"T\98", [2 x i8] c"X\1A", [2 x i8] c"\FFA", [2 x i8] c"A@", [2 x i8] c"V@", [2 x i8] c"U\8F", [2 x i8] c"\10%", [2 x i8] c"\FF\13", [2 x i8] c"\13\E7"], [60 x i8] zeroinitializer }, align 32
@ov971x_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@ov971x_init = internal constant { [55 x [2 x i8]], [50 x i8] } { [55 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\09\10", [2 x i8] c"\1E\07", [2 x i8] c"_\18", [2 x i8] c"i\04", [2 x i8] c"e*", [2 x i8] c"h\0A", [2 x i8] c"9(", [2 x i8] c"M\90", [2 x i8] c"\C1\80", [2 x i8] c"\0C0", [2 x i8] c"m\02", [2 x i8] c"\96\F1", [2 x i8] c"\BCh", [2 x i8] c"\12\00", [2 x i8] c";\00", [2 x i8] c"\97\80", [2 x i8] c"\17%", [2 x i8] c"\18\A2", [2 x i8] c"\19\01", [2 x i8] c"\1A\CA", [2 x i8] c"\03\0A", [2 x i8] c"2\07", [2 x i8] c"\98@", [2 x i8] c"\99\A0", [2 x i8] c"\9A\01", [2 x i8] c"W\00", [2 x i8] c"Xx", [2 x i8] c"YP", [2 x i8] c"L\13", [2 x i8] c"K6", [2 x i8] c"=<", [2 x i8] c">\03", [2 x i8] c"\BDP", [2 x i8] c"\BEx", [2 x i8] c"NU", [2 x i8] c"OU", [2 x i8] c"PU", [2 x i8] c"QU", [2 x i8] c"$U", [2 x i8] c"%@", [2 x i8] c"&\A1", [2 x i8] c"\\Y", [2 x i8] c"]\00", [2 x i8] c"\11\00", [2 x i8] c"*\98", [2 x i8] c"+\06", [2 x i8] c"-\00", [2 x i8] c".\00", [2 x i8] c"\13\A5", [2 x i8] c"\14@", [2 x i8] c"J\00", [2 x i8] c"I\CE", [2 x i8] c"\22\03", [2 x i8] c"\09\00"], [50 x i8] zeroinitializer }, align 32
@ov562x_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 2592, i32 1680, i32 825770306, i32 1, i32 2592, i32 4354560, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@ov562x_init = internal constant { [13 x [2 x i8]], [38 x i8] } { [13 x [2 x i8]] [[2 x i8] c"\88 ", [2 x i8] c"\89\0A", [2 x i8] c"\8A\90", [2 x i8] c"\8B\06", [2 x i8] c"\8C\01", [2 x i8] c"\8D\10", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"\1D\00", [2 x i8] c"\1D\FF", [2 x i8] c"\1C\0A", [2 x i8] c"\1D.", [2 x i8] c"\1D\1E"], [38 x i8] zeroinitializer }, align 32
@ov562x_init_2 = internal constant { [99 x [2 x i8]], [58 x i8] } { [99 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\11A", [2 x i8] c"\13\00", [2 x i8] c"\10\1E", [2 x i8] c";\07", [2 x i8] c"[@", [2 x i8] c"9\07", [2 x i8] c"S\02", [2 x i8] c"T`", [2 x i8] c"\04 ", [2 x i8] c"'\04", [2 x i8] c"=@", [2 x i8] c"6\00", [2 x i8] c"\C5\04", [2 x i8] c"N\00", [2 x i8] c"O\93", [2 x i8] c"P{", [2 x i8] c"\CA\0C", [2 x i8] c"\CB\0F", [2 x i8] c"9\07", [2 x i8] c"J\10", [2 x i8] c">\0A", [2 x i8] c"=\00", [2 x i8] c"\0C8", [2 x i8] c"8\90", [2 x i8] c"F0", [2 x i8] c"O\93", [2 x i8] c"P{", [2 x i8] c"\AB\00", [2 x i8] c"\CA\0C", [2 x i8] c"\CB\0F", [2 x i8] c"7\02", [2 x i8] c"DH", [2 x i8] c"\8DD", [2 x i8] c"*\00", [2 x i8] c"+\00", [2 x i8] c"2\00", [2 x i8] c"8\90", [2 x i8] c"S\02", [2 x i8] c"T`", [2 x i8] c"\12\00", [2 x i8] c"\17\12", [2 x i8] c"\18\B4", [2 x i8] c"\19\0C", [2 x i8] c"\1A\F4", [2 x i8] c"\03J", [2 x i8] c"\89 ", [2 x i8] c"\83\80", [2 x i8] c"\B7\9D", [2 x i8] c"\B6\11", [2 x i8] c"\B5U", [2 x i8] c"\B4\00", [2 x i8] c"\A9\F0", [2 x i8] c"\A8\0A", [2 x i8] c"\B8\F0", [2 x i8] c"\B9\F0", [2 x i8] c"\BA\F0", [2 x i8] c"\81\07", [2 x i8] c"cD", [2 x i8] c"\13\C7", [2 x i8] c"\14`", [2 x i8] c"3u", [2 x i8] c",\00", [2 x i8] c"\09\00", [2 x i8] c"50", [2 x i8] c"'\04", [2 x i8] c"<\07", [2 x i8] c":\0A", [2 x i8] c";\07", [2 x i8] c"\01@", [2 x i8] c"\02@", [2 x i8] c"\16@", [2 x i8] c"R\B0", [2 x i8] c"Q\83", [2 x i8] c"!\BB", [2 x i8] c"\22\10", [2 x i8] c"#\03", [2 x i8] c"58", [2 x i8] c" \90", [2 x i8] c"(0", [2 x i8] c"s\E1", [2 x i8] c"l\00", [2 x i8] c"m\80", [2 x i8] c"n\00", [2 x i8] c"p\04", [2 x i8] c"q\00", [2 x i8] c"\8D\04", [2 x i8] c"d\00", [2 x i8] c"e\00", [2 x i8] c"f\00", [2 x i8] c"g\00", [2 x i8] c"h\00", [2 x i8] c"i\00", [2 x i8] c"j\00", [2 x i8] c"k\00", [2 x i8] c"q\94", [2 x i8] c"t ", [2 x i8] c"\80\09", [2 x i8] c"\85\C0"], [58 x i8] zeroinitializer }, align 32
@ov361x_mode = internal constant { [6 x %struct.v4l2_pix_format], [64 x i8] } { [6 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 2048, i32 1536, i32 825770306, i32 1, i32 2048, i32 3145728, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1600, i32 1200, i32 825770306, i32 1, i32 1600, i32 1920000, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1024, i32 768, i32 825770306, i32 1, i32 768, i32 786432, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 825770306, i32 1, i32 320, i32 76800, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 160, i32 120, i32 825770306, i32 1, i32 160, i32 19200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@sd_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_ov534_9: Unknown sensor %04x\00", [59 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.7 = internal global ptr @sd_init._entry.5, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: reg_w [%04x] = %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w_i._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gspca_ov534_9: reg_w failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reg_w_i\00", [24 x i8] zeroinitializer }, align 32
@reg_w_i._entry_ptr = internal global ptr @reg_w_i._entry, section ".printk_index", align 4
@sccb_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: sccb_write [%02x] = %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sccb_write\00", [21 x i8] zeroinitializer }, align 32
@sccb_write._entry_ptr = internal global ptr @sccb_write._entry, section ".printk_index", align 4
@sccb_write._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013gspca_ov534_9: sccb_write failed\0A\00", [60 x i8] zeroinitializer }, align 32
@sccb_write._entry_ptr.16 = internal global ptr @sccb_write._entry.14, section ".printk_index", align 4
@sccb_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: sccb status 0x%02x, attempt %d/5\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sccb_check_status\00", [46 x i8] zeroinitializer }, align 32
@sccb_check_status._entry_ptr = internal global ptr @sccb_check_status._entry, section ".printk_index", align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: reg_r [%04x] -> %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gspca_ov534_9: reg_r err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.23 = internal global ptr @reg_r._entry.21, section ".printk_index", align 4
@sccb_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_ov534_9: sccb_read failed 1\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sccb_read\00", [22 x i8] zeroinitializer }, align 32
@sccb_read._entry_ptr = internal global ptr @sccb_read._entry, section ".printk_index", align 4
@sccb_read._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_ov534_9: sccb_read failed 2\0A\00", [59 x i8] zeroinitializer }, align 32
@sccb_read._entry_ptr.28 = internal global ptr @sccb_read._entry.26, section ".printk_index", align 4
@set_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: led status: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_led\00", [24 x i8] zeroinitializer }, align 32
@set_led._entry_ptr = internal global ptr @set_led._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ov534_9:1750:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_ov534_9: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@setsatur.matrix = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] c"\148", [2 x i8] c"\1ET", [2 x i8] c"(p", [2 x i8] c"2\8C", [2 x i8] c"H\90"], [22 x i8] zeroinitializer }, align 32
@setexposure.expo = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00%8^", [28 x i8] zeroinitializer }, align 32
@ov965x_start_1_vga = internal constant { [20 x [2 x i8]], [56 x i8] } { [20 x [2 x i8]] [[2 x i8] c"\12b", [2 x i8] c"6\FA", [2 x i8] c"i\0A", [2 x i8] c"\8C\89", [2 x i8] c"\14(", [2 x i8] c">\0C", [2 x i8] c"A@", [2 x i8] c"r\00", [2 x i8] c"s\00", [2 x i8] c"t:", [2 x i8] c"u5", [2 x i8] c"v\01", [2 x i8] c"\C7\80", [2 x i8] c"\03\12", [2 x i8] c"\17\16", [2 x i8] c"\18\02", [2 x i8] c"\19\01", [2 x i8] c"\1A=", [2 x i8] c"2\FF", [2 x i8] c"\C0\AA"], [56 x i8] zeroinitializer }, align 32
@bridge_start_qvga = internal constant { [24 x [2 x i8]], [48 x i8] } { [24 x [2 x i8]] [[2 x i8] c"\94\AA", [2 x i8] c"\F1`", [2 x i8] c"\E5\04", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"\8C\00", [2 x i8] c"\8D\1C", [2 x i8] c"4\05", [2 x i8] c"\C2L", [2 x i8] c"\C3\F9", [2 x i8] c"\DA\00", [2 x i8] c"P\00", [2 x i8] c"Q\A0", [2 x i8] c"Rx", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"W\00", [2 x i8] c"\\\00", [2 x i8] c"ZP", [2 x i8] c"[<", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"\94\11"], [48 x i8] zeroinitializer }, align 32
@ov965x_start_2_qvga = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c";\E4", [2 x i8] c"\1E\04", [2 x i8] c"\13\E0", [2 x i8] zeroinitializer, [2 x i8] c"\13\E7", [2 x i8] c"\11\01", [2 x i8] c"kZ", [2 x i8] c"j\02", [2 x i8] c"\C5\03", [2 x i8] c"\A2\96", [2 x i8] c"\A3}", [2 x i8] c"\FF\13", [2 x i8] c"\13\E7", [2 x i8] c":\80"], [36 x i8] zeroinitializer }, align 32
@bridge_start_vga = internal constant { [24 x [2 x i8]], [48 x i8] } { [24 x [2 x i8]] [[2 x i8] c"\94\AA", [2 x i8] c"\F1`", [2 x i8] c"\E5\04", [2 x i8] c"\C0P", [2 x i8] c"\C1<", [2 x i8] c"\8C\00", [2 x i8] c"\8D\1C", [2 x i8] c"4\05", [2 x i8] c"\C2\0C", [2 x i8] c"\C3\F9", [2 x i8] c"\DA\01", [2 x i8] c"P\00", [2 x i8] c"Q\A0", [2 x i8] c"R<", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\00", [2 x i8] c"W\00", [2 x i8] c"\\\00", [2 x i8] c"Z\A0", [2 x i8] c"[x", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"\94\11"], [48 x i8] zeroinitializer }, align 32
@ov965x_start_2_vga = internal constant { [12 x [2 x i8]], [40 x i8] } { [12 x [2 x i8]] [[2 x i8] c";\C4", [2 x i8] c"\1E\04", [2 x i8] c"\13\E0", [2 x i8] zeroinitializer, [2 x i8] c"\13\E7", [2 x i8] c"\11\03", [2 x i8] c"kZ", [2 x i8] c"j\05", [2 x i8] c"\C5\07", [2 x i8] c"\A2K", [2 x i8] c"\A3>", [2 x i8] c"-\00"], [40 x i8] zeroinitializer }, align 32
@ov965x_start_1_svga = internal constant { [19 x [2 x i8]], [58 x i8] } { [19 x [2 x i8]] [[2 x i8] c"\12\02", [2 x i8] c"6\F8", [2 x i8] c"i\02", [2 x i8] c"\8C\0D", [2 x i8] c">\0C", [2 x i8] c"A@", [2 x i8] c"r\00", [2 x i8] c"s\01", [2 x i8] c"t:", [2 x i8] c"u5", [2 x i8] c"v\01", [2 x i8] c"\C7\80", [2 x i8] c"\03\1B", [2 x i8] c"\17\1D", [2 x i8] c"\18\BD", [2 x i8] c"\19\01", [2 x i8] c"\1A\81", [2 x i8] c"2\FF", [2 x i8] c"\C0\E2"], [58 x i8] zeroinitializer }, align 32
@bridge_start_svga = internal constant { [24 x [2 x i8]], [48 x i8] } { [24 x [2 x i8]] [[2 x i8] c"\94\AA", [2 x i8] c"\F1`", [2 x i8] c"\E5\04", [2 x i8] c"\C0\A0", [2 x i8] c"\C1\80", [2 x i8] c"\8C\00", [2 x i8] c"\8D\1C", [2 x i8] c"4\05", [2 x i8] c"\C2L", [2 x i8] c"\C3\F9", [2 x i8] c"P\00", [2 x i8] c"Q@", [2 x i8] c"R\00", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\88", [2 x i8] c"W\00", [2 x i8] c"\\\00", [2 x i8] c"Z\C8", [2 x i8] c"[\96", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"\DA\00", [2 x i8] c"\94\11"], [48 x i8] zeroinitializer }, align 32
@ov965x_start_2_svga = internal constant { [11 x [2 x i8]], [42 x i8] } { [11 x [2 x i8]] [[2 x i8] c";\C4", [2 x i8] c"\1E\04", [2 x i8] c"\13\E0", [2 x i8] zeroinitializer, [2 x i8] c"\13\E7", [2 x i8] c"\11\01", [2 x i8] c"kZ", [2 x i8] c"j\0C", [2 x i8] c"\C5\0F", [2 x i8] c"\A2N", [2 x i8] c"\A3A"], [42 x i8] zeroinitializer }, align 32
@ov965x_start_1_xga = internal constant { [20 x [2 x i8]], [56 x i8] } { [20 x [2 x i8]] [[2 x i8] c"\12\02", [2 x i8] c"6\F8", [2 x i8] c"i\02", [2 x i8] c"\8C\89", [2 x i8] c"\14(", [2 x i8] c">\0C", [2 x i8] c"A@", [2 x i8] c"r\00", [2 x i8] c"s\01", [2 x i8] c"t:", [2 x i8] c"u5", [2 x i8] c"v\01", [2 x i8] c"\C7\80", [2 x i8] c"\03\1B", [2 x i8] c"\17\1D", [2 x i8] c"\18\BD", [2 x i8] c"\19\01", [2 x i8] c"\1A\81", [2 x i8] c"2\FF", [2 x i8] c"\C0\E2"], [56 x i8] zeroinitializer }, align 32
@bridge_start_xga = internal constant { [24 x [2 x i8]], [48 x i8] } { [24 x [2 x i8]] [[2 x i8] c"\94\AA", [2 x i8] c"\F1`", [2 x i8] c"\E5\04", [2 x i8] c"\C0\A0", [2 x i8] c"\C1\80", [2 x i8] c"\8C\00", [2 x i8] c"\8D\1C", [2 x i8] c"4\05", [2 x i8] c"\C2L", [2 x i8] c"\C3\F9", [2 x i8] c"P\00", [2 x i8] c"Q@", [2 x i8] c"R\00", [2 x i8] c"S\00", [2 x i8] c"T\00", [2 x i8] c"U\88", [2 x i8] c"W\00", [2 x i8] c"\\\01", [2 x i8] c"Z\00", [2 x i8] c"[\C0", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"\DA\01", [2 x i8] c"\94\11"], [48 x i8] zeroinitializer }, align 32
@ov965x_start_1_sxga = internal constant { [20 x [2 x i8]], [56 x i8] } { [20 x [2 x i8]] [[2 x i8] c"\12\02", [2 x i8] c"6\F8", [2 x i8] c"i\02", [2 x i8] c"\8C\89", [2 x i8] c"\14(", [2 x i8] c">\0C", [2 x i8] c"A@", [2 x i8] c"r\00", [2 x i8] c"s\01", [2 x i8] c"t:", [2 x i8] c"u5", [2 x i8] c"v\01", [2 x i8] c"\C7\80", [2 x i8] c"\03\1B", [2 x i8] c"\17\1D", [2 x i8] c"\18\02", [2 x i8] c"\19\01", [2 x i8] c"\1A\81", [2 x i8] c"2\FF", [2 x i8] c"\C0\E2"], [56 x i8] zeroinitializer }, align 32
@bridge_start_sxga = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\94\AA", [2 x i8] c"\F1`", [2 x i8] c"\E5\04", [2 x i8] c"\C0\A0", [2 x i8] c"\C1\80", [2 x i8] c"\8C\00", [2 x i8] c"\8D\1C", [2 x i8] c"4\05", [2 x i8] c"\C2\0C", [2 x i8] c"\C3\F9", [2 x i8] c"\DA\00", [2 x i8] c"5\02", [2 x i8] c"\D9\10", [2 x i8] c"\94\11"], [36 x i8] zeroinitializer }, align 32
@ov965x_start_2_sxga = internal constant { [11 x [2 x i8]], [42 x i8] } { [11 x [2 x i8]] [[2 x i8] c"\13\E0", [2 x i8] zeroinitializer, [2 x i8] c"\13\E7", [2 x i8] c";\C4", [2 x i8] c"\1E\04", [2 x i8] c"\11\01", [2 x i8] c"kZ", [2 x i8] c"j\0C", [2 x i8] c"\C5\0F", [2 x i8] c"\A2N", [2 x i8] c"\A3A"], [42 x i8] zeroinitializer }, align 32
@ov361x_bridge_start_2048 = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\F1`", [2 x i8] c"\88\00", [2 x i8] c"\89\08", [2 x i8] c"\8A\00", [2 x i8] c"\8B\06", [2 x i8] c"\8C\01", [2 x i8] c"\8D\10", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"\1D\00", [2 x i8] c"\1D\FF", [2 x i8] c"\1C\0A", [2 x i8] c"\1D.", [2 x i8] c"\1D\1E"], [36 x i8] zeroinitializer }, align 32
@ov361x_start_2048 = internal constant { [19 x [2 x i8]], [58 x i8] } { [19 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\13\CF", [2 x i8] c"\14@", [2 x i8] c"\15\00", [2 x i8] c"\01\80", [2 x i8] c"\02\80", [2 x i8] c"\04p", [2 x i8] c"\0D@", [2 x i8] c"\0FG", [2 x i8] c"\11\81", [2 x i8] c"26", [2 x i8] c"3\0C", [2 x i8] c"4\00", [2 x i8] c"5\90", [2 x i8] c"\12\00", [2 x i8] c"\17\10", [2 x i8] c"\18\90", [2 x i8] c"\19\00", [2 x i8] c"\1A\C0"], [58 x i8] zeroinitializer }, align 32
@ov361x_bridge_start_1600 = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\F1`", [2 x i8] c"\88\00", [2 x i8] c"\89\08", [2 x i8] c"\8A\00", [2 x i8] c"\8B\06", [2 x i8] c"\8C\01", [2 x i8] c"\8D\10", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"\1D\00", [2 x i8] c"\1D\FF", [2 x i8] c"\1C\0A", [2 x i8] c"\1D.", [2 x i8] c"\1D\1E"], [36 x i8] zeroinitializer }, align 32
@ov361x_start_1600 = internal constant { [19 x [2 x i8]], [58 x i8] } { [19 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\13\CF", [2 x i8] c"\14@", [2 x i8] c"\15\00", [2 x i8] c"\01\80", [2 x i8] c"\02\80", [2 x i8] c"\04p", [2 x i8] c"\0D@", [2 x i8] c"\0FG", [2 x i8] c"\11\81", [2 x i8] c"26", [2 x i8] c"3\0C", [2 x i8] c"4\00", [2 x i8] c"5\90", [2 x i8] c"\12\00", [2 x i8] c"\17\10", [2 x i8] c"\18\90", [2 x i8] c"\19\00", [2 x i8] c"\1A\C0"], [58 x i8] zeroinitializer }, align 32
@ov361x_bridge_start_1024 = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\F1`", [2 x i8] c"\88\00", [2 x i8] c"\89\04", [2 x i8] c"\8A\00", [2 x i8] c"\8B\03", [2 x i8] c"\8C\01", [2 x i8] c"\8D\10", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"\1D\00", [2 x i8] c"\1D\FF", [2 x i8] c"\1C\0A", [2 x i8] c"\1D.", [2 x i8] c"\1D\1E"], [36 x i8] zeroinitializer }, align 32
@ov361x_start_1024 = internal constant { [19 x [2 x i8]], [58 x i8] } { [19 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\13\CF", [2 x i8] c"\14@", [2 x i8] c"\15\00", [2 x i8] c"\01\80", [2 x i8] c"\02\80", [2 x i8] c"\04p", [2 x i8] c"\0D@", [2 x i8] c"\0FG", [2 x i8] c"\11\81", [2 x i8] c"26", [2 x i8] c"3\0C", [2 x i8] c"4\00", [2 x i8] c"5\90", [2 x i8] c"\12@", [2 x i8] c"\17\1F", [2 x i8] c"\18_", [2 x i8] c"\19\00", [2 x i8] c"\1Ah"], [58 x i8] zeroinitializer }, align 32
@ov361x_bridge_start_640 = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\F1`", [2 x i8] c"\88\00", [2 x i8] c"\89\04", [2 x i8] c"\8A\00", [2 x i8] c"\8B\03", [2 x i8] c"\8C\01", [2 x i8] c"\8D\10", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"\1D\00", [2 x i8] c"\1D\FF", [2 x i8] c"\1C\0A", [2 x i8] c"\1D.", [2 x i8] c"\1D\1E"], [36 x i8] zeroinitializer }, align 32
@ov361x_start_640 = internal constant { [19 x [2 x i8]], [58 x i8] } { [19 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\13\CF", [2 x i8] c"\14@", [2 x i8] c"\15\00", [2 x i8] c"\01\80", [2 x i8] c"\02\80", [2 x i8] c"\04p", [2 x i8] c"\0D@", [2 x i8] c"\0FG", [2 x i8] c"\11\81", [2 x i8] c"26", [2 x i8] c"3\0C", [2 x i8] c"4\00", [2 x i8] c"5\90", [2 x i8] c"\12@", [2 x i8] c"\17\1F", [2 x i8] c"\18_", [2 x i8] c"\19\00", [2 x i8] c"\1Ah"], [58 x i8] zeroinitializer }, align 32
@ov361x_bridge_start_320 = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\F1`", [2 x i8] c"\88\00", [2 x i8] c"\89\04", [2 x i8] c"\8A\00", [2 x i8] c"\8B\03", [2 x i8] c"\8C\01", [2 x i8] c"\8D\10", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"\1D\00", [2 x i8] c"\1D\FF", [2 x i8] c"\1C\0A", [2 x i8] c"\1D.", [2 x i8] c"\1D\1E"], [36 x i8] zeroinitializer }, align 32
@ov361x_start_320 = internal constant { [19 x [2 x i8]], [58 x i8] } { [19 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\13\CF", [2 x i8] c"\14@", [2 x i8] c"\15\00", [2 x i8] c"\01\80", [2 x i8] c"\02\80", [2 x i8] c"\04p", [2 x i8] c"\0D@", [2 x i8] c"\0FG", [2 x i8] c"\11\81", [2 x i8] c"26", [2 x i8] c"3\0C", [2 x i8] c"4\00", [2 x i8] c"5\90", [2 x i8] c"\12@", [2 x i8] c"\17\1F", [2 x i8] c"\18_", [2 x i8] c"\19\00", [2 x i8] c"\1Ah"], [58 x i8] zeroinitializer }, align 32
@ov361x_bridge_start_160 = internal constant { [14 x [2 x i8]], [36 x i8] } { [14 x [2 x i8]] [[2 x i8] c"\F1`", [2 x i8] c"\88\00", [2 x i8] c"\89\04", [2 x i8] c"\8A\00", [2 x i8] c"\8B\03", [2 x i8] c"\8C\01", [2 x i8] c"\8D\10", [2 x i8] c"\1C\00", [2 x i8] c"\1DH", [2 x i8] c"\1D\00", [2 x i8] c"\1D\FF", [2 x i8] c"\1C\0A", [2 x i8] c"\1D.", [2 x i8] c"\1D\1E"], [36 x i8] zeroinitializer }, align 32
@ov361x_start_160 = internal constant { [19 x [2 x i8]], [58 x i8] } { [19 x [2 x i8]] [[2 x i8] c"\12\80", [2 x i8] c"\13\CF", [2 x i8] c"\14@", [2 x i8] c"\15\00", [2 x i8] c"\01\80", [2 x i8] c"\02\80", [2 x i8] c"\04p", [2 x i8] c"\0D@", [2 x i8] c"\0FG", [2 x i8] c"\11\81", [2 x i8] c"26", [2 x i8] c"3\0C", [2 x i8] c"4\00", [2 x i8] c"5\90", [2 x i8] c"\12@", [2 x i8] c"\17\1F", [2 x i8] c"\18_", [2 x i8] c"\19\00", [2 x i8] c"\1Ah"], [58 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: bad header\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_pkt_scan._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: payload error\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.38 = internal global ptr @sd_pkt_scan._entry.36, section ".printk_index", align 4
@sd_pkt_scan._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.4, i32 1659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: PTS not present\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.41 = internal global ptr @sd_pkt_scan._entry.39, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 13840, i64 22048, i64 38480, i64 38672]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963794, i64 9963800, i64 9963803]
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1809, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1821, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1810, i32 16 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1793, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1782, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1419, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"ov965x_mode\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 53, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"bridge_init\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 365, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"ov965x_init\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 399, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"bridge_init_2\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 581, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"ov965x_init_2\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 609, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"ov971x_mode\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 81, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"ov971x_init\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 651, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"ov562x_mode\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 89, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"ov562x_init\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 988, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"ov562x_init_2\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1004, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"ov361x_mode\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 107, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1490, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1127, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1120, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1180, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1186, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1170, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1143, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1146, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1194, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1198, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1234, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1750, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1736, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1775, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1344, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant [5 x i8] c"expo\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1309, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant [19 x i8] c"ov965x_start_1_vga\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 709, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant [18 x i8] c"bridge_start_qvga\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 800, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"ov965x_start_2_qvga\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 926, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"bridge_start_vga\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 828, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"ov965x_start_2_vga\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 944, i32 17 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"ov965x_start_1_svga\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 732, i32 17 }
@___asan_gen_.237 = private unnamed_addr constant [18 x i8] c"bridge_start_svga\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 855, i32 17 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c"ov965x_start_2_svga\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 960, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"ov965x_start_1_xga\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 754, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"bridge_start_xga\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 882, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"ov965x_start_1_sxga\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 777, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant [18 x i8] c"bridge_start_sxga\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 909, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"ov965x_start_2_sxga\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 974, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant [25 x i8] c"ov361x_bridge_start_2048\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 155, i32 17 }
@___asan_gen_.261 = private unnamed_addr constant [18 x i8] c"ov361x_start_2048\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 134, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant [25 x i8] c"ov361x_bridge_start_1600\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 193, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant [18 x i8] c"ov361x_start_1600\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 172, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant [25 x i8] c"ov361x_bridge_start_1024\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 231, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"ov361x_start_1024\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 210, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant [24 x i8] c"ov361x_bridge_start_640\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 270, i32 17 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"ov361x_start_640\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 248, i32 17 }
@___asan_gen_.282 = private unnamed_addr constant [24 x i8] c"ov361x_bridge_start_320\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 309, i32 17 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"ov361x_start_320\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 287, i32 17 }
@___asan_gen_.288 = private unnamed_addr constant [24 x i8] c"ov361x_bridge_start_160\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 348, i32 17 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"ov361x_start_160\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 326, i32 17 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1647, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1653, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.313 = private constant [37 x i8] c"../drivers/media/usb/gspca/ov534_9.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1659, i32 4 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_ov534_9__309_1821_sd_driver_init6, ptr @reg_r._entry, ptr @reg_r._entry.21, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.23, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @reg_w_i._entry, ptr @reg_w_i._entry_ptr, ptr @sccb_check_status._entry, ptr @sccb_check_status._entry_ptr, ptr @sccb_read._entry, ptr @sccb_read._entry.26, ptr @sccb_read._entry_ptr, ptr @sccb_read._entry_ptr.28, ptr @sccb_write._entry, ptr @sccb_write._entry.14, ptr @sccb_write._entry_ptr, ptr @sccb_write._entry_ptr.16, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.5, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.7, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry.36, ptr @sd_pkt_scan._entry.39, ptr @sd_pkt_scan._entry_ptr, ptr @sd_pkt_scan._entry_ptr.38, ptr @sd_pkt_scan._entry_ptr.41, ptr @set_led._entry, ptr @set_led._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ov965x_mode, ptr @bridge_init, ptr @ov965x_init, ptr @bridge_init_2, ptr @ov965x_init_2, ptr @ov971x_mode, ptr @ov971x_init, ptr @ov562x_mode, ptr @ov562x_init, ptr @ov562x_init_2, ptr @ov361x_mode, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @sd_init_controls._key, ptr @.str.31, ptr @sd_ctrl_ops, ptr @.str.32, ptr @.str.33, ptr @setsatur.matrix, ptr @setexposure.expo, ptr @ov965x_start_1_vga, ptr @bridge_start_qvga, ptr @ov965x_start_2_qvga, ptr @bridge_start_vga, ptr @ov965x_start_2_vga, ptr @ov965x_start_1_svga, ptr @bridge_start_svga, ptr @ov965x_start_2_svga, ptr @ov965x_start_1_xga, ptr @bridge_start_xga, ptr @ov965x_start_1_sxga, ptr @bridge_start_sxga, ptr @ov965x_start_2_sxga, ptr @ov361x_bridge_start_2048, ptr @ov361x_start_2048, ptr @ov361x_bridge_start_1600, ptr @ov361x_start_1600, ptr @ov361x_bridge_start_1024, ptr @ov361x_start_1024, ptr @ov361x_bridge_start_640, ptr @ov361x_start_640, ptr @ov361x_bridge_start_320, ptr @ov361x_start_320, ptr @ov361x_bridge_start_160, ptr @ov361x_start_160, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_mode to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_init to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_init to i32), i32 354, i32 448, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_init_2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_init_2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov971x_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov971x_init to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov562x_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov562x_init to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov562x_init_2 to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_mode to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_i._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_write._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sccb_read._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setsatur.matrix to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setexposure.expo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_start_1_vga to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_qvga to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_start_2_qvga to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_vga to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_start_2_vga to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_start_1_svga to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_svga to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_start_2_svga to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_start_1_xga to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_xga to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_start_1_sxga to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_start_sxga to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov965x_start_2_sxga to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_bridge_start_2048 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_start_2048 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_bridge_start_1600 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_start_1600 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_bridge_start_1024 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_start_1024 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_bridge_start_640 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_start_640 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_bridge_start_320 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_start_320 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_bridge_start_160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov361x_start_160 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2616, ptr noundef null) #7
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef readnone %gspca_dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp.i = icmp sgt i32 %0, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end3.i_crit_edge

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef 231, i32 noundef 58) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %1 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp slt i32 %2, 0
  br i1 %cmp.i.i, label %do.end3.i.reg_w.exit_crit_edge, label %if.end.i.i

do.end3.i.reg_w.exit_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i.i:                                       ; preds = %do.end3.i
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 58, ptr %6, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %10 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 231, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit_crit_edge

if.end.i.i.reg_w.exit_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i) #10
  %11 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit_crit_edge, %do.end3.i.reg_w.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp.i125 = icmp sgt i32 %12, 6
  br i1 %cmp.i125, label %do.end.i128, label %reg_w.exit.do.end3.i131_crit_edge

reg_w.exit.do.end3.i131_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i131

do.end.i128:                                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i126 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i126, i32 noundef 224, i32 noundef 8) #10
  br label %do.end3.i131

do.end3.i131:                                     ; preds = %do.end.i128, %reg_w.exit.do.end3.i131_crit_edge
  %13 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i130 = icmp slt i32 %14, 0
  br i1 %cmp.i.i130, label %do.end3.i131.reg_w.exit141_crit_edge, label %if.end.i.i138

do.end3.i131.reg_w.exit141_crit_edge:             ; preds = %do.end3.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit141

if.end.i.i138:                                    ; preds = %do.end3.i131
  %dev.i.i132 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i.i132 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i132, align 4
  %usb_buf.i.i133 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %17 = ptrtoint ptr %usb_buf.i.i133 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i.i133, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %18, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 8
  %shl.i.i.i134 = shl i32 %21, 8
  %or.i.i135 = or i32 %shl.i.i.i134, -2147483648
  %22 = load ptr, ptr %usb_buf.i.i133, align 4
  %call2.i.i136 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i.i135, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %22, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i136)
  %cmp3.i.i137 = icmp slt i32 %call2.i.i136, 0
  br i1 %cmp3.i.i137, label %do.end.i.i140, label %if.end.i.i138.reg_w.exit141_crit_edge

if.end.i.i138.reg_w.exit141_crit_edge:            ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit141

do.end.i.i140:                                    ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i136) #10
  %23 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2.i.i136, ptr %usb_err.i.i, align 8
  br label %reg_w.exit141

reg_w.exit141:                                    ; preds = %do.end.i.i140, %if.end.i.i138.reg_w.exit141_crit_edge, %do.end3.i131.reg_w.exit141_crit_edge
  tail call void @msleep(i32 noundef 100) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp.i142 = icmp sgt i32 %24, 6
  br i1 %cmp.i142, label %do.end.i145, label %reg_w.exit141.do.end3.i148_crit_edge

reg_w.exit141.do.end3.i148_crit_edge:             ; preds = %reg_w.exit141
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i148

do.end.i145:                                      ; preds = %reg_w.exit141
  call void @__sanitizer_cov_trace_pc() #9
  %name.i143 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i143, i32 noundef 241, i32 noundef 96) #10
  br label %do.end3.i148

do.end3.i148:                                     ; preds = %do.end.i145, %reg_w.exit141.do.end3.i148_crit_edge
  %25 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i147 = icmp slt i32 %26, 0
  br i1 %cmp.i.i147, label %do.end3.i148.reg_w.exit158_crit_edge, label %if.end.i.i155

do.end3.i148.reg_w.exit158_crit_edge:             ; preds = %do.end3.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit158

if.end.i.i155:                                    ; preds = %do.end3.i148
  %dev.i.i149 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %27 = ptrtoint ptr %dev.i.i149 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i149, align 4
  %usb_buf.i.i150 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %29 = ptrtoint ptr %usb_buf.i.i150 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i.i150, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 96, ptr %30, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %28, align 8
  %shl.i.i.i151 = shl i32 %33, 8
  %or.i.i152 = or i32 %shl.i.i.i151, -2147483648
  %34 = load ptr, ptr %usb_buf.i.i150, align 4
  %call2.i.i153 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i.i152, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 241, ptr noundef %34, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i153)
  %cmp3.i.i154 = icmp slt i32 %call2.i.i153, 0
  br i1 %cmp3.i.i154, label %do.end.i.i157, label %if.end.i.i155.reg_w.exit158_crit_edge

if.end.i.i155.reg_w.exit158_crit_edge:            ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit158

do.end.i.i157:                                    ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i153) #10
  %35 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call2.i.i153, ptr %usb_err.i.i, align 8
  br label %reg_w.exit158

reg_w.exit158:                                    ; preds = %do.end.i.i157, %if.end.i.i155.reg_w.exit158_crit_edge, %do.end3.i148.reg_w.exit158_crit_edge
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128)
  tail call void @msleep(i32 noundef 10) #7
  %call = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext 10)
  %call1 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext 10)
  %conv = zext i8 %call1 to i16
  %shl = shl nuw i16 %conv, 8
  %call3 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext 11)
  %call4 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext 11)
  %conv5 = zext i8 %call4 to i16
  %or = or i16 %shl, %conv5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp = icmp sgt i32 %36, 0
  br i1 %cmp, label %do.end, label %reg_w.exit158.do.end13_crit_edge

reg_w.exit158.do.end13_crit_edge:                 ; preds = %reg_w.exit158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %reg_w.exit158
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv10 = zext i16 %or to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv10) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %reg_w.exit158.do.end13_crit_edge
  %and = and i16 %or, -16
  %37 = zext i16 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and, label %do.end65 [
    i16 -27056, label %if.then17
    i16 -26864, label %if.then23
    i16 22048, label %if.then45
    i16 13840, label %if.then56
  ]

if.then17:                                        ; preds = %do.end13
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %38 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %sensor, align 1
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %39 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ov965x_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %40 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %nmodes, align 4
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_init, i32 noundef 31)
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then17
  %dec17.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ 176, %if.then17 ]
  %data.addr.015.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ @ov965x_init, %if.then17 ]
  %41 = ptrtoint ptr %data.addr.015.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %data.addr.015.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp1.not.i = icmp eq i8 %42, -1
  %arrayidx5.i = getelementptr [2 x i8], ptr %data.addr.015.i, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx5.i, align 1
  br i1 %cmp1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %42, i8 noundef zeroext %44) #7
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %44 to i16
  %call.i159 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %incdec.ptr.i = getelementptr [2 x i8], ptr %data.addr.015.i, i32 1
  %dec.i = add nsw i32 %dec17.i, -1
  %cmp.i160 = icmp sgt i32 %dec17.i, 0
  br i1 %cmp.i160, label %if.end.i.while.body.i_crit_edge, label %sccb_w_array.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

sccb_w_array.exit:                                ; preds = %if.end.i
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_init_2, i32 noundef 24)
  br label %while.body.i165

while.body.i165:                                  ; preds = %if.end.i173.while.body.i165_crit_edge, %sccb_w_array.exit
  %dec17.i161 = phi i32 [ %dec.i171, %if.end.i173.while.body.i165_crit_edge ], [ 33, %sccb_w_array.exit ]
  %data.addr.015.i162 = phi ptr [ %incdec.ptr.i170, %if.end.i173.while.body.i165_crit_edge ], [ @ov965x_init_2, %sccb_w_array.exit ]
  %45 = ptrtoint ptr %data.addr.015.i162 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %data.addr.015.i162, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %cmp1.not.i163 = icmp eq i8 %46, -1
  %arrayidx5.i164 = getelementptr [2 x i8], ptr %data.addr.015.i162, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx5.i164 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx5.i164, align 1
  br i1 %cmp1.not.i163, label %if.else.i169, label %if.then.i166

if.then.i166:                                     ; preds = %while.body.i165
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %46, i8 noundef zeroext %48) #7
  br label %if.end.i173

if.else.i169:                                     ; preds = %while.body.i165
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i167 = zext i8 %48 to i16
  %call.i168 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i167) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i173

if.end.i173:                                      ; preds = %if.else.i169, %if.then.i166
  %incdec.ptr.i170 = getelementptr [2 x i8], ptr %data.addr.015.i162, i32 1
  %dec.i171 = add nsw i32 %dec17.i161, -1
  %cmp.i172 = icmp sgt i32 %dec17.i161, 0
  br i1 %cmp.i172, label %if.end.i173.while.body.i165_crit_edge, label %sccb_w_array.exit174

if.end.i173.while.body.i165_crit_edge:            ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i165

sccb_w_array.exit174:                             ; preds = %if.end.i173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %49)
  %cmp.i175 = icmp sgt i32 %49, 6
  br i1 %cmp.i175, label %do.end.i178, label %sccb_w_array.exit174.do.end3.i181_crit_edge

sccb_w_array.exit174.do.end3.i181_crit_edge:      ; preds = %sccb_w_array.exit174
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i181

do.end.i178:                                      ; preds = %sccb_w_array.exit174
  call void @__sanitizer_cov_trace_pc() #9
  %name.i176 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i176, i32 noundef 224, i32 noundef 0) #10
  br label %do.end3.i181

do.end3.i181:                                     ; preds = %do.end.i178, %sccb_w_array.exit174.do.end3.i181_crit_edge
  %50 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i180 = icmp slt i32 %51, 0
  br i1 %cmp.i.i180, label %do.end3.i181.reg_w.exit191_crit_edge, label %if.end.i.i188

do.end3.i181.reg_w.exit191_crit_edge:             ; preds = %do.end3.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit191

if.end.i.i188:                                    ; preds = %do.end3.i181
  %dev.i.i182 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %52 = ptrtoint ptr %dev.i.i182 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i182, align 4
  %usb_buf.i.i183 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %54 = ptrtoint ptr %usb_buf.i.i183 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_buf.i.i183, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %55, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %53, align 8
  %shl.i.i.i184 = shl i32 %58, 8
  %or.i.i185 = or i32 %shl.i.i.i184, -2147483648
  %59 = load ptr, ptr %usb_buf.i.i183, align 4
  %call2.i.i186 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i.i185, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %59, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i186)
  %cmp3.i.i187 = icmp slt i32 %call2.i.i186, 0
  br i1 %cmp3.i.i187, label %do.end.i.i190, label %if.end.i.i188.reg_w.exit191_crit_edge

if.end.i.i188.reg_w.exit191_crit_edge:            ; preds = %if.end.i.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit191

do.end.i.i190:                                    ; preds = %if.end.i.i188
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i186) #10
  %60 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call2.i.i186, ptr %usb_err.i.i, align 8
  br label %reg_w.exit191

reg_w.exit191:                                    ; preds = %do.end.i.i190, %if.end.i.i188.reg_w.exit191_crit_edge, %do.end3.i181.reg_w.exit191_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %61 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %61)
  %cmp.i192 = icmp sgt i32 %61, 6
  br i1 %cmp.i192, label %do.end.i195, label %reg_w.exit191.do.end3.i198_crit_edge

reg_w.exit191.do.end3.i198_crit_edge:             ; preds = %reg_w.exit191
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i198

do.end.i195:                                      ; preds = %reg_w.exit191
  call void @__sanitizer_cov_trace_pc() #9
  %name.i193 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i193, i32 noundef 224, i32 noundef 1) #10
  br label %do.end3.i198

do.end3.i198:                                     ; preds = %do.end.i195, %reg_w.exit191.do.end3.i198_crit_edge
  %62 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i197 = icmp slt i32 %63, 0
  br i1 %cmp.i.i197, label %do.end3.i198.reg_w.exit208_crit_edge, label %if.end.i.i205

do.end3.i198.reg_w.exit208_crit_edge:             ; preds = %do.end3.i198
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit208

if.end.i.i205:                                    ; preds = %do.end3.i198
  %dev.i.i199 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %64 = ptrtoint ptr %dev.i.i199 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i199, align 4
  %usb_buf.i.i200 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %66 = ptrtoint ptr %usb_buf.i.i200 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb_buf.i.i200, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %67, align 1
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %65, align 8
  %shl.i.i.i201 = shl i32 %70, 8
  %or.i.i202 = or i32 %shl.i.i.i201, -2147483648
  %71 = load ptr, ptr %usb_buf.i.i200, align 4
  %call2.i.i203 = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or.i.i202, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %71, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i203)
  %cmp3.i.i204 = icmp slt i32 %call2.i.i203, 0
  br i1 %cmp3.i.i204, label %do.end.i.i207, label %if.end.i.i205.reg_w.exit208_crit_edge

if.end.i.i205.reg_w.exit208_crit_edge:            ; preds = %if.end.i.i205
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit208

do.end.i.i207:                                    ; preds = %if.end.i.i205
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i203) #10
  %72 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call2.i.i203, ptr %usb_err.i.i, align 8
  br label %reg_w.exit208

reg_w.exit208:                                    ; preds = %do.end.i.i207, %if.end.i.i205.reg_w.exit208_crit_edge, %do.end3.i198.reg_w.exit208_crit_edge
  tail call fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %73 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %73)
  %cmp.i209 = icmp sgt i32 %73, 6
  br i1 %cmp.i209, label %do.end.i212, label %reg_w.exit208.do.end3.i215_crit_edge

reg_w.exit208.do.end3.i215_crit_edge:             ; preds = %reg_w.exit208
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i215

do.end.i212:                                      ; preds = %reg_w.exit208
  call void @__sanitizer_cov_trace_pc() #9
  %name.i210 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i210, i32 noundef 224, i32 noundef 0) #10
  br label %do.end3.i215

do.end3.i215:                                     ; preds = %do.end.i212, %reg_w.exit208.do.end3.i215_crit_edge
  %74 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i214 = icmp slt i32 %75, 0
  br i1 %cmp.i.i214, label %do.end3.i215.if.end72_crit_edge, label %if.end.i.i222

do.end3.i215.if.end72_crit_edge:                  ; preds = %do.end3.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.i.i222:                                    ; preds = %do.end3.i215
  %dev.i.i216 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %76 = ptrtoint ptr %dev.i.i216 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i216, align 4
  %usb_buf.i.i217 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %78 = ptrtoint ptr %usb_buf.i.i217 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf.i.i217, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %79, align 1
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %77, align 8
  %shl.i.i.i218 = shl i32 %82, 8
  %or.i.i219 = or i32 %shl.i.i.i218, -2147483648
  %83 = load ptr, ptr %usb_buf.i.i217, align 4
  %call2.i.i220 = tail call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or.i.i219, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %83, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i220)
  %cmp3.i.i221 = icmp slt i32 %call2.i.i220, 0
  br i1 %cmp3.i.i221, label %do.end.i.i224, label %if.end.i.i222.if.end72_crit_edge

if.end.i.i222.if.end72_crit_edge:                 ; preds = %if.end.i.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end.i.i224:                                    ; preds = %if.end.i.i222
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i220) #10
  %84 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call2.i.i220, ptr %usb_err.i.i, align 8
  br label %if.end72

if.then23:                                        ; preds = %do.end13
  %sensor24 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %85 = ptrtoint ptr %sensor24 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %sensor24, align 1
  %cam25 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %86 = ptrtoint ptr %cam25 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @ov971x_mode, ptr %cam25, align 4
  %nmodes28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %87 = ptrtoint ptr %nmodes28 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %nmodes28, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %88 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %bulk, align 1
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %89 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 16384, ptr %bulk_size, align 4
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %90 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %bulk_nurbs, align 2
  br label %while.body.i230

while.body.i230:                                  ; preds = %if.end.i238.while.body.i230_crit_edge, %if.then23
  %dec17.i226 = phi i32 [ %dec.i236, %if.end.i238.while.body.i230_crit_edge ], [ 54, %if.then23 ]
  %data.addr.015.i227 = phi ptr [ %incdec.ptr.i235, %if.end.i238.while.body.i230_crit_edge ], [ @ov971x_init, %if.then23 ]
  %91 = ptrtoint ptr %data.addr.015.i227 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %data.addr.015.i227, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %92)
  %cmp1.not.i228 = icmp eq i8 %92, -1
  %arrayidx5.i229 = getelementptr [2 x i8], ptr %data.addr.015.i227, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx5.i229 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx5.i229, align 1
  br i1 %cmp1.not.i228, label %if.else.i234, label %if.then.i231

if.then.i231:                                     ; preds = %while.body.i230
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %92, i8 noundef zeroext %94) #7
  br label %if.end.i238

if.else.i234:                                     ; preds = %while.body.i230
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i232 = zext i8 %94 to i16
  %call.i233 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i232) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i238

if.end.i238:                                      ; preds = %if.else.i234, %if.then.i231
  %incdec.ptr.i235 = getelementptr [2 x i8], ptr %data.addr.015.i227, i32 1
  %dec.i236 = add nsw i32 %dec17.i226, -1
  %cmp.i237 = icmp sgt i32 %dec17.i226, 0
  br i1 %cmp.i237, label %if.end.i238.while.body.i230_crit_edge, label %sccb_w_array.exit239

if.end.i238.while.body.i230_crit_edge:            ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i230

sccb_w_array.exit239:                             ; preds = %if.end.i238
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %95 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %95)
  %cmp.i240 = icmp sgt i32 %95, 6
  br i1 %cmp.i240, label %do.end.i243, label %sccb_w_array.exit239.do.end3.i246_crit_edge

sccb_w_array.exit239.do.end3.i246_crit_edge:      ; preds = %sccb_w_array.exit239
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i246

do.end.i243:                                      ; preds = %sccb_w_array.exit239
  call void @__sanitizer_cov_trace_pc() #9
  %name.i241 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i241, i32 noundef 28, i32 noundef 0) #10
  br label %do.end3.i246

do.end3.i246:                                     ; preds = %do.end.i243, %sccb_w_array.exit239.do.end3.i246_crit_edge
  %96 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.i.i245 = icmp slt i32 %97, 0
  br i1 %cmp.i.i245, label %do.end3.i246.reg_w.exit256_crit_edge, label %if.end.i.i253

do.end3.i246.reg_w.exit256_crit_edge:             ; preds = %do.end3.i246
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit256

if.end.i.i253:                                    ; preds = %do.end3.i246
  %dev.i.i247 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %98 = ptrtoint ptr %dev.i.i247 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i.i247, align 4
  %usb_buf.i.i248 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %100 = ptrtoint ptr %usb_buf.i.i248 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %usb_buf.i.i248, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %101, align 1
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %99, align 8
  %shl.i.i.i249 = shl i32 %104, 8
  %or.i.i250 = or i32 %shl.i.i.i249, -2147483648
  %105 = load ptr, ptr %usb_buf.i.i248, align 4
  %call2.i.i251 = tail call i32 @usb_control_msg(ptr noundef %99, i32 noundef %or.i.i250, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 28, ptr noundef %105, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i251)
  %cmp3.i.i252 = icmp slt i32 %call2.i.i251, 0
  br i1 %cmp3.i.i252, label %do.end.i.i255, label %if.end.i.i253.reg_w.exit256_crit_edge

if.end.i.i253.reg_w.exit256_crit_edge:            ; preds = %if.end.i.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit256

do.end.i.i255:                                    ; preds = %if.end.i.i253
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i251) #10
  %106 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call2.i.i251, ptr %usb_err.i.i, align 8
  br label %reg_w.exit256

reg_w.exit256:                                    ; preds = %do.end.i.i255, %if.end.i.i253.reg_w.exit256_crit_edge, %do.end3.i246.reg_w.exit256_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %107 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %107)
  %cmp.i257 = icmp sgt i32 %107, 6
  br i1 %cmp.i257, label %do.end.i260, label %reg_w.exit256.do.end3.i263_crit_edge

reg_w.exit256.do.end3.i263_crit_edge:             ; preds = %reg_w.exit256
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i263

do.end.i260:                                      ; preds = %reg_w.exit256
  call void @__sanitizer_cov_trace_pc() #9
  %name.i258 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i258, i32 noundef 29, i32 noundef 0) #10
  br label %do.end3.i263

do.end3.i263:                                     ; preds = %do.end.i260, %reg_w.exit256.do.end3.i263_crit_edge
  %108 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp.i.i262 = icmp slt i32 %109, 0
  br i1 %cmp.i.i262, label %do.end3.i263.reg_w.exit273_crit_edge, label %if.end.i.i270

do.end3.i263.reg_w.exit273_crit_edge:             ; preds = %do.end3.i263
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit273

if.end.i.i270:                                    ; preds = %do.end3.i263
  %dev.i.i264 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %110 = ptrtoint ptr %dev.i.i264 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i.i264, align 4
  %usb_buf.i.i265 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %112 = ptrtoint ptr %usb_buf.i.i265 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %usb_buf.i.i265, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %113, align 1
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %111, align 8
  %shl.i.i.i266 = shl i32 %116, 8
  %or.i.i267 = or i32 %shl.i.i.i266, -2147483648
  %117 = load ptr, ptr %usb_buf.i.i265, align 4
  %call2.i.i268 = tail call i32 @usb_control_msg(ptr noundef %111, i32 noundef %or.i.i267, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 29, ptr noundef %117, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i268)
  %cmp3.i.i269 = icmp slt i32 %call2.i.i268, 0
  br i1 %cmp3.i.i269, label %do.end.i.i272, label %if.end.i.i270.reg_w.exit273_crit_edge

if.end.i.i270.reg_w.exit273_crit_edge:            ; preds = %if.end.i.i270
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit273

do.end.i.i272:                                    ; preds = %if.end.i.i270
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i268) #10
  %118 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call2.i.i268, ptr %usb_err.i.i, align 8
  br label %reg_w.exit273

reg_w.exit273:                                    ; preds = %do.end.i.i272, %if.end.i.i270.reg_w.exit273_crit_edge, %do.end3.i263.reg_w.exit273_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 5, i32 3
  %119 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %120, null
  br i1 %tobool.not.i.i, label %if.end.i.i274, label %reg_w.exit273.video_device_node_name.exit_crit_edge

reg_w.exit273.video_device_node_name.exit_crit_edge: ; preds = %reg_w.exit273
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit

if.end.i.i274:                                    ; preds = %reg_w.exit273
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 5
  %121 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i274, %reg_w.exit273.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %122, %if.end.i.i274 ], [ %120, %reg_w.exit273.video_device_node_name.exit_crit_edge ]
  %call33 = tail call i32 @strlen(ptr noundef %retval.0.i.i) #11
  %sub = add i32 %call33, -1
  %arrayidx = getelementptr i8, ptr %retval.0.i.i, i32 %sub
  %123 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %124)
  %cmp35 = icmp eq i8 %124, 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %125 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %125)
  %cmp.i275 = icmp sgt i32 %125, 6
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %video_device_node_name.exit
  br i1 %cmp.i275, label %do.end.i278, label %if.then37.do.end3.i281_crit_edge

if.then37.do.end3.i281_crit_edge:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i281

do.end.i278:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %name.i276 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i276, i32 noundef 86, i32 noundef 31) #10
  br label %do.end3.i281

do.end3.i281:                                     ; preds = %do.end.i278, %if.then37.do.end3.i281_crit_edge
  %126 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i.i280 = icmp slt i32 %127, 0
  br i1 %cmp.i.i280, label %do.end3.i281.if.end72_crit_edge, label %if.end.i.i288

do.end3.i281.if.end72_crit_edge:                  ; preds = %do.end3.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.i.i288:                                    ; preds = %do.end3.i281
  %dev.i.i282 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %128 = ptrtoint ptr %dev.i.i282 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i.i282, align 4
  %usb_buf.i.i283 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %130 = ptrtoint ptr %usb_buf.i.i283 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %usb_buf.i.i283, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 31, ptr %131, align 1
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %129, align 8
  %shl.i.i.i284 = shl i32 %134, 8
  %or.i.i285 = or i32 %shl.i.i.i284, -2147483648
  %135 = load ptr, ptr %usb_buf.i.i283, align 4
  %call2.i.i286 = tail call i32 @usb_control_msg(ptr noundef %129, i32 noundef %or.i.i285, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 86, ptr noundef %135, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i286)
  %cmp3.i.i287 = icmp slt i32 %call2.i.i286, 0
  br i1 %cmp3.i.i287, label %do.end.i.i290, label %if.end.i.i288.if.end72_crit_edge

if.end.i.i288.if.end72_crit_edge:                 ; preds = %if.end.i.i288
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end.i.i290:                                    ; preds = %if.end.i.i288
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i286) #10
  %136 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call2.i.i286, ptr %usb_err.i.i, align 8
  br label %if.end72

if.else38:                                        ; preds = %video_device_node_name.exit
  br i1 %cmp.i275, label %do.end.i295, label %if.else38.do.end3.i298_crit_edge

if.else38.do.end3.i298_crit_edge:                 ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i298

do.end.i295:                                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  %name.i293 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i293, i32 noundef 86, i32 noundef 23) #10
  br label %do.end3.i298

do.end3.i298:                                     ; preds = %do.end.i295, %if.else38.do.end3.i298_crit_edge
  %137 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i.i297 = icmp slt i32 %138, 0
  br i1 %cmp.i.i297, label %do.end3.i298.if.end72_crit_edge, label %if.end.i.i305

do.end3.i298.if.end72_crit_edge:                  ; preds = %do.end3.i298
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.i.i305:                                    ; preds = %do.end3.i298
  %dev.i.i299 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %139 = ptrtoint ptr %dev.i.i299 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i299, align 4
  %usb_buf.i.i300 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %141 = ptrtoint ptr %usb_buf.i.i300 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %usb_buf.i.i300, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 23, ptr %142, align 1
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %140, align 8
  %shl.i.i.i301 = shl i32 %145, 8
  %or.i.i302 = or i32 %shl.i.i.i301, -2147483648
  %146 = load ptr, ptr %usb_buf.i.i300, align 4
  %call2.i.i303 = tail call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or.i.i302, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 86, ptr noundef %146, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i303)
  %cmp3.i.i304 = icmp slt i32 %call2.i.i303, 0
  br i1 %cmp3.i.i304, label %do.end.i.i307, label %if.end.i.i305.if.end72_crit_edge

if.end.i.i305.if.end72_crit_edge:                 ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end.i.i307:                                    ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i303) #10
  %147 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call2.i.i303, ptr %usb_err.i.i, align 8
  br label %if.end72

if.then45:                                        ; preds = %do.end13
  %sensor46 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %148 = ptrtoint ptr %sensor46 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 2, ptr %sensor46, align 1
  %cam47 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %149 = ptrtoint ptr %cam47 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @ov562x_mode, ptr %cam47, align 4
  %nmodes50 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %150 = ptrtoint ptr %nmodes50 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %nmodes50, align 4
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @ov562x_init, i32 noundef 13)
  br label %while.body.i313

while.body.i313:                                  ; preds = %if.end.i321.while.body.i313_crit_edge, %if.then45
  %dec17.i309 = phi i32 [ %dec.i319, %if.end.i321.while.body.i313_crit_edge ], [ 98, %if.then45 ]
  %data.addr.015.i310 = phi ptr [ %incdec.ptr.i318, %if.end.i321.while.body.i313_crit_edge ], [ @ov562x_init_2, %if.then45 ]
  %151 = ptrtoint ptr %data.addr.015.i310 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %data.addr.015.i310, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %152)
  %cmp1.not.i311 = icmp eq i8 %152, -1
  %arrayidx5.i312 = getelementptr [2 x i8], ptr %data.addr.015.i310, i32 0, i32 1
  %153 = ptrtoint ptr %arrayidx5.i312 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx5.i312, align 1
  br i1 %cmp1.not.i311, label %if.else.i317, label %if.then.i314

if.then.i314:                                     ; preds = %while.body.i313
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %152, i8 noundef zeroext %154) #7
  br label %if.end.i321

if.else.i317:                                     ; preds = %while.body.i313
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i315 = zext i8 %154 to i16
  %call.i316 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i315) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i321

if.end.i321:                                      ; preds = %if.else.i317, %if.then.i314
  %incdec.ptr.i318 = getelementptr [2 x i8], ptr %data.addr.015.i310, i32 1
  %dec.i319 = add nsw i32 %dec17.i309, -1
  %cmp.i320 = icmp sgt i32 %dec17.i309, 0
  br i1 %cmp.i320, label %if.end.i321.while.body.i313_crit_edge, label %sccb_w_array.exit322

if.end.i321.while.body.i313_crit_edge:            ; preds = %if.end.i321
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i313

sccb_w_array.exit322:                             ; preds = %if.end.i321
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %155 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %155)
  %cmp.i323 = icmp sgt i32 %155, 6
  br i1 %cmp.i323, label %do.end.i326, label %sccb_w_array.exit322.do.end3.i329_crit_edge

sccb_w_array.exit322.do.end3.i329_crit_edge:      ; preds = %sccb_w_array.exit322
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i329

do.end.i326:                                      ; preds = %sccb_w_array.exit322
  call void @__sanitizer_cov_trace_pc() #9
  %name.i324 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i324, i32 noundef 224, i32 noundef 0) #10
  br label %do.end3.i329

do.end3.i329:                                     ; preds = %do.end.i326, %sccb_w_array.exit322.do.end3.i329_crit_edge
  %156 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp.i.i328 = icmp slt i32 %157, 0
  br i1 %cmp.i.i328, label %do.end3.i329.if.end72_crit_edge, label %if.end.i.i336

do.end3.i329.if.end72_crit_edge:                  ; preds = %do.end3.i329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.i.i336:                                    ; preds = %do.end3.i329
  %dev.i.i330 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %158 = ptrtoint ptr %dev.i.i330 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i.i330, align 4
  %usb_buf.i.i331 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %160 = ptrtoint ptr %usb_buf.i.i331 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %usb_buf.i.i331, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %161, align 1
  %163 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %159, align 8
  %shl.i.i.i332 = shl i32 %164, 8
  %or.i.i333 = or i32 %shl.i.i.i332, -2147483648
  %165 = load ptr, ptr %usb_buf.i.i331, align 4
  %call2.i.i334 = tail call i32 @usb_control_msg(ptr noundef %159, i32 noundef %or.i.i333, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %165, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i334)
  %cmp3.i.i335 = icmp slt i32 %call2.i.i334, 0
  br i1 %cmp3.i.i335, label %do.end.i.i338, label %if.end.i.i336.if.end72_crit_edge

if.end.i.i336.if.end72_crit_edge:                 ; preds = %if.end.i.i336
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end.i.i338:                                    ; preds = %if.end.i.i336
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i337 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i334) #10
  %166 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call2.i.i334, ptr %usb_err.i.i, align 8
  br label %if.end72

if.then56:                                        ; preds = %do.end13
  %sensor57 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %167 = ptrtoint ptr %sensor57 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 3, ptr %sensor57, align 1
  %cam58 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %168 = ptrtoint ptr %cam58 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @ov361x_mode, ptr %cam58, align 4
  %nmodes61 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %169 = ptrtoint ptr %nmodes61 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 6, ptr %nmodes61, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %170 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %170)
  %cmp.i340 = icmp sgt i32 %170, 6
  br i1 %cmp.i340, label %do.end.i343, label %if.then56.do.end3.i346_crit_edge

if.then56.do.end3.i346_crit_edge:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i346

do.end.i343:                                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %name.i341 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i341, i32 noundef 231, i32 noundef 58) #10
  br label %do.end3.i346

do.end3.i346:                                     ; preds = %do.end.i343, %if.then56.do.end3.i346_crit_edge
  %171 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp.i.i345 = icmp slt i32 %172, 0
  br i1 %cmp.i.i345, label %do.end3.i346.reg_w.exit356_crit_edge, label %if.end.i.i353

do.end3.i346.reg_w.exit356_crit_edge:             ; preds = %do.end3.i346
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit356

if.end.i.i353:                                    ; preds = %do.end3.i346
  %dev.i.i347 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %173 = ptrtoint ptr %dev.i.i347 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev.i.i347, align 4
  %usb_buf.i.i348 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %175 = ptrtoint ptr %usb_buf.i.i348 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %usb_buf.i.i348, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 58, ptr %176, align 1
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %174, align 8
  %shl.i.i.i349 = shl i32 %179, 8
  %or.i.i350 = or i32 %shl.i.i.i349, -2147483648
  %180 = load ptr, ptr %usb_buf.i.i348, align 4
  %call2.i.i351 = tail call i32 @usb_control_msg(ptr noundef %174, i32 noundef %or.i.i350, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 231, ptr noundef %180, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i351)
  %cmp3.i.i352 = icmp slt i32 %call2.i.i351, 0
  br i1 %cmp3.i.i352, label %do.end.i.i355, label %if.end.i.i353.reg_w.exit356_crit_edge

if.end.i.i353.reg_w.exit356_crit_edge:            ; preds = %if.end.i.i353
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit356

do.end.i.i355:                                    ; preds = %if.end.i.i353
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i354 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i351) #10
  %181 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %call2.i.i351, ptr %usb_err.i.i, align 8
  br label %reg_w.exit356

reg_w.exit356:                                    ; preds = %do.end.i.i355, %if.end.i.i353.reg_w.exit356_crit_edge, %do.end3.i346.reg_w.exit356_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %182 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %182)
  %cmp.i357 = icmp sgt i32 %182, 6
  br i1 %cmp.i357, label %do.end.i360, label %reg_w.exit356.do.end3.i363_crit_edge

reg_w.exit356.do.end3.i363_crit_edge:             ; preds = %reg_w.exit356
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i363

do.end.i360:                                      ; preds = %reg_w.exit356
  call void @__sanitizer_cov_trace_pc() #9
  %name.i358 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i358, i32 noundef 241, i32 noundef 96) #10
  br label %do.end3.i363

do.end3.i363:                                     ; preds = %do.end.i360, %reg_w.exit356.do.end3.i363_crit_edge
  %183 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp.i.i362 = icmp slt i32 %184, 0
  br i1 %cmp.i.i362, label %do.end3.i363.reg_w.exit373_crit_edge, label %if.end.i.i370

do.end3.i363.reg_w.exit373_crit_edge:             ; preds = %do.end3.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit373

if.end.i.i370:                                    ; preds = %do.end3.i363
  %dev.i.i364 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %185 = ptrtoint ptr %dev.i.i364 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i.i364, align 4
  %usb_buf.i.i365 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %187 = ptrtoint ptr %usb_buf.i.i365 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %usb_buf.i.i365, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 96, ptr %188, align 1
  %190 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %186, align 8
  %shl.i.i.i366 = shl i32 %191, 8
  %or.i.i367 = or i32 %shl.i.i.i366, -2147483648
  %192 = load ptr, ptr %usb_buf.i.i365, align 4
  %call2.i.i368 = tail call i32 @usb_control_msg(ptr noundef %186, i32 noundef %or.i.i367, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 241, ptr noundef %192, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i368)
  %cmp3.i.i369 = icmp slt i32 %call2.i.i368, 0
  br i1 %cmp3.i.i369, label %do.end.i.i372, label %if.end.i.i370.reg_w.exit373_crit_edge

if.end.i.i370.reg_w.exit373_crit_edge:            ; preds = %if.end.i.i370
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit373

do.end.i.i372:                                    ; preds = %if.end.i.i370
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i371 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i368) #10
  %193 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %call2.i.i368, ptr %usb_err.i.i, align 8
  br label %reg_w.exit373

reg_w.exit373:                                    ; preds = %do.end.i.i372, %if.end.i.i370.reg_w.exit373_crit_edge, %do.end3.i363.reg_w.exit373_crit_edge
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128)
  br label %if.end72

do.end65:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = zext i16 %or to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv14) #10
  br label %cleanup

if.end72:                                         ; preds = %reg_w.exit373, %do.end.i.i338, %if.end.i.i336.if.end72_crit_edge, %do.end3.i329.if.end72_crit_edge, %do.end.i.i307, %if.end.i.i305.if.end72_crit_edge, %do.end3.i298.if.end72_crit_edge, %do.end.i.i290, %if.end.i.i288.if.end72_crit_edge, %do.end3.i281.if.end72_crit_edge, %do.end.i.i224, %if.end.i.i222.if.end72_crit_edge, %do.end3.i215.if.end72_crit_edge
  %194 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %usb_err.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end65
  %retval.0 = phi i32 [ %195, %if.end72 ], [ -22, %do.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %1, label %if.end7 [
    i8 1, label %entry.cleanup_crit_edge
    i8 3, label %entry.cleanup_crit_edge48
  ]

entry.cleanup_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %ctrl_handler8 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %3 = ptrtoint ptr %ctrl_handler8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrl_handler, ptr %ctrl_handler8, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 7, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.31) #7
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp11 = icmp eq i8 %5, 2
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef -90, i64 noundef 90, i64 noundef 1, i64 noundef 0) #7
  br label %if.end23

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 7) #7
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 3) #7
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 4, i64 noundef 1, i64 noundef 2) #7
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef -1, i64 noundef 4, i64 noundef 1, i64 noundef -1) #7
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %6 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call19, ptr %6, align 8
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 0) #7
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call20, ptr %exposure, align 4
  %call21 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %6, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then13
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end23.cleanup_crit_edge, label %do.end

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge48
  %retval.0 = phi i32 [ %12, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge48 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %1, label %if.end14 [
    i8 1, label %if.then
    i8 2, label %if.then6
    i8 3, label %if.then13
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usb_err7 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  br label %cleanup

if.then13:                                        ; preds = %entry
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128) #7
  tail call void @msleep(i32 noundef 20) #7
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %3 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %curr_mode.i, align 1
  %5 = urem i8 %4, 6
  %rem.i = zext i8 %5 to i32
  %6 = zext i32 %rem.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %rem.i, label %if.then13.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb5.i
  ]

if.then13.sw.epilog.i_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then13
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @ov361x_bridge_start_2048, i32 noundef 14) #7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %sw.bb.i
  %dec17.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 18, %sw.bb.i ]
  %data.addr.015.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ @ov361x_start_2048, %sw.bb.i ]
  %7 = ptrtoint ptr %data.addr.015.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.addr.015.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp1.not.i.i = icmp eq i8 %8, -1
  %arrayidx5.i.i = getelementptr [2 x i8], ptr %data.addr.015.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5.i.i, align 1
  br i1 %cmp1.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %8, i8 noundef zeroext %10) #7
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i.i = zext i8 %10 to i16
  %call.i.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i.i) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %incdec.ptr.i.i = getelementptr [2 x i8], ptr %data.addr.015.i.i, i32 1
  %dec.i.i = add nsw i32 %dec17.i.i, -1
  %cmp.i.i.not = icmp eq i32 %dec17.i.i, 0
  br i1 %cmp.i.i.not, label %if.end.i.i.sw.epilog.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.end.i.i.sw.epilog.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then13
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @ov361x_bridge_start_1600, i32 noundef 14) #7
  br label %while.body.i25.i

while.body.i25.i:                                 ; preds = %if.end.i33.i.while.body.i25.i_crit_edge, %sw.bb1.i
  %dec17.i21.i = phi i32 [ %dec.i31.i, %if.end.i33.i.while.body.i25.i_crit_edge ], [ 18, %sw.bb1.i ]
  %data.addr.015.i22.i = phi ptr [ %incdec.ptr.i30.i, %if.end.i33.i.while.body.i25.i_crit_edge ], [ @ov361x_start_1600, %sw.bb1.i ]
  %11 = ptrtoint ptr %data.addr.015.i22.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.addr.015.i22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp1.not.i23.i = icmp eq i8 %12, -1
  %arrayidx5.i24.i = getelementptr [2 x i8], ptr %data.addr.015.i22.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx5.i24.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5.i24.i, align 1
  br i1 %cmp1.not.i23.i, label %if.else.i29.i, label %if.then.i26.i

if.then.i26.i:                                    ; preds = %while.body.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %12, i8 noundef zeroext %14) #7
  br label %if.end.i33.i

if.else.i29.i:                                    ; preds = %while.body.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i27.i = zext i8 %14 to i16
  %call.i28.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i27.i) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i33.i

if.end.i33.i:                                     ; preds = %if.else.i29.i, %if.then.i26.i
  %incdec.ptr.i30.i = getelementptr [2 x i8], ptr %data.addr.015.i22.i, i32 1
  %dec.i31.i = add nsw i32 %dec17.i21.i, -1
  %cmp.i32.i.not = icmp eq i32 %dec17.i21.i, 0
  br i1 %cmp.i32.i.not, label %if.end.i33.i.sw.epilog.i_crit_edge, label %if.end.i33.i.while.body.i25.i_crit_edge

if.end.i33.i.while.body.i25.i_crit_edge:          ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i25.i

if.end.i33.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then13
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @ov361x_bridge_start_1024, i32 noundef 14) #7
  br label %while.body.i39.i

while.body.i39.i:                                 ; preds = %if.end.i47.i.while.body.i39.i_crit_edge, %sw.bb2.i
  %dec17.i35.i = phi i32 [ %dec.i45.i, %if.end.i47.i.while.body.i39.i_crit_edge ], [ 18, %sw.bb2.i ]
  %data.addr.015.i36.i = phi ptr [ %incdec.ptr.i44.i, %if.end.i47.i.while.body.i39.i_crit_edge ], [ @ov361x_start_1024, %sw.bb2.i ]
  %15 = ptrtoint ptr %data.addr.015.i36.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data.addr.015.i36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp1.not.i37.i = icmp eq i8 %16, -1
  %arrayidx5.i38.i = getelementptr [2 x i8], ptr %data.addr.015.i36.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx5.i38.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx5.i38.i, align 1
  br i1 %cmp1.not.i37.i, label %if.else.i43.i, label %if.then.i40.i

if.then.i40.i:                                    ; preds = %while.body.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %16, i8 noundef zeroext %18) #7
  br label %if.end.i47.i

if.else.i43.i:                                    ; preds = %while.body.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i41.i = zext i8 %18 to i16
  %call.i42.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i41.i) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i47.i

if.end.i47.i:                                     ; preds = %if.else.i43.i, %if.then.i40.i
  %incdec.ptr.i44.i = getelementptr [2 x i8], ptr %data.addr.015.i36.i, i32 1
  %dec.i45.i = add nsw i32 %dec17.i35.i, -1
  %cmp.i46.i.not = icmp eq i32 %dec17.i35.i, 0
  br i1 %cmp.i46.i.not, label %if.end.i47.i.sw.epilog.i_crit_edge, label %if.end.i47.i.while.body.i39.i_crit_edge

if.end.i47.i.while.body.i39.i_crit_edge:          ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i39.i

if.end.i47.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then13
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @ov361x_bridge_start_640, i32 noundef 14) #7
  br label %while.body.i53.i

while.body.i53.i:                                 ; preds = %if.end.i61.i.while.body.i53.i_crit_edge, %sw.bb3.i
  %dec17.i49.i = phi i32 [ %dec.i59.i, %if.end.i61.i.while.body.i53.i_crit_edge ], [ 18, %sw.bb3.i ]
  %data.addr.015.i50.i = phi ptr [ %incdec.ptr.i58.i, %if.end.i61.i.while.body.i53.i_crit_edge ], [ @ov361x_start_640, %sw.bb3.i ]
  %19 = ptrtoint ptr %data.addr.015.i50.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.addr.015.i50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp1.not.i51.i = icmp eq i8 %20, -1
  %arrayidx5.i52.i = getelementptr [2 x i8], ptr %data.addr.015.i50.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx5.i52.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx5.i52.i, align 1
  br i1 %cmp1.not.i51.i, label %if.else.i57.i, label %if.then.i54.i

if.then.i54.i:                                    ; preds = %while.body.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %20, i8 noundef zeroext %22) #7
  br label %if.end.i61.i

if.else.i57.i:                                    ; preds = %while.body.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i55.i = zext i8 %22 to i16
  %call.i56.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i55.i) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i61.i

if.end.i61.i:                                     ; preds = %if.else.i57.i, %if.then.i54.i
  %incdec.ptr.i58.i = getelementptr [2 x i8], ptr %data.addr.015.i50.i, i32 1
  %dec.i59.i = add nsw i32 %dec17.i49.i, -1
  %cmp.i60.i.not = icmp eq i32 %dec17.i49.i, 0
  br i1 %cmp.i60.i.not, label %if.end.i61.i.sw.epilog.i_crit_edge, label %if.end.i61.i.while.body.i53.i_crit_edge

if.end.i61.i.while.body.i53.i_crit_edge:          ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i53.i

if.end.i61.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then13
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @ov361x_bridge_start_320, i32 noundef 14) #7
  br label %while.body.i67.i

while.body.i67.i:                                 ; preds = %if.end.i75.i.while.body.i67.i_crit_edge, %sw.bb4.i
  %dec17.i63.i = phi i32 [ %dec.i73.i, %if.end.i75.i.while.body.i67.i_crit_edge ], [ 18, %sw.bb4.i ]
  %data.addr.015.i64.i = phi ptr [ %incdec.ptr.i72.i, %if.end.i75.i.while.body.i67.i_crit_edge ], [ @ov361x_start_320, %sw.bb4.i ]
  %23 = ptrtoint ptr %data.addr.015.i64.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.addr.015.i64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp1.not.i65.i = icmp eq i8 %24, -1
  %arrayidx5.i66.i = getelementptr [2 x i8], ptr %data.addr.015.i64.i, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx5.i66.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5.i66.i, align 1
  br i1 %cmp1.not.i65.i, label %if.else.i71.i, label %if.then.i68.i

if.then.i68.i:                                    ; preds = %while.body.i67.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %24, i8 noundef zeroext %26) #7
  br label %if.end.i75.i

if.else.i71.i:                                    ; preds = %while.body.i67.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i69.i = zext i8 %26 to i16
  %call.i70.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i69.i) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i75.i

if.end.i75.i:                                     ; preds = %if.else.i71.i, %if.then.i68.i
  %incdec.ptr.i72.i = getelementptr [2 x i8], ptr %data.addr.015.i64.i, i32 1
  %dec.i73.i = add nsw i32 %dec17.i63.i, -1
  %cmp.i74.i.not = icmp eq i32 %dec17.i63.i, 0
  br i1 %cmp.i74.i.not, label %if.end.i75.i.sw.epilog.i_crit_edge, label %if.end.i75.i.while.body.i67.i_crit_edge

if.end.i75.i.while.body.i67.i_crit_edge:          ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i67.i

if.end.i75.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then13
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @ov361x_bridge_start_160, i32 noundef 14) #7
  br label %while.body.i81.i

while.body.i81.i:                                 ; preds = %if.end.i89.i.while.body.i81.i_crit_edge, %sw.bb5.i
  %dec17.i77.i = phi i32 [ %dec.i87.i, %if.end.i89.i.while.body.i81.i_crit_edge ], [ 18, %sw.bb5.i ]
  %data.addr.015.i78.i = phi ptr [ %incdec.ptr.i86.i, %if.end.i89.i.while.body.i81.i_crit_edge ], [ @ov361x_start_160, %sw.bb5.i ]
  %27 = ptrtoint ptr %data.addr.015.i78.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data.addr.015.i78.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp1.not.i79.i = icmp eq i8 %28, -1
  %arrayidx5.i80.i = getelementptr [2 x i8], ptr %data.addr.015.i78.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx5.i80.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx5.i80.i, align 1
  br i1 %cmp1.not.i79.i, label %if.else.i85.i, label %if.then.i82.i

if.then.i82.i:                                    ; preds = %while.body.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %28, i8 noundef zeroext %30) #7
  br label %if.end.i89.i

if.else.i85.i:                                    ; preds = %while.body.i81.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i83.i = zext i8 %30 to i16
  %call.i84.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i83.i) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i89.i

if.end.i89.i:                                     ; preds = %if.else.i85.i, %if.then.i82.i
  %incdec.ptr.i86.i = getelementptr [2 x i8], ptr %data.addr.015.i78.i, i32 1
  %dec.i87.i = add nsw i32 %dec17.i77.i, -1
  %cmp.i88.i.not = icmp eq i32 %dec17.i77.i, 0
  br i1 %cmp.i88.i.not, label %if.end.i89.i.sw.epilog.i_crit_edge, label %if.end.i89.i.while.body.i81.i_crit_edge

if.end.i89.i.while.body.i81.i_crit_edge:          ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i81.i

if.end.i89.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i89.i.sw.epilog.i_crit_edge, %if.end.i75.i.sw.epilog.i_crit_edge, %if.end.i61.i.sw.epilog.i_crit_edge, %if.end.i47.i.sw.epilog.i_crit_edge, %if.end.i33.i.sw.epilog.i_crit_edge, %if.end.i.i.sw.epilog.i_crit_edge, %if.then13.sw.epilog.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp.i91.i = icmp sgt i32 %31, 6
  br i1 %cmp.i91.i, label %do.end.i.i, label %sw.epilog.i.do.end3.i.i_crit_edge

sw.epilog.i.do.end3.i.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i, i32 noundef 224, i32 noundef 0) #10
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %sw.epilog.i.do.end3.i.i_crit_edge
  %usb_err.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %32 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i = icmp slt i32 %33, 0
  br i1 %cmp.i.i.i, label %do.end3.i.i.cleanup_crit_edge, label %if.end.i.i.i

do.end3.i.i.cleanup_crit_edge:                    ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i:                                     ; preds = %do.end3.i.i
  %dev.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %34 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i.i, align 4
  %usb_buf.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %36 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %37, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %35, align 8
  %shl.i.i.i.i = shl i32 %40, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %41 = load ptr, ptr %usb_buf.i.i.i, align 4
  %call2.i.i.i = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %41, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i.cleanup_crit_edge

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i.i) #10
  %42 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call2.i.i.i, ptr %usb_err.i.i.i, align 8
  br label %cleanup

if.end14:                                         ; preds = %entry
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %43 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %curr_mode, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %44, label %if.end14.while.body.i147_crit_edge [
    i8 0, label %if.end14.while.body.i_crit_edge
    i8 1, label %if.end14.while.body.i63_crit_edge
    i8 2, label %if.end14.while.body.i91_crit_edge
    i8 3, label %if.end14.while.body.i119_crit_edge
  ]

if.end14.while.body.i119_crit_edge:               ; preds = %if.end14
  br label %while.body.i119

if.end14.while.body.i91_crit_edge:                ; preds = %if.end14
  br label %while.body.i91

if.end14.while.body.i63_crit_edge:                ; preds = %if.end14
  br label %while.body.i63

if.end14.while.body.i_crit_edge:                  ; preds = %if.end14
  br label %while.body.i

if.end14.while.body.i147_crit_edge:               ; preds = %if.end14
  br label %while.body.i147

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end14.while.body.i_crit_edge
  %dec17.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ 19, %if.end14.while.body.i_crit_edge ]
  %data.addr.015.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ @ov965x_start_1_vga, %if.end14.while.body.i_crit_edge ]
  %46 = ptrtoint ptr %data.addr.015.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data.addr.015.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp1.not.i = icmp eq i8 %47, -1
  %arrayidx5.i = getelementptr [2 x i8], ptr %data.addr.015.i, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx5.i, align 1
  br i1 %cmp1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %47, i8 noundef zeroext %49) #7
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %49 to i16
  %call.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %incdec.ptr.i = getelementptr [2 x i8], ptr %data.addr.015.i, i32 1
  %dec.i = add nsw i32 %dec17.i, -1
  %cmp.i = icmp sgt i32 %dec17.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %sccb_w_array.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

sccb_w_array.exit:                                ; preds = %if.end.i
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_start_qvga, i32 noundef 24)
  br label %while.body.i49

while.body.i49:                                   ; preds = %if.end.i57.while.body.i49_crit_edge, %sccb_w_array.exit
  %dec17.i45 = phi i32 [ %dec.i55, %if.end.i57.while.body.i49_crit_edge ], [ 13, %sccb_w_array.exit ]
  %data.addr.015.i46 = phi ptr [ %incdec.ptr.i54, %if.end.i57.while.body.i49_crit_edge ], [ @ov965x_start_2_qvga, %sccb_w_array.exit ]
  %50 = ptrtoint ptr %data.addr.015.i46 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %data.addr.015.i46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp1.not.i47 = icmp eq i8 %51, -1
  %arrayidx5.i48 = getelementptr [2 x i8], ptr %data.addr.015.i46, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx5.i48 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx5.i48, align 1
  br i1 %cmp1.not.i47, label %if.else.i53, label %if.then.i50

if.then.i50:                                      ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %51, i8 noundef zeroext %53) #7
  br label %if.end.i57

if.else.i53:                                      ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i51 = zext i8 %53 to i16
  %call.i52 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i51) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i57

if.end.i57:                                       ; preds = %if.else.i53, %if.then.i50
  %incdec.ptr.i54 = getelementptr [2 x i8], ptr %data.addr.015.i46, i32 1
  %dec.i55 = add nsw i32 %dec17.i45, -1
  %cmp.i56 = icmp sgt i32 %dec17.i45, 0
  br i1 %cmp.i56, label %if.end.i57.while.body.i49_crit_edge, label %if.end.i57.sw.epilog_crit_edge

if.end.i57.sw.epilog_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i57.while.body.i49_crit_edge:              ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i49

while.body.i63:                                   ; preds = %if.end.i71.while.body.i63_crit_edge, %if.end14.while.body.i63_crit_edge
  %dec17.i59 = phi i32 [ %dec.i69, %if.end.i71.while.body.i63_crit_edge ], [ 19, %if.end14.while.body.i63_crit_edge ]
  %data.addr.015.i60 = phi ptr [ %incdec.ptr.i68, %if.end.i71.while.body.i63_crit_edge ], [ @ov965x_start_1_vga, %if.end14.while.body.i63_crit_edge ]
  %54 = ptrtoint ptr %data.addr.015.i60 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data.addr.015.i60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp1.not.i61 = icmp eq i8 %55, -1
  %arrayidx5.i62 = getelementptr [2 x i8], ptr %data.addr.015.i60, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx5.i62 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx5.i62, align 1
  br i1 %cmp1.not.i61, label %if.else.i67, label %if.then.i64

if.then.i64:                                      ; preds = %while.body.i63
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %55, i8 noundef zeroext %57) #7
  br label %if.end.i71

if.else.i67:                                      ; preds = %while.body.i63
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i65 = zext i8 %57 to i16
  %call.i66 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i65) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i71

if.end.i71:                                       ; preds = %if.else.i67, %if.then.i64
  %incdec.ptr.i68 = getelementptr [2 x i8], ptr %data.addr.015.i60, i32 1
  %dec.i69 = add nsw i32 %dec17.i59, -1
  %cmp.i70 = icmp sgt i32 %dec17.i59, 0
  br i1 %cmp.i70, label %if.end.i71.while.body.i63_crit_edge, label %sccb_w_array.exit72

if.end.i71.while.body.i63_crit_edge:              ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i63

sccb_w_array.exit72:                              ; preds = %if.end.i71
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_start_vga, i32 noundef 24)
  br label %while.body.i77

while.body.i77:                                   ; preds = %if.end.i85.while.body.i77_crit_edge, %sccb_w_array.exit72
  %dec17.i73 = phi i32 [ %dec.i83, %if.end.i85.while.body.i77_crit_edge ], [ 11, %sccb_w_array.exit72 ]
  %data.addr.015.i74 = phi ptr [ %incdec.ptr.i82, %if.end.i85.while.body.i77_crit_edge ], [ @ov965x_start_2_vga, %sccb_w_array.exit72 ]
  %58 = ptrtoint ptr %data.addr.015.i74 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data.addr.015.i74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp1.not.i75 = icmp eq i8 %59, -1
  %arrayidx5.i76 = getelementptr [2 x i8], ptr %data.addr.015.i74, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx5.i76 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx5.i76, align 1
  br i1 %cmp1.not.i75, label %if.else.i81, label %if.then.i78

if.then.i78:                                      ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %59, i8 noundef zeroext %61) #7
  br label %if.end.i85

if.else.i81:                                      ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i79 = zext i8 %61 to i16
  %call.i80 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i79) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.else.i81, %if.then.i78
  %incdec.ptr.i82 = getelementptr [2 x i8], ptr %data.addr.015.i74, i32 1
  %dec.i83 = add nsw i32 %dec17.i73, -1
  %cmp.i84 = icmp sgt i32 %dec17.i73, 0
  br i1 %cmp.i84, label %if.end.i85.while.body.i77_crit_edge, label %if.end.i85.sw.epilog_crit_edge

if.end.i85.sw.epilog_crit_edge:                   ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i85.while.body.i77_crit_edge:              ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i77

while.body.i91:                                   ; preds = %if.end.i99.while.body.i91_crit_edge, %if.end14.while.body.i91_crit_edge
  %dec17.i87 = phi i32 [ %dec.i97, %if.end.i99.while.body.i91_crit_edge ], [ 18, %if.end14.while.body.i91_crit_edge ]
  %data.addr.015.i88 = phi ptr [ %incdec.ptr.i96, %if.end.i99.while.body.i91_crit_edge ], [ @ov965x_start_1_svga, %if.end14.while.body.i91_crit_edge ]
  %62 = ptrtoint ptr %data.addr.015.i88 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %data.addr.015.i88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp1.not.i89 = icmp eq i8 %63, -1
  %arrayidx5.i90 = getelementptr [2 x i8], ptr %data.addr.015.i88, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx5.i90 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx5.i90, align 1
  br i1 %cmp1.not.i89, label %if.else.i95, label %if.then.i92

if.then.i92:                                      ; preds = %while.body.i91
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %63, i8 noundef zeroext %65) #7
  br label %if.end.i99

if.else.i95:                                      ; preds = %while.body.i91
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i93 = zext i8 %65 to i16
  %call.i94 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i93) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i99

if.end.i99:                                       ; preds = %if.else.i95, %if.then.i92
  %incdec.ptr.i96 = getelementptr [2 x i8], ptr %data.addr.015.i88, i32 1
  %dec.i97 = add nsw i32 %dec17.i87, -1
  %cmp.i98 = icmp sgt i32 %dec17.i87, 0
  br i1 %cmp.i98, label %if.end.i99.while.body.i91_crit_edge, label %sccb_w_array.exit100

if.end.i99.while.body.i91_crit_edge:              ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i91

sccb_w_array.exit100:                             ; preds = %if.end.i99
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_start_svga, i32 noundef 24)
  br label %while.body.i105

while.body.i105:                                  ; preds = %if.end.i113.while.body.i105_crit_edge, %sccb_w_array.exit100
  %dec17.i101 = phi i32 [ %dec.i111, %if.end.i113.while.body.i105_crit_edge ], [ 10, %sccb_w_array.exit100 ]
  %data.addr.015.i102 = phi ptr [ %incdec.ptr.i110, %if.end.i113.while.body.i105_crit_edge ], [ @ov965x_start_2_svga, %sccb_w_array.exit100 ]
  %66 = ptrtoint ptr %data.addr.015.i102 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %data.addr.015.i102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp1.not.i103 = icmp eq i8 %67, -1
  %arrayidx5.i104 = getelementptr [2 x i8], ptr %data.addr.015.i102, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx5.i104 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx5.i104, align 1
  br i1 %cmp1.not.i103, label %if.else.i109, label %if.then.i106

if.then.i106:                                     ; preds = %while.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %67, i8 noundef zeroext %69) #7
  br label %if.end.i113

if.else.i109:                                     ; preds = %while.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i107 = zext i8 %69 to i16
  %call.i108 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i107) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i113

if.end.i113:                                      ; preds = %if.else.i109, %if.then.i106
  %incdec.ptr.i110 = getelementptr [2 x i8], ptr %data.addr.015.i102, i32 1
  %dec.i111 = add nsw i32 %dec17.i101, -1
  %cmp.i112 = icmp sgt i32 %dec17.i101, 0
  br i1 %cmp.i112, label %if.end.i113.while.body.i105_crit_edge, label %if.end.i113.sw.epilog_crit_edge

if.end.i113.sw.epilog_crit_edge:                  ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i113.while.body.i105_crit_edge:            ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i105

while.body.i119:                                  ; preds = %if.end.i127.while.body.i119_crit_edge, %if.end14.while.body.i119_crit_edge
  %dec17.i115 = phi i32 [ %dec.i125, %if.end.i127.while.body.i119_crit_edge ], [ 19, %if.end14.while.body.i119_crit_edge ]
  %data.addr.015.i116 = phi ptr [ %incdec.ptr.i124, %if.end.i127.while.body.i119_crit_edge ], [ @ov965x_start_1_xga, %if.end14.while.body.i119_crit_edge ]
  %70 = ptrtoint ptr %data.addr.015.i116 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data.addr.015.i116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp1.not.i117 = icmp eq i8 %71, -1
  %arrayidx5.i118 = getelementptr [2 x i8], ptr %data.addr.015.i116, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx5.i118 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx5.i118, align 1
  br i1 %cmp1.not.i117, label %if.else.i123, label %if.then.i120

if.then.i120:                                     ; preds = %while.body.i119
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %71, i8 noundef zeroext %73) #7
  br label %if.end.i127

if.else.i123:                                     ; preds = %while.body.i119
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i121 = zext i8 %73 to i16
  %call.i122 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i121) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i127

if.end.i127:                                      ; preds = %if.else.i123, %if.then.i120
  %incdec.ptr.i124 = getelementptr [2 x i8], ptr %data.addr.015.i116, i32 1
  %dec.i125 = add nsw i32 %dec17.i115, -1
  %cmp.i126 = icmp sgt i32 %dec17.i115, 0
  br i1 %cmp.i126, label %if.end.i127.while.body.i119_crit_edge, label %sccb_w_array.exit128

if.end.i127.while.body.i119_crit_edge:            ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i119

sccb_w_array.exit128:                             ; preds = %if.end.i127
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_start_xga, i32 noundef 24)
  br label %while.body.i133

while.body.i133:                                  ; preds = %if.end.i141.while.body.i133_crit_edge, %sccb_w_array.exit128
  %dec17.i129 = phi i32 [ %dec.i139, %if.end.i141.while.body.i133_crit_edge ], [ 10, %sccb_w_array.exit128 ]
  %data.addr.015.i130 = phi ptr [ %incdec.ptr.i138, %if.end.i141.while.body.i133_crit_edge ], [ @ov965x_start_2_svga, %sccb_w_array.exit128 ]
  %74 = ptrtoint ptr %data.addr.015.i130 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %data.addr.015.i130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp1.not.i131 = icmp eq i8 %75, -1
  %arrayidx5.i132 = getelementptr [2 x i8], ptr %data.addr.015.i130, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx5.i132 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx5.i132, align 1
  br i1 %cmp1.not.i131, label %if.else.i137, label %if.then.i134

if.then.i134:                                     ; preds = %while.body.i133
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %75, i8 noundef zeroext %77) #7
  br label %if.end.i141

if.else.i137:                                     ; preds = %while.body.i133
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i135 = zext i8 %77 to i16
  %call.i136 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i135) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i141

if.end.i141:                                      ; preds = %if.else.i137, %if.then.i134
  %incdec.ptr.i138 = getelementptr [2 x i8], ptr %data.addr.015.i130, i32 1
  %dec.i139 = add nsw i32 %dec17.i129, -1
  %cmp.i140 = icmp sgt i32 %dec17.i129, 0
  br i1 %cmp.i140, label %if.end.i141.while.body.i133_crit_edge, label %if.end.i141.sw.epilog_crit_edge

if.end.i141.sw.epilog_crit_edge:                  ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i141.while.body.i133_crit_edge:            ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i133

while.body.i147:                                  ; preds = %if.end.i155.while.body.i147_crit_edge, %if.end14.while.body.i147_crit_edge
  %dec17.i143 = phi i32 [ %dec.i153, %if.end.i155.while.body.i147_crit_edge ], [ 19, %if.end14.while.body.i147_crit_edge ]
  %data.addr.015.i144 = phi ptr [ %incdec.ptr.i152, %if.end.i155.while.body.i147_crit_edge ], [ @ov965x_start_1_sxga, %if.end14.while.body.i147_crit_edge ]
  %78 = ptrtoint ptr %data.addr.015.i144 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %data.addr.015.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %cmp1.not.i145 = icmp eq i8 %79, -1
  %arrayidx5.i146 = getelementptr [2 x i8], ptr %data.addr.015.i144, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx5.i146 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx5.i146, align 1
  br i1 %cmp1.not.i145, label %if.else.i151, label %if.then.i148

if.then.i148:                                     ; preds = %while.body.i147
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %79, i8 noundef zeroext %81) #7
  br label %if.end.i155

if.else.i151:                                     ; preds = %while.body.i147
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i149 = zext i8 %81 to i16
  %call.i150 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i149) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i155

if.end.i155:                                      ; preds = %if.else.i151, %if.then.i148
  %incdec.ptr.i152 = getelementptr [2 x i8], ptr %data.addr.015.i144, i32 1
  %dec.i153 = add nsw i32 %dec17.i143, -1
  %cmp.i154 = icmp sgt i32 %dec17.i143, 0
  br i1 %cmp.i154, label %if.end.i155.while.body.i147_crit_edge, label %sccb_w_array.exit156

if.end.i155.while.body.i147_crit_edge:            ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i147

sccb_w_array.exit156:                             ; preds = %if.end.i155
  tail call fastcc void @reg_w_array(ptr noundef %gspca_dev, ptr noundef nonnull @bridge_start_sxga, i32 noundef 14)
  br label %while.body.i161

while.body.i161:                                  ; preds = %if.end.i169.while.body.i161_crit_edge, %sccb_w_array.exit156
  %dec17.i157 = phi i32 [ %dec.i167, %if.end.i169.while.body.i161_crit_edge ], [ 10, %sccb_w_array.exit156 ]
  %data.addr.015.i158 = phi ptr [ %incdec.ptr.i166, %if.end.i169.while.body.i161_crit_edge ], [ @ov965x_start_2_sxga, %sccb_w_array.exit156 ]
  %82 = ptrtoint ptr %data.addr.015.i158 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %data.addr.015.i158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %cmp1.not.i159 = icmp eq i8 %83, -1
  %arrayidx5.i160 = getelementptr [2 x i8], ptr %data.addr.015.i158, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx5.i160 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx5.i160, align 1
  br i1 %cmp1.not.i159, label %if.else.i165, label %if.then.i162

if.then.i162:                                     ; preds = %while.body.i161
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %83, i8 noundef zeroext %85) #7
  br label %if.end.i169

if.else.i165:                                     ; preds = %while.body.i161
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i163 = zext i8 %85 to i16
  %call.i164 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %conv6.i163) #7
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %if.end.i169

if.end.i169:                                      ; preds = %if.else.i165, %if.then.i162
  %incdec.ptr.i166 = getelementptr [2 x i8], ptr %data.addr.015.i158, i32 1
  %dec.i167 = add nsw i32 %dec17.i157, -1
  %cmp.i168 = icmp sgt i32 %dec17.i157, 0
  br i1 %cmp.i168, label %if.end.i169.while.body.i161_crit_edge, label %if.end.i169.sw.epilog_crit_edge

if.end.i169.sw.epilog_crit_edge:                  ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i169.while.body.i161_crit_edge:            ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i161

sw.epilog:                                        ; preds = %if.end.i169.sw.epilog_crit_edge, %if.end.i141.sw.epilog_crit_edge, %if.end.i113.sw.epilog_crit_edge, %if.end.i85.sw.epilog_crit_edge, %if.end.i57.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %86 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %86)
  %cmp.i171 = icmp sgt i32 %86, 6
  br i1 %cmp.i171, label %do.end.i, label %sw.epilog.do.end3.i_crit_edge

sw.epilog.do.end3.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef 224, i32 noundef 0) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.epilog.do.end3.i_crit_edge
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %87 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i173 = icmp slt i32 %88, 0
  br i1 %cmp.i.i173, label %do.end3.i.reg_w.exit_crit_edge, label %if.end.i.i174

do.end3.i.reg_w.exit_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i.i174:                                    ; preds = %do.end3.i
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %89 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %91 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %usb_buf.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %92, align 1
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %90, align 8
  %shl.i.i.i = shl i32 %95, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %96 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %96, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i175, label %if.end.i.i174.reg_w.exit_crit_edge

if.end.i.i174.reg_w.exit_crit_edge:               ; preds = %if.end.i.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i.i175:                                    ; preds = %if.end.i.i174
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i) #10
  %97 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i.i175, %if.end.i.i174.reg_w.exit_crit_edge, %do.end3.i.reg_w.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %98 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %98)
  %cmp.i176 = icmp sgt i32 %98, 6
  br i1 %cmp.i176, label %do.end.i179, label %reg_w.exit.do.end3.i182_crit_edge

reg_w.exit.do.end3.i182_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i182

do.end.i179:                                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i177 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i177, i32 noundef 224, i32 noundef 0) #10
  br label %do.end3.i182

do.end3.i182:                                     ; preds = %do.end.i179, %reg_w.exit.do.end3.i182_crit_edge
  %99 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i.i181 = icmp slt i32 %100, 0
  br i1 %cmp.i.i181, label %do.end3.i182.reg_w.exit192_crit_edge, label %if.end.i.i189

do.end3.i182.reg_w.exit192_crit_edge:             ; preds = %do.end3.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit192

if.end.i.i189:                                    ; preds = %do.end3.i182
  %dev.i.i183 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %101 = ptrtoint ptr %dev.i.i183 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i183, align 4
  %usb_buf.i.i184 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %103 = ptrtoint ptr %usb_buf.i.i184 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %usb_buf.i.i184, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %104, align 1
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %102, align 8
  %shl.i.i.i185 = shl i32 %107, 8
  %or.i.i186 = or i32 %shl.i.i.i185, -2147483648
  %108 = load ptr, ptr %usb_buf.i.i184, align 4
  %call2.i.i187 = tail call i32 @usb_control_msg(ptr noundef %102, i32 noundef %or.i.i186, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %108, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i187)
  %cmp3.i.i188 = icmp slt i32 %call2.i.i187, 0
  br i1 %cmp3.i.i188, label %do.end.i.i191, label %if.end.i.i189.reg_w.exit192_crit_edge

if.end.i.i189.reg_w.exit192_crit_edge:            ; preds = %if.end.i.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit192

do.end.i.i191:                                    ; preds = %if.end.i.i189
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i187) #10
  %109 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call2.i.i187, ptr %usb_err.i.i, align 8
  br label %reg_w.exit192

reg_w.exit192:                                    ; preds = %do.end.i.i191, %if.end.i.i189.reg_w.exit192_crit_edge, %do.end3.i182.reg_w.exit192_crit_edge
  tail call fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %reg_w.exit192, %do.end.i.i.i, %if.end.i.i.i.cleanup_crit_edge, %do.end3.i.i.cleanup_crit_edge, %if.then6, %if.then
  %retval.0.in = phi ptr [ %usb_err, %if.then ], [ %usb_err7, %if.then6 ], [ %usb_err.i.i, %reg_w.exit192 ], [ %usb_err.i.i.i, %do.end3.i.i.cleanup_crit_edge ], [ %usb_err.i.i.i, %if.end.i.i.i.cleanup_crit_edge ], [ %usb_err.i.i.i, %do.end.i.i.i ]
  %110 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %110)
  %retval.0 = load i32, ptr %retval.0.in, align 8
  ret i32 %retval.0
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
  %last_pts = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %last_fid = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  br label %do.body

do.body:                                          ; preds = %scan_next.do.body_crit_edge, %entry
  %remaining_len.0 = phi i32 [ %len, %entry ], [ %sub103, %scan_next.do.body_crit_edge ]
  %data.addr.0 = phi ptr [ %data, %entry ], [ %add.ptr104, %scan_next.do.body_crit_edge ]
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
  %and72 = and i8 %7, 1
  %18 = ptrtoint ptr %last_pts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_pts, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or69, i32 %19)
  %cmp74.not = icmp eq i32 %or69, %19
  br i1 %cmp74.not, label %lor.lhs.false76, label %if.end57.if.then81_crit_edge

if.end57.if.then81_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

lor.lhs.false76:                                  ; preds = %if.end57
  %20 = ptrtoint ptr %last_fid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %last_fid, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %and72, i8 %21)
  %cmp79.not = icmp eq i8 %and72, %21
  br i1 %cmp79.not, label %if.else, label %lor.lhs.false76.if.then81_crit_edge

lor.lhs.false76.if.then81_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

if.then81:                                        ; preds = %lor.lhs.false76.if.then81_crit_edge, %if.end57.if.then81_crit_edge
  %22 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %last_packet_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp83 = icmp eq i8 %23, 2
  br i1 %cmp83, label %if.then85, label %if.then81.if.end86_crit_edge

if.then81.if.end86_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then85:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then81.if.end86_crit_edge
  %24 = ptrtoint ptr %last_pts to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or69, ptr %last_pts, align 8
  %25 = ptrtoint ptr %last_fid to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %and72, ptr %last_fid, align 4
  %add.ptr = getelementptr i8, ptr %data.addr.0, i32 12
  %sub = add nsw i32 %2, -12
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %sub) #7
  br label %scan_next

if.else:                                          ; preds = %lor.lhs.false76
  %and91 = and i32 %conv18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else97, label %if.then93

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %last_pts to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %last_pts, align 8
  %add.ptr95 = getelementptr i8, ptr %data.addr.0, i32 12
  %sub96 = add nsw i32 %2, -12
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %add.ptr95, i32 noundef %sub96) #7
  br label %scan_next

if.else97:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr98 = getelementptr i8, ptr %data.addr.0, i32 12
  %sub99 = add nsw i32 %2, -12
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr98, i32 noundef %sub99) #7
  br label %scan_next

discard.sink.split:                               ; preds = %do.body42.discard.sink.split_crit_edge, %do.body21.discard.sink.split_crit_edge, %do.body8.discard.sink.split_crit_edge
  %.str.40.sink = phi ptr [ @.str.34, %do.body8.discard.sink.split_crit_edge ], [ @.str.37, %do.body21.discard.sink.split_crit_edge ], [ @.str.40, %do.body42.discard.sink.split_crit_edge ]
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.40.sink, ptr noundef %name30) #10
  br label %discard

discard:                                          ; preds = %discard.sink.split, %do.body42.discard_crit_edge, %do.body21.discard_crit_edge, %do.body8.discard_crit_edge
  %27 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %last_packet_type, align 4
  br label %scan_next

scan_next:                                        ; preds = %discard, %if.else97, %if.then93, %if.end86
  %sub103 = sub i32 %remaining_len.0, %2
  %add.ptr104 = getelementptr i8, ptr %data.addr.0, i32 %2
  %cmp106 = icmp sgt i32 %sub103, 0
  br i1 %cmp106, label %scan_next.do.body_crit_edge, label %do.end108

scan_next.do.body_crit_edge:                      ; preds = %scan_next
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end108:                                        ; preds = %scan_next
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp.i = icmp sgt i32 %2, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %do.end.i, label %if.then.do.end3.i_crit_edge

if.then.do.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef 224, i32 noundef 1) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then.do.end3.i_crit_edge
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp slt i32 %4, 0
  br i1 %cmp.i.i, label %do.end3.i.return_crit_edge, label %if.end.i.i

do.end3.i.return_crit_edge:                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.i:                                       ; preds = %do.end3.i
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %8, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %12 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %12, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i) #10
  %13 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %return

if.end:                                           ; preds = %entry
  br i1 %cmp.i, label %do.end.i9, label %if.end.do.end3.i12_crit_edge

if.end.do.end3.i12_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i12

do.end.i9:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name.i7 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i7, i32 noundef 224, i32 noundef 1) #10
  br label %do.end3.i12

do.end3.i12:                                      ; preds = %do.end.i9, %if.end.do.end3.i12_crit_edge
  %usb_err.i.i10 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %14 = ptrtoint ptr %usb_err.i.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err.i.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i11 = icmp slt i32 %15, 0
  br i1 %cmp.i.i11, label %do.end3.i12.reg_w.exit22_crit_edge, label %if.end.i.i19

do.end3.i12.reg_w.exit22_crit_edge:               ; preds = %do.end3.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit22

if.end.i.i19:                                     ; preds = %do.end3.i12
  %dev.i.i13 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i13, align 4
  %usb_buf.i.i14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %usb_buf.i.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i.i14, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %19, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 8
  %shl.i.i.i15 = shl i32 %22, 8
  %or.i.i16 = or i32 %shl.i.i.i15, -2147483648
  %23 = load ptr, ptr %usb_buf.i.i14, align 4
  %call2.i.i17 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i.i16, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %23, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i17)
  %cmp3.i.i18 = icmp slt i32 %call2.i.i17, 0
  br i1 %cmp3.i.i18, label %do.end.i.i21, label %if.end.i.i19.reg_w.exit22_crit_edge

if.end.i.i19.reg_w.exit22_crit_edge:              ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit22

do.end.i.i21:                                     ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i17) #10
  %24 = ptrtoint ptr %usb_err.i.i10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call2.i.i17, ptr %usb_err.i.i10, align 8
  br label %reg_w.exit22

reg_w.exit22:                                     ; preds = %do.end.i.i21, %if.end.i.i19.reg_w.exit22_crit_edge, %do.end3.i12.reg_w.exit22_crit_edge
  tail call fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp.i23 = icmp sgt i32 %25, 6
  br i1 %cmp.i23, label %do.end.i26, label %reg_w.exit22.do.end3.i29_crit_edge

reg_w.exit22.do.end3.i29_crit_edge:               ; preds = %reg_w.exit22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i29

do.end.i26:                                       ; preds = %reg_w.exit22
  call void @__sanitizer_cov_trace_pc() #9
  %name.i24 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i24, i32 noundef 224, i32 noundef 0) #10
  br label %do.end3.i29

do.end3.i29:                                      ; preds = %do.end.i26, %reg_w.exit22.do.end3.i29_crit_edge
  %26 = ptrtoint ptr %usb_err.i.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usb_err.i.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i28 = icmp slt i32 %27, 0
  br i1 %cmp.i.i28, label %do.end3.i29.return_crit_edge, label %if.end.i.i36

do.end3.i29.return_crit_edge:                     ; preds = %do.end3.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.i36:                                     ; preds = %do.end3.i29
  %dev.i.i30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %28 = ptrtoint ptr %dev.i.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i30, align 4
  %usb_buf.i.i31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %30 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i.i31, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %31, align 1
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %29, align 8
  %shl.i.i.i32 = shl i32 %34, 8
  %or.i.i33 = or i32 %shl.i.i.i32, -2147483648
  %35 = load ptr, ptr %usb_buf.i.i31, align 4
  %call2.i.i34 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i.i33, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 224, ptr noundef %35, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i34)
  %cmp3.i.i35 = icmp slt i32 %call2.i.i34, 0
  br i1 %cmp3.i.i35, label %do.end.i.i38, label %if.end.i.i36.return_crit_edge

if.end.i.i36.return_crit_edge:                    ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end.i.i38:                                     ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i34) #10
  %36 = ptrtoint ptr %usb_err.i.i10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call2.i.i34, ptr %usb_err.i.i10, align 8
  br label %return

return:                                           ; preds = %do.end.i.i38, %if.end.i.i36.return_crit_edge, %do.end3.i29.return_crit_edge, %do.end.i.i, %if.end.i.i.return_crit_edge, %do.end3.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %1 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp slt i32 %2, 0
  br i1 %cmp.i, label %do.end3.reg_w_i.exit40_crit_edge, label %if.end.i

do.end3.reg_w_i.exit40_crit_edge:                 ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit40

if.end.i:                                         ; preds = %do.end3
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %reg, ptr %6, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 242, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.reg_w_i.exit40.sink.split_crit_edge, label %reg_w_i.exit

if.end.i.reg_w_i.exit40.sink.split_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit40.sink.split

reg_w_i.exit:                                     ; preds = %if.end.i
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i18 = icmp slt i32 %.pr, 0
  br i1 %cmp.i18, label %reg_w_i.exit.reg_w_i.exit40_crit_edge, label %if.end.i25

reg_w_i.exit.reg_w_i.exit40_crit_edge:            ; preds = %reg_w_i.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit40

if.end.i25:                                       ; preds = %reg_w_i.exit
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %val, ptr %15, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 8
  %shl.i.i21 = shl i32 %18, 8
  %or.i22 = or i32 %shl.i.i21, -2147483648
  %19 = load ptr, ptr %usb_buf.i, align 4
  %call2.i23 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i22, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 243, ptr noundef %19, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i23)
  %cmp3.i24 = icmp slt i32 %call2.i23, 0
  br i1 %cmp3.i24, label %if.end.i25.reg_w_i.exit40.sink.split_crit_edge, label %reg_w_i.exit28

if.end.i25.reg_w_i.exit40.sink.split_crit_edge:   ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit40.sink.split

reg_w_i.exit28:                                   ; preds = %if.end.i25
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr42.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr42.pr)
  %cmp.i30 = icmp slt i32 %.pr42.pr, 0
  br i1 %cmp.i30, label %reg_w_i.exit28.reg_w_i.exit40_crit_edge, label %if.end.i37

reg_w_i.exit28.reg_w_i.exit40_crit_edge:          ; preds = %reg_w_i.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit40

if.end.i37:                                       ; preds = %reg_w_i.exit28
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 55, ptr %24, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %22, align 8
  %shl.i.i33 = shl i32 %27, 8
  %or.i34 = or i32 %shl.i.i33, -2147483648
  %28 = load ptr, ptr %usb_buf.i, align 4
  %call2.i35 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i34, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 245, ptr noundef %28, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i35)
  %cmp3.i36 = icmp slt i32 %call2.i35, 0
  br i1 %cmp3.i36, label %if.end.i37.reg_w_i.exit40.sink.split_crit_edge, label %if.end.i37.reg_w_i.exit40_crit_edge

if.end.i37.reg_w_i.exit40_crit_edge:              ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit40

if.end.i37.reg_w_i.exit40.sink.split_crit_edge:   ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit40.sink.split

reg_w_i.exit40.sink.split:                        ; preds = %if.end.i37.reg_w_i.exit40.sink.split_crit_edge, %if.end.i25.reg_w_i.exit40.sink.split_crit_edge, %if.end.i.reg_w_i.exit40.sink.split_crit_edge
  %call2.i.sink49 = phi i32 [ %call2.i, %if.end.i.reg_w_i.exit40.sink.split_crit_edge ], [ %call2.i23, %if.end.i25.reg_w_i.exit40.sink.split_crit_edge ], [ %call2.i35, %if.end.i37.reg_w_i.exit40.sink.split_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.sink49) #10
  %29 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call2.i.sink49, ptr %usb_err.i, align 8
  br label %reg_w_i.exit40

reg_w_i.exit40:                                   ; preds = %reg_w_i.exit40.sink.split, %if.end.i37.reg_w_i.exit40_crit_edge, %reg_w_i.exit28.reg_w_i.exit40_crit_edge, %reg_w_i.exit.reg_w_i.exit40_crit_edge, %do.end3.reg_w_i.exit40_crit_edge
  %call4 = tail call fastcc i32 @sccb_check_status(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end7, label %reg_w_i.exit40.if.end10_crit_edge

reg_w_i.exit40.if.end10_crit_edge:                ; preds = %reg_w_i.exit40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end7:                                          ; preds = %reg_w_i.exit40
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %reg_w_i.exit40.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i16 %reg to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp.i = icmp sgt i32 %0, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end3.i_crit_edge

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv.mask = and i16 %reg, 255
  %conv2.i = zext i16 %conv.mask to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef 242, i32 noundef %conv2.i) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %1 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.i = icmp slt i32 %2, 0
  br i1 %cmp.i.i, label %do.end3.i.reg_w.exit_crit_edge, label %if.end.i.i

do.end3.i.reg_w.exit_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i.i:                                       ; preds = %do.end3.i
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %6, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %10 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 242, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit_crit_edge

if.end.i.i.reg_w.exit_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i) #10
  %11 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit_crit_edge, %do.end3.i.reg_w.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp.i16 = icmp sgt i32 %12, 6
  br i1 %cmp.i16, label %do.end.i19, label %reg_w.exit.do.end3.i22_crit_edge

reg_w.exit.do.end3.i22_crit_edge:                 ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i22

do.end.i19:                                       ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i17 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i17, i32 noundef 245, i32 noundef 51) #10
  br label %do.end3.i22

do.end3.i22:                                      ; preds = %do.end.i19, %reg_w.exit.do.end3.i22_crit_edge
  %13 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i21 = icmp slt i32 %14, 0
  br i1 %cmp.i.i21, label %do.end3.i22.reg_w.exit32_crit_edge, label %if.end.i.i29

do.end3.i22.reg_w.exit32_crit_edge:               ; preds = %do.end3.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit32

if.end.i.i29:                                     ; preds = %do.end3.i22
  %dev.i.i23 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %15 = ptrtoint ptr %dev.i.i23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i23, align 4
  %usb_buf.i.i24 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %17 = ptrtoint ptr %usb_buf.i.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i.i24, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 51, ptr %18, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 8
  %shl.i.i.i25 = shl i32 %21, 8
  %or.i.i26 = or i32 %shl.i.i.i25, -2147483648
  %22 = load ptr, ptr %usb_buf.i.i24, align 4
  %call2.i.i27 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i.i26, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 245, ptr noundef %22, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i27)
  %cmp3.i.i28 = icmp slt i32 %call2.i.i27, 0
  br i1 %cmp3.i.i28, label %do.end.i.i31, label %if.end.i.i29.reg_w.exit32_crit_edge

if.end.i.i29.reg_w.exit32_crit_edge:              ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit32

do.end.i.i31:                                     ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i27) #10
  %23 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2.i.i27, ptr %usb_err.i.i, align 8
  br label %reg_w.exit32

reg_w.exit32:                                     ; preds = %do.end.i.i31, %if.end.i.i29.reg_w.exit32_crit_edge, %do.end3.i22.reg_w.exit32_crit_edge
  %call = tail call fastcc i32 @sccb_check_status(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %reg_w.exit32.if.end_crit_edge

reg_w.exit32.if.end_crit_edge:                    ; preds = %reg_w.exit32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %reg_w.exit32
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %reg_w.exit32.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp.i33 = icmp sgt i32 %24, 6
  br i1 %cmp.i33, label %do.end.i36, label %if.end.do.end3.i39_crit_edge

if.end.do.end3.i39_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i39

do.end.i36:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name.i34 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i34, i32 noundef 245, i32 noundef 249) #10
  br label %do.end3.i39

do.end3.i39:                                      ; preds = %do.end.i36, %if.end.do.end3.i39_crit_edge
  %25 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i38 = icmp slt i32 %26, 0
  br i1 %cmp.i.i38, label %do.end3.i39.reg_w.exit49_crit_edge, label %if.end.i.i46

do.end3.i39.reg_w.exit49_crit_edge:               ; preds = %do.end3.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit49

if.end.i.i46:                                     ; preds = %do.end3.i39
  %dev.i.i40 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %27 = ptrtoint ptr %dev.i.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i40, align 4
  %usb_buf.i.i41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %29 = ptrtoint ptr %usb_buf.i.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i.i41, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -7, ptr %30, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %28, align 8
  %shl.i.i.i42 = shl i32 %33, 8
  %or.i.i43 = or i32 %shl.i.i.i42, -2147483648
  %34 = load ptr, ptr %usb_buf.i.i41, align 4
  %call2.i.i44 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i.i43, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 245, ptr noundef %34, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i44)
  %cmp3.i.i45 = icmp slt i32 %call2.i.i44, 0
  br i1 %cmp3.i.i45, label %do.end.i.i48, label %if.end.i.i46.reg_w.exit49_crit_edge

if.end.i.i46.reg_w.exit49_crit_edge:              ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit49

do.end.i.i48:                                     ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i44) #10
  %35 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call2.i.i44, ptr %usb_err.i.i, align 8
  br label %reg_w.exit49

reg_w.exit49:                                     ; preds = %do.end.i.i48, %if.end.i.i46.reg_w.exit49_crit_edge, %do.end3.i39.reg_w.exit49_crit_edge
  %call2 = tail call fastcc i32 @sccb_check_status(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end6, label %reg_w.exit49.if.end9_crit_edge

reg_w.exit49.if.end9_crit_edge:                   ; preds = %reg_w.exit49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end6:                                          ; preds = %reg_w.exit49
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %reg_w.exit49.if.end9_crit_edge
  %36 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i50 = icmp slt i32 %37, 0
  br i1 %cmp.i50, label %if.end9.reg_r.exit_crit_edge, label %if.end.i

if.end9.reg_r.exit_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

if.end.i:                                         ; preds = %if.end9
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i = shl i32 %41, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %42 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_buf.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or1.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 244, ptr noundef %43, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %44 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp3.i = icmp sgt i32 %44, 5
  br i1 %cmp3.i, label %do.end.i52, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

do.end.i52:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i51 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb_buf.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv7.i = zext i8 %48 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i51, i32 noundef 244, i32 noundef %conv7.i) #10
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i52, %if.end.i.do.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp12.i = icmp slt i32 %call2.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.end21.i

do.end17.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call2.i) #10
  %49 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call2.i, ptr %usb_err.i.i, align 8
  br label %reg_r.exit

if.end21.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %if.end21.i, %do.end17.i, %if.end9.reg_r.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %do.end17.i ], [ %53, %if.end21.i ], [ 0, %if.end9.reg_r.exit_crit_edge ]
  ret i8 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

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
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %reg_w.exit.while.body_crit_edge, %while.body.lr.ph
  %dec7 = phi i32 [ %dec4, %while.body.lr.ph ], [ %dec, %reg_w.exit.while.body_crit_edge ]
  %data.addr.06 = phi ptr [ %data, %while.body.lr.ph ], [ %incdec.ptr, %reg_w.exit.while.body_crit_edge ]
  %0 = ptrtoint ptr %data.addr.06 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.06, align 1
  %conv = zext i8 %1 to i16
  %arrayidx1 = getelementptr [2 x i8], ptr %data.addr.06, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  br i1 %cmp.i, label %do.end.i, label %while.body.do.end3.i_crit_edge

while.body.do.end3.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %1 to i32
  %conv2.i = zext i8 %3 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv2.i) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %while.body.do.end3.i_crit_edge
  %5 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp slt i32 %6, 0
  br i1 %cmp.i.i, label %do.end3.i.reg_w.exit_crit_edge, label %if.end.i.i

do.end3.i.reg_w.exit_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i.i:                                       ; preds = %do.end3.i
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %9 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %3, ptr %10, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %14 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit_crit_edge

if.end.i.i.reg_w.exit_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i) #10
  %15 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit_crit_edge, %do.end3.i.reg_w.exit_crit_edge
  %incdec.ptr = getelementptr [2 x i8], ptr %data.addr.06, i32 1
  %dec = add i32 %dec7, -1
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %reg_w.exit.while.body_crit_edge, label %reg_w.exit.while.end_crit_edge

reg_w.exit.while.end_crit_edge:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

reg_w.exit.while.body_crit_edge:                  ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %reg_w.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_led(ptr noundef %gspca_dev, i32 noundef %status) unnamed_addr #2 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %status) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %1 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp slt i32 %2, 0
  br i1 %cmp.i, label %do.end3.reg_r.exit_crit_edge, label %if.end.i

do.end3.reg_r.exit_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

if.end.i:                                         ; preds = %do.end3
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or1.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %8, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp3.i = icmp sgt i32 %9, 5
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv7.i = zext i8 %13 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 33, i32 noundef %conv7.i) #10
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %if.end.i.do.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp12.i = icmp slt i32 %call2.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.end21.i

do.end17.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call2.i) #10
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_r.exit

if.end21.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %phi.bo = or i8 %18, -128
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %if.end21.i, %do.end17.i, %do.end3.reg_r.exit_crit_edge
  %retval.0.i = phi i8 [ -128, %do.end17.i ], [ %phi.bo, %if.end21.i ], [ -128, %do.end3.reg_r.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp.i35 = icmp sgt i32 %19, 6
  br i1 %cmp.i35, label %do.end.i37, label %reg_r.exit.do.end3.i_crit_edge

reg_r.exit.do.end3.i_crit_edge:                   ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i37:                                       ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name.i36 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i = zext i8 %retval.0.i to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i36, i32 noundef 33, i32 noundef %conv2.i) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i37, %reg_r.exit.do.end3.i_crit_edge
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp slt i32 %21, 0
  br i1 %cmp.i.i, label %do.end3.i.reg_r.exit57_crit_edge, label %if.end.i.i

do.end3.i.reg_r.exit57_crit_edge:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit57

if.end.i.i:                                       ; preds = %do.end3.i
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %24 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %retval.0.i, ptr %25, align 1
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %23, align 8
  %shl.i.i.i = shl i32 %28, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %29 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %29, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %reg_w.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i) #10
  %30 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call2.i.i, ptr %usb_err.i, align 8
  br label %reg_r.exit57

reg_w.exit:                                       ; preds = %if.end.i.i
  %31 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i39 = icmp slt i32 %.pr, 0
  br i1 %cmp.i39, label %reg_w.exit.reg_r.exit57_crit_edge, label %if.end.i46

reg_w.exit.reg_r.exit57_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit57

if.end.i46:                                       ; preds = %reg_w.exit
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i41 = shl i32 %35, 8
  %or1.i42 = or i32 %shl.i.i41, -2147483520
  %36 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i44 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or1.i42, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef %37, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp3.i45 = icmp sgt i32 %38, 5
  br i1 %cmp3.i45, label %do.end.i50, label %if.end.i46.do.end11.i52_crit_edge

if.end.i46.do.end11.i52_crit_edge:                ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i52

do.end.i50:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  %name.i47 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_buf.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv7.i48 = zext i8 %42 to i32
  %call8.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i47, i32 noundef 35, i32 noundef %conv7.i48) #10
  br label %do.end11.i52

do.end11.i52:                                     ; preds = %do.end.i50, %if.end.i46.do.end11.i52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i44)
  %cmp12.i51 = icmp slt i32 %call2.i44, 0
  br i1 %cmp12.i51, label %do.end17.i54, label %if.end21.i55

do.end17.i54:                                     ; preds = %do.end11.i52
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call2.i44) #10
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call2.i44, ptr %usb_err.i, align 8
  br label %reg_r.exit57

if.end21.i55:                                     ; preds = %do.end11.i52
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %phi.bo115 = and i8 %47, 127
  br label %reg_r.exit57

reg_r.exit57:                                     ; preds = %if.end21.i55, %do.end17.i54, %reg_w.exit.reg_r.exit57_crit_edge, %do.end.i.i, %do.end3.i.reg_r.exit57_crit_edge
  %retval.0.i56 = phi i8 [ 0, %do.end17.i54 ], [ %phi.bo115, %if.end21.i55 ], [ 0, %reg_w.exit.reg_r.exit57_crit_edge ], [ 0, %do.end3.i.reg_r.exit57_crit_edge ], [ 0, %do.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  %masksel = select i1 %tobool.not, i8 0, i8 -128
  %data.0 = or i8 %retval.0.i56, %masksel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %48 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %48)
  %cmp.i58 = icmp sgt i32 %48, 6
  br i1 %cmp.i58, label %do.end.i62, label %reg_r.exit57.do.end3.i65_crit_edge

reg_r.exit57.do.end3.i65_crit_edge:               ; preds = %reg_r.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i65

do.end.i62:                                       ; preds = %reg_r.exit57
  call void @__sanitizer_cov_trace_pc() #9
  %name.i59 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i60 = zext i8 %data.0 to i32
  %call.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i59, i32 noundef 35, i32 noundef %conv2.i60) #10
  br label %do.end3.i65

do.end3.i65:                                      ; preds = %do.end.i62, %reg_r.exit57.do.end3.i65_crit_edge
  %49 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i64 = icmp slt i32 %50, 0
  br i1 %cmp.i.i64, label %do.end3.i65.reg_w.exit75_crit_edge, label %if.end.i.i72

do.end3.i65.reg_w.exit75_crit_edge:               ; preds = %do.end3.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit75

if.end.i.i72:                                     ; preds = %do.end3.i65
  %dev.i.i66 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %51 = ptrtoint ptr %dev.i.i66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i66, align 4
  %usb_buf.i.i67 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %53 = ptrtoint ptr %usb_buf.i.i67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i.i67, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %data.0, ptr %54, align 1
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %52, align 8
  %shl.i.i.i68 = shl i32 %57, 8
  %or.i.i69 = or i32 %shl.i.i.i68, -2147483648
  %58 = load ptr, ptr %usb_buf.i.i67, align 4
  %call2.i.i70 = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i.i69, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef %58, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i70)
  %cmp3.i.i71 = icmp slt i32 %call2.i.i70, 0
  br i1 %cmp3.i.i71, label %do.end.i.i74, label %if.end.i.i72.reg_w.exit75_crit_edge

if.end.i.i72.reg_w.exit75_crit_edge:              ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit75

do.end.i.i74:                                     ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i70) #10
  %59 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call2.i.i70, ptr %usb_err.i, align 8
  br label %reg_w.exit75

reg_w.exit75:                                     ; preds = %do.end.i.i74, %if.end.i.i72.reg_w.exit75_crit_edge, %do.end3.i65.reg_w.exit75_crit_edge
  br i1 %tobool.not, label %if.then15, label %reg_w.exit75.if.end20_crit_edge

reg_w.exit75.if.end20_crit_edge:                  ; preds = %reg_w.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %reg_w.exit75
  %60 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i77 = icmp slt i32 %61, 0
  br i1 %cmp.i77, label %if.then15.reg_r.exit95_crit_edge, label %if.end.i84

if.then15.reg_r.exit95_crit_edge:                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit95

if.end.i84:                                       ; preds = %if.then15
  %dev.i78 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %62 = ptrtoint ptr %dev.i78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i78, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i79 = shl i32 %65, 8
  %or1.i80 = or i32 %shl.i.i79, -2147483520
  %usb_buf.i81 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %66 = ptrtoint ptr %usb_buf.i81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb_buf.i81, align 4
  %call2.i82 = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or1.i80, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %67, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %68 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %68)
  %cmp3.i83 = icmp sgt i32 %68, 5
  br i1 %cmp3.i83, label %do.end.i88, label %if.end.i84.do.end11.i90_crit_edge

if.end.i84.do.end11.i90_crit_edge:                ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i90

do.end.i88:                                       ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #9
  %name.i85 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %usb_buf.i81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_buf.i81, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv7.i86 = zext i8 %72 to i32
  %call8.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i85, i32 noundef 33, i32 noundef %conv7.i86) #10
  br label %do.end11.i90

do.end11.i90:                                     ; preds = %do.end.i88, %if.end.i84.do.end11.i90_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i82)
  %cmp12.i89 = icmp slt i32 %call2.i82, 0
  br i1 %cmp12.i89, label %do.end17.i92, label %if.end21.i93

do.end17.i92:                                     ; preds = %do.end11.i90
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call2.i82) #10
  %73 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call2.i82, ptr %usb_err.i, align 8
  br label %reg_r.exit95

if.end21.i93:                                     ; preds = %do.end11.i90
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %usb_buf.i81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %usb_buf.i81, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 1
  %phi.bo116 = and i8 %77, 127
  br label %reg_r.exit95

reg_r.exit95:                                     ; preds = %if.end21.i93, %do.end17.i92, %if.then15.reg_r.exit95_crit_edge
  %retval.0.i94 = phi i8 [ 0, %do.end17.i92 ], [ %phi.bo116, %if.end21.i93 ], [ 0, %if.then15.reg_r.exit95_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %78 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %78)
  %cmp.i96 = icmp sgt i32 %78, 6
  br i1 %cmp.i96, label %do.end.i100, label %reg_r.exit95.do.end3.i103_crit_edge

reg_r.exit95.do.end3.i103_crit_edge:              ; preds = %reg_r.exit95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i103

do.end.i100:                                      ; preds = %reg_r.exit95
  call void @__sanitizer_cov_trace_pc() #9
  %name.i97 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i98 = zext i8 %retval.0.i94 to i32
  %call.i99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i97, i32 noundef 33, i32 noundef %conv2.i98) #10
  br label %do.end3.i103

do.end3.i103:                                     ; preds = %do.end.i100, %reg_r.exit95.do.end3.i103_crit_edge
  %79 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i.i102 = icmp slt i32 %80, 0
  br i1 %cmp.i.i102, label %do.end3.i103.if.end20_crit_edge, label %if.end.i.i110

do.end3.i103.if.end20_crit_edge:                  ; preds = %do.end3.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.i.i110:                                    ; preds = %do.end3.i103
  %dev.i.i104 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %81 = ptrtoint ptr %dev.i.i104 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i104, align 4
  %usb_buf.i.i105 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %83 = ptrtoint ptr %usb_buf.i.i105 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %usb_buf.i.i105, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %retval.0.i94, ptr %84, align 1
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %82, align 8
  %shl.i.i.i106 = shl i32 %87, 8
  %or.i.i107 = or i32 %shl.i.i.i106, -2147483648
  %88 = load ptr, ptr %usb_buf.i.i105, align 4
  %call2.i.i108 = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or.i.i107, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %88, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i108)
  %cmp3.i.i109 = icmp slt i32 %call2.i.i108, 0
  br i1 %cmp3.i.i109, label %do.end.i.i112, label %if.end.i.i110.if.end20_crit_edge

if.end.i.i110.if.end20_crit_edge:                 ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end.i.i112:                                    ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i108) #10
  %89 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call2.i.i108, ptr %usb_err.i, align 8
  br label %if.end20

if.end20:                                         ; preds = %do.end.i.i112, %if.end.i.i110.if.end20_crit_edge, %do.end3.i103.if.end20_crit_edge, %reg_w.exit75.if.end20_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sccb_check_status(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 20) #7
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %for.body.cleanup.loopexit_crit_edge, label %if.end.i

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

if.end.i:                                         ; preds = %for.body
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or1.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 246, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp3.i = icmp sgt i32 %8, 5
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv7.i = zext i8 %12 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 246, i32 noundef %conv7.i) #10
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %if.end.i.do.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp12.i = icmp slt i32 %call2.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %reg_r.exit

do.end17.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call2.i) #10
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %cleanup

reg_r.exit:                                       ; preds = %do.end11.i
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv = zext i8 %17 to i32
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %17, label %do.body [
    i8 0, label %reg_r.exit.cleanup.loopexit_crit_edge
    i8 4, label %reg_r.exit.cleanup_crit_edge
    i8 3, label %reg_r.exit.for.inc_crit_edge
  ]

reg_r.exit.for.inc_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

reg_r.exit.cleanup.loopexit_crit_edge:            ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

do.body:                                          ; preds = %reg_r.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp2 = icmp sgt i32 %19, 6
  br i1 %cmp2, label %do.end, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %i.018, 1
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef %conv, i32 noundef %add) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge, %reg_r.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.inc.cleanup.loopexit_crit_edge, %reg_r.exit.cleanup.loopexit_crit_edge, %for.body.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i32 [ 1, %for.body.cleanup.loopexit_crit_edge ], [ 0, %for.inc.cleanup.loopexit_crit_edge ], [ 1, %reg_r.exit.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %reg_r.exit.cleanup_crit_edge, %do.end17.i
  %retval.0 = phi i32 [ 1, %do.end17.i ], [ %retval.0.ph, %cleanup.loopexit ], [ 0, %reg_r.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
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
  %4 = load i8, ptr %streaming, align 2, !range !184
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb3
    i32 9963800, label %sw.bb5
    i32 9963803, label %sw.bb7
    i32 9963794, label %sw.bb9
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %sensor.i = getelementptr i8, ptr %1, i32 1029
  %10 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.i = icmp eq i8 %11, 2
  br i1 %cmp.i, label %if.then.i, label %if.else20.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sext.i = shl i32 %9, 24
  %12 = trunc i32 %9 to i8
  %conv5.i = add i8 %12, 118
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 36, i8 noundef zeroext %conv5.i) #7
  %conv9.i = add i8 %12, 106
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 37, i8 noundef zeroext %conv9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -671088640, i32 %sext.i)
  %cmp11.i = icmp slt i32 %sext.i, -671088640
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %sext.i)
  %cmp15.i = icmp slt i32 %sext.i, 335544320
  %..i = select i1 %cmp15.i, i8 -108, i8 -26
  %val.0.i = select i1 %cmp11.i, i8 113, i8 %..i
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 38, i8 noundef zeroext %val.0.i) #7
  br label %sw.epilog

if.else20.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv22.i = and i32 %9, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22.i)
  %cmp23.i = icmp eq i32 %conv22.i, 0
  %sub.i = sub i32 15, %9
  %conv31.i = add i32 %9, 8
  %val.1.i = select i1 %cmp23.i, i32 %sub.i, i32 %conv31.i
  %val.1.tr.i = trunc i32 %val.1.i to i8
  %13 = shl i8 %val.1.tr.i, 4
  %conv34.i = or i8 %13, 15
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 85, i8 noundef zeroext %conv34.i) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val2, align 4
  %val.tr.i = trunc i32 %15 to i8
  %conv.i = shl i8 %val.tr.i, 4
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 86, i8 noundef zeroext %conv.i) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val4, align 4
  %arrayidx.i = getelementptr [5 x [2 x i8]], ptr @setsatur.matrix, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr [5 x [2 x i8]], ptr @setsatur.matrix, i32 0, i32 %17, i32 1
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.i, align 1
  %add.i = add i8 %21, %19
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 79, i8 noundef zeroext %add.i) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 80, i8 noundef zeroext %add.i) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 81, i8 noundef zeroext 0) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 82, i8 noundef zeroext %19) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 83, i8 noundef zeroext %21) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 84, i8 noundef zeroext %add.i) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 88, i8 noundef zeroext 26) #7
  %call.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %add.ptr, i16 noundef zeroext 65) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 65, i8 noundef zeroext %call.i) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val6, align 4
  %call.i46 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %add.ptr, i16 noundef zeroext 19) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i47 = icmp eq i32 %23, 0
  br i1 %cmp.i47, label %if.then.i48, label %if.end.i

if.then.i48:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %24 = and i8 %call.i46, -33
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %24) #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %25 = or i8 %call.i46, 32
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %25) #7
  %call4.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %add.ptr, i16 noundef zeroext 66) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp5.i = icmp eq i32 %23, 1
  %26 = and i8 %call4.i, -2
  %masksel.i = zext i1 %cmp5.i to i8
  %val.0.i49 = or i8 %26, %masksel.i
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 66, i8 noundef zeroext %val.0.i49) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i50 = icmp slt i32 %28, 0
  br i1 %cmp.i50, label %if.then.i52, label %if.end.i54

if.then.i52:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %call.i51 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %add.ptr, i16 noundef zeroext 66) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %29 = or i8 %call.i51, 64
  br label %setsharpness.exit

if.end.i54:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2.not.i = icmp eq i32 %28, 0
  %sub.i53 = add nsw i32 %28, -1
  %shl.i = shl nuw i32 1, %sub.i53
  %phi.cast.i = trunc i32 %shl.i to i8
  %val.addr.0.i = select i1 %cmp2.not.i, i8 0, i8 %phi.cast.i
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 63, i8 noundef zeroext %val.addr.0.i) #7
  %call7.i = tail call fastcc zeroext i8 @sccb_read(ptr noundef %add.ptr, i16 noundef zeroext 66) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %30 = and i8 %call7.i, -65
  br label %setsharpness.exit

setsharpness.exit:                                ; preds = %if.end.i54, %if.then.i52
  %.sink.i = phi i8 [ %30, %if.end.i54 ], [ %29, %if.then.i52 ]
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 66, i8 noundef zeroext %.sink.i) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %31 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %is_new, align 4
  %32 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool10.not = icmp eq i32 %32, 0
  br i1 %tobool10.not, label %sw.bb9.if.end13_crit_edge, label %if.then11

sw.bb9.if.end13_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val12, align 4
  %call.i55 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %add.ptr, i16 noundef zeroext 19) #7
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  %35 = and i8 %call.i55, -6
  %masksel.i56 = select i1 %tobool.not.i, i8 0, i8 5
  %val.0.i57 = or i8 %35, %masksel.i56
  tail call fastcc void @sccb_write(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %val.0.i57) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sw.bb9.if.end13_crit_edge
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool15.not = icmp eq i32 %37, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end13.sw.epilog_crit_edge

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end13
  %exposure = getelementptr i8, ptr %1, i32 188
  %38 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %exposure, align 4
  %is_new16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %is_new16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load17 = load i32, ptr %is_new16, align 4
  %41 = and i32 %bf.load17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool20.not = icmp eq i32 %41, 0
  br i1 %tobool20.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then21

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 22
  %42 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val23, align 4
  tail call fastcc void @setexposure(ptr noundef %add.ptr, i32 noundef %43)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %land.lhs.true.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge, %setsharpness.exit, %if.end.i, %if.then.i48, %sw.bb3, %sw.bb1, %if.else20.i, %if.then.i, %if.end.sw.epilog_crit_edge
  %44 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %45, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %exposure) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i8], ptr @setexposure.expo, i32 0, i32 %exposure
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext %1)
  %call = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext 19)
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0)
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %call)
  %call1 = tail call fastcc zeroext i8 @sccb_read(ptr noundef %gspca_dev, i16 noundef zeroext 161)
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -1, i8 noundef zeroext 0)
  %2 = and i8 %call1, -32
  tail call fastcc void @sccb_write(ptr noundef %gspca_dev, i8 noundef zeroext -95, i8 noundef zeroext %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_ov534_9__309_1821_sd_driver_init6, !8, !"__initcall__kmod_gspca_ov534_9__309_1821_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1821, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1810, i32 16}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1809, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1782, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1419, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sd_init._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sd_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1490, i32 3}
!25 = !{ptr @sd_init._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sd_init._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1127, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @reg_w._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @reg_w._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1120, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @reg_w_i._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @reg_w_i._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1180, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sccb_write._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sccb_write._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1186, i32 3}
!44 = !{ptr @sccb_write._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sccb_write._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1170, i32 4}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sccb_check_status._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sccb_check_status._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1143, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @reg_r._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @reg_r._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1146, i32 3}
!58 = !{ptr @reg_r._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @reg_r._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1194, i32 3}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sccb_read._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @sccb_read._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1198, i32 3}
!67 = !{ptr @sccb_read._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sccb_read._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ov965x_mode, !70, !"ov965x_mode", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 53, i32 37}
!71 = !{ptr @bridge_init, !72, !"bridge_init", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 365, i32 17}
!73 = !{ptr @ov965x_init, !74, !"ov965x_init", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 399, i32 17}
!75 = !{ptr @bridge_init_2, !76, !"bridge_init_2", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 581, i32 17}
!77 = !{ptr @ov965x_init_2, !78, !"ov965x_init_2", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 609, i32 17}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1234, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @set_led._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @set_led._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @ov971x_mode, !85, !"ov971x_mode", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 81, i32 37}
!86 = !{ptr @ov971x_init, !87, !"ov971x_init", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 651, i32 17}
!88 = !{ptr @ov562x_mode, !89, !"ov562x_mode", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 89, i32 37}
!90 = !{ptr @ov562x_init, !91, !"ov562x_init", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 988, i32 17}
!92 = !{ptr @ov562x_init_2, !93, !"ov562x_init_2", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1004, i32 17}
!94 = !{ptr @ov361x_mode, !95, !"ov361x_mode", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 107, i32 37}
!96 = !{ptr @sd_init_controls._key, !97, !"_key", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1750, i32 2}
!98 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1775, i32 3}
!101 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sd_init_controls._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @sd_init_controls._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @sd_ctrl_ops, !105, !"sd_ctrl_ops", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1736, i32 35}
!106 = !{ptr @setsatur.matrix, !107, !"matrix", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1344, i32 18}
!108 = !{ptr @setexposure.expo, !109, !"expo", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1309, i32 18}
!110 = !{ptr @ov361x_bridge_start_2048, !111, !"ov361x_bridge_start_2048", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 155, i32 17}
!112 = !{ptr @ov361x_start_2048, !113, !"ov361x_start_2048", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 134, i32 17}
!114 = !{ptr @ov361x_bridge_start_1600, !115, !"ov361x_bridge_start_1600", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 193, i32 17}
!116 = !{ptr @ov361x_start_1600, !117, !"ov361x_start_1600", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 172, i32 17}
!118 = !{ptr @ov361x_bridge_start_1024, !119, !"ov361x_bridge_start_1024", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 231, i32 17}
!120 = !{ptr @ov361x_start_1024, !121, !"ov361x_start_1024", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 210, i32 17}
!122 = !{ptr @ov361x_bridge_start_640, !123, !"ov361x_bridge_start_640", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 270, i32 17}
!124 = !{ptr @ov361x_start_640, !125, !"ov361x_start_640", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 248, i32 17}
!126 = !{ptr @ov361x_bridge_start_320, !127, !"ov361x_bridge_start_320", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 309, i32 17}
!128 = !{ptr @ov361x_start_320, !129, !"ov361x_start_320", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 287, i32 17}
!130 = !{ptr @ov361x_bridge_start_160, !131, !"ov361x_bridge_start_160", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 348, i32 17}
!132 = !{ptr @ov361x_start_160, !133, !"ov361x_start_160", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 326, i32 17}
!134 = !{ptr @ov965x_start_1_vga, !135, !"ov965x_start_1_vga", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 709, i32 17}
!136 = !{ptr @bridge_start_qvga, !137, !"bridge_start_qvga", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 800, i32 17}
!138 = !{ptr @ov965x_start_2_qvga, !139, !"ov965x_start_2_qvga", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 926, i32 17}
!140 = !{ptr @bridge_start_vga, !141, !"bridge_start_vga", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 828, i32 17}
!142 = !{ptr @ov965x_start_2_vga, !143, !"ov965x_start_2_vga", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 944, i32 17}
!144 = !{ptr @ov965x_start_1_svga, !145, !"ov965x_start_1_svga", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 732, i32 17}
!146 = !{ptr @bridge_start_svga, !147, !"bridge_start_svga", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 855, i32 17}
!148 = !{ptr @ov965x_start_2_svga, !149, !"ov965x_start_2_svga", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 960, i32 17}
!150 = !{ptr @ov965x_start_1_xga, !151, !"ov965x_start_1_xga", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 754, i32 17}
!152 = !{ptr @bridge_start_xga, !153, !"bridge_start_xga", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 882, i32 17}
!154 = !{ptr @ov965x_start_1_sxga, !155, !"ov965x_start_1_sxga", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 777, i32 17}
!156 = !{ptr @bridge_start_sxga, !157, !"bridge_start_sxga", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 909, i32 17}
!158 = !{ptr @ov965x_start_2_sxga, !159, !"ov965x_start_2_sxga", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 974, i32 17}
!160 = !{ptr @.str.34, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1647, i32 4}
!162 = !{ptr @.str.35, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @sd_pkt_scan._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @sd_pkt_scan._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.37, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1653, i32 4}
!167 = !{ptr @sd_pkt_scan._entry.36, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @sd_pkt_scan._entry_ptr.38, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.40, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1659, i32 4}
!171 = !{ptr @sd_pkt_scan._entry.39, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @sd_pkt_scan._entry_ptr.41, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @device_table, !174, !"device_table", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/gspca/ov534_9.c", i32 1793, i32 35}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i8 0, i8 2}
