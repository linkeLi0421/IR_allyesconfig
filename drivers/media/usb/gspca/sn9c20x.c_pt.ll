; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/sn9c20x.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/sn9c20x.c"
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_reg_u8 = type { i8, i8 }
%struct.i2c_reg_u16 = type { i8, i16 }
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
%struct.sd = type { %struct.gspca_dev, %struct.anon.108, %struct.anon.109, %struct.anon.110, ptr, %struct.anon.111, ptr, ptr, %struct.work_struct, i32, i16, i8, i8, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8, i8, [589 x i8], i8 }
%struct.anon.108 = type { ptr, ptr, ptr, ptr }
%struct.anon.109 = type { ptr, ptr }
%struct.anon.110 = type { ptr, ptr }
%struct.anon.111 = type { ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.v4l2_dbg_match = type { i32, %union.anon.89 }
%union.anon.89 = type { i32, [28 x i8] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_chip_info = type { %struct.v4l2_dbg_match, [32 x i8], i32, [32 x i32] }

@__UNIQUE_ID_author303 = internal constant [101 x i8] c"gspca_sn9c20x.author=Brian Johnson <brijohn@gmail.com>, microdia project <microdia@googlegroups.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_sn9c20x.description=GSPCA/SN9C20X USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_sn9c20x.file=drivers/media/usb/gspca/gspca_sn9c20x\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_sn9c20x.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_sn9c20x__307_2409_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_sn9c20x\00", [18 x i8] zeroinitializer }, align 32
@device_table = internal constant { [38 x %struct.usb_device_id], [240 x i8] } { [38 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3141, i16 25152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2141 }, %struct.usb_device_id { i16 3, i16 3141, i16 25154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 526685 }, %struct.usb_device_id { i16 3, i16 3141, i16 25160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 304 }, %struct.usb_device_id { i16 3, i16 3141, i16 25164, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2653 }, %struct.usb_device_id { i16 3, i16 3141, i16 25166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131632 }, %struct.usb_device_id { i16 3, i16 3141, i16 25167, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 327728 }, %struct.usb_device_id { i16 3, i16 3141, i16 25169, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 48 }, %struct.usb_device_id { i16 3, i16 3141, i16 25171, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 48 }, %struct.usb_device_id { i16 3, i16 3141, i16 25184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1057 }, %struct.usb_device_id { i16 3, i16 3141, i16 25200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3072 }, %struct.usb_device_id { i16 3, i16 3141, i16 25211, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 262945 }, %struct.usb_device_id { i16 3, i16 3141, i16 25212, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2833 }, %struct.usb_device_id { i16 3, i16 3141, i16 25215, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 48 }, %struct.usb_device_id { i16 3, i16 3141, i16 25216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2141 }, %struct.usb_device_id { i16 3, i16 3141, i16 25218, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2397 }, %struct.usb_device_id { i16 3, i16 3141, i16 25224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 304 }, %struct.usb_device_id { i16 3, i16 3141, i16 25228, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2653 }, %struct.usb_device_id { i16 3, i16 3141, i16 25230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 560 }, %struct.usb_device_id { i16 3, i16 3141, i16 25231, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 48 }, %struct.usb_device_id { i16 3, i16 3141, i16 25248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1057 }, %struct.usb_device_id { i16 3, i16 3141, i16 25264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3072 }, %struct.usb_device_id { i16 3, i16 3141, i16 25267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131376 }, %struct.usb_device_id { i16 3, i16 3141, i16 25275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131873 }, %struct.usb_device_id { i16 3, i16 3141, i16 25276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2833 }, %struct.usb_device_id { i16 3, i16 1118, i16 244, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 48 }, %struct.usb_device_id { i16 3, i16 5215, i16 317, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 801 }, %struct.usb_device_id { i16 3, i16 1112, i16 28713, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2833 }, %struct.usb_device_id { i16 3, i16 1112, i16 28741, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 133725 }, %struct.usb_device_id { i16 3, i16 1112, i16 28746, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2653 }, %struct.usb_device_id { i16 3, i16 1112, i16 28748, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2653 }, %struct.usb_device_id { i16 3, i16 -24216, i16 1552, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2833 }, %struct.usb_device_id { i16 3, i16 -24216, i16 1553, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2833 }, %struct.usb_device_id { i16 3, i16 -24216, i16 1555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2833 }, %struct.usb_device_id { i16 3, i16 -24216, i16 1560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2833 }, %struct.usb_device_id { i16 3, i16 -24216, i16 1556, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2397 }, %struct.usb_device_id { i16 3, i16 -24216, i16 1557, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2397 }, %struct.usb_device_id { i16 3, i16 -24216, i16 1559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2397 }, %struct.usb_device_id zeroinitializer], [240 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr @sd_stopN, ptr @sd_stop0, ptr @sd_dqcallback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_dbg_s_register, ptr @sd_dbg_g_register, ptr @sd_chip_info, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sxga_mode = internal constant { [10 x %struct.v4l2_pix_format], [96 x i8] } { [10 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1195724874, i32 1, i32 160, i32 10190, i32 7, i32 32, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 160, i32 120, i32 825770306, i32 1, i32 160, i32 19200, i32 8, i32 16, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 160, i32 120, i32 808597843, i32 1, i32 160, i32 28800, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 38990, i32 7, i32 33, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 825770306, i32 1, i32 320, i32 76800, i32 8, i32 17, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 808597843, i32 1, i32 320, i32 115200, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 154190, i32 7, i32 34, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 18, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 808597843, i32 1, i32 640, i32 460800, i32 8, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 825770306, i32 1, i32 1280, i32 1310720, i32 8, i32 147, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [96 x i8] zeroinitializer }, align 32
@mono_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1497715271, i32 1, i32 160, i32 19200, i32 8, i32 16, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1497715271, i32 1, i32 320, i32 76800, i32 8, i32 17, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1497715271, i32 1, i32 640, i32 307200, i32 8, i32 18, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 1497715271, i32 1, i32 1280, i32 1310720, i32 8, i32 147, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [9 x %struct.v4l2_pix_format], [112 x i8] } { [9 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1195724874, i32 1, i32 160, i32 10190, i32 7, i32 32, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 160, i32 120, i32 825770306, i32 1, i32 160, i32 19200, i32 8, i32 16, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 160, i32 120, i32 808597843, i32 1, i32 160, i32 28800, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 38990, i32 7, i32 33, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 825770306, i32 1, i32 320, i32 76800, i32 8, i32 17, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 808597843, i32 1, i32 320, i32 115200, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 154190, i32 7, i32 34, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 18, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 808597843, i32 1, i32 640, i32 460800, i32 8, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [112 x i8] zeroinitializer }, align 32
@sd_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&sd->work)\00", [35 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@qual_upd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: qual_upd %d%%\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qual_upd\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/sn9c20x.c\00", [62 x i8] zeroinitializer }, align 32
@qual_upd._entry_ptr = internal global ptr @qual_upd._entry, section ".printk_index", align 4
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_sn9c20x: Write register %02x failed %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@bridge_init = internal constant { [58 x [2 x i16]], [56 x i8] } { [58 x [2 x i16]] [[2 x i16] [i16 4096, i16 120], [2 x i16] [i16 4097, i16 64], [2 x i16] [i16 4098, i16 28], [2 x i16] [i16 4128, i16 128], [2 x i16] [i16 4193, i16 1], [2 x i16] [i16 4199, i16 64], [2 x i16] [i16 4200, i16 48], [2 x i16] [i16 4201, i16 32], [2 x i16] [i16 4202, i16 16], [2 x i16] [i16 4203, i16 8], [2 x i16] [i16 4488, i16 135], [2 x i16] [i16 4513, i16 0], [2 x i16] [i16 4514, i16 0], [2 x i16] [i16 4515, i16 106], [2 x i16] [i16 4516, i16 80], [2 x i16] [i16 4523, i16 0], [2 x i16] [i16 4524, i16 0], [2 x i16] [i16 4525, i16 80], [2 x i16] [i16 4526, i16 60], [2 x i16] [i16 4490, i16 4], [2 x i16] [i16 917, i16 4], [2 x i16] [i16 4536, i16 58], [2 x i16] [i16 4491, i16 14], [2 x i16] [i16 4343, i16 5], [2 x i16] [i16 4344, i16 20], [2 x i16] [i16 4346, i16 255], [2 x i16] [i16 4345, i16 0], [2 x i16] [i16 4538, i16 10], [2 x i16] [i16 4517, i16 45], [2 x i16] [i16 4518, i16 45], [2 x i16] [i16 4519, i16 58], [2 x i16] [i16 4520, i16 5], [2 x i16] [i16 4521, i16 4], [2 x i16] [i16 4522, i16 63], [2 x i16] [i16 4527, i16 40], [2 x i16] [i16 4528, i16 216], [2 x i16] [i16 4529, i16 20], [2 x i16] [i16 4530, i16 236], [2 x i16] [i16 4531, i16 50], [2 x i16] [i16 4532, i16 221], [2 x i16] [i16 4533, i16 50], [2 x i16] [i16 4534, i16 221], [2 x i16] [i16 4320, i16 44], [2 x i16] [i16 4540, i16 64], [2 x i16] [i16 4541, i16 1], [2 x i16] [i16 4542, i16 240], [2 x i16] [i16 4543, i16 0], [2 x i16] [i16 4492, i16 31], [2 x i16] [i16 4493, i16 31], [2 x i16] [i16 4494, i16 31], [2 x i16] [i16 4495, i16 31], [2 x i16] [i16 4480, i16 1], [2 x i16] [i16 4481, i16 0], [2 x i16] [i16 4482, i16 1], [2 x i16] [i16 4483, i16 0], [2 x i16] [i16 4484, i16 80], [2 x i16] [i16 4485, i16 128], [2 x i16] [i16 4103, i16 0]], [56 x i8] zeroinitializer }, align 32
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 1813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_sn9c20x: Device initialization failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sd_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.10 = internal global ptr @sd_init._entry.9, section ".printk_index", align 4
@sd_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.4, i32 1834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_sn9c20x: OV9650 sensor detected\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.13 = internal global ptr @sd_init._entry.11, section ".printk_index", align 4
@sd_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.4, i32 1840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_sn9c20x: OV9655 sensor detected\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.16 = internal global ptr @sd_init._entry.14, section ".printk_index", align 4
@sd_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.4, i32 1846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_sn9c20x: SOI968 sensor detected\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.19 = internal global ptr @sd_init._entry.17, section ".printk_index", align 4
@sd_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.4, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_sn9c20x: OV7660 sensor detected\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.22 = internal global ptr @sd_init._entry.20, section ".printk_index", align 4
@sd_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.4, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_sn9c20x: OV7670 sensor detected\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.25 = internal global ptr @sd_init._entry.23, section ".printk_index", align 4
@sd_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.4, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_sn9c20x: MT9VPRB sensor detected\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.28 = internal global ptr @sd_init._entry.26, section ".printk_index", align 4
@sd_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.8, ptr @.str.4, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_sn9c20x: MT9M111 sensor detected\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.31 = internal global ptr @sd_init._entry.29, section ".printk_index", align 4
@sd_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.8, ptr @.str.4, i32 1876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_sn9c20x: MT9M112 sensor detected\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.34 = internal global ptr @sd_init._entry.32, section ".printk_index", align 4
@sd_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.8, ptr @.str.4, i32 1887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_sn9c20x: HV7131R sensor detected\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.37 = internal global ptr @sd_init._entry.35, section ".printk_index", align 4
@sd_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.8, ptr @.str.4, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_sn9c20x: Unsupported sensor\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.40 = internal global ptr @sd_init._entry.38, section ".printk_index", align 4
@ov9650_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013gspca_sn9c20x: sensor id for ov9650 doesn't match (0x%04x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov9650_init_sensor\00", [45 x i8] zeroinitializer }, align 32
@ov9650_init_sensor._entry_ptr = internal global ptr @ov9650_init_sensor._entry, section ".printk_index", align 4
@ov9650_init = internal constant { [79 x %struct.i2c_reg_u8], [34 x i8] } { [79 x %struct.i2c_reg_u8] [%struct.i2c_reg_u8 zeroinitializer, %struct.i2c_reg_u8 { i8 1, i8 120 }, %struct.i2c_reg_u8 { i8 2, i8 120 }, %struct.i2c_reg_u8 { i8 3, i8 54 }, %struct.i2c_reg_u8 { i8 4, i8 3 }, %struct.i2c_reg_u8 { i8 5, i8 0 }, %struct.i2c_reg_u8 { i8 6, i8 0 }, %struct.i2c_reg_u8 { i8 8, i8 0 }, %struct.i2c_reg_u8 { i8 9, i8 1 }, %struct.i2c_reg_u8 { i8 12, i8 0 }, %struct.i2c_reg_u8 { i8 13, i8 0 }, %struct.i2c_reg_u8 { i8 14, i8 -96 }, %struct.i2c_reg_u8 { i8 15, i8 82 }, %struct.i2c_reg_u8 { i8 16, i8 124 }, %struct.i2c_reg_u8 { i8 17, i8 -128 }, %struct.i2c_reg_u8 { i8 18, i8 69 }, %struct.i2c_reg_u8 { i8 19, i8 -62 }, %struct.i2c_reg_u8 { i8 20, i8 46 }, %struct.i2c_reg_u8 { i8 21, i8 0 }, %struct.i2c_reg_u8 { i8 22, i8 7 }, %struct.i2c_reg_u8 { i8 23, i8 36 }, %struct.i2c_reg_u8 { i8 24, i8 -59 }, %struct.i2c_reg_u8 { i8 25, i8 0 }, %struct.i2c_reg_u8 { i8 26, i8 60 }, %struct.i2c_reg_u8 { i8 27, i8 0 }, %struct.i2c_reg_u8 { i8 30, i8 4 }, %struct.i2c_reg_u8 { i8 31, i8 0 }, %struct.i2c_reg_u8 { i8 36, i8 120 }, %struct.i2c_reg_u8 { i8 37, i8 104 }, %struct.i2c_reg_u8 { i8 38, i8 -44 }, %struct.i2c_reg_u8 { i8 39, i8 -128 }, %struct.i2c_reg_u8 { i8 40, i8 -128 }, %struct.i2c_reg_u8 { i8 41, i8 48 }, %struct.i2c_reg_u8 { i8 42, i8 0 }, %struct.i2c_reg_u8 { i8 43, i8 0 }, %struct.i2c_reg_u8 { i8 44, i8 -128 }, %struct.i2c_reg_u8 { i8 45, i8 0 }, %struct.i2c_reg_u8 { i8 46, i8 0 }, %struct.i2c_reg_u8 { i8 47, i8 0 }, %struct.i2c_reg_u8 { i8 48, i8 8 }, %struct.i2c_reg_u8 { i8 49, i8 48 }, %struct.i2c_reg_u8 { i8 50, i8 -124 }, %struct.i2c_reg_u8 { i8 51, i8 -30 }, %struct.i2c_reg_u8 { i8 52, i8 -65 }, %struct.i2c_reg_u8 { i8 53, i8 -127 }, %struct.i2c_reg_u8 { i8 54, i8 -7 }, %struct.i2c_reg_u8 { i8 55, i8 0 }, %struct.i2c_reg_u8 { i8 56, i8 -109 }, %struct.i2c_reg_u8 { i8 57, i8 80 }, %struct.i2c_reg_u8 { i8 58, i8 1 }, %struct.i2c_reg_u8 { i8 59, i8 1 }, %struct.i2c_reg_u8 { i8 60, i8 115 }, %struct.i2c_reg_u8 { i8 61, i8 25 }, %struct.i2c_reg_u8 { i8 62, i8 11 }, %struct.i2c_reg_u8 { i8 63, i8 -128 }, %struct.i2c_reg_u8 { i8 64, i8 -63 }, %struct.i2c_reg_u8 { i8 65, i8 0 }, %struct.i2c_reg_u8 { i8 66, i8 8 }, %struct.i2c_reg_u8 { i8 103, i8 -128 }, %struct.i2c_reg_u8 { i8 104, i8 -128 }, %struct.i2c_reg_u8 { i8 105, i8 64 }, %struct.i2c_reg_u8 { i8 106, i8 0 }, %struct.i2c_reg_u8 { i8 107, i8 10 }, %struct.i2c_reg_u8 { i8 -117, i8 6 }, %struct.i2c_reg_u8 { i8 -116, i8 32 }, %struct.i2c_reg_u8 { i8 -115, i8 0 }, %struct.i2c_reg_u8 { i8 -114, i8 0 }, %struct.i2c_reg_u8 { i8 -113, i8 -33 }, %struct.i2c_reg_u8 { i8 -110, i8 0 }, %struct.i2c_reg_u8 { i8 -109, i8 0 }, %struct.i2c_reg_u8 { i8 -108, i8 -120 }, %struct.i2c_reg_u8 { i8 -107, i8 -120 }, %struct.i2c_reg_u8 { i8 -106, i8 4 }, %struct.i2c_reg_u8 { i8 -95, i8 0 }, %struct.i2c_reg_u8 { i8 -91, i8 -128 }, %struct.i2c_reg_u8 { i8 -88, i8 -128 }, %struct.i2c_reg_u8 { i8 -87, i8 -72 }, %struct.i2c_reg_u8 { i8 -86, i8 -110 }, %struct.i2c_reg_u8 { i8 -85, i8 10 }], [34 x i8] zeroinitializer }, align 32
@ov9650_init_sensor._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_sn9c20x: OV9650 sensor initialization failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ov9650_init_sensor._entry_ptr.45 = internal global ptr @ov9650_init_sensor._entry.43, section ".printk_index", align 4
@i2c_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_sn9c20x: i2c_w error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"i2c_w\00", [26 x i8] zeroinitializer }, align 32
@i2c_w._entry_ptr = internal global ptr @i2c_w._entry, section ".printk_index", align 4
@i2c_w._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.4, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gspca_sn9c20x: i2c_w reg %02x no response\0A\00", [51 x i8] zeroinitializer }, align 32
@i2c_w._entry_ptr.50 = internal global ptr @i2c_w._entry.48, section ".printk_index", align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_sn9c20x: Read register %02x failed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@ov9655_init = internal constant { [93 x %struct.i2c_reg_u8], [38 x i8] } { [93 x %struct.i2c_reg_u8] [%struct.i2c_reg_u8 { i8 14, i8 97 }, %struct.i2c_reg_u8 { i8 17, i8 -128 }, %struct.i2c_reg_u8 { i8 19, i8 -70 }, %struct.i2c_reg_u8 { i8 20, i8 46 }, %struct.i2c_reg_u8 { i8 22, i8 36 }, %struct.i2c_reg_u8 { i8 30, i8 4 }, %struct.i2c_reg_u8 { i8 39, i8 8 }, %struct.i2c_reg_u8 { i8 40, i8 8 }, %struct.i2c_reg_u8 { i8 41, i8 21 }, %struct.i2c_reg_u8 { i8 44, i8 8 }, %struct.i2c_reg_u8 { i8 52, i8 61 }, %struct.i2c_reg_u8 { i8 53, i8 0 }, %struct.i2c_reg_u8 { i8 56, i8 18 }, %struct.i2c_reg_u8 { i8 15, i8 66 }, %struct.i2c_reg_u8 { i8 57, i8 87 }, %struct.i2c_reg_u8 { i8 58, i8 0 }, %struct.i2c_reg_u8 { i8 59, i8 -52 }, %struct.i2c_reg_u8 { i8 60, i8 12 }, %struct.i2c_reg_u8 { i8 61, i8 25 }, %struct.i2c_reg_u8 { i8 62, i8 12 }, %struct.i2c_reg_u8 { i8 63, i8 1 }, %struct.i2c_reg_u8 { i8 65, i8 64 }, %struct.i2c_reg_u8 { i8 66, i8 -128 }, %struct.i2c_reg_u8 { i8 69, i8 70 }, %struct.i2c_reg_u8 { i8 70, i8 98 }, %struct.i2c_reg_u8 { i8 71, i8 42 }, %struct.i2c_reg_u8 { i8 72, i8 60 }, %struct.i2c_reg_u8 { i8 74, i8 -16 }, %struct.i2c_reg_u8 { i8 75, i8 -36 }, %struct.i2c_reg_u8 { i8 76, i8 -36 }, %struct.i2c_reg_u8 { i8 77, i8 -36 }, %struct.i2c_reg_u8 { i8 78, i8 -36 }, %struct.i2c_reg_u8 { i8 108, i8 4 }, %struct.i2c_reg_u8 { i8 111, i8 -98 }, %struct.i2c_reg_u8 { i8 112, i8 5 }, %struct.i2c_reg_u8 { i8 113, i8 120 }, %struct.i2c_reg_u8 { i8 119, i8 2 }, %struct.i2c_reg_u8 { i8 -118, i8 35 }, %struct.i2c_reg_u8 { i8 -112, i8 126 }, %struct.i2c_reg_u8 { i8 -111, i8 124 }, %struct.i2c_reg_u8 { i8 -97, i8 110 }, %struct.i2c_reg_u8 { i8 -96, i8 110 }, %struct.i2c_reg_u8 { i8 -91, i8 104 }, %struct.i2c_reg_u8 { i8 -90, i8 96 }, %struct.i2c_reg_u8 { i8 -88, i8 -63 }, %struct.i2c_reg_u8 { i8 -87, i8 -6 }, %struct.i2c_reg_u8 { i8 -86, i8 -110 }, %struct.i2c_reg_u8 { i8 -85, i8 4 }, %struct.i2c_reg_u8 { i8 -84, i8 -128 }, %struct.i2c_reg_u8 { i8 -83, i8 -128 }, %struct.i2c_reg_u8 { i8 -82, i8 -128 }, %struct.i2c_reg_u8 { i8 -81, i8 -128 }, %struct.i2c_reg_u8 { i8 -78, i8 -14 }, %struct.i2c_reg_u8 { i8 -77, i8 32 }, %struct.i2c_reg_u8 { i8 -75, i8 0 }, %struct.i2c_reg_u8 { i8 -74, i8 -81 }, %struct.i2c_reg_u8 { i8 -69, i8 -82 }, %struct.i2c_reg_u8 { i8 -68, i8 68 }, %struct.i2c_reg_u8 { i8 -67, i8 68 }, %struct.i2c_reg_u8 { i8 -66, i8 59 }, %struct.i2c_reg_u8 { i8 -65, i8 58 }, %struct.i2c_reg_u8 { i8 -63, i8 -56 }, %struct.i2c_reg_u8 { i8 -62, i8 1 }, %struct.i2c_reg_u8 { i8 -60, i8 0 }, %struct.i2c_reg_u8 { i8 -58, i8 -123 }, %struct.i2c_reg_u8 { i8 -57, i8 -127 }, %struct.i2c_reg_u8 { i8 -55, i8 -32 }, %struct.i2c_reg_u8 { i8 -54, i8 -24 }, %struct.i2c_reg_u8 { i8 -52, i8 -40 }, %struct.i2c_reg_u8 { i8 -51, i8 -109 }, %struct.i2c_reg_u8 { i8 45, i8 0 }, %struct.i2c_reg_u8 { i8 46, i8 0 }, %struct.i2c_reg_u8 { i8 1, i8 -128 }, %struct.i2c_reg_u8 { i8 2, i8 -128 }, %struct.i2c_reg_u8 { i8 18, i8 97 }, %struct.i2c_reg_u8 { i8 54, i8 -6 }, %struct.i2c_reg_u8 { i8 -116, i8 -115 }, %struct.i2c_reg_u8 { i8 -64, i8 -86 }, %struct.i2c_reg_u8 { i8 105, i8 10 }, %struct.i2c_reg_u8 { i8 3, i8 9 }, %struct.i2c_reg_u8 { i8 23, i8 22 }, %struct.i2c_reg_u8 { i8 24, i8 110 }, %struct.i2c_reg_u8 { i8 25, i8 1 }, %struct.i2c_reg_u8 { i8 26, i8 62 }, %struct.i2c_reg_u8 { i8 50, i8 9 }, %struct.i2c_reg_u8 { i8 42, i8 16 }, %struct.i2c_reg_u8 { i8 43, i8 10 }, %struct.i2c_reg_u8 { i8 -110, i8 0 }, %struct.i2c_reg_u8 { i8 -109, i8 0 }, %struct.i2c_reg_u8 { i8 -95, i8 0 }, %struct.i2c_reg_u8 { i8 16, i8 124 }, %struct.i2c_reg_u8 { i8 4, i8 3 }, %struct.i2c_reg_u8 { i8 0, i8 19 }], [38 x i8] zeroinitializer }, align 32
@ov9655_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_sn9c20x: OV9655 sensor initialization failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov9655_init_sensor\00", [45 x i8] zeroinitializer }, align 32
@ov9655_init_sensor._entry_ptr = internal global ptr @ov9655_init_sensor._entry, section ".printk_index", align 4
@soi968_init = internal constant { [32 x %struct.i2c_reg_u8], [32 x i8] } { [32 x %struct.i2c_reg_u8] [%struct.i2c_reg_u8 { i8 12, i8 0 }, %struct.i2c_reg_u8 { i8 15, i8 31 }, %struct.i2c_reg_u8 { i8 17, i8 -128 }, %struct.i2c_reg_u8 { i8 56, i8 82 }, %struct.i2c_reg_u8 { i8 30, i8 0 }, %struct.i2c_reg_u8 { i8 51, i8 8 }, %struct.i2c_reg_u8 { i8 53, i8 -116 }, %struct.i2c_reg_u8 { i8 54, i8 12 }, %struct.i2c_reg_u8 { i8 55, i8 4 }, %struct.i2c_reg_u8 { i8 69, i8 4 }, %struct.i2c_reg_u8 { i8 71, i8 -1 }, %struct.i2c_reg_u8 { i8 62, i8 0 }, %struct.i2c_reg_u8 { i8 63, i8 0 }, %struct.i2c_reg_u8 { i8 59, i8 32 }, %struct.i2c_reg_u8 { i8 58, i8 -106 }, %struct.i2c_reg_u8 { i8 61, i8 10 }, %struct.i2c_reg_u8 { i8 20, i8 -114 }, %struct.i2c_reg_u8 { i8 19, i8 -117 }, %struct.i2c_reg_u8 { i8 18, i8 64 }, %struct.i2c_reg_u8 { i8 23, i8 19 }, %struct.i2c_reg_u8 { i8 24, i8 99 }, %struct.i2c_reg_u8 { i8 25, i8 1 }, %struct.i2c_reg_u8 { i8 26, i8 121 }, %struct.i2c_reg_u8 { i8 50, i8 36 }, %struct.i2c_reg_u8 { i8 3, i8 0 }, %struct.i2c_reg_u8 { i8 17, i8 64 }, %struct.i2c_reg_u8 { i8 42, i8 16 }, %struct.i2c_reg_u8 { i8 43, i8 -32 }, %struct.i2c_reg_u8 { i8 16, i8 50 }, %struct.i2c_reg_u8 zeroinitializer, %struct.i2c_reg_u8 { i8 1, i8 -128 }, %struct.i2c_reg_u8 { i8 2, i8 -128 }], [32 x i8] zeroinitializer }, align 32
@soi968_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_sn9c20x: SOI968 sensor initialization failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"soi968_init_sensor\00", [45 x i8] zeroinitializer }, align 32
@soi968_init_sensor._entry_ptr = internal global ptr @soi968_init_sensor._entry, section ".printk_index", align 4
@ov7660_init = internal constant { [20 x %struct.i2c_reg_u8], [56 x i8] } { [20 x %struct.i2c_reg_u8] [%struct.i2c_reg_u8 { i8 14, i8 -128 }, %struct.i2c_reg_u8 { i8 13, i8 8 }, %struct.i2c_reg_u8 { i8 15, i8 -61 }, %struct.i2c_reg_u8 { i8 4, i8 -61 }, %struct.i2c_reg_u8 { i8 16, i8 64 }, %struct.i2c_reg_u8 { i8 17, i8 64 }, %struct.i2c_reg_u8 { i8 18, i8 5 }, %struct.i2c_reg_u8 { i8 19, i8 -70 }, %struct.i2c_reg_u8 { i8 20, i8 42 }, %struct.i2c_reg_u8 { i8 23, i8 16 }, %struct.i2c_reg_u8 { i8 24, i8 97 }, %struct.i2c_reg_u8 { i8 55, i8 15 }, %struct.i2c_reg_u8 { i8 56, i8 2 }, %struct.i2c_reg_u8 { i8 57, i8 67 }, %struct.i2c_reg_u8 { i8 58, i8 0 }, %struct.i2c_reg_u8 { i8 105, i8 -112 }, %struct.i2c_reg_u8 { i8 45, i8 0 }, %struct.i2c_reg_u8 { i8 46, i8 0 }, %struct.i2c_reg_u8 { i8 1, i8 120 }, %struct.i2c_reg_u8 { i8 2, i8 80 }], [56 x i8] zeroinitializer }, align 32
@ov7660_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 1142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_sn9c20x: OV7660 sensor initialization failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov7660_init_sensor\00", [45 x i8] zeroinitializer }, align 32
@ov7660_init_sensor._entry_ptr = internal global ptr @ov7660_init_sensor._entry, section ".printk_index", align 4
@ov7670_init = internal constant { [212 x %struct.i2c_reg_u8], [120 x i8] } { [212 x %struct.i2c_reg_u8] [%struct.i2c_reg_u8 { i8 17, i8 -128 }, %struct.i2c_reg_u8 { i8 58, i8 4 }, %struct.i2c_reg_u8 { i8 18, i8 1 }, %struct.i2c_reg_u8 { i8 50, i8 -74 }, %struct.i2c_reg_u8 { i8 3, i8 10 }, %struct.i2c_reg_u8 { i8 12, i8 0 }, %struct.i2c_reg_u8 { i8 62, i8 0 }, %struct.i2c_reg_u8 { i8 112, i8 58 }, %struct.i2c_reg_u8 { i8 113, i8 53 }, %struct.i2c_reg_u8 { i8 114, i8 17 }, %struct.i2c_reg_u8 { i8 115, i8 -16 }, %struct.i2c_reg_u8 { i8 -94, i8 2 }, %struct.i2c_reg_u8 { i8 19, i8 -32 }, %struct.i2c_reg_u8 zeroinitializer, %struct.i2c_reg_u8 { i8 16, i8 0 }, %struct.i2c_reg_u8 { i8 13, i8 64 }, %struct.i2c_reg_u8 { i8 20, i8 40 }, %struct.i2c_reg_u8 { i8 -91, i8 5 }, %struct.i2c_reg_u8 { i8 -85, i8 7 }, %struct.i2c_reg_u8 { i8 36, i8 -107 }, %struct.i2c_reg_u8 { i8 37, i8 51 }, %struct.i2c_reg_u8 { i8 38, i8 -29 }, %struct.i2c_reg_u8 { i8 -97, i8 117 }, %struct.i2c_reg_u8 { i8 -96, i8 101 }, %struct.i2c_reg_u8 { i8 -95, i8 11 }, %struct.i2c_reg_u8 { i8 -90, i8 -40 }, %struct.i2c_reg_u8 { i8 -89, i8 -40 }, %struct.i2c_reg_u8 { i8 -88, i8 -16 }, %struct.i2c_reg_u8 { i8 -87, i8 -112 }, %struct.i2c_reg_u8 { i8 -86, i8 -108 }, %struct.i2c_reg_u8 { i8 19, i8 -27 }, %struct.i2c_reg_u8 { i8 14, i8 97 }, %struct.i2c_reg_u8 { i8 15, i8 75 }, %struct.i2c_reg_u8 { i8 22, i8 2 }, %struct.i2c_reg_u8 { i8 30, i8 39 }, %struct.i2c_reg_u8 { i8 33, i8 2 }, %struct.i2c_reg_u8 { i8 34, i8 -111 }, %struct.i2c_reg_u8 { i8 41, i8 7 }, %struct.i2c_reg_u8 { i8 51, i8 11 }, %struct.i2c_reg_u8 { i8 53, i8 11 }, %struct.i2c_reg_u8 { i8 55, i8 29 }, %struct.i2c_reg_u8 { i8 56, i8 113 }, %struct.i2c_reg_u8 { i8 57, i8 42 }, %struct.i2c_reg_u8 { i8 60, i8 120 }, %struct.i2c_reg_u8 { i8 77, i8 64 }, %struct.i2c_reg_u8 { i8 78, i8 32 }, %struct.i2c_reg_u8 { i8 105, i8 0 }, %struct.i2c_reg_u8 { i8 116, i8 25 }, %struct.i2c_reg_u8 { i8 -115, i8 79 }, %struct.i2c_reg_u8 { i8 -114, i8 0 }, %struct.i2c_reg_u8 { i8 -113, i8 0 }, %struct.i2c_reg_u8 { i8 -112, i8 0 }, %struct.i2c_reg_u8 { i8 -111, i8 0 }, %struct.i2c_reg_u8 { i8 -106, i8 0 }, %struct.i2c_reg_u8 { i8 -102, i8 -128 }, %struct.i2c_reg_u8 { i8 -80, i8 -124 }, %struct.i2c_reg_u8 { i8 -79, i8 12 }, %struct.i2c_reg_u8 { i8 -78, i8 14 }, %struct.i2c_reg_u8 { i8 -77, i8 -126 }, %struct.i2c_reg_u8 { i8 -72, i8 10 }, %struct.i2c_reg_u8 { i8 67, i8 10 }, %struct.i2c_reg_u8 { i8 68, i8 -16 }, %struct.i2c_reg_u8 { i8 69, i8 32 }, %struct.i2c_reg_u8 { i8 70, i8 125 }, %struct.i2c_reg_u8 { i8 71, i8 41 }, %struct.i2c_reg_u8 { i8 72, i8 74 }, %struct.i2c_reg_u8 { i8 89, i8 -116 }, %struct.i2c_reg_u8 { i8 90, i8 -91 }, %struct.i2c_reg_u8 { i8 91, i8 -34 }, %struct.i2c_reg_u8 { i8 92, i8 -106 }, %struct.i2c_reg_u8 { i8 93, i8 102 }, %struct.i2c_reg_u8 { i8 94, i8 16 }, %struct.i2c_reg_u8 { i8 108, i8 10 }, %struct.i2c_reg_u8 { i8 109, i8 85 }, %struct.i2c_reg_u8 { i8 110, i8 17 }, %struct.i2c_reg_u8 { i8 111, i8 -98 }, %struct.i2c_reg_u8 { i8 106, i8 64 }, %struct.i2c_reg_u8 { i8 1, i8 64 }, %struct.i2c_reg_u8 { i8 2, i8 64 }, %struct.i2c_reg_u8 { i8 19, i8 -25 }, %struct.i2c_reg_u8 { i8 79, i8 110 }, %struct.i2c_reg_u8 { i8 80, i8 112 }, %struct.i2c_reg_u8 { i8 81, i8 2 }, %struct.i2c_reg_u8 { i8 82, i8 29 }, %struct.i2c_reg_u8 { i8 83, i8 86 }, %struct.i2c_reg_u8 { i8 84, i8 115 }, %struct.i2c_reg_u8 { i8 85, i8 10 }, %struct.i2c_reg_u8 { i8 86, i8 85 }, %struct.i2c_reg_u8 { i8 87, i8 -128 }, %struct.i2c_reg_u8 { i8 88, i8 -98 }, %struct.i2c_reg_u8 { i8 65, i8 8 }, %struct.i2c_reg_u8 { i8 63, i8 2 }, %struct.i2c_reg_u8 { i8 117, i8 3 }, %struct.i2c_reg_u8 { i8 118, i8 99 }, %struct.i2c_reg_u8 { i8 76, i8 4 }, %struct.i2c_reg_u8 { i8 119, i8 6 }, %struct.i2c_reg_u8 { i8 61, i8 2 }, %struct.i2c_reg_u8 { i8 75, i8 9 }, %struct.i2c_reg_u8 { i8 -55, i8 48 }, %struct.i2c_reg_u8 { i8 65, i8 8 }, %struct.i2c_reg_u8 { i8 86, i8 72 }, %struct.i2c_reg_u8 { i8 52, i8 17 }, %struct.i2c_reg_u8 { i8 -92, i8 -120 }, %struct.i2c_reg_u8 { i8 -106, i8 0 }, %struct.i2c_reg_u8 { i8 -105, i8 48 }, %struct.i2c_reg_u8 { i8 -104, i8 32 }, %struct.i2c_reg_u8 { i8 -103, i8 48 }, %struct.i2c_reg_u8 { i8 -102, i8 -124 }, %struct.i2c_reg_u8 { i8 -101, i8 41 }, %struct.i2c_reg_u8 { i8 -100, i8 3 }, %struct.i2c_reg_u8 { i8 -99, i8 -103 }, %struct.i2c_reg_u8 { i8 -98, i8 127 }, %struct.i2c_reg_u8 { i8 120, i8 4 }, %struct.i2c_reg_u8 { i8 121, i8 1 }, %struct.i2c_reg_u8 { i8 -56, i8 -16 }, %struct.i2c_reg_u8 { i8 121, i8 15 }, %struct.i2c_reg_u8 { i8 -56, i8 0 }, %struct.i2c_reg_u8 { i8 121, i8 16 }, %struct.i2c_reg_u8 { i8 -56, i8 126 }, %struct.i2c_reg_u8 { i8 121, i8 10 }, %struct.i2c_reg_u8 { i8 -56, i8 -128 }, %struct.i2c_reg_u8 { i8 121, i8 11 }, %struct.i2c_reg_u8 { i8 -56, i8 1 }, %struct.i2c_reg_u8 { i8 121, i8 12 }, %struct.i2c_reg_u8 { i8 -56, i8 15 }, %struct.i2c_reg_u8 { i8 121, i8 13 }, %struct.i2c_reg_u8 { i8 -56, i8 32 }, %struct.i2c_reg_u8 { i8 121, i8 9 }, %struct.i2c_reg_u8 { i8 -56, i8 -128 }, %struct.i2c_reg_u8 { i8 121, i8 2 }, %struct.i2c_reg_u8 { i8 -56, i8 -64 }, %struct.i2c_reg_u8 { i8 121, i8 3 }, %struct.i2c_reg_u8 { i8 -56, i8 64 }, %struct.i2c_reg_u8 { i8 121, i8 5 }, %struct.i2c_reg_u8 { i8 -56, i8 48 }, %struct.i2c_reg_u8 { i8 121, i8 38 }, %struct.i2c_reg_u8 { i8 98, i8 32 }, %struct.i2c_reg_u8 { i8 99, i8 0 }, %struct.i2c_reg_u8 { i8 100, i8 6 }, %struct.i2c_reg_u8 { i8 101, i8 0 }, %struct.i2c_reg_u8 { i8 102, i8 5 }, %struct.i2c_reg_u8 { i8 -108, i8 5 }, %struct.i2c_reg_u8 { i8 -107, i8 10 }, %struct.i2c_reg_u8 { i8 23, i8 19 }, %struct.i2c_reg_u8 { i8 24, i8 1 }, %struct.i2c_reg_u8 { i8 25, i8 2 }, %struct.i2c_reg_u8 { i8 26, i8 122 }, %struct.i2c_reg_u8 { i8 70, i8 89 }, %struct.i2c_reg_u8 { i8 71, i8 48 }, %struct.i2c_reg_u8 { i8 88, i8 -102 }, %struct.i2c_reg_u8 { i8 89, i8 -124 }, %struct.i2c_reg_u8 { i8 90, i8 -111 }, %struct.i2c_reg_u8 { i8 91, i8 87 }, %struct.i2c_reg_u8 { i8 92, i8 117 }, %struct.i2c_reg_u8 { i8 93, i8 109 }, %struct.i2c_reg_u8 { i8 94, i8 19 }, %struct.i2c_reg_u8 { i8 100, i8 7 }, %struct.i2c_reg_u8 { i8 -108, i8 7 }, %struct.i2c_reg_u8 { i8 -107, i8 13 }, %struct.i2c_reg_u8 { i8 -90, i8 -33 }, %struct.i2c_reg_u8 { i8 -89, i8 -33 }, %struct.i2c_reg_u8 { i8 72, i8 77 }, %struct.i2c_reg_u8 { i8 81, i8 0 }, %struct.i2c_reg_u8 { i8 107, i8 10 }, %struct.i2c_reg_u8 { i8 17, i8 -128 }, %struct.i2c_reg_u8 { i8 42, i8 0 }, %struct.i2c_reg_u8 { i8 43, i8 0 }, %struct.i2c_reg_u8 { i8 -110, i8 0 }, %struct.i2c_reg_u8 { i8 -109, i8 0 }, %struct.i2c_reg_u8 { i8 85, i8 10 }, %struct.i2c_reg_u8 { i8 86, i8 96 }, %struct.i2c_reg_u8 { i8 79, i8 110 }, %struct.i2c_reg_u8 { i8 80, i8 112 }, %struct.i2c_reg_u8 { i8 81, i8 0 }, %struct.i2c_reg_u8 { i8 82, i8 29 }, %struct.i2c_reg_u8 { i8 83, i8 86 }, %struct.i2c_reg_u8 { i8 84, i8 115 }, %struct.i2c_reg_u8 { i8 88, i8 -102 }, %struct.i2c_reg_u8 { i8 79, i8 110 }, %struct.i2c_reg_u8 { i8 80, i8 112 }, %struct.i2c_reg_u8 { i8 81, i8 0 }, %struct.i2c_reg_u8 { i8 82, i8 29 }, %struct.i2c_reg_u8 { i8 83, i8 86 }, %struct.i2c_reg_u8 { i8 84, i8 115 }, %struct.i2c_reg_u8 { i8 88, i8 -102 }, %struct.i2c_reg_u8 { i8 63, i8 1 }, %struct.i2c_reg_u8 { i8 123, i8 3 }, %struct.i2c_reg_u8 { i8 124, i8 9 }, %struct.i2c_reg_u8 { i8 125, i8 22 }, %struct.i2c_reg_u8 { i8 126, i8 56 }, %struct.i2c_reg_u8 { i8 127, i8 71 }, %struct.i2c_reg_u8 { i8 -128, i8 83 }, %struct.i2c_reg_u8 { i8 -127, i8 94 }, %struct.i2c_reg_u8 { i8 -126, i8 106 }, %struct.i2c_reg_u8 { i8 -125, i8 116 }, %struct.i2c_reg_u8 { i8 -124, i8 -128 }, %struct.i2c_reg_u8 { i8 -123, i8 -116 }, %struct.i2c_reg_u8 { i8 -122, i8 -101 }, %struct.i2c_reg_u8 { i8 -121, i8 -78 }, %struct.i2c_reg_u8 { i8 -120, i8 -52 }, %struct.i2c_reg_u8 { i8 -119, i8 -27 }, %struct.i2c_reg_u8 { i8 122, i8 36 }, %struct.i2c_reg_u8 { i8 59, i8 0 }, %struct.i2c_reg_u8 { i8 -97, i8 118 }, %struct.i2c_reg_u8 { i8 -96, i8 101 }, %struct.i2c_reg_u8 { i8 19, i8 -30 }, %struct.i2c_reg_u8 { i8 107, i8 10 }, %struct.i2c_reg_u8 { i8 17, i8 -128 }, %struct.i2c_reg_u8 { i8 42, i8 0 }, %struct.i2c_reg_u8 { i8 43, i8 0 }, %struct.i2c_reg_u8 { i8 -110, i8 0 }, %struct.i2c_reg_u8 { i8 -109, i8 0 }], [120 x i8] zeroinitializer }, align 32
@ov7670_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_sn9c20x: OV7670 sensor initialization failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov7670_init_sensor\00", [45 x i8] zeroinitializer }, align 32
@ov7670_init_sensor._entry_ptr = internal global ptr @ov7670_init_sensor._entry, section ".printk_index", align 4
@mt9v011_init = internal constant { [71 x %struct.i2c_reg_u16], [68 x i8] } { [71 x %struct.i2c_reg_u16] [%struct.i2c_reg_u16 { i8 7, i16 2 }, %struct.i2c_reg_u16 { i8 13, i16 1 }, %struct.i2c_reg_u16 { i8 13, i16 0 }, %struct.i2c_reg_u16 { i8 1, i16 8 }, %struct.i2c_reg_u16 { i8 2, i16 22 }, %struct.i2c_reg_u16 { i8 3, i16 481 }, %struct.i2c_reg_u16 { i8 4, i16 641 }, %struct.i2c_reg_u16 { i8 5, i16 131 }, %struct.i2c_reg_u16 { i8 6, i16 6 }, %struct.i2c_reg_u16 { i8 13, i16 2 }, %struct.i2c_reg_u16 { i8 10, i16 0 }, %struct.i2c_reg_u16 { i8 11, i16 0 }, %struct.i2c_reg_u16 { i8 12, i16 0 }, %struct.i2c_reg_u16 { i8 13, i16 0 }, %struct.i2c_reg_u16 { i8 14, i16 0 }, %struct.i2c_reg_u16 { i8 15, i16 0 }, %struct.i2c_reg_u16 { i8 16, i16 0 }, %struct.i2c_reg_u16 { i8 17, i16 0 }, %struct.i2c_reg_u16 { i8 18, i16 0 }, %struct.i2c_reg_u16 { i8 19, i16 0 }, %struct.i2c_reg_u16 { i8 20, i16 0 }, %struct.i2c_reg_u16 { i8 21, i16 0 }, %struct.i2c_reg_u16 { i8 22, i16 0 }, %struct.i2c_reg_u16 { i8 23, i16 0 }, %struct.i2c_reg_u16 { i8 24, i16 0 }, %struct.i2c_reg_u16 { i8 25, i16 0 }, %struct.i2c_reg_u16 { i8 26, i16 0 }, %struct.i2c_reg_u16 { i8 27, i16 0 }, %struct.i2c_reg_u16 { i8 28, i16 0 }, %struct.i2c_reg_u16 { i8 29, i16 0 }, %struct.i2c_reg_u16 { i8 50, i16 0 }, %struct.i2c_reg_u16 { i8 32, i16 4353 }, %struct.i2c_reg_u16 { i8 33, i16 0 }, %struct.i2c_reg_u16 { i8 34, i16 0 }, %struct.i2c_reg_u16 { i8 35, i16 0 }, %struct.i2c_reg_u16 { i8 36, i16 0 }, %struct.i2c_reg_u16 { i8 37, i16 0 }, %struct.i2c_reg_u16 { i8 38, i16 0 }, %struct.i2c_reg_u16 { i8 39, i16 36 }, %struct.i2c_reg_u16 { i8 47, i16 -2128 }, %struct.i2c_reg_u16 { i8 48, i16 5 }, %struct.i2c_reg_u16 { i8 49, i16 0 }, %struct.i2c_reg_u16 { i8 50, i16 0 }, %struct.i2c_reg_u16 { i8 51, i16 0 }, %struct.i2c_reg_u16 { i8 52, i16 256 }, %struct.i2c_reg_u16 { i8 61, i16 1679 }, %struct.i2c_reg_u16 { i8 64, i16 480 }, %struct.i2c_reg_u16 { i8 65, i16 209 }, %struct.i2c_reg_u16 { i8 68, i16 130 }, %struct.i2c_reg_u16 { i8 90, i16 0 }, %struct.i2c_reg_u16 { i8 91, i16 0 }, %struct.i2c_reg_u16 { i8 92, i16 0 }, %struct.i2c_reg_u16 { i8 93, i16 0 }, %struct.i2c_reg_u16 { i8 94, i16 0 }, %struct.i2c_reg_u16 { i8 95, i16 -23779 }, %struct.i2c_reg_u16 { i8 98, i16 1553 }, %struct.i2c_reg_u16 { i8 10, i16 0 }, %struct.i2c_reg_u16 { i8 6, i16 41 }, %struct.i2c_reg_u16 { i8 5, i16 9 }, %struct.i2c_reg_u16 { i8 32, i16 4353 }, %struct.i2c_reg_u16 { i8 32, i16 4353 }, %struct.i2c_reg_u16 { i8 9, i16 100 }, %struct.i2c_reg_u16 { i8 7, i16 3 }, %struct.i2c_reg_u16 { i8 43, i16 51 }, %struct.i2c_reg_u16 { i8 44, i16 160 }, %struct.i2c_reg_u16 { i8 45, i16 160 }, %struct.i2c_reg_u16 { i8 46, i16 51 }, %struct.i2c_reg_u16 { i8 7, i16 2 }, %struct.i2c_reg_u16 { i8 6, i16 0 }, %struct.i2c_reg_u16 { i8 6, i16 41 }, %struct.i2c_reg_u16 { i8 5, i16 9 }], [68 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gspca_sn9c20x: MT9V011 sensor initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt9v_init_sensor\00", [47 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry_ptr = internal global ptr @mt9v_init_sensor._entry, section ".printk_index", align 4
@mt9v_init_sensor._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_sn9c20x: MT9V011 sensor detected\0A\00", [54 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry_ptr.65 = internal global ptr @mt9v_init_sensor._entry.63, section ".printk_index", align 4
@mt9v111_init = internal constant { [20 x %struct.i2c_reg_u16], [48 x i8] } { [20 x %struct.i2c_reg_u16] [%struct.i2c_reg_u16 { i8 1, i16 4 }, %struct.i2c_reg_u16 { i8 13, i16 1 }, %struct.i2c_reg_u16 { i8 13, i16 0 }, %struct.i2c_reg_u16 { i8 1, i16 1 }, %struct.i2c_reg_u16 { i8 5, i16 4 }, %struct.i2c_reg_u16 { i8 45, i16 -8032 }, %struct.i2c_reg_u16 { i8 46, i16 3172 }, %struct.i2c_reg_u16 { i8 47, i16 100 }, %struct.i2c_reg_u16 { i8 6, i16 24590 }, %struct.i2c_reg_u16 { i8 8, i16 1152 }, %struct.i2c_reg_u16 { i8 1, i16 4 }, %struct.i2c_reg_u16 { i8 2, i16 22 }, %struct.i2c_reg_u16 { i8 3, i16 487 }, %struct.i2c_reg_u16 { i8 4, i16 647 }, %struct.i2c_reg_u16 { i8 5, i16 4 }, %struct.i2c_reg_u16 { i8 6, i16 45 }, %struct.i2c_reg_u16 { i8 7, i16 12290 }, %struct.i2c_reg_u16 { i8 8, i16 8 }, %struct.i2c_reg_u16 { i8 14, i16 8 }, %struct.i2c_reg_u16 { i8 32, i16 0 }], [48 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.4, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gspca_sn9c20x: MT9V111 sensor initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry_ptr.68 = internal global ptr @mt9v_init_sensor._entry.66, section ".printk_index", align 4
@mt9v_init_sensor._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.4, i32 1196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_sn9c20x: MT9V111 sensor detected\0A\00", [54 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry_ptr.71 = internal global ptr @mt9v_init_sensor._entry.69, section ".printk_index", align 4
@mt9v112_init = internal constant { [48 x %struct.i2c_reg_u16], [32 x i8] } { [48 x %struct.i2c_reg_u16] [%struct.i2c_reg_u16 { i8 -16, i16 0 }, %struct.i2c_reg_u16 { i8 13, i16 33 }, %struct.i2c_reg_u16 { i8 13, i16 32 }, %struct.i2c_reg_u16 { i8 52, i16 -16359 }, %struct.i2c_reg_u16 { i8 10, i16 17 }, %struct.i2c_reg_u16 { i8 11, i16 11 }, %struct.i2c_reg_u16 { i8 32, i16 1795 }, %struct.i2c_reg_u16 { i8 53, i16 8226 }, %struct.i2c_reg_u16 { i8 -16, i16 1 }, %struct.i2c_reg_u16 { i8 5, i16 0 }, %struct.i2c_reg_u16 { i8 6, i16 13324 }, %struct.i2c_reg_u16 { i8 59, i16 1066 }, %struct.i2c_reg_u16 { i8 60, i16 1024 }, %struct.i2c_reg_u16 { i8 -16, i16 2 }, %struct.i2c_reg_u16 { i8 46, i16 3160 }, %struct.i2c_reg_u16 { i8 91, i16 1 }, %struct.i2c_reg_u16 { i8 -56, i16 -24821 }, %struct.i2c_reg_u16 { i8 -16, i16 1 }, %struct.i2c_reg_u16 { i8 -101, i16 21248 }, %struct.i2c_reg_u16 { i8 -16, i16 0 }, %struct.i2c_reg_u16 { i8 43, i16 32 }, %struct.i2c_reg_u16 { i8 44, i16 42 }, %struct.i2c_reg_u16 { i8 45, i16 50 }, %struct.i2c_reg_u16 { i8 46, i16 32 }, %struct.i2c_reg_u16 { i8 9, i16 476 }, %struct.i2c_reg_u16 { i8 1, i16 12 }, %struct.i2c_reg_u16 { i8 2, i16 32 }, %struct.i2c_reg_u16 { i8 3, i16 480 }, %struct.i2c_reg_u16 { i8 4, i16 640 }, %struct.i2c_reg_u16 { i8 6, i16 12 }, %struct.i2c_reg_u16 { i8 5, i16 152 }, %struct.i2c_reg_u16 { i8 32, i16 1795 }, %struct.i2c_reg_u16 { i8 9, i16 498 }, %struct.i2c_reg_u16 { i8 43, i16 160 }, %struct.i2c_reg_u16 { i8 44, i16 160 }, %struct.i2c_reg_u16 { i8 45, i16 160 }, %struct.i2c_reg_u16 { i8 46, i16 160 }, %struct.i2c_reg_u16 { i8 1, i16 12 }, %struct.i2c_reg_u16 { i8 2, i16 32 }, %struct.i2c_reg_u16 { i8 3, i16 480 }, %struct.i2c_reg_u16 { i8 4, i16 640 }, %struct.i2c_reg_u16 { i8 6, i16 12 }, %struct.i2c_reg_u16 { i8 5, i16 152 }, %struct.i2c_reg_u16 { i8 9, i16 449 }, %struct.i2c_reg_u16 { i8 43, i16 174 }, %struct.i2c_reg_u16 { i8 44, i16 174 }, %struct.i2c_reg_u16 { i8 45, i16 174 }, %struct.i2c_reg_u16 { i8 46, i16 174 }], [32 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.4, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gspca_sn9c20x: MT9V112 sensor initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry_ptr.74 = internal global ptr @mt9v_init_sensor._entry.72, section ".printk_index", align 4
@mt9v_init_sensor._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.4, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_sn9c20x: MT9V112 sensor detected\0A\00", [54 x i8] zeroinitializer }, align 32
@mt9v_init_sensor._entry_ptr.77 = internal global ptr @mt9v_init_sensor._entry.75, section ".printk_index", align 4
@mt9m111_init = internal constant { [10 x %struct.i2c_reg_u16], [56 x i8] } { [10 x %struct.i2c_reg_u16] [%struct.i2c_reg_u16 { i8 -16, i16 0 }, %struct.i2c_reg_u16 { i8 13, i16 33 }, %struct.i2c_reg_u16 { i8 13, i16 8 }, %struct.i2c_reg_u16 { i8 -16, i16 1 }, %struct.i2c_reg_u16 { i8 58, i16 17152 }, %struct.i2c_reg_u16 { i8 -101, i16 17152 }, %struct.i2c_reg_u16 { i8 6, i16 28814 }, %struct.i2c_reg_u16 { i8 -16, i16 2 }, %struct.i2c_reg_u16 { i8 46, i16 2590 }, %struct.i2c_reg_u16 { i8 -16, i16 0 }], [56 x i8] zeroinitializer }, align 32
@mt9m111_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gspca_sn9c20x: MT9M111 sensor initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt9m111_init_sensor\00", [44 x i8] zeroinitializer }, align 32
@mt9m111_init_sensor._entry_ptr = internal global ptr @mt9m111_init_sensor._entry, section ".printk_index", align 4
@mt9m112_init = internal constant { [10 x %struct.i2c_reg_u16], [56 x i8] } { [10 x %struct.i2c_reg_u16] [%struct.i2c_reg_u16 { i8 -16, i16 0 }, %struct.i2c_reg_u16 { i8 13, i16 33 }, %struct.i2c_reg_u16 { i8 13, i16 8 }, %struct.i2c_reg_u16 { i8 -16, i16 1 }, %struct.i2c_reg_u16 { i8 58, i16 17152 }, %struct.i2c_reg_u16 { i8 -101, i16 17152 }, %struct.i2c_reg_u16 { i8 6, i16 28814 }, %struct.i2c_reg_u16 { i8 -16, i16 2 }, %struct.i2c_reg_u16 { i8 46, i16 2590 }, %struct.i2c_reg_u16 { i8 -16, i16 0 }], [56 x i8] zeroinitializer }, align 32
@mt9m112_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gspca_sn9c20x: MT9M112 sensor initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt9m112_init_sensor\00", [44 x i8] zeroinitializer }, align 32
@mt9m112_init_sensor._entry_ptr = internal global ptr @mt9m112_init_sensor._entry, section ".printk_index", align 4
@mt9m001_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016gspca_sn9c20x: MT9M001 color sensor detected\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt9m001_init_sensor\00", [44 x i8] zeroinitializer }, align 32
@mt9m001_init_sensor._entry_ptr = internal global ptr @mt9m001_init_sensor._entry, section ".printk_index", align 4
@mt9m001_init_sensor._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.4, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016gspca_sn9c20x: MT9M001 mono sensor detected\0A\00", [49 x i8] zeroinitializer }, align 32
@mt9m001_init_sensor._entry_ptr.86 = internal global ptr @mt9m001_init_sensor._entry.84, section ".printk_index", align 4
@mt9m001_init_sensor._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.4, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gspca_sn9c20x: No MT9M001 chip detected, ID = %x\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@mt9m001_init_sensor._entry_ptr.89 = internal global ptr @mt9m001_init_sensor._entry.87, section ".printk_index", align 4
@mt9m001_init = internal constant { [13 x %struct.i2c_reg_u16], [44 x i8] } { [13 x %struct.i2c_reg_u16] [%struct.i2c_reg_u16 { i8 13, i16 1 }, %struct.i2c_reg_u16 { i8 13, i16 0 }, %struct.i2c_reg_u16 { i8 4, i16 1280 }, %struct.i2c_reg_u16 { i8 3, i16 1024 }, %struct.i2c_reg_u16 { i8 32, i16 4352 }, %struct.i2c_reg_u16 { i8 6, i16 16 }, %struct.i2c_reg_u16 { i8 43, i16 36 }, %struct.i2c_reg_u16 { i8 46, i16 36 }, %struct.i2c_reg_u16 { i8 53, i16 36 }, %struct.i2c_reg_u16 { i8 45, i16 32 }, %struct.i2c_reg_u16 { i8 44, i16 32 }, %struct.i2c_reg_u16 { i8 9, i16 2772 }, %struct.i2c_reg_u16 { i8 53, i16 87 }], [44 x i8] zeroinitializer }, align 32
@mt9m001_init_sensor._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.4, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gspca_sn9c20x: MT9M001 sensor initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@mt9m001_init_sensor._entry_ptr.92 = internal global ptr @mt9m001_init_sensor._entry.90, section ".printk_index", align 4
@hv7131r_init = internal constant { [23 x %struct.i2c_reg_u8], [50 x i8] } { [23 x %struct.i2c_reg_u8] [%struct.i2c_reg_u8 { i8 2, i8 8 }, %struct.i2c_reg_u8 { i8 2, i8 0 }, %struct.i2c_reg_u8 { i8 1, i8 8 }, %struct.i2c_reg_u8 { i8 2, i8 0 }, %struct.i2c_reg_u8 { i8 32, i8 0 }, %struct.i2c_reg_u8 { i8 33, i8 -48 }, %struct.i2c_reg_u8 { i8 34, i8 0 }, %struct.i2c_reg_u8 { i8 35, i8 9 }, %struct.i2c_reg_u8 { i8 1, i8 8 }, %struct.i2c_reg_u8 { i8 1, i8 8 }, %struct.i2c_reg_u8 { i8 1, i8 8 }, %struct.i2c_reg_u8 { i8 37, i8 7 }, %struct.i2c_reg_u8 { i8 38, i8 -61 }, %struct.i2c_reg_u8 { i8 39, i8 80 }, %struct.i2c_reg_u8 { i8 48, i8 98 }, %struct.i2c_reg_u8 { i8 49, i8 16 }, %struct.i2c_reg_u8 { i8 50, i8 6 }, %struct.i2c_reg_u8 { i8 51, i8 16 }, %struct.i2c_reg_u8 { i8 32, i8 0 }, %struct.i2c_reg_u8 { i8 33, i8 -48 }, %struct.i2c_reg_u8 { i8 34, i8 0 }, %struct.i2c_reg_u8 { i8 35, i8 9 }, %struct.i2c_reg_u8 { i8 1, i8 8 }], [50 x i8] zeroinitializer }, align 32
@hv7131r_init_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013gspca_sn9c20x: HV7131R Sensor initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hv7131r_init_sensor\00", [44 x i8] zeroinitializer }, align 32
@hv7131r_init_sensor._entry_ptr = internal global ptr @hv7131r_init_sensor._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sn9c20x:1728:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.4, i32 1779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_sn9c20x: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@hsv_red_x = internal constant { [361 x i16], [174 x i8] } { [361 x i16] [i16 41, i16 44, i16 46, i16 48, i16 50, i16 52, i16 54, i16 56, i16 58, i16 60, i16 62, i16 64, i16 66, i16 68, i16 70, i16 72, i16 74, i16 76, i16 78, i16 80, i16 81, i16 83, i16 85, i16 87, i16 88, i16 90, i16 92, i16 93, i16 95, i16 97, i16 98, i16 100, i16 101, i16 102, i16 104, i16 105, i16 107, i16 108, i16 109, i16 110, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 123, i16 124, i16 125, i16 125, i16 126, i16 127, i16 127, i16 128, i16 128, i16 129, i16 129, i16 129, i16 130, i16 130, i16 130, i16 130, i16 131, i16 131, i16 131, i16 131, i16 131, i16 131, i16 131, i16 131, i16 130, i16 130, i16 130, i16 130, i16 129, i16 129, i16 129, i16 128, i16 128, i16 127, i16 127, i16 126, i16 125, i16 125, i16 124, i16 123, i16 122, i16 122, i16 121, i16 120, i16 119, i16 118, i16 117, i16 116, i16 115, i16 114, i16 112, i16 111, i16 110, i16 109, i16 107, i16 106, i16 105, i16 103, i16 102, i16 101, i16 99, i16 98, i16 96, i16 94, i16 93, i16 91, i16 90, i16 88, i16 86, i16 84, i16 83, i16 81, i16 79, i16 77, i16 75, i16 74, i16 72, i16 70, i16 68, i16 66, i16 64, i16 62, i16 60, i16 58, i16 56, i16 54, i16 52, i16 49, i16 47, i16 45, i16 43, i16 41, i16 39, i16 36, i16 34, i16 32, i16 30, i16 28, i16 25, i16 23, i16 21, i16 19, i16 16, i16 14, i16 12, i16 9, i16 7, i16 5, i16 3, i16 0, i16 -1, i16 -3, i16 -6, i16 -8, i16 -10, i16 -12, i16 -15, i16 -17, i16 -19, i16 -22, i16 -24, i16 -26, i16 -28, i16 -30, i16 -33, i16 -35, i16 -37, i16 -39, i16 -41, i16 -44, i16 -46, i16 -48, i16 -50, i16 -52, i16 -54, i16 -56, i16 -58, i16 -60, i16 -62, i16 -64, i16 -66, i16 -68, i16 -70, i16 -72, i16 -74, i16 -76, i16 -78, i16 -80, i16 -81, i16 -83, i16 -85, i16 -87, i16 -88, i16 -90, i16 -92, i16 -93, i16 -95, i16 -97, i16 -98, i16 -100, i16 -101, i16 -102, i16 -104, i16 -105, i16 -107, i16 -108, i16 -109, i16 -110, i16 -112, i16 -113, i16 -114, i16 -115, i16 -116, i16 -117, i16 -118, i16 -119, i16 -120, i16 -121, i16 -122, i16 -123, i16 -123, i16 -124, i16 -125, i16 -125, i16 -126, i16 -127, i16 -127, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -127, i16 -127, i16 -126, i16 -125, i16 -125, i16 -124, i16 -123, i16 -122, i16 -122, i16 -121, i16 -120, i16 -119, i16 -118, i16 -117, i16 -116, i16 -115, i16 -114, i16 -112, i16 -111, i16 -110, i16 -109, i16 -107, i16 -106, i16 -105, i16 -103, i16 -102, i16 -101, i16 -99, i16 -98, i16 -96, i16 -94, i16 -93, i16 -91, i16 -90, i16 -88, i16 -86, i16 -84, i16 -83, i16 -81, i16 -79, i16 -77, i16 -75, i16 -74, i16 -72, i16 -70, i16 -68, i16 -66, i16 -64, i16 -62, i16 -60, i16 -58, i16 -56, i16 -54, i16 -52, i16 -49, i16 -47, i16 -45, i16 -43, i16 -41, i16 -39, i16 -36, i16 -34, i16 -32, i16 -30, i16 -28, i16 -25, i16 -23, i16 -21, i16 -19, i16 -16, i16 -14, i16 -12, i16 -9, i16 -7, i16 -5, i16 -3, i16 0, i16 1, i16 3, i16 6, i16 8, i16 10, i16 12, i16 15, i16 17, i16 19, i16 22, i16 24, i16 26, i16 28, i16 30, i16 33, i16 35, i16 37, i16 39, i16 41], [174 x i8] zeroinitializer }, align 32
@hsv_red_y = internal constant { [361 x i16], [174 x i8] } { [361 x i16] [i16 82, i16 80, i16 78, i16 76, i16 74, i16 73, i16 71, i16 69, i16 67, i16 65, i16 63, i16 61, i16 58, i16 56, i16 54, i16 52, i16 50, i16 48, i16 46, i16 44, i16 41, i16 39, i16 37, i16 35, i16 32, i16 30, i16 28, i16 26, i16 23, i16 21, i16 19, i16 16, i16 14, i16 12, i16 10, i16 7, i16 5, i16 3, i16 0, i16 -1, i16 -3, i16 -6, i16 -8, i16 -10, i16 -13, i16 -15, i16 -17, i16 -19, i16 -22, i16 -24, i16 -26, i16 -29, i16 -31, i16 -33, i16 -35, i16 -38, i16 -40, i16 -42, i16 -44, i16 -46, i16 -48, i16 -51, i16 -53, i16 -55, i16 -57, i16 -59, i16 -61, i16 -63, i16 -65, i16 -67, i16 -69, i16 -71, i16 -73, i16 -75, i16 -77, i16 -79, i16 -81, i16 -82, i16 -84, i16 -86, i16 -88, i16 -89, i16 -91, i16 -93, i16 -94, i16 -96, i16 -98, i16 -99, i16 -101, i16 -102, i16 -104, i16 -105, i16 -106, i16 -108, i16 -109, i16 -110, i16 -112, i16 -113, i16 -114, i16 -115, i16 -116, i16 -117, i16 -119, i16 -120, i16 -120, i16 -121, i16 -122, i16 -123, i16 -124, i16 -125, i16 -126, i16 -126, i16 -127, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -127, i16 -127, i16 -126, i16 -125, i16 -125, i16 -124, i16 -123, i16 -122, i16 -121, i16 -120, i16 -119, i16 -118, i16 -117, i16 -116, i16 -115, i16 -114, i16 -113, i16 -111, i16 -110, i16 -109, i16 -107, i16 -106, i16 -105, i16 -103, i16 -102, i16 -100, i16 -99, i16 -97, i16 -96, i16 -94, i16 -92, i16 -91, i16 -89, i16 -87, i16 -85, i16 -84, i16 -82, i16 -80, i16 -78, i16 -76, i16 -74, i16 -73, i16 -71, i16 -69, i16 -67, i16 -65, i16 -63, i16 -61, i16 -58, i16 -56, i16 -54, i16 -52, i16 -50, i16 -48, i16 -46, i16 -44, i16 -41, i16 -39, i16 -37, i16 -35, i16 -32, i16 -30, i16 -28, i16 -26, i16 -23, i16 -21, i16 -19, i16 -16, i16 -14, i16 -12, i16 -10, i16 -7, i16 -5, i16 -3, i16 0, i16 1, i16 3, i16 6, i16 8, i16 10, i16 13, i16 15, i16 17, i16 19, i16 22, i16 24, i16 26, i16 29, i16 31, i16 33, i16 35, i16 38, i16 40, i16 42, i16 44, i16 46, i16 48, i16 51, i16 53, i16 55, i16 57, i16 59, i16 61, i16 63, i16 65, i16 67, i16 69, i16 71, i16 73, i16 75, i16 77, i16 79, i16 81, i16 82, i16 84, i16 86, i16 88, i16 89, i16 91, i16 93, i16 94, i16 96, i16 98, i16 99, i16 101, i16 102, i16 104, i16 105, i16 106, i16 108, i16 109, i16 110, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 119, i16 120, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 126, i16 127, i16 128, i16 128, i16 129, i16 129, i16 130, i16 130, i16 131, i16 131, i16 131, i16 131, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 132, i16 131, i16 131, i16 131, i16 130, i16 130, i16 130, i16 129, i16 129, i16 128, i16 127, i16 127, i16 126, i16 125, i16 125, i16 124, i16 123, i16 122, i16 121, i16 120, i16 119, i16 118, i16 117, i16 116, i16 115, i16 114, i16 113, i16 111, i16 110, i16 109, i16 107, i16 106, i16 105, i16 103, i16 102, i16 100, i16 99, i16 97, i16 96, i16 94, i16 92, i16 91, i16 89, i16 87, i16 85, i16 84, i16 82], [174 x i8] zeroinitializer }, align 32
@hsv_green_x = internal constant { [361 x i16], [174 x i8] } { [361 x i16] [i16 -124, i16 -124, i16 -125, i16 -125, i16 -125, i16 -125, i16 -125, i16 -125, i16 -125, i16 -126, i16 -126, i16 -125, i16 -125, i16 -125, i16 -125, i16 -125, i16 -125, i16 -124, i16 -124, i16 -124, i16 -123, i16 -123, i16 -122, i16 -122, i16 -121, i16 -121, i16 -120, i16 -120, i16 -119, i16 -118, i16 -117, i16 -117, i16 -116, i16 -115, i16 -114, i16 -113, i16 -112, i16 -111, i16 -110, i16 -109, i16 -108, i16 -107, i16 -105, i16 -104, i16 -103, i16 -102, i16 -100, i16 -99, i16 -98, i16 -96, i16 -95, i16 -93, i16 -92, i16 -91, i16 -89, i16 -87, i16 -86, i16 -84, i16 -83, i16 -81, i16 -79, i16 -77, i16 -76, i16 -74, i16 -72, i16 -70, i16 -69, i16 -67, i16 -65, i16 -63, i16 -61, i16 -59, i16 -57, i16 -55, i16 -53, i16 -51, i16 -49, i16 -47, i16 -45, i16 -43, i16 -41, i16 -39, i16 -37, i16 -35, i16 -33, i16 -30, i16 -28, i16 -26, i16 -24, i16 -22, i16 -20, i16 -18, i16 -15, i16 -13, i16 -11, i16 -9, i16 -7, i16 -4, i16 -2, i16 0, i16 1, i16 3, i16 6, i16 8, i16 10, i16 12, i16 14, i16 17, i16 19, i16 21, i16 23, i16 25, i16 27, i16 29, i16 32, i16 34, i16 36, i16 38, i16 40, i16 42, i16 44, i16 46, i16 48, i16 50, i16 52, i16 54, i16 56, i16 58, i16 60, i16 62, i16 64, i16 66, i16 68, i16 70, i16 71, i16 73, i16 75, i16 77, i16 78, i16 80, i16 82, i16 83, i16 85, i16 87, i16 88, i16 90, i16 91, i16 93, i16 94, i16 96, i16 97, i16 98, i16 100, i16 101, i16 102, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 111, i16 112, i16 113, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 118, i16 119, i16 120, i16 120, i16 121, i16 122, i16 122, i16 123, i16 123, i16 124, i16 124, i16 124, i16 125, i16 125, i16 125, i16 125, i16 125, i16 125, i16 125, i16 126, i16 126, i16 125, i16 125, i16 125, i16 125, i16 125, i16 125, i16 124, i16 124, i16 124, i16 123, i16 123, i16 122, i16 122, i16 121, i16 121, i16 120, i16 120, i16 119, i16 118, i16 117, i16 117, i16 116, i16 115, i16 114, i16 113, i16 112, i16 111, i16 110, i16 109, i16 108, i16 107, i16 105, i16 104, i16 103, i16 102, i16 100, i16 99, i16 98, i16 96, i16 95, i16 93, i16 92, i16 91, i16 89, i16 87, i16 86, i16 84, i16 83, i16 81, i16 79, i16 77, i16 76, i16 74, i16 72, i16 70, i16 69, i16 67, i16 65, i16 63, i16 61, i16 59, i16 57, i16 55, i16 53, i16 51, i16 49, i16 47, i16 45, i16 43, i16 41, i16 39, i16 37, i16 35, i16 33, i16 30, i16 28, i16 26, i16 24, i16 22, i16 20, i16 18, i16 15, i16 13, i16 11, i16 9, i16 7, i16 4, i16 2, i16 0, i16 -1, i16 -3, i16 -6, i16 -8, i16 -10, i16 -12, i16 -14, i16 -17, i16 -19, i16 -21, i16 -23, i16 -25, i16 -27, i16 -29, i16 -32, i16 -34, i16 -36, i16 -38, i16 -40, i16 -42, i16 -44, i16 -46, i16 -48, i16 -50, i16 -52, i16 -54, i16 -56, i16 -58, i16 -60, i16 -62, i16 -64, i16 -66, i16 -68, i16 -70, i16 -71, i16 -73, i16 -75, i16 -77, i16 -78, i16 -80, i16 -82, i16 -83, i16 -85, i16 -87, i16 -88, i16 -90, i16 -91, i16 -93, i16 -94, i16 -96, i16 -97, i16 -98, i16 -100, i16 -101, i16 -102, i16 -104, i16 -105, i16 -106, i16 -107, i16 -108, i16 -109, i16 -111, i16 -112, i16 -113, i16 -113, i16 -114, i16 -115, i16 -116, i16 -117, i16 -118, i16 -118, i16 -119, i16 -120, i16 -120, i16 -121, i16 -122, i16 -122, i16 -123, i16 -123, i16 -124, i16 -124], [174 x i8] zeroinitializer }, align 32
@hsv_green_y = internal constant { [361 x i16], [174 x i8] } { [361 x i16] [i16 -100, i16 -99, i16 -98, i16 -97, i16 -95, i16 -94, i16 -93, i16 -91, i16 -90, i16 -89, i16 -87, i16 -86, i16 -84, i16 -83, i16 -81, i16 -80, i16 -78, i16 -76, i16 -75, i16 -73, i16 -71, i16 -70, i16 -68, i16 -66, i16 -64, i16 -63, i16 -61, i16 -59, i16 -57, i16 -55, i16 -53, i16 -51, i16 -49, i16 -48, i16 -46, i16 -44, i16 -42, i16 -40, i16 -38, i16 -36, i16 -34, i16 -32, i16 -30, i16 -27, i16 -25, i16 -23, i16 -21, i16 -19, i16 -17, i16 -15, i16 -13, i16 -11, i16 -9, i16 -7, i16 -4, i16 -2, i16 0, i16 1, i16 3, i16 5, i16 7, i16 9, i16 11, i16 14, i16 16, i16 18, i16 20, i16 22, i16 24, i16 26, i16 28, i16 30, i16 32, i16 34, i16 36, i16 38, i16 40, i16 42, i16 44, i16 46, i16 48, i16 50, i16 52, i16 54, i16 56, i16 58, i16 59, i16 61, i16 63, i16 65, i16 67, i16 68, i16 70, i16 72, i16 74, i16 75, i16 77, i16 78, i16 80, i16 82, i16 83, i16 85, i16 86, i16 88, i16 89, i16 90, i16 92, i16 93, i16 95, i16 96, i16 97, i16 98, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 112, i16 113, i16 114, i16 115, i16 115, i16 116, i16 116, i16 117, i16 117, i16 118, i16 118, i16 119, i16 119, i16 119, i16 120, i16 120, i16 120, i16 120, i16 120, i16 121, i16 121, i16 121, i16 121, i16 121, i16 121, i16 120, i16 120, i16 120, i16 120, i16 120, i16 119, i16 119, i16 119, i16 118, i16 118, i16 117, i16 117, i16 116, i16 116, i16 115, i16 114, i16 114, i16 113, i16 112, i16 111, i16 111, i16 110, i16 109, i16 108, i16 107, i16 106, i16 105, i16 104, i16 103, i16 102, i16 100, i16 99, i16 98, i16 97, i16 95, i16 94, i16 93, i16 91, i16 90, i16 89, i16 87, i16 86, i16 84, i16 83, i16 81, i16 80, i16 78, i16 76, i16 75, i16 73, i16 71, i16 70, i16 68, i16 66, i16 64, i16 63, i16 61, i16 59, i16 57, i16 55, i16 53, i16 51, i16 49, i16 48, i16 46, i16 44, i16 42, i16 40, i16 38, i16 36, i16 34, i16 32, i16 30, i16 27, i16 25, i16 23, i16 21, i16 19, i16 17, i16 15, i16 13, i16 11, i16 9, i16 7, i16 4, i16 2, i16 0, i16 -1, i16 -3, i16 -5, i16 -7, i16 -9, i16 -11, i16 -14, i16 -16, i16 -18, i16 -20, i16 -22, i16 -24, i16 -26, i16 -28, i16 -30, i16 -32, i16 -34, i16 -36, i16 -38, i16 -40, i16 -42, i16 -44, i16 -46, i16 -48, i16 -50, i16 -52, i16 -54, i16 -56, i16 -58, i16 -59, i16 -61, i16 -63, i16 -65, i16 -67, i16 -68, i16 -70, i16 -72, i16 -74, i16 -75, i16 -77, i16 -78, i16 -80, i16 -82, i16 -83, i16 -85, i16 -86, i16 -88, i16 -89, i16 -90, i16 -92, i16 -93, i16 -95, i16 -96, i16 -97, i16 -98, i16 -100, i16 -101, i16 -102, i16 -103, i16 -104, i16 -105, i16 -106, i16 -107, i16 -108, i16 -109, i16 -110, i16 -111, i16 -112, i16 -112, i16 -113, i16 -114, i16 -115, i16 -115, i16 -116, i16 -116, i16 -117, i16 -117, i16 -118, i16 -118, i16 -119, i16 -119, i16 -119, i16 -120, i16 -120, i16 -120, i16 -120, i16 -120, i16 -121, i16 -121, i16 -121, i16 -121, i16 -121, i16 -121, i16 -120, i16 -120, i16 -120, i16 -120, i16 -120, i16 -119, i16 -119, i16 -119, i16 -118, i16 -118, i16 -117, i16 -117, i16 -116, i16 -116, i16 -115, i16 -114, i16 -114, i16 -113, i16 -112, i16 -111, i16 -111, i16 -110, i16 -109, i16 -108, i16 -107, i16 -106, i16 -105, i16 -104, i16 -103, i16 -102, i16 -100], [174 x i8] zeroinitializer }, align 32
@hsv_blue_x = internal constant { [361 x i16], [174 x i8] } { [361 x i16] [i16 112, i16 113, i16 114, i16 114, i16 115, i16 116, i16 117, i16 117, i16 118, i16 118, i16 119, i16 119, i16 120, i16 120, i16 120, i16 121, i16 121, i16 121, i16 122, i16 122, i16 122, i16 122, i16 122, i16 122, i16 122, i16 122, i16 122, i16 122, i16 122, i16 122, i16 121, i16 121, i16 121, i16 120, i16 120, i16 120, i16 119, i16 119, i16 118, i16 118, i16 117, i16 116, i16 116, i16 115, i16 114, i16 113, i16 113, i16 112, i16 111, i16 110, i16 109, i16 108, i16 107, i16 106, i16 105, i16 104, i16 103, i16 102, i16 100, i16 99, i16 98, i16 97, i16 95, i16 94, i16 93, i16 91, i16 90, i16 88, i16 87, i16 85, i16 84, i16 82, i16 80, i16 79, i16 77, i16 76, i16 74, i16 72, i16 70, i16 69, i16 67, i16 65, i16 63, i16 61, i16 60, i16 58, i16 56, i16 54, i16 52, i16 50, i16 48, i16 46, i16 44, i16 42, i16 40, i16 38, i16 36, i16 34, i16 32, i16 30, i16 28, i16 26, i16 24, i16 22, i16 19, i16 17, i16 15, i16 13, i16 11, i16 9, i16 7, i16 5, i16 2, i16 0, i16 -1, i16 -3, i16 -5, i16 -7, i16 -9, i16 -12, i16 -14, i16 -16, i16 -18, i16 -20, i16 -22, i16 -24, i16 -26, i16 -28, i16 -31, i16 -33, i16 -35, i16 -37, i16 -39, i16 -41, i16 -43, i16 -45, i16 -47, i16 -49, i16 -51, i16 -53, i16 -54, i16 -56, i16 -58, i16 -60, i16 -62, i16 -64, i16 -66, i16 -67, i16 -69, i16 -71, i16 -73, i16 -74, i16 -76, i16 -78, i16 -79, i16 -81, i16 -83, i16 -84, i16 -86, i16 -87, i16 -89, i16 -90, i16 -92, i16 -93, i16 -94, i16 -96, i16 -97, i16 -98, i16 -99, i16 -101, i16 -102, i16 -103, i16 -104, i16 -105, i16 -106, i16 -107, i16 -108, i16 -109, i16 -110, i16 -111, i16 -112, i16 -113, i16 -114, i16 -114, i16 -115, i16 -116, i16 -117, i16 -117, i16 -118, i16 -118, i16 -119, i16 -119, i16 -120, i16 -120, i16 -120, i16 -121, i16 -121, i16 -121, i16 -122, i16 -122, i16 -122, i16 -122, i16 -122, i16 -122, i16 -122, i16 -122, i16 -122, i16 -122, i16 -122, i16 -122, i16 -121, i16 -121, i16 -121, i16 -120, i16 -120, i16 -120, i16 -119, i16 -119, i16 -118, i16 -118, i16 -117, i16 -116, i16 -116, i16 -115, i16 -114, i16 -113, i16 -113, i16 -112, i16 -111, i16 -110, i16 -109, i16 -108, i16 -107, i16 -106, i16 -105, i16 -104, i16 -103, i16 -102, i16 -100, i16 -99, i16 -98, i16 -97, i16 -95, i16 -94, i16 -93, i16 -91, i16 -90, i16 -88, i16 -87, i16 -85, i16 -84, i16 -82, i16 -80, i16 -79, i16 -77, i16 -76, i16 -74, i16 -72, i16 -70, i16 -69, i16 -67, i16 -65, i16 -63, i16 -61, i16 -60, i16 -58, i16 -56, i16 -54, i16 -52, i16 -50, i16 -48, i16 -46, i16 -44, i16 -42, i16 -40, i16 -38, i16 -36, i16 -34, i16 -32, i16 -30, i16 -28, i16 -26, i16 -24, i16 -22, i16 -19, i16 -17, i16 -15, i16 -13, i16 -11, i16 -9, i16 -7, i16 -5, i16 -2, i16 0, i16 1, i16 3, i16 5, i16 7, i16 9, i16 12, i16 14, i16 16, i16 18, i16 20, i16 22, i16 24, i16 26, i16 28, i16 31, i16 33, i16 35, i16 37, i16 39, i16 41, i16 43, i16 45, i16 47, i16 49, i16 51, i16 53, i16 54, i16 56, i16 58, i16 60, i16 62, i16 64, i16 66, i16 67, i16 69, i16 71, i16 73, i16 74, i16 76, i16 78, i16 79, i16 81, i16 83, i16 84, i16 86, i16 87, i16 89, i16 90, i16 92, i16 93, i16 94, i16 96, i16 97, i16 98, i16 99, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112], [174 x i8] zeroinitializer }, align 32
@hsv_blue_y = internal constant { [361 x i16], [174 x i8] } { [361 x i16] [i16 -11, i16 -13, i16 -15, i16 -17, i16 -19, i16 -21, i16 -23, i16 -25, i16 -27, i16 -29, i16 -31, i16 -33, i16 -35, i16 -37, i16 -39, i16 -41, i16 -43, i16 -45, i16 -46, i16 -48, i16 -50, i16 -52, i16 -54, i16 -55, i16 -57, i16 -59, i16 -61, i16 -62, i16 -64, i16 -66, i16 -67, i16 -69, i16 -71, i16 -72, i16 -74, i16 -75, i16 -77, i16 -78, i16 -80, i16 -81, i16 -83, i16 -84, i16 -86, i16 -87, i16 -88, i16 -90, i16 -91, i16 -92, i16 -93, i16 -95, i16 -96, i16 -97, i16 -98, i16 -99, i16 -100, i16 -101, i16 -102, i16 -103, i16 -104, i16 -105, i16 -106, i16 -106, i16 -107, i16 -108, i16 -109, i16 -109, i16 -110, i16 -111, i16 -111, i16 -112, i16 -112, i16 -113, i16 -113, i16 -114, i16 -114, i16 -114, i16 -115, i16 -115, i16 -115, i16 -115, i16 -116, i16 -116, i16 -116, i16 -116, i16 -116, i16 -116, i16 -116, i16 -116, i16 -116, i16 -115, i16 -115, i16 -115, i16 -115, i16 -114, i16 -114, i16 -114, i16 -113, i16 -113, i16 -112, i16 -112, i16 -111, i16 -111, i16 -110, i16 -110, i16 -109, i16 -108, i16 -108, i16 -107, i16 -106, i16 -105, i16 -104, i16 -103, i16 -102, i16 -101, i16 -100, i16 -99, i16 -98, i16 -97, i16 -96, i16 -95, i16 -94, i16 -93, i16 -91, i16 -90, i16 -89, i16 -88, i16 -86, i16 -85, i16 -84, i16 -82, i16 -81, i16 -79, i16 -78, i16 -76, i16 -75, i16 -73, i16 -71, i16 -70, i16 -68, i16 -67, i16 -65, i16 -63, i16 -62, i16 -60, i16 -58, i16 -56, i16 -55, i16 -53, i16 -51, i16 -49, i16 -47, i16 -45, i16 -44, i16 -42, i16 -40, i16 -38, i16 -36, i16 -34, i16 -32, i16 -30, i16 -28, i16 -26, i16 -24, i16 -22, i16 -20, i16 -18, i16 -16, i16 -14, i16 -12, i16 -10, i16 -8, i16 -6, i16 -4, i16 -2, i16 0, i16 1, i16 3, i16 5, i16 7, i16 9, i16 11, i16 13, i16 15, i16 17, i16 19, i16 21, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 35, i16 37, i16 39, i16 41, i16 43, i16 45, i16 46, i16 48, i16 50, i16 52, i16 54, i16 55, i16 57, i16 59, i16 61, i16 62, i16 64, i16 66, i16 67, i16 69, i16 71, i16 72, i16 74, i16 75, i16 77, i16 78, i16 80, i16 81, i16 83, i16 84, i16 86, i16 87, i16 88, i16 90, i16 91, i16 92, i16 93, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 106, i16 107, i16 108, i16 109, i16 109, i16 110, i16 111, i16 111, i16 112, i16 112, i16 113, i16 113, i16 114, i16 114, i16 114, i16 115, i16 115, i16 115, i16 115, i16 116, i16 116, i16 116, i16 116, i16 116, i16 116, i16 116, i16 116, i16 116, i16 115, i16 115, i16 115, i16 115, i16 114, i16 114, i16 114, i16 113, i16 113, i16 112, i16 112, i16 111, i16 111, i16 110, i16 110, i16 109, i16 108, i16 108, i16 107, i16 106, i16 105, i16 104, i16 103, i16 102, i16 101, i16 100, i16 99, i16 98, i16 97, i16 96, i16 95, i16 94, i16 93, i16 91, i16 90, i16 89, i16 88, i16 86, i16 85, i16 84, i16 82, i16 81, i16 79, i16 78, i16 76, i16 75, i16 73, i16 71, i16 70, i16 68, i16 67, i16 65, i16 63, i16 62, i16 60, i16 58, i16 56, i16 55, i16 53, i16 51, i16 49, i16 47, i16 45, i16 44, i16 42, i16 40, i16 38, i16 36, i16 34, i16 32, i16 30, i16 28, i16 26, i16 24, i16 22, i16 20, i16 18, i16 16, i16 14, i16 12, i16 10, i16 8, i16 6, i16 4, i16 2, i16 0, i16 -1, i16 -3, i16 -5, i16 -7, i16 -9, i16 -11], [174 x i8] zeroinitializer }, align 32
@ov_gain = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\00\04\08\0C\10\12\14\16\18\1A\1C\1E0123456789:;<=>?p", [35 x i8] zeroinitializer }, align 32
@micron1_gain = internal constant { [29 x i16], [38 x i8] } { [29 x i16] [i16 32, i16 40, i16 48, i16 56, i16 160, i16 164, i16 168, i16 172, i16 176, i16 180, i16 184, i16 188, i16 192, i16 196, i16 200, i16 204, i16 208, i16 212, i16 216, i16 220, i16 224, i16 228, i16 232, i16 236, i16 240, i16 244, i16 248, i16 252, i16 448], [38 x i8] zeroinitializer }, align 32
@micron2_gain = internal constant { [29 x i16], [38 x i8] } { [29 x i16] [i16 8, i16 10, i16 12, i16 14, i16 16, i16 18, i16 20, i16 22, i16 24, i16 26, i16 28, i16 30, i16 32, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96], [38 x i8] zeroinitializer }, align 32
@hv7131r_gain = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\08\0C\10\14\18\1C $(,048<@DHLPTX\\`dhlptx", [35 x i8] zeroinitializer }, align 32
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.4, i32 2022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016gspca_sn9c20x: Set 1280x1024\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.4, i32 2026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016gspca_sn9c20x: Set 640x480\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.108 = internal global ptr @sd_start._entry.106, section ".printk_index", align 4
@sd_start._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.4, i32 2030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016gspca_sn9c20x: Set 320x240\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.111 = internal global ptr @sd_start._entry.109, section ".printk_index", align 4
@sd_start._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.105, ptr @.str.4, i32 2034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016gspca_sn9c20x: Set 160x120\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.114 = internal global ptr @sd_start._entry.112, section ".printk_index", align 4
@sd_pkt_scan.frame_header = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\00\C4\C4\96", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sd_isoc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.4, i32 1968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\014gspca_sn9c20x: sn9c20x camera with unknown number of alt settings (%d), please report!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_isoc_init\00", [19 x i8] zeroinitializer }, align 32
@sd_isoc_init._entry_ptr = internal global ptr @sd_isoc_init._entry, section ".printk_index", align 4
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sensor\00", [25 x i8] zeroinitializer }, align 32
@switch.table.sd_init_controls = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\02\01\04\01\01\01\08\01\01\01\0C", [20 x i8] zeroinitializer }, align 32
@switch.table.sd_start = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.113, ptr @.str.110, ptr @.str.107, ptr @.str.104], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 2, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.118 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 16, i64 33809, i64 33825, i64 33841]
@__sancov_gen_cov_switch_values.120 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 6, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [11 x i64] [i64 9, i64 32, i64 9963776, i64 9963791, i64 9963792, i64 9963793, i64 9963794, i64 9963795, i64 9963796, i64 10225921, i64 10291459]
@__sancov_gen_cov_switch_values.126 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 3, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.127 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 7, i64 8, i64 11]
@__sancov_gen_cov_switch_values.128 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 11]
@___asan_gen_.129 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2397, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2409, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2346, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2320, i32 29 }
@___asan_gen_.141 = private unnamed_addr constant [10 x i8] c"sxga_mode\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 215, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"mono_mode\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 268, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 167, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1660, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2179, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 19, i32 17 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 948, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"bridge_init\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 579, i32 18 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1813, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1825, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1834, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1840, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1846, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1852, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1858, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1864, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1870, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1876, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1887, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1890, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1092, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [12 x i8] c"ov9650_init\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 750, i32 32 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1101, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 969, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 976, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 920, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [12 x i8] c"ov9655_init\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 780, i32 32 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1114, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [12 x i8] c"soi968_init\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 667, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1128, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [12 x i8] c"ov7660_init\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 681, i32 32 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1142, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [12 x i8] c"ov7670_init\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 693, i32 32 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1155, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [13 x i8] c"mt9v011_init\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 836, i32 33 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1172, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1178, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [13 x i8] c"mt9v111_init\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 826, i32 33 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1190, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1196, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [13 x i8] c"mt9v112_init\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 807, i32 33 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1213, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1219, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [13 x i8] c"mt9m111_init\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 879, i32 33 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1244, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant [13 x i8] c"mt9m112_init\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 886, i32 33 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1232, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1263, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1266, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1269, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [13 x i8] c"mt9m001_init\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 863, i32 33 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1276, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant [13 x i8] c"hv7131r_init\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 893, i32 32 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1288, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1728, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1718, i32 35 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1779, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant [10 x i8] c"hsv_red_x\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 291, i32 18 }
@___asan_gen_.480 = private unnamed_addr constant [10 x i8] c"hsv_red_y\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 339, i32 18 }
@___asan_gen_.483 = private unnamed_addr constant [12 x i8] c"hsv_green_x\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 387, i32 18 }
@___asan_gen_.486 = private unnamed_addr constant [12 x i8] c"hsv_green_y\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 435, i32 18 }
@___asan_gen_.489 = private unnamed_addr constant [11 x i8] c"hsv_blue_x\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 483, i32 18 }
@___asan_gen_.492 = private unnamed_addr constant [11 x i8] c"hsv_blue_y\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 531, i32 18 }
@___asan_gen_.495 = private unnamed_addr constant [8 x i8] c"ov_gain\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 603, i32 17 }
@___asan_gen_.498 = private unnamed_addr constant [13 x i8] c"micron1_gain\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 615, i32 18 }
@___asan_gen_.501 = private unnamed_addr constant [13 x i8] c"micron2_gain\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 636, i32 18 }
@___asan_gen_.504 = private unnamed_addr constant [13 x i8] c"hv7131r_gain\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 656, i32 17 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2022, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2026, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2030, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2034, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant [13 x i8] c"frame_header\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 2257, i32 18 }
@___asan_gen_.537 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1967, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.547 = private constant [37 x i8] c"../drivers/media/usb/gspca/sn9c20x.c\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 1616, i32 23 }
@___asan_gen_.549 = private unnamed_addr constant [30 x i8] c"switch.table.sd_init_controls\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [22 x i8] c"switch.table.sd_start\00", align 1
@llvm.compiler.used = appending global [191 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_sn9c20x__307_2409_sd_driver_init6, ptr @hv7131r_init_sensor._entry, ptr @hv7131r_init_sensor._entry_ptr, ptr @i2c_w._entry, ptr @i2c_w._entry.48, ptr @i2c_w._entry_ptr, ptr @i2c_w._entry_ptr.50, ptr @mt9m001_init_sensor._entry, ptr @mt9m001_init_sensor._entry.84, ptr @mt9m001_init_sensor._entry.87, ptr @mt9m001_init_sensor._entry.90, ptr @mt9m001_init_sensor._entry_ptr, ptr @mt9m001_init_sensor._entry_ptr.86, ptr @mt9m001_init_sensor._entry_ptr.89, ptr @mt9m001_init_sensor._entry_ptr.92, ptr @mt9m111_init_sensor._entry, ptr @mt9m111_init_sensor._entry_ptr, ptr @mt9m112_init_sensor._entry, ptr @mt9m112_init_sensor._entry_ptr, ptr @mt9v_init_sensor._entry, ptr @mt9v_init_sensor._entry.63, ptr @mt9v_init_sensor._entry.66, ptr @mt9v_init_sensor._entry.69, ptr @mt9v_init_sensor._entry.72, ptr @mt9v_init_sensor._entry.75, ptr @mt9v_init_sensor._entry_ptr, ptr @mt9v_init_sensor._entry_ptr.65, ptr @mt9v_init_sensor._entry_ptr.68, ptr @mt9v_init_sensor._entry_ptr.71, ptr @mt9v_init_sensor._entry_ptr.74, ptr @mt9v_init_sensor._entry_ptr.77, ptr @ov7660_init_sensor._entry, ptr @ov7660_init_sensor._entry_ptr, ptr @ov7670_init_sensor._entry, ptr @ov7670_init_sensor._entry_ptr, ptr @ov9650_init_sensor._entry, ptr @ov9650_init_sensor._entry.43, ptr @ov9650_init_sensor._entry_ptr, ptr @ov9650_init_sensor._entry_ptr.45, ptr @ov9655_init_sensor._entry, ptr @ov9655_init_sensor._entry_ptr, ptr @qual_upd._entry, ptr @qual_upd._entry_ptr, ptr @reg_r._entry, ptr @reg_r._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.11, ptr @sd_init._entry.14, ptr @sd_init._entry.17, ptr @sd_init._entry.20, ptr @sd_init._entry.23, ptr @sd_init._entry.26, ptr @sd_init._entry.29, ptr @sd_init._entry.32, ptr @sd_init._entry.35, ptr @sd_init._entry.38, ptr @sd_init._entry.9, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.10, ptr @sd_init._entry_ptr.13, ptr @sd_init._entry_ptr.16, ptr @sd_init._entry_ptr.19, ptr @sd_init._entry_ptr.22, ptr @sd_init._entry_ptr.25, ptr @sd_init._entry_ptr.28, ptr @sd_init._entry_ptr.31, ptr @sd_init._entry_ptr.34, ptr @sd_init._entry_ptr.37, ptr @sd_init._entry_ptr.40, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_isoc_init._entry, ptr @sd_isoc_init._entry_ptr, ptr @sd_start._entry, ptr @sd_start._entry.106, ptr @sd_start._entry.109, ptr @sd_start._entry.112, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.108, ptr @sd_start._entry_ptr.111, ptr @sd_start._entry_ptr.114, ptr @soi968_init_sensor._entry, ptr @soi968_init_sensor._entry_ptr, ptr @sd_driver, ptr @.str, ptr @device_table, ptr @sd_desc, ptr @sxga_mode, ptr @mono_mode, ptr @vga_mode, ptr @sd_config.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @jpeg_head, ptr @.str.5, ptr @.str.6, ptr @bridge_init, ptr @.str.7, ptr @.str.8, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @ov9650_init, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @ov9655_init, ptr @.str.53, ptr @.str.54, ptr @soi968_init, ptr @.str.55, ptr @.str.56, ptr @ov7660_init, ptr @.str.57, ptr @.str.58, ptr @ov7670_init, ptr @.str.59, ptr @.str.60, ptr @mt9v011_init, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @mt9v111_init, ptr @.str.67, ptr @.str.70, ptr @mt9v112_init, ptr @.str.73, ptr @.str.76, ptr @mt9m111_init, ptr @.str.78, ptr @.str.79, ptr @mt9m112_init, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @mt9m001_init, ptr @.str.91, ptr @hv7131r_init, ptr @.str.93, ptr @.str.94, ptr @sd_init_controls._key, ptr @.str.95, ptr @sd_ctrl_ops, ptr @.str.96, ptr @.str.97, ptr @hsv_red_x, ptr @hsv_red_y, ptr @hsv_green_x, ptr @hsv_green_y, ptr @hsv_blue_x, ptr @hsv_blue_y, ptr @ov_gain, ptr @micron1_gain, ptr @micron2_gain, ptr @hv7131r_gain, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @sd_pkt_scan.frame_header, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @switch.table.sd_init_controls, ptr @switch.table.sd_start], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 912, i32 1152, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxga_mode to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mono_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qual_upd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_init to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_init to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_init_sensor._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_w._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9655_init to i32), i32 186, i32 224, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9655_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi968_init to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi968_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_init to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v011_init to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v_init_sensor._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_init to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v_init_sensor._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v_init_sensor._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v112_init to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v_init_sensor._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v_init_sensor._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m112_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m112_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_init_sensor._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_init_sensor._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_init to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m001_init_sensor._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_init to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_init_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsv_red_x to i32), i32 722, i32 896, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsv_red_y to i32), i32 722, i32 896, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsv_green_x to i32), i32 722, i32 896, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsv_green_y to i32), i32 722, i32 896, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsv_blue_x to i32), i32 722, i32 896, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsv_blue_y to i32), i32 722, i32 896, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_gain to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron1_gain to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micron2_gain to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_gain to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan.frame_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_init_controls to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 0, i32 0, i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3320, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %needs_full_bandwidth = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 9
  %0 = ptrtoint ptr %needs_full_bandwidth to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %needs_full_bandwidth, align 1
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %1 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_info, align 4
  %shr = lshr i32 %2, 8
  %conv = trunc i32 %shr to i8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %sensor, align 1
  %4 = load i32, ptr %driver_info, align 4
  %conv3 = trunc i32 %4 to i8
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %5 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3, ptr %i2c_addr, align 1
  %6 = load i32, ptr %driver_info, align 4
  %shr5 = lshr i32 %6, 16
  %conv6 = trunc i32 %shr5 to i8
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 23
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %flags, align 1
  %i2c_intf = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %8 = ptrtoint ptr %i2c_intf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %i2c_intf, align 4
  %9 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %entry.sw.default_crit_edge [
    i8 10, label %entry.sw.epilog_crit_edge
    i8 9, label %entry.sw.epilog_crit_edge43
    i8 0, label %entry.sw.epilog_crit_edge44
    i8 2, label %entry.sw.epilog_crit_edge45
    i8 8, label %sw.bb9
    i8 11, label %sw.bb12
  ]

entry.sw.epilog_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge44:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge43:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %i2c_intf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -127, ptr %i2c_intf, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb12, %entry.sw.default_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge43, %entry.sw.epilog_crit_edge44, %entry.sw.epilog_crit_edge45
  %vga_mode.sink = phi ptr [ @vga_mode, %sw.default ], [ @mono_mode, %sw.bb9 ], [ @sxga_mode, %entry.sw.epilog_crit_edge ], [ @sxga_mode, %entry.sw.epilog_crit_edge43 ], [ @sxga_mode, %entry.sw.epilog_crit_edge44 ], [ @sxga_mode, %entry.sw.epilog_crit_edge45 ]
  %.sink = phi i8 [ 9, %sw.default ], [ 4, %sw.bb9 ], [ 10, %entry.sw.epilog_crit_edge ], [ 10, %entry.sw.epilog_crit_edge43 ], [ 10, %entry.sw.epilog_crit_edge44 ], [ 10, %entry.sw.epilog_crit_edge45 ]
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %11 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vga_mode.sink, ptr %cam1, align 4
  %nmodes15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %12 = ptrtoint ptr %nmodes15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %nmodes15, align 4
  %old_step = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %13 = ptrtoint ptr %old_step to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %old_step, align 8
  %older_step = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %14 = ptrtoint ptr %older_step to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %older_step, align 1
  %exposure_step = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %15 = ptrtoint ptr %exposure_step to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %exposure_step, align 2
  %work = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %16 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @sd_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry19 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qual_upd, ptr %func, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %row.i.i.i360 = alloca [8 x i8], align 1
  %row.i.i.i340 = alloca [8 x i8], align 1
  %id.i341 = alloca i16, align 2
  %row.i.i.i320 = alloca [8 x i8], align 1
  %row.i.i.i301 = alloca [8 x i8], align 1
  %row.i.i131.i = alloca [8 x i8], align 1
  %row.i128.i = alloca [8 x i8], align 1
  %row.i125.i = alloca [8 x i8], align 1
  %row.i.i112.i = alloca [8 x i8], align 1
  %row.i.i282 = alloca [8 x i8], align 1
  %row.i.i.i283 = alloca [8 x i8], align 1
  %value.i = alloca i16, align 2
  %row.i.i.i263 = alloca [8 x i8], align 1
  %row.i.i264 = alloca [8 x i8], align 1
  %row.i.i.i244 = alloca [8 x i8], align 1
  %row.i.i245 = alloca [8 x i8], align 1
  %row.i.i.i225 = alloca [8 x i8], align 1
  %row.i.i226 = alloca [8 x i8], align 1
  %row.i.i.i206 = alloca [8 x i8], align 1
  %row.i.i207 = alloca [8 x i8], align 1
  %row.i.i.i = alloca [8 x i8], align 1
  %row.i.i = alloca [8 x i8], align 1
  %id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %0 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i2c_addr, align 1
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %reg_w.exit
  %inc = add nuw nsw i32 %i.0418, 1
  %exitcond.not = icmp eq i32 %inc, 58
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0418 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [58 x [2 x i16]], ptr @bridge_init, i32 0, i32 %i.0418
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %for.body.do.end_crit_edge, label %if.end.i

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %arrayidx8 = getelementptr [58 x [2 x i16]], ptr @bridge_init, i32 0, i32 %i.0418, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx8, align 2
  %conv = trunc i16 %7 to i8
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %11, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext %3, i16 noundef zeroext 0, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp6.i.not = icmp eq i32 %call3.i, 1
  br i1 %cmp6.i.not, label %reg_w.exitthread-pre-split, label %do.end.i, !prof !292

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv10.i = zext i16 %3 to i32
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv10.i, i32 noundef %call3.i) #10
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exitthread-pre-split:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %reg_w.exitthread-pre-split, %do.end.i
  %18 = phi i32 [ %.pr, %reg_w.exitthread-pre-split ], [ %call3.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11 = icmp slt i32 %18, 0
  br i1 %cmp11, label %reg_w.exit.do.end_crit_edge, label %for.cond

reg_w.exit.do.end_crit_edge:                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %reg_w.exit.do.end_crit_edge, %for.body.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 23
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 1
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i178 = icmp slt i32 %23, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %for.end
  br i1 %cmp.i.i178, label %if.then15.do.end23_crit_edge, label %if.end.i.i

if.then15.do.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end.i.i:                                       ; preds = %if.then15
  %24 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i, align 4
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %27, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %25, align 8
  %shl.i.i.i = shl i32 %30, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %31 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4102, i16 noundef zeroext 0, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp6.i.not.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp6.i.not.i, label %if.end.i.i.if.end16thread-pre-split_crit_edge, label %do.end.i.i, !prof !292

if.end.i.i.if.end16thread-pre-split_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16thread-pre-split

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4102, i32 noundef %call3.i.i) #10
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call3.i.i, ptr %usb_err.i, align 8
  br label %if.end16

if.else:                                          ; preds = %for.end
  br i1 %cmp.i.i178, label %if.else.do.end23_crit_edge, label %if.end.i.i185

if.else.do.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end.i.i185:                                    ; preds = %if.else
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  %35 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_buf.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 32, ptr %36, align 1
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %34, align 8
  %shl.i.i.i181 = shl i32 %39, 8
  %or.i.i182 = or i32 %shl.i.i.i181, -2147483648
  %40 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.i183 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i.i182, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4102, i16 noundef zeroext 0, ptr noundef %40, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i183)
  %cmp6.i.not.i184 = icmp eq i32 %call3.i.i183, 1
  br i1 %cmp6.i.not.i184, label %if.end.i.i185.if.end16thread-pre-split_crit_edge, label %do.end.i.i187, !prof !292

if.end.i.i185.if.end16thread-pre-split_crit_edge: ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16thread-pre-split

do.end.i.i187:                                    ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4102, i32 noundef %call3.i.i183) #10
  %41 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call3.i.i183, ptr %usb_err.i, align 8
  br label %if.end16

if.end16thread-pre-split:                         ; preds = %if.end.i.i185.if.end16thread-pre-split_crit_edge, %if.end.i.i.if.end16thread-pre-split_crit_edge
  %42 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr419 = load i32, ptr %usb_err.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end16thread-pre-split, %do.end.i.i187, %do.end.i.i
  %43 = phi i32 [ %.pr419, %if.end16thread-pre-split ], [ %call3.i.i183, %do.end.i.i187 ], [ %call3.i.i, %do.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i190 = icmp slt i32 %43, 0
  br i1 %cmp.i190, label %if.end16.do.end23_crit_edge, label %if.end.i198

if.end16.do.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end.i198:                                      ; preds = %if.end16
  %44 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i, align 4
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -128, ptr %47, align 1
  %i2c_init.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %47, i32 1
  %49 = ptrtoint ptr %i2c_init.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %1, ptr %i2c_init.sroa.5.0..sroa_idx, align 1
  %i2c_init.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %47, i32 2
  %i2c_init.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %47, i32 8
  %50 = call ptr @memset(ptr %i2c_init.sroa.7.0..sroa_idx, i32 0, i32 6)
  %51 = ptrtoint ptr %i2c_init.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %i2c_init.sroa.19.0..sroa_idx, align 1
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %45, align 8
  %shl.i.i193 = shl i32 %53, 8
  %or.i194 = or i32 %shl.i.i193, -2147483648
  %54 = load ptr, ptr %usb_buf.i, align 4
  %call3.i195 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i194, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4288, i16 noundef zeroext 0, ptr noundef %54, i16 noundef zeroext 9, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call3.i195)
  %cmp6.i197.not = icmp eq i32 %call3.i195, 9
  br i1 %cmp6.i197.not, label %reg_w.exit201thread-pre-split, label %do.end.i200, !prof !292

do.end.i200:                                      ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4288, i32 noundef %call3.i195) #10
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call3.i195, ptr %usb_err.i, align 8
  br label %reg_w.exit201

reg_w.exit201thread-pre-split:                    ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr379 = load i32, ptr %usb_err.i, align 8
  br label %reg_w.exit201

reg_w.exit201:                                    ; preds = %reg_w.exit201thread-pre-split, %do.end.i200
  %57 = phi i32 [ %.pr379, %reg_w.exit201thread-pre-split ], [ %call3.i195, %do.end.i200 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp18 = icmp slt i32 %57, 0
  br i1 %cmp18, label %reg_w.exit201.do.end23_crit_edge, label %if.end27

reg_w.exit201.do.end23_crit_edge:                 ; preds = %reg_w.exit201
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

do.end23:                                         ; preds = %reg_w.exit201.do.end23_crit_edge, %if.end16.do.end23_crit_edge, %if.else.do.end23_crit_edge, %if.then15.do.end23_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end27:                                         ; preds = %reg_w.exit201
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %58 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sensor, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %59, label %do.end135 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb39
    i8 2, label %sw.bb50
    i8 3, label %sw.bb61
    i8 4, label %sw.bb72
    i8 12, label %sw.bb83
    i8 9, label %sw.bb94
    i8 10, label %sw.bb105
    i8 8, label %sw.bb116
    i8 11, label %sw.bb122
  ]

sw.bb:                                            ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id.i) #7
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %id.i, align 2, !annotation !293
  call fastcc void @i2c_r2(ptr noundef %gspca_dev, i8 noundef zeroext 28, ptr noundef nonnull %id.i) #7
  %62 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i203 = icmp slt i32 %63, 0
  br i1 %cmp.i203, label %sw.bb.ov9650_init_sensor.exit.thread_crit_edge, label %if.end.i204

sw.bb.ov9650_init_sensor.exit.thread_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov9650_init_sensor.exit.thread

if.end.i204:                                      ; preds = %sw.bb
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32674, i16 %65)
  %cmp1.not.i = icmp eq i16 %65, 32674
  br i1 %cmp1.not.i, label %if.end6.i, label %do.end.i205

do.end.i205:                                      ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %65 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv.i) #10
  %66 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -19, ptr %usb_err.i, align 8
  br label %ov9650_init_sensor.exit.thread

if.end6.i:                                        ; preds = %if.end.i204
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i) #7
  %67 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 1
  %68 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 2
  %69 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 3
  %70 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 4
  %71 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 5
  %72 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 6
  %73 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 7
  %i2c_intf.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %74 = ptrtoint ptr %i2c_intf.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i2c_intf.i.i, align 4
  %76 = or i8 %75, 32
  %77 = ptrtoint ptr %row.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %row.i.i, align 1
  %78 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %i2c_addr, align 1
  %80 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %67, align 1
  %81 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 18, ptr %68, align 1
  %82 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -128, ptr %69, align 1
  %83 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %70, align 1
  %84 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %71, align 1
  %85 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %72, align 1
  %86 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 16, ptr %73, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i) #7
  tail call void @msleep(i32 noundef 200) #7
  %87 = getelementptr inbounds [8 x i8], ptr %row.i.i.i, i32 0, i32 1
  %88 = getelementptr inbounds [8 x i8], ptr %row.i.i.i, i32 0, i32 2
  %89 = getelementptr inbounds [8 x i8], ptr %row.i.i.i, i32 0, i32 3
  %90 = getelementptr inbounds [8 x i8], ptr %row.i.i.i, i32 0, i32 4
  %91 = getelementptr inbounds [8 x i8], ptr %row.i.i.i, i32 0, i32 5
  %92 = getelementptr inbounds [8 x i8], ptr %row.i.i.i, i32 0, i32 6
  %93 = getelementptr inbounds [8 x i8], ptr %row.i.i.i, i32 0, i32 7
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end6.i
  %dec6.i.i = phi i32 [ 78, %if.end6.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %buf.addr.05.i.i = phi ptr [ @ov9650_init, %if.end6.i ], [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %94 = ptrtoint ptr %buf.addr.05.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %buf.addr.05.i.i, align 1
  %val.i.i = getelementptr inbounds %struct.i2c_reg_u8, ptr %buf.addr.05.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i) #7
  %98 = ptrtoint ptr %i2c_intf.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %i2c_intf.i.i, align 4
  %100 = or i8 %99, 32
  %101 = ptrtoint ptr %row.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %row.i.i.i, align 1
  %102 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %i2c_addr, align 1
  %104 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %87, align 1
  %105 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %95, ptr %88, align 1
  %106 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %97, ptr %89, align 1
  %107 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %90, align 1
  %108 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %91, align 1
  %109 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %92, align 1
  %110 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 16, ptr %93, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i) #7
  %incdec.ptr.i.i = getelementptr %struct.i2c_reg_u8, ptr %buf.addr.05.i.i, i32 1
  %dec.i.i = add nsw i32 %dec6.i.i, -1
  %cmp.i.not.i = icmp eq i32 %dec6.i.i, 0
  br i1 %cmp.i.not.i, label %i2c_w1_buf.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

i2c_w1_buf.exit.i:                                ; preds = %while.body.i.i
  %111 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp8.i = icmp slt i32 %112, 0
  br i1 %cmp8.i, label %ov9650_init_sensor.exit, label %ov9650_init_sensor.exit.thread383

ov9650_init_sensor.exit.thread383:                ; preds = %i2c_w1_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %hstart.i385 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %113 = ptrtoint ptr %hstart.i385 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %hstart.i385, align 2
  %vstart.i386 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %114 = ptrtoint ptr %vstart.i386 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 7, ptr %vstart.i386, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id.i) #7
  br label %do.end36

ov9650_init_sensor.exit.thread:                   ; preds = %do.end.i205, %sw.bb.ov9650_init_sensor.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id.i) #7
  br label %cleanup

ov9650_init_sensor.exit:                          ; preds = %i2c_w1_buf.exit.i
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #10
  %115 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr381.pr = load i32, ptr %usb_err.i, align 8
  %hstart.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %116 = ptrtoint ptr %hstart.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %hstart.i, align 2
  %vstart.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %117 = ptrtoint ptr %vstart.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 7, ptr %vstart.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr381.pr)
  %cmp30 = icmp slt i32 %.pr381.pr, 0
  br i1 %cmp30, label %ov9650_init_sensor.exit.cleanup_crit_edge, label %ov9650_init_sensor.exit.do.end36_crit_edge

ov9650_init_sensor.exit.do.end36_crit_edge:       ; preds = %ov9650_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

ov9650_init_sensor.exit.cleanup_crit_edge:        ; preds = %ov9650_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36:                                         ; preds = %ov9650_init_sensor.exit.do.end36_crit_edge, %ov9650_init_sensor.exit.thread383
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %cleanup

sw.bb39:                                          ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i207) #7
  %118 = getelementptr inbounds [8 x i8], ptr %row.i.i207, i32 0, i32 1
  %119 = getelementptr inbounds [8 x i8], ptr %row.i.i207, i32 0, i32 2
  %120 = getelementptr inbounds [8 x i8], ptr %row.i.i207, i32 0, i32 3
  %121 = getelementptr inbounds [8 x i8], ptr %row.i.i207, i32 0, i32 4
  %122 = getelementptr inbounds [8 x i8], ptr %row.i.i207, i32 0, i32 5
  %123 = getelementptr inbounds [8 x i8], ptr %row.i.i207, i32 0, i32 6
  %124 = getelementptr inbounds [8 x i8], ptr %row.i.i207, i32 0, i32 7
  %i2c_intf.i.i208 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %125 = ptrtoint ptr %i2c_intf.i.i208 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %i2c_intf.i.i208, align 4
  %127 = or i8 %126, 32
  %128 = ptrtoint ptr %row.i.i207 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %row.i.i207, align 1
  %129 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %i2c_addr, align 1
  %131 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %118, align 1
  %132 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 18, ptr %119, align 1
  %133 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -128, ptr %120, align 1
  %134 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %121, align 1
  %135 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %122, align 1
  %136 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %123, align 1
  %137 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 16, ptr %124, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i207) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i207) #7
  tail call void @msleep(i32 noundef 200) #7
  %138 = getelementptr inbounds [8 x i8], ptr %row.i.i.i206, i32 0, i32 1
  %139 = getelementptr inbounds [8 x i8], ptr %row.i.i.i206, i32 0, i32 2
  %140 = getelementptr inbounds [8 x i8], ptr %row.i.i.i206, i32 0, i32 3
  %141 = getelementptr inbounds [8 x i8], ptr %row.i.i.i206, i32 0, i32 4
  %142 = getelementptr inbounds [8 x i8], ptr %row.i.i.i206, i32 0, i32 5
  %143 = getelementptr inbounds [8 x i8], ptr %row.i.i.i206, i32 0, i32 6
  %144 = getelementptr inbounds [8 x i8], ptr %row.i.i.i206, i32 0, i32 7
  br label %while.body.i.i216

while.body.i.i216:                                ; preds = %while.body.i.i216.while.body.i.i216_crit_edge, %sw.bb39
  %dec6.i.i210 = phi i32 [ 92, %sw.bb39 ], [ %dec.i.i214, %while.body.i.i216.while.body.i.i216_crit_edge ]
  %buf.addr.05.i.i211 = phi ptr [ @ov9655_init, %sw.bb39 ], [ %incdec.ptr.i.i213, %while.body.i.i216.while.body.i.i216_crit_edge ]
  %145 = ptrtoint ptr %buf.addr.05.i.i211 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %buf.addr.05.i.i211, align 1
  %val.i.i212 = getelementptr inbounds %struct.i2c_reg_u8, ptr %buf.addr.05.i.i211, i32 0, i32 1
  %147 = ptrtoint ptr %val.i.i212 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %val.i.i212, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i206) #7
  %149 = ptrtoint ptr %i2c_intf.i.i208 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %i2c_intf.i.i208, align 4
  %151 = or i8 %150, 32
  %152 = ptrtoint ptr %row.i.i.i206 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %row.i.i.i206, align 1
  %153 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %i2c_addr, align 1
  %155 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %138, align 1
  %156 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %146, ptr %139, align 1
  %157 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %148, ptr %140, align 1
  %158 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %141, align 1
  %159 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %142, align 1
  %160 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %143, align 1
  %161 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 16, ptr %144, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i206) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i206) #7
  %incdec.ptr.i.i213 = getelementptr %struct.i2c_reg_u8, ptr %buf.addr.05.i.i211, i32 1
  %dec.i.i214 = add nsw i32 %dec6.i.i210, -1
  %cmp.i.not.i215 = icmp eq i32 %dec6.i.i210, 0
  br i1 %cmp.i.not.i215, label %i2c_w1_buf.exit.i219, label %while.body.i.i216.while.body.i.i216_crit_edge

while.body.i.i216.while.body.i.i216_crit_edge:    ; preds = %while.body.i.i216
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i216

i2c_w1_buf.exit.i219:                             ; preds = %while.body.i.i216
  %162 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp.i218 = icmp slt i32 %163, 0
  br i1 %cmp.i218, label %ov9655_init_sensor.exit, label %ov9655_init_sensor.exit.thread

ov9655_init_sensor.exit.thread:                   ; preds = %i2c_w1_buf.exit.i219
  call void @__sanitizer_cov_trace_pc() #9
  %hstart.i222389 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %164 = ptrtoint ptr %hstart.i222389 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %hstart.i222389, align 2
  %vstart.i223390 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %165 = ptrtoint ptr %vstart.i223390 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 2, ptr %vstart.i223390, align 1
  br label %do.end47

ov9655_init_sensor.exit:                          ; preds = %i2c_w1_buf.exit.i219
  %call.i220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #10
  %166 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr388 = load i32, ptr %usb_err.i, align 8
  %hstart.i222 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %167 = ptrtoint ptr %hstart.i222 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %hstart.i222, align 2
  %vstart.i223 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %168 = ptrtoint ptr %vstart.i223 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 2, ptr %vstart.i223, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr388)
  %cmp41 = icmp slt i32 %.pr388, 0
  br i1 %cmp41, label %ov9655_init_sensor.exit.cleanup_crit_edge, label %ov9655_init_sensor.exit.do.end47_crit_edge

ov9655_init_sensor.exit.do.end47_crit_edge:       ; preds = %ov9655_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

ov9655_init_sensor.exit.cleanup_crit_edge:        ; preds = %ov9655_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end47:                                         ; preds = %ov9655_init_sensor.exit.do.end47_crit_edge, %ov9655_init_sensor.exit.thread
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %cleanup

sw.bb50:                                          ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i226) #7
  %169 = getelementptr inbounds [8 x i8], ptr %row.i.i226, i32 0, i32 1
  %170 = getelementptr inbounds [8 x i8], ptr %row.i.i226, i32 0, i32 2
  %171 = getelementptr inbounds [8 x i8], ptr %row.i.i226, i32 0, i32 3
  %172 = getelementptr inbounds [8 x i8], ptr %row.i.i226, i32 0, i32 4
  %173 = getelementptr inbounds [8 x i8], ptr %row.i.i226, i32 0, i32 5
  %174 = getelementptr inbounds [8 x i8], ptr %row.i.i226, i32 0, i32 6
  %175 = getelementptr inbounds [8 x i8], ptr %row.i.i226, i32 0, i32 7
  %i2c_intf.i.i227 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %176 = ptrtoint ptr %i2c_intf.i.i227 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %i2c_intf.i.i227, align 4
  %178 = or i8 %177, 32
  %179 = ptrtoint ptr %row.i.i226 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %row.i.i226, align 1
  %180 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %i2c_addr, align 1
  %182 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %169, align 1
  %183 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 18, ptr %170, align 1
  %184 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -128, ptr %171, align 1
  %185 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %172, align 1
  %186 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %173, align 1
  %187 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %174, align 1
  %188 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 16, ptr %175, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i226) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i226) #7
  tail call void @msleep(i32 noundef 200) #7
  %189 = getelementptr inbounds [8 x i8], ptr %row.i.i.i225, i32 0, i32 1
  %190 = getelementptr inbounds [8 x i8], ptr %row.i.i.i225, i32 0, i32 2
  %191 = getelementptr inbounds [8 x i8], ptr %row.i.i.i225, i32 0, i32 3
  %192 = getelementptr inbounds [8 x i8], ptr %row.i.i.i225, i32 0, i32 4
  %193 = getelementptr inbounds [8 x i8], ptr %row.i.i.i225, i32 0, i32 5
  %194 = getelementptr inbounds [8 x i8], ptr %row.i.i.i225, i32 0, i32 6
  %195 = getelementptr inbounds [8 x i8], ptr %row.i.i.i225, i32 0, i32 7
  br label %while.body.i.i235

while.body.i.i235:                                ; preds = %while.body.i.i235.while.body.i.i235_crit_edge, %sw.bb50
  %dec6.i.i229 = phi i32 [ 31, %sw.bb50 ], [ %dec.i.i233, %while.body.i.i235.while.body.i.i235_crit_edge ]
  %buf.addr.05.i.i230 = phi ptr [ @soi968_init, %sw.bb50 ], [ %incdec.ptr.i.i232, %while.body.i.i235.while.body.i.i235_crit_edge ]
  %196 = ptrtoint ptr %buf.addr.05.i.i230 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %buf.addr.05.i.i230, align 1
  %val.i.i231 = getelementptr inbounds %struct.i2c_reg_u8, ptr %buf.addr.05.i.i230, i32 0, i32 1
  %198 = ptrtoint ptr %val.i.i231 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %val.i.i231, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i225) #7
  %200 = ptrtoint ptr %i2c_intf.i.i227 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %i2c_intf.i.i227, align 4
  %202 = or i8 %201, 32
  %203 = ptrtoint ptr %row.i.i.i225 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %row.i.i.i225, align 1
  %204 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %i2c_addr, align 1
  %206 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %189, align 1
  %207 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %197, ptr %190, align 1
  %208 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %199, ptr %191, align 1
  %209 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %192, align 1
  %210 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %193, align 1
  %211 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %194, align 1
  %212 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 16, ptr %195, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i225) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i225) #7
  %incdec.ptr.i.i232 = getelementptr %struct.i2c_reg_u8, ptr %buf.addr.05.i.i230, i32 1
  %dec.i.i233 = add nsw i32 %dec6.i.i229, -1
  %cmp.i.not.i234 = icmp eq i32 %dec6.i.i229, 0
  br i1 %cmp.i.not.i234, label %i2c_w1_buf.exit.i238, label %while.body.i.i235.while.body.i.i235_crit_edge

while.body.i.i235.while.body.i.i235_crit_edge:    ; preds = %while.body.i.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i235

i2c_w1_buf.exit.i238:                             ; preds = %while.body.i.i235
  %213 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp.i237 = icmp slt i32 %214, 0
  br i1 %cmp.i237, label %soi968_init_sensor.exit, label %soi968_init_sensor.exit.thread

soi968_init_sensor.exit.thread:                   ; preds = %i2c_w1_buf.exit.i238
  call void @__sanitizer_cov_trace_pc() #9
  %hstart.i241393 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %215 = ptrtoint ptr %hstart.i241393 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 60, ptr %hstart.i241393, align 2
  %vstart.i242394 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %216 = ptrtoint ptr %vstart.i242394 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 11, ptr %vstart.i242394, align 1
  br label %do.end58

soi968_init_sensor.exit:                          ; preds = %i2c_w1_buf.exit.i238
  %call.i239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #10
  %217 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %.pr392 = load i32, ptr %usb_err.i, align 8
  %hstart.i241 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %218 = ptrtoint ptr %hstart.i241 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 60, ptr %hstart.i241, align 2
  %vstart.i242 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %219 = ptrtoint ptr %vstart.i242 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 11, ptr %vstart.i242, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr392)
  %cmp52 = icmp slt i32 %.pr392, 0
  br i1 %cmp52, label %soi968_init_sensor.exit.cleanup_crit_edge, label %soi968_init_sensor.exit.do.end58_crit_edge

soi968_init_sensor.exit.do.end58_crit_edge:       ; preds = %soi968_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

soi968_init_sensor.exit.cleanup_crit_edge:        ; preds = %soi968_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end58:                                         ; preds = %soi968_init_sensor.exit.do.end58_crit_edge, %soi968_init_sensor.exit.thread
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

sw.bb61:                                          ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i245) #7
  %220 = getelementptr inbounds [8 x i8], ptr %row.i.i245, i32 0, i32 1
  %221 = getelementptr inbounds [8 x i8], ptr %row.i.i245, i32 0, i32 2
  %222 = getelementptr inbounds [8 x i8], ptr %row.i.i245, i32 0, i32 3
  %223 = getelementptr inbounds [8 x i8], ptr %row.i.i245, i32 0, i32 4
  %224 = getelementptr inbounds [8 x i8], ptr %row.i.i245, i32 0, i32 5
  %225 = getelementptr inbounds [8 x i8], ptr %row.i.i245, i32 0, i32 6
  %226 = getelementptr inbounds [8 x i8], ptr %row.i.i245, i32 0, i32 7
  %i2c_intf.i.i246 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %227 = ptrtoint ptr %i2c_intf.i.i246 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %i2c_intf.i.i246, align 4
  %229 = or i8 %228, 32
  %230 = ptrtoint ptr %row.i.i245 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %row.i.i245, align 1
  %231 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %i2c_addr, align 1
  %233 = ptrtoint ptr %220 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %220, align 1
  %234 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 18, ptr %221, align 1
  %235 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 -128, ptr %222, align 1
  %236 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %223, align 1
  %237 = ptrtoint ptr %224 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %224, align 1
  %238 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %225, align 1
  %239 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 16, ptr %226, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i245) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i245) #7
  tail call void @msleep(i32 noundef 200) #7
  %240 = getelementptr inbounds [8 x i8], ptr %row.i.i.i244, i32 0, i32 1
  %241 = getelementptr inbounds [8 x i8], ptr %row.i.i.i244, i32 0, i32 2
  %242 = getelementptr inbounds [8 x i8], ptr %row.i.i.i244, i32 0, i32 3
  %243 = getelementptr inbounds [8 x i8], ptr %row.i.i.i244, i32 0, i32 4
  %244 = getelementptr inbounds [8 x i8], ptr %row.i.i.i244, i32 0, i32 5
  %245 = getelementptr inbounds [8 x i8], ptr %row.i.i.i244, i32 0, i32 6
  %246 = getelementptr inbounds [8 x i8], ptr %row.i.i.i244, i32 0, i32 7
  br label %while.body.i.i254

while.body.i.i254:                                ; preds = %while.body.i.i254.while.body.i.i254_crit_edge, %sw.bb61
  %dec6.i.i248 = phi i32 [ 19, %sw.bb61 ], [ %dec.i.i252, %while.body.i.i254.while.body.i.i254_crit_edge ]
  %buf.addr.05.i.i249 = phi ptr [ @ov7660_init, %sw.bb61 ], [ %incdec.ptr.i.i251, %while.body.i.i254.while.body.i.i254_crit_edge ]
  %247 = ptrtoint ptr %buf.addr.05.i.i249 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %buf.addr.05.i.i249, align 1
  %val.i.i250 = getelementptr inbounds %struct.i2c_reg_u8, ptr %buf.addr.05.i.i249, i32 0, i32 1
  %249 = ptrtoint ptr %val.i.i250 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %val.i.i250, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i244) #7
  %251 = ptrtoint ptr %i2c_intf.i.i246 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %i2c_intf.i.i246, align 4
  %253 = or i8 %252, 32
  %254 = ptrtoint ptr %row.i.i.i244 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %row.i.i.i244, align 1
  %255 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %i2c_addr, align 1
  %257 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %256, ptr %240, align 1
  %258 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %248, ptr %241, align 1
  %259 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %250, ptr %242, align 1
  %260 = ptrtoint ptr %243 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %243, align 1
  %261 = ptrtoint ptr %244 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 0, ptr %244, align 1
  %262 = ptrtoint ptr %245 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %245, align 1
  %263 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 16, ptr %246, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i244) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i244) #7
  %incdec.ptr.i.i251 = getelementptr %struct.i2c_reg_u8, ptr %buf.addr.05.i.i249, i32 1
  %dec.i.i252 = add nsw i32 %dec6.i.i248, -1
  %cmp.i.not.i253 = icmp eq i32 %dec6.i.i248, 0
  br i1 %cmp.i.not.i253, label %i2c_w1_buf.exit.i257, label %while.body.i.i254.while.body.i.i254_crit_edge

while.body.i.i254.while.body.i.i254_crit_edge:    ; preds = %while.body.i.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i254

i2c_w1_buf.exit.i257:                             ; preds = %while.body.i.i254
  %264 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp.i256 = icmp slt i32 %265, 0
  br i1 %cmp.i256, label %ov7660_init_sensor.exit, label %ov7660_init_sensor.exit.thread

ov7660_init_sensor.exit.thread:                   ; preds = %i2c_w1_buf.exit.i257
  call void @__sanitizer_cov_trace_pc() #9
  %hstart.i260397 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %266 = ptrtoint ptr %hstart.i260397 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 3, ptr %hstart.i260397, align 2
  %vstart.i261398 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %267 = ptrtoint ptr %vstart.i261398 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 3, ptr %vstart.i261398, align 1
  br label %do.end69

ov7660_init_sensor.exit:                          ; preds = %i2c_w1_buf.exit.i257
  %call.i258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #10
  %268 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %.pr396 = load i32, ptr %usb_err.i, align 8
  %hstart.i260 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %269 = ptrtoint ptr %hstart.i260 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 3, ptr %hstart.i260, align 2
  %vstart.i261 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %270 = ptrtoint ptr %vstart.i261 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 3, ptr %vstart.i261, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr396)
  %cmp63 = icmp slt i32 %.pr396, 0
  br i1 %cmp63, label %ov7660_init_sensor.exit.cleanup_crit_edge, label %ov7660_init_sensor.exit.do.end69_crit_edge

ov7660_init_sensor.exit.do.end69_crit_edge:       ; preds = %ov7660_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end69

ov7660_init_sensor.exit.cleanup_crit_edge:        ; preds = %ov7660_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end69:                                         ; preds = %ov7660_init_sensor.exit.do.end69_crit_edge, %ov7660_init_sensor.exit.thread
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %cleanup

sw.bb72:                                          ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i264) #7
  %271 = getelementptr inbounds [8 x i8], ptr %row.i.i264, i32 0, i32 1
  %272 = getelementptr inbounds [8 x i8], ptr %row.i.i264, i32 0, i32 2
  %273 = getelementptr inbounds [8 x i8], ptr %row.i.i264, i32 0, i32 3
  %274 = getelementptr inbounds [8 x i8], ptr %row.i.i264, i32 0, i32 4
  %275 = getelementptr inbounds [8 x i8], ptr %row.i.i264, i32 0, i32 5
  %276 = getelementptr inbounds [8 x i8], ptr %row.i.i264, i32 0, i32 6
  %277 = getelementptr inbounds [8 x i8], ptr %row.i.i264, i32 0, i32 7
  %i2c_intf.i.i265 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %278 = ptrtoint ptr %i2c_intf.i.i265 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %i2c_intf.i.i265, align 4
  %280 = or i8 %279, 32
  %281 = ptrtoint ptr %row.i.i264 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %row.i.i264, align 1
  %282 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %i2c_addr, align 1
  %284 = ptrtoint ptr %271 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %283, ptr %271, align 1
  %285 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 18, ptr %272, align 1
  %286 = ptrtoint ptr %273 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 -128, ptr %273, align 1
  %287 = ptrtoint ptr %274 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 0, ptr %274, align 1
  %288 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 0, ptr %275, align 1
  %289 = ptrtoint ptr %276 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %276, align 1
  %290 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 16, ptr %277, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i264) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i264) #7
  tail call void @msleep(i32 noundef 200) #7
  %291 = getelementptr inbounds [8 x i8], ptr %row.i.i.i263, i32 0, i32 1
  %292 = getelementptr inbounds [8 x i8], ptr %row.i.i.i263, i32 0, i32 2
  %293 = getelementptr inbounds [8 x i8], ptr %row.i.i.i263, i32 0, i32 3
  %294 = getelementptr inbounds [8 x i8], ptr %row.i.i.i263, i32 0, i32 4
  %295 = getelementptr inbounds [8 x i8], ptr %row.i.i.i263, i32 0, i32 5
  %296 = getelementptr inbounds [8 x i8], ptr %row.i.i.i263, i32 0, i32 6
  %297 = getelementptr inbounds [8 x i8], ptr %row.i.i.i263, i32 0, i32 7
  br label %while.body.i.i273

while.body.i.i273:                                ; preds = %while.body.i.i273.while.body.i.i273_crit_edge, %sw.bb72
  %dec6.i.i267 = phi i32 [ 211, %sw.bb72 ], [ %dec.i.i271, %while.body.i.i273.while.body.i.i273_crit_edge ]
  %buf.addr.05.i.i268 = phi ptr [ @ov7670_init, %sw.bb72 ], [ %incdec.ptr.i.i270, %while.body.i.i273.while.body.i.i273_crit_edge ]
  %298 = ptrtoint ptr %buf.addr.05.i.i268 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %buf.addr.05.i.i268, align 1
  %val.i.i269 = getelementptr inbounds %struct.i2c_reg_u8, ptr %buf.addr.05.i.i268, i32 0, i32 1
  %300 = ptrtoint ptr %val.i.i269 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %val.i.i269, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i263) #7
  %302 = ptrtoint ptr %i2c_intf.i.i265 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %i2c_intf.i.i265, align 4
  %304 = or i8 %303, 32
  %305 = ptrtoint ptr %row.i.i.i263 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %304, ptr %row.i.i.i263, align 1
  %306 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %i2c_addr, align 1
  %308 = ptrtoint ptr %291 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %291, align 1
  %309 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %299, ptr %292, align 1
  %310 = ptrtoint ptr %293 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %301, ptr %293, align 1
  %311 = ptrtoint ptr %294 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %294, align 1
  %312 = ptrtoint ptr %295 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 0, ptr %295, align 1
  %313 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %296, align 1
  %314 = ptrtoint ptr %297 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 16, ptr %297, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i263) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i263) #7
  %incdec.ptr.i.i270 = getelementptr %struct.i2c_reg_u8, ptr %buf.addr.05.i.i268, i32 1
  %dec.i.i271 = add nsw i32 %dec6.i.i267, -1
  %cmp.i.not.i272 = icmp eq i32 %dec6.i.i267, 0
  br i1 %cmp.i.not.i272, label %i2c_w1_buf.exit.i276, label %while.body.i.i273.while.body.i.i273_crit_edge

while.body.i.i273.while.body.i.i273_crit_edge:    ; preds = %while.body.i.i273
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i273

i2c_w1_buf.exit.i276:                             ; preds = %while.body.i.i273
  %315 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %cmp.i275 = icmp slt i32 %316, 0
  br i1 %cmp.i275, label %ov7670_init_sensor.exit, label %ov7670_init_sensor.exit.thread

ov7670_init_sensor.exit.thread:                   ; preds = %i2c_w1_buf.exit.i276
  call void @__sanitizer_cov_trace_pc() #9
  %hstart.i279401 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %317 = ptrtoint ptr %hstart.i279401 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 0, ptr %hstart.i279401, align 2
  %vstart.i280402 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %318 = ptrtoint ptr %vstart.i280402 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 1, ptr %vstart.i280402, align 1
  br label %do.end80

ov7670_init_sensor.exit:                          ; preds = %i2c_w1_buf.exit.i276
  %call.i277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #10
  %319 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %.pr400 = load i32, ptr %usb_err.i, align 8
  %hstart.i279 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %320 = ptrtoint ptr %hstart.i279 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %hstart.i279, align 2
  %vstart.i280 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %321 = ptrtoint ptr %vstart.i280 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 1, ptr %vstart.i280, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr400)
  %cmp74 = icmp slt i32 %.pr400, 0
  br i1 %cmp74, label %ov7670_init_sensor.exit.cleanup_crit_edge, label %ov7670_init_sensor.exit.do.end80_crit_edge

ov7670_init_sensor.exit.do.end80_crit_edge:       ; preds = %ov7670_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

ov7670_init_sensor.exit.cleanup_crit_edge:        ; preds = %ov7670_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end80:                                         ; preds = %ov7670_init_sensor.exit.do.end80_crit_edge, %ov7670_init_sensor.exit.thread
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %cleanup

sw.bb83:                                          ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #7
  %322 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 -1, ptr %value.i, align 2, !annotation !293
  %323 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 93, ptr %i2c_addr, align 1
  call fastcc void @i2c_r2(ptr noundef %gspca_dev, i8 noundef zeroext -1, ptr noundef nonnull %value.i) #7
  %324 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %325)
  %cmp.i285 = icmp sgt i32 %325, -1
  br i1 %cmp.i285, label %land.lhs.true.i, label %sw.bb83.if.end12.i_crit_edge

sw.bb83.if.end12.i_crit_edge:                     ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %sw.bb83
  %326 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32189, i16 %327)
  %cmp1.i = icmp eq i16 %327, -32189
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %328 = getelementptr inbounds [8 x i8], ptr %row.i.i.i283, i32 0, i32 1
  %329 = getelementptr inbounds [8 x i8], ptr %row.i.i.i283, i32 0, i32 2
  %330 = getelementptr inbounds [8 x i8], ptr %row.i.i.i283, i32 0, i32 3
  %331 = getelementptr inbounds [8 x i8], ptr %row.i.i.i283, i32 0, i32 4
  %332 = getelementptr inbounds [8 x i8], ptr %row.i.i.i283, i32 0, i32 5
  %333 = getelementptr inbounds [8 x i8], ptr %row.i.i.i283, i32 0, i32 6
  %334 = getelementptr inbounds [8 x i8], ptr %row.i.i.i283, i32 0, i32 7
  %i2c_intf.i.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  br label %while.body.i.i292

while.body.i.i292:                                ; preds = %while.body.i.i292.while.body.i.i292_crit_edge, %if.then.i
  %dec6.i.i286 = phi i32 [ 70, %if.then.i ], [ %dec.i.i290, %while.body.i.i292.while.body.i.i292_crit_edge ]
  %buf.addr.05.i.i287 = phi ptr [ @mt9v011_init, %if.then.i ], [ %incdec.ptr.i.i289, %while.body.i.i292.while.body.i.i292_crit_edge ]
  %335 = ptrtoint ptr %buf.addr.05.i.i287 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %buf.addr.05.i.i287, align 2
  %val.i.i288 = getelementptr inbounds %struct.i2c_reg_u16, ptr %buf.addr.05.i.i287, i32 0, i32 1
  %337 = ptrtoint ptr %val.i.i288 to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %val.i.i288, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i283) #7
  %339 = ptrtoint ptr %i2c_intf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %i2c_intf.i.i.i, align 4
  %341 = or i8 %340, 48
  %342 = ptrtoint ptr %row.i.i.i283 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %row.i.i.i283, align 1
  %343 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %i2c_addr, align 1
  %345 = ptrtoint ptr %328 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %328, align 1
  %346 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %336, ptr %329, align 1
  %347 = lshr i16 %338, 8
  %conv5.i.i.i = trunc i16 %347 to i8
  %348 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %conv5.i.i.i, ptr %330, align 1
  %conv7.i.i.i = trunc i16 %338 to i8
  %349 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %conv7.i.i.i, ptr %331, align 1
  %350 = ptrtoint ptr %332 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %332, align 1
  %351 = ptrtoint ptr %333 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %333, align 1
  %352 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 16, ptr %334, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i283) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i283) #7
  %incdec.ptr.i.i289 = getelementptr %struct.i2c_reg_u16, ptr %buf.addr.05.i.i287, i32 1
  %dec.i.i290 = add nsw i32 %dec6.i.i286, -1
  %cmp.i.not.i291 = icmp eq i32 %dec6.i.i286, 0
  br i1 %cmp.i.not.i291, label %i2c_w2_buf.exit.i, label %while.body.i.i292.while.body.i.i292_crit_edge

while.body.i.i292.while.body.i.i292_crit_edge:    ; preds = %while.body.i.i292
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i292

i2c_w2_buf.exit.i:                                ; preds = %while.body.i.i292
  %353 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp4.i293 = icmp slt i32 %354, 0
  br i1 %cmp4.i293, label %i2c_w2_buf.exit.i.mt9v_init_sensor.exit_crit_edge, label %i2c_w2_buf.exit.i.mt9v_init_sensor.exit.sink.split_crit_edge

i2c_w2_buf.exit.i.mt9v_init_sensor.exit.sink.split_crit_edge: ; preds = %i2c_w2_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v_init_sensor.exit.sink.split

i2c_w2_buf.exit.i.mt9v_init_sensor.exit_crit_edge: ; preds = %i2c_w2_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v_init_sensor.exit

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %sw.bb83.if.end12.i_crit_edge
  %355 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 0, ptr %usb_err.i, align 8
  %356 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 92, ptr %i2c_addr, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i282) #7
  %357 = getelementptr inbounds [8 x i8], ptr %row.i.i282, i32 0, i32 1
  %358 = getelementptr inbounds [8 x i8], ptr %row.i.i282, i32 0, i32 2
  %359 = getelementptr inbounds [8 x i8], ptr %row.i.i282, i32 0, i32 3
  %360 = getelementptr inbounds [8 x i8], ptr %row.i.i282, i32 0, i32 4
  %361 = getelementptr inbounds [8 x i8], ptr %row.i.i282, i32 0, i32 5
  %362 = getelementptr inbounds [8 x i8], ptr %row.i.i282, i32 0, i32 6
  %363 = getelementptr inbounds [8 x i8], ptr %row.i.i282, i32 0, i32 7
  %i2c_intf.i.i300 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %364 = ptrtoint ptr %i2c_intf.i.i300 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %i2c_intf.i.i300, align 4
  %366 = or i8 %365, 48
  %367 = ptrtoint ptr %row.i.i282 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %366, ptr %row.i.i282, align 1
  %368 = ptrtoint ptr %357 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 92, ptr %357, align 1
  %369 = ptrtoint ptr %358 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 1, ptr %358, align 1
  %370 = ptrtoint ptr %359 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 0, ptr %359, align 1
  %371 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 4, ptr %360, align 1
  %372 = ptrtoint ptr %361 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 0, ptr %361, align 1
  %373 = ptrtoint ptr %362 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 0, ptr %362, align 1
  %374 = ptrtoint ptr %363 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 16, ptr %363, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i282) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i282) #7
  call fastcc void @i2c_r2(ptr noundef %gspca_dev, i8 noundef zeroext -1, ptr noundef nonnull %value.i) #7
  %375 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %376)
  %cmp16.i = icmp sgt i32 %376, -1
  br i1 %cmp16.i, label %land.lhs.true18.i, label %if.end12.i.if.end41.i_crit_edge

if.end12.i.if.end41.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

land.lhs.true18.i:                                ; preds = %if.end12.i
  %377 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32198, i16 %378)
  %cmp20.i = icmp eq i16 %378, -32198
  br i1 %cmp20.i, label %if.then22.i, label %land.lhs.true18.i.if.end41.i_crit_edge

land.lhs.true18.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then22.i:                                      ; preds = %land.lhs.true18.i
  %379 = getelementptr inbounds [8 x i8], ptr %row.i.i112.i, i32 0, i32 1
  %380 = getelementptr inbounds [8 x i8], ptr %row.i.i112.i, i32 0, i32 2
  %381 = getelementptr inbounds [8 x i8], ptr %row.i.i112.i, i32 0, i32 3
  %382 = getelementptr inbounds [8 x i8], ptr %row.i.i112.i, i32 0, i32 4
  %383 = getelementptr inbounds [8 x i8], ptr %row.i.i112.i, i32 0, i32 5
  %384 = getelementptr inbounds [8 x i8], ptr %row.i.i112.i, i32 0, i32 6
  %385 = getelementptr inbounds [8 x i8], ptr %row.i.i112.i, i32 0, i32 7
  br label %while.body.i123.i

while.body.i123.i:                                ; preds = %while.body.i123.i.while.body.i123.i_crit_edge, %if.then22.i
  %dec6.i115.i = phi i32 [ 19, %if.then22.i ], [ %dec.i121.i, %while.body.i123.i.while.body.i123.i_crit_edge ]
  %buf.addr.05.i116.i = phi ptr [ @mt9v111_init, %if.then22.i ], [ %incdec.ptr.i120.i, %while.body.i123.i.while.body.i123.i_crit_edge ]
  %386 = ptrtoint ptr %buf.addr.05.i116.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %buf.addr.05.i116.i, align 2
  %val.i117.i = getelementptr inbounds %struct.i2c_reg_u16, ptr %buf.addr.05.i116.i, i32 0, i32 1
  %388 = ptrtoint ptr %val.i117.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %val.i117.i, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i112.i) #7
  %390 = ptrtoint ptr %i2c_intf.i.i300 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %i2c_intf.i.i300, align 4
  %392 = or i8 %391, 48
  %393 = ptrtoint ptr %row.i.i112.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %392, ptr %row.i.i112.i, align 1
  %394 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %i2c_addr, align 1
  %396 = ptrtoint ptr %379 to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %395, ptr %379, align 1
  %397 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %387, ptr %380, align 1
  %398 = lshr i16 %389, 8
  %conv5.i.i118.i = trunc i16 %398 to i8
  %399 = ptrtoint ptr %381 to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 %conv5.i.i118.i, ptr %381, align 1
  %conv7.i.i119.i = trunc i16 %389 to i8
  %400 = ptrtoint ptr %382 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %conv7.i.i119.i, ptr %382, align 1
  %401 = ptrtoint ptr %383 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 0, ptr %383, align 1
  %402 = ptrtoint ptr %384 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 0, ptr %384, align 1
  %403 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 16, ptr %385, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i112.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i112.i) #7
  %incdec.ptr.i120.i = getelementptr %struct.i2c_reg_u16, ptr %buf.addr.05.i116.i, i32 1
  %dec.i121.i = add nsw i32 %dec6.i115.i, -1
  %cmp.i122.not.i = icmp eq i32 %dec6.i115.i, 0
  br i1 %cmp.i122.not.i, label %i2c_w2_buf.exit124.i, label %while.body.i123.i.while.body.i123.i_crit_edge

while.body.i123.i.while.body.i123.i_crit_edge:    ; preds = %while.body.i123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i123.i

i2c_w2_buf.exit124.i:                             ; preds = %while.body.i123.i
  %404 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %cmp24.i = icmp slt i32 %405, 0
  br i1 %cmp24.i, label %i2c_w2_buf.exit124.i.mt9v_init_sensor.exit_crit_edge, label %i2c_w2_buf.exit124.i.mt9v_init_sensor.exit.sink.split_crit_edge

i2c_w2_buf.exit124.i.mt9v_init_sensor.exit.sink.split_crit_edge: ; preds = %i2c_w2_buf.exit124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v_init_sensor.exit.sink.split

i2c_w2_buf.exit124.i.mt9v_init_sensor.exit_crit_edge: ; preds = %i2c_w2_buf.exit124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v_init_sensor.exit

if.end41.i:                                       ; preds = %land.lhs.true18.i.if.end41.i_crit_edge, %if.end12.i.if.end41.i_crit_edge
  %406 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 0, ptr %usb_err.i, align 8
  %407 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 93, ptr %i2c_addr, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i125.i) #7
  %408 = getelementptr inbounds [8 x i8], ptr %row.i125.i, i32 0, i32 1
  %409 = getelementptr inbounds [8 x i8], ptr %row.i125.i, i32 0, i32 2
  %410 = getelementptr inbounds [8 x i8], ptr %row.i125.i, i32 0, i32 3
  %411 = getelementptr inbounds [8 x i8], ptr %row.i125.i, i32 0, i32 7
  %412 = ptrtoint ptr %i2c_intf.i.i300 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %i2c_intf.i.i300, align 4
  %414 = or i8 %413, 48
  %415 = ptrtoint ptr %row.i125.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %414, ptr %row.i125.i, align 1
  %416 = ptrtoint ptr %408 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 93, ptr %408, align 1
  %417 = ptrtoint ptr %409 to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 -16, ptr %409, align 1
  %418 = ptrtoint ptr %410 to i32
  call void @__asan_storeN_noabort(i32 %418, i32 4)
  store i32 0, ptr %410, align 1
  %419 = ptrtoint ptr %411 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 16, ptr %411, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i125.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i125.i) #7
  %420 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %421)
  %cmp45.i = icmp slt i32 %421, 0
  br i1 %cmp45.i, label %if.then47.i, label %if.end41.i.if.end50.i_crit_edge

if.end41.i.if.end50.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %422 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 0, ptr %usb_err.i, align 8
  %423 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 72, ptr %i2c_addr, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i128.i) #7
  %424 = getelementptr inbounds [8 x i8], ptr %row.i128.i, i32 0, i32 1
  %425 = getelementptr inbounds [8 x i8], ptr %row.i128.i, i32 0, i32 2
  %426 = getelementptr inbounds [8 x i8], ptr %row.i128.i, i32 0, i32 3
  %427 = getelementptr inbounds [8 x i8], ptr %row.i128.i, i32 0, i32 7
  %428 = ptrtoint ptr %i2c_intf.i.i300 to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %i2c_intf.i.i300, align 4
  %430 = or i8 %429, 48
  %431 = ptrtoint ptr %row.i128.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %430, ptr %row.i128.i, align 1
  %432 = ptrtoint ptr %424 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 72, ptr %424, align 1
  %433 = ptrtoint ptr %425 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 -16, ptr %425, align 1
  %434 = ptrtoint ptr %426 to i32
  call void @__asan_storeN_noabort(i32 %434, i32 4)
  store i32 0, ptr %426, align 1
  %435 = ptrtoint ptr %427 to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 16, ptr %427, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i128.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i128.i) #7
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.end41.i.if.end50.i_crit_edge
  call fastcc void @i2c_r2(ptr noundef %gspca_dev, i8 noundef zeroext 0, ptr noundef nonnull %value.i) #7
  %436 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %437)
  %cmp52.i = icmp sgt i32 %437, -1
  br i1 %cmp52.i, label %land.lhs.true54.i, label %if.end50.i.mt9v_init_sensor.exit.thread_crit_edge

if.end50.i.mt9v_init_sensor.exit.thread_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v_init_sensor.exit.thread

land.lhs.true54.i:                                ; preds = %if.end50.i
  %438 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %value.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4649, i16 %439)
  %cmp56.i = icmp eq i16 %439, 4649
  br i1 %cmp56.i, label %if.then58.i, label %land.lhs.true54.i.mt9v_init_sensor.exit.thread_crit_edge

land.lhs.true54.i.mt9v_init_sensor.exit.thread_crit_edge: ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v_init_sensor.exit.thread

if.then58.i:                                      ; preds = %land.lhs.true54.i
  %440 = getelementptr inbounds [8 x i8], ptr %row.i.i131.i, i32 0, i32 1
  %441 = getelementptr inbounds [8 x i8], ptr %row.i.i131.i, i32 0, i32 2
  %442 = getelementptr inbounds [8 x i8], ptr %row.i.i131.i, i32 0, i32 3
  %443 = getelementptr inbounds [8 x i8], ptr %row.i.i131.i, i32 0, i32 4
  %444 = getelementptr inbounds [8 x i8], ptr %row.i.i131.i, i32 0, i32 5
  %445 = getelementptr inbounds [8 x i8], ptr %row.i.i131.i, i32 0, i32 6
  %446 = getelementptr inbounds [8 x i8], ptr %row.i.i131.i, i32 0, i32 7
  br label %while.body.i142.i

while.body.i142.i:                                ; preds = %while.body.i142.i.while.body.i142.i_crit_edge, %if.then58.i
  %dec6.i134.i = phi i32 [ 47, %if.then58.i ], [ %dec.i140.i, %while.body.i142.i.while.body.i142.i_crit_edge ]
  %buf.addr.05.i135.i = phi ptr [ @mt9v112_init, %if.then58.i ], [ %incdec.ptr.i139.i, %while.body.i142.i.while.body.i142.i_crit_edge ]
  %447 = ptrtoint ptr %buf.addr.05.i135.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %buf.addr.05.i135.i, align 2
  %val.i136.i = getelementptr inbounds %struct.i2c_reg_u16, ptr %buf.addr.05.i135.i, i32 0, i32 1
  %449 = ptrtoint ptr %val.i136.i to i32
  call void @__asan_load2_noabort(i32 %449)
  %450 = load i16, ptr %val.i136.i, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i131.i) #7
  %451 = ptrtoint ptr %i2c_intf.i.i300 to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %i2c_intf.i.i300, align 4
  %453 = or i8 %452, 48
  %454 = ptrtoint ptr %row.i.i131.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %453, ptr %row.i.i131.i, align 1
  %455 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %i2c_addr, align 1
  %457 = ptrtoint ptr %440 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %456, ptr %440, align 1
  %458 = ptrtoint ptr %441 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 %448, ptr %441, align 1
  %459 = lshr i16 %450, 8
  %conv5.i.i137.i = trunc i16 %459 to i8
  %460 = ptrtoint ptr %442 to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 %conv5.i.i137.i, ptr %442, align 1
  %conv7.i.i138.i = trunc i16 %450 to i8
  %461 = ptrtoint ptr %443 to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 %conv7.i.i138.i, ptr %443, align 1
  %462 = ptrtoint ptr %444 to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 0, ptr %444, align 1
  %463 = ptrtoint ptr %445 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 0, ptr %445, align 1
  %464 = ptrtoint ptr %446 to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 16, ptr %446, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i131.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i131.i) #7
  %incdec.ptr.i139.i = getelementptr %struct.i2c_reg_u16, ptr %buf.addr.05.i135.i, i32 1
  %dec.i140.i = add nsw i32 %dec6.i134.i, -1
  %cmp.i141.not.i = icmp eq i32 %dec6.i134.i, 0
  br i1 %cmp.i141.not.i, label %i2c_w2_buf.exit143.i, label %while.body.i142.i.while.body.i142.i_crit_edge

while.body.i142.i.while.body.i142.i_crit_edge:    ; preds = %while.body.i142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i142.i

i2c_w2_buf.exit143.i:                             ; preds = %while.body.i142.i
  %465 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %466)
  %cmp60.i = icmp slt i32 %466, 0
  br i1 %cmp60.i, label %i2c_w2_buf.exit143.i.mt9v_init_sensor.exit_crit_edge, label %i2c_w2_buf.exit143.i.mt9v_init_sensor.exit.sink.split_crit_edge

i2c_w2_buf.exit143.i.mt9v_init_sensor.exit.sink.split_crit_edge: ; preds = %i2c_w2_buf.exit143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v_init_sensor.exit.sink.split

i2c_w2_buf.exit143.i.mt9v_init_sensor.exit_crit_edge: ; preds = %i2c_w2_buf.exit143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9v_init_sensor.exit

mt9v_init_sensor.exit.thread:                     ; preds = %land.lhs.true54.i.mt9v_init_sensor.exit.thread_crit_edge, %if.end50.i.mt9v_init_sensor.exit.thread_crit_edge
  %467 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 -19, ptr %usb_err.i, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  br label %cleanup

mt9v_init_sensor.exit.sink.split:                 ; preds = %i2c_w2_buf.exit143.i.mt9v_init_sensor.exit.sink.split_crit_edge, %i2c_w2_buf.exit124.i.mt9v_init_sensor.exit.sink.split_crit_edge, %i2c_w2_buf.exit.i.mt9v_init_sensor.exit.sink.split_crit_edge
  %.sink421 = phi i8 [ 2, %i2c_w2_buf.exit.i.mt9v_init_sensor.exit.sink.split_crit_edge ], [ 2, %i2c_w2_buf.exit124.i.mt9v_init_sensor.exit.sink.split_crit_edge ], [ 6, %i2c_w2_buf.exit143.i.mt9v_init_sensor.exit.sink.split_crit_edge ]
  %.sink = phi i8 [ 5, %i2c_w2_buf.exit.i.mt9v_init_sensor.exit.sink.split_crit_edge ], [ 6, %i2c_w2_buf.exit124.i.mt9v_init_sensor.exit.sink.split_crit_edge ], [ 7, %i2c_w2_buf.exit143.i.mt9v_init_sensor.exit.sink.split_crit_edge ]
  %.str.61.sink.ph = phi ptr [ @.str.64, %i2c_w2_buf.exit.i.mt9v_init_sensor.exit.sink.split_crit_edge ], [ @.str.70, %i2c_w2_buf.exit124.i.mt9v_init_sensor.exit.sink.split_crit_edge ], [ @.str.76, %i2c_w2_buf.exit143.i.mt9v_init_sensor.exit.sink.split_crit_edge ]
  %hstart.i296 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %468 = ptrtoint ptr %hstart.i296 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %.sink421, ptr %hstart.i296, align 2
  %vstart.i297 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %469 = ptrtoint ptr %vstart.i297 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 2, ptr %vstart.i297, align 1
  %470 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 %.sink, ptr %sensor, align 1
  br label %mt9v_init_sensor.exit

mt9v_init_sensor.exit:                            ; preds = %mt9v_init_sensor.exit.sink.split, %i2c_w2_buf.exit143.i.mt9v_init_sensor.exit_crit_edge, %i2c_w2_buf.exit124.i.mt9v_init_sensor.exit_crit_edge, %i2c_w2_buf.exit.i.mt9v_init_sensor.exit_crit_edge
  %.str.61.sink = phi ptr [ @.str.61, %i2c_w2_buf.exit.i.mt9v_init_sensor.exit_crit_edge ], [ @.str.67, %i2c_w2_buf.exit124.i.mt9v_init_sensor.exit_crit_edge ], [ @.str.73, %i2c_w2_buf.exit143.i.mt9v_init_sensor.exit_crit_edge ], [ %.str.61.sink.ph, %mt9v_init_sensor.exit.sink.split ]
  %call.i294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.61.sink) #10
  %471 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %.pr404 = load i32, ptr %usb_err.i, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr404)
  %cmp85 = icmp slt i32 %.pr404, 0
  br i1 %cmp85, label %mt9v_init_sensor.exit.cleanup_crit_edge, label %do.end91

mt9v_init_sensor.exit.cleanup_crit_edge:          ; preds = %mt9v_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end91:                                         ; preds = %mt9v_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %cleanup

sw.bb94:                                          ; preds = %if.end27
  %472 = getelementptr inbounds [8 x i8], ptr %row.i.i.i301, i32 0, i32 1
  %473 = getelementptr inbounds [8 x i8], ptr %row.i.i.i301, i32 0, i32 2
  %474 = getelementptr inbounds [8 x i8], ptr %row.i.i.i301, i32 0, i32 3
  %475 = getelementptr inbounds [8 x i8], ptr %row.i.i.i301, i32 0, i32 4
  %476 = getelementptr inbounds [8 x i8], ptr %row.i.i.i301, i32 0, i32 5
  %477 = getelementptr inbounds [8 x i8], ptr %row.i.i.i301, i32 0, i32 6
  %478 = getelementptr inbounds [8 x i8], ptr %row.i.i.i301, i32 0, i32 7
  %i2c_intf.i.i.i302 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  br label %while.body.i.i311

while.body.i.i311:                                ; preds = %while.body.i.i311.while.body.i.i311_crit_edge, %sw.bb94
  %dec6.i.i303 = phi i32 [ 9, %sw.bb94 ], [ %dec.i.i309, %while.body.i.i311.while.body.i.i311_crit_edge ]
  %buf.addr.05.i.i304 = phi ptr [ @mt9m111_init, %sw.bb94 ], [ %incdec.ptr.i.i308, %while.body.i.i311.while.body.i.i311_crit_edge ]
  %479 = ptrtoint ptr %buf.addr.05.i.i304 to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %buf.addr.05.i.i304, align 2
  %val.i.i305 = getelementptr inbounds %struct.i2c_reg_u16, ptr %buf.addr.05.i.i304, i32 0, i32 1
  %481 = ptrtoint ptr %val.i.i305 to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %val.i.i305, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i301) #7
  %483 = ptrtoint ptr %i2c_intf.i.i.i302 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %i2c_intf.i.i.i302, align 4
  %485 = or i8 %484, 48
  %486 = ptrtoint ptr %row.i.i.i301 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 %485, ptr %row.i.i.i301, align 1
  %487 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %i2c_addr, align 1
  %489 = ptrtoint ptr %472 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 %488, ptr %472, align 1
  %490 = ptrtoint ptr %473 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 %480, ptr %473, align 1
  %491 = lshr i16 %482, 8
  %conv5.i.i.i306 = trunc i16 %491 to i8
  %492 = ptrtoint ptr %474 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 %conv5.i.i.i306, ptr %474, align 1
  %conv7.i.i.i307 = trunc i16 %482 to i8
  %493 = ptrtoint ptr %475 to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 %conv7.i.i.i307, ptr %475, align 1
  %494 = ptrtoint ptr %476 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 0, ptr %476, align 1
  %495 = ptrtoint ptr %477 to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 0, ptr %477, align 1
  %496 = ptrtoint ptr %478 to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 16, ptr %478, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i301) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i301) #7
  %incdec.ptr.i.i308 = getelementptr %struct.i2c_reg_u16, ptr %buf.addr.05.i.i304, i32 1
  %dec.i.i309 = add nsw i32 %dec6.i.i303, -1
  %cmp.i.not.i310 = icmp eq i32 %dec6.i.i303, 0
  br i1 %cmp.i.not.i310, label %i2c_w2_buf.exit.i314, label %while.body.i.i311.while.body.i.i311_crit_edge

while.body.i.i311.while.body.i.i311_crit_edge:    ; preds = %while.body.i.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i311

i2c_w2_buf.exit.i314:                             ; preds = %while.body.i.i311
  %497 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %498)
  %cmp.i313 = icmp slt i32 %498, 0
  br i1 %cmp.i313, label %mt9m111_init_sensor.exit, label %mt9m111_init_sensor.exit.thread

mt9m111_init_sensor.exit.thread:                  ; preds = %i2c_w2_buf.exit.i314
  call void @__sanitizer_cov_trace_pc() #9
  %hstart.i317407 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %499 = ptrtoint ptr %hstart.i317407 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 0, ptr %hstart.i317407, align 2
  %vstart.i318408 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %500 = ptrtoint ptr %vstart.i318408 to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 2, ptr %vstart.i318408, align 1
  br label %do.end102

mt9m111_init_sensor.exit:                         ; preds = %i2c_w2_buf.exit.i314
  %call.i315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #10
  %501 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %.pr406 = load i32, ptr %usb_err.i, align 8
  %hstart.i317 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %502 = ptrtoint ptr %hstart.i317 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 0, ptr %hstart.i317, align 2
  %vstart.i318 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %503 = ptrtoint ptr %vstart.i318 to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 2, ptr %vstart.i318, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr406)
  %cmp96 = icmp slt i32 %.pr406, 0
  br i1 %cmp96, label %mt9m111_init_sensor.exit.cleanup_crit_edge, label %mt9m111_init_sensor.exit.do.end102_crit_edge

mt9m111_init_sensor.exit.do.end102_crit_edge:     ; preds = %mt9m111_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end102

mt9m111_init_sensor.exit.cleanup_crit_edge:       ; preds = %mt9m111_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end102:                                        ; preds = %mt9m111_init_sensor.exit.do.end102_crit_edge, %mt9m111_init_sensor.exit.thread
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %cleanup

sw.bb105:                                         ; preds = %if.end27
  %504 = getelementptr inbounds [8 x i8], ptr %row.i.i.i320, i32 0, i32 1
  %505 = getelementptr inbounds [8 x i8], ptr %row.i.i.i320, i32 0, i32 2
  %506 = getelementptr inbounds [8 x i8], ptr %row.i.i.i320, i32 0, i32 3
  %507 = getelementptr inbounds [8 x i8], ptr %row.i.i.i320, i32 0, i32 4
  %508 = getelementptr inbounds [8 x i8], ptr %row.i.i.i320, i32 0, i32 5
  %509 = getelementptr inbounds [8 x i8], ptr %row.i.i.i320, i32 0, i32 6
  %510 = getelementptr inbounds [8 x i8], ptr %row.i.i.i320, i32 0, i32 7
  %i2c_intf.i.i.i321 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  br label %while.body.i.i331

while.body.i.i331:                                ; preds = %while.body.i.i331.while.body.i.i331_crit_edge, %sw.bb105
  %dec6.i.i323 = phi i32 [ 9, %sw.bb105 ], [ %dec.i.i329, %while.body.i.i331.while.body.i.i331_crit_edge ]
  %buf.addr.05.i.i324 = phi ptr [ @mt9m112_init, %sw.bb105 ], [ %incdec.ptr.i.i328, %while.body.i.i331.while.body.i.i331_crit_edge ]
  %511 = ptrtoint ptr %buf.addr.05.i.i324 to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %buf.addr.05.i.i324, align 2
  %val.i.i325 = getelementptr inbounds %struct.i2c_reg_u16, ptr %buf.addr.05.i.i324, i32 0, i32 1
  %513 = ptrtoint ptr %val.i.i325 to i32
  call void @__asan_load2_noabort(i32 %513)
  %514 = load i16, ptr %val.i.i325, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i320) #7
  %515 = ptrtoint ptr %i2c_intf.i.i.i321 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %i2c_intf.i.i.i321, align 4
  %517 = or i8 %516, 48
  %518 = ptrtoint ptr %row.i.i.i320 to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 %517, ptr %row.i.i.i320, align 1
  %519 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %i2c_addr, align 1
  %521 = ptrtoint ptr %504 to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 %520, ptr %504, align 1
  %522 = ptrtoint ptr %505 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 %512, ptr %505, align 1
  %523 = lshr i16 %514, 8
  %conv5.i.i.i326 = trunc i16 %523 to i8
  %524 = ptrtoint ptr %506 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %conv5.i.i.i326, ptr %506, align 1
  %conv7.i.i.i327 = trunc i16 %514 to i8
  %525 = ptrtoint ptr %507 to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 %conv7.i.i.i327, ptr %507, align 1
  %526 = ptrtoint ptr %508 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 0, ptr %508, align 1
  %527 = ptrtoint ptr %509 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 0, ptr %509, align 1
  %528 = ptrtoint ptr %510 to i32
  call void @__asan_store1_noabort(i32 %528)
  store i8 16, ptr %510, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i320) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i320) #7
  %incdec.ptr.i.i328 = getelementptr %struct.i2c_reg_u16, ptr %buf.addr.05.i.i324, i32 1
  %dec.i.i329 = add nsw i32 %dec6.i.i323, -1
  %cmp.i.not.i330 = icmp eq i32 %dec6.i.i323, 0
  br i1 %cmp.i.not.i330, label %i2c_w2_buf.exit.i334, label %while.body.i.i331.while.body.i.i331_crit_edge

while.body.i.i331.while.body.i.i331_crit_edge:    ; preds = %while.body.i.i331
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i331

i2c_w2_buf.exit.i334:                             ; preds = %while.body.i.i331
  %529 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %530)
  %cmp.i333 = icmp slt i32 %530, 0
  br i1 %cmp.i333, label %mt9m112_init_sensor.exit, label %mt9m112_init_sensor.exit.thread

mt9m112_init_sensor.exit.thread:                  ; preds = %i2c_w2_buf.exit.i334
  call void @__sanitizer_cov_trace_pc() #9
  %hstart.i337411 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %531 = ptrtoint ptr %hstart.i337411 to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 0, ptr %hstart.i337411, align 2
  %vstart.i338412 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %532 = ptrtoint ptr %vstart.i338412 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 2, ptr %vstart.i338412, align 1
  br label %do.end113

mt9m112_init_sensor.exit:                         ; preds = %i2c_w2_buf.exit.i334
  %call.i335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #10
  %533 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %.pr410 = load i32, ptr %usb_err.i, align 8
  %hstart.i337 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %534 = ptrtoint ptr %hstart.i337 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 0, ptr %hstart.i337, align 2
  %vstart.i338 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %535 = ptrtoint ptr %vstart.i338 to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 2, ptr %vstart.i338, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr410)
  %cmp107 = icmp slt i32 %.pr410, 0
  br i1 %cmp107, label %mt9m112_init_sensor.exit.cleanup_crit_edge, label %mt9m112_init_sensor.exit.do.end113_crit_edge

mt9m112_init_sensor.exit.do.end113_crit_edge:     ; preds = %mt9m112_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end113

mt9m112_init_sensor.exit.cleanup_crit_edge:       ; preds = %mt9m112_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end113:                                        ; preds = %mt9m112_init_sensor.exit.do.end113_crit_edge, %mt9m112_init_sensor.exit.thread
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %cleanup

sw.bb116:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id.i341) #7
  %536 = ptrtoint ptr %id.i341 to i32
  call void @__asan_store2_noabort(i32 %536)
  store i16 -1, ptr %id.i341, align 2, !annotation !293
  call fastcc void @i2c_r2(ptr noundef %gspca_dev, i8 noundef zeroext 0, ptr noundef nonnull %id.i341) #7
  %537 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %538)
  %cmp.i343 = icmp slt i32 %538, 0
  br i1 %cmp.i343, label %sw.bb116.mt9m001_init_sensor.exit_crit_edge, label %if.end.i344

sw.bb116.mt9m001_init_sensor.exit_crit_edge:      ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt9m001_init_sensor.exit

if.end.i344:                                      ; preds = %sw.bb116
  %539 = ptrtoint ptr %id.i341 to i32
  call void @__asan_load2_noabort(i32 %539)
  %540 = load i16, ptr %id.i341, align 2
  %541 = zext i16 %540 to i64
  call void @__sanitizer_cov_trace_switch(i64 %541, ptr @__sancov_gen_cov_switch_values.119)
  switch i16 %540, label %do.end9.i [
    i16 -31727, label %if.end.i344.sw.epilog.i_crit_edge
    i16 -31711, label %if.end.i344.sw.epilog.i_crit_edge422
    i16 -31695, label %do.end4.i
  ]

if.end.i344.sw.epilog.i_crit_edge422:             ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i344.sw.epilog.i_crit_edge:                ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end4.i:                                        ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end9.i:                                        ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i345 = zext i16 %540 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv.i345) #10
  %542 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 -19, ptr %usb_err.i, align 8
  br label %mt9m001_init_sensor.exit

sw.epilog.i:                                      ; preds = %do.end4.i, %if.end.i344.sw.epilog.i_crit_edge, %if.end.i344.sw.epilog.i_crit_edge422
  %.str.85.sink.i = phi ptr [ @.str.85, %do.end4.i ], [ @.str.82, %if.end.i344.sw.epilog.i_crit_edge ], [ @.str.82, %if.end.i344.sw.epilog.i_crit_edge422 ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.85.sink.i) #10
  %543 = getelementptr inbounds [8 x i8], ptr %row.i.i.i340, i32 0, i32 1
  %544 = getelementptr inbounds [8 x i8], ptr %row.i.i.i340, i32 0, i32 2
  %545 = getelementptr inbounds [8 x i8], ptr %row.i.i.i340, i32 0, i32 3
  %546 = getelementptr inbounds [8 x i8], ptr %row.i.i.i340, i32 0, i32 4
  %547 = getelementptr inbounds [8 x i8], ptr %row.i.i.i340, i32 0, i32 5
  %548 = getelementptr inbounds [8 x i8], ptr %row.i.i.i340, i32 0, i32 6
  %549 = getelementptr inbounds [8 x i8], ptr %row.i.i.i340, i32 0, i32 7
  %i2c_intf.i.i.i346 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  br label %while.body.i.i356

while.body.i.i356:                                ; preds = %while.body.i.i356.while.body.i.i356_crit_edge, %sw.epilog.i
  %dec6.i.i348 = phi i32 [ 12, %sw.epilog.i ], [ %dec.i.i354, %while.body.i.i356.while.body.i.i356_crit_edge ]
  %buf.addr.05.i.i349 = phi ptr [ @mt9m001_init, %sw.epilog.i ], [ %incdec.ptr.i.i353, %while.body.i.i356.while.body.i.i356_crit_edge ]
  %550 = ptrtoint ptr %buf.addr.05.i.i349 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %buf.addr.05.i.i349, align 2
  %val.i.i350 = getelementptr inbounds %struct.i2c_reg_u16, ptr %buf.addr.05.i.i349, i32 0, i32 1
  %552 = ptrtoint ptr %val.i.i350 to i32
  call void @__asan_load2_noabort(i32 %552)
  %553 = load i16, ptr %val.i.i350, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i340) #7
  %554 = ptrtoint ptr %i2c_intf.i.i.i346 to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %i2c_intf.i.i.i346, align 4
  %556 = or i8 %555, 48
  %557 = ptrtoint ptr %row.i.i.i340 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 %556, ptr %row.i.i.i340, align 1
  %558 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %i2c_addr, align 1
  %560 = ptrtoint ptr %543 to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 %559, ptr %543, align 1
  %561 = ptrtoint ptr %544 to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 %551, ptr %544, align 1
  %562 = lshr i16 %553, 8
  %conv5.i.i.i351 = trunc i16 %562 to i8
  %563 = ptrtoint ptr %545 to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 %conv5.i.i.i351, ptr %545, align 1
  %conv7.i.i.i352 = trunc i16 %553 to i8
  %564 = ptrtoint ptr %546 to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 %conv7.i.i.i352, ptr %546, align 1
  %565 = ptrtoint ptr %547 to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 0, ptr %547, align 1
  %566 = ptrtoint ptr %548 to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 0, ptr %548, align 1
  %567 = ptrtoint ptr %549 to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 16, ptr %549, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i340) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i340) #7
  %incdec.ptr.i.i353 = getelementptr %struct.i2c_reg_u16, ptr %buf.addr.05.i.i349, i32 1
  %dec.i.i354 = add nsw i32 %dec6.i.i348, -1
  %cmp.i.not.i355 = icmp eq i32 %dec6.i.i348, 0
  br i1 %cmp.i.not.i355, label %i2c_w2_buf.exit.i357, label %while.body.i.i356.while.body.i.i356_crit_edge

while.body.i.i356.while.body.i.i356_crit_edge:    ; preds = %while.body.i.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i356

i2c_w2_buf.exit.i357:                             ; preds = %while.body.i.i356
  %568 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %569)
  %cmp15.i = icmp slt i32 %569, 0
  br i1 %cmp15.i, label %do.end20.i, label %i2c_w2_buf.exit.i357.if.end23.i_crit_edge

i2c_w2_buf.exit.i357.if.end23.i_crit_edge:        ; preds = %i2c_w2_buf.exit.i357
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

do.end20.i:                                       ; preds = %i2c_w2_buf.exit.i357
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end20.i, %i2c_w2_buf.exit.i357.if.end23.i_crit_edge
  %hstart.i358 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %570 = ptrtoint ptr %hstart.i358 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 1, ptr %hstart.i358, align 2
  %vstart.i359 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %571 = ptrtoint ptr %vstart.i359 to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 1, ptr %vstart.i359, align 1
  br label %mt9m001_init_sensor.exit

mt9m001_init_sensor.exit:                         ; preds = %if.end23.i, %do.end9.i, %sw.bb116.mt9m001_init_sensor.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id.i341) #7
  br label %cleanup

sw.bb122:                                         ; preds = %if.end27
  %572 = getelementptr inbounds [8 x i8], ptr %row.i.i.i360, i32 0, i32 1
  %573 = getelementptr inbounds [8 x i8], ptr %row.i.i.i360, i32 0, i32 2
  %574 = getelementptr inbounds [8 x i8], ptr %row.i.i.i360, i32 0, i32 3
  %575 = getelementptr inbounds [8 x i8], ptr %row.i.i.i360, i32 0, i32 4
  %576 = getelementptr inbounds [8 x i8], ptr %row.i.i.i360, i32 0, i32 5
  %577 = getelementptr inbounds [8 x i8], ptr %row.i.i.i360, i32 0, i32 6
  %578 = getelementptr inbounds [8 x i8], ptr %row.i.i.i360, i32 0, i32 7
  %i2c_intf.i.i.i361 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  br label %while.body.i.i369

while.body.i.i369:                                ; preds = %while.body.i.i369.while.body.i.i369_crit_edge, %sw.bb122
  %dec6.i.i363 = phi i32 [ 22, %sw.bb122 ], [ %dec.i.i367, %while.body.i.i369.while.body.i.i369_crit_edge ]
  %buf.addr.05.i.i364 = phi ptr [ @hv7131r_init, %sw.bb122 ], [ %incdec.ptr.i.i366, %while.body.i.i369.while.body.i.i369_crit_edge ]
  %579 = ptrtoint ptr %buf.addr.05.i.i364 to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %buf.addr.05.i.i364, align 1
  %val.i.i365 = getelementptr inbounds %struct.i2c_reg_u8, ptr %buf.addr.05.i.i364, i32 0, i32 1
  %581 = ptrtoint ptr %val.i.i365 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %val.i.i365, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i.i360) #7
  %583 = ptrtoint ptr %i2c_intf.i.i.i361 to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %i2c_intf.i.i.i361, align 4
  %585 = or i8 %584, 32
  %586 = ptrtoint ptr %row.i.i.i360 to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 %585, ptr %row.i.i.i360, align 1
  %587 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %i2c_addr, align 1
  %589 = ptrtoint ptr %572 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %588, ptr %572, align 1
  %590 = ptrtoint ptr %573 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 %580, ptr %573, align 1
  %591 = ptrtoint ptr %574 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %582, ptr %574, align 1
  %592 = ptrtoint ptr %575 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 0, ptr %575, align 1
  %593 = ptrtoint ptr %576 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 0, ptr %576, align 1
  %594 = ptrtoint ptr %577 to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 0, ptr %577, align 1
  %595 = ptrtoint ptr %578 to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 16, ptr %578, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i.i360) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i.i360) #7
  %incdec.ptr.i.i366 = getelementptr %struct.i2c_reg_u8, ptr %buf.addr.05.i.i364, i32 1
  %dec.i.i367 = add nsw i32 %dec6.i.i363, -1
  %cmp.i.not.i368 = icmp eq i32 %dec6.i.i363, 0
  br i1 %cmp.i.not.i368, label %i2c_w1_buf.exit.i372, label %while.body.i.i369.while.body.i.i369_crit_edge

while.body.i.i369.while.body.i.i369_crit_edge:    ; preds = %while.body.i.i369
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i369

i2c_w1_buf.exit.i372:                             ; preds = %while.body.i.i369
  %596 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %597)
  %cmp.i371 = icmp slt i32 %597, 0
  br i1 %cmp.i371, label %hv7131r_init_sensor.exit, label %hv7131r_init_sensor.exit.thread

hv7131r_init_sensor.exit.thread:                  ; preds = %i2c_w1_buf.exit.i372
  call void @__sanitizer_cov_trace_pc() #9
  %hstart.i375415 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %598 = ptrtoint ptr %hstart.i375415 to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 0, ptr %hstart.i375415, align 2
  %vstart.i376416 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %599 = ptrtoint ptr %vstart.i376416 to i32
  call void @__asan_store1_noabort(i32 %599)
  store i8 1, ptr %vstart.i376416, align 1
  br label %do.end130

hv7131r_init_sensor.exit:                         ; preds = %i2c_w1_buf.exit.i372
  %call.i373 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #10
  %600 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %.pr414 = load i32, ptr %usb_err.i, align 8
  %hstart.i375 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %601 = ptrtoint ptr %hstart.i375 to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 0, ptr %hstart.i375, align 2
  %vstart.i376 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %602 = ptrtoint ptr %vstart.i376 to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 1, ptr %vstart.i376, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr414)
  %cmp124 = icmp slt i32 %.pr414, 0
  br i1 %cmp124, label %hv7131r_init_sensor.exit.cleanup_crit_edge, label %hv7131r_init_sensor.exit.do.end130_crit_edge

hv7131r_init_sensor.exit.do.end130_crit_edge:     ; preds = %hv7131r_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end130

hv7131r_init_sensor.exit.cleanup_crit_edge:       ; preds = %hv7131r_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end130:                                        ; preds = %hv7131r_init_sensor.exit.do.end130_crit_edge, %hv7131r_init_sensor.exit.thread
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  br label %cleanup

do.end135:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  %603 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %603)
  store i32 -19, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end135, %do.end130, %hv7131r_init_sensor.exit.cleanup_crit_edge, %mt9m001_init_sensor.exit, %do.end113, %mt9m112_init_sensor.exit.cleanup_crit_edge, %do.end102, %mt9m111_init_sensor.exit.cleanup_crit_edge, %do.end91, %mt9v_init_sensor.exit.cleanup_crit_edge, %mt9v_init_sensor.exit.thread, %do.end80, %ov7670_init_sensor.exit.cleanup_crit_edge, %do.end69, %ov7660_init_sensor.exit.cleanup_crit_edge, %do.end58, %soi968_init_sensor.exit.cleanup_crit_edge, %do.end47, %ov9655_init_sensor.exit.cleanup_crit_edge, %do.end36, %ov9650_init_sensor.exit.cleanup_crit_edge, %ov9650_init_sensor.exit.thread, %do.end23, %do.end
  %604 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %retval.0 = load i32, ptr %usb_err.i, align 8
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 13, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.95) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #7
  %1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %1, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #7
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %contrast, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #7
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %saturation, align 8
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963779, i64 noundef -180, i64 noundef 180, i64 noundef 1, i64 noundef 0) #7
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %hue, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963792, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 16) #7
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %6 = ptrtoint ptr %gamma to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %gamma, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 40) #7
  %7 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %7, align 8
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 40) #7
  %red = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %red, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sensor, align 1
  %switch.tableidx = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 12
  br i1 %12, label %switch.hole_check, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %switch.hole_check.if.then_crit_edge, %entry.if.then_crit_edge
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %13 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %13, align 8
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %vflip, align 4
  br label %if.end

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 2187, %switch.maskindex
  %16 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit.not = icmp eq i16 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then_crit_edge, label %switch.lookup

switch.hole_check.if.then_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %17 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.sd_init_controls, i32 0, i32 %17
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.then
  %switch.gep.sink = phi ptr [ %switch.gep, %switch.lookup ], [ %sensor, %if.then ]
  %18 = ptrtoint ptr %switch.gep.sink to i32
  call void @__asan_load1_noabort(i32 %18)
  %switch.load = load i8, ptr %switch.gep.sink, align 1
  %19 = zext i8 %switch.load to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %switch.load, label %if.then55 [
    i8 2, label %if.end.if.end57_crit_edge
    i8 12, label %if.end.if.end57_crit_edge167
    i8 10, label %if.end.if.end57_crit_edge168
    i8 9, label %if.end.if.end57_crit_edge169
    i8 6, label %if.end.if.end57_crit_edge170
  ]

if.end.if.end57_crit_edge170:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end.if.end57_crit_edge169:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end.if.end57_crit_edge168:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end.if.end57_crit_edge167:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then55:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 6016, i64 noundef 1, i64 noundef 51) #7
  %exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call56, ptr %exposure, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end.if.end57_crit_edge, %if.end.if.end57_crit_edge167, %if.end.if.end57_crit_edge168, %if.end.if.end57_crit_edge169, %if.end.if.end57_crit_edge170
  %21 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sensor, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %22, label %if.then77 [
    i8 12, label %if.end57.if.end80_crit_edge
    i8 10, label %if.end57.if.end80_crit_edge171
    i8 9, label %if.end57.if.end80_crit_edge172
    i8 6, label %if.end57.if.end80_crit_edge173
  ]

if.end57.if.end80_crit_edge173:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end57.if.end80_crit_edge172:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end57.if.end80_crit_edge171:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end57.if.end80_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then77:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 28, i64 noundef 1, i64 noundef 0) #7
  %24 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call78, ptr %gain, align 4
  %call79 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call79, ptr %24, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end57.if.end80_crit_edge, %if.end57.if.end80_crit_edge171, %if.end57.if.end80_crit_edge172, %if.end57.if.end80_crit_edge173
  %call81 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 10291459, i64 noundef 50, i64 noundef 90, i64 noundef 1, i64 noundef 80) #7
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %27 = ptrtoint ptr %jpegqual to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call81, ptr %jpegqual, align 8
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 23
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags, align 1
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.end80.if.end85_crit_edge, label %if.then83

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 10225921, i8 noundef zeroext 2, i64 noundef -6, i8 noundef zeroext 0) #7
  %led_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %31 = ptrtoint ptr %led_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call84, ptr %led_mode, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end80.if.end85_crit_edge
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %32 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool86.not = icmp eq i32 %33, 0
  br i1 %tobool86.not, label %if.end91, label %do.end

do.end:                                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #10
  %34 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error, align 4
  br label %cleanup

if.end91:                                         ; preds = %if.end85
  tail call void @v4l2_ctrl_cluster(i32 noundef 4, ptr noundef %1) #7
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %7) #7
  %36 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %tobool95.not = icmp eq ptr %38, null
  br i1 %tobool95.not, label %if.end91.if.end98_crit_edge, label %if.then96

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %36) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end91.if.end98_crit_edge
  %39 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool100.not = icmp eq ptr %41, null
  br i1 %tobool100.not, label %if.end98.cleanup_crit_edge, label %if.then101

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then101:                                       ; preds = %if.end98
  %42 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp104 = icmp eq i8 %43, 2
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %39, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  br label %cleanup

if.else:                                          ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %39, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then106, %if.end98.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %35, %do.end ], [ 0, %if.then106 ], [ 0, %if.else ], [ 0, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %row.i127.i = alloca [8 x i8], align 1
  %row.i124.i = alloca [8 x i8], align 1
  %row.i121.i = alloca [8 x i8], align 1
  %row.i118.i = alloca [8 x i8], align 1
  %row.i115.i = alloca [8 x i8], align 1
  %row.i112.i = alloca [8 x i8], align 1
  %row.i109.i = alloca [8 x i8], align 1
  %row.i106.i = alloca [8 x i8], align 1
  %row.i103.i = alloca [8 x i8], align 1
  %row.i100.i = alloca [8 x i8], align 1
  %row.i97.i = alloca [8 x i8], align 1
  %row.i94.i = alloca [8 x i8], align 1
  %row.i91.i = alloca [8 x i8], align 1
  %row.i88.i = alloca [8 x i8], align 1
  %row.i85.i = alloca [8 x i8], align 1
  %row.i82.i = alloca [8 x i8], align 1
  %row.i79.i = alloca [8 x i8], align 1
  %row.i76.i = alloca [8 x i8], align 1
  %row.i73.i = alloca [8 x i8], align 1
  %row.i70.i = alloca [8 x i8], align 1
  %row.i67.i = alloca [8 x i8], align 1
  %row.i64.i = alloca [8 x i8], align 1
  %row.i61.i = alloca [8 x i8], align 1
  %row.i58.i = alloca [8 x i8], align 1
  %row.i55.i = alloca [8 x i8], align 1
  %row.i.i = alloca [8 x i8], align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %conv, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %6 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixfmt, align 8
  %height3 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height3, align 4
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 22
  %10 = call ptr @memcpy(ptr %jpeg_hdr, ptr @jpeg_head, i32 589)
  %11 = lshr i32 %9, 8
  %conv.i = trunc i32 %11 to i8
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 561
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %9 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 562
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %14 = lshr i32 %7, 8
  %conv4.i = trunc i32 %14 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 563
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %7 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 564
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 567
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 33, ptr %arrayidx9.i, align 1
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %18 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jpegqual, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.i = icmp slt i32 %call, 1
  br i1 %cmp.i, label %entry.if.end4.i_crit_edge, label %if.else.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %call)
  %cmp1.i = icmp ult i32 %call, 50
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %div31.rhs.trunc.i = trunc i32 %call to i16
  %div3132.i = udiv i16 5000, %div31.rhs.trunc.i
  %div31.zext.i = zext i16 %div3132.i to i32
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.neg.i = mul i32 %call, -2
  %sub.i = add i32 %mul.neg.i, 200
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i, %entry.if.end4.i_crit_edge
  %sc.0.i = phi i32 [ %div31.zext.i, %if.then2.i ], [ %sub.i, %if.else3.i ], [ 5000, %entry.if.end4.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i
  %i.033.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.033.i, 7
  %arrayidx.i156 = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %20 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i156, align 1
  %conv.i157 = zext i8 %21 to i32
  %mul6.i = mul i32 %sc.0.i, %conv.i157
  %add7.i = add i32 %mul6.i, 50
  %div8.i = sdiv i32 %add7.i, 100
  %conv9.i = trunc i32 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.033.i, 72
  %arrayidx13.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %24 to i32
  %mul15.i = mul i32 %sc.0.i, %conv14.i
  %add16.i = add i32 %mul15.i, 50
  %div17.i = sdiv i32 %add16.i, 100
  %conv18.i = trunc i32 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %25 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %. = select i1 %tobool7.not, i8 47, i8 36
  %fmt.0 = select i1 %tobool.not, i8 %., i8 45
  %fmt11 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %26 = ptrtoint ptr %fmt11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %fmt.0, ptr %fmt11, align 1
  %and12 = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and12)
  %27 = icmp ult i32 %and12, 4
  br i1 %27, label %switch.lookup, label %jpeg_set_qual.exit.sw.epilog_crit_edge

jpeg_set_qual.exit.sw.epilog_crit_edge:           ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.sd_start, i32 0, i32 %and12
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.shiftamt = shl nuw nsw i32 %and12, 3
  %switch.downshift = lshr i32 -1065316192, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %switch.load) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %jpeg_set_qual.exit.sw.epilog_crit_edge
  %scale.0 = phi i8 [ 0, %jpeg_set_qual.exit.sw.epilog_crit_edge ], [ %switch.masked, %switch.lookup ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %29 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %value.i, align 1, !annotation !293
  %sensor.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %30 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sensor.i, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %31, label %sw.epilog.configure_sensor_output.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 0, label %sw.bb3.i
    i8 10, label %sw.epilog.sw.bb15.i_crit_edge
    i8 9, label %sw.epilog.sw.bb15.i_crit_edge247
  ]

sw.epilog.sw.bb15.i_crit_edge247:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

sw.epilog.sw.bb15.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

sw.epilog.configure_sensor_output.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %configure_sensor_output.exit

sw.bb.i:                                          ; preds = %sw.epilog
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i158, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i.i) #7
  %33 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 1
  %34 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 2
  %35 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 3
  %36 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 4
  %37 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 5
  %38 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 6
  %39 = getelementptr inbounds [8 x i8], ptr %row.i.i, i32 0, i32 7
  %i2c_intf.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %40 = ptrtoint ptr %i2c_intf.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_intf.i.i, align 4
  %42 = or i8 %41, 32
  %43 = ptrtoint ptr %row.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %row.i.i, align 1
  %i2c_addr.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %44 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_addr.i.i, align 1
  %46 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %33, align 1
  %47 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 23, ptr %34, align 1
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 29, ptr %35, align 1
  %49 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %36, align 1
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %37, align 1
  %51 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %38, align 1
  %52 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 16, ptr %39, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i55.i) #7
  %53 = getelementptr inbounds [8 x i8], ptr %row.i55.i, i32 0, i32 1
  %54 = getelementptr inbounds [8 x i8], ptr %row.i55.i, i32 0, i32 2
  %55 = getelementptr inbounds [8 x i8], ptr %row.i55.i, i32 0, i32 3
  %56 = getelementptr inbounds [8 x i8], ptr %row.i55.i, i32 0, i32 4
  %57 = getelementptr inbounds [8 x i8], ptr %row.i55.i, i32 0, i32 5
  %58 = getelementptr inbounds [8 x i8], ptr %row.i55.i, i32 0, i32 6
  %59 = getelementptr inbounds [8 x i8], ptr %row.i55.i, i32 0, i32 7
  %60 = ptrtoint ptr %i2c_intf.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i2c_intf.i.i, align 4
  %62 = or i8 %61, 32
  %63 = ptrtoint ptr %row.i55.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %row.i55.i, align 1
  %64 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i2c_addr.i.i, align 1
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %53, align 1
  %67 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 24, ptr %54, align 1
  %68 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -67, ptr %55, align 1
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %56, align 1
  %70 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %57, align 1
  %71 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %58, align 1
  %72 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 16, ptr %59, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i55.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i55.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i58.i) #7
  %73 = getelementptr inbounds [8 x i8], ptr %row.i58.i, i32 0, i32 1
  %74 = getelementptr inbounds [8 x i8], ptr %row.i58.i, i32 0, i32 2
  %75 = getelementptr inbounds [8 x i8], ptr %row.i58.i, i32 0, i32 3
  %76 = getelementptr inbounds [8 x i8], ptr %row.i58.i, i32 0, i32 4
  %77 = getelementptr inbounds [8 x i8], ptr %row.i58.i, i32 0, i32 5
  %78 = getelementptr inbounds [8 x i8], ptr %row.i58.i, i32 0, i32 6
  %79 = getelementptr inbounds [8 x i8], ptr %row.i58.i, i32 0, i32 7
  %80 = ptrtoint ptr %i2c_intf.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %i2c_intf.i.i, align 4
  %82 = or i8 %81, 32
  %83 = ptrtoint ptr %row.i58.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %row.i58.i, align 1
  %84 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %i2c_addr.i.i, align 1
  %86 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %73, align 1
  %87 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 25, ptr %74, align 1
  %88 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %75, align 1
  %89 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %76, align 1
  %90 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %77, align 1
  %91 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %78, align 1
  %92 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 16, ptr %79, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i58.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i58.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i61.i) #7
  %93 = getelementptr inbounds [8 x i8], ptr %row.i61.i, i32 0, i32 1
  %94 = getelementptr inbounds [8 x i8], ptr %row.i61.i, i32 0, i32 2
  %95 = getelementptr inbounds [8 x i8], ptr %row.i61.i, i32 0, i32 3
  %96 = getelementptr inbounds [8 x i8], ptr %row.i61.i, i32 0, i32 4
  %97 = getelementptr inbounds [8 x i8], ptr %row.i61.i, i32 0, i32 5
  %98 = getelementptr inbounds [8 x i8], ptr %row.i61.i, i32 0, i32 6
  %99 = getelementptr inbounds [8 x i8], ptr %row.i61.i, i32 0, i32 7
  %100 = ptrtoint ptr %i2c_intf.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %i2c_intf.i.i, align 4
  %102 = or i8 %101, 32
  %103 = ptrtoint ptr %row.i61.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %row.i61.i, align 1
  %104 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %i2c_addr.i.i, align 1
  %106 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %93, align 1
  %107 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 26, ptr %94, align 1
  %108 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -127, ptr %95, align 1
  %109 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %96, align 1
  %110 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %97, align 1
  %111 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %98, align 1
  %112 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 16, ptr %99, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i61.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i61.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i64.i) #7
  %113 = getelementptr inbounds [8 x i8], ptr %row.i64.i, i32 0, i32 1
  %114 = getelementptr inbounds [8 x i8], ptr %row.i64.i, i32 0, i32 2
  %115 = getelementptr inbounds [8 x i8], ptr %row.i64.i, i32 0, i32 3
  %116 = getelementptr inbounds [8 x i8], ptr %row.i64.i, i32 0, i32 7
  %117 = ptrtoint ptr %i2c_intf.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %i2c_intf.i.i, align 4
  %119 = or i8 %118, 32
  %120 = ptrtoint ptr %row.i64.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %row.i64.i, align 1
  %121 = ptrtoint ptr %i2c_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %i2c_addr.i.i, align 1
  %123 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %113, align 1
  %124 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 18, ptr %114, align 1
  %125 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 0, ptr %115, align 1
  %126 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 16, ptr %116, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i64.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i64.i) #7
  %hstart.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %127 = ptrtoint ptr %hstart.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -116, ptr %hstart.i, align 2
  %vstart.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %128 = ptrtoint ptr %vstart.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 19, ptr %vstart.i, align 1
  br label %configure_sensor_output.exit

if.else.i158:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i67.i) #7
  %129 = getelementptr inbounds [8 x i8], ptr %row.i67.i, i32 0, i32 1
  %130 = getelementptr inbounds [8 x i8], ptr %row.i67.i, i32 0, i32 2
  %131 = getelementptr inbounds [8 x i8], ptr %row.i67.i, i32 0, i32 3
  %132 = getelementptr inbounds [8 x i8], ptr %row.i67.i, i32 0, i32 4
  %133 = getelementptr inbounds [8 x i8], ptr %row.i67.i, i32 0, i32 5
  %134 = getelementptr inbounds [8 x i8], ptr %row.i67.i, i32 0, i32 6
  %135 = getelementptr inbounds [8 x i8], ptr %row.i67.i, i32 0, i32 7
  %i2c_intf.i68.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %136 = ptrtoint ptr %i2c_intf.i68.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %i2c_intf.i68.i, align 4
  %138 = or i8 %137, 32
  %139 = ptrtoint ptr %row.i67.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %row.i67.i, align 1
  %i2c_addr.i69.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %140 = ptrtoint ptr %i2c_addr.i69.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %i2c_addr.i69.i, align 1
  %142 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %129, align 1
  %143 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 23, ptr %130, align 1
  %144 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 19, ptr %131, align 1
  %145 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %132, align 1
  %146 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %133, align 1
  %147 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %134, align 1
  %148 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 16, ptr %135, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i67.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i67.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i70.i) #7
  %149 = getelementptr inbounds [8 x i8], ptr %row.i70.i, i32 0, i32 1
  %150 = getelementptr inbounds [8 x i8], ptr %row.i70.i, i32 0, i32 2
  %151 = getelementptr inbounds [8 x i8], ptr %row.i70.i, i32 0, i32 3
  %152 = getelementptr inbounds [8 x i8], ptr %row.i70.i, i32 0, i32 4
  %153 = getelementptr inbounds [8 x i8], ptr %row.i70.i, i32 0, i32 5
  %154 = getelementptr inbounds [8 x i8], ptr %row.i70.i, i32 0, i32 6
  %155 = getelementptr inbounds [8 x i8], ptr %row.i70.i, i32 0, i32 7
  %156 = ptrtoint ptr %i2c_intf.i68.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %i2c_intf.i68.i, align 4
  %158 = or i8 %157, 32
  %159 = ptrtoint ptr %row.i70.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %row.i70.i, align 1
  %160 = ptrtoint ptr %i2c_addr.i69.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %i2c_addr.i69.i, align 1
  %162 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %149, align 1
  %163 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 24, ptr %150, align 1
  %164 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 99, ptr %151, align 1
  %165 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %152, align 1
  %166 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %153, align 1
  %167 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %154, align 1
  %168 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 16, ptr %155, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i70.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i70.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i73.i) #7
  %169 = getelementptr inbounds [8 x i8], ptr %row.i73.i, i32 0, i32 1
  %170 = getelementptr inbounds [8 x i8], ptr %row.i73.i, i32 0, i32 2
  %171 = getelementptr inbounds [8 x i8], ptr %row.i73.i, i32 0, i32 3
  %172 = getelementptr inbounds [8 x i8], ptr %row.i73.i, i32 0, i32 4
  %173 = getelementptr inbounds [8 x i8], ptr %row.i73.i, i32 0, i32 5
  %174 = getelementptr inbounds [8 x i8], ptr %row.i73.i, i32 0, i32 6
  %175 = getelementptr inbounds [8 x i8], ptr %row.i73.i, i32 0, i32 7
  %176 = ptrtoint ptr %i2c_intf.i68.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %i2c_intf.i68.i, align 4
  %178 = or i8 %177, 32
  %179 = ptrtoint ptr %row.i73.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %row.i73.i, align 1
  %180 = ptrtoint ptr %i2c_addr.i69.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %i2c_addr.i69.i, align 1
  %182 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %169, align 1
  %183 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 25, ptr %170, align 1
  %184 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %171, align 1
  %185 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %172, align 1
  %186 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %173, align 1
  %187 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %174, align 1
  %188 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 16, ptr %175, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i73.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i73.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i76.i) #7
  %189 = getelementptr inbounds [8 x i8], ptr %row.i76.i, i32 0, i32 1
  %190 = getelementptr inbounds [8 x i8], ptr %row.i76.i, i32 0, i32 2
  %191 = getelementptr inbounds [8 x i8], ptr %row.i76.i, i32 0, i32 3
  %192 = getelementptr inbounds [8 x i8], ptr %row.i76.i, i32 0, i32 4
  %193 = getelementptr inbounds [8 x i8], ptr %row.i76.i, i32 0, i32 5
  %194 = getelementptr inbounds [8 x i8], ptr %row.i76.i, i32 0, i32 6
  %195 = getelementptr inbounds [8 x i8], ptr %row.i76.i, i32 0, i32 7
  %196 = ptrtoint ptr %i2c_intf.i68.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %i2c_intf.i68.i, align 4
  %198 = or i8 %197, 32
  %199 = ptrtoint ptr %row.i76.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %row.i76.i, align 1
  %200 = ptrtoint ptr %i2c_addr.i69.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %i2c_addr.i69.i, align 1
  %202 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %189, align 1
  %203 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 26, ptr %190, align 1
  %204 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 121, ptr %191, align 1
  %205 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %192, align 1
  %206 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %193, align 1
  %207 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %194, align 1
  %208 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 16, ptr %195, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i76.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i76.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i79.i) #7
  %209 = getelementptr inbounds [8 x i8], ptr %row.i79.i, i32 0, i32 1
  %210 = getelementptr inbounds [8 x i8], ptr %row.i79.i, i32 0, i32 2
  %211 = getelementptr inbounds [8 x i8], ptr %row.i79.i, i32 0, i32 3
  %212 = getelementptr inbounds [8 x i8], ptr %row.i79.i, i32 0, i32 4
  %213 = getelementptr inbounds [8 x i8], ptr %row.i79.i, i32 0, i32 5
  %214 = getelementptr inbounds [8 x i8], ptr %row.i79.i, i32 0, i32 6
  %215 = getelementptr inbounds [8 x i8], ptr %row.i79.i, i32 0, i32 7
  %216 = ptrtoint ptr %i2c_intf.i68.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %i2c_intf.i68.i, align 4
  %218 = or i8 %217, 32
  %219 = ptrtoint ptr %row.i79.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %row.i79.i, align 1
  %220 = ptrtoint ptr %i2c_addr.i69.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %i2c_addr.i69.i, align 1
  %222 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %209, align 1
  %223 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 18, ptr %210, align 1
  %224 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 64, ptr %211, align 1
  %225 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %212, align 1
  %226 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %213, align 1
  %227 = ptrtoint ptr %214 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %214, align 1
  %228 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 16, ptr %215, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i79.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i79.i) #7
  %hstart1.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %229 = ptrtoint ptr %hstart1.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 60, ptr %hstart1.i, align 2
  %vstart2.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %230 = ptrtoint ptr %vstart2.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 11, ptr %vstart2.i, align 1
  br label %configure_sensor_output.exit

sw.bb3.i:                                         ; preds = %sw.epilog
  %and4.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else10.i, label %if.then6.i

if.then6.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i82.i) #7
  %231 = getelementptr inbounds [8 x i8], ptr %row.i82.i, i32 0, i32 1
  %232 = getelementptr inbounds [8 x i8], ptr %row.i82.i, i32 0, i32 2
  %233 = getelementptr inbounds [8 x i8], ptr %row.i82.i, i32 0, i32 3
  %234 = getelementptr inbounds [8 x i8], ptr %row.i82.i, i32 0, i32 4
  %235 = getelementptr inbounds [8 x i8], ptr %row.i82.i, i32 0, i32 5
  %236 = getelementptr inbounds [8 x i8], ptr %row.i82.i, i32 0, i32 6
  %237 = getelementptr inbounds [8 x i8], ptr %row.i82.i, i32 0, i32 7
  %i2c_intf.i83.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %238 = ptrtoint ptr %i2c_intf.i83.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %i2c_intf.i83.i, align 4
  %240 = or i8 %239, 32
  %241 = ptrtoint ptr %row.i82.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %240, ptr %row.i82.i, align 1
  %i2c_addr.i84.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %242 = ptrtoint ptr %i2c_addr.i84.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %i2c_addr.i84.i, align 1
  %244 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %231, align 1
  %245 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 23, ptr %232, align 1
  %246 = ptrtoint ptr %233 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 27, ptr %233, align 1
  %247 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %234, align 1
  %248 = ptrtoint ptr %235 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %235, align 1
  %249 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %236, align 1
  %250 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 16, ptr %237, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i82.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i82.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i85.i) #7
  %251 = getelementptr inbounds [8 x i8], ptr %row.i85.i, i32 0, i32 1
  %252 = getelementptr inbounds [8 x i8], ptr %row.i85.i, i32 0, i32 2
  %253 = getelementptr inbounds [8 x i8], ptr %row.i85.i, i32 0, i32 3
  %254 = getelementptr inbounds [8 x i8], ptr %row.i85.i, i32 0, i32 4
  %255 = getelementptr inbounds [8 x i8], ptr %row.i85.i, i32 0, i32 5
  %256 = getelementptr inbounds [8 x i8], ptr %row.i85.i, i32 0, i32 6
  %257 = getelementptr inbounds [8 x i8], ptr %row.i85.i, i32 0, i32 7
  %258 = ptrtoint ptr %i2c_intf.i83.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %i2c_intf.i83.i, align 4
  %260 = or i8 %259, 32
  %261 = ptrtoint ptr %row.i85.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %row.i85.i, align 1
  %262 = ptrtoint ptr %i2c_addr.i84.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %i2c_addr.i84.i, align 1
  %264 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %263, ptr %251, align 1
  %265 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 24, ptr %252, align 1
  %266 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 -68, ptr %253, align 1
  %267 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 0, ptr %254, align 1
  %268 = ptrtoint ptr %255 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 0, ptr %255, align 1
  %269 = ptrtoint ptr %256 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %256, align 1
  %270 = ptrtoint ptr %257 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 16, ptr %257, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i85.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i85.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i88.i) #7
  %271 = getelementptr inbounds [8 x i8], ptr %row.i88.i, i32 0, i32 1
  %272 = getelementptr inbounds [8 x i8], ptr %row.i88.i, i32 0, i32 2
  %273 = getelementptr inbounds [8 x i8], ptr %row.i88.i, i32 0, i32 3
  %274 = getelementptr inbounds [8 x i8], ptr %row.i88.i, i32 0, i32 4
  %275 = getelementptr inbounds [8 x i8], ptr %row.i88.i, i32 0, i32 5
  %276 = getelementptr inbounds [8 x i8], ptr %row.i88.i, i32 0, i32 6
  %277 = getelementptr inbounds [8 x i8], ptr %row.i88.i, i32 0, i32 7
  %278 = ptrtoint ptr %i2c_intf.i83.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %i2c_intf.i83.i, align 4
  %280 = or i8 %279, 32
  %281 = ptrtoint ptr %row.i88.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %280, ptr %row.i88.i, align 1
  %282 = ptrtoint ptr %i2c_addr.i84.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %i2c_addr.i84.i, align 1
  %284 = ptrtoint ptr %271 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %283, ptr %271, align 1
  %285 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 25, ptr %272, align 1
  %286 = ptrtoint ptr %273 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 1, ptr %273, align 1
  %287 = ptrtoint ptr %274 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 0, ptr %274, align 1
  %288 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 0, ptr %275, align 1
  %289 = ptrtoint ptr %276 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %276, align 1
  %290 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 16, ptr %277, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i88.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i88.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i91.i) #7
  %291 = getelementptr inbounds [8 x i8], ptr %row.i91.i, i32 0, i32 1
  %292 = getelementptr inbounds [8 x i8], ptr %row.i91.i, i32 0, i32 2
  %293 = getelementptr inbounds [8 x i8], ptr %row.i91.i, i32 0, i32 3
  %294 = getelementptr inbounds [8 x i8], ptr %row.i91.i, i32 0, i32 4
  %295 = getelementptr inbounds [8 x i8], ptr %row.i91.i, i32 0, i32 5
  %296 = getelementptr inbounds [8 x i8], ptr %row.i91.i, i32 0, i32 6
  %297 = getelementptr inbounds [8 x i8], ptr %row.i91.i, i32 0, i32 7
  %298 = ptrtoint ptr %i2c_intf.i83.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %i2c_intf.i83.i, align 4
  %300 = or i8 %299, 32
  %301 = ptrtoint ptr %row.i91.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %300, ptr %row.i91.i, align 1
  %302 = ptrtoint ptr %i2c_addr.i84.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %i2c_addr.i84.i, align 1
  %304 = ptrtoint ptr %291 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %303, ptr %291, align 1
  %305 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 26, ptr %292, align 1
  %306 = ptrtoint ptr %293 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 -126, ptr %293, align 1
  %307 = ptrtoint ptr %294 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 0, ptr %294, align 1
  %308 = ptrtoint ptr %295 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 0, ptr %295, align 1
  %309 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %296, align 1
  %310 = ptrtoint ptr %297 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 16, ptr %297, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i91.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i91.i) #7
  call fastcc void @i2c_r1(ptr noundef %gspca_dev, i8 noundef zeroext 18, ptr noundef nonnull %value.i) #7
  %311 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %value.i, align 1
  %313 = and i8 %312, 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i94.i) #7
  %314 = getelementptr inbounds [8 x i8], ptr %row.i94.i, i32 0, i32 1
  %315 = getelementptr inbounds [8 x i8], ptr %row.i94.i, i32 0, i32 2
  %316 = getelementptr inbounds [8 x i8], ptr %row.i94.i, i32 0, i32 3
  %317 = getelementptr inbounds [8 x i8], ptr %row.i94.i, i32 0, i32 4
  %318 = getelementptr inbounds [8 x i8], ptr %row.i94.i, i32 0, i32 5
  %319 = getelementptr inbounds [8 x i8], ptr %row.i94.i, i32 0, i32 6
  %320 = getelementptr inbounds [8 x i8], ptr %row.i94.i, i32 0, i32 7
  %321 = ptrtoint ptr %i2c_intf.i83.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %i2c_intf.i83.i, align 4
  %323 = or i8 %322, 32
  %324 = ptrtoint ptr %row.i94.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %row.i94.i, align 1
  %325 = ptrtoint ptr %i2c_addr.i84.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %i2c_addr.i84.i, align 1
  %327 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %326, ptr %314, align 1
  %328 = ptrtoint ptr %315 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 18, ptr %315, align 1
  %329 = ptrtoint ptr %316 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %313, ptr %316, align 1
  %330 = ptrtoint ptr %317 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %317, align 1
  %331 = ptrtoint ptr %318 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 0, ptr %318, align 1
  %332 = ptrtoint ptr %319 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 0, ptr %319, align 1
  %333 = ptrtoint ptr %320 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 16, ptr %320, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i94.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i94.i) #7
  br label %configure_sensor_output.exit

if.else10.i:                                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i97.i) #7
  %334 = getelementptr inbounds [8 x i8], ptr %row.i97.i, i32 0, i32 1
  %335 = getelementptr inbounds [8 x i8], ptr %row.i97.i, i32 0, i32 2
  %336 = getelementptr inbounds [8 x i8], ptr %row.i97.i, i32 0, i32 3
  %337 = getelementptr inbounds [8 x i8], ptr %row.i97.i, i32 0, i32 4
  %338 = getelementptr inbounds [8 x i8], ptr %row.i97.i, i32 0, i32 5
  %339 = getelementptr inbounds [8 x i8], ptr %row.i97.i, i32 0, i32 6
  %340 = getelementptr inbounds [8 x i8], ptr %row.i97.i, i32 0, i32 7
  %i2c_intf.i98.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %341 = ptrtoint ptr %i2c_intf.i98.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %i2c_intf.i98.i, align 4
  %343 = or i8 %342, 32
  %344 = ptrtoint ptr %row.i97.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %343, ptr %row.i97.i, align 1
  %i2c_addr.i99.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %345 = ptrtoint ptr %i2c_addr.i99.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %i2c_addr.i99.i, align 1
  %347 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %346, ptr %334, align 1
  %348 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 23, ptr %335, align 1
  %349 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 36, ptr %336, align 1
  %350 = ptrtoint ptr %337 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %337, align 1
  %351 = ptrtoint ptr %338 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %338, align 1
  %352 = ptrtoint ptr %339 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 0, ptr %339, align 1
  %353 = ptrtoint ptr %340 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 16, ptr %340, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i97.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i97.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i100.i) #7
  %354 = getelementptr inbounds [8 x i8], ptr %row.i100.i, i32 0, i32 1
  %355 = getelementptr inbounds [8 x i8], ptr %row.i100.i, i32 0, i32 2
  %356 = getelementptr inbounds [8 x i8], ptr %row.i100.i, i32 0, i32 3
  %357 = getelementptr inbounds [8 x i8], ptr %row.i100.i, i32 0, i32 4
  %358 = getelementptr inbounds [8 x i8], ptr %row.i100.i, i32 0, i32 5
  %359 = getelementptr inbounds [8 x i8], ptr %row.i100.i, i32 0, i32 6
  %360 = getelementptr inbounds [8 x i8], ptr %row.i100.i, i32 0, i32 7
  %361 = ptrtoint ptr %i2c_intf.i98.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %i2c_intf.i98.i, align 4
  %363 = or i8 %362, 32
  %364 = ptrtoint ptr %row.i100.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %363, ptr %row.i100.i, align 1
  %365 = ptrtoint ptr %i2c_addr.i99.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %i2c_addr.i99.i, align 1
  %367 = ptrtoint ptr %354 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %366, ptr %354, align 1
  %368 = ptrtoint ptr %355 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 24, ptr %355, align 1
  %369 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 -59, ptr %356, align 1
  %370 = ptrtoint ptr %357 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 0, ptr %357, align 1
  %371 = ptrtoint ptr %358 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %358, align 1
  %372 = ptrtoint ptr %359 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 0, ptr %359, align 1
  %373 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 16, ptr %360, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i100.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i100.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i103.i) #7
  %374 = getelementptr inbounds [8 x i8], ptr %row.i103.i, i32 0, i32 1
  %375 = getelementptr inbounds [8 x i8], ptr %row.i103.i, i32 0, i32 2
  %376 = getelementptr inbounds [8 x i8], ptr %row.i103.i, i32 0, i32 3
  %377 = getelementptr inbounds [8 x i8], ptr %row.i103.i, i32 0, i32 7
  %378 = ptrtoint ptr %i2c_intf.i98.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %i2c_intf.i98.i, align 4
  %380 = or i8 %379, 32
  %381 = ptrtoint ptr %row.i103.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 %380, ptr %row.i103.i, align 1
  %382 = ptrtoint ptr %i2c_addr.i99.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %i2c_addr.i99.i, align 1
  %384 = ptrtoint ptr %374 to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %383, ptr %374, align 1
  %385 = ptrtoint ptr %375 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 25, ptr %375, align 1
  %386 = ptrtoint ptr %376 to i32
  call void @__asan_storeN_noabort(i32 %386, i32 4)
  store i32 0, ptr %376, align 1
  %387 = ptrtoint ptr %377 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 16, ptr %377, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i103.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i103.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i106.i) #7
  %388 = getelementptr inbounds [8 x i8], ptr %row.i106.i, i32 0, i32 1
  %389 = getelementptr inbounds [8 x i8], ptr %row.i106.i, i32 0, i32 2
  %390 = getelementptr inbounds [8 x i8], ptr %row.i106.i, i32 0, i32 3
  %391 = getelementptr inbounds [8 x i8], ptr %row.i106.i, i32 0, i32 4
  %392 = getelementptr inbounds [8 x i8], ptr %row.i106.i, i32 0, i32 5
  %393 = getelementptr inbounds [8 x i8], ptr %row.i106.i, i32 0, i32 6
  %394 = getelementptr inbounds [8 x i8], ptr %row.i106.i, i32 0, i32 7
  %395 = ptrtoint ptr %i2c_intf.i98.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %i2c_intf.i98.i, align 4
  %397 = or i8 %396, 32
  %398 = ptrtoint ptr %row.i106.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %397, ptr %row.i106.i, align 1
  %399 = ptrtoint ptr %i2c_addr.i99.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %i2c_addr.i99.i, align 1
  %401 = ptrtoint ptr %388 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %400, ptr %388, align 1
  %402 = ptrtoint ptr %389 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 26, ptr %389, align 1
  %403 = ptrtoint ptr %390 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 60, ptr %390, align 1
  %404 = ptrtoint ptr %391 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 0, ptr %391, align 1
  %405 = ptrtoint ptr %392 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 0, ptr %392, align 1
  %406 = ptrtoint ptr %393 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 0, ptr %393, align 1
  %407 = ptrtoint ptr %394 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 16, ptr %394, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i106.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i106.i) #7
  call fastcc void @i2c_r1(ptr noundef %gspca_dev, i8 noundef zeroext 18, ptr noundef nonnull %value.i) #7
  %408 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %value.i, align 1
  %410 = and i8 %409, 7
  %411 = or i8 %410, 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i109.i) #7
  %412 = getelementptr inbounds [8 x i8], ptr %row.i109.i, i32 0, i32 1
  %413 = getelementptr inbounds [8 x i8], ptr %row.i109.i, i32 0, i32 2
  %414 = getelementptr inbounds [8 x i8], ptr %row.i109.i, i32 0, i32 3
  %415 = getelementptr inbounds [8 x i8], ptr %row.i109.i, i32 0, i32 4
  %416 = getelementptr inbounds [8 x i8], ptr %row.i109.i, i32 0, i32 5
  %417 = getelementptr inbounds [8 x i8], ptr %row.i109.i, i32 0, i32 6
  %418 = getelementptr inbounds [8 x i8], ptr %row.i109.i, i32 0, i32 7
  %419 = ptrtoint ptr %i2c_intf.i98.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %i2c_intf.i98.i, align 4
  %421 = or i8 %420, 32
  %422 = ptrtoint ptr %row.i109.i to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %421, ptr %row.i109.i, align 1
  %423 = ptrtoint ptr %i2c_addr.i99.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %i2c_addr.i99.i, align 1
  %425 = ptrtoint ptr %412 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %412, align 1
  %426 = ptrtoint ptr %413 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 18, ptr %413, align 1
  %427 = ptrtoint ptr %414 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %411, ptr %414, align 1
  %428 = ptrtoint ptr %415 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 0, ptr %415, align 1
  %429 = ptrtoint ptr %416 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 0, ptr %416, align 1
  %430 = ptrtoint ptr %417 to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 0, ptr %417, align 1
  %431 = ptrtoint ptr %418 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 16, ptr %418, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i109.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i109.i) #7
  br label %configure_sensor_output.exit

sw.bb15.i:                                        ; preds = %sw.epilog.sw.bb15.i_crit_edge, %sw.epilog.sw.bb15.i_crit_edge247
  %and16.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else19.i, label %if.then18.i

if.then18.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i112.i) #7
  %432 = getelementptr inbounds [8 x i8], ptr %row.i112.i, i32 0, i32 1
  %433 = getelementptr inbounds [8 x i8], ptr %row.i112.i, i32 0, i32 2
  %434 = getelementptr inbounds [8 x i8], ptr %row.i112.i, i32 0, i32 3
  %435 = getelementptr inbounds [8 x i8], ptr %row.i112.i, i32 0, i32 4
  %436 = getelementptr inbounds [8 x i8], ptr %row.i112.i, i32 0, i32 5
  %437 = getelementptr inbounds [8 x i8], ptr %row.i112.i, i32 0, i32 6
  %438 = getelementptr inbounds [8 x i8], ptr %row.i112.i, i32 0, i32 7
  %i2c_intf.i113.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %439 = ptrtoint ptr %i2c_intf.i113.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %i2c_intf.i113.i, align 4
  %441 = or i8 %440, 48
  %442 = ptrtoint ptr %row.i112.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %441, ptr %row.i112.i, align 1
  %i2c_addr.i114.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %443 = ptrtoint ptr %i2c_addr.i114.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %i2c_addr.i114.i, align 1
  %445 = ptrtoint ptr %432 to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 %444, ptr %432, align 1
  %446 = ptrtoint ptr %433 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 -16, ptr %433, align 1
  %447 = ptrtoint ptr %434 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 0, ptr %434, align 1
  %448 = ptrtoint ptr %435 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 2, ptr %435, align 1
  %449 = ptrtoint ptr %436 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 0, ptr %436, align 1
  %450 = ptrtoint ptr %437 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %437, align 1
  %451 = ptrtoint ptr %438 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 16, ptr %438, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i112.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i112.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i115.i) #7
  %452 = getelementptr inbounds [8 x i8], ptr %row.i115.i, i32 0, i32 1
  %453 = getelementptr inbounds [8 x i8], ptr %row.i115.i, i32 0, i32 2
  %454 = getelementptr inbounds [8 x i8], ptr %row.i115.i, i32 0, i32 3
  %455 = getelementptr inbounds [8 x i8], ptr %row.i115.i, i32 0, i32 4
  %456 = getelementptr inbounds [8 x i8], ptr %row.i115.i, i32 0, i32 5
  %457 = getelementptr inbounds [8 x i8], ptr %row.i115.i, i32 0, i32 6
  %458 = getelementptr inbounds [8 x i8], ptr %row.i115.i, i32 0, i32 7
  %459 = ptrtoint ptr %i2c_intf.i113.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %i2c_intf.i113.i, align 4
  %461 = or i8 %460, 48
  %462 = ptrtoint ptr %row.i115.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 %461, ptr %row.i115.i, align 1
  %463 = ptrtoint ptr %i2c_addr.i114.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %i2c_addr.i114.i, align 1
  %465 = ptrtoint ptr %452 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 %464, ptr %452, align 1
  %466 = ptrtoint ptr %453 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 -56, ptr %453, align 1
  %467 = ptrtoint ptr %454 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 -105, ptr %454, align 1
  %468 = ptrtoint ptr %455 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 11, ptr %455, align 1
  %469 = ptrtoint ptr %456 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 0, ptr %456, align 1
  %470 = ptrtoint ptr %457 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 0, ptr %457, align 1
  %471 = ptrtoint ptr %458 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 16, ptr %458, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i115.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i115.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i118.i) #7
  %472 = getelementptr inbounds [8 x i8], ptr %row.i118.i, i32 0, i32 1
  %473 = getelementptr inbounds [8 x i8], ptr %row.i118.i, i32 0, i32 2
  %474 = getelementptr inbounds [8 x i8], ptr %row.i118.i, i32 0, i32 3
  %475 = getelementptr inbounds [8 x i8], ptr %row.i118.i, i32 0, i32 7
  %476 = ptrtoint ptr %i2c_intf.i113.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %i2c_intf.i113.i, align 4
  %478 = or i8 %477, 48
  %479 = ptrtoint ptr %row.i118.i to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %478, ptr %row.i118.i, align 1
  %480 = ptrtoint ptr %i2c_addr.i114.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %i2c_addr.i114.i, align 1
  %482 = ptrtoint ptr %472 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %481, ptr %472, align 1
  %483 = ptrtoint ptr %473 to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 -16, ptr %473, align 1
  %484 = ptrtoint ptr %474 to i32
  call void @__asan_storeN_noabort(i32 %484, i32 4)
  store i32 0, ptr %474, align 1
  %485 = ptrtoint ptr %475 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 16, ptr %475, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i118.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i118.i) #7
  br label %configure_sensor_output.exit

if.else19.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i121.i) #7
  %486 = getelementptr inbounds [8 x i8], ptr %row.i121.i, i32 0, i32 1
  %487 = getelementptr inbounds [8 x i8], ptr %row.i121.i, i32 0, i32 2
  %488 = getelementptr inbounds [8 x i8], ptr %row.i121.i, i32 0, i32 3
  %489 = getelementptr inbounds [8 x i8], ptr %row.i121.i, i32 0, i32 4
  %490 = getelementptr inbounds [8 x i8], ptr %row.i121.i, i32 0, i32 5
  %491 = getelementptr inbounds [8 x i8], ptr %row.i121.i, i32 0, i32 6
  %492 = getelementptr inbounds [8 x i8], ptr %row.i121.i, i32 0, i32 7
  %i2c_intf.i122.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %493 = ptrtoint ptr %i2c_intf.i122.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %i2c_intf.i122.i, align 4
  %495 = or i8 %494, 48
  %496 = ptrtoint ptr %row.i121.i to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 %495, ptr %row.i121.i, align 1
  %i2c_addr.i123.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %497 = ptrtoint ptr %i2c_addr.i123.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %i2c_addr.i123.i, align 1
  %499 = ptrtoint ptr %486 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %498, ptr %486, align 1
  %500 = ptrtoint ptr %487 to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 -16, ptr %487, align 1
  %501 = ptrtoint ptr %488 to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 0, ptr %488, align 1
  %502 = ptrtoint ptr %489 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 2, ptr %489, align 1
  %503 = ptrtoint ptr %490 to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 0, ptr %490, align 1
  %504 = ptrtoint ptr %491 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 0, ptr %491, align 1
  %505 = ptrtoint ptr %492 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 16, ptr %492, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i121.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i121.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i124.i) #7
  %506 = getelementptr inbounds [8 x i8], ptr %row.i124.i, i32 0, i32 1
  %507 = getelementptr inbounds [8 x i8], ptr %row.i124.i, i32 0, i32 2
  %508 = getelementptr inbounds [8 x i8], ptr %row.i124.i, i32 0, i32 3
  %509 = getelementptr inbounds [8 x i8], ptr %row.i124.i, i32 0, i32 4
  %510 = getelementptr inbounds [8 x i8], ptr %row.i124.i, i32 0, i32 5
  %511 = getelementptr inbounds [8 x i8], ptr %row.i124.i, i32 0, i32 6
  %512 = getelementptr inbounds [8 x i8], ptr %row.i124.i, i32 0, i32 7
  %513 = ptrtoint ptr %i2c_intf.i122.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %i2c_intf.i122.i, align 4
  %515 = or i8 %514, 48
  %516 = ptrtoint ptr %row.i124.i to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 %515, ptr %row.i124.i, align 1
  %517 = ptrtoint ptr %i2c_addr.i123.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %i2c_addr.i123.i, align 1
  %519 = ptrtoint ptr %506 to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 %518, ptr %506, align 1
  %520 = ptrtoint ptr %507 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 -56, ptr %507, align 1
  %521 = ptrtoint ptr %508 to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 -128, ptr %508, align 1
  %522 = ptrtoint ptr %509 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 0, ptr %509, align 1
  %523 = ptrtoint ptr %510 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 0, ptr %510, align 1
  %524 = ptrtoint ptr %511 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 0, ptr %511, align 1
  %525 = ptrtoint ptr %512 to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 16, ptr %512, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i124.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i124.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i127.i) #7
  %526 = getelementptr inbounds [8 x i8], ptr %row.i127.i, i32 0, i32 1
  %527 = getelementptr inbounds [8 x i8], ptr %row.i127.i, i32 0, i32 2
  %528 = getelementptr inbounds [8 x i8], ptr %row.i127.i, i32 0, i32 3
  %529 = getelementptr inbounds [8 x i8], ptr %row.i127.i, i32 0, i32 7
  %530 = ptrtoint ptr %i2c_intf.i122.i to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %i2c_intf.i122.i, align 4
  %532 = or i8 %531, 48
  %533 = ptrtoint ptr %row.i127.i to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 %532, ptr %row.i127.i, align 1
  %534 = ptrtoint ptr %i2c_addr.i123.i to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %i2c_addr.i123.i, align 1
  %536 = ptrtoint ptr %526 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %535, ptr %526, align 1
  %537 = ptrtoint ptr %527 to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 -16, ptr %527, align 1
  %538 = ptrtoint ptr %528 to i32
  call void @__asan_storeN_noabort(i32 %538, i32 4)
  store i32 0, ptr %528, align 1
  %539 = ptrtoint ptr %529 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 16, ptr %529, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i127.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i127.i) #7
  br label %configure_sensor_output.exit

configure_sensor_output.exit:                     ; preds = %if.else19.i, %if.then18.i, %if.else10.i, %if.then6.i, %if.else.i158, %if.then.i, %sw.epilog.configure_sensor_output.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %540 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %541)
  %cmp.i159 = icmp slt i32 %541, 0
  br i1 %cmp.i159, label %configure_sensor_output.exit.reg_w1.exit210_crit_edge, label %if.end.i

configure_sensor_output.exit.reg_w1.exit210_crit_edge: ; preds = %configure_sensor_output.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit210

if.end.i:                                         ; preds = %configure_sensor_output.exit
  %arrayidx33 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 7
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %542 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %544 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %usb_buf.i, align 4
  %546 = call ptr @memcpy(ptr %545, ptr %arrayidx33, i32 64)
  %547 = ptrtoint ptr %543 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %543, align 8
  %shl.i.i = shl i32 %548, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %549 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %543, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4352, i16 noundef zeroext 0, ptr noundef %549, i16 noundef zeroext 64, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call3.i)
  %cmp6.i.not = icmp eq i32 %call3.i, 64
  br i1 %cmp6.i.not, label %reg_w.exitthread-pre-split, label %do.end.i, !prof !292

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4352, i32 noundef %call3.i) #10
  %550 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exitthread-pre-split:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %551 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %.pr = load i32, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %reg_w.exitthread-pre-split, %do.end.i
  %552 = phi i32 [ %.pr, %reg_w.exitthread-pre-split ], [ %call3.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %552)
  %cmp.i161 = icmp slt i32 %552, 0
  br i1 %cmp.i161, label %reg_w.exit.reg_w.exit172thread-pre-split_crit_edge, label %if.end.i169

reg_w.exit.reg_w.exit172thread-pre-split_crit_edge: ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit172thread-pre-split

if.end.i169:                                      ; preds = %reg_w.exit
  %arrayidx35 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 72
  %553 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %dev1.i, align 4
  %555 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %usb_buf.i, align 4
  %557 = call ptr @memcpy(ptr %556, ptr %arrayidx35, i32 64)
  %558 = ptrtoint ptr %554 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %554, align 8
  %shl.i.i164 = shl i32 %559, 8
  %or.i165 = or i32 %shl.i.i164, -2147483648
  %560 = load ptr, ptr %usb_buf.i, align 4
  %call3.i166 = tail call i32 @usb_control_msg(ptr noundef %554, i32 noundef %or.i165, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4416, i16 noundef zeroext 0, ptr noundef %560, i16 noundef zeroext 64, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call3.i166)
  %cmp6.i168.not = icmp eq i32 %call3.i166, 64
  br i1 %cmp6.i168.not, label %if.end.i169.reg_w.exit172thread-pre-split_crit_edge, label %do.end.i171, !prof !292

if.end.i169.reg_w.exit172thread-pre-split_crit_edge: ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit172thread-pre-split

do.end.i171:                                      ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4416, i32 noundef %call3.i166) #10
  %561 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 %call3.i166, ptr %usb_err.i, align 8
  br label %reg_w.exit172

reg_w.exit172thread-pre-split:                    ; preds = %if.end.i169.reg_w.exit172thread-pre-split_crit_edge, %reg_w.exit.reg_w.exit172thread-pre-split_crit_edge
  %562 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %.pr243 = load i32, ptr %usb_err.i, align 8
  br label %reg_w.exit172

reg_w.exit172:                                    ; preds = %reg_w.exit172thread-pre-split, %do.end.i171
  %563 = phi i32 [ %.pr243, %reg_w.exit172thread-pre-split ], [ %call3.i166, %do.end.i171 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %563)
  %cmp.i174 = icmp slt i32 %563, 0
  br i1 %cmp.i174, label %reg_w.exit172.reg_w.exit185thread-pre-split_crit_edge, label %if.end.i182

reg_w.exit172.reg_w.exit185thread-pre-split_crit_edge: ; preds = %reg_w.exit172
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit185thread-pre-split

if.end.i182:                                      ; preds = %reg_w.exit172
  %shr42155 = lshr i32 %7, 10
  %and43 = and i32 %shr42155, 1
  %and45 = and i32 %11, 6
  %or = or i32 %and45, %and43
  %conv46 = trunc i32 %or to i8
  %564 = lshr i32 %9, 1
  %conv40 = trunc i32 %564 to i8
  %565 = lshr i32 %7, 2
  %conv36 = trunc i32 %565 to i8
  %dev1.i175 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %566 = ptrtoint ptr %dev1.i175 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %dev1.i175, align 4
  %usb_buf.i176 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %568 = ptrtoint ptr %usb_buf.i176 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %usb_buf.i176, align 4
  %570 = ptrtoint ptr %569 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 0, ptr %569, align 1
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %569, i32 1
  %571 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 %conv36, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %569, i32 2
  %572 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 1
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %569, i32 3
  %573 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %conv40, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 1
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %569, i32 4
  %574 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 %conv46, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 1
  %575 = ptrtoint ptr %567 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %567, align 8
  %shl.i.i177 = shl i32 %576, 8
  %or.i178 = or i32 %shl.i.i177, -2147483648
  %577 = load ptr, ptr %usb_buf.i176, align 4
  %call3.i179 = tail call i32 @usb_control_msg(ptr noundef %567, i32 noundef %or.i178, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4347, i16 noundef zeroext 0, ptr noundef %577, i16 noundef zeroext 5, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call3.i179)
  %cmp6.i181.not = icmp eq i32 %call3.i179, 5
  br i1 %cmp6.i181.not, label %if.end.i182.reg_w.exit185thread-pre-split_crit_edge, label %do.end.i184, !prof !292

if.end.i182.reg_w.exit185thread-pre-split_crit_edge: ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit185thread-pre-split

do.end.i184:                                      ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4347, i32 noundef %call3.i179) #10
  %578 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 %call3.i179, ptr %usb_err.i, align 8
  br label %reg_w.exit185

reg_w.exit185thread-pre-split:                    ; preds = %if.end.i182.reg_w.exit185thread-pre-split_crit_edge, %reg_w.exit172.reg_w.exit185thread-pre-split_crit_edge
  %579 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %.pr245 = load i32, ptr %usb_err.i, align 8
  br label %reg_w.exit185

reg_w.exit185:                                    ; preds = %reg_w.exit185thread-pre-split, %do.end.i184
  %580 = phi i32 [ %.pr245, %reg_w.exit185thread-pre-split ], [ %call3.i179, %do.end.i184 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %580)
  %cmp.i187 = icmp slt i32 %580, 0
  br i1 %cmp.i187, label %reg_w.exit185.reg_w1.exit210_crit_edge, label %if.end.i195

reg_w.exit185.reg_w1.exit210_crit_edge:           ; preds = %reg_w.exit185
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit210

if.end.i195:                                      ; preds = %reg_w.exit185
  %and54 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %conv61 = select i1 %tobool55.not, i8 60, i8 -128
  %conv56 = select i1 %tobool55.not, i8 40, i8 80
  %vstart = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %581 = ptrtoint ptr %vstart to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %vstart, align 1
  %hstart = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %583 = ptrtoint ptr %hstart to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %hstart, align 2
  %dev1.i188 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %585 = ptrtoint ptr %dev1.i188 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %dev1.i188, align 4
  %usb_buf.i189 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %587 = ptrtoint ptr %usb_buf.i189 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %usb_buf.i189, align 4
  %589 = ptrtoint ptr %588 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %584, ptr %588, align 1
  %.compoundliteral48.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %588, i32 1
  %590 = ptrtoint ptr %.compoundliteral48.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 0, ptr %.compoundliteral48.sroa.2.0..sroa_idx, align 1
  %.compoundliteral48.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %588, i32 2
  %591 = ptrtoint ptr %.compoundliteral48.sroa.3.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %582, ptr %.compoundliteral48.sroa.3.0..sroa_idx, align 1
  %.compoundliteral48.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %588, i32 3
  %592 = ptrtoint ptr %.compoundliteral48.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 0, ptr %.compoundliteral48.sroa.4.0..sroa_idx, align 1
  %.compoundliteral48.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %588, i32 4
  %593 = ptrtoint ptr %.compoundliteral48.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %conv56, ptr %.compoundliteral48.sroa.5.0..sroa_idx, align 1
  %.compoundliteral48.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %588, i32 5
  %594 = ptrtoint ptr %.compoundliteral48.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 %conv61, ptr %.compoundliteral48.sroa.6.0..sroa_idx, align 1
  %595 = ptrtoint ptr %586 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %586, align 8
  %shl.i.i190 = shl i32 %596, 8
  %or.i191 = or i32 %shl.i.i190, -2147483648
  %597 = load ptr, ptr %usb_buf.i189, align 4
  %call3.i192 = tail call i32 @usb_control_msg(ptr noundef %586, i32 noundef %or.i191, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4480, i16 noundef zeroext 0, ptr noundef %597, i16 noundef zeroext 6, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call3.i192)
  %cmp6.i194.not = icmp eq i32 %call3.i192, 6
  br i1 %cmp6.i194.not, label %reg_w.exit198thread-pre-split, label %do.end.i197, !prof !292

do.end.i197:                                      ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4480, i32 noundef %call3.i192) #10
  %598 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 %call3.i192, ptr %usb_err.i, align 8
  br label %reg_w.exit198

reg_w.exit198thread-pre-split:                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #9
  %599 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %.pr237 = load i32, ptr %usb_err.i, align 8
  br label %reg_w.exit198

reg_w.exit198:                                    ; preds = %reg_w.exit198thread-pre-split, %do.end.i197
  %600 = phi i32 [ %.pr237, %reg_w.exit198thread-pre-split ], [ %call3.i192, %do.end.i197 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %600)
  %cmp.i.i = icmp slt i32 %600, 0
  br i1 %cmp.i.i, label %reg_w.exit198.reg_w1.exitthread-pre-split_crit_edge, label %if.end.i.i

reg_w.exit198.reg_w1.exitthread-pre-split_crit_edge: ; preds = %reg_w.exit198
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exitthread-pre-split

if.end.i.i:                                       ; preds = %reg_w.exit198
  %601 = ptrtoint ptr %dev1.i188 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %dev1.i188, align 4
  %603 = ptrtoint ptr %usb_buf.i189 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %usb_buf.i189, align 4
  %605 = ptrtoint ptr %604 to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 %scale.0, ptr %604, align 1
  %606 = ptrtoint ptr %602 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %602, align 8
  %shl.i.i.i = shl i32 %607, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %608 = load ptr, ptr %usb_buf.i189, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %602, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4489, i16 noundef zeroext 0, ptr noundef %608, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp6.i.not.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp6.i.not.i, label %if.end.i.i.reg_w1.exitthread-pre-split_crit_edge, label %do.end.i.i, !prof !292

if.end.i.i.reg_w1.exitthread-pre-split_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exitthread-pre-split

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4489, i32 noundef %call3.i.i) #10
  %609 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %call3.i.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit

reg_w1.exitthread-pre-split:                      ; preds = %if.end.i.i.reg_w1.exitthread-pre-split_crit_edge, %reg_w.exit198.reg_w1.exitthread-pre-split_crit_edge
  %610 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %.pr239 = load i32, ptr %usb_err.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %reg_w1.exitthread-pre-split, %do.end.i.i
  %611 = phi i32 [ %.pr239, %reg_w1.exitthread-pre-split ], [ %call3.i.i, %do.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %611)
  %cmp.i.i200 = icmp slt i32 %611, 0
  br i1 %cmp.i.i200, label %reg_w1.exit.reg_w1.exit210_crit_edge, label %if.end.i.i207

reg_w1.exit.reg_w1.exit210_crit_edge:             ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit210

if.end.i.i207:                                    ; preds = %reg_w1.exit
  %612 = ptrtoint ptr %dev1.i188 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %dev1.i188, align 4
  %614 = ptrtoint ptr %usb_buf.i189 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %usb_buf.i189, align 4
  %616 = ptrtoint ptr %615 to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 %fmt.0, ptr %615, align 1
  %617 = ptrtoint ptr %613 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %613, align 8
  %shl.i.i.i203 = shl i32 %618, 8
  %or.i.i204 = or i32 %shl.i.i.i203, -2147483648
  %619 = load ptr, ptr %usb_buf.i189, align 4
  %call3.i.i205 = tail call i32 @usb_control_msg(ptr noundef %613, i32 noundef %or.i.i204, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4320, i16 noundef zeroext 0, ptr noundef %619, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i205)
  %cmp6.i.not.i206 = icmp eq i32 %call3.i.i205, 1
  br i1 %cmp6.i.not.i206, label %if.end.i.i207.reg_w1.exit210_crit_edge, label %do.end.i.i209, !prof !292

if.end.i.i207.reg_w1.exit210_crit_edge:           ; preds = %if.end.i.i207
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit210

do.end.i.i209:                                    ; preds = %if.end.i.i207
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4320, i32 noundef %call3.i.i205) #10
  %620 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %620)
  store i32 %call3.i.i205, ptr %usb_err.i, align 8
  br label %reg_w1.exit210

reg_w1.exit210:                                   ; preds = %do.end.i.i209, %if.end.i.i207.reg_w1.exit210_crit_edge, %reg_w1.exit.reg_w1.exit210_crit_edge, %reg_w.exit185.reg_w1.exit210_crit_edge, %configure_sensor_output.exit.reg_w1.exit210_crit_edge
  %621 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %622 = ptrtoint ptr %621 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %621, align 8
  %call63 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %623) #7
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %624 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %contrast, align 4
  %call64 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %625) #7
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %626 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %saturation, align 8
  %call65 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %627) #7
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %628 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %hue, align 4
  %call66 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %629) #7
  tail call fastcc void @set_cmatrix(ptr noundef %gspca_dev, i32 noundef %call63, i32 noundef %call64, i32 noundef %call65, i32 noundef %call66)
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %630 = ptrtoint ptr %gamma to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %gamma, align 8
  %call67 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %631) #7
  tail call fastcc void @set_gamma(ptr noundef %gspca_dev, i32 noundef %call67)
  %632 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %633 = ptrtoint ptr %632 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %632, align 8
  %call68 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %634) #7
  %red = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %635 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %red, align 4
  %call69 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %636) #7
  tail call fastcc void @set_redblue(ptr noundef %gspca_dev, i32 noundef %call68, i32 noundef %call69)
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 2
  %637 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %gain, align 4
  %tobool70.not = icmp eq ptr %638, null
  br i1 %tobool70.not, label %reg_w1.exit210.if.end74_crit_edge, label %if.then71

reg_w1.exit210.if.end74_crit_edge:                ; preds = %reg_w1.exit210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then71:                                        ; preds = %reg_w1.exit210
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %638) #7
  tail call fastcc void @set_gain(ptr noundef %gspca_dev, i32 noundef %call73)
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %reg_w1.exit210.if.end74_crit_edge
  %exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %639 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %exposure, align 4
  %tobool75.not = icmp eq ptr %640, null
  br i1 %tobool75.not, label %if.end74.if.end79_crit_edge, label %if.then76

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call78 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %640) #7
  tail call fastcc void @set_exposure(ptr noundef %gspca_dev, i32 noundef %call78)
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end74.if.end79_crit_edge
  %641 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %642 = ptrtoint ptr %641 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %641, align 8
  %tobool80.not = icmp eq ptr %643, null
  br i1 %tobool80.not, label %if.end79.if.end85_crit_edge, label %if.then81

if.end79.if.end85_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %643) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %644 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %vflip, align 4
  %call84 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %645) #7
  tail call fastcc void @set_hvflip(ptr noundef %gspca_dev, i32 noundef %call83, i32 noundef %call84)
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end79.if.end85_crit_edge
  %646 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %647)
  %cmp.i.i212 = icmp slt i32 %647, 0
  br i1 %cmp.i.i212, label %if.end85.reg_w1.exit234_crit_edge, label %if.end.i.i219

if.end85.reg_w1.exit234_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit234

if.end.i.i219:                                    ; preds = %if.end85
  %dev1.i.i213 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %648 = ptrtoint ptr %dev1.i.i213 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %dev1.i.i213, align 4
  %usb_buf.i.i214 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %650 = ptrtoint ptr %usb_buf.i.i214 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %usb_buf.i.i214, align 4
  %652 = ptrtoint ptr %651 to i32
  call void @__asan_store1_noabort(i32 %652)
  store i8 32, ptr %651, align 1
  %653 = ptrtoint ptr %649 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %649, align 8
  %shl.i.i.i215 = shl i32 %654, 8
  %or.i.i216 = or i32 %shl.i.i.i215, -2147483648
  %655 = load ptr, ptr %usb_buf.i.i214, align 4
  %call3.i.i217 = tail call i32 @usb_control_msg(ptr noundef %649, i32 noundef %or.i.i216, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4103, i16 noundef zeroext 0, ptr noundef %655, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i217)
  %cmp6.i.not.i218 = icmp eq i32 %call3.i.i217, 1
  br i1 %cmp6.i.not.i218, label %reg_w1.exit222thread-pre-split, label %do.end.i.i221, !prof !292

do.end.i.i221:                                    ; preds = %if.end.i.i219
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4103, i32 noundef %call3.i.i217) #10
  %656 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %656)
  store i32 %call3.i.i217, ptr %usb_err.i, align 8
  br label %reg_w1.exit222

reg_w1.exit222thread-pre-split:                   ; preds = %if.end.i.i219
  call void @__sanitizer_cov_trace_pc() #9
  %657 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %.pr241 = load i32, ptr %usb_err.i, align 8
  br label %reg_w1.exit222

reg_w1.exit222:                                   ; preds = %reg_w1.exit222thread-pre-split, %do.end.i.i221
  %658 = phi i32 [ %.pr241, %reg_w1.exit222thread-pre-split ], [ %call3.i.i217, %do.end.i.i221 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %658)
  %cmp.i.i224 = icmp slt i32 %658, 0
  br i1 %cmp.i.i224, label %reg_w1.exit222.reg_w1.exit234_crit_edge, label %if.end.i.i231

reg_w1.exit222.reg_w1.exit234_crit_edge:          ; preds = %reg_w1.exit222
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit234

if.end.i.i231:                                    ; preds = %reg_w1.exit222
  %659 = ptrtoint ptr %dev1.i.i213 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %dev1.i.i213, align 4
  %661 = ptrtoint ptr %usb_buf.i.i214 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %usb_buf.i.i214, align 4
  %663 = ptrtoint ptr %662 to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 3, ptr %662, align 1
  %664 = ptrtoint ptr %660 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %660, align 8
  %shl.i.i.i227 = shl i32 %665, 8
  %or.i.i228 = or i32 %shl.i.i.i227, -2147483648
  %666 = load ptr, ptr %usb_buf.i.i214, align 4
  %call3.i.i229 = tail call i32 @usb_control_msg(ptr noundef %660, i32 noundef %or.i.i228, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4193, i16 noundef zeroext 0, ptr noundef %666, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i229)
  %cmp6.i.not.i230 = icmp eq i32 %call3.i.i229, 1
  br i1 %cmp6.i.not.i230, label %if.end.i.i231.reg_w1.exit234_crit_edge, label %do.end.i.i233, !prof !292

if.end.i.i231.reg_w1.exit234_crit_edge:           ; preds = %if.end.i.i231
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit234

do.end.i.i233:                                    ; preds = %if.end.i.i231
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4193, i32 noundef %call3.i.i229) #10
  %667 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 %call3.i.i229, ptr %usb_err.i, align 8
  br label %reg_w1.exit234

reg_w1.exit234:                                   ; preds = %do.end.i.i233, %if.end.i.i231.reg_w1.exit234_crit_edge, %reg_w1.exit222.reg_w1.exit234_crit_edge, %if.end85.reg_w1.exit234_crit_edge
  br i1 %tobool7.not, label %reg_w1.exit234.if.end89_crit_edge, label %if.then88

reg_w1.exit234.if.end89_crit_edge:                ; preds = %reg_w1.exit234
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then88:                                        ; preds = %reg_w1.exit234
  call void @__sanitizer_cov_trace_pc() #9
  %npkt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %668 = ptrtoint ptr %npkt to i32
  call void @__asan_store2_noabort(i32 %668)
  store i16 0, ptr %npkt, align 8
  %pktsz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %669 = ptrtoint ptr %pktsz to i32
  call void @__asan_store4_noabort(i32 %669)
  store i32 0, ptr %pktsz, align 4
  %nchg = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %670 = ptrtoint ptr %nchg to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 0, ptr %nchg, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %reg_w1.exit234.if.end89_crit_edge
  %led_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %671 = ptrtoint ptr %led_mode to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %led_mode, align 4
  %tobool90.not = icmp eq ptr %672, null
  br i1 %tobool90.not, label %if.end89.if.end94_crit_edge, label %if.then91

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %672, i32 0, i32 2
  %673 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %674, i32 0, i32 1
  %675 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %676, i32 noundef 0) #7
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %672, i32 noundef 0) #7
  %677 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %678, i32 0, i32 1
  %679 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %680) #7
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end89.if.end94_crit_edge
  %681 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %usb_err.i, align 8
  ret i32 %682
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fmt, align 1
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %len)
  %cmp2 = icmp sgt i32 %len, 63
  br i1 %cmp2, label %land.lhs.true, label %entry.if.end110_crit_edge

entry.if.end110_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

land.lhs.true:                                    ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %data, ptr noundef nonnull dereferenceable(6) @sd_pkt_scan.frame_header, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp4 = icmp eq i32 %bcmp, 0
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end110_crit_edge

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr i8, ptr %data, i32 35
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %4 to i32
  %5 = lshr i32 %conv6, 2
  %and7 = and i32 %5, 3
  %arrayidx8 = getelementptr i8, ptr %data, i32 20
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv9, 2
  %arrayidx10 = getelementptr i8, ptr %data, i32 19
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %shl12 = shl nuw nsw i32 %conv11, 10
  %10 = lshr i32 %conv6, 4
  %and17 = and i32 %10, 3
  %arrayidx18 = getelementptr i8, ptr %data, i32 22
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %12 to i32
  %shl20 = shl nuw nsw i32 %conv19, 2
  %arrayidx22 = getelementptr i8, ptr %data, i32 21
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %14 to i32
  %shl24 = shl nuw nsw i32 %conv23, 10
  %15 = lshr i32 %conv6, 6
  %arrayidx30 = getelementptr i8, ptr %data, i32 24
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %17 to i32
  %shl32 = shl nuw nsw i32 %conv31, 2
  %arrayidx34 = getelementptr i8, ptr %data, i32 23
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %19 to i32
  %shl36 = shl nuw nsw i32 %conv35, 10
  %arrayidx39 = getelementptr i8, ptr %data, i32 36
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %21 to i32
  %and41 = and i32 %conv40, 3
  %arrayidx42 = getelementptr i8, ptr %data, i32 26
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %23 to i32
  %shl44 = shl nuw nsw i32 %conv43, 2
  %arrayidx46 = getelementptr i8, ptr %data, i32 25
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %25 to i32
  %shl48 = shl nuw nsw i32 %conv47, 10
  %26 = lshr i32 %conv40, 2
  %and54 = and i32 %26, 3
  %arrayidx55 = getelementptr i8, ptr %data, i32 28
  %27 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %28 to i32
  %shl57 = shl nuw nsw i32 %conv56, 2
  %arrayidx59 = getelementptr i8, ptr %data, i32 27
  %29 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %30 to i32
  %shl61 = shl nuw nsw i32 %conv60, 10
  %31 = lshr i32 %conv40, 4
  %and67 = and i32 %31, 3
  %arrayidx68 = getelementptr i8, ptr %data, i32 30
  %32 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %33 to i32
  %shl70 = shl nuw nsw i32 %conv69, 2
  %arrayidx72 = getelementptr i8, ptr %data, i32 29
  %34 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %35 to i32
  %shl74 = shl nuw nsw i32 %conv73, 10
  %36 = lshr i32 %conv40, 6
  %arrayidx81 = getelementptr i8, ptr %data, i32 32
  %37 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %38 to i32
  %shl83 = shl nuw nsw i32 %conv82, 2
  %arrayidx85 = getelementptr i8, ptr %data, i32 31
  %39 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %40 to i32
  %shl87 = shl nuw nsw i32 %conv86, 10
  %arrayidx90 = getelementptr i8, ptr %data, i32 44
  %41 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx90, align 1
  %43 = lshr i8 %42, 4
  %44 = and i8 %43, 3
  %and93 = zext i8 %44 to i32
  %arrayidx94 = getelementptr i8, ptr %data, i32 34
  %45 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %46 to i32
  %shl96 = shl nuw nsw i32 %conv95, 2
  %arrayidx98 = getelementptr i8, ptr %data, i32 33
  %47 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %48 to i32
  %shl100 = shl nuw nsw i32 %conv99, 10
  %or97 = or i32 %shl, %15
  %or84 = add nuw nsw i32 %or97, %and7
  %or71 = add nuw nsw i32 %or84, %and17
  %or58 = add nuw nsw i32 %or71, %shl12
  %or45 = add nuw nsw i32 %or58, %shl20
  %or33 = add i32 %or45, %shl24
  %or21 = add i32 %or33, %shl32
  %or = add i32 %or21, %shl36
  %or101 = add i32 %or, %and41
  %or88 = add i32 %or101, %36
  %or75 = add i32 %or88, %shl44
  %or62 = add i32 %or75, %and54
  %or49 = add i32 %or62, %and67
  %or37 = add i32 %or49, %shl48
  %or25 = add i32 %or37, %shl57
  %or13 = add i32 %or25, %shl61
  %add = add i32 %or13, %shl70
  %add38 = add i32 %add, %shl74
  %add50 = add i32 %add38, %shl83
  %add63 = add i32 %add50, %shl87
  %add76 = add i32 %add63, %and93
  %add89 = add i32 %add76, %shl96
  %add102 = add i32 %add89, %shl100
  %shr103 = ashr i32 %add102, 9
  %avg_lum104 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum104, i32 noundef 4) #7
  %49 = ptrtoint ptr %avg_lum104 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %shr103, ptr %avg_lum104, align 4
  br i1 %cmp, label %if.then105, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then105:                                       ; preds = %if.then
  %arrayidx.i = getelementptr i8, ptr %data, i32 6
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %52 = and i8 %51, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %last_packet_type.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %53 = ptrtoint ptr %last_packet_type.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %last_packet_type.i, align 4
  br label %if.then15.i

if.else.i:                                        ; preds = %if.then105
  %pktsz.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %54 = ptrtoint ptr %pktsz.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pktsz.i, align 4
  %mul.i = mul i32 %55, 100
  %npkt.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %56 = ptrtoint ptr %npkt.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %npkt.i, align 8
  %conv1.i = zext i16 %57 to i32
  %urb.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 11
  %58 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %urb.i, align 8
  %length.i = getelementptr inbounds %struct.urb, ptr %59, i32 1, i32 1
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length.i, align 4
  %mul4.i = mul i32 %61, %conv1.i
  %div.i = udiv i32 %mul.i, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %div.i)
  %cmp.i = icmp sgt i32 %div.i, 84
  br i1 %cmp.i, label %if.else.i.if.then15.i_crit_edge, label %if.end12.i

if.else.i.if.then15.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.end12.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %div.i)
  %cmp8.i = icmp slt i32 %div.i, 75
  br i1 %cmp8.i, label %if.end12.i.if.then15.i_crit_edge, label %if.else56.i

if.end12.i.if.then15.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i.if.then15.i_crit_edge, %if.else.i.if.then15.i_crit_edge, %if.then.i
  %new_qual.092.i = phi i32 [ 2, %if.end12.i.if.then15.i_crit_edge ], [ -3, %if.else.i.if.then15.i_crit_edge ], [ -5, %if.then.i ]
  %nchg.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %62 = ptrtoint ptr %nchg.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %nchg.i, align 2
  %64 = trunc i32 %new_qual.092.i to i8
  %conv17.i = add i8 %63, %64
  store i8 %conv17.i, ptr %nchg.i, align 2
  %65 = add i8 %conv17.i, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %65)
  %66 = icmp ult i8 %65, -18
  br i1 %66, label %if.then26.i, label %if.then15.i.transfer_check.exit_crit_edge

if.then15.i.transfer_check.exit_crit_edge:        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %transfer_check.exit

if.then26.i:                                      ; preds = %if.then15.i
  %jpegqual.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %67 = ptrtoint ptr %jpegqual.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %jpegqual.i, align 8
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 23
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur.i, align 8
  %71 = ptrtoint ptr %nchg.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %nchg.i, align 2
  %add28.i = add i32 %70, %new_qual.092.i
  %conv29.i = sext i32 %add28.i to i64
  %minimum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 11
  %72 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %minimum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %conv29.i)
  %cmp31.i = icmp sgt i64 %73, %conv29.i
  br i1 %cmp31.i, label %if.then33.i, label %if.else37.i

if.then33.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv36.i = trunc i64 %73 to i32
  br label %if.end47.i

if.else37.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %maximum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 12
  %74 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %maximum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %conv29.i)
  %cmp40.i = icmp slt i64 %75, %conv29.i
  %conv45.i = trunc i64 %75 to i32
  %spec.select89.i = select i1 %cmp40.i, i32 %conv45.i, i32 %add28.i
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else37.i, %if.then33.i
  %new_qual.1.i = phi i32 [ %conv36.i, %if.then33.i ], [ %spec.select89.i, %if.else37.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new_qual.1.i, i32 %70)
  %cmp48.not.i = icmp eq i32 %new_qual.1.i, %70
  br i1 %cmp48.not.i, label %if.end47.i.transfer_check.exit_crit_edge, label %if.then50.i

if.end47.i.transfer_check.exit_crit_edge:         ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %transfer_check.exit

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %new_qual.1.i, ptr %cur.i, align 8
  %work.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %77 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %77, ptr noundef %work.i) #7
  br label %transfer_check.exit

if.else56.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %nchg57.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %78 = ptrtoint ptr %nchg57.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %nchg57.i, align 2
  br label %transfer_check.exit

transfer_check.exit:                              ; preds = %if.else56.i, %if.then50.i, %if.end47.i.transfer_check.exit_crit_edge, %if.then15.i.transfer_check.exit_crit_edge
  %npkt59.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %79 = ptrtoint ptr %npkt59.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %npkt59.i, align 8
  %pktsz60.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %80 = ptrtoint ptr %pktsz60.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %pktsz60.i, align 4
  br label %if.end

if.end:                                           ; preds = %transfer_check.exit, %if.then.if.end_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  %sub = add nsw i32 %len, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp106 = icmp eq i32 %sub, 0
  br i1 %cmp106, label %if.end.cleanup_crit_edge, label %if.end109

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %data, i32 64
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %land.lhs.true.if.end110_crit_edge, %entry.if.end110_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr, %if.end109 ], [ %data, %land.lhs.true.if.end110_crit_edge ], [ %data, %entry.if.end110_crit_edge ]
  %len.addr.0 = phi i32 [ %sub, %if.end109 ], [ %len, %land.lhs.true.if.end110_crit_edge ], [ %len, %entry.if.end110_crit_edge ]
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %81 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %last_packet_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %82)
  %cmp112 = icmp eq i8 %82, 3
  br i1 %cmp112, label %if.then114, label %if.else118

if.then114:                                       ; preds = %if.end110
  br i1 %cmp, label %if.then116, label %if.then114.cleanup.sink.split_crit_edge

if.then114.cleanup.sink.split_crit_edge:          ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then116:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 22
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #7
  br label %cleanup.sink.split

if.else118:                                       ; preds = %if.end110
  br i1 %cmp, label %if.then120, label %if.else118.cleanup.sink.split_crit_edge

if.else118.cleanup.sink.split_crit_edge:          ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then120:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #9
  %npkt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %83 = ptrtoint ptr %npkt to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %npkt, align 8
  %inc = add i16 %84, 1
  store i16 %inc, ptr %npkt, align 8
  %pktsz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %85 = ptrtoint ptr %pktsz to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pktsz, align 4
  %add121 = add i32 %86, %len.addr.0
  store i32 %add121, ptr %pktsz, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then120, %if.else118.cleanup.sink.split_crit_edge, %if.then116, %if.then114.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then116 ], [ 1, %if.then114.cleanup.sink.split_crit_edge ], [ 2, %if.then120 ], [ 2, %if.else118.cleanup.sink.split_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %.sink, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_isoc_init(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %conv, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  %and = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %8 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iface, align 1
  %conv1 = zext i8 %9 to i32
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %7, i32 noundef %conv1) #7
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cmp.not = icmp eq i32 %11, 9
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %11) #10
  %12 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_altsetting, align 8
  %conv7 = trunc i32 %13 to i8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %14 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %15)
  %switch.selectcmp = icmp eq i32 %15, 320
  %switch.select = select i1 %switch.selectcmp, i8 6, i8 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %15)
  %switch.selectcmp24 = icmp eq i32 %15, 160
  %switch.select25 = select i1 %switch.selectcmp24, i8 2, i8 %switch.select
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %do.end
  %.sink = phi i8 [ %conv7, %do.end ], [ %switch.select25, %if.end ]
  %alt11 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %16 = ptrtoint ptr %alt11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %alt11, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp slt i32 %1, 0
  br i1 %cmp.i.i, label %entry.reg_w1.exit13_crit_edge, label %if.end.i.i

entry.reg_w1.exit13_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit13

if.end.i.i:                                       ; preds = %entry
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4103, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp6.i.not.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp6.i.not.i, label %reg_w1.exitthread-pre-split, label %do.end.i.i, !prof !292

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4103, i32 noundef %call3.i.i) #10
  %10 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit

reg_w1.exitthread-pre-split:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %reg_w1.exitthread-pre-split, %do.end.i.i
  %12 = phi i32 [ %.pr, %reg_w1.exitthread-pre-split ], [ %call3.i.i, %do.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i3 = icmp slt i32 %12, 0
  br i1 %cmp.i.i3, label %reg_w1.exit.reg_w1.exit13_crit_edge, label %if.end.i.i10

reg_w1.exit.reg_w1.exit13_crit_edge:              ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit13

if.end.i.i10:                                     ; preds = %reg_w1.exit
  %13 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i.i, align 4
  %15 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %16, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 8
  %shl.i.i.i6 = shl i32 %19, 8
  %or.i.i7 = or i32 %shl.i.i.i6, -2147483648
  %20 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i8 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i.i7, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4193, i16 noundef zeroext 0, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i8)
  %cmp6.i.not.i9 = icmp eq i32 %call3.i.i8, 1
  br i1 %cmp6.i.not.i9, label %if.end.i.i10.reg_w1.exit13_crit_edge, label %do.end.i.i12, !prof !292

if.end.i.i10.reg_w1.exit13_crit_edge:             ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit13

do.end.i.i12:                                     ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4193, i32 noundef %call3.i.i8) #10
  %21 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call3.i.i8, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit13

reg_w1.exit13:                                    ; preds = %do.end.i.i12, %if.end.i.i10.reg_w1.exit13_crit_edge, %reg_w1.exit.reg_w1.exit13_crit_edge, %entry.reg_w1.exit13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  %work = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #7
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_dqcallback(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %avg_lum2 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avg_lum2, i32 noundef 4) #7
  %3 = ptrtoint ptr %avg_lum2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %avg_lum2, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %5 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp4 = icmp eq i8 %6, 2
  %conv7 = trunc i32 %4 to i16
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %gain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gain.i, align 4
  %call.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %conv7)
  %cmp.i = icmp ult i16 %conv7, 80
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then6
  %conv2.i = sext i32 %call.i to i64
  %9 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gain.i, align 4
  %maximum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %maximum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv2.i)
  %cmp4.i = icmp sgt i64 %12, %conv2.i
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %call.i, 1
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %16, i32 noundef 0) #7
  %call.i.i17 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %10, i32 noundef %add.i) #7
  br label %if.end19.sink.split.i

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp2(i16 130, i16 %conv7)
  %cmp9.i = icmp ugt i16 %conv7, 130
  br i1 %cmp9.i, label %land.lhs.true11.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true11.i:                                ; preds = %if.end.i
  %conv12.i = sext i32 %call.i to i64
  %17 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gain.i, align 4
  %minimum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %minimum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv12.i)
  %cmp14.i = icmp slt i64 %20, %conv12.i
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %call.i, -1
  %handler.i.i28.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %handler.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handler.i.i28.i, align 8
  %lock.i.i29.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %lock.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock.i.i29.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %24, i32 noundef 0) #7
  %call.i30.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %18, i32 noundef %sub.i) #7
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.then16.i, %if.then.i
  %handler.i.i.sink.i = phi ptr [ %handler.i.i.i, %if.then.i ], [ %handler.i.i28.i, %if.then16.i ]
  %25 = ptrtoint ptr %handler.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handler.i.i.sink.i, align 8
  %lock.i2.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %lock.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock.i2.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %28) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %exposure.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %exposure.i, align 4
  %call.i18 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %30) #7
  %31 = ptrtoint ptr %exposure.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %exposure.i, align 4
  %maximum.i19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %maximum.i19 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %maximum.i19, align 8
  %exposure_step.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %35 = ptrtoint ptr %exposure_step.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %exposure_step.i, align 2
  %conv.i = zext i8 %36 to i64
  %sub.i20 = sub i64 %34, %conv.i
  %conv2.i21 = trunc i64 %sub.i20 to i32
  %minimum.i22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 11
  %37 = ptrtoint ptr %minimum.i22 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %minimum.i22, align 8
  %add.i23 = add i64 %38, %conv.i
  %conv6.i = trunc i64 %add.i23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %conv7)
  %cmp.i24 = icmp ult i16 %conv7, 80
  br i1 %cmp.i24, label %if.then.i26, label %if.end45.i

if.then.i26:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i18, i32 %conv2.i21)
  %cmp9.i25 = icmp sgt i32 %call.i18, %conv2.i21
  br i1 %cmp9.i25, label %if.then.i26.cleanup_crit_edge, label %if.end.i31

if.then.i26.cleanup_crit_edge:                    ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i31:                                       ; preds = %if.then.i26
  %conv13.i = zext i8 %36 to i32
  %add14.i = add i32 %call.i18, %conv13.i
  %sext139.i = shl i32 %add14.i, 16
  %conv16.i = ashr exact i32 %sext139.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %conv2.i21)
  %cmp17.i = icmp sgt i32 %conv16.i, %conv2.i21
  %spec.select.i = select i1 %cmp17.i, i32 %conv2.i21, i32 %add14.i
  %sext140.i = shl i32 %spec.select.i, 16
  %conv22.i = ashr exact i32 %sext140.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22.i, i32 %conv6.i)
  %cmp23.i = icmp slt i32 %conv22.i, %conv6.i
  %new_exp.1.in.i = select i1 %cmp23.i, i32 %conv6.i, i32 %spec.select.i
  %sext141.i = shl i32 %new_exp.1.in.i, 16
  %conv29.i = ashr exact i32 %sext141.i, 16
  %handler.i.i.i27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %handler.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handler.i.i.i27, align 8
  %lock.i.i.i28 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %lock.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lock.i.i.i28, align 4
  tail call void @mutex_lock_nested(ptr noundef %42, i32 noundef 0) #7
  %call.i.i29 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %32, i32 noundef %conv29.i) #7
  %43 = ptrtoint ptr %handler.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %handler.i.i.i27, align 8
  %lock.i2.i.i30 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %lock.i2.i.i30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lock.i2.i.i30, align 4
  tail call void @mutex_unlock(ptr noundef %46) #7
  %old_step.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %47 = ptrtoint ptr %old_step.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %old_step.i, align 8
  %older_step.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %49 = ptrtoint ptr %older_step.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %older_step.i, align 1
  store i8 1, ptr %old_step.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 1
  %50 = ptrtoint ptr %exposure_step.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %exposure_step.i, align 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %52 = lshr i8 %51, 1
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %add42.i = add i8 %51, 2
  br label %cleanup.sink.split.i

if.end45.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 131, i16 %conv7)
  %cmp47.i = icmp ult i16 %conv7, 131
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i18, i32 %conv6.i)
  %cmp50.i = icmp slt i32 %call.i18, %conv6.i
  %or.cond.i = select i1 %cmp47.i, i1 true, i1 %cmp50.i
  br i1 %or.cond.i, label %if.end45.i.cleanup_crit_edge, label %if.end53.i

if.end45.i.cleanup_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53.i:                                       ; preds = %if.end45.i
  %conv55.i = zext i8 %36 to i32
  %sub56.i = sub i32 %call.i18, %conv55.i
  %sext.i = shl i32 %sub56.i, 16
  %conv58.i = ashr exact i32 %sext.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv58.i, i32 %conv2.i21)
  %cmp59.i = icmp sgt i32 %conv58.i, %conv2.i21
  %spec.select142.i = select i1 %cmp59.i, i32 %conv2.i21, i32 %sub56.i
  %sext137.i = shl i32 %spec.select142.i, 16
  %conv64.i = ashr exact i32 %sext137.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64.i, i32 %conv6.i)
  %cmp65.i = icmp slt i32 %conv64.i, %conv6.i
  %new_exp.3.in.i = select i1 %cmp65.i, i32 %conv6.i, i32 %spec.select142.i
  %sext138.i = shl i32 %new_exp.3.in.i, 16
  %conv71.i = ashr exact i32 %sext138.i, 16
  %handler.i.i143.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 2
  %53 = ptrtoint ptr %handler.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %handler.i.i143.i, align 8
  %lock.i.i144.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %lock.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock.i.i144.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %56, i32 noundef 0) #7
  %call.i145.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %32, i32 noundef %conv71.i) #7
  %57 = ptrtoint ptr %handler.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %handler.i.i143.i, align 8
  %lock.i2.i146.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %lock.i2.i146.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lock.i2.i146.i, align 4
  tail call void @mutex_unlock(ptr noundef %60) #7
  %old_step73.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %61 = ptrtoint ptr %old_step73.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %old_step73.i, align 8
  %older_step74.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %63 = ptrtoint ptr %older_step74.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %older_step74.i, align 1
  store i8 0, ptr %old_step73.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool81.not.i = icmp eq i8 %62, 0
  %64 = ptrtoint ptr %exposure_step.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %exposure_step.i, align 2
  br i1 %tobool81.not.i, label %if.else87.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = lshr i8 %65, 1
  br label %cleanup.sink.split.i

if.else87.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  %add90.i = add i8 %65, 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else87.i, %if.then82.i, %if.else.i, %if.then36.i
  %add42.sink.i = phi i8 [ %add42.i, %if.else.i ], [ %52, %if.then36.i ], [ %add90.i, %if.else87.i ], [ %66, %if.then82.i ]
  %67 = ptrtoint ptr %exposure_step.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %add42.sink.i, ptr %exposure_step.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end45.i.cleanup_crit_edge, %if.then.i26.cleanup_crit_edge, %if.end19.sink.split.i, %land.lhs.true11.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_dbg_s_register(ptr nocapture noundef %gspca_dev, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  %row.i40 = alloca [8 x i8], align 1
  %row.i = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %reg, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %4 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %reg1, align 1
  %6 = add i64 %5, -4608
  call void @__sanitizer_cov_trace_const_cmp8(i64 -512, i64 %6)
  %7 = icmp ult i64 %6, -512
  br i1 %7, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %8 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp slt i32 %9, 0
  br i1 %cmp.i.i, label %if.end.cleanup.sink.split_crit_edge, label %if.end.i.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %if.end
  %conv = trunc i64 %5 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %val, align 1
  %conv5 = trunc i64 %11 to i8
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %14 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %15, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 8
  %shl.i.i.i = shl i32 %18, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %19 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef %19, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp6.i.not.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp6.i.not.i, label %if.end.i.i.cleanup.sink.split_crit_edge, label %do.end.i.i, !prof !292

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = trunc i64 %5 to i32
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %20, i32 noundef %call3.i.i) #10
  %21 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %22 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sensor, align 1
  %24 = add i8 %23, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %25 = icmp ult i8 %24, 6
  %reg15 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %26 = ptrtoint ptr %reg15 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %reg15, align 1
  %conv16 = trunc i64 %27 to i8
  %val17 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %28 = ptrtoint ptr %val17 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %val17, align 1
  br i1 %25, label %if.then14, label %if.else

if.then14:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i) #7
  %30 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 1
  %31 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 2
  %32 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 3
  %33 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 4
  %34 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 5
  %35 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 6
  %36 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 7
  %i2c_intf.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %37 = ptrtoint ptr %i2c_intf.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %i2c_intf.i, align 4
  %39 = or i8 %38, 48
  %40 = ptrtoint ptr %row.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %row.i, align 1
  %i2c_addr.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %41 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i2c_addr.i, align 1
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %30, align 1
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv16, ptr %31, align 1
  %45 = lshr i64 %29, 8
  %conv5.i = trunc i64 %45 to i8
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv5.i, ptr %32, align 1
  %conv7.i = trunc i64 %29 to i8
  %47 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv7.i, ptr %33, align 1
  %48 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %34, align 1
  %49 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %35, align 1
  %50 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 16, ptr %36, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i) #7
  br label %if.end23

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %conv22 = trunc i64 %29 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i40) #7
  %51 = getelementptr inbounds [8 x i8], ptr %row.i40, i32 0, i32 1
  %52 = getelementptr inbounds [8 x i8], ptr %row.i40, i32 0, i32 2
  %53 = getelementptr inbounds [8 x i8], ptr %row.i40, i32 0, i32 3
  %54 = getelementptr inbounds [8 x i8], ptr %row.i40, i32 0, i32 4
  %55 = getelementptr inbounds [8 x i8], ptr %row.i40, i32 0, i32 5
  %56 = getelementptr inbounds [8 x i8], ptr %row.i40, i32 0, i32 6
  %57 = getelementptr inbounds [8 x i8], ptr %row.i40, i32 0, i32 7
  %i2c_intf.i41 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %58 = ptrtoint ptr %i2c_intf.i41 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i2c_intf.i41, align 4
  %60 = or i8 %59, 32
  %61 = ptrtoint ptr %row.i40 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %row.i40, align 1
  %i2c_addr.i42 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %62 = ptrtoint ptr %i2c_addr.i42 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %i2c_addr.i42, align 1
  %64 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %51, align 1
  %65 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv16, ptr %52, align 1
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv22, ptr %53, align 1
  %67 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %54, align 1
  %68 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %55, align 1
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %56, align 1
  %70 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 16, ptr %57, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i40) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i40) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then14
  %usb_err24 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end23, %do.end.i.i, %if.end.i.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %usb_err24.sink = phi ptr [ %usb_err24, %if.end23 ], [ %usb_err.i.i, %if.end.cleanup.sink.split_crit_edge ], [ %usb_err.i.i, %if.end.i.i.cleanup.sink.split_crit_edge ], [ %usb_err.i.i, %do.end.i.i ]
  %71 = ptrtoint ptr %usb_err24.sink to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %usb_err24.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %72, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_dbg_g_register(ptr nocapture noundef %gspca_dev, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 1, ptr %size, align 1
  %1 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %1, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %reg1, align 1
  %7 = add i64 %6, -4608
  call void @__sanitizer_cov_trace_const_cmp8(i64 -512, i64 %7)
  %8 = icmp ult i64 %7, -512
  br i1 %8, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp slt i32 %10, 0
  br i1 %cmp.i, label %if.end.reg_r.exit_crit_edge, label %if.end.i

if.end.reg_r.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

if.end.i:                                         ; preds = %if.end
  %conv = trunc i64 %6 to i16
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %15 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef %16, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp5.i.not = icmp eq i32 %call3.i, 1
  br i1 %cmp5.i.not, label %if.end.i.reg_r.exit_crit_edge, label %do.end.i, !prof !292

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = trunc i64 %6 to i32
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %17, i32 noundef %call3.i) #10
  %18 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %19 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i, align 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge, %if.end.reg_r.exit_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %22 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv5 = zext i8 %25 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %26 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %conv5, ptr %val, align 1
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %27 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sensor, align 1
  %29 = add i8 %28, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %30 = icmp ult i8 %29, 6
  %reg15 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %31 = ptrtoint ptr %reg15 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %reg15, align 1
  %conv16 = trunc i64 %32 to i8
  %val17 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  br i1 %30, label %if.then14, label %if.else

if.then14:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @i2c_r2(ptr noundef %gspca_dev, i8 noundef zeroext %conv16, ptr noundef %val17)
  %33 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 2, ptr %size, align 1
  br label %if.end22

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @i2c_r1(ptr noundef %gspca_dev, i8 noundef zeroext %conv16, ptr noundef %val17)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14
  %usb_err23 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end22, %reg_r.exit
  %usb_err23.sink = phi ptr [ %usb_err23, %if.end22 ], [ %usb_err.i, %reg_r.exit ]
  %34 = ptrtoint ptr %usb_err23.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usb_err23.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %35, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_chip_info(ptr nocapture noundef readnone %gspca_dev, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_dbg_chip_info, ptr %chip, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.117, i32 noundef 32) #7
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_int_pkt_scan(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readnone %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 23
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp eq i32 %len, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %3 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 212, i32 noundef 1) #7
  %5 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %7 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 212, i32 noundef 0) #7
  %9 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qual_upd(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jpegqual = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jpegqual, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %1) #7
  %usb_lock = getelementptr i8, ptr %work, i32 -172
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr i8, ptr %work, i32 -1248
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %call) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -2664
  %usb_err = getelementptr i8, ptr %work, i32 -80
  %3 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %usb_err, align 8
  tail call fastcc void @set_quality(ptr noundef %add.ptr, i32 noundef %call)
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_quality(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.i = icmp slt i32 %val, 1
  br i1 %cmp.i, label %entry.if.end4.i_crit_edge, label %if.else.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %val)
  %cmp1.i = icmp ult i32 %val, 50
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %div31.rhs.trunc.i = trunc i32 %val to i16
  %div3132.i = udiv i16 5000, %div31.rhs.trunc.i
  %div31.zext.i = zext i16 %div3132.i to i32
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.neg.i = mul i32 %val, -2
  %sub.i = add i32 %mul.neg.i, 200
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i, %entry.if.end4.i_crit_edge
  %sc.0.i = phi i32 [ %div31.zext.i, %if.then2.i ], [ %sub.i, %if.else3.i ], [ 5000, %entry.if.end4.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i
  %i.033.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.033.i, 7
  %arrayidx.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %1 to i32
  %mul6.i = mul i32 %sc.0.i, %conv.i
  %add7.i = add i32 %mul6.i, 50
  %div8.i = sdiv i32 %add7.i, 100
  %conv9.i = trunc i32 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %2 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.033.i, 72
  %arrayidx13.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %3 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %4 to i32
  %mul15.i = mul i32 %sc.0.i, %conv14.i
  %add16.i = add i32 %mul15.i, 50
  %div17.i = sdiv i32 %add16.i, 100
  %conv18.i = trunc i32 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %5 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %6 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp slt i32 %7, 0
  br i1 %cmp.i.i, label %reg_w.exit.thread, label %if.end.i.i

reg_w.exit.thread:                                ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #9
  %fmt85 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  br label %reg_w.exit48thread-pre-split

if.end.i.i:                                       ; preds = %jpeg_set_qual.exit
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %10 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %11, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %15 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4193, i16 noundef zeroext 0, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp6.i.not.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp6.i.not.i, label %reg_w1.exitthread-pre-split, label %do.end.i.i, !prof !292

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4193, i32 noundef %call3.i.i) #10
  %16 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit

reg_w1.exitthread-pre-split:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %reg_w1.exitthread-pre-split, %do.end.i.i
  %18 = phi i32 [ %.pr, %reg_w1.exitthread-pre-split ], [ %call3.i.i, %do.end.i.i ]
  %fmt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i24 = icmp slt i32 %18, 0
  br i1 %cmp.i.i24, label %reg_w1.exit.reg_w1.exit34thread-pre-split_crit_edge, label %if.end.i.i31

reg_w1.exit.reg_w1.exit34thread-pre-split_crit_edge: ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit34thread-pre-split

if.end.i.i31:                                     ; preds = %reg_w1.exit
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fmt, align 1
  %21 = or i8 %20, 32
  %22 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i.i, align 4
  %24 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %21, ptr %25, align 1
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %23, align 8
  %shl.i.i.i27 = shl i32 %28, 8
  %or.i.i28 = or i32 %shl.i.i.i27, -2147483648
  %29 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i29 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i.i28, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4320, i16 noundef zeroext 0, ptr noundef %29, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i29)
  %cmp6.i.not.i30 = icmp eq i32 %call3.i.i29, 1
  br i1 %cmp6.i.not.i30, label %if.end.i.i31.reg_w1.exit34thread-pre-split_crit_edge, label %do.end.i.i33, !prof !292

if.end.i.i31.reg_w1.exit34thread-pre-split_crit_edge: ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit34thread-pre-split

do.end.i.i33:                                     ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4320, i32 noundef %call3.i.i29) #10
  %30 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call3.i.i29, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit34

reg_w1.exit34thread-pre-split:                    ; preds = %if.end.i.i31.reg_w1.exit34thread-pre-split_crit_edge, %reg_w1.exit.reg_w1.exit34thread-pre-split_crit_edge
  %31 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr88 = load i32, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit34

reg_w1.exit34:                                    ; preds = %reg_w1.exit34thread-pre-split, %do.end.i.i33
  %32 = phi i32 [ %.pr88, %reg_w1.exit34thread-pre-split ], [ %call3.i.i29, %do.end.i.i33 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i35 = icmp slt i32 %32, 0
  br i1 %cmp.i35, label %reg_w1.exit34.reg_w.exitthread-pre-split_crit_edge, label %if.end.i

reg_w1.exit34.reg_w.exitthread-pre-split_crit_edge: ; preds = %reg_w1.exit34
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exitthread-pre-split

if.end.i:                                         ; preds = %reg_w1.exit34
  %arrayidx = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 7
  %33 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i.i, align 4
  %35 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_buf.i.i, align 4
  %37 = call ptr @memcpy(ptr %36, ptr %arrayidx, i32 64)
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %34, align 8
  %shl.i.i = shl i32 %39, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %40 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4352, i16 noundef zeroext 0, ptr noundef %40, i16 noundef zeroext 64, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call3.i)
  %cmp6.i.not = icmp eq i32 %call3.i, 64
  br i1 %cmp6.i.not, label %if.end.i.reg_w.exitthread-pre-split_crit_edge, label %do.end.i, !prof !292

if.end.i.reg_w.exitthread-pre-split_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exitthread-pre-split

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4352, i32 noundef %call3.i) #10
  %41 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call3.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit

reg_w.exitthread-pre-split:                       ; preds = %if.end.i.reg_w.exitthread-pre-split_crit_edge, %reg_w1.exit34.reg_w.exitthread-pre-split_crit_edge
  %42 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr93 = load i32, ptr %usb_err.i.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %reg_w.exitthread-pre-split, %do.end.i
  %43 = phi i32 [ %.pr93, %reg_w.exitthread-pre-split ], [ %call3.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i37 = icmp slt i32 %43, 0
  br i1 %cmp.i37, label %reg_w.exit.reg_w.exit48thread-pre-split_crit_edge, label %if.end.i45

reg_w.exit.reg_w.exit48thread-pre-split_crit_edge: ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48thread-pre-split

if.end.i45:                                       ; preds = %reg_w.exit
  %arrayidx4 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 22, i32 72
  %44 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i.i, align 4
  %46 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i.i, align 4
  %48 = call ptr @memcpy(ptr %47, ptr %arrayidx4, i32 64)
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %45, align 8
  %shl.i.i40 = shl i32 %50, 8
  %or.i41 = or i32 %shl.i.i40, -2147483648
  %51 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i42 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i41, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4416, i16 noundef zeroext 0, ptr noundef %51, i16 noundef zeroext 64, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call3.i42)
  %cmp6.i44.not = icmp eq i32 %call3.i42, 64
  br i1 %cmp6.i44.not, label %if.end.i45.reg_w.exit48thread-pre-split_crit_edge, label %do.end.i47, !prof !292

if.end.i45.reg_w.exit48thread-pre-split_crit_edge: ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit48thread-pre-split

do.end.i47:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4416, i32 noundef %call3.i42) #10
  %52 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call3.i42, ptr %usb_err.i.i, align 8
  br label %reg_w.exit48

reg_w.exit48thread-pre-split:                     ; preds = %if.end.i45.reg_w.exit48thread-pre-split_crit_edge, %reg_w.exit.reg_w.exit48thread-pre-split_crit_edge, %reg_w.exit.thread
  %fmt879297.ph = phi ptr [ %fmt, %if.end.i45.reg_w.exit48thread-pre-split_crit_edge ], [ %fmt, %reg_w.exit.reg_w.exit48thread-pre-split_crit_edge ], [ %fmt85, %reg_w.exit.thread ]
  %53 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr98 = load i32, ptr %usb_err.i.i, align 8
  br label %reg_w.exit48

reg_w.exit48:                                     ; preds = %reg_w.exit48thread-pre-split, %do.end.i47
  %54 = phi i32 [ %.pr98, %reg_w.exit48thread-pre-split ], [ %call3.i42, %do.end.i47 ]
  %fmt879297 = phi ptr [ %fmt879297.ph, %reg_w.exit48thread-pre-split ], [ %fmt, %do.end.i47 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.i50 = icmp slt i32 %54, 0
  br i1 %cmp.i.i50, label %reg_w.exit48.reg_w1.exit60thread-pre-split_crit_edge, label %if.end.i.i57

reg_w.exit48.reg_w1.exit60thread-pre-split_crit_edge: ; preds = %reg_w.exit48
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit60thread-pre-split

if.end.i.i57:                                     ; preds = %reg_w.exit48
  %dev1.i.i51 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %55 = ptrtoint ptr %dev1.i.i51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1.i.i51, align 4
  %usb_buf.i.i52 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %57 = ptrtoint ptr %usb_buf.i.i52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_buf.i.i52, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %58, align 1
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %56, align 8
  %shl.i.i.i53 = shl i32 %61, 8
  %or.i.i54 = or i32 %shl.i.i.i53, -2147483648
  %62 = load ptr, ptr %usb_buf.i.i52, align 4
  %call3.i.i55 = tail call i32 @usb_control_msg(ptr noundef %56, i32 noundef %or.i.i54, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4193, i16 noundef zeroext 0, ptr noundef %62, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i55)
  %cmp6.i.not.i56 = icmp eq i32 %call3.i.i55, 1
  br i1 %cmp6.i.not.i56, label %if.end.i.i57.reg_w1.exit60thread-pre-split_crit_edge, label %do.end.i.i59, !prof !292

if.end.i.i57.reg_w1.exit60thread-pre-split_crit_edge: ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit60thread-pre-split

do.end.i.i59:                                     ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4193, i32 noundef %call3.i.i55) #10
  %63 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call3.i.i55, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit60

reg_w1.exit60thread-pre-split:                    ; preds = %if.end.i.i57.reg_w1.exit60thread-pre-split_crit_edge, %reg_w.exit48.reg_w1.exit60thread-pre-split_crit_edge
  %64 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr99 = load i32, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit60

reg_w1.exit60:                                    ; preds = %reg_w1.exit60thread-pre-split, %do.end.i.i59
  %65 = phi i32 [ %.pr99, %reg_w1.exit60thread-pre-split ], [ %call3.i.i55, %do.end.i.i59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i62 = icmp slt i32 %65, 0
  br i1 %cmp.i.i62, label %reg_w1.exit60.reg_w1.exit72_crit_edge, label %if.end.i.i69

reg_w1.exit60.reg_w1.exit72_crit_edge:            ; preds = %reg_w1.exit60
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit72

if.end.i.i69:                                     ; preds = %reg_w1.exit60
  %66 = ptrtoint ptr %fmt879297 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %fmt879297, align 1
  %dev1.i.i63 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %68 = ptrtoint ptr %dev1.i.i63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1.i.i63, align 4
  %usb_buf.i.i64 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %70 = ptrtoint ptr %usb_buf.i.i64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usb_buf.i.i64, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %67, ptr %71, align 1
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %69, align 8
  %shl.i.i.i65 = shl i32 %74, 8
  %or.i.i66 = or i32 %shl.i.i.i65, -2147483648
  %75 = load ptr, ptr %usb_buf.i.i64, align 4
  %call3.i.i67 = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or.i.i66, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4320, i16 noundef zeroext 0, ptr noundef %75, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i67)
  %cmp6.i.not.i68 = icmp eq i32 %call3.i.i67, 1
  br i1 %cmp6.i.not.i68, label %if.end.i.i69.reg_w1.exit72_crit_edge, label %do.end.i.i71, !prof !292

if.end.i.i69.reg_w1.exit72_crit_edge:             ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit72

do.end.i.i71:                                     ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4320, i32 noundef %call3.i.i67) #10
  %76 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call3.i.i67, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit72

reg_w1.exit72:                                    ; preds = %do.end.i.i71, %if.end.i.i69.reg_w1.exit72_crit_edge, %reg_w1.exit60.reg_w1.exit72_crit_edge
  %77 = ptrtoint ptr %fmt879297 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fmt879297, align 1
  %79 = xor i8 %78, 12
  store i8 %79, ptr %fmt879297, align 1
  %80 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.i74 = icmp slt i32 %81, 0
  br i1 %cmp.i.i74, label %reg_w1.exit72.reg_w1.exit84_crit_edge, label %if.end.i.i81

reg_w1.exit72.reg_w1.exit84_crit_edge:            ; preds = %reg_w1.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit84

if.end.i.i81:                                     ; preds = %reg_w1.exit72
  %dev1.i.i75 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %82 = ptrtoint ptr %dev1.i.i75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1.i.i75, align 4
  %usb_buf.i.i76 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %84 = ptrtoint ptr %usb_buf.i.i76 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf.i.i76, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %79, ptr %85, align 1
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %83, align 8
  %shl.i.i.i77 = shl i32 %88, 8
  %or.i.i78 = or i32 %shl.i.i.i77, -2147483648
  %89 = load ptr, ptr %usb_buf.i.i76, align 4
  %call3.i.i79 = tail call i32 @usb_control_msg(ptr noundef %83, i32 noundef %or.i.i78, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4320, i16 noundef zeroext 0, ptr noundef %89, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i79)
  %cmp6.i.not.i80 = icmp eq i32 %call3.i.i79, 1
  br i1 %cmp6.i.not.i80, label %if.end.i.i81.reg_w1.exit84_crit_edge, label %do.end.i.i83, !prof !292

if.end.i.i81.reg_w1.exit84_crit_edge:             ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit84

do.end.i.i83:                                     ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4320, i32 noundef %call3.i.i79) #10
  %90 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call3.i.i79, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit84

reg_w1.exit84:                                    ; preds = %do.end.i.i83, %if.end.i.i81.reg_w1.exit84_crit_edge, %reg_w1.exit72.reg_w1.exit84_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_r2(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %row = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row) #7
  %0 = getelementptr inbounds [8 x i8], ptr %row, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %row, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %row, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %row, i32 0, i32 7
  %i2c_intf = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %4 = ptrtoint ptr %i2c_intf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_intf, align 4
  %6 = or i8 %5, 16
  %7 = ptrtoint ptr %row to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %row, align 1
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %8 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %3, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row)
  %14 = ptrtoint ptr %i2c_intf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_intf, align 4
  %16 = or i8 %15, 34
  %17 = ptrtoint ptr %row to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %row, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %1, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row)
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp slt i32 %20, 0
  br i1 %cmp.i, label %entry.reg_r.exit_crit_edge, label %if.end.i

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %24, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 4290, i16 noundef zeroext 0, ptr noundef %26, i16 noundef zeroext 5, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call3.i)
  %cmp5.i.not = icmp eq i32 %call3.i, 5
  br i1 %cmp5.i.not, label %if.end.i.reg_r.exit_crit_edge, label %do.end.i, !prof !292

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 4290, i32 noundef %call3.i) #10
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge, %entry.reg_r.exit_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %31 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf, align 4
  %arrayidx17 = getelementptr i8, ptr %32, i32 3
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %34 to i16
  %shl = shl nuw i16 %conv18, 8
  %arrayidx20 = getelementptr i8, ptr %32, i32 4
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %36 to i16
  %or22 = or i16 %shl, %conv21
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %or22, ptr %val, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_w(ptr nocapture noundef %gspca_dev, ptr nocapture noundef readonly %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit_crit_edge, label %if.end.i

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %buffer, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %5, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4288, i16 noundef zeroext 0, ptr noundef %11, i16 noundef zeroext 8, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3.i)
  %cmp6.i.not = icmp eq i32 %call3.i, 8
  br i1 %cmp6.i.not, label %if.end.i.reg_w.exit_crit_edge, label %do.end.i, !prof !292

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4288, i32 noundef %call3.i) #10
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  %dev1.i28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %reg_w.exit
  %i.036 = phi i32 [ 0, %reg_w.exit ], [ %inc, %if.end11.for.body_crit_edge ]
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i27 = icmp slt i32 %14, 0
  br i1 %cmp.i27, label %for.body.cleanup_crit_edge, label %if.end.i33

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i33:                                       ; preds = %for.body
  %15 = ptrtoint ptr %dev1.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i28, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i29 = shl i32 %18, 8
  %or2.i = or i32 %shl.i.i29, -2147483520
  %19 = ptrtoint ptr %usb_buf.i30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i30, align 4
  %call3.i31 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 4288, i16 noundef zeroext 0, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i31)
  %cmp5.i.not = icmp eq i32 %call3.i31, 1
  br i1 %cmp5.i.not, label %if.end.i33.reg_r.exit_crit_edge, label %do.end.i34, !prof !292

if.end.i33.reg_r.exit_crit_edge:                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

do.end.i34:                                       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 4288, i32 noundef %call3.i31) #10
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call3.i31, ptr %usb_err.i, align 8
  %22 = ptrtoint ptr %usb_buf.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i30, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i34, %if.end.i33.reg_r.exit_crit_edge
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp1 = icmp slt i32 %.pr, 0
  br i1 %cmp1, label %reg_r.exit.cleanup_crit_edge, label %if.end

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %reg_r.exit
  %26 = ptrtoint ptr %usb_buf.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i30, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %31 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool7.not = icmp eq i8 %31, 0
  br i1 %tobool7.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #10
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -5, ptr %usb_err.i, align 8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 10) #7
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end14, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx16 = getelementptr i8, ptr %buffer, i32 2
  %33 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %34 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %conv17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end, %if.then2.cleanup_crit_edge, %reg_r.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

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
  %4 = load i8, ptr %streaming, align 2, !range !294
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963792, label %sw.bb4
    i32 9963791, label %sw.bb6
    i32 9963796, label %sw.bb9
    i32 9963793, label %sw.bb12
    i32 9963795, label %sw.bb14
    i32 9963794, label %sw.bb16
    i32 10291459, label %sw.bb22
    i32 10225921, label %sw.bb24
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = getelementptr i8, ptr %1, i32 1024
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %contrast = getelementptr i8, ptr %1, i32 1028
  %13 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %contrast, align 4
  %val1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val1, align 4
  %saturation = getelementptr i8, ptr %1, i32 1032
  %17 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %saturation, align 8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val2, align 4
  %hue = getelementptr i8, ptr %1, i32 1036
  %21 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hue, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val3, align 4
  tail call fastcc void @set_cmatrix(ptr noundef %add.ptr, i32 noundef %12, i32 noundef %16, i32 noundef %20, i32 noundef %24)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val5, align 4
  tail call fastcc void @set_gamma(ptr noundef %add.ptr, i32 noundef %26)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = getelementptr i8, ptr %1, i32 1040
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val7, align 4
  %red = getelementptr i8, ptr %1, i32 1044
  %32 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %red, align 4
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val8, align 4
  tail call fastcc void @set_redblue(ptr noundef %add.ptr, i32 noundef %31, i32 noundef %35)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = getelementptr i8, ptr %1, i32 1048
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val10, align 4
  %vflip = getelementptr i8, ptr %1, i32 1052
  %41 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vflip, align 4
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %42, i32 0, i32 22
  %43 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val11, align 4
  tail call fastcc void @set_hvflip(ptr noundef %add.ptr, i32 noundef %40, i32 noundef %44)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %45 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val13, align 4
  tail call fastcc void @set_exposure(ptr noundef %add.ptr, i32 noundef %46)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val15, align 4
  tail call fastcc void @set_gain(ptr noundef %add.ptr, i32 noundef %48)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %sensor = getelementptr i8, ptr %1, i32 1141
  %49 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp = icmp eq i8 %50, 2
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %gain = getelementptr i8, ptr %1, i32 1068
  %51 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gain, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 22
  %53 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val19, align 4
  tail call fastcc void @set_gain(ptr noundef %add.ptr, i32 noundef %54)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %exposure = getelementptr i8, ptr %1, i32 1064
  %55 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %exposure, align 4
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val20, align 4
  tail call fastcc void @set_exposure(ptr noundef %add.ptr, i32 noundef %58)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %59 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val23, align 4
  tail call fastcc void @set_quality(ptr noundef %add.ptr, i32 noundef %60)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %61 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val25, align 4
  %63 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i.i.i = icmp slt i32 %64, 0
  br i1 %cmp.i.i.i, label %sw.bb24.sw.epilog_crit_edge, label %if.end.i.i.i

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i.i:                                     ; preds = %sw.bb24
  %dev1.i.i.i = getelementptr i8, ptr %1, i32 -100
  %65 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1.i.i.i, align 4
  %usb_buf.i.i.i = getelementptr i8, ptr %1, i32 204
  %67 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_buf.i.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 96, ptr %68, align 1
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %66, align 8
  %shl.i.i.i.i = shl i32 %71, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %72 = load ptr, ptr %usb_buf.i.i.i, align 4
  %call3.i.i.i = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or.i.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4103, i16 noundef zeroext 0, ptr noundef %72, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i.i)
  %cmp6.i.not.i.i = icmp eq i32 %call3.i.i.i, 1
  br i1 %cmp6.i.not.i.i, label %reg_w1.exitthread-pre-split.i, label %do.end.i.i.i, !prof !292

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4103, i32 noundef %call3.i.i.i) #10
  %73 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call3.i.i.i, ptr %usb_err, align 8
  br label %reg_w1.exit.i

reg_w1.exitthread-pre-split.i:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr.i = load i32, ptr %usb_err, align 8
  br label %reg_w1.exit.i

reg_w1.exit.i:                                    ; preds = %reg_w1.exitthread-pre-split.i, %do.end.i.i.i
  %75 = phi i32 [ %.pr.i, %reg_w1.exitthread-pre-split.i ], [ %call3.i.i.i, %do.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i3.i = icmp slt i32 %75, 0
  br i1 %cmp.i.i3.i, label %reg_w1.exit.i.sw.epilog_crit_edge, label %if.end.i.i10.i

reg_w1.exit.i.sw.epilog_crit_edge:                ; preds = %reg_w1.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i10.i:                                   ; preds = %reg_w1.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  %conv.i = select i1 %tobool.not.i, i8 0, i8 64
  %76 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1.i.i.i, align 4
  %78 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf.i.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv.i, ptr %79, align 1
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %77, align 8
  %shl.i.i.i6.i = shl i32 %82, 8
  %or.i.i7.i = or i32 %shl.i.i.i6.i, -2147483648
  %83 = load ptr, ptr %usb_buf.i.i.i, align 4
  %call3.i.i8.i = tail call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or.i.i7.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4102, i16 noundef zeroext 0, ptr noundef %83, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i8.i)
  %cmp6.i.not.i9.i = icmp eq i32 %call3.i.i8.i, 1
  br i1 %cmp6.i.not.i9.i, label %if.end.i.i10.i.sw.epilog_crit_edge, label %do.end.i.i12.i, !prof !292

if.end.i.i10.i.sw.epilog_crit_edge:               ; preds = %if.end.i.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i.i12.i:                                   ; preds = %if.end.i.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4102, i32 noundef %call3.i.i8.i) #10
  %84 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call3.i.i8.i, ptr %usb_err, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i.i12.i, %if.end.i.i10.i.sw.epilog_crit_edge, %reg_w1.exit.i.sw.epilog_crit_edge, %sw.bb24.sw.epilog_crit_edge, %sw.bb22, %if.else, %if.then18, %sw.bb14, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %85 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %86, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_cmatrix(ptr nocapture noundef %gspca_dev, i32 noundef %brightness, i32 noundef %contrast, i32 noundef %satur, i32 noundef %hue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit_crit_edge, label %if.end.i

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i:                                         ; preds = %entry
  %add = add i32 %hue, 180
  %arrayidx68 = getelementptr [361 x i16], ptr @hsv_blue_y, i32 0, i32 %add
  %2 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx68, align 2
  %conv69 = sext i16 %3 to i32
  %mul70 = mul i32 %conv69, %satur
  %4 = lshr i32 %mul70, 16
  %5 = trunc i32 %4 to i8
  %conv76 = and i8 %5, 15
  %6 = lshr i32 %mul70, 8
  %conv72 = trunc i32 %6 to i8
  %arrayidx58 = getelementptr [361 x i16], ptr @hsv_blue_x, i32 0, i32 %add
  %7 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx58, align 2
  %conv59 = sext i16 %8 to i32
  %mul60 = mul i32 %conv59, %satur
  %9 = lshr i32 %mul60, 16
  %10 = trunc i32 %9 to i8
  %conv66 = and i8 %10, 15
  %11 = lshr i32 %mul60, 8
  %conv62 = trunc i32 %11 to i8
  %arrayidx48 = getelementptr [361 x i16], ptr @hsv_green_y, i32 0, i32 %add
  %12 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx48, align 2
  %conv49 = sext i16 %13 to i32
  %mul50 = mul i32 %conv49, %satur
  %14 = lshr i32 %mul50, 16
  %15 = trunc i32 %14 to i8
  %conv56 = and i8 %15, 15
  %16 = lshr i32 %mul50, 8
  %conv52 = trunc i32 %16 to i8
  %arrayidx38 = getelementptr [361 x i16], ptr @hsv_green_x, i32 0, i32 %add
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx38, align 2
  %conv39 = sext i16 %18 to i32
  %mul40 = mul i32 %conv39, %satur
  %19 = lshr i32 %mul40, 16
  %20 = trunc i32 %19 to i8
  %conv46 = and i8 %20, 15
  %21 = lshr i32 %mul40, 8
  %conv42 = trunc i32 %21 to i8
  %arrayidx28 = getelementptr [361 x i16], ptr @hsv_red_y, i32 0, i32 %add
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx28, align 2
  %conv29 = sext i16 %23 to i32
  %mul30 = mul i32 %conv29, %satur
  %24 = lshr i32 %mul30, 16
  %25 = trunc i32 %24 to i8
  %conv36 = and i8 %25, 15
  %26 = lshr i32 %mul30, 8
  %conv32 = trunc i32 %26 to i8
  %arrayidx20 = getelementptr [361 x i16], ptr @hsv_red_x, i32 0, i32 %add
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx20, align 2
  %conv21 = sext i16 %28 to i32
  %mul22 = mul i32 %conv21, %satur
  %29 = lshr i32 %mul22, 16
  %30 = trunc i32 %29 to i8
  %conv26 = and i8 %30, 15
  %31 = lshr i32 %mul22, 8
  %conv23 = trunc i32 %31 to i8
  %32 = trunc i32 %brightness to i8
  %conv18 = xor i8 %32, -128
  %mul = mul i32 %contrast, 37
  %div = sdiv i32 %mul, 256
  %33 = trunc i32 %div to i8
  %conv = add i8 %33, 38
  %conv3 = zext i8 %conv to i16
  %34 = mul nuw nsw i16 %conv3, 7
  %mul12 = add nsw i16 %34, -266
  %div13102 = sdiv i16 %mul12, 37
  %35 = trunc i16 %div13102 to i8
  %conv15 = add nsw i8 %35, 7
  %36 = mul nuw nsw i16 %conv3, 19
  %div5.lhs.trunc = add nsw i16 %36, -722
  %div5101 = sdiv i16 %div5.lhs.trunc, 37
  %37 = trunc i16 %div5101 to i8
  %conv7 = add i8 %37, 19
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %40 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_buf.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv7, ptr %41, align 1
  %cmatrix.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 1
  %43 = ptrtoint ptr %cmatrix.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %cmatrix.sroa.6.0..sroa_idx, align 1
  %cmatrix.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 2
  %44 = ptrtoint ptr %cmatrix.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv, ptr %cmatrix.sroa.7.0..sroa_idx, align 1
  %cmatrix.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 3
  %45 = ptrtoint ptr %cmatrix.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %cmatrix.sroa.10.0..sroa_idx, align 1
  %cmatrix.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 4
  %46 = ptrtoint ptr %cmatrix.sroa.11.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv15, ptr %cmatrix.sroa.11.0..sroa_idx, align 1
  %cmatrix.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 5
  %47 = ptrtoint ptr %cmatrix.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %cmatrix.sroa.13.0..sroa_idx, align 1
  %cmatrix.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 6
  %48 = ptrtoint ptr %cmatrix.sroa.14.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv23, ptr %cmatrix.sroa.14.0..sroa_idx, align 1
  %cmatrix.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 7
  %49 = ptrtoint ptr %cmatrix.sroa.16.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv26, ptr %cmatrix.sroa.16.0..sroa_idx, align 1
  %cmatrix.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 8
  %50 = ptrtoint ptr %cmatrix.sroa.18.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv32, ptr %cmatrix.sroa.18.0..sroa_idx, align 1
  %cmatrix.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 9
  %51 = ptrtoint ptr %cmatrix.sroa.20.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv36, ptr %cmatrix.sroa.20.0..sroa_idx, align 1
  %cmatrix.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 10
  %52 = ptrtoint ptr %cmatrix.sroa.22.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv42, ptr %cmatrix.sroa.22.0..sroa_idx, align 1
  %cmatrix.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 11
  %53 = ptrtoint ptr %cmatrix.sroa.24.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv46, ptr %cmatrix.sroa.24.0..sroa_idx, align 1
  %cmatrix.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 12
  %54 = ptrtoint ptr %cmatrix.sroa.26.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv52, ptr %cmatrix.sroa.26.0..sroa_idx, align 1
  %cmatrix.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 13
  %55 = ptrtoint ptr %cmatrix.sroa.28.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv56, ptr %cmatrix.sroa.28.0..sroa_idx, align 1
  %cmatrix.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 14
  %56 = ptrtoint ptr %cmatrix.sroa.30.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv62, ptr %cmatrix.sroa.30.0..sroa_idx, align 1
  %cmatrix.sroa.32.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 15
  %57 = ptrtoint ptr %cmatrix.sroa.32.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv66, ptr %cmatrix.sroa.32.0..sroa_idx, align 1
  %cmatrix.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 16
  %58 = ptrtoint ptr %cmatrix.sroa.34.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv72, ptr %cmatrix.sroa.34.0..sroa_idx, align 1
  %cmatrix.sroa.36.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 17
  %59 = ptrtoint ptr %cmatrix.sroa.36.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv76, ptr %cmatrix.sroa.36.0..sroa_idx, align 1
  %cmatrix.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 18
  %60 = ptrtoint ptr %cmatrix.sroa.38.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv18, ptr %cmatrix.sroa.38.0..sroa_idx, align 1
  %cmatrix.sroa.40.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 19
  %61 = ptrtoint ptr %cmatrix.sroa.40.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %cmatrix.sroa.40.0..sroa_idx, align 1
  %cmatrix.sroa.41.0..sroa_idx = getelementptr inbounds i8, ptr %41, i32 20
  %62 = ptrtoint ptr %cmatrix.sroa.41.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %cmatrix.sroa.41.0..sroa_idx, align 1
  %63 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %39, align 8
  %shl.i.i = shl i32 %64, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %65 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4321, i16 noundef zeroext 0, ptr noundef %65, i16 noundef zeroext 21, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call3.i)
  %cmp6.i.not = icmp eq i32 %call3.i, 21
  br i1 %cmp6.i.not, label %if.end.i.reg_w.exit_crit_edge, label %do.end.i, !prof !292

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4321, i32 noundef %call3.i) #10
  %66 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_gamma(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit_crit_edge, label %if.end.i

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i:                                         ; preds = %entry
  %mul = mul i32 %val, 184
  %div = sdiv i32 %mul, 256
  %2 = trunc i32 %div to i16
  %3 = and i16 %2, 255
  %div86.lhs.trunc = mul nuw nsw i16 %3, 15
  %div86118 = udiv i16 %div86.lhs.trunc, 184
  %4 = trunc i16 %div86118 to i8
  %conv88 = add nuw nsw i8 %4, -22
  %div80.lhs.trunc = mul nuw nsw i16 %3, 30
  %div80117 = udiv i16 %div80.lhs.trunc, 184
  %5 = trunc i16 %div80117 to i8
  %conv82 = add nsw i8 %5, -33
  %div74.lhs.trunc = mul nuw nsw i16 %3, 45
  %div74116 = udiv i16 %div74.lhs.trunc, 184
  %6 = trunc i16 %div74116 to i8
  %conv76 = add nsw i8 %6, -50
  %div68.lhs.trunc = mul nuw nsw i16 %3, 60
  %div68115 = udiv i16 %div68.lhs.trunc, 184
  %7 = trunc i16 %div68115 to i8
  %conv70 = add nsw i8 %7, -65
  %div62.lhs.trunc = mul nuw nsw i16 %3, 76
  %div62114 = udiv i16 %div62.lhs.trunc, 184
  %8 = trunc i16 %div62114 to i8
  %conv64 = add nsw i8 %8, -80
  %div56.lhs.trunc = mul nuw nsw i16 %3, 91
  %div56113 = udiv i16 %div56.lhs.trunc, 184
  %9 = trunc i16 %div56113 to i8
  %conv58 = add nsw i8 %9, -95
  %div50.lhs.trunc = mul nuw nsw i16 %3, 106
  %div50112 = udiv i16 %div50.lhs.trunc, 184
  %10 = trunc i16 %div50112 to i8
  %conv52 = add i8 %10, -110
  %div44.lhs.trunc = mul nuw nsw i16 %3, 123
  %div44111 = udiv i16 %div44.lhs.trunc, 184
  %11 = trunc i16 %div44111 to i8
  %conv46 = add i8 %11, -125
  %div38.lhs.trunc = mul nuw i16 %3, 137
  %div38110 = udiv i16 %div38.lhs.trunc, 184
  %12 = trunc i16 %div38110 to i8
  %conv40 = add i8 %12, 116
  %div32.lhs.trunc = mul nuw i16 %3, 151
  %div32109 = udiv i16 %div32.lhs.trunc, 184
  %13 = trunc i16 %div32109 to i8
  %conv34 = add i8 %13, 101
  %div26.lhs.trunc = mul nuw i16 %3, 166
  %div26108 = udiv i16 %div26.lhs.trunc, 184
  %14 = trunc i16 %div26108 to i8
  %conv28 = add i8 %14, 85
  %div20.lhs.trunc = mul nuw i16 %3, 183
  %div20107 = udiv i16 %div20.lhs.trunc, 184
  %15 = trunc i16 %div20107 to i8
  %conv22 = add i8 %15, 69
  %div14.lhs.trunc = mul nuw i16 %3, 195
  %div14106 = udiv i16 %div14.lhs.trunc, 184
  %16 = trunc i16 %div14106 to i8
  %conv16 = add i8 %16, 55
  %div8.lhs.trunc = mul nuw i16 %3, 201
  %div8105 = udiv i16 %div8.lhs.trunc, 184
  %17 = trunc i16 %div8105 to i8
  %conv10 = add i8 %17, 37
  %18 = trunc i32 %div to i8
  %conv4 = add i8 %18, 19
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 10, ptr %22, align 1
  %gamma.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 1
  %24 = ptrtoint ptr %gamma.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv4, ptr %gamma.sroa.5.0..sroa_idx, align 1
  %gamma.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 2
  %25 = ptrtoint ptr %gamma.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10, ptr %gamma.sroa.7.0..sroa_idx, align 1
  %gamma.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 3
  %26 = ptrtoint ptr %gamma.sroa.9.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv16, ptr %gamma.sroa.9.0..sroa_idx, align 1
  %gamma.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 4
  %27 = ptrtoint ptr %gamma.sroa.11.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv22, ptr %gamma.sroa.11.0..sroa_idx, align 1
  %gamma.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 5
  %28 = ptrtoint ptr %gamma.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv28, ptr %gamma.sroa.13.0..sroa_idx, align 1
  %gamma.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 6
  %29 = ptrtoint ptr %gamma.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv34, ptr %gamma.sroa.15.0..sroa_idx, align 1
  %gamma.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 7
  %30 = ptrtoint ptr %gamma.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv40, ptr %gamma.sroa.17.0..sroa_idx, align 1
  %gamma.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 8
  %31 = ptrtoint ptr %gamma.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv46, ptr %gamma.sroa.19.0..sroa_idx, align 1
  %gamma.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 9
  %32 = ptrtoint ptr %gamma.sroa.21.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv52, ptr %gamma.sroa.21.0..sroa_idx, align 1
  %gamma.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 10
  %33 = ptrtoint ptr %gamma.sroa.23.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv58, ptr %gamma.sroa.23.0..sroa_idx, align 1
  %gamma.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 11
  %34 = ptrtoint ptr %gamma.sroa.25.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv64, ptr %gamma.sroa.25.0..sroa_idx, align 1
  %gamma.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 12
  %35 = ptrtoint ptr %gamma.sroa.27.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv70, ptr %gamma.sroa.27.0..sroa_idx, align 1
  %gamma.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 13
  %36 = ptrtoint ptr %gamma.sroa.29.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv76, ptr %gamma.sroa.29.0..sroa_idx, align 1
  %gamma.sroa.31.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 14
  %37 = ptrtoint ptr %gamma.sroa.31.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv82, ptr %gamma.sroa.31.0..sroa_idx, align 1
  %gamma.sroa.33.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 15
  %38 = ptrtoint ptr %gamma.sroa.33.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv88, ptr %gamma.sroa.33.0..sroa_idx, align 1
  %gamma.sroa.35.0..sroa_idx = getelementptr inbounds i8, ptr %22, i32 16
  %39 = ptrtoint ptr %gamma.sroa.35.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -11, ptr %gamma.sroa.35.0..sroa_idx, align 1
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %20, align 8
  %shl.i.i = shl i32 %41, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %42 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4496, i16 noundef zeroext 0, ptr noundef %42, i16 noundef zeroext 17, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call3.i)
  %cmp6.i.not = icmp eq i32 %call3.i, 17
  br i1 %cmp6.i.not, label %if.end.i.reg_w.exit_crit_edge, label %do.end.i, !prof !292

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4496, i32 noundef %call3.i) #10
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_redblue(ptr nocapture noundef %gspca_dev, i32 noundef %blue, i32 noundef %red) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp slt i32 %1, 0
  br i1 %cmp.i.i, label %entry.reg_w1.exit14_crit_edge, label %if.end.i.i

entry.reg_w1.exit14_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit14

if.end.i.i:                                       ; preds = %entry
  %conv = trunc i32 %red to i8
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %5, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4492, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp6.i.not.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp6.i.not.i, label %reg_w1.exitthread-pre-split, label %do.end.i.i, !prof !292

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4492, i32 noundef %call3.i.i) #10
  %10 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit

reg_w1.exitthread-pre-split:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %reg_w1.exitthread-pre-split, %do.end.i.i
  %12 = phi i32 [ %.pr, %reg_w1.exitthread-pre-split ], [ %call3.i.i, %do.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i4 = icmp slt i32 %12, 0
  br i1 %cmp.i.i4, label %reg_w1.exit.reg_w1.exit14_crit_edge, label %if.end.i.i11

reg_w1.exit.reg_w1.exit14_crit_edge:              ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit14

if.end.i.i11:                                     ; preds = %reg_w1.exit
  %conv1 = trunc i32 %blue to i8
  %13 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i.i, align 4
  %15 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1, ptr %16, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 8
  %shl.i.i.i7 = shl i32 %19, 8
  %or.i.i8 = or i32 %shl.i.i.i7, -2147483648
  %20 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i9 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i.i8, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4495, i16 noundef zeroext 0, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i9)
  %cmp6.i.not.i10 = icmp eq i32 %call3.i.i9, 1
  br i1 %cmp6.i.not.i10, label %if.end.i.i11.reg_w1.exit14_crit_edge, label %do.end.i.i13, !prof !292

if.end.i.i11.reg_w1.exit14_crit_edge:             ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit14

do.end.i.i13:                                     ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4495, i32 noundef %call3.i.i9) #10
  %21 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call3.i.i9, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit14

reg_w1.exit14:                                    ; preds = %do.end.i.i13, %if.end.i.i11.reg_w1.exit14_crit_edge, %reg_w1.exit.reg_w1.exit14_crit_edge, %entry.reg_w1.exit14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_hvflip(ptr noundef %gspca_dev, i32 noundef %hflip, i32 noundef %vflip) unnamed_addr #2 align 64 {
entry:
  %row.i131 = alloca [8 x i8], align 1
  %row.i126 = alloca [8 x i8], align 1
  %row.i123 = alloca [8 x i8], align 1
  %row.i120 = alloca [8 x i8], align 1
  %row.i117 = alloca [8 x i8], align 1
  %row.i = alloca [8 x i8], align 1
  %value = alloca i8, align 1
  %value2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !293
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value2) #7
  %1 = ptrtoint ptr %value2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %value2, align 2, !annotation !293
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sensor, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb
    i8 0, label %sw.bb20
    i8 6, label %entry.sw.bb36_crit_edge
    i8 5, label %entry.sw.bb36_crit_edge144
    i8 10, label %entry.sw.bb52_crit_edge
    i8 9, label %entry.sw.bb52_crit_edge145
    i8 7, label %entry.sw.bb52_crit_edge146
    i8 11, label %sw.bb68
  ]

entry.sw.bb52_crit_edge146:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

entry.sw.bb52_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

entry.sw.bb52_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

entry.sw.bb36_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hflip)
  %tobool7.not = icmp eq i32 %hflip, 0
  %spec.select = select i1 %tobool7.not, i8 1, i8 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vflip)
  %tobool12.not = icmp eq i32 %vflip, 0
  %5 = or i8 %spec.select, 16
  %spec.select142 = select i1 %tobool12.not, i8 %spec.select, i8 %5
  %spec.select143 = select i1 %tobool12.not, i8 3, i8 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select142, ptr %value, align 1
  %7 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select143, ptr %7, align 1
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %9 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp slt i32 %10, 0
  br i1 %cmp.i.i, label %sw.bb.reg_w1.exit_crit_edge, label %if.end.i.i

sw.bb.reg_w1.exit_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit

if.end.i.i:                                       ; preds = %sw.bb
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %7, align 1
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %13 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %15 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %12, ptr %16, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %20 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 4482, i16 noundef zeroext 0, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp6.i.not.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp6.i.not.i, label %if.end.i.i.reg_w1.exit_crit_edge, label %do.end.i.i, !prof !292

if.end.i.i.reg_w1.exit_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w1.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4482, i32 noundef %call3.i.i) #10
  %21 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %do.end.i.i, %if.end.i.i.reg_w1.exit_crit_edge, %sw.bb.reg_w1.exit_crit_edge
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i) #7
  %24 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 1
  %25 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 2
  %26 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 3
  %27 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 4
  %28 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 5
  %29 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 6
  %30 = getelementptr inbounds [8 x i8], ptr %row.i, i32 0, i32 7
  %i2c_intf.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %31 = ptrtoint ptr %i2c_intf.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %i2c_intf.i, align 4
  %33 = or i8 %32, 32
  %34 = ptrtoint ptr %row.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %row.i, align 1
  %i2c_addr.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %35 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_addr.i, align 1
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %24, align 1
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 30, ptr %25, align 1
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %23, ptr %26, align 1
  %40 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %27, align 1
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %28, align 1
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %29, align 1
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 16, ptr %30, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i) #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @i2c_r1(ptr noundef %gspca_dev, i8 noundef zeroext 30, ptr noundef nonnull %value)
  %44 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %value, align 1
  %46 = and i8 %45, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hflip)
  %tobool24.not = icmp eq i32 %hflip, 0
  %47 = or i8 %46, 32
  %spec.select113 = select i1 %tobool24.not, i8 %46, i8 %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vflip)
  %tobool30.not = icmp eq i32 %vflip, 0
  %48 = or i8 %spec.select113, 16
  %spec.select137 = select i1 %tobool30.not, i8 %spec.select113, i8 %48
  %spec.select138 = select i1 %tobool30.not, i8 1, i8 73
  %49 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.select137, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i117) #7
  %50 = getelementptr inbounds [8 x i8], ptr %row.i117, i32 0, i32 1
  %51 = getelementptr inbounds [8 x i8], ptr %row.i117, i32 0, i32 2
  %52 = getelementptr inbounds [8 x i8], ptr %row.i117, i32 0, i32 3
  %53 = getelementptr inbounds [8 x i8], ptr %row.i117, i32 0, i32 4
  %54 = getelementptr inbounds [8 x i8], ptr %row.i117, i32 0, i32 5
  %55 = getelementptr inbounds [8 x i8], ptr %row.i117, i32 0, i32 6
  %56 = getelementptr inbounds [8 x i8], ptr %row.i117, i32 0, i32 7
  %i2c_intf.i118 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %57 = ptrtoint ptr %i2c_intf.i118 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i2c_intf.i118, align 4
  %59 = or i8 %58, 32
  %60 = ptrtoint ptr %row.i117 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %row.i117, align 1
  %i2c_addr.i119 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %61 = ptrtoint ptr %i2c_addr.i119 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %i2c_addr.i119, align 1
  %63 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %50, align 1
  %64 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 30, ptr %51, align 1
  %65 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %spec.select137, ptr %52, align 1
  %66 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %53, align 1
  %67 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %54, align 1
  %68 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %55, align 1
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 16, ptr %56, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i117) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i117) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i120) #7
  %70 = getelementptr inbounds [8 x i8], ptr %row.i120, i32 0, i32 1
  %71 = getelementptr inbounds [8 x i8], ptr %row.i120, i32 0, i32 2
  %72 = getelementptr inbounds [8 x i8], ptr %row.i120, i32 0, i32 3
  %73 = getelementptr inbounds [8 x i8], ptr %row.i120, i32 0, i32 4
  %74 = getelementptr inbounds [8 x i8], ptr %row.i120, i32 0, i32 5
  %75 = getelementptr inbounds [8 x i8], ptr %row.i120, i32 0, i32 6
  %76 = getelementptr inbounds [8 x i8], ptr %row.i120, i32 0, i32 7
  %77 = ptrtoint ptr %i2c_intf.i118 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %i2c_intf.i118, align 4
  %79 = or i8 %78, 32
  %80 = ptrtoint ptr %row.i120 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %row.i120, align 1
  %81 = ptrtoint ptr %i2c_addr.i119 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %i2c_addr.i119, align 1
  %83 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %70, align 1
  %84 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 58, ptr %71, align 1
  %85 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %spec.select138, ptr %72, align 1
  %86 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %73, align 1
  %87 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %74, align 1
  %88 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %75, align 1
  %89 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 16, ptr %76, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i120) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i120) #7
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry.sw.bb36_crit_edge, %entry.sw.bb36_crit_edge144
  call fastcc void @i2c_r2(ptr noundef %gspca_dev, i8 noundef zeroext 32, ptr noundef nonnull %value2)
  %90 = ptrtoint ptr %value2 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %value2, align 2
  %92 = and i16 %91, 16223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hflip)
  %tobool40.not = icmp eq i32 %hflip, 0
  %93 = or i16 %92, -32640
  %spec.select114 = select i1 %tobool40.not, i16 %92, i16 %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vflip)
  %tobool46.not = icmp eq i32 %vflip, 0
  %94 = or i16 %spec.select114, 16416
  %spec.select139 = select i1 %tobool46.not, i16 %spec.select114, i16 %94
  %95 = ptrtoint ptr %value2 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %spec.select139, ptr %value2, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i123) #7
  %96 = getelementptr inbounds [8 x i8], ptr %row.i123, i32 0, i32 1
  %97 = getelementptr inbounds [8 x i8], ptr %row.i123, i32 0, i32 2
  %98 = getelementptr inbounds [8 x i8], ptr %row.i123, i32 0, i32 3
  %99 = getelementptr inbounds [8 x i8], ptr %row.i123, i32 0, i32 4
  %100 = getelementptr inbounds [8 x i8], ptr %row.i123, i32 0, i32 5
  %101 = getelementptr inbounds [8 x i8], ptr %row.i123, i32 0, i32 6
  %102 = getelementptr inbounds [8 x i8], ptr %row.i123, i32 0, i32 7
  %i2c_intf.i124 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %103 = ptrtoint ptr %i2c_intf.i124 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %i2c_intf.i124, align 4
  %105 = or i8 %104, 48
  %106 = ptrtoint ptr %row.i123 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %row.i123, align 1
  %i2c_addr.i125 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %107 = ptrtoint ptr %i2c_addr.i125 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %i2c_addr.i125, align 1
  %109 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %96, align 1
  %110 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 32, ptr %97, align 1
  %111 = lshr i16 %spec.select139, 8
  %conv5.i = trunc i16 %111 to i8
  %112 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv5.i, ptr %98, align 1
  %conv7.i = trunc i16 %spec.select139 to i8
  %113 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv7.i, ptr %99, align 1
  %114 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %100, align 1
  %115 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %101, align 1
  %116 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 16, ptr %102, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i123) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i123) #7
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry.sw.bb52_crit_edge, %entry.sw.bb52_crit_edge145, %entry.sw.bb52_crit_edge146
  call fastcc void @i2c_r2(ptr noundef %gspca_dev, i8 noundef zeroext 32, ptr noundef nonnull %value2)
  %117 = ptrtoint ptr %value2 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %value2, align 2
  %119 = and i16 %118, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hflip)
  %tobool56.not = icmp eq i32 %hflip, 0
  %120 = or i16 %119, 2
  %spec.select115 = select i1 %tobool56.not, i16 %119, i16 %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vflip)
  %tobool62.not = icmp ne i32 %vflip, 0
  %121 = zext i1 %tobool62.not to i16
  %spec.select140 = or i16 %spec.select115, %121
  %122 = ptrtoint ptr %value2 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %spec.select140, ptr %value2, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i126) #7
  %123 = getelementptr inbounds [8 x i8], ptr %row.i126, i32 0, i32 1
  %124 = getelementptr inbounds [8 x i8], ptr %row.i126, i32 0, i32 2
  %125 = getelementptr inbounds [8 x i8], ptr %row.i126, i32 0, i32 3
  %126 = getelementptr inbounds [8 x i8], ptr %row.i126, i32 0, i32 4
  %127 = getelementptr inbounds [8 x i8], ptr %row.i126, i32 0, i32 5
  %128 = getelementptr inbounds [8 x i8], ptr %row.i126, i32 0, i32 6
  %129 = getelementptr inbounds [8 x i8], ptr %row.i126, i32 0, i32 7
  %i2c_intf.i127 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %130 = ptrtoint ptr %i2c_intf.i127 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %i2c_intf.i127, align 4
  %132 = or i8 %131, 48
  %133 = ptrtoint ptr %row.i126 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %row.i126, align 1
  %i2c_addr.i128 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %134 = ptrtoint ptr %i2c_addr.i128 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %i2c_addr.i128, align 1
  %136 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %123, align 1
  %137 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 32, ptr %124, align 1
  %138 = lshr i16 %spec.select115, 8
  %conv5.i129 = trunc i16 %138 to i8
  %139 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv5.i129, ptr %125, align 1
  %conv7.i130 = trunc i16 %spec.select140 to i8
  %140 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv7.i130, ptr %126, align 1
  %141 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %127, align 1
  %142 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %128, align 1
  %143 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 16, ptr %129, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i126) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i126) #7
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @i2c_r1(ptr noundef %gspca_dev, i8 noundef zeroext 1, ptr noundef nonnull %value)
  %144 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %value, align 1
  %146 = and i8 %145, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vflip)
  %tobool72.not = icmp ne i32 %vflip, 0
  %147 = zext i1 %tobool72.not to i8
  %spec.select116 = or i8 %146, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hflip)
  %tobool78.not = icmp eq i32 %hflip, 0
  %148 = or i8 %spec.select116, 2
  %spec.select141 = select i1 %tobool78.not, i8 %spec.select116, i8 %148
  %149 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %spec.select141, ptr %value, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row.i131) #7
  %150 = getelementptr inbounds [8 x i8], ptr %row.i131, i32 0, i32 1
  %151 = getelementptr inbounds [8 x i8], ptr %row.i131, i32 0, i32 2
  %152 = getelementptr inbounds [8 x i8], ptr %row.i131, i32 0, i32 3
  %153 = getelementptr inbounds [8 x i8], ptr %row.i131, i32 0, i32 4
  %154 = getelementptr inbounds [8 x i8], ptr %row.i131, i32 0, i32 5
  %155 = getelementptr inbounds [8 x i8], ptr %row.i131, i32 0, i32 6
  %156 = getelementptr inbounds [8 x i8], ptr %row.i131, i32 0, i32 7
  %i2c_intf.i132 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %157 = ptrtoint ptr %i2c_intf.i132 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %i2c_intf.i132, align 4
  %159 = or i8 %158, 32
  %160 = ptrtoint ptr %row.i131 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %row.i131, align 1
  %i2c_addr.i133 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %161 = ptrtoint ptr %i2c_addr.i133 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %i2c_addr.i133, align 1
  %163 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %150, align 1
  %164 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %151, align 1
  %165 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %spec.select141, ptr %152, align 1
  %166 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %153, align 1
  %167 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %154, align 1
  %168 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %155, align 1
  %169 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 16, ptr %156, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row.i131) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row.i131) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb68, %sw.bb52, %sw.bb36, %sw.bb20, %reg_w1.exit, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_exposure(ptr nocapture noundef %gspca_dev, i32 noundef %expo) unnamed_addr #2 align 64 {
entry:
  %exp = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exp) #7
  %0 = getelementptr inbounds [8 x i8], ptr %exp, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %exp, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %exp, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %exp, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %exp, i32 0, i32 7
  %i2c_intf = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %5 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %exp, align 1
  %6 = ptrtoint ptr %i2c_intf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_intf, align 4
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %8 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %0, align 1
  %11 = call ptr @memset(ptr %1, i32 0, i32 5)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %4, align 1
  %streaming = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 17
  %13 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %streaming, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %spec.store.select = select i1 %tobool.not, i8 16, i8 30
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.store.select, ptr %4, align 1
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sensor, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %17, label %entry.cleanup_crit_edge [
    i8 3, label %entry.sw.bb_crit_edge
    i8 4, label %entry.sw.bb_crit_edge75
    i8 1, label %entry.sw.bb_crit_edge76
    i8 0, label %entry.sw.bb_crit_edge77
    i8 8, label %entry.sw.bb33_crit_edge
    i8 7, label %entry.sw.bb33_crit_edge78
    i8 5, label %entry.sw.bb33_crit_edge79
    i8 11, label %sw.bb44
  ]

entry.sw.bb33_crit_edge79:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

entry.sw.bb33_crit_edge78:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

entry.sw.bb33_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

entry.sw.bb_crit_edge77:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge76:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge75:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge75, %entry.sw.bb_crit_edge76, %entry.sw.bb_crit_edge77
  %19 = tail call i32 @llvm.smin.i32(i32 %expo, i32 547)
  %20 = or i8 %7, 32
  %21 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %exp, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 16, ptr %1, align 1
  %23 = lshr i32 %19, 2
  %conv14 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv14, ptr %2, align 1
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %4, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %exp)
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %1, align 1
  %27 = trunc i32 %19 to i8
  %conv18 = and i8 %27, 3
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv18, ptr %2, align 1
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %4, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %exp)
  %sub = sub i32 %expo, %19
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 30, ptr %4, align 1
  %31 = or i8 %7, 48
  %32 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %exp, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 45, ptr %1, align 1
  %conv28 = trunc i32 %sub to i8
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv28, ptr %2, align 1
  %35 = lshr i32 %sub, 8
  %conv31 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv31, ptr %3, align 1
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry.sw.bb33_crit_edge, %entry.sw.bb33_crit_edge78, %entry.sw.bb33_crit_edge79
  %37 = or i8 %7, 48
  %38 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %exp, align 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 9, ptr %1, align 1
  %40 = lshr i32 %expo, 8
  %conv40 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv40, ptr %2, align 1
  %conv42 = trunc i32 %expo to i8
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv42, ptr %3, align 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %43 = getelementptr inbounds [8 x i8], ptr %exp, i32 0, i32 5
  %44 = or i8 %7, 64
  %45 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %exp, align 1
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 37, ptr %1, align 1
  %47 = lshr i32 %expo, 5
  %conv51 = trunc i32 %47 to i8
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv51, ptr %2, align 1
  %expo.tr = trunc i32 %expo to i8
  %conv53 = shl i8 %expo.tr, 3
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv53, ptr %3, align 1
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %43, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb33, %sw.bb
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %exp)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_gain(ptr nocapture noundef %gspca_dev, i32 noundef %g) unnamed_addr #2 align 64 {
entry:
  %gain = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gain) #7
  %0 = getelementptr inbounds [8 x i8], ptr %gain, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %gain, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %gain, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %gain, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %gain, i32 0, i32 7
  %i2c_intf = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %5 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %gain, align 1
  %6 = ptrtoint ptr %i2c_intf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_intf, align 4
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %8 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %0, align 1
  %11 = call ptr @memset(ptr %1, i32 0, i32 5)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %4, align 1
  %streaming = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 17
  %13 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %streaming, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %spec.store.select = select i1 %tobool.not, i8 16, i8 21
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.store.select, ptr %4, align 1
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sensor, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %17, label %entry.cleanup_crit_edge [
    i8 3, label %entry.sw.bb_crit_edge
    i8 4, label %entry.sw.bb_crit_edge73
    i8 2, label %entry.sw.bb_crit_edge74
    i8 1, label %entry.sw.bb_crit_edge75
    i8 0, label %entry.sw.bb_crit_edge76
    i8 5, label %sw.bb12
    i8 7, label %sw.bb25
    i8 8, label %sw.bb39
    i8 11, label %sw.bb53
  ]

entry.sw.bb_crit_edge76:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge75:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge74:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge73:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge73, %entry.sw.bb_crit_edge74, %entry.sw.bb_crit_edge75, %entry.sw.bb_crit_edge76
  %19 = or i8 %7, 32
  %20 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %gain, align 1
  %arrayidx10 = getelementptr [29 x i8], ptr @ov_gain, i32 0, i32 %g
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10, align 1
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %2, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = or i8 %7, 48
  %25 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %gain, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 53, ptr %1, align 1
  %arrayidx18 = getelementptr [29 x i16], ptr @micron1_gain, i32 0, i32 %g
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx18, align 2
  %29 = lshr i16 %28, 8
  %conv20 = trunc i16 %29 to i8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv20, ptr %2, align 1
  %conv23 = trunc i16 %28 to i8
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv23, ptr %3, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %32 = or i8 %7, 48
  %33 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %gain, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 47, ptr %1, align 1
  %arrayidx31 = getelementptr [29 x i16], ptr @micron1_gain, i32 0, i32 %g
  %35 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx31, align 2
  %37 = lshr i16 %36, 8
  %conv34 = trunc i16 %37 to i8
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv34, ptr %2, align 1
  %conv37 = trunc i16 %36 to i8
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv37, ptr %3, align 1
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %40 = or i8 %7, 48
  %41 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %gain, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 47, ptr %1, align 1
  %arrayidx45 = getelementptr [29 x i16], ptr @micron2_gain, i32 0, i32 %g
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx45, align 2
  %45 = lshr i16 %44, 8
  %conv48 = trunc i16 %45 to i8
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv48, ptr %2, align 1
  %conv51 = trunc i16 %44 to i8
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv51, ptr %3, align 1
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %48 = or i8 %7, 32
  %49 = ptrtoint ptr %gain to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %gain, align 1
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 48, ptr %1, align 1
  %arrayidx59 = getelementptr [29 x i8], ptr @hv7131r_gain, i32 0, i32 %g
  %51 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx59, align 1
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %2, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb39, %sw.bb25, %sw.bb12, %sw.bb
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %gain)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gain) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_r1(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %row = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %row) #7
  %0 = getelementptr inbounds [8 x i8], ptr %row, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %row, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %row, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %row, i32 0, i32 7
  %i2c_intf = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %4 = ptrtoint ptr %i2c_intf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_intf, align 4
  %6 = or i8 %5, 16
  %7 = ptrtoint ptr %row to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %row, align 1
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %8 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %3, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row)
  %14 = ptrtoint ptr %i2c_intf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_intf, align 4
  %16 = or i8 %15, 18
  %17 = ptrtoint ptr %row to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %row, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %1, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, ptr noundef nonnull %row)
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp slt i32 %20, 0
  br i1 %cmp.i, label %entry.reg_r.exit_crit_edge, label %if.end.i

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %24, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 4290, i16 noundef zeroext 0, ptr noundef %26, i16 noundef zeroext 5, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call3.i)
  %cmp5.i.not = icmp eq i32 %call3.i, 5
  br i1 %cmp5.i.not, label %if.end.i.reg_r.exit_crit_edge, label %do.end.i, !prof !292

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef 4290, i32 noundef %call3.i) #10
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge, %entry.reg_r.exit_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %31 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf, align 4
  %arrayidx17 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx17, align 1
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %row) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !124, !126, !128, !129, !130, !131, !133, !135, !136, !137, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !171, !173, !174, !175, !176, !178, !180, !181, !182, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !206, !207, !208, !209, !211, !213, !214, !216, !217, !218, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !276, !277, !278, !279, !281}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_sn9c20x__307_2409_sd_driver_init6, !8, !"__initcall__kmod_gspca_sn9c20x__307_2409_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2409, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sd_driver, !12, !"sd_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2397, i32 26}
!13 = !{ptr @sd_desc, !14, !"sd_desc", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2320, i32 29}
!15 = !{ptr @sd_config.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1660, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sxga_mode, !19, !"sxga_mode", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 215, i32 37}
!20 = !{ptr @mono_mode, !21, !"mono_mode", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 268, i32 37}
!22 = !{ptr @vga_mode, !23, !"vga_mode", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 167, i32 37}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2179, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @qual_upd._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @qual_upd._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @jpeg_head, !31, !"jpeg_head", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 948, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @reg_w._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @reg_w._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1813, i32 4}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sd_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sd_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sd_init._entry.9, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1825, i32 3}
!44 = !{ptr @sd_init._entry_ptr.10, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1834, i32 3}
!47 = !{ptr @sd_init._entry.11, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sd_init._entry_ptr.13, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1840, i32 3}
!51 = !{ptr @sd_init._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sd_init._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1846, i32 3}
!55 = !{ptr @sd_init._entry.17, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sd_init._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1852, i32 3}
!59 = !{ptr @sd_init._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sd_init._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1858, i32 3}
!63 = !{ptr @sd_init._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sd_init._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1864, i32 3}
!67 = !{ptr @sd_init._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sd_init._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1870, i32 3}
!71 = !{ptr @sd_init._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sd_init._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1876, i32 3}
!75 = !{ptr @sd_init._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sd_init._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1887, i32 3}
!79 = !{ptr @sd_init._entry.35, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sd_init._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1890, i32 3}
!83 = !{ptr @sd_init._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @sd_init._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @bridge_init, !86, !"bridge_init", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 579, i32 18}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1092, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ov9650_init_sensor._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ov9650_init_sensor._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1101, i32 3}
!94 = !{ptr @ov9650_init_sensor._entry.43, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ov9650_init_sensor._entry_ptr.45, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 969, i32 5}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @i2c_w._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @i2c_w._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 976, i32 2}
!103 = !{ptr @i2c_w._entry.48, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @i2c_w._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 920, i32 3}
!107 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @reg_r._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @reg_r._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ov9650_init, !111, !"ov9650_init", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 750, i32 32}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1114, i32 3}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ov9655_init_sensor._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @ov9655_init_sensor._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @ov9655_init, !118, !"ov9655_init", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 780, i32 32}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1128, i32 3}
!121 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @soi968_init_sensor._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @soi968_init_sensor._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @soi968_init, !125, !"soi968_init", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 667, i32 32}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1142, i32 3}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ov7660_init_sensor._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ov7660_init_sensor._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @ov7660_init, !132, !"ov7660_init", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 681, i32 32}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1155, i32 3}
!135 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ov7670_init_sensor._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @ov7670_init_sensor._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @ov7670_init, !139, !"ov7670_init", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 693, i32 32}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1172, i32 4}
!142 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mt9v_init_sensor._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @mt9v_init_sensor._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1178, i32 3}
!147 = !{ptr @mt9v_init_sensor._entry.63, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @mt9v_init_sensor._entry_ptr.65, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1190, i32 4}
!151 = !{ptr @mt9v_init_sensor._entry.66, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @mt9v_init_sensor._entry_ptr.68, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1196, i32 3}
!155 = !{ptr @mt9v_init_sensor._entry.69, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @mt9v_init_sensor._entry_ptr.71, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1213, i32 4}
!159 = !{ptr @mt9v_init_sensor._entry.72, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @mt9v_init_sensor._entry_ptr.74, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1219, i32 3}
!163 = !{ptr @mt9v_init_sensor._entry.75, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @mt9v_init_sensor._entry_ptr.77, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @mt9v011_init, !166, !"mt9v011_init", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 836, i32 33}
!167 = !{ptr @mt9v111_init, !168, !"mt9v111_init", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 826, i32 33}
!169 = !{ptr @mt9v112_init, !170, !"mt9v112_init", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 807, i32 33}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1244, i32 3}
!173 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @mt9m111_init_sensor._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @mt9m111_init_sensor._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @mt9m111_init, !177, !"mt9m111_init", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 879, i32 33}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1232, i32 3}
!180 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @mt9m112_init_sensor._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @mt9m112_init_sensor._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @mt9m112_init, !184, !"mt9m112_init", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 886, i32 33}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1263, i32 3}
!187 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @mt9m001_init_sensor._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @mt9m001_init_sensor._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1266, i32 3}
!192 = !{ptr @mt9m001_init_sensor._entry.84, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @mt9m001_init_sensor._entry_ptr.86, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1269, i32 3}
!196 = !{ptr @mt9m001_init_sensor._entry.87, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @mt9m001_init_sensor._entry_ptr.89, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1276, i32 3}
!200 = !{ptr @mt9m001_init_sensor._entry.90, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @mt9m001_init_sensor._entry_ptr.92, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @mt9m001_init, !203, !"mt9m001_init", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 863, i32 33}
!204 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1288, i32 3}
!206 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @hv7131r_init_sensor._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @hv7131r_init_sensor._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @hv7131r_init, !210, !"hv7131r_init", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 893, i32 32}
!211 = !{ptr @sd_init_controls._key, !212, !"_key", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1728, i32 2}
!213 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1779, i32 3}
!216 = !{ptr @.str.97, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @sd_init_controls._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @sd_init_controls._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @sd_ctrl_ops, !220, !"sd_ctrl_ops", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1718, i32 35}
!221 = !{ptr @hsv_red_x, !222, !"hsv_red_x", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 291, i32 18}
!223 = !{ptr @hsv_red_y, !224, !"hsv_red_y", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 339, i32 18}
!225 = !{ptr @hsv_green_x, !226, !"hsv_green_x", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 387, i32 18}
!227 = !{ptr @hsv_green_y, !228, !"hsv_green_y", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 435, i32 18}
!229 = !{ptr @hsv_blue_x, !230, !"hsv_blue_x", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 483, i32 18}
!231 = !{ptr @hsv_blue_y, !232, !"hsv_blue_y", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 531, i32 18}
!233 = distinct !{null, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 122, i32 12}
!235 = distinct !{null, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 130, i32 12}
!237 = distinct !{null, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 137, i32 12}
!239 = distinct !{null, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 144, i32 12}
!241 = distinct !{null, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 151, i32 12}
!243 = distinct !{null, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 158, i32 12}
!245 = distinct !{null, !246, !"flip_dmi_table", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 120, i32 35}
!247 = !{ptr @ov_gain, !248, !"ov_gain", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 603, i32 17}
!249 = !{ptr @micron1_gain, !250, !"micron1_gain", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 615, i32 18}
!251 = !{ptr @micron2_gain, !252, !"micron2_gain", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 636, i32 18}
!253 = !{ptr @hv7131r_gain, !254, !"hv7131r_gain", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 656, i32 17}
!255 = !{ptr @.str.104, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2022, i32 3}
!257 = !{ptr @.str.105, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @sd_start._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @sd_start._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.107, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2026, i32 3}
!262 = !{ptr @sd_start._entry.106, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @sd_start._entry_ptr.108, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2030, i32 3}
!266 = !{ptr @sd_start._entry.109, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @sd_start._entry_ptr.111, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.113, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2034, i32 3}
!270 = !{ptr @sd_start._entry.112, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @sd_start._entry_ptr.114, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @sd_pkt_scan.frame_header, !273, !"frame_header", i1 false, i1 false}
!273 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2257, i32 18}
!274 = !{ptr @.str.115, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1967, i32 4}
!276 = !{ptr @.str.116, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @sd_isoc_init._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @sd_isoc_init._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.117, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 1616, i32 23}
!281 = !{ptr @device_table, !282, !"device_table", i1 false, i1 false}
!282 = !{!"../drivers/media/usb/gspca/sn9c20x.c", i32 2346, i32 35}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{!"branch_weights", i32 2000, i32 1}
!293 = !{!"auto-init"}
!294 = !{i8 0, i8 2}
