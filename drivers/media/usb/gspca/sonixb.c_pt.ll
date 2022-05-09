; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/sonixb.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/sonixb.c"
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
%struct.sensor_data = type { ptr, ptr, i32, i32, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.103, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
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
%struct.anon.103 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, ptr, ptr, %struct.atomic_t, i32, i32, i32, [12 x i8], i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [66 x i8] c"gspca_sonixb.author=Jean-Fran\C3\A7ois Moine <http://moinejf.free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [57 x i8] c"gspca_sonixb.description=GSPCA/SN9C102 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_sonixb.file=drivers/media/usb/gspca/gspca_sonixb\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_sonixb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_sonixb__307_1469_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_sonixb\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sonixb\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [24 x %struct.usb_device_id], [128 x i8] } { [24 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3141, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1536 }, %struct.usb_device_id { i16 3, i16 3141, i16 24581, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1536 }, %struct.usb_device_id { i16 3, i16 3141, i16 24583, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1792 }, %struct.usb_device_id { i16 3, i16 3141, i16 24585, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 3141, i16 24589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 3141, i16 24593, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 3141, i16 24601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 3141, i16 24612, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 3141, i16 24613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2048 }, %struct.usb_device_id { i16 3, i16 3141, i16 24615, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 3141, i16 24616, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1280 }, %struct.usb_device_id { i16 3, i16 3141, i16 24617, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 3141, i16 24618, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3141, i16 24620, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 3141, i16 24621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 3141, i16 24622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 3141, i16 24707, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3141, i16 24716, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 257 }, %struct.usb_device_id { i16 3, i16 3141, i16 24719, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 769 }, %struct.usb_device_id { i16 3, i16 3141, i16 24744, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1025 }, %struct.usb_device_id { i16 3, i16 3141, i16 24746, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2049 }, %struct.usb_device_id { i16 3, i16 3141, i16 24751, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1281 }, %struct.usb_device_id { i16 3, i16 3141, i16 24752, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 769 }, %struct.usb_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @do_autogain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sensor_data = internal constant { [9 x %struct.sensor_data], [44 x i8] } { [9 x %struct.sensor_data] [%struct.sensor_data { ptr @initHv7131d, ptr @hv7131d_sensor_init, i32 40, i32 0, i8 0 }, %struct.sensor_data { ptr @initHv7131r, ptr @hv7131r_sensor_init, i32 40, i32 0, i8 0 }, %struct.sensor_data { ptr @initOv6650, ptr @ov6650_sensor_init, i32 72, i32 1, i8 96 }, %struct.sensor_data { ptr @initOv7630, ptr @ov7630_sensor_init, i32 136, i32 0, i8 33 }, %struct.sensor_data { ptr @initPas106, ptr @pas106_sensor_init, i32 160, i32 1, i8 0 }, %struct.sensor_data { ptr @initPas202, ptr @pas202_sensor_init, i32 80, i32 0, i8 0 }, %struct.sensor_data { ptr @initTas5110c, ptr @tas5110c_sensor_init, i32 16, i32 1, i8 0 }, %struct.sensor_data { ptr @initTas5110d, ptr @tas5110d_sensor_init, i32 8, i32 1, i8 0 }, %struct.sensor_data { ptr @initTas5130, ptr @tas5130_sensor_init, i32 16, i32 0, i8 0 }], [44 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 825770306, i32 1, i32 160, i32 19200, i32 8, i32 18, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 160, i32 120, i32 808532307, i32 1, i32 160, i32 24000, i32 8, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 808532307, i32 1, i32 320, i32 96000, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 808532307, i32 1, i32 640, i32 384000, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sif_mode = internal constant { [6 x %struct.v4l2_pix_format], [64 x i8] } { [6 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 825770306, i32 1, i32 160, i32 19200, i32 8, i32 49, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 160, i32 120, i32 808532307, i32 1, i32 160, i32 24000, i32 8, i32 33, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 825770306, i32 1, i32 176, i32 25344, i32 8, i32 17, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 808532307, i32 1, i32 176, i32 31680, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 808532307, i32 1, i32 320, i32 96000, i32 8, i32 32, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 808532307, i32 1, i32 352, i32 126720, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error reading register %02x: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/sonixb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@initHv7131d = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\04\03\00\04\00\00\00\80\11\00\00\00\00\00\00\00\00\02\02\00(\1E`\8EB", [39 x i8] zeroinitializer }, align 32
@hv7131d_sensor_init = internal constant { [5 x [8 x i8]], [56 x i8] } { [5 x [8 x i8]] [[8 x i8] c"\A0\11\01\04\00\00\00\17", [8 x i8] c"\A0\11\02\00\00\00\00\17", [8 x i8] c"\A0\11(\00\00\00\00\17", [8 x i8] c"\A0\1100\00\00\00\17", [8 x i8] c"\A0\114\02\00\00\00\17"], [56 x i8] zeroinitializer }, align 32
@initHv7131r = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Fw\00\04\00\00\00\80\11\00\00\00\00\00\00\00\00\02\01\00(\1E`\8A ", [39 x i8] zeroinitializer }, align 32
@hv7131r_sensor_init = internal constant { [5 x [8 x i8]], [56 x i8] } { [5 x [8 x i8]] [[8 x i8] c"\C0\1118*.\00\10", [8 x i8] c"\A0\11\01\08*.\00\10", [8 x i8] c"\B0\11 \00\D0.\00\10", [8 x i8] c"\C0\11%\03\0E(\00\16", [8 x i8] c"\A0\110\10\0E(\00\15"], [56 x i8] zeroinitializer }, align 32
@initOv6650 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DD\00\00\00\00\00\80`\00\00\00\00\00\00\00\00\01\01\0A\16\12h\8B\10", [39 x i8] zeroinitializer }, align 32
@ov6650_sensor_init = internal constant { [9 x [8 x i8]], [56 x i8] } { [9 x [8 x i8]] [[8 x i8] c"\A0`\12\80\00\00\00\10", [8 x i8] c"\D0`\11\C0\1B\18\C1\10", [8 x i8] c"\B0`\15\00\02\18\C1\10", [8 x i8] c"\D0`&\01\14\D8\A4\10", [8 x i8] c"\D0`&\01\14\D8\A4\10", [8 x i8] c"\A0`0=\0A\D8\A4\10", [8 x i8] c"\A0`a\08\00\00\00\10", [8 x i8] c"\A0`h\04h\D8\A4\10", [8 x i8] c"\D0`\17$\D6\04\94\10"], [56 x i8] zeroinitializer }, align 32
@initOv7630 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\04D\00\00\00\00\00\80!\00\00\00\00\00\00\00\00\01\01\0A(\1Eh\8F ", [39 x i8] zeroinitializer }, align 32
@ov7630_sensor_init = internal constant { [17 x [8 x i8]], [56 x i8] } { [17 x [8 x i8]] [[8 x i8] c"\A0!\12\80\00\00\00\10", [8 x i8] c"\B0!\01w:\00\00\10", [8 x i8] c"\D0!\12\\\00\804\10", [8 x i8] c"\A0!\1B\04\00\804\10", [8 x i8] c"\A0! D\00\804\10", [8 x i8] c"\A0!#\EE\00\804\10", [8 x i8] c"\D0!&\A0\9A\A00\10", [8 x i8] c"\B0!*\80\00\A00\10", [8 x i8] c"\B0!/=$\A00\10", [8 x i8] c"\A0!2\86$\A00\10", [8 x i8] c"\B0!`\A9J\A00\10", [8 x i8] c"\A0!e\00B\A00\10", [8 x i8] c"\A0!i8B\A00\10", [8 x i8] c"\C0!o\88\0B\000\10", [8 x i8] c"\C0!t!\8E\000\10", [8 x i8] c"\A0!}\F7\8E\000\10", [8 x i8] c"\D0!\17\1C\BD\06\F6\10"], [56 x i8] zeroinitializer }, align 32
@initPas106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\04\03\00\00\00\00\00\81@\00\00\00\00\00\00\00\00\04\01\00\16\12$\C9 ", [39 x i8] zeroinitializer }, align 32
@pas106_sensor_init = internal constant { [20 x [8 x i8]], [32 x i8] } { [20 x [8 x i8]] [[8 x i8] c"\A1@\02\04\00\00\00\14", [8 x i8] c"\A1@\03\13\00\00\00\14", [8 x i8] c"\A1@\04\06\00\00\00\14", [8 x i8] c"\A1@\05e\00\00\00\14", [8 x i8] c"\A1@\06\CD\00\00\00\14", [8 x i8] c"\A1@\07\C1\00\00\00\14", [8 x i8] c"\A1@\08\06\00\00\00\14", [8 x i8] c"\A1@\08\06\00\00\00\14", [8 x i8] c"\A1@\09\05\00\00\00\14", [8 x i8] c"\A1@\0A\04\00\00\00\14", [8 x i8] c"\A1@\0B\04\00\00\00\14", [8 x i8] c"\A1@\0C\05\00\00\00\14", [8 x i8] c"\A1@\0D\00\00\00\00\14", [8 x i8] c"\A1@\0E\0E\00\00\00\14", [8 x i8] c"\A1@\0F\00\00\00\00\14", [8 x i8] c"\A1@\10\06\00\00\00\14", [8 x i8] c"\A1@\11\06\00\00\00\14", [8 x i8] c"\A1@\12\06\00\00\00\14", [8 x i8] c"\A1@\14\02\00\00\00\14", [8 x i8] c"\A1@\13\01\00\00\00\14"], [32 x i8] zeroinitializer }, align 32
@initPas202 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DD!0\00\00\00\80@\00\00\00\00\00\00\00\00\06\03\0A(\1E \89 ", [39 x i8] zeroinitializer }, align 32
@pas202_sensor_init = internal constant { [10 x [8 x i8]], [48 x i8] } { [10 x [8 x i8]] [[8 x i8] c"\A0@\02\04\00\00\00\10", [8 x i8] c"\D0@\04\074\00\09\10", [8 x i8] c"\D0@\08\01\00\00\01\10", [8 x i8] c"\D0@\0C\00\0C\012\10", [8 x i8] c"\D0@\10\00\01\00c\10", [8 x i8] c"\A0@\15p\01\00c\10", [8 x i8] c"\A0@\18\00\01\00c\10", [8 x i8] c"\A0@\11\01\01\00c\10", [8 x i8] c"\A0@\03V\01\00c\10", [8 x i8] c"\A0@\11\01\01\00c\10"], [48 x i8] zeroinitializer }, align 32
@initTas5110c = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"D\03\00\00\00\00\00 \11\00\00\00\00\00\00\00\00E\09\0A\16\12`\86+", [39 x i8] zeroinitializer }, align 32
@tas5110c_sensor_init = internal constant { [2 x [8 x i8]], [16 x i8] } { [2 x [8 x i8]] [[8 x i8] c"0\11\00\00\0C\00\00\10", [8 x i8] c"0\11\02 \A9\00\00\10"], [16 x i8] zeroinitializer }, align 32
@initTas5110d = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"D\03\00\00\00\00\00 \11\00\00\00\00\00\00\00\00A\09\0A\16\12`\86+", [39 x i8] zeroinitializer }, align 32
@tas5110d_sensor_init = internal constant { [1 x [8 x i8]], [24 x i8] } { [1 x [8 x i8]] [[8 x i8] c"\A0a\9A\CA\00\00\00\17"], [24 x i8] zeroinitializer }, align 32
@initTas5130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\04\03\00\00\00\00\00 \11\00\00\00\00\00\00\00\00h\0C\0A(\1E`\C7c", [39 x i8] zeroinitializer }, align 32
@tas5130_sensor_init = internal constant { [2 x [8 x i8]], [16 x i8] } { [2 x [8 x i8]] [[8 x i8] c"0\11\00@\01\00\00\10", [8 x i8] c"0\11\02 p\00\00\10"], [16 x i8] zeroinitializer }, align 32
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 486, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error writing register %02x: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sonixb:1004:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Could not initialize controls\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@i2c_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 508, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c error writing %8ph\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"i2c_w\00", [26 x i8] zeroinitializer }, align 32
@i2c_w._entry_ptr = internal global ptr @i2c_w._entry, section ".printk_index", align 4
@i2c_w._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c write timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_w._entry_ptr.16 = internal global ptr @i2c_w._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 9963776, i64 9963794, i64 9963800]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1457, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1469, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1458, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1417, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1398, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"sensor_data\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 422, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 119, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"sif_mode\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 141, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 453, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"initHv7131d\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 174, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"hv7131d_sensor_init\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 180, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"initHv7131r\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 188, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"hv7131r_sensor_init\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 194, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"initOv6650\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 201, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"ov6650_sensor_init\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 207, i32 19 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"initOv7630\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 239, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"ov7630_sensor_init\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 246, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"initPas106\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 268, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"pas106_sensor_init\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 299, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"initPas202\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 341, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"pas202_sensor_init\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 365, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"initTas5110c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 381, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"tas5110c_sensor_init\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 395, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"initTas5110d\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 388, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"tas5110d_sensor_init\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 404, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"initTas5130\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 408, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"tas5130_sensor_init\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 414, i32 19 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 485, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1004, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 993, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1077, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 507, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [36 x i8] c"../drivers/media/usb/gspca/sonixb.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 515, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_sonixb__307_1469_sd_driver_init6, ptr @i2c_w._entry, ptr @i2c_w._entry.14, ptr @i2c_w._entry_ptr, ptr @i2c_w._entry_ptr.16, ptr @reg_r._entry, ptr @reg_r._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @sensor_data, ptr @vga_mode, ptr @sif_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @initHv7131d, ptr @hv7131d_sensor_init, ptr @initHv7131r, ptr @hv7131r_sensor_init, ptr @initOv6650, ptr @ov6650_sensor_init, ptr @initOv7630, ptr @ov7630_sensor_init, ptr @initPas106, ptr @pas106_sensor_init, ptr @initPas202, ptr @pas202_sensor_init, ptr @initTas5110c, ptr @tas5110c_sensor_init, ptr @initTas5110d, ptr @tas5110d_sensor_init, ptr @initTas5130, ptr @tas5130_sensor_init, ptr @.str.7, ptr @.str.8, ptr @sd_init_controls._key, ptr @.str.9, ptr @sd_ctrl_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_data to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_mode to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initHv7131d to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131d_sensor_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initHv7131r to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_sensor_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initOv6650 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6650_sensor_init to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initOv7630 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7630_sensor_init to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initPas106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas106_sensor_init to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initPas202 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pas202_sensor_init to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initTas5110c to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5110c_sensor_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initTas5110d to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5110d_sensor_init to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initTas5130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5130_sensor_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_w._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2656, ptr noundef null) #6
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
define internal i32 @sd_config(ptr nocapture noundef %gspca_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_r.exit_crit_edge, label %if.end.i

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_r.exit_crit_edge

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %8 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v4l2_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %call3.i) #9
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge, %entry.reg_r.exit_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %14 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %17)
  %cmp.not = icmp eq i8 %17, 16
  br i1 %cmp.not, label %if.end, label %reg_r.exit.cleanup_crit_edge

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %18 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_info, align 4
  %shr = lshr i32 %19, 8
  %conv2 = trunc i32 %shr to i8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %20 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv2, ptr %sensor, align 1
  %21 = load i32, ptr %driver_info, align 4
  %conv4 = trunc i32 %21 to i8
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %22 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv4, ptr %bridge, align 2
  %cam5 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %idxprom = and i32 %shr, 255
  %23 = lshr i32 299, %idxprom
  %24 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.not = icmp eq i32 %24, 0
  %spec.select = select i1 %tobool.not.not, ptr @sif_mode, ptr @vga_mode
  %spec.select24 = select i1 %tobool.not.not, i8 6, i8 4
  %25 = ptrtoint ptr %cam5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %spec.select, ptr %cam5, align 4
  %26 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select24, ptr %26, align 4
  %npkt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 8
  %28 = ptrtoint ptr %npkt to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 36, ptr %npkt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %reg_r.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %reg_r.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit_crit_edge, label %if.end.i

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

if.end.i:                                         ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_w.exit_crit_edge

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %10 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v4l2_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %call3.i) #9
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_err.i, align 8
  ret i32 %14
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 5, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.9) #6
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sensor, align 1
  %.off = add i8 %2, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off)
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #6
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %3 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call17, ptr %brightness, align 8
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr = load i8, ptr %sensor, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = phi i8 [ %2, %entry.if.end_crit_edge ], [ %.pr, %if.then ]
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default [
    i8 2, label %if.end.sw.bb_crit_edge
    i8 4, label %if.end.sw.bb_crit_edge123
    i8 5, label %if.end.sw.bb_crit_edge124
    i8 3, label %sw.bb21
    i8 0, label %sw.bb24
    i8 6, label %if.end.sw.bb27_crit_edge
    i8 7, label %if.end.sw.bb27_crit_edge125
    i8 8, label %if.end.sw.bb27_crit_edge126
  ]

if.end.sw.bb27_crit_edge126:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27

if.end.sw.bb27_crit_edge125:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27

if.end.sw.bb27_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb27

if.end.sw.bb_crit_edge124:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge123:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge123, %if.end.sw.bb_crit_edge124
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 15) #6
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 47, i64 noundef 1, i64 noundef 31) #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 31) #6
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end.sw.bb27_crit_edge, %if.end.sw.bb27_crit_edge125, %if.end.sw.bb27_crit_edge126
  %call28 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp31 = icmp eq i8 %8, 1
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 63) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 7) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then33, %sw.bb27, %sw.bb24, %sw.bb21, %sw.bb
  %call34.sink = phi ptr [ %call34, %if.then33 ], [ %call36, %if.else ], [ %call28, %sw.bb27 ], [ %call25, %sw.bb24 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb ]
  %gain35 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %gain35 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call34.sink, ptr %gain35, align 8
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %11, label %sw.epilog.sw.epilog50_crit_edge [
    i8 0, label %sw.bb41
    i8 2, label %sw.epilog.sw.bb43_crit_edge
    i8 3, label %sw.epilog.sw.bb43_crit_edge127
    i8 4, label %sw.epilog.sw.bb43_crit_edge128
    i8 5, label %sw.epilog.sw.bb43_crit_edge129
    i8 6, label %sw.epilog.sw.bb47_crit_edge
    i8 7, label %sw.epilog.sw.bb47_crit_edge130
  ]

sw.epilog.sw.bb47_crit_edge130:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.epilog.sw.bb47_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.epilog.sw.bb43_crit_edge129:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.epilog.sw.bb43_crit_edge128:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.epilog.sw.bb43_crit_edge127:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.epilog.sw.bb43_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.epilog.sw.epilog50_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog50

sw.bb41:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 8191, i64 noundef 1, i64 noundef 482) #6
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call42, ptr %exposure, align 4
  %exposure_knee = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %14 = ptrtoint ptr %exposure_knee to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 964, ptr %exposure_knee, align 8
  br label %sw.epilog50

sw.bb43:                                          ; preds = %sw.epilog.sw.bb43_crit_edge, %sw.epilog.sw.bb43_crit_edge127, %sw.epilog.sw.bb43_crit_edge128, %sw.epilog.sw.bb43_crit_edge129
  %call44 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 66) #6
  %exposure45 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %exposure45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call44, ptr %exposure45, align 4
  %exposure_knee46 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %16 = ptrtoint ptr %exposure_knee46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 200, ptr %exposure_knee46, align 8
  br label %sw.epilog50

sw.bb47:                                          ; preds = %sw.epilog.sw.bb47_crit_edge, %sw.epilog.sw.bb47_crit_edge130
  %call48 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 2, i64 noundef 15, i64 noundef 1, i64 noundef 2) #6
  %exposure49 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %exposure49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call48, ptr %exposure49, align 4
  br label %sw.epilog50

sw.epilog50:                                      ; preds = %sw.bb47, %sw.bb43, %sw.bb41, %sw.epilog.sw.epilog50_crit_edge
  %18 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %exposure51 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %exposure51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %exposure51, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %sw.epilog50.if.end54_crit_edge, label %if.then52

sw.epilog50.if.end54_crit_edge:                   ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then52:                                        ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call53, ptr %18, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %sw.epilog50.if.end54_crit_edge
  %22 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sensor, align 1
  %24 = and i8 %23, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %switch122 = icmp eq i8 %24, 2
  br i1 %switch122, label %if.then64, label %if.end54.if.end66_crit_edge

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #6
  %plfreq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %25 = ptrtoint ptr %plfreq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call65, ptr %plfreq, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end54.if.end66_crit_edge
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool67.not = icmp eq i32 %27, 0
  br i1 %tobool67.not, label %if.end72, label %do.end

do.end:                                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  %28 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.end66
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %18, align 8
  %tobool74.not = icmp eq ptr %31, null
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.then75

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %18, i8 noundef zeroext 0, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end72.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %29, %do.end ], [ 0, %if.then75 ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %i2c.i = alloca [8 x i8], align 8
  %regs.sroa.3 = alloca [48 x i8], align 1
  %i2cpclockdiv = alloca [8 x i8], align 8
  %i2c = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %regs.sroa.3)
  %0 = call ptr @memset(ptr %regs.sroa.3, i32 255, i32 48)
  %1 = ptrtoint ptr %cam1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cam1, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %3 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %4 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %2, i32 %idxprom, i32 7
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priv, align 4
  %and = and i32 %6, 7
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %7 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sensor, align 1
  %idxprom3 = zext i8 %8 to i32
  %arrayidx4 = getelementptr [9 x %struct.sensor_data], ptr @sensor_data, i32 0, i32 %idxprom3
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  %11 = call ptr @memcpy(ptr %regs.sroa.3, ptr %10, i32 25)
  %regs.sroa.3.23.arrayidx5.sroa_idx446 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 23
  %12 = ptrtoint ptr %regs.sroa.3.23.arrayidx5.sroa_idx446 to i32
  call void @__asan_load1_noabort(i32 %12)
  %regs.sroa.3.23.regs.sroa.3.24.434 = load i8, ptr %regs.sroa.3.23.arrayidx5.sroa_idx446, align 1
  %and.tr = trunc i32 %and to i8
  %13 = shl nuw nsw i8 %and.tr, 4
  %conv6 = or i8 %regs.sroa.3.23.regs.sroa.3.24.434, %13
  store i8 %conv6, ptr %regs.sroa.3.23.arrayidx5.sroa_idx446, align 1
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %14 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp = icmp eq i8 %15, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.sroa.3.4.arrayidx9.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 4
  %16 = ptrtoint ptr %regs.sroa.3.4.arrayidx9.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 32, ptr %regs.sroa.3.4.arrayidx9.sroa_idx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink460 = phi i32 [ 5, %if.then ], [ 15, %entry.if.end_crit_edge ]
  %.sink459 = phi i8 [ 32, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %.sink458 = phi i32 [ 6, %if.then ], [ 16, %entry.if.end_crit_edge ]
  %regs.sroa.3.15.arrayidx12.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 %.sink460
  %17 = ptrtoint ptr %regs.sroa.3.15.arrayidx12.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink459, ptr %regs.sroa.3.15.arrayidx12.sroa_idx, align 1
  %regs.sroa.3.16.arrayidx13.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 %.sink458
  %18 = ptrtoint ptr %regs.sroa.3.16.arrayidx13.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink459, ptr %regs.sroa.3.16.arrayidx13.sroa_idx, align 1
  %19 = lshr i32 299, %idxprom3
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.not = icmp eq i32 %20, 0
  br i1 %tobool.not.not, label %if.end.if.end32_crit_edge, label %if.else25

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %if.end.if.end32_crit_edge
  %.sink452 = phi i8 [ 29, %if.else25 ], [ 20, %if.end.if.end32_crit_edge ]
  %.sink451 = phi i8 [ 16, %if.else25 ], [ 10, %if.end.if.end32_crit_edge ]
  %.sink450 = phi i8 [ 5, %if.else25 ], [ 2, %if.end.if.end32_crit_edge ]
  %.sink449 = phi i8 [ 3, %if.else25 ], [ 2, %if.end.if.end32_crit_edge ]
  %.sink448 = phi i8 [ 15, %if.else25 ], [ 9, %if.end.if.end32_crit_edge ]
  %.sink = phi i8 [ 12, %if.else25 ], [ 7, %if.end.if.end32_crit_edge ]
  %21 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 25
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink452, ptr %21, align 1
  %23 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 26
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink451, ptr %23, align 1
  %25 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 27
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink450, ptr %25, align 1
  %27 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 28
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink449, ptr %27, align 1
  %29 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 29
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink448, ptr %29, align 1
  %31 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 30
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %31, align 1
  %regs.sroa.3.31.arrayidx36.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 31
  %33 = ptrtoint ptr %regs.sroa.3.31.arrayidx36.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %regs.sroa.3.31.arrayidx36.sroa_idx, align 1
  %regs.sroa.3.32.arrayidx36.1.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 32
  %34 = ptrtoint ptr %regs.sroa.3.32.arrayidx36.1.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %regs.sroa.3.32.arrayidx36.1.sroa_idx, align 1
  %regs.sroa.3.33.arrayidx36.2.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 33
  %35 = ptrtoint ptr %regs.sroa.3.33.arrayidx36.2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 32, ptr %regs.sroa.3.33.arrayidx36.2.sroa_idx, align 1
  %regs.sroa.3.34.arrayidx36.3.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 34
  %36 = ptrtoint ptr %regs.sroa.3.34.arrayidx36.3.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 48, ptr %regs.sroa.3.34.arrayidx36.3.sroa_idx, align 1
  %regs.sroa.3.35.arrayidx36.4.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 35
  %37 = ptrtoint ptr %regs.sroa.3.35.arrayidx36.4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 64, ptr %regs.sroa.3.35.arrayidx36.4.sroa_idx, align 1
  %regs.sroa.3.36.arrayidx36.5.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 36
  %38 = ptrtoint ptr %regs.sroa.3.36.arrayidx36.5.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 80, ptr %regs.sroa.3.36.arrayidx36.5.sroa_idx, align 1
  %regs.sroa.3.37.arrayidx36.6.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 37
  %39 = ptrtoint ptr %regs.sroa.3.37.arrayidx36.6.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 96, ptr %regs.sroa.3.37.arrayidx36.6.sroa_idx, align 1
  %regs.sroa.3.38.arrayidx36.7.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 38
  %40 = ptrtoint ptr %regs.sroa.3.38.arrayidx36.7.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 112, ptr %regs.sroa.3.38.arrayidx36.7.sroa_idx, align 1
  %regs.sroa.3.39.arrayidx36.8.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 39
  %41 = ptrtoint ptr %regs.sroa.3.39.arrayidx36.8.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -128, ptr %regs.sroa.3.39.arrayidx36.8.sroa_idx, align 1
  %regs.sroa.3.40.arrayidx36.9.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 40
  %42 = ptrtoint ptr %regs.sroa.3.40.arrayidx36.9.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -112, ptr %regs.sroa.3.40.arrayidx36.9.sroa_idx, align 1
  %regs.sroa.3.41.arrayidx36.10.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 41
  %43 = ptrtoint ptr %regs.sroa.3.41.arrayidx36.10.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -96, ptr %regs.sroa.3.41.arrayidx36.10.sroa_idx, align 1
  %regs.sroa.3.42.arrayidx36.11.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 42
  %44 = ptrtoint ptr %regs.sroa.3.42.arrayidx36.11.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -80, ptr %regs.sroa.3.42.arrayidx36.11.sroa_idx, align 1
  %regs.sroa.3.43.arrayidx36.12.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 43
  %45 = ptrtoint ptr %regs.sroa.3.43.arrayidx36.12.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -64, ptr %regs.sroa.3.43.arrayidx36.12.sroa_idx, align 1
  %regs.sroa.3.44.arrayidx36.13.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 44
  %46 = ptrtoint ptr %regs.sroa.3.44.arrayidx36.13.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -48, ptr %regs.sroa.3.44.arrayidx36.13.sroa_idx, align 1
  %regs.sroa.3.45.arrayidx36.14.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 45
  %47 = ptrtoint ptr %regs.sroa.3.45.arrayidx36.14.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -32, ptr %regs.sroa.3.45.arrayidx36.14.sroa_idx, align 1
  %regs.sroa.3.46.arrayidx36.15.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 46
  %48 = ptrtoint ptr %regs.sroa.3.46.arrayidx36.15.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -16, ptr %regs.sroa.3.46.arrayidx36.15.sroa_idx, align 1
  %regs.sroa.3.47.arrayidx38.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 47
  %49 = ptrtoint ptr %regs.sroa.3.47.arrayidx38.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %regs.sroa.3.47.arrayidx38.sroa_idx, align 1
  %50 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %8, label %if.end32.sw.epilog_crit_edge [
    i8 8, label %sw.bb
    i8 3, label %sw.bb44
    i8 5, label %sw.bb53
  ]

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  %conv42 = select i1 %tobool41.not, i8 67, i8 35
  %regs.sroa.3.24.arrayidx43.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 24
  %51 = ptrtoint ptr %regs.sroa.3.24.arrayidx43.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv42, ptr %regs.sroa.3.24.arrayidx43.sroa_idx, align 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end32
  br i1 %cmp, label %if.then49, label %sw.bb44.sw.epilog_crit_edge

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then49:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %regs.sroa.3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 68, ptr %regs.sroa.3, align 1
  %regs.sroa.3.17.arrayidx51.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 17
  %53 = ptrtoint ptr %regs.sroa.3.17.arrayidx51.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %regs.sroa.3.17.arrayidx51.sroa_idx, align 1
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end32
  br i1 %cmp, label %if.then58, label %sw.bb53.sw.epilog_crit_edge

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then58:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #8
  %regs.sroa.3.17.arrayidx59.sroa_idx438 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 17
  %54 = ptrtoint ptr %regs.sroa.3.17.arrayidx59.sroa_idx438 to i32
  call void @__asan_load1_noabort(i32 %54)
  %regs.sroa.3.17.regs.sroa.3.18.423 = load i8, ptr %regs.sroa.3.17.arrayidx59.sroa_idx438, align 1
  %add61 = add i8 %regs.sroa.3.17.regs.sroa.3.18.423, 1
  store i8 %add61, ptr %regs.sroa.3.17.arrayidx59.sroa_idx438, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then58, %sw.bb53.sw.epilog_crit_edge, %if.then49, %sw.bb44.sw.epilog_crit_edge, %sw.bb, %if.end32.sw.epilog_crit_edge
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %priv, align 4
  %and69 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %sw.epilog.if.end76_crit_edge, label %if.then71

sw.epilog.if.end76_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then71:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %regs.sroa.3.23.arrayidx5.sroa_idx446 to i32
  call void @__asan_load1_noabort(i32 %57)
  %regs.sroa.3.23.regs.sroa.3.24.430 = load i8, ptr %regs.sroa.3.23.arrayidx5.sroa_idx446, align 1
  %58 = and i8 %regs.sroa.3.23.regs.sroa.3.24.430, 127
  store i8 %58, ptr %regs.sroa.3.23.arrayidx5.sroa_idx446, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %sw.epilog.if.end76_crit_edge
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %priv, align 4
  %and82 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end76.if.end95_crit_edge, label %if.then84

if.end76.if.end95_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %regs.sroa.3.17.arrayidx85.sroa_idx437 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 17
  %61 = ptrtoint ptr %regs.sroa.3.17.arrayidx85.sroa_idx437 to i32
  call void @__asan_load1_noabort(i32 %61)
  %regs.sroa.3.17.regs.sroa.3.18.421 = load i8, ptr %regs.sroa.3.17.arrayidx85.sroa_idx437, align 1
  %add87 = add i8 %regs.sroa.3.17.regs.sroa.3.18.421, 16
  store i8 %add87, ptr %regs.sroa.3.17.arrayidx85.sroa_idx437, align 1
  %regs.sroa.3.18.arrayidx89.sroa_idx439 = getelementptr inbounds i8, ptr %regs.sroa.3, i32 18
  %62 = ptrtoint ptr %regs.sroa.3.18.arrayidx89.sroa_idx439 to i32
  call void @__asan_load1_noabort(i32 %62)
  %regs.sroa.3.18.regs.sroa.3.19.425 = load i8, ptr %regs.sroa.3.18.arrayidx89.sroa_idx439, align 1
  %add91 = add i8 %regs.sroa.3.18.regs.sroa.3.19.425, 24
  store i8 %add91, ptr %regs.sroa.3.18.arrayidx89.sroa_idx439, align 1
  %regs.sroa.3.20.arrayidx93.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 20
  %63 = ptrtoint ptr %regs.sroa.3.20.arrayidx93.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 20, ptr %regs.sroa.3.20.arrayidx93.sroa_idx, align 1
  %regs.sroa.3.21.arrayidx94.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 21
  %64 = ptrtoint ptr %regs.sroa.3.21.arrayidx94.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 15, ptr %regs.sroa.3.21.arrayidx94.sroa_idx, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.then84, %if.end76.if.end95_crit_edge
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %65 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i = icmp slt i32 %66, 0
  br i1 %cmp.i, label %if.end95.reg_w.exit.thread_crit_edge, label %if.end.i

if.end95.reg_w.exit.thread_crit_edge:             ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.thread

if.end.i:                                         ; preds = %if.end95
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %67 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_buf.i, align 4
  %69 = ptrtoint ptr %regs.sroa.3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %regs.sroa.3.0.regs.sroa.3.1. = load i8, ptr %regs.sroa.3, align 1
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %regs.sroa.3.0.regs.sroa.3.1., ptr %68, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i = shl i32 %74, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %75 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %75, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %76 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %v4l2_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %call3.i) #9
  %78 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_w.exit.thread

reg_w.exit.thread:                                ; preds = %do.end.i, %if.end95.reg_w.exit.thread_crit_edge
  %regs.sroa.3.22.arrayidx97318.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 22
  br label %reg_w.exit193

reg_w.exit:                                       ; preds = %if.end.i
  %79 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr = load i32, ptr %usb_err.i, align 8
  %regs.sroa.3.22.arrayidx97.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i183 = icmp slt i32 %.pr, 0
  br i1 %cmp.i183, label %reg_w.exit.i2c_w_vector.exit_crit_edge, label %if.end.i190

reg_w.exit.i2c_w_vector.exit_crit_edge:           ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_w_vector.exit

if.end.i190:                                      ; preds = %reg_w.exit
  %80 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %usb_buf.i, align 4
  %82 = ptrtoint ptr %regs.sroa.3.22.arrayidx97.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %82)
  %regs.sroa.3.22.regs.sroa.3.23. = load i8, ptr %regs.sroa.3.22.arrayidx97.sroa_idx, align 1
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %regs.sroa.3.22.regs.sroa.3.23., ptr %81, align 1
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %shl.i.i186 = shl i32 %87, 8
  %or.i187 = or i32 %shl.i.i186, -2147483648
  %88 = load ptr, ptr %usb_buf.i, align 4
  %call3.i188 = tail call i32 @usb_control_msg(ptr noundef %85, i32 noundef %or.i187, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %88, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i188)
  %cmp4.i189 = icmp slt i32 %call3.i188, 0
  br i1 %cmp4.i189, label %do.end.i192, label %if.end.i190.reg_w.exit193_crit_edge

if.end.i190.reg_w.exit193_crit_edge:              ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit193

do.end.i192:                                      ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i191 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %89 = ptrtoint ptr %v4l2_dev.i191 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %v4l2_dev.i191, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.7, i32 noundef 23, i32 noundef %call3.i188) #9
  br label %i2c_w_vector.exit.sink.split

reg_w.exit193:                                    ; preds = %if.end.i190.reg_w.exit193_crit_edge, %reg_w.exit.thread
  %arrayidx97320.ph = phi ptr [ %regs.sroa.3.22.arrayidx97.sroa_idx, %if.end.i190.reg_w.exit193_crit_edge ], [ %regs.sroa.3.22.arrayidx97318.sroa_idx, %reg_w.exit.thread ]
  %91 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr321 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr321)
  %cmp.i195 = icmp slt i32 %.pr321, 0
  br i1 %cmp.i195, label %reg_w.exit193.i2c_w_vector.exit_crit_edge, label %if.end.i202

reg_w.exit193.i2c_w_vector.exit_crit_edge:        ; preds = %reg_w.exit193
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_w_vector.exit

if.end.i202:                                      ; preds = %reg_w.exit193
  %92 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp101 = icmp eq i8 %93, 1
  %cond103 = select i1 %cmp101, i32 48, i32 31
  %usb_buf.i196 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %94 = ptrtoint ptr %usb_buf.i196 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usb_buf.i196, align 4
  %96 = call ptr @memcpy(ptr %95, ptr %regs.sroa.3, i32 %cond103)
  %dev.i197 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %97 = ptrtoint ptr %dev.i197 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i197, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %shl.i.i198 = shl i32 %100, 8
  %or.i199 = or i32 %shl.i.i198, -2147483648
  %101 = load ptr, ptr %usb_buf.i196, align 4
  %conv.i = trunc i32 %cond103 to i16
  %call3.i200 = tail call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or.i199, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %101, i16 noundef zeroext %conv.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i200)
  %cmp4.i201 = icmp slt i32 %call3.i200, 0
  br i1 %cmp4.i201, label %do.end.i204, label %reg_w.exit205

do.end.i204:                                      ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i203 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %102 = ptrtoint ptr %v4l2_dev.i203 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %v4l2_dev.i203, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %call3.i200) #9
  br label %i2c_w_vector.exit.sink.split

reg_w.exit205:                                    ; preds = %if.end.i202
  %104 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr453 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr453)
  %cmp7.i = icmp slt i32 %.pr453, 0
  br i1 %cmp7.i, label %reg_w.exit205.i2c_w_vector.exit_crit_edge, label %if.end.i208.preheader

reg_w.exit205.i2c_w_vector.exit_crit_edge:        ; preds = %reg_w.exit205
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_w_vector.exit

if.end.i208.preheader:                            ; preds = %reg_w.exit205
  %105 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sensor, align 1
  %idxprom105 = zext i8 %106 to i32
  %sensor_init_size = getelementptr [9 x %struct.sensor_data], ptr @sensor_data, i32 0, i32 %idxprom105, i32 2
  %107 = ptrtoint ptr %sensor_init_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sensor_init_size, align 4
  %sensor_init = getelementptr [9 x %struct.sensor_data], ptr @sensor_data, i32 0, i32 %idxprom105, i32 1
  %109 = ptrtoint ptr %sensor_init to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sensor_init, align 4
  br label %if.end.i208

for.cond.i:                                       ; preds = %if.end.i208
  %incdec.ptr.i = getelementptr [8 x i8], ptr %buffer.addr.08.i, i32 1
  %111 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %usb_err.i, align 8
  %cmp.i207 = icmp slt i32 %112, 0
  br i1 %cmp.i207, label %for.cond.i.i2c_w_vector.exit_crit_edge, label %for.cond.i.if.end.i208_crit_edge

for.cond.i.if.end.i208_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i208

for.cond.i.i2c_w_vector.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_w_vector.exit

if.end.i208:                                      ; preds = %for.cond.i.if.end.i208_crit_edge, %if.end.i208.preheader
  %len.addr.09.i = phi i32 [ %sub.i, %for.cond.i.if.end.i208_crit_edge ], [ %108, %if.end.i208.preheader ]
  %buffer.addr.08.i = phi ptr [ %incdec.ptr.i, %for.cond.i.if.end.i208_crit_edge ], [ %110, %if.end.i208.preheader ]
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef %buffer.addr.08.i) #6
  %sub.i = add i32 %len.addr.09.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 1
  br i1 %cmp1.i, label %if.end.i208.i2c_w_vector.exit_crit_edge, label %for.cond.i

if.end.i208.i2c_w_vector.exit_crit_edge:          ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_w_vector.exit

i2c_w_vector.exit.sink.split:                     ; preds = %do.end.i204, %do.end.i192
  %call3.i200.sink = phi i32 [ %call3.i200, %do.end.i204 ], [ %call3.i188, %do.end.i192 ]
  %arrayidx97320326456.ph = phi ptr [ %arrayidx97320.ph, %do.end.i204 ], [ %regs.sroa.3.22.arrayidx97.sroa_idx, %do.end.i192 ]
  %113 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call3.i200.sink, ptr %usb_err.i, align 8
  br label %i2c_w_vector.exit

i2c_w_vector.exit:                                ; preds = %i2c_w_vector.exit.sink.split, %if.end.i208.i2c_w_vector.exit_crit_edge, %for.cond.i.i2c_w_vector.exit_crit_edge, %reg_w.exit205.i2c_w_vector.exit_crit_edge, %reg_w.exit193.i2c_w_vector.exit_crit_edge, %reg_w.exit.i2c_w_vector.exit_crit_edge
  %arrayidx97320326456 = phi ptr [ %arrayidx97320.ph, %reg_w.exit205.i2c_w_vector.exit_crit_edge ], [ %regs.sroa.3.22.arrayidx97.sroa_idx, %reg_w.exit.i2c_w_vector.exit_crit_edge ], [ %arrayidx97320.ph, %reg_w.exit193.i2c_w_vector.exit_crit_edge ], [ %arrayidx97320326456.ph, %i2c_w_vector.exit.sink.split ], [ %arrayidx97320.ph, %if.end.i208.i2c_w_vector.exit_crit_edge ], [ %arrayidx97320.ph, %for.cond.i.i2c_w_vector.exit_crit_edge ]
  %114 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %sensor, align 1
  %116 = zext i8 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %115, label %i2c_w_vector.exit.sw.epilog124_crit_edge [
    i8 5, label %sw.bb112
    i8 3, label %sw.bb116
  ]

i2c_w_vector.exit.sw.epilog124_crit_edge:         ; preds = %i2c_w_vector.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog124

sw.bb112:                                         ; preds = %i2c_w_vector.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpclockdiv) #6
  %117 = ptrtoint ptr %i2cpclockdiv to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 -6899512417223442416, ptr %i2cpclockdiv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool113.not = icmp eq i32 %and, 0
  br i1 %tobool113.not, label %sw.bb112.if.end115_crit_edge, label %if.then114

sw.bb112.if.end115_crit_edge:                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then114:                                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpclockdiv)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %sw.bb112.if.end115_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpclockdiv) #6
  br label %sw.epilog124

sw.bb116:                                         ; preds = %i2c_w_vector.exit
  %118 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %119)
  %cmp119 = icmp eq i8 %119, 1
  br i1 %cmp119, label %if.then121, label %sw.bb116.sw.epilog124_crit_edge

sw.bb116.sw.epilog124_crit_edge:                  ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog124

if.then121:                                       ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c) #6
  %120 = ptrtoint ptr %i2c to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 -6908218912932888560, ptr %i2c, align 8
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2c)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c) #6
  br label %sw.epilog124

sw.epilog124:                                     ; preds = %if.then121, %sw.bb116.sw.epilog124_crit_edge, %if.end115, %i2c_w_vector.exit.sw.epilog124_crit_edge
  %121 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp.i210 = icmp slt i32 %122, 0
  br i1 %cmp.i210, label %sw.epilog124.reg_w.exit316_crit_edge, label %if.end.i217

sw.epilog124.reg_w.exit316_crit_edge:             ; preds = %sw.epilog124
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i217:                                      ; preds = %sw.epilog124
  %usb_buf.i211 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %123 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %usb_buf.i211, align 4
  %regs.sroa.3.20.arrayidx125.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 20
  %125 = ptrtoint ptr %regs.sroa.3.20.arrayidx125.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %regs.sroa.3.20.regs.sroa.3.21. = load i16, ptr %regs.sroa.3.20.arrayidx125.sroa_idx, align 1
  %126 = ptrtoint ptr %124 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %regs.sroa.3.20.regs.sroa.3.21., ptr %124, align 1
  %dev.i212 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %127 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i212, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 8
  %shl.i.i213 = shl i32 %130, 8
  %or.i214 = or i32 %shl.i.i213, -2147483648
  %131 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i215 = call i32 @usb_control_msg(ptr noundef %128, i32 noundef %or.i214, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 21, i16 noundef zeroext 0, ptr noundef %131, i16 noundef zeroext 2, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i215)
  %cmp4.i216 = icmp slt i32 %call3.i215, 0
  br i1 %cmp4.i216, label %do.end.i219, label %reg_w.exit220

do.end.i219:                                      ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i218 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %132 = ptrtoint ptr %v4l2_dev.i218 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %v4l2_dev.i218, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.7, i32 noundef 21, i32 noundef %call3.i215) #9
  br label %reg_w.exit316.sink.split

reg_w.exit220:                                    ; preds = %if.end.i217
  %134 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr327 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr327)
  %cmp.i222 = icmp slt i32 %.pr327, 0
  br i1 %cmp.i222, label %reg_w.exit220.reg_w.exit316_crit_edge, label %if.end.i229

reg_w.exit220.reg_w.exit316_crit_edge:            ; preds = %reg_w.exit220
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i229:                                      ; preds = %reg_w.exit220
  %135 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %usb_buf.i211, align 4
  %137 = ptrtoint ptr %regs.sroa.3.23.arrayidx5.sroa_idx446 to i32
  call void @__asan_load1_noabort(i32 %137)
  %regs.sroa.3.23.regs.sroa.3.24.436 = load i8, ptr %regs.sroa.3.23.arrayidx5.sroa_idx446, align 1
  %138 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %regs.sroa.3.23.regs.sroa.3.24.436, ptr %136, align 1
  %139 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i212, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %shl.i.i225 = shl i32 %142, 8
  %or.i226 = or i32 %shl.i.i225, -2147483648
  %143 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i227 = call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or.i226, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 24, i16 noundef zeroext 0, ptr noundef %143, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i227)
  %cmp4.i228 = icmp slt i32 %call3.i227, 0
  br i1 %cmp4.i228, label %do.end.i231, label %reg_w.exit232

do.end.i231:                                      ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i230 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %144 = ptrtoint ptr %v4l2_dev.i230 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %v4l2_dev.i230, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.7, i32 noundef 24, i32 noundef %call3.i227) #9
  br label %reg_w.exit316.sink.split

reg_w.exit232:                                    ; preds = %if.end.i229
  %146 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pr329.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr329.pr)
  %cmp.i234 = icmp slt i32 %.pr329.pr, 0
  br i1 %cmp.i234, label %reg_w.exit232.reg_w.exit316_crit_edge, label %if.end.i241

reg_w.exit232.reg_w.exit316_crit_edge:            ; preds = %reg_w.exit232
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i241:                                      ; preds = %reg_w.exit232
  %147 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %usb_buf.i211, align 4
  %regs.sroa.3.17.arrayidx127.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 17
  %149 = ptrtoint ptr %regs.sroa.3.17.arrayidx127.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %149)
  %regs.sroa.3.17.regs.sroa.3.18. = load i8, ptr %regs.sroa.3.17.arrayidx127.sroa_idx, align 1
  %150 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %regs.sroa.3.17.regs.sroa.3.18., ptr %148, align 1
  %151 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i212, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %shl.i.i237 = shl i32 %154, 8
  %or.i238 = or i32 %shl.i.i237, -2147483648
  %155 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i239 = call i32 @usb_control_msg(ptr noundef %152, i32 noundef %or.i238, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef %155, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i239)
  %cmp4.i240 = icmp slt i32 %call3.i239, 0
  br i1 %cmp4.i240, label %do.end.i243, label %reg_w.exit244

do.end.i243:                                      ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i242 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %156 = ptrtoint ptr %v4l2_dev.i242 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %v4l2_dev.i242, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.7, i32 noundef 18, i32 noundef %call3.i239) #9
  br label %reg_w.exit316.sink.split

reg_w.exit244:                                    ; preds = %if.end.i241
  %158 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr332.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr332.pr)
  %cmp.i246 = icmp slt i32 %.pr332.pr, 0
  br i1 %cmp.i246, label %reg_w.exit244.reg_w.exit316_crit_edge, label %if.end.i253

reg_w.exit244.reg_w.exit316_crit_edge:            ; preds = %reg_w.exit244
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i253:                                      ; preds = %reg_w.exit244
  %159 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %usb_buf.i211, align 4
  %regs.sroa.3.18.arrayidx128.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 18
  %161 = ptrtoint ptr %regs.sroa.3.18.arrayidx128.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %161)
  %regs.sroa.3.18.regs.sroa.3.19. = load i8, ptr %regs.sroa.3.18.arrayidx128.sroa_idx, align 1
  %162 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %regs.sroa.3.18.regs.sroa.3.19., ptr %160, align 1
  %163 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i212, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  %shl.i.i249 = shl i32 %166, 8
  %or.i250 = or i32 %shl.i.i249, -2147483648
  %167 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i251 = call i32 @usb_control_msg(ptr noundef %164, i32 noundef %or.i250, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 19, i16 noundef zeroext 0, ptr noundef %167, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i251)
  %cmp4.i252 = icmp slt i32 %call3.i251, 0
  br i1 %cmp4.i252, label %do.end.i255, label %reg_w.exit256

do.end.i255:                                      ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i254 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %168 = ptrtoint ptr %v4l2_dev.i254 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %v4l2_dev.i254, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.7, i32 noundef 19, i32 noundef %call3.i251) #9
  br label %reg_w.exit316.sink.split

reg_w.exit256:                                    ; preds = %if.end.i253
  %170 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %.pr335.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr335.pr.pr)
  %cmp.i258 = icmp slt i32 %.pr335.pr.pr, 0
  br i1 %cmp.i258, label %reg_w.exit256.reg_w.exit316_crit_edge, label %if.end.i265

reg_w.exit256.reg_w.exit316_crit_edge:            ; preds = %reg_w.exit256
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i265:                                      ; preds = %reg_w.exit256
  %171 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %usb_buf.i211, align 4
  %173 = ptrtoint ptr %arrayidx97320326456 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx97320326456, align 1
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %172, align 1
  %176 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev.i212, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 8
  %shl.i.i261 = shl i32 %179, 8
  %or.i262 = or i32 %shl.i.i261, -2147483648
  %180 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i263 = call i32 @usb_control_msg(ptr noundef %177, i32 noundef %or.i262, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %180, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i263)
  %cmp4.i264 = icmp slt i32 %call3.i263, 0
  br i1 %cmp4.i264, label %do.end.i267, label %reg_w.exit268

do.end.i267:                                      ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i266 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %181 = ptrtoint ptr %v4l2_dev.i266 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %v4l2_dev.i266, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.7, i32 noundef 23, i32 noundef %call3.i263) #9
  br label %reg_w.exit316.sink.split

reg_w.exit268:                                    ; preds = %if.end.i265
  %183 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %.pr337.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr337.pr.pr)
  %cmp.i270 = icmp slt i32 %.pr337.pr.pr, 0
  br i1 %cmp.i270, label %reg_w.exit268.reg_w.exit316_crit_edge, label %if.end.i277

reg_w.exit268.reg_w.exit316_crit_edge:            ; preds = %reg_w.exit268
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i277:                                      ; preds = %reg_w.exit268
  %184 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %usb_buf.i211, align 4
  %regs.sroa.3.24.arrayidx130.sroa_idx = getelementptr inbounds i8, ptr %regs.sroa.3, i32 24
  %186 = ptrtoint ptr %regs.sroa.3.24.arrayidx130.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %186)
  %regs.sroa.3.24.regs.sroa.3.25. = load i8, ptr %regs.sroa.3.24.arrayidx130.sroa_idx, align 1
  %187 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %regs.sroa.3.24.regs.sroa.3.25., ptr %185, align 1
  %188 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev.i212, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 8
  %shl.i.i273 = shl i32 %191, 8
  %or.i274 = or i32 %shl.i.i273, -2147483648
  %192 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i275 = call i32 @usb_control_msg(ptr noundef %189, i32 noundef %or.i274, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %192, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i275)
  %cmp4.i276 = icmp slt i32 %call3.i275, 0
  br i1 %cmp4.i276, label %do.end.i279, label %reg_w.exit280

do.end.i279:                                      ; preds = %if.end.i277
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i278 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %193 = ptrtoint ptr %v4l2_dev.i278 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %v4l2_dev.i278, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.7, i32 noundef 25, i32 noundef %call3.i275) #9
  br label %reg_w.exit316.sink.split

reg_w.exit280:                                    ; preds = %if.end.i277
  %195 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pr340.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr340.pr.pr)
  %cmp.i282 = icmp slt i32 %.pr340.pr.pr, 0
  br i1 %cmp.i282, label %reg_w.exit280.reg_w.exit316_crit_edge, label %if.end.i289

reg_w.exit280.reg_w.exit316_crit_edge:            ; preds = %reg_w.exit280
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i289:                                      ; preds = %reg_w.exit280
  %196 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %usb_buf.i211, align 4
  %198 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %regs.sroa.3.27.regs.sroa.3.28. = load i32, ptr %25, align 1
  %199 = ptrtoint ptr %197 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %regs.sroa.3.27.regs.sroa.3.28., ptr %197, align 1
  %200 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev.i212, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 8
  %shl.i.i285 = shl i32 %203, 8
  %or.i286 = or i32 %shl.i.i285, -2147483648
  %204 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i287 = call i32 @usb_control_msg(ptr noundef %201, i32 noundef %or.i286, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 28, i16 noundef zeroext 0, ptr noundef %204, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i287)
  %cmp4.i288 = icmp slt i32 %call3.i287, 0
  br i1 %cmp4.i288, label %do.end.i291, label %reg_w.exit292

do.end.i291:                                      ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i290 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %205 = ptrtoint ptr %v4l2_dev.i290 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %v4l2_dev.i290, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.7, i32 noundef 28, i32 noundef %call3.i287) #9
  br label %reg_w.exit316.sink.split

reg_w.exit292:                                    ; preds = %if.end.i289
  %207 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %.pr343.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr343.pr.pr)
  %cmp.i294 = icmp slt i32 %.pr343.pr.pr, 0
  br i1 %cmp.i294, label %reg_w.exit292.reg_w.exit316_crit_edge, label %if.end.i301

reg_w.exit292.reg_w.exit316_crit_edge:            ; preds = %reg_w.exit292
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i301:                                      ; preds = %reg_w.exit292
  %208 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %usb_buf.i211, align 4
  %210 = ptrtoint ptr %regs.sroa.3 to i32
  call void @__asan_load1_noabort(i32 %210)
  %regs.sroa.3.0.regs.sroa.3.1.419 = load i8, ptr %regs.sroa.3, align 1
  %211 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %regs.sroa.3.0.regs.sroa.3.1.419, ptr %209, align 1
  %212 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev.i212, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %213, align 8
  %shl.i.i297 = shl i32 %215, 8
  %or.i298 = or i32 %shl.i.i297, -2147483648
  %216 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i299 = call i32 @usb_control_msg(ptr noundef %213, i32 noundef %or.i298, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %216, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i299)
  %cmp4.i300 = icmp slt i32 %call3.i299, 0
  br i1 %cmp4.i300, label %do.end.i303, label %reg_w.exit304

do.end.i303:                                      ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i302 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %217 = ptrtoint ptr %v4l2_dev.i302 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %v4l2_dev.i302, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %call3.i299) #9
  br label %reg_w.exit316.sink.split

reg_w.exit304:                                    ; preds = %if.end.i301
  %219 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %.pr345.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr345.pr.pr.pr)
  %cmp.i306 = icmp slt i32 %.pr345.pr.pr.pr, 0
  br i1 %cmp.i306, label %reg_w.exit304.reg_w.exit316_crit_edge, label %if.end.i313

reg_w.exit304.reg_w.exit316_crit_edge:            ; preds = %reg_w.exit304
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

if.end.i313:                                      ; preds = %reg_w.exit304
  %220 = ptrtoint ptr %usb_buf.i211 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %usb_buf.i211, align 4
  %222 = ptrtoint ptr %regs.sroa.3.23.arrayidx5.sroa_idx446 to i32
  call void @__asan_loadN_noabort(i32 %222, i32 2)
  %regs.sroa.3.23.regs.sroa.3.24. = load i16, ptr %regs.sroa.3.23.arrayidx5.sroa_idx446, align 1
  %223 = ptrtoint ptr %221 to i32
  call void @__asan_storeN_noabort(i32 %223, i32 2)
  store i16 %regs.sroa.3.23.regs.sroa.3.24., ptr %221, align 1
  %224 = ptrtoint ptr %dev.i212 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev.i212, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 8
  %shl.i.i309 = shl i32 %227, 8
  %or.i310 = or i32 %shl.i.i309, -2147483648
  %228 = load ptr, ptr %usb_buf.i211, align 4
  %call3.i311 = call i32 @usb_control_msg(ptr noundef %225, i32 noundef %or.i310, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 24, i16 noundef zeroext 0, ptr noundef %228, i16 noundef zeroext 2, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i311)
  %cmp4.i312 = icmp slt i32 %call3.i311, 0
  br i1 %cmp4.i312, label %do.end.i315, label %if.end.i313.reg_w.exit316_crit_edge

if.end.i313.reg_w.exit316_crit_edge:              ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit316

do.end.i315:                                      ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i314 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %229 = ptrtoint ptr %v4l2_dev.i314 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %v4l2_dev.i314, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.7, i32 noundef 24, i32 noundef %call3.i311) #9
  br label %reg_w.exit316.sink.split

reg_w.exit316.sink.split:                         ; preds = %do.end.i315, %do.end.i303, %do.end.i291, %do.end.i279, %do.end.i267, %do.end.i255, %do.end.i243, %do.end.i231, %do.end.i219
  %call3.i215.sink = phi i32 [ %call3.i215, %do.end.i219 ], [ %call3.i263, %do.end.i267 ], [ %call3.i251, %do.end.i255 ], [ %call3.i239, %do.end.i243 ], [ %call3.i227, %do.end.i231 ], [ %call3.i287, %do.end.i291 ], [ %call3.i275, %do.end.i279 ], [ %call3.i299, %do.end.i303 ], [ %call3.i311, %do.end.i315 ]
  %231 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %call3.i215.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit316

reg_w.exit316:                                    ; preds = %reg_w.exit316.sink.split, %if.end.i313.reg_w.exit316_crit_edge, %reg_w.exit304.reg_w.exit316_crit_edge, %reg_w.exit292.reg_w.exit316_crit_edge, %reg_w.exit280.reg_w.exit316_crit_edge, %reg_w.exit268.reg_w.exit316_crit_edge, %reg_w.exit256.reg_w.exit316_crit_edge, %reg_w.exit244.reg_w.exit316_crit_edge, %reg_w.exit232.reg_w.exit316_crit_edge, %reg_w.exit220.reg_w.exit316_crit_edge, %sw.epilog124.reg_w.exit316_crit_edge
  call void @msleep(i32 noundef 20) #6
  %reg11 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %232 = ptrtoint ptr %reg11 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 -1, ptr %reg11, align 8
  call fastcc void @setgain(ptr noundef %gspca_dev)
  call fastcc void @setbrightness(ptr noundef %gspca_dev)
  call fastcc void @setexposure(ptr noundef %gspca_dev)
  %233 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %sensor, align 1
  %235 = and i8 %234, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %235)
  %switch.i = icmp eq i8 %235, 2
  br i1 %switch.i, label %if.then.i, label %reg_w.exit316.setfreq.exit_crit_edge

reg_w.exit316.setfreq.exit_crit_edge:             ; preds = %reg_w.exit316
  call void @__sanitizer_cov_trace_pc() #8
  br label %setfreq.exit

if.then.i:                                        ; preds = %reg_w.exit316
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c.i) #6
  %236 = ptrtoint ptr %i2c.i to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 -6917481748641087472, ptr %i2c.i, align 8
  %plfreq.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %237 = ptrtoint ptr %plfreq.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %plfreq.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %238, i32 0, i32 22
  %239 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %240)
  %cond15.i = icmp eq i32 %240, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %234)
  %cmp8.i = icmp eq i8 %234, 2
  %conv10.i = select i1 %cmp8.i, i8 79, i8 -118
  %.sink.i = select i1 %cond15.i, i8 %conv10.i, i8 0
  %241 = getelementptr inbounds [8 x i8], ptr %i2c.i, i32 0, i32 3
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %.sink.i, ptr %241, align 1
  %idxprom.i = zext i8 %234 to i32
  %sensor_addr.i = getelementptr [9 x %struct.sensor_data], ptr @sensor_data, i32 0, i32 %idxprom.i, i32 4
  %243 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %sensor_addr.i, align 4
  %arrayidx14.i = getelementptr inbounds [8 x i8], ptr %i2c.i, i32 0, i32 1
  %245 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %arrayidx14.i, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2c.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c.i) #6
  br label %setfreq.exit

setfreq.exit:                                     ; preds = %if.then.i, %reg_w.exit316.setfreq.exit_crit_edge
  %frames_to_drop = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %246 = ptrtoint ptr %frames_to_drop to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 0, ptr %frames_to_drop, align 1
  %autogain_ignore_frames = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %247 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %autogain_ignore_frames, align 4
  %exp_too_high_cnt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 4
  %248 = ptrtoint ptr %exp_too_high_cnt to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %exp_too_high_cnt, align 8
  %exp_too_low_cnt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 3
  %249 = ptrtoint ptr %exp_too_low_cnt to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %exp_too_low_cnt, align 4
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum, i32 noundef 4) #6
  %250 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %250)
  store volatile i32 -1, ptr %avg_lum, align 4
  %251 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %usb_err.i, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %regs.sroa.3)
  ret i32 %252
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %bridge.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  %cond.i = select i1 %cmp.i, i32 18, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2151.i = icmp sgt i32 %len, 0
  br i1 %cmp2151.i, label %for.body.lr.ph.i, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.body.lr.ph.i:                                 ; preds = %entry
  %header_read.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0152.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc104.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %header_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %header_read.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %3, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb8.i
    i32 2, label %sw.bb18.i
    i32 3, label %sw.bb35.i
    i32 4, label %sw.bb54.i
    i32 5, label %sw.bb73.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.0152.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp5.i = icmp eq i8 %6, -1
  br i1 %cmp5.i, label %sw.bb.i.for.inc.sink.split.i_crit_edge, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i.for.inc.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb8.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9.i = getelementptr i8, ptr %data, i32 %i.0152.i
  %7 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp11.i = icmp eq i8 %8, -1
  %..i = select i1 %cmp11.i, i32 2, i32 0
  br label %for.inc.sink.split.i

sw.bb18.i:                                        ; preds = %for.body.i
  %arrayidx19.i = getelementptr i8, ptr %data, i32 %i.0152.i
  %9 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx19.i, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %10, label %if.then31.i [
    i8 0, label %sw.bb18.i.for.inc.sink.split.i_crit_edge
    i8 -1, label %sw.bb18.i.for.inc.i_crit_edge
  ]

sw.bb18.i.for.inc.i_crit_edge:                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb18.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

if.then31.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb35.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx36.i = getelementptr i8, ptr %data, i32 %i.0152.i
  %12 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %switch.selectcmp.i = icmp eq i8 %13, -1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %13)
  %switch.selectcmp155.i = icmp eq i8 %13, -60
  %switch.select156.i = select i1 %switch.selectcmp155.i, i32 4, i32 %switch.select.i
  br label %for.inc.sink.split.i

sw.bb54.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx55.i = getelementptr i8, ptr %data, i32 %i.0152.i
  %14 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %switch.selectcmp157.i = icmp eq i8 %15, -1
  %switch.select158.i = zext i1 %switch.selectcmp157.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -60, i8 %15)
  %switch.selectcmp159.i = icmp eq i8 %15, -60
  %switch.select160.i = select i1 %switch.selectcmp159.i, i32 5, i32 %switch.select158.i
  br label %for.inc.sink.split.i

sw.bb73.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx74.i = getelementptr i8, ptr %data, i32 %i.0152.i
  %16 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx74.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %switch.selectcmp161.i = icmp eq i8 %17, -1
  %switch.select162.i = zext i1 %switch.selectcmp161.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %17)
  %switch.selectcmp163.i = icmp eq i8 %17, -106
  %switch.select164.i = select i1 %switch.selectcmp163.i, i32 6, i32 %switch.select162.i
  br label %for.inc.sink.split.i

sw.default.i:                                     ; preds = %for.body.i
  %arrayidx92.i = getelementptr i8, ptr %data, i32 %i.0152.i
  %18 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx92.i, align 1
  %sub.i = add i32 %3, -6
  %arrayidx94.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 7, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx94.i, align 1
  %21 = ptrtoint ptr %header_read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %header_read.i, align 4
  %inc96.i = add i32 %22, 1
  store i32 %inc96.i, ptr %header_read.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc96.i, i32 %cond.i)
  %cmp98.i = icmp eq i32 %inc96.i, %cond.i
  br i1 %cmp98.i, label %find_sof.exit, label %sw.default.i.for.inc.i_crit_edge

sw.default.i.for.inc.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %sw.bb73.i, %sw.bb54.i, %sw.bb35.i, %if.then31.i, %sw.bb18.i.for.inc.sink.split.i_crit_edge, %sw.bb8.i, %sw.bb.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then31.i ], [ 1, %sw.bb.i.for.inc.sink.split.i_crit_edge ], [ %..i, %sw.bb8.i ], [ 3, %sw.bb18.i.for.inc.sink.split.i_crit_edge ], [ %switch.select156.i, %sw.bb35.i ], [ %switch.select160.i, %sw.bb54.i ], [ %switch.select164.i, %sw.bb73.i ]
  %23 = ptrtoint ptr %header_read.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %header_read.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %sw.default.i.for.inc.i_crit_edge, %sw.bb18.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge
  %inc104.i = add nuw nsw i32 %i.0152.i, 1
  %exitcond.not.i = icmp eq i32 %inc104.i, %len
  br i1 %exitcond.not.i, label %for.inc.i.if.end12_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

find_sof.exit:                                    ; preds = %sw.default.i
  %arrayidx92.i.le = getelementptr i8, ptr %data, i32 %i.0152.i
  %24 = ptrtoint ptr %header_read.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %header_read.i, align 4
  %add.ptr102.i = getelementptr i8, ptr %arrayidx92.i.le, i32 1
  %tobool.not = icmp eq ptr %add.ptr102.i, null
  br i1 %tobool.not, label %find_sof.exit.if.end12_crit_edge, label %if.then

find_sof.exit.if.end12_crit_edge:                 ; preds = %find_sof.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %find_sof.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bridge.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp = icmp eq i8 %26, 1
  %. = select i1 %cmp, i32 -18, i32 -12
  %.85 = select i1 %cmp, i32 3, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr102.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i32 %len, %sub.ptr.sub
  %sub7 = add i32 %., %sub.ptr.sub
  %27 = tail call i32 @llvm.smax.i32(i32 %sub7, i32 0)
  br label %if.end12

if.end12:                                         ; preds = %if.then, %find_sof.exit.if.end12_crit_edge, %for.inc.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  %tobool.not89 = phi i1 [ false, %if.then ], [ true, %find_sof.exit.if.end12_crit_edge ], [ true, %entry.if.end12_crit_edge ], [ true, %for.inc.i.if.end12_crit_edge ]
  %retval.0.i88 = phi ptr [ %add.ptr102.i, %if.then ], [ null, %find_sof.exit.if.end12_crit_edge ], [ null, %entry.if.end12_crit_edge ], [ null, %for.inc.i.if.end12_crit_edge ]
  %len.addr.0 = phi i32 [ %27, %if.then ], [ %len, %find_sof.exit.if.end12_crit_edge ], [ %len, %entry.if.end12_crit_edge ], [ %len, %for.inc.i.if.end12_crit_edge ]
  %lum_offset.1 = phi i32 [ %.85, %if.then ], [ 0, %find_sof.exit.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ 0, %for.inc.i.if.end12_crit_edge ]
  %len_after_sof.0 = phi i32 [ %sub, %if.then ], [ 0, %find_sof.exit.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ 0, %for.inc.i.if.end12_crit_edge ]
  %28 = ptrtoint ptr %cam1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cam1, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %30 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %31 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %29, i32 %idxprom, i32 7
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %priv, align 4
  %and = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.if.end24_crit_edge, label %if.then14

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %sizeimage = getelementptr %struct.v4l2_pix_format, ptr %29, i32 %idxprom, i32 5
  %34 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sizeimage, align 4
  %image_len = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %36 = ptrtoint ptr %image_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %image_len, align 8
  %add = add i32 %37, %len.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %35)
  %cmp19 = icmp sgt i32 %add, %35
  %sub22 = sub i32 %35, %37
  %spec.select = select i1 %cmp19, i32 %sub22, i32 %len.addr.0
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.end12.if.end24_crit_edge
  %len.addr.2 = phi i32 [ %spec.select, %if.then14 ], [ %len.addr.0, %if.end12.if.end24_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %len.addr.2) #6
  br i1 %tobool.not89, label %if.end24.if.end49_crit_edge, label %if.then26

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then26:                                        ; preds = %if.end24
  %arrayidx27 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 7, i32 %lum_offset.1
  %38 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %39 to i32
  %add30 = add nuw nsw i32 %lum_offset.1, 1
  %arrayidx31 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 7, i32 %add30
  %40 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %41 to i32
  %shl = shl nuw nsw i32 %conv32, 8
  %add33 = or i32 %shl, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add33)
  %cmp34 = icmp eq i32 %add33, 0
  br i1 %cmp34, label %land.lhs.true, label %if.then26.if.else40_crit_edge

if.then26.if.else40_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else40

land.lhs.true:                                    ; preds = %if.then26
  %prev_avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %42 = ptrtoint ptr %prev_avg_lum to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %prev_avg_lum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp36.not = icmp eq i32 %43, 0
  br i1 %cmp36.not, label %land.lhs.true.if.else40_crit_edge, label %if.then38

land.lhs.true.if.else40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else40

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %frames_to_drop = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %44 = ptrtoint ptr %frames_to_drop to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %frames_to_drop, align 1
  %45 = ptrtoint ptr %prev_avg_lum to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %prev_avg_lum, align 4
  br label %if.end42

if.else40:                                        ; preds = %land.lhs.true.if.else40_crit_edge, %if.then26.if.else40_crit_edge
  %prev_avg_lum41 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %46 = ptrtoint ptr %prev_avg_lum41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add33, ptr %prev_avg_lum41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then38
  %lum.0 = phi i32 [ -1, %if.then38 ], [ %add33, %if.else40 ]
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum, i32 noundef 4) #6
  %47 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %lum.0, ptr %avg_lum, align 4
  %frames_to_drop43 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %48 = ptrtoint ptr %frames_to_drop43 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %frames_to_drop43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool44.not = icmp eq i8 %49, 0
  br i1 %tobool44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i8 %49, -1
  %50 = ptrtoint ptr %frames_to_drop43 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %dec, ptr %frames_to_drop43, align 1
  br label %if.end48

if.else47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then45
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef nonnull %retval.0.i88, i32 noundef %len_after_sof.0) #6
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end24.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp slt i32 %1, 0
  br i1 %cmp.i.i, label %entry.sd_init.exit_crit_edge, label %if.end.i.i

entry.sd_init.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_init.exit

if.end.i.i:                                       ; preds = %entry
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %3, align 1
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.end.i.i.sd_init.exit_crit_edge

if.end.i.i.sd_init.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sd_init.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %10 = ptrtoint ptr %v4l2_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v4l2_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %call3.i.i) #9
  %12 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %sd_init.exit

sd_init.exit:                                     ; preds = %do.end.i.i, %if.end.i.i.sd_init.exit_crit_edge, %entry.sd_init.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_autogain(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_lum1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avg_lum1, i32 noundef 4) #6
  %0 = ptrtoint ptr %avg_lum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %avg_lum1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %autogain_ignore_frames = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %2 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autogain_ignore_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.not = icmp eq i8 %3, 0
  br i1 %cmp2.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i8 %3, -1
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor, align 1
  %idxprom = zext i8 %5 to i32
  %6 = lshr i32 299, %idxprom
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.not = icmp eq i32 %7, 0
  %. = select i1 %tobool.not.not, i32 500, i32 1500
  %.52 = select i1 %tobool.not.not, i32 5000, i32 13000
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %brightness, align 8
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end6.if.end12_crit_edge, label %if.then10

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %mul = mul i32 %11, %.52
  %div = sdiv i32 %mul, 127
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %desired_avg_lum.1 = phi i32 [ %div, %if.then10 ], [ %.52, %if.end6.if.end12_crit_edge ]
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exposure, align 4
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %maximum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 500, i64 %15)
  %cmp13 = icmp slt i64 %15, 500
  br i1 %cmp13, label %if.then15, label %if.else21

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @gspca_coarse_grained_expo_autogain(ptr noundef %gspca_dev, i32 noundef %1, i32 noundef %desired_avg_lum.1, i32 noundef %.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.then15.cleanup.sink.split_crit_edge

if.then15.cleanup.sink.split_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else21:                                        ; preds = %if.end12
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gain, align 8
  %maximum22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %maximum22 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %maximum22, align 8
  %conv23 = trunc i64 %19 to i32
  %mul24 = mul i32 %conv23, 9
  %div25 = sdiv i32 %mul24, 10
  %exposure_knee = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %20 = ptrtoint ptr %exposure_knee to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %exposure_knee, align 8
  %call26 = tail call i32 @gspca_expo_autogain(ptr noundef %gspca_dev, i32 noundef %1, i32 noundef %desired_avg_lum.1, i32 noundef %., i32 noundef %div25, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else21.cleanup_crit_edge, label %if.else21.cleanup.sink.split_crit_edge

if.else21.cleanup.sink.split_crit_edge:           ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else21.cleanup.sink.split_crit_edge, %if.then15.cleanup.sink.split_crit_edge, %if.then4
  %.sink = phi i8 [ %dec, %if.then4 ], [ 1, %if.then15.cleanup.sink.split_crit_edge ], [ 1, %if.else21.cleanup.sink.split_crit_edge ]
  %22 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %autogain_ignore_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else21.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_int_pkt_scan(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp eq i32 %len, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1 = icmp eq i8 %1, 1
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 212, i32 noundef 1) #6
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 212, i32 noundef 0) #6
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %i2c.i = alloca [8 x i8], align 8
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
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963794, i32 %4)
  %cmp = icmp eq i32 %4, 9963794
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %5 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %is_new, align 4
  %6 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  %gain = getelementptr i8, ptr %1, i32 192
  %9 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gain, align 8
  %default_value = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %default_value to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %default_value, align 8
  %conv = trunc i64 %12 to i32
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %val4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %val4, align 4
  %exposure = getelementptr i8, ptr %1, i32 188
  %14 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %exposure, align 4
  %default_value5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %default_value5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %default_value5, align 8
  %conv6 = trunc i64 %17 to i32
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 22
  %18 = ptrtoint ptr %val8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv6, ptr %val8, align 4
  %autogain_ignore_frames = getelementptr i8, ptr %1, i32 1060
  %19 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %autogain_ignore_frames, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %streaming = getelementptr i8, ptr %1, i32 238
  %20 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %streaming, align 2, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not = icmp eq i8 %21, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %23, label %if.end11.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963794, label %sw.bb13
    i32 9963800, label %sw.bb47
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @setbrightness(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  %exposure14 = getelementptr i8, ptr %1, i32 188
  %25 = ptrtoint ptr %exposure14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %exposure14, align 4
  %is_new15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %is_new15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load16 = load i32, ptr %is_new15, align 4
  %28 = and i32 %bf.load16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not = icmp eq i32 %28, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %sw.bb13.if.then28_crit_edge

sw.bb13.if.then28_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

lor.lhs.false:                                    ; preds = %sw.bb13
  %is_new20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %29 = ptrtoint ptr %is_new20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load21 = load i32, ptr %is_new20, align 4
  %30 = and i32 %bf.load21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool24.not = icmp eq i32 %30, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.end29_crit_edge, label %land.lhs.true25

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool27.not = icmp eq i32 %32, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end29_crit_edge, label %land.lhs.true25.if.then28_crit_edge

land.lhs.true25.if.then28_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true25.if.then28_crit_edge, %sw.bb13.if.then28_crit_edge
  tail call fastcc void @setexposure(ptr noundef %add.ptr)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true25.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge
  %gain30 = getelementptr i8, ptr %1, i32 192
  %33 = ptrtoint ptr %gain30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gain30, align 8
  %is_new31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %is_new31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load32 = load i32, ptr %is_new31, align 4
  %36 = and i32 %bf.load32, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool35.not = icmp eq i32 %36, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end29.if.then45_crit_edge

if.end29.if.then45_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false36:                                  ; preds = %if.end29
  %is_new37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %37 = ptrtoint ptr %is_new37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load38 = load i32, ptr %is_new37, align 4
  %38 = and i32 %bf.load38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool41.not = icmp eq i32 %38, 0
  br i1 %tobool41.not, label %lor.lhs.false36.sw.epilog_crit_edge, label %land.lhs.true42

lor.lhs.false36.sw.epilog_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true42:                                  ; preds = %lor.lhs.false36
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool44.not = icmp eq i32 %40, 0
  br i1 %tobool44.not, label %land.lhs.true42.sw.epilog_crit_edge, label %land.lhs.true42.if.then45_crit_edge

land.lhs.true42.if.then45_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

land.lhs.true42.sw.epilog_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then45:                                        ; preds = %land.lhs.true42.if.then45_crit_edge, %if.end29.if.then45_crit_edge
  tail call fastcc void @setgain(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end11
  %sensor.i = getelementptr i8, ptr %1, i32 1063
  %41 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sensor.i, align 1
  %43 = and i8 %42, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %switch.i = icmp eq i8 %43, 2
  br i1 %switch.i, label %if.then.i, label %sw.bb47.sw.epilog_crit_edge

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c.i) #6
  %44 = ptrtoint ptr %i2c.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -6917481748641087472, ptr %i2c.i, align 8
  %plfreq.i = getelementptr i8, ptr %1, i32 1028
  %45 = ptrtoint ptr %plfreq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %plfreq.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cond15.i = icmp eq i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp8.i = icmp eq i8 %42, 2
  %conv10.i = select i1 %cmp8.i, i8 79, i8 -118
  %.sink.i = select i1 %cond15.i, i8 %conv10.i, i8 0
  %49 = getelementptr inbounds [8 x i8], ptr %i2c.i, i32 0, i32 3
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink.i, ptr %49, align 1
  %idxprom.i = zext i8 %42 to i32
  %sensor_addr.i = getelementptr [9 x %struct.sensor_data], ptr @sensor_data, i32 0, i32 %idxprom.i, i32 4
  %51 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sensor_addr.i, align 4
  %arrayidx14.i = getelementptr inbounds [8 x i8], ptr %i2c.i, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx14.i, align 1
  call fastcc void @i2c_w(ptr noundef %add.ptr, ptr noundef nonnull %i2c.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb47.sw.epilog_crit_edge, %if.then45, %land.lhs.true42.sw.epilog_crit_edge, %lor.lhs.false36.sw.epilog_crit_edge, %sw.bb
  %54 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %55, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setbrightness(ptr nocapture noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %i2cOV = alloca [8 x i8], align 8
  %i2cpbright = alloca [8 x i8], align 8
  %i2cpdoit = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 2, label %entry.sw.bb_crit_edge
    i8 3, label %entry.sw.bb_crit_edge38
    i8 4, label %entry.sw.bb5_crit_edge
    i8 5, label %entry.sw.bb5_crit_edge39
  ]

entry.sw.bb5_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cOV) #6
  %3 = ptrtoint ptr %i2cOV to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -6917522430571315184, ptr %i2cOV, align 8
  %idxprom = zext i8 %1 to i32
  %sensor_addr = getelementptr [9 x %struct.sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 4
  %4 = ptrtoint ptr %sensor_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor_addr, align 4
  %arrayidx2 = getelementptr inbounds [8 x i8], ptr %i2cOV, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx2, align 1
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %brightness, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv3 = trunc i32 %10 to i8
  %arrayidx4 = getelementptr inbounds [8 x i8], ptr %i2cOV, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %arrayidx4, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cOV)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cOV) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpbright) #6
  %12 = ptrtoint ptr %i2cpbright to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -5746581029896847338, ptr %i2cpbright, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpdoit) #6
  %13 = ptrtoint ptr %i2cpdoit to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -6899495933138960362, ptr %i2cpdoit, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %if.then, label %sw.bb5.if.end_crit_edge

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr inbounds [8 x i8], ptr %i2cpbright, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr inbounds [8 x i8], ptr %i2cpdoit, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 19, ptr %arrayidx10, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5.if.end_crit_edge
  %brightness11 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %16 = ptrtoint ptr %brightness11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %brightness11, align 8
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %19)
  %cmp13 = icmp slt i32 %19, 127
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16 = getelementptr inbounds [8 x i8], ptr %i2cpbright, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx16, align 1
  %21 = trunc i32 %19 to i8
  %conv19 = sub i8 127, %21
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = trunc i32 %19 to i8
  %conv24 = add i8 %22, -127
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then15
  %conv24.sink = phi i8 [ %conv19, %if.then15 ], [ %conv24, %if.else ]
  %23 = getelementptr inbounds [8 x i8], ptr %i2cpbright, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv24.sink, ptr %23, align 4
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpbright)
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpdoit)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpdoit) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpbright) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end26, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setexposure(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %i2c = alloca [8 x i8], align 8
  %i2c15 = alloca [8 x i8], align 8
  %i2cpframerate = alloca [8 x i8], align 8
  %i2cpexpo = alloca [8 x i8], align 8
  %i2cpdoit = alloca [8 x i8], align 8
  %i2cpframerate108 = alloca [8 x i8], align 8
  %i2cpexpo109 = alloca [8 x i8], align 8
  %i2cpdoit110 = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 6, label %entry.sw.bb7_crit_edge
    i8 7, label %entry.sw.bb7_crit_edge181
    i8 2, label %entry.sw.bb14_crit_edge
    i8 3, label %entry.sw.bb14_crit_edge182
    i8 5, label %sw.bb77
    i8 4, label %sw.bb107
  ]

entry.sw.bb14_crit_edge182:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

entry.sw.bb7_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c) #6
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -4606860261893079017, ptr %i2c, align 8
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exposure, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %8 = lshr i32 %7, 8
  %conv3 = trunc i32 %8 to i8
  %arrayidx = getelementptr inbounds [8 x i8], ptr %i2c, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %arrayidx, align 1
  %conv5 = trunc i32 %7 to i8
  %arrayidx6 = getelementptr inbounds [8 x i8], ptr %i2c, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %arrayidx6, align 4
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2c)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge181
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp slt i32 %12, 0
  br i1 %cmp.i, label %sw.bb7.sw.epilog_crit_edge, label %if.end.i

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb7
  %exposure9 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %exposure9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %exposure9, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val10, align 4
  %.tr = trunc i32 %16 to i8
  %17 = shl i8 %.tr, 4
  %conv13 = or i8 %17, 11
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv13, ptr %19, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %24, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %25 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %25, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %26 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v4l2_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7, i32 noundef 25, i32 noundef %call3.i) #9
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c15) #6
  %29 = ptrtoint ptr %i2c15 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -5764589930848190448, ptr %i2c15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %sw.bb14.if.end_crit_edge

sw.bb14.if.end_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr inbounds [8 x i8], ptr %i2c15, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -64, ptr %arrayidx19, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb14.if.end_crit_edge
  %reg10_max.0 = phi i32 [ 77, %if.then ], [ 65, %sw.bb14.if.end_crit_edge ]
  %31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %exposure20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %exposure20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %exposure20, align 4
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val21, align 4
  %mul = mul i32 %35, 15
  %add = add i32 %mul, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add)
  %cmp22 = icmp slt i32 %add, 1000
  %div = sdiv i32 %add, 1000
  %36 = tail call i32 @llvm.smin.i32(i32 %div, i32 16)
  %reg11.0 = select i1 %cmp22, i32 1, i32 %36
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %37 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %38)
  %cmp31 = icmp eq i32 %38, 640
  %39 = tail call i32 @llvm.smax.i32(i32 %reg11.0, i32 4)
  %reg11.1 = select i1 %cmp31, i32 %39, i32 %reg11.0
  %mul40 = mul i32 %mul, %reg10_max.0
  %mul41 = mul nsw i32 %reg11.1, 1000
  %div42 = sdiv i32 %mul40, %mul41
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %31, align 8
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp ne i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %div42)
  %cmp45 = icmp slt i32 %div42, 10
  %or.cond = select i1 %tobool.not, i1 %cmp45, i1 false
  %44 = tail call i32 @llvm.smin.i32(i32 %div42, i32 %reg10_max.0)
  %idxprom = zext i8 %1 to i32
  %sensor_addr = getelementptr [9 x %struct.sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 4
  %45 = ptrtoint ptr %sensor_addr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sensor_addr, align 4
  %arrayidx56 = getelementptr inbounds [8 x i8], ptr %i2c15, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx56, align 1
  %48 = trunc i32 %44 to i8
  %conv57 = select i1 %or.cond, i8 10, i8 %48
  %arrayidx58 = getelementptr inbounds [8 x i8], ptr %i2c15, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv57, ptr %arrayidx58, align 1
  %arrayidx59 = getelementptr inbounds [8 x i8], ptr %i2c15, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx59, align 4
  %52 = trunc i32 %reg11.1 to i8
  %53 = add i8 %52, -1
  %conv62 = or i8 %53, %51
  store i8 %conv62, ptr %arrayidx59, align 4
  %reg1163 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %54 = ptrtoint ptr %reg1163 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %reg1163, align 8
  %conv64 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %reg11.1, i32 %conv64)
  %cmp65 = icmp eq i32 %reg11.1, %conv64
  br i1 %cmp65, label %if.then67, label %if.end.if.end69_crit_edge

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then67:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %i2c15 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -96, ptr %i2c15, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end.if.end69_crit_edge
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2c15)
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %57 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp71 = icmp eq i32 %58, 0
  br i1 %cmp71, label %if.then73, label %if.end69.if.end76_crit_edge

if.end69.if.end76_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %reg1163 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %52, ptr %reg1163, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end69.if.end76_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c15) #6
  br label %sw.epilog

sw.bb77:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpframerate) #6
  %60 = ptrtoint ptr %i2cpframerate to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 -5746588726478241770, ptr %i2cpframerate, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpexpo) #6
  %61 = ptrtoint ptr %i2cpexpo to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -6899498136457183210, ptr %i2cpexpo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpdoit) #6
  %62 = ptrtoint ptr %i2cpdoit to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 -6899495933138960362, ptr %i2cpdoit, align 8
  %exposure78 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %exposure78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %exposure78, align 4
  %val79 = getelementptr inbounds %struct.v4l2_ctrl, ptr %64, i32 0, i32 22
  %65 = ptrtoint ptr %val79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %66)
  %cmp80 = icmp slt i32 %66, 200
  br i1 %cmp80, label %if.then82, label %if.else90

if.then82:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  %mul85 = mul i32 %66, 255
  %div86.neg = sdiv i32 %mul85, -200
  %67 = trunc i32 %div86.neg to i8
  %conv88 = add i8 %67, -1
  %arrayidx89 = getelementptr inbounds [8 x i8], ptr %i2cpexpo, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv88, ptr %arrayidx89, align 1
  br label %if.end97

if.else90:                                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  %69 = mul i32 %66, 1000
  %mul94 = add i32 %69, -200000
  %div95 = sdiv i32 %mul94, 229
  %add96 = add nsw i32 %div95, 500
  br label %if.end97

if.end97:                                         ; preds = %if.else90, %if.then82
  %framerate_ctrl.0 = phi i32 [ 500, %if.then82 ], [ %add96, %if.else90 ]
  %70 = lshr i32 %framerate_ctrl.0, 6
  %conv99 = trunc i32 %70 to i8
  %arrayidx100 = getelementptr inbounds [8 x i8], ptr %i2cpframerate, i32 0, i32 3
  %71 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv99, ptr %arrayidx100, align 1
  %72 = trunc i32 %framerate_ctrl.0 to i8
  %conv102 = and i8 %72, 63
  %arrayidx103 = getelementptr inbounds [8 x i8], ptr %i2cpframerate, i32 0, i32 4
  %73 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv102, ptr %arrayidx103, align 4
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpframerate)
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpexpo)
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpdoit)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpdoit) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpexpo) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpframerate) #6
  br label %sw.epilog

sw.bb107:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpframerate108) #6
  %74 = ptrtoint ptr %i2cpframerate108 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 -5674532231951941612, ptr %i2cpframerate108, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpexpo109) #6
  %75 = ptrtoint ptr %i2cpexpo109 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 -6827451537535533036, ptr %i2cpexpo109, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpdoit110) #6
  %76 = ptrtoint ptr %i2cpdoit110 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 -6827436140077776876, ptr %i2cpdoit110, align 8
  %exposure112 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %77 = ptrtoint ptr %exposure112 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %exposure112, align 4
  %val113 = getelementptr inbounds %struct.v4l2_ctrl, ptr %78, i32 0, i32 22
  %79 = ptrtoint ptr %val113 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %80)
  %cmp114 = icmp slt i32 %80, 150
  br i1 %cmp114, label %if.then116, label %if.else122

if.then116:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #8
  %81 = trunc i32 %80 to i8
  %conv120 = sub i8 -106, %81
  %arrayidx121 = getelementptr inbounds [8 x i8], ptr %i2cpexpo109, i32 0, i32 3
  %82 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv120, ptr %arrayidx121, align 1
  br label %if.end129

if.else122:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #8
  %83 = mul i32 %80, 1000
  %mul126 = add i32 %83, -150000
  %div127 = sdiv i32 %mul126, 230
  %add128 = add nsw i32 %div127, 300
  br label %if.end129

if.end129:                                        ; preds = %if.else122, %if.then116
  %framerate_ctrl111.0 = phi i32 [ 300, %if.then116 ], [ %add128, %if.else122 ]
  %84 = lshr i32 %framerate_ctrl111.0, 4
  %conv131 = trunc i32 %84 to i8
  %arrayidx132 = getelementptr inbounds [8 x i8], ptr %i2cpframerate108, i32 0, i32 3
  %85 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv131, ptr %arrayidx132, align 1
  %86 = trunc i32 %framerate_ctrl111.0 to i8
  %conv134 = and i8 %86, 15
  %arrayidx135 = getelementptr inbounds [8 x i8], ptr %i2cpframerate108, i32 0, i32 4
  %87 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv134, ptr %arrayidx135, align 4
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpframerate108)
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpexpo109)
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpdoit110)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpdoit110) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpexpo109) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpframerate108) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end129, %if.end97, %if.end76, %do.end.i, %if.end.i.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setgain(ptr nocapture noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %i2c = alloca [8 x i8], align 8
  %i2c14 = alloca [8 x i8], align 8
  %i2c21 = alloca [8 x i8], align 8
  %i2c79 = alloca [8 x i8], align 8
  %i2cpgain = alloca [8 x i8], align 8
  %i2cpcolorgain = alloca [8 x i8], align 8
  %i2cpdoit = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gain1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %gain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gain1, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %conv = trunc i32 %3 to i8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %5, label %sw.default [
    i8 0, label %sw.bb
    i8 6, label %entry.sw.bb13_crit_edge
    i8 8, label %entry.sw.bb13_crit_edge195
    i8 7, label %sw.bb20
    i8 2, label %entry.sw.bb78_crit_edge
    i8 3, label %entry.sw.bb78_crit_edge196
    i8 4, label %entry.sw.bb93_crit_edge
    i8 5, label %entry.sw.bb93_crit_edge197
  ]

entry.sw.bb93_crit_edge197:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb93

entry.sw.bb93_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb93

entry.sw.bb78_crit_edge196:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb78

entry.sw.bb78_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb78

entry.sw.bb13_crit_edge195:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c) #6
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -4606847067753545705, ptr %i2c, align 8
  %conv4 = sub i8 63, %conv
  %arrayidx = getelementptr inbounds [8 x i8], ptr %i2c, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %arrayidx, align 1
  %arrayidx8 = getelementptr inbounds [8 x i8], ptr %i2c, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %arrayidx8, align 4
  %arrayidx12 = getelementptr inbounds [8 x i8], ptr %i2c, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %arrayidx12, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2c)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c14) #6
  %11 = ptrtoint ptr %i2c14 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 3463551926765879312, ptr %i2c14, align 8
  %conv17 = xor i8 %conv, -1
  %arrayidx18 = getelementptr inbounds [8 x i8], ptr %i2c14, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv17, ptr %arrayidx18, align 4
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2c14)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c14) #6
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c21) #6
  %13 = ptrtoint ptr %i2c21 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -5737302251001610217, ptr %i2c21, align 8
  %conv24 = and i32 %3, 255
  %conv25 = xor i32 %conv24, 255
  %14 = lshr i32 %conv25, 7
  %arrayidx26 = getelementptr inbounds [8 x i8], ptr %i2c21, i32 0, i32 3
  %15 = trunc i32 %14 to i8
  %16 = trunc i32 %conv25 to i8
  %17 = lshr i8 %16, 5
  %18 = and i8 %17, 2
  %19 = lshr i8 %16, 3
  %20 = and i8 %19, 4
  %21 = lshr i8 %16, 1
  %22 = and i8 %21, 8
  %23 = shl i8 %16, 1
  %24 = and i8 %23, 16
  %25 = shl i8 %16, 3
  %26 = and i8 %25, 32
  %27 = shl i8 %16, 5
  %28 = and i8 %27, 64
  %29 = shl i8 %16, 7
  %conv28 = or i8 %29, %15
  %conv35 = or i8 %conv28, %18
  %conv42 = or i8 %conv35, %20
  %conv49 = or i8 %conv42, %22
  %conv55 = or i8 %conv49, %24
  %conv62 = or i8 %conv55, %26
  %conv69 = or i8 %conv62, %28
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv69, ptr %arrayidx26, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2c21)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c21) #6
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry.sw.bb78_crit_edge, %entry.sw.bb78_crit_edge196
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2c79) #6
  %31 = ptrtoint ptr %i2c79 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -6917529027641081840, ptr %i2c79, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp ne i8 %5, 3
  %conv83 = and i32 %3, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv83)
  %cmp84.not = icmp eq i32 %conv83, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp84.not
  %conv87 = add i8 %conv, 16
  %gain.0 = select i1 %or.cond, i8 %conv, i8 %conv87
  %idxprom = zext i8 %5 to i32
  %sensor_addr = getelementptr [9 x %struct.sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 4
  %32 = ptrtoint ptr %sensor_addr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sensor_addr, align 4
  %arrayidx90 = getelementptr inbounds [8 x i8], ptr %i2c79, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx90, align 1
  %arrayidx91 = getelementptr inbounds [8 x i8], ptr %i2c79, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %gain.0, ptr %arrayidx91, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2c79)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2c79) #6
  br label %sw.epilog

sw.bb93:                                          ; preds = %entry.sw.bb93_crit_edge, %entry.sw.bb93_crit_edge197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpgain) #6
  %36 = ptrtoint ptr %i2cpgain to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -6899497036945555435, ptr %i2cpgain, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpcolorgain) #6
  %37 = ptrtoint ptr %i2cpcolorgain to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -4593663923336511467, ptr %i2cpcolorgain, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i2cpdoit) #6
  %38 = ptrtoint ptr %i2cpdoit to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -6899495933138960362, ptr %i2cpdoit, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp96 = icmp eq i8 %5, 4
  br i1 %cmp96, label %if.then98, label %sw.bb93.if.end103_crit_edge

sw.bb93.if.end103_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then98:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx99 = getelementptr inbounds [8 x i8], ptr %i2cpgain, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 14, ptr %arrayidx99, align 2
  %40 = ptrtoint ptr %i2cpcolorgain to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -48, ptr %i2cpcolorgain, align 8
  %arrayidx101 = getelementptr inbounds [8 x i8], ptr %i2cpcolorgain, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 9, ptr %arrayidx101, align 2
  %arrayidx102 = getelementptr inbounds [8 x i8], ptr %i2cpdoit, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 19, ptr %arrayidx102, align 2
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %sw.bb93.if.end103_crit_edge
  %arrayidx104 = getelementptr inbounds [8 x i8], ptr %i2cpgain, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv, ptr %arrayidx104, align 1
  %44 = lshr i8 %conv, 1
  %arrayidx108 = getelementptr inbounds [8 x i8], ptr %i2cpcolorgain, i32 0, i32 3
  %45 = zext i8 %44 to i32
  %46 = call ptr @memset(ptr %arrayidx108, i32 %45, i32 4)
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpgain)
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpcolorgain)
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %i2cpdoit)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpdoit) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpcolorgain) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i2cpgain) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %47 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp125 = icmp eq i8 %48, 1
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %49 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i = icmp slt i32 %50, 0
  br i1 %cmp125, label %if.then127, label %if.else

if.then127:                                       ; preds = %sw.default
  br i1 %cmp.i, label %if.then127.sw.epilog_crit_edge, label %if.end.i

if.then127.sw.epilog_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then127
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %51 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb_buf.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv, ptr %52, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 1
  %54 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 2
  %55 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv, ptr %buf.sroa.7.0..sroa_idx, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i = shl i32 %59, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %60 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef %60, i16 noundef zeroext 3, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %61 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %v4l2_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.7, i32 noundef 5, i32 noundef %call3.i) #9
  %63 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  br i1 %cmp.i, label %if.else.sw.epilog_crit_edge, label %if.end.i191

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i191:                                      ; preds = %if.else
  %conv131 = shl i32 %3, 4
  %or134 = or i32 %conv131, %3
  %conv135 = trunc i32 %or134 to i8
  %usb_buf.i185 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %64 = ptrtoint ptr %usb_buf.i185 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %usb_buf.i185, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv135, ptr %65, align 1
  %buf130.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %65, i32 1
  %67 = ptrtoint ptr %buf130.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv, ptr %buf130.sroa.5.0..sroa_idx, align 1
  %dev.i186 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %68 = ptrtoint ptr %dev.i186 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i186, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i.i187 = shl i32 %71, 8
  %or.i188 = or i32 %shl.i.i187, -2147483648
  %72 = load ptr, ptr %usb_buf.i185, align 4
  %call3.i189 = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or.i188, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 16, i16 noundef zeroext 0, ptr noundef %72, i16 noundef zeroext 2, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i189)
  %cmp4.i190 = icmp slt i32 %call3.i189, 0
  br i1 %cmp4.i190, label %do.end.i193, label %if.end.i191.sw.epilog_crit_edge

if.end.i191.sw.epilog_crit_edge:                  ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i193:                                      ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i192 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %73 = ptrtoint ptr %v4l2_dev.i192 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %v4l2_dev.i192, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.7, i32 noundef 16, i32 noundef %call3.i189) #9
  %75 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call3.i189, ptr %usb_err.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i193, %if.end.i191.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %do.end.i, %if.end.i.sw.epilog_crit_edge, %if.then127.sw.epilog_crit_edge, %if.end103, %sw.bb78, %sw.bb20, %sw.bb13, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_w(ptr nocapture noundef %gspca_dev, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %buf, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef %11, i16 noundef zeroext 8, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_w.exit_crit_edge

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %v4l2_dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  %12 = ptrtoint ptr %v4l2_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v4l2_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef 8, i32 noundef %call3.i) #9
  %14 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call3.i, ptr %usb_err, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge
  %v4l2_dev.i40 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %reg_r.exit.while.cond_crit_edge, %reg_w.exit
  %retry.0 = phi i32 [ 60, %reg_w.exit ], [ %dec, %reg_r.exit.while.cond_crit_edge ]
  %dec = add nsw i32 %retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool.not = icmp eq i32 %retry.0, 0
  br i1 %tobool.not, label %do.end18, label %while.body

while.body:                                       ; preds = %while.cond
  %15 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2 = icmp slt i32 %16, 0
  br i1 %cmp2, label %while.body.cleanup_crit_edge, label %if.end4

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #6
  %17 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i33 = icmp slt i32 %18, 0
  br i1 %cmp.i33, label %if.end4.reg_r.exit_crit_edge, label %if.end.i39

if.end4.reg_r.exit_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

if.end.i39:                                       ; preds = %if.end4
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i35 = shl i32 %22, 8
  %or2.i = or i32 %shl.i.i35, -2147483520
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %call3.i37 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef %24, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i37)
  %cmp4.i38 = icmp slt i32 %call3.i37, 0
  br i1 %cmp4.i38, label %do.end.i41, label %if.end.i39.reg_r.exit_crit_edge

if.end.i39.reg_r.exit_crit_edge:                  ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end.i41:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %v4l2_dev.i40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %v4l2_dev.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.2, i32 noundef 8, i32 noundef %call3.i37) #9
  %27 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call3.i37, ptr %usb_err, align 8
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %29, align 1
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i41, %if.end.i39.reg_r.exit_crit_edge, %if.end4.reg_r.exit_crit_edge
  %31 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %35 = and i8 %34, 4
  %tobool5.not = icmp eq i8 %35, 0
  br i1 %tobool5.not, label %reg_r.exit.while.cond_crit_edge, label %if.then6

reg_r.exit.while.cond_crit_edge:                  ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then6:                                         ; preds = %reg_r.exit
  %36 = and i8 %34, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool11.not = icmp eq i8 %36, 0
  br i1 %tobool11.not, label %if.then6.cleanup_crit_edge, label %do.end

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %v4l2_dev.i40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %v4l2_dev.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.12, ptr noundef %buf) #9
  br label %cleanup.sink.split

do.end18:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %v4l2_dev.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %v4l2_dev.i40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.15) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end18, %do.end
  %41 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -5, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then6.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_coarse_grained_expo_autogain(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_expo_autogain(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_sonixb__307_1469_sd_driver_init6, !8, !"__initcall__kmod_gspca_sonixb__307_1469_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 1469, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 1458, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 1457, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 1398, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 453, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @reg_r._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @reg_r._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @sensor_data, !26, !"sensor_data", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 422, i32 33}
!27 = !{ptr @initHv7131d, !28, !"initHv7131d", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 174, i32 19}
!29 = !{ptr @hv7131d_sensor_init, !30, !"hv7131d_sensor_init", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 180, i32 19}
!31 = !{ptr @initHv7131r, !32, !"initHv7131r", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 188, i32 19}
!33 = !{ptr @hv7131r_sensor_init, !34, !"hv7131r_sensor_init", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 194, i32 19}
!35 = !{ptr @initOv6650, !36, !"initOv6650", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 201, i32 19}
!37 = !{ptr @ov6650_sensor_init, !38, !"ov6650_sensor_init", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 207, i32 19}
!39 = !{ptr @initOv7630, !40, !"initOv7630", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 239, i32 19}
!41 = !{ptr @ov7630_sensor_init, !42, !"ov7630_sensor_init", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 246, i32 19}
!43 = !{ptr @initPas106, !44, !"initPas106", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 268, i32 19}
!45 = !{ptr @pas106_sensor_init, !46, !"pas106_sensor_init", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 299, i32 19}
!47 = !{ptr @initPas202, !48, !"initPas202", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 341, i32 19}
!49 = !{ptr @pas202_sensor_init, !50, !"pas202_sensor_init", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 365, i32 19}
!51 = !{ptr @initTas5110c, !52, !"initTas5110c", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 381, i32 19}
!53 = !{ptr @tas5110c_sensor_init, !54, !"tas5110c_sensor_init", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 395, i32 19}
!55 = !{ptr @initTas5110d, !56, !"initTas5110d", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 388, i32 19}
!57 = !{ptr @tas5110d_sensor_init, !58, !"tas5110d_sensor_init", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 404, i32 19}
!59 = !{ptr @initTas5130, !60, !"initTas5130", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 408, i32 19}
!61 = !{ptr @tas5130_sensor_init, !62, !"tas5130_sensor_init", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 414, i32 19}
!63 = !{ptr @vga_mode, !64, !"vga_mode", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 119, i32 37}
!65 = !{ptr @sif_mode, !66, !"sif_mode", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 141, i32 37}
!67 = !{ptr @.str.7, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 485, i32 3}
!69 = !{ptr @.str.8, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @reg_w._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @reg_w._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @sd_init_controls._key, !73, !"_key", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 1004, i32 2}
!74 = !{ptr @.str.9, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 1077, i32 3}
!77 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sd_init_controls._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sd_init_controls._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @sd_ctrl_ops, !81, !"sd_ctrl_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 993, i32 35}
!82 = !{ptr @.str.12, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 507, i32 5}
!84 = !{ptr @.str.13, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @i2c_w._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @i2c_w._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.15, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 515, i32 2}
!89 = !{ptr @i2c_w._entry.14, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @i2c_w._entry_ptr.16, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @device_table, !92, !"device_table", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/sonixb.c", i32 1417, i32 35}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
