; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/spca501.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/spca501.c"
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
%struct.sd = type { %struct.gspca_dev, i16, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [67 x i8] c"gspca_spca501.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_spca501.description=GSPCA/SPCA501 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_spca501.file=drivers/media/usb/gspca/gspca_spca501\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_spca501.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_spca501__307_2036_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_spca501\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spca501\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1034, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1175, i16 -16383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1286, i16 223, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 1843, i16 1025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1843, i16 1026, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 6006, i16 20508, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 825242963, i32 1, i32 160, i32 28800, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 825242963, i32 1, i32 320, i32 115200, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 825242963, i32 1, i32 640, i32 460800, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@spca501c_arowana_init_data = internal constant { [928 x [3 x i16]], [1376 x i8] } { [928 x [3 x i16]] [[3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 1, i16 6, i16 17], [3 x i16] [i16 1, i16 255, i16 18], [3 x i16] [i16 1, i16 20, i16 19], [3 x i16] [i16 1, i16 0, i16 20], [3 x i16] [i16 1, i16 66, i16 81], [3 x i16] [i16 1, i16 64, i16 82], [3 x i16] [i16 1, i16 81, i16 83], [3 x i16] [i16 1, i16 64, i16 84], [3 x i16] [i16 1, i16 0, i16 85], [3 x i16] [i16 0, i16 37, i16 0], [3 x i16] [i16 0, i16 38, i16 0], [3 x i16] [i16 0, i16 1, i16 0], [3 x i16] [i16 0, i16 39, i16 0], [3 x i16] [i16 0, i16 138, i16 0], [3 x i16] [i16 2, i16 0, i16 5], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 8192, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 21, i16 1], [3 x i16] [i16 5, i16 234, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 35, i16 1], [3 x i16] [i16 5, i16 3, i16 0], [3 x i16] [i16 5, i16 48, i16 1], [3 x i16] [i16 5, i16 43, i16 0], [3 x i16] [i16 5, i16 49, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 50, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 51, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 52, i16 1], [3 x i16] [i16 5, i16 2, i16 0], [3 x i16] [i16 5, i16 80, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 81, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 82, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 84, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 0, i16 0, i16 1], [3 x i16] [i16 0, i16 0, i16 2], [3 x i16] [i16 0, i16 12, i16 3], [3 x i16] [i16 0, i16 0, i16 4], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 0, i16 0, i16 6], [3 x i16] [i16 0, i16 64, i16 7], [3 x i16] [i16 0, i16 192, i16 8], [3 x i16] [i16 0, i16 74, i16 9], [3 x i16] [i16 0, i16 0, i16 10], [3 x i16] [i16 0, i16 0, i16 11], [3 x i16] [i16 0, i16 1, i16 12], [3 x i16] [i16 0, i16 1, i16 13], [3 x i16] [i16 0, i16 0, i16 14], [3 x i16] [i16 0, i16 2, i16 15], [3 x i16] [i16 0, i16 1, i16 16], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 0, i16 18], [3 x i16] [i16 0, i16 2, i16 32], [3 x i16] [i16 0, i16 128, i16 33], [3 x i16] [i16 0, i16 1, i16 34], [3 x i16] [i16 0, i16 224, i16 35], [3 x i16] [i16 0, i16 0, i16 36], [3 x i16] [i16 0, i16 213, i16 37], [3 x i16] [i16 0, i16 0, i16 38], [3 x i16] [i16 0, i16 11, i16 39], [3 x i16] [i16 0, i16 0, i16 70], [3 x i16] [i16 0, i16 0, i16 71], [3 x i16] [i16 0, i16 0, i16 72], [3 x i16] [i16 0, i16 0, i16 73], [3 x i16] [i16 0, i16 8, i16 74], [3 x i16] [i16 255, i16 0, i16 208], [3 x i16] [i16 255, i16 216, i16 209], [3 x i16] [i16 255, i16 0, i16 212], [3 x i16] [i16 255, i16 0, i16 213], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 1, i16 40, i16 1], [3 x i16] [i16 1, i16 0, i16 2], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 1, i16 64, i16 4], [3 x i16] [i16 1, i16 102, i16 7], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 253, i16 10], [3 x i16] [i16 1, i16 56, i16 11], [3 x i16] [i16 1, i16 209, i16 12], [3 x i16] [i16 1, i16 247, i16 13], [3 x i16] [i16 1, i16 237, i16 14], [3 x i16] [i16 1, i16 216, i16 15], [3 x i16] [i16 1, i16 56, i16 16], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 0, i16 31], [3 x i16] [i16 1, i16 0, i16 32], [3 x i16] [i16 1, i16 255, i16 62], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 0, i16 64], [3 x i16] [i16 1, i16 53, i16 65], [3 x i16] [i16 1, i16 83, i16 66], [3 x i16] [i16 1, i16 105, i16 67], [3 x i16] [i16 1, i16 124, i16 68], [3 x i16] [i16 1, i16 140, i16 69], [3 x i16] [i16 1, i16 154, i16 70], [3 x i16] [i16 1, i16 168, i16 71], [3 x i16] [i16 1, i16 180, i16 72], [3 x i16] [i16 1, i16 191, i16 73], [3 x i16] [i16 1, i16 202, i16 74], [3 x i16] [i16 1, i16 212, i16 75], [3 x i16] [i16 1, i16 221, i16 76], [3 x i16] [i16 1, i16 231, i16 77], [3 x i16] [i16 1, i16 239, i16 78], [3 x i16] [i16 1, i16 248, i16 79], [3 x i16] [i16 1, i16 255, i16 80], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 96, i16 87], [3 x i16] [i16 1, i16 64, i16 88], [3 x i16] [i16 1, i16 17, i16 89], [3 x i16] [i16 1, i16 1, i16 90], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 21, i16 6], [3 x i16] [i16 2, i16 4106, i16 7], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 15, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 37, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 1, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 32, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 8192, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 21, i16 1], [3 x i16] [i16 5, i16 234, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 35, i16 1], [3 x i16] [i16 5, i16 3, i16 0], [3 x i16] [i16 5, i16 48, i16 1], [3 x i16] [i16 5, i16 43, i16 0], [3 x i16] [i16 5, i16 49, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 50, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 51, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 52, i16 1], [3 x i16] [i16 5, i16 2, i16 0], [3 x i16] [i16 5, i16 80, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 81, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 82, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 84, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 0, i16 0, i16 1], [3 x i16] [i16 0, i16 0, i16 2], [3 x i16] [i16 0, i16 12, i16 3], [3 x i16] [i16 0, i16 0, i16 4], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 0, i16 0, i16 6], [3 x i16] [i16 0, i16 64, i16 7], [3 x i16] [i16 0, i16 192, i16 8], [3 x i16] [i16 0, i16 74, i16 9], [3 x i16] [i16 0, i16 0, i16 10], [3 x i16] [i16 0, i16 0, i16 11], [3 x i16] [i16 0, i16 1, i16 12], [3 x i16] [i16 0, i16 1, i16 13], [3 x i16] [i16 0, i16 0, i16 14], [3 x i16] [i16 0, i16 2, i16 15], [3 x i16] [i16 0, i16 1, i16 16], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 0, i16 18], [3 x i16] [i16 0, i16 2, i16 32], [3 x i16] [i16 0, i16 128, i16 33], [3 x i16] [i16 0, i16 1, i16 34], [3 x i16] [i16 0, i16 224, i16 35], [3 x i16] [i16 0, i16 0, i16 36], [3 x i16] [i16 0, i16 213, i16 37], [3 x i16] [i16 0, i16 0, i16 38], [3 x i16] [i16 0, i16 11, i16 39], [3 x i16] [i16 0, i16 0, i16 70], [3 x i16] [i16 0, i16 0, i16 71], [3 x i16] [i16 0, i16 0, i16 72], [3 x i16] [i16 0, i16 0, i16 73], [3 x i16] [i16 0, i16 8, i16 74], [3 x i16] [i16 255, i16 0, i16 208], [3 x i16] [i16 255, i16 216, i16 209], [3 x i16] [i16 255, i16 0, i16 212], [3 x i16] [i16 255, i16 0, i16 213], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 1, i16 40, i16 1], [3 x i16] [i16 1, i16 0, i16 2], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 1, i16 64, i16 4], [3 x i16] [i16 1, i16 102, i16 7], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 253, i16 10], [3 x i16] [i16 1, i16 56, i16 11], [3 x i16] [i16 1, i16 209, i16 12], [3 x i16] [i16 1, i16 247, i16 13], [3 x i16] [i16 1, i16 237, i16 14], [3 x i16] [i16 1, i16 216, i16 15], [3 x i16] [i16 1, i16 56, i16 16], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 0, i16 31], [3 x i16] [i16 1, i16 0, i16 32], [3 x i16] [i16 1, i16 255, i16 62], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 0, i16 64], [3 x i16] [i16 1, i16 53, i16 65], [3 x i16] [i16 1, i16 83, i16 66], [3 x i16] [i16 1, i16 105, i16 67], [3 x i16] [i16 1, i16 124, i16 68], [3 x i16] [i16 1, i16 140, i16 69], [3 x i16] [i16 1, i16 154, i16 70], [3 x i16] [i16 1, i16 168, i16 71], [3 x i16] [i16 1, i16 180, i16 72], [3 x i16] [i16 1, i16 191, i16 73], [3 x i16] [i16 1, i16 202, i16 74], [3 x i16] [i16 1, i16 212, i16 75], [3 x i16] [i16 1, i16 221, i16 76], [3 x i16] [i16 1, i16 231, i16 77], [3 x i16] [i16 1, i16 239, i16 78], [3 x i16] [i16 1, i16 248, i16 79], [3 x i16] [i16 1, i16 255, i16 80], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 96, i16 87], [3 x i16] [i16 1, i16 64, i16 88], [3 x i16] [i16 1, i16 17, i16 89], [3 x i16] [i16 1, i16 1, i16 90], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 21, i16 6], [3 x i16] [i16 2, i16 4106, i16 7], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 15, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 37, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 1, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 32, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 -3, i16 10], [3 x i16] [i16 1, i16 35, i16 11], [3 x i16] [i16 1, i16 -22, i16 12], [3 x i16] [i16 1, i16 -12, i16 13], [3 x i16] [i16 1, i16 -4, i16 14], [3 x i16] [i16 1, i16 -29, i16 15], [3 x i16] [i16 1, i16 31, i16 16], [3 x i16] [i16 1, i16 168, i16 1], [3 x i16] [i16 1, i16 103, i16 7], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 200, i16 21], [3 x i16] [i16 1, i16 50, i16 22], [3 x i16] [i16 1, i16 0, i16 17], [3 x i16] [i16 1, i16 0, i16 18], [3 x i16] [i16 1, i16 0, i16 19], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -16384, i16 1], [3 x i16] [i16 2, i16 0, i16 5], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 8192, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 21, i16 1], [3 x i16] [i16 5, i16 234, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 35, i16 1], [3 x i16] [i16 5, i16 3, i16 0], [3 x i16] [i16 5, i16 48, i16 1], [3 x i16] [i16 5, i16 43, i16 0], [3 x i16] [i16 5, i16 49, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 50, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 51, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 52, i16 1], [3 x i16] [i16 5, i16 2, i16 0], [3 x i16] [i16 5, i16 80, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 81, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 82, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 84, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 0, i16 0, i16 1], [3 x i16] [i16 0, i16 0, i16 2], [3 x i16] [i16 0, i16 12, i16 3], [3 x i16] [i16 0, i16 0, i16 4], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 0, i16 0, i16 6], [3 x i16] [i16 0, i16 64, i16 7], [3 x i16] [i16 0, i16 192, i16 8], [3 x i16] [i16 0, i16 74, i16 9], [3 x i16] [i16 0, i16 0, i16 10], [3 x i16] [i16 0, i16 0, i16 11], [3 x i16] [i16 0, i16 1, i16 12], [3 x i16] [i16 0, i16 1, i16 13], [3 x i16] [i16 0, i16 0, i16 14], [3 x i16] [i16 0, i16 2, i16 15], [3 x i16] [i16 0, i16 1, i16 16], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 0, i16 18], [3 x i16] [i16 0, i16 2, i16 32], [3 x i16] [i16 0, i16 128, i16 33], [3 x i16] [i16 0, i16 1, i16 34], [3 x i16] [i16 0, i16 224, i16 35], [3 x i16] [i16 0, i16 0, i16 36], [3 x i16] [i16 0, i16 213, i16 37], [3 x i16] [i16 0, i16 0, i16 38], [3 x i16] [i16 0, i16 11, i16 39], [3 x i16] [i16 0, i16 0, i16 70], [3 x i16] [i16 0, i16 0, i16 71], [3 x i16] [i16 0, i16 0, i16 72], [3 x i16] [i16 0, i16 0, i16 73], [3 x i16] [i16 0, i16 8, i16 74], [3 x i16] [i16 255, i16 0, i16 208], [3 x i16] [i16 255, i16 216, i16 209], [3 x i16] [i16 255, i16 0, i16 212], [3 x i16] [i16 255, i16 0, i16 213], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 1, i16 40, i16 1], [3 x i16] [i16 1, i16 0, i16 2], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 1, i16 64, i16 4], [3 x i16] [i16 1, i16 102, i16 7], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 253, i16 10], [3 x i16] [i16 1, i16 56, i16 11], [3 x i16] [i16 1, i16 209, i16 12], [3 x i16] [i16 1, i16 247, i16 13], [3 x i16] [i16 1, i16 237, i16 14], [3 x i16] [i16 1, i16 216, i16 15], [3 x i16] [i16 1, i16 56, i16 16], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 0, i16 31], [3 x i16] [i16 1, i16 0, i16 32], [3 x i16] [i16 1, i16 255, i16 62], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 0, i16 64], [3 x i16] [i16 1, i16 53, i16 65], [3 x i16] [i16 1, i16 83, i16 66], [3 x i16] [i16 1, i16 105, i16 67], [3 x i16] [i16 1, i16 124, i16 68], [3 x i16] [i16 1, i16 140, i16 69], [3 x i16] [i16 1, i16 154, i16 70], [3 x i16] [i16 1, i16 168, i16 71], [3 x i16] [i16 1, i16 180, i16 72], [3 x i16] [i16 1, i16 191, i16 73], [3 x i16] [i16 1, i16 202, i16 74], [3 x i16] [i16 1, i16 212, i16 75], [3 x i16] [i16 1, i16 221, i16 76], [3 x i16] [i16 1, i16 231, i16 77], [3 x i16] [i16 1, i16 239, i16 78], [3 x i16] [i16 1, i16 248, i16 79], [3 x i16] [i16 1, i16 255, i16 80], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 96, i16 87], [3 x i16] [i16 1, i16 64, i16 88], [3 x i16] [i16 1, i16 17, i16 89], [3 x i16] [i16 1, i16 1, i16 90], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 21, i16 6], [3 x i16] [i16 2, i16 4106, i16 7], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 15, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 37, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 1, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 32, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 8192, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 21, i16 1], [3 x i16] [i16 5, i16 234, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 35, i16 1], [3 x i16] [i16 5, i16 3, i16 0], [3 x i16] [i16 5, i16 48, i16 1], [3 x i16] [i16 5, i16 43, i16 0], [3 x i16] [i16 5, i16 49, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 50, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 51, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 52, i16 1], [3 x i16] [i16 5, i16 2, i16 0], [3 x i16] [i16 5, i16 80, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 81, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 82, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 84, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 0, i16 0, i16 1], [3 x i16] [i16 0, i16 0, i16 2], [3 x i16] [i16 0, i16 12, i16 3], [3 x i16] [i16 0, i16 0, i16 4], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 0, i16 0, i16 6], [3 x i16] [i16 0, i16 64, i16 7], [3 x i16] [i16 0, i16 192, i16 8], [3 x i16] [i16 0, i16 74, i16 9], [3 x i16] [i16 0, i16 0, i16 10], [3 x i16] [i16 0, i16 0, i16 11], [3 x i16] [i16 0, i16 1, i16 12], [3 x i16] [i16 0, i16 1, i16 13], [3 x i16] [i16 0, i16 0, i16 14], [3 x i16] [i16 0, i16 2, i16 15], [3 x i16] [i16 0, i16 1, i16 16], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 0, i16 18], [3 x i16] [i16 0, i16 2, i16 32], [3 x i16] [i16 0, i16 128, i16 33], [3 x i16] [i16 0, i16 1, i16 34], [3 x i16] [i16 0, i16 224, i16 35], [3 x i16] [i16 0, i16 0, i16 36], [3 x i16] [i16 0, i16 213, i16 37], [3 x i16] [i16 0, i16 0, i16 38], [3 x i16] [i16 0, i16 11, i16 39], [3 x i16] [i16 0, i16 0, i16 70], [3 x i16] [i16 0, i16 0, i16 71], [3 x i16] [i16 0, i16 0, i16 72], [3 x i16] [i16 0, i16 0, i16 73], [3 x i16] [i16 0, i16 8, i16 74], [3 x i16] [i16 255, i16 0, i16 208], [3 x i16] [i16 255, i16 216, i16 209], [3 x i16] [i16 255, i16 0, i16 212], [3 x i16] [i16 255, i16 0, i16 213], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 1, i16 40, i16 1], [3 x i16] [i16 1, i16 0, i16 2], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 1, i16 64, i16 4], [3 x i16] [i16 1, i16 102, i16 7], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 253, i16 10], [3 x i16] [i16 1, i16 56, i16 11], [3 x i16] [i16 1, i16 209, i16 12], [3 x i16] [i16 1, i16 247, i16 13], [3 x i16] [i16 1, i16 237, i16 14], [3 x i16] [i16 1, i16 216, i16 15], [3 x i16] [i16 1, i16 56, i16 16], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 0, i16 31], [3 x i16] [i16 1, i16 0, i16 32], [3 x i16] [i16 1, i16 255, i16 62], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 0, i16 64], [3 x i16] [i16 1, i16 53, i16 65], [3 x i16] [i16 1, i16 83, i16 66], [3 x i16] [i16 1, i16 105, i16 67], [3 x i16] [i16 1, i16 124, i16 68], [3 x i16] [i16 1, i16 140, i16 69], [3 x i16] [i16 1, i16 154, i16 70], [3 x i16] [i16 1, i16 168, i16 71], [3 x i16] [i16 1, i16 180, i16 72], [3 x i16] [i16 1, i16 191, i16 73], [3 x i16] [i16 1, i16 202, i16 74], [3 x i16] [i16 1, i16 212, i16 75], [3 x i16] [i16 1, i16 221, i16 76], [3 x i16] [i16 1, i16 231, i16 77], [3 x i16] [i16 1, i16 239, i16 78], [3 x i16] [i16 1, i16 248, i16 79], [3 x i16] [i16 1, i16 255, i16 80], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 96, i16 87], [3 x i16] [i16 1, i16 64, i16 88], [3 x i16] [i16 1, i16 17, i16 89], [3 x i16] [i16 1, i16 1, i16 90], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 21, i16 6], [3 x i16] [i16 2, i16 4106, i16 7], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 15, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 37, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 1, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 32, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 15, i16 0], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 -3, i16 10], [3 x i16] [i16 1, i16 35, i16 11], [3 x i16] [i16 1, i16 -22, i16 12], [3 x i16] [i16 1, i16 -12, i16 13], [3 x i16] [i16 1, i16 -4, i16 14], [3 x i16] [i16 1, i16 -29, i16 15], [3 x i16] [i16 1, i16 31, i16 16], [3 x i16] [i16 1, i16 168, i16 1], [3 x i16] [i16 1, i16 103, i16 7], [3 x i16] [i16 1, i16 66, i16 81], [3 x i16] [i16 1, i16 81, i16 83], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -16384, i16 1], [3 x i16] [i16 2, i16 0, i16 5], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 8192, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 21, i16 1], [3 x i16] [i16 5, i16 234, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 35, i16 1], [3 x i16] [i16 5, i16 3, i16 0], [3 x i16] [i16 5, i16 48, i16 1], [3 x i16] [i16 5, i16 43, i16 0], [3 x i16] [i16 5, i16 49, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 50, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 51, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 52, i16 1], [3 x i16] [i16 5, i16 2, i16 0], [3 x i16] [i16 5, i16 80, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 81, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 82, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 84, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 0, i16 0, i16 1], [3 x i16] [i16 0, i16 0, i16 2], [3 x i16] [i16 0, i16 12, i16 3], [3 x i16] [i16 0, i16 0, i16 4], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 0, i16 0, i16 6], [3 x i16] [i16 0, i16 64, i16 7], [3 x i16] [i16 0, i16 192, i16 8], [3 x i16] [i16 0, i16 74, i16 9], [3 x i16] [i16 0, i16 0, i16 10], [3 x i16] [i16 0, i16 0, i16 11], [3 x i16] [i16 0, i16 1, i16 12], [3 x i16] [i16 0, i16 1, i16 13], [3 x i16] [i16 0, i16 0, i16 14], [3 x i16] [i16 0, i16 2, i16 15], [3 x i16] [i16 0, i16 1, i16 16], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 0, i16 18], [3 x i16] [i16 0, i16 2, i16 32], [3 x i16] [i16 0, i16 128, i16 33], [3 x i16] [i16 0, i16 1, i16 34], [3 x i16] [i16 0, i16 224, i16 35], [3 x i16] [i16 0, i16 0, i16 36], [3 x i16] [i16 0, i16 213, i16 37], [3 x i16] [i16 0, i16 0, i16 38], [3 x i16] [i16 0, i16 11, i16 39], [3 x i16] [i16 0, i16 0, i16 70], [3 x i16] [i16 0, i16 0, i16 71], [3 x i16] [i16 0, i16 0, i16 72], [3 x i16] [i16 0, i16 0, i16 73], [3 x i16] [i16 0, i16 8, i16 74], [3 x i16] [i16 255, i16 0, i16 208], [3 x i16] [i16 255, i16 216, i16 209], [3 x i16] [i16 255, i16 0, i16 212], [3 x i16] [i16 255, i16 0, i16 213], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 1, i16 40, i16 1], [3 x i16] [i16 1, i16 0, i16 2], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 1, i16 64, i16 4], [3 x i16] [i16 1, i16 102, i16 7], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 253, i16 10], [3 x i16] [i16 1, i16 56, i16 11], [3 x i16] [i16 1, i16 209, i16 12], [3 x i16] [i16 1, i16 247, i16 13], [3 x i16] [i16 1, i16 237, i16 14], [3 x i16] [i16 1, i16 216, i16 15], [3 x i16] [i16 1, i16 56, i16 16], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 0, i16 31], [3 x i16] [i16 1, i16 0, i16 32], [3 x i16] [i16 1, i16 255, i16 62], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 0, i16 64], [3 x i16] [i16 1, i16 53, i16 65], [3 x i16] [i16 1, i16 83, i16 66], [3 x i16] [i16 1, i16 105, i16 67], [3 x i16] [i16 1, i16 124, i16 68], [3 x i16] [i16 1, i16 140, i16 69], [3 x i16] [i16 1, i16 154, i16 70], [3 x i16] [i16 1, i16 168, i16 71], [3 x i16] [i16 1, i16 180, i16 72], [3 x i16] [i16 1, i16 191, i16 73], [3 x i16] [i16 1, i16 202, i16 74], [3 x i16] [i16 1, i16 212, i16 75], [3 x i16] [i16 1, i16 221, i16 76], [3 x i16] [i16 1, i16 231, i16 77], [3 x i16] [i16 1, i16 239, i16 78], [3 x i16] [i16 1, i16 248, i16 79], [3 x i16] [i16 1, i16 255, i16 80], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 96, i16 87], [3 x i16] [i16 1, i16 64, i16 88], [3 x i16] [i16 1, i16 17, i16 89], [3 x i16] [i16 1, i16 1, i16 90], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 21, i16 6], [3 x i16] [i16 2, i16 4106, i16 7], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 15, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 37, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 1, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 32, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 8192, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 21, i16 1], [3 x i16] [i16 5, i16 234, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 35, i16 1], [3 x i16] [i16 5, i16 3, i16 0], [3 x i16] [i16 5, i16 48, i16 1], [3 x i16] [i16 5, i16 43, i16 0], [3 x i16] [i16 5, i16 49, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 50, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 51, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 52, i16 1], [3 x i16] [i16 5, i16 2, i16 0], [3 x i16] [i16 5, i16 80, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 81, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 82, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 84, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 0, i16 0, i16 1], [3 x i16] [i16 0, i16 0, i16 2], [3 x i16] [i16 0, i16 12, i16 3], [3 x i16] [i16 0, i16 0, i16 4], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 0, i16 0, i16 6], [3 x i16] [i16 0, i16 64, i16 7], [3 x i16] [i16 0, i16 192, i16 8], [3 x i16] [i16 0, i16 74, i16 9], [3 x i16] [i16 0, i16 0, i16 10], [3 x i16] [i16 0, i16 0, i16 11], [3 x i16] [i16 0, i16 1, i16 12], [3 x i16] [i16 0, i16 1, i16 13], [3 x i16] [i16 0, i16 0, i16 14], [3 x i16] [i16 0, i16 2, i16 15], [3 x i16] [i16 0, i16 1, i16 16], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 0, i16 18], [3 x i16] [i16 0, i16 2, i16 32], [3 x i16] [i16 0, i16 128, i16 33], [3 x i16] [i16 0, i16 1, i16 34], [3 x i16] [i16 0, i16 224, i16 35], [3 x i16] [i16 0, i16 0, i16 36], [3 x i16] [i16 0, i16 213, i16 37], [3 x i16] [i16 0, i16 0, i16 38], [3 x i16] [i16 0, i16 11, i16 39], [3 x i16] [i16 0, i16 0, i16 70], [3 x i16] [i16 0, i16 0, i16 71], [3 x i16] [i16 0, i16 0, i16 72], [3 x i16] [i16 0, i16 0, i16 73], [3 x i16] [i16 0, i16 8, i16 74], [3 x i16] [i16 255, i16 0, i16 208], [3 x i16] [i16 255, i16 216, i16 209], [3 x i16] [i16 255, i16 0, i16 212], [3 x i16] [i16 255, i16 0, i16 213], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 1, i16 40, i16 1], [3 x i16] [i16 1, i16 0, i16 2], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 1, i16 64, i16 4], [3 x i16] [i16 1, i16 102, i16 7], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 253, i16 10], [3 x i16] [i16 1, i16 56, i16 11], [3 x i16] [i16 1, i16 209, i16 12], [3 x i16] [i16 1, i16 247, i16 13], [3 x i16] [i16 1, i16 237, i16 14], [3 x i16] [i16 1, i16 216, i16 15], [3 x i16] [i16 1, i16 56, i16 16], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 0, i16 31], [3 x i16] [i16 1, i16 0, i16 32], [3 x i16] [i16 1, i16 255, i16 62], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 0, i16 64], [3 x i16] [i16 1, i16 53, i16 65], [3 x i16] [i16 1, i16 83, i16 66], [3 x i16] [i16 1, i16 105, i16 67], [3 x i16] [i16 1, i16 124, i16 68], [3 x i16] [i16 1, i16 140, i16 69], [3 x i16] [i16 1, i16 154, i16 70], [3 x i16] [i16 1, i16 168, i16 71], [3 x i16] [i16 1, i16 180, i16 72], [3 x i16] [i16 1, i16 191, i16 73], [3 x i16] [i16 1, i16 202, i16 74], [3 x i16] [i16 1, i16 212, i16 75], [3 x i16] [i16 1, i16 221, i16 76], [3 x i16] [i16 1, i16 231, i16 77], [3 x i16] [i16 1, i16 239, i16 78], [3 x i16] [i16 1, i16 248, i16 79], [3 x i16] [i16 1, i16 255, i16 80], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 96, i16 87], [3 x i16] [i16 1, i16 64, i16 88], [3 x i16] [i16 1, i16 17, i16 89], [3 x i16] [i16 1, i16 1, i16 90], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 21, i16 6], [3 x i16] [i16 2, i16 4106, i16 7], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 15, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 37, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 1, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 32, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 30, i16 0], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 17, i16 8], [3 x i16] [i16 1, i16 50, i16 9], [3 x i16] [i16 1, i16 -3, i16 10], [3 x i16] [i16 1, i16 35, i16 11], [3 x i16] [i16 1, i16 -22, i16 12], [3 x i16] [i16 1, i16 -12, i16 13], [3 x i16] [i16 1, i16 -4, i16 14], [3 x i16] [i16 1, i16 -29, i16 15], [3 x i16] [i16 1, i16 31, i16 16], [3 x i16] [i16 1, i16 168, i16 1], [3 x i16] [i16 1, i16 103, i16 7], [3 x i16] [i16 1, i16 66, i16 81], [3 x i16] [i16 1, i16 81, i16 83], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 1, i16 66, i16 81], [3 x i16] [i16 1, i16 81, i16 83], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 45, i16 0], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 2, i16 -16384, i16 1], [3 x i16] [i16 2, i16 0, i16 5], [3 x i16] zeroinitializer], [1376 x i8] zeroinitializer }, align 32
@spca501c_mysterious_open_data = internal constant { [43 x [3 x i16]], [94 x i8] } { [43 x [3 x i16]] [[3 x i16] [i16 2, i16 15, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 1, i16 22, i16 17], [3 x i16] [i16 1, i16 0, i16 18], [3 x i16] [i16 1, i16 6, i16 19], [3 x i16] [i16 1, i16 120, i16 81], [3 x i16] [i16 1, i16 64, i16 82], [3 x i16] [i16 1, i16 70, i16 83], [3 x i16] [i16 1, i16 64, i16 84], [3 x i16] [i16 0, i16 37, i16 0], [3 x i16] [i16 0, i16 38, i16 0], [3 x i16] [i16 0, i16 1, i16 0], [3 x i16] [i16 0, i16 39, i16 0], [3 x i16] [i16 0, i16 138, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 8192, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 21, i16 1], [3 x i16] [i16 5, i16 234, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 35, i16 1], [3 x i16] [i16 5, i16 3, i16 0], [3 x i16] [i16 5, i16 48, i16 1], [3 x i16] [i16 5, i16 43, i16 0], [3 x i16] [i16 5, i16 49, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 50, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 51, i16 1], [3 x i16] [i16 5, i16 35, i16 0], [3 x i16] [i16 5, i16 52, i16 1], [3 x i16] [i16 5, i16 2, i16 0], [3 x i16] [i16 5, i16 80, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 81, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 82, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 84, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] zeroinitializer], [94 x i8] zeroinitializer }, align 32
@spca501_init_data = internal constant { [275 x [3 x i16]], [398 x i8] } { [275 x [3 x i16]] [[3 x i16] [i16 0, i16 170, i16 0], [3 x i16] [i16 0, i16 2, i16 1], [3 x i16] [i16 0, i16 1, i16 2], [3 x i16] [i16 0, i16 2, i16 3], [3 x i16] [i16 0, i16 206, i16 4], [3 x i16] [i16 0, i16 0, i16 5], [3 x i16] [i16 0, i16 0, i16 6], [3 x i16] [i16 0, i16 0, i16 7], [3 x i16] [i16 0, i16 0, i16 8], [3 x i16] [i16 0, i16 0, i16 9], [3 x i16] [i16 0, i16 144, i16 10], [3 x i16] [i16 0, i16 18, i16 11], [3 x i16] [i16 0, i16 0, i16 12], [3 x i16] [i16 0, i16 0, i16 13], [3 x i16] [i16 0, i16 0, i16 14], [3 x i16] [i16 0, i16 2, i16 15], [3 x i16] [i16 0, i16 0, i16 16], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 0, i16 18], [3 x i16] [i16 0, i16 0, i16 19], [3 x i16] [i16 0, i16 0, i16 20], [3 x i16] [i16 0, i16 0, i16 21], [3 x i16] [i16 0, i16 0, i16 22], [3 x i16] [i16 0, i16 0, i16 23], [3 x i16] [i16 0, i16 0, i16 24], [3 x i16] [i16 0, i16 0, i16 25], [3 x i16] [i16 0, i16 0, i16 26], [3 x i16] [i16 0, i16 0, i16 27], [3 x i16] [i16 0, i16 0, i16 28], [3 x i16] [i16 0, i16 0, i16 29], [3 x i16] [i16 0, i16 0, i16 30], [3 x i16] [i16 0, i16 0, i16 31], [3 x i16] [i16 0, i16 0, i16 32], [3 x i16] [i16 0, i16 0, i16 33], [3 x i16] [i16 0, i16 0, i16 34], [3 x i16] [i16 0, i16 0, i16 35], [3 x i16] [i16 0, i16 0, i16 36], [3 x i16] [i16 0, i16 0, i16 37], [3 x i16] [i16 0, i16 0, i16 38], [3 x i16] [i16 0, i16 0, i16 39], [3 x i16] [i16 0, i16 0, i16 40], [3 x i16] [i16 0, i16 0, i16 41], [3 x i16] [i16 0, i16 0, i16 42], [3 x i16] [i16 0, i16 0, i16 43], [3 x i16] [i16 0, i16 0, i16 44], [3 x i16] [i16 0, i16 0, i16 45], [3 x i16] [i16 0, i16 0, i16 46], [3 x i16] [i16 0, i16 0, i16 47], [3 x i16] [i16 0, i16 0, i16 48], [3 x i16] [i16 0, i16 0, i16 49], [3 x i16] [i16 0, i16 0, i16 50], [3 x i16] [i16 0, i16 0, i16 51], [3 x i16] [i16 0, i16 0, i16 52], [3 x i16] [i16 0, i16 0, i16 53], [3 x i16] [i16 0, i16 0, i16 54], [3 x i16] [i16 0, i16 0, i16 55], [3 x i16] [i16 0, i16 0, i16 56], [3 x i16] [i16 0, i16 0, i16 57], [3 x i16] [i16 0, i16 0, i16 58], [3 x i16] [i16 0, i16 0, i16 59], [3 x i16] [i16 0, i16 0, i16 60], [3 x i16] [i16 0, i16 0, i16 61], [3 x i16] [i16 0, i16 0, i16 62], [3 x i16] [i16 0, i16 0, i16 63], [3 x i16] [i16 0, i16 0, i16 64], [3 x i16] [i16 0, i16 0, i16 65], [3 x i16] [i16 0, i16 0, i16 66], [3 x i16] [i16 0, i16 0, i16 67], [3 x i16] [i16 0, i16 0, i16 68], [3 x i16] [i16 0, i16 0, i16 69], [3 x i16] [i16 0, i16 0, i16 70], [3 x i16] [i16 0, i16 0, i16 71], [3 x i16] [i16 0, i16 0, i16 72], [3 x i16] [i16 0, i16 0, i16 73], [3 x i16] [i16 0, i16 0, i16 74], [3 x i16] [i16 0, i16 0, i16 75], [3 x i16] [i16 0, i16 0, i16 76], [3 x i16] [i16 0, i16 0, i16 77], [3 x i16] [i16 0, i16 0, i16 78], [3 x i16] [i16 0, i16 0, i16 79], [3 x i16] [i16 0, i16 0, i16 80], [3 x i16] [i16 0, i16 0, i16 81], [3 x i16] [i16 0, i16 0, i16 82], [3 x i16] [i16 0, i16 0, i16 83], [3 x i16] [i16 0, i16 0, i16 84], [3 x i16] [i16 0, i16 0, i16 85], [3 x i16] [i16 0, i16 0, i16 86], [3 x i16] [i16 0, i16 0, i16 87], [3 x i16] [i16 0, i16 0, i16 88], [3 x i16] [i16 0, i16 0, i16 89], [3 x i16] [i16 0, i16 0, i16 90], [3 x i16] [i16 0, i16 0, i16 91], [3 x i16] [i16 0, i16 0, i16 92], [3 x i16] [i16 0, i16 0, i16 93], [3 x i16] [i16 0, i16 0, i16 94], [3 x i16] [i16 0, i16 0, i16 95], [3 x i16] [i16 0, i16 0, i16 96], [3 x i16] [i16 0, i16 0, i16 97], [3 x i16] [i16 0, i16 0, i16 98], [3 x i16] [i16 0, i16 0, i16 99], [3 x i16] [i16 0, i16 0, i16 100], [3 x i16] [i16 0, i16 0, i16 101], [3 x i16] [i16 0, i16 0, i16 102], [3 x i16] [i16 0, i16 0, i16 103], [3 x i16] [i16 0, i16 0, i16 104], [3 x i16] [i16 0, i16 0, i16 105], [3 x i16] [i16 0, i16 0, i16 106], [3 x i16] [i16 0, i16 0, i16 107], [3 x i16] [i16 0, i16 0, i16 108], [3 x i16] [i16 0, i16 0, i16 109], [3 x i16] [i16 0, i16 0, i16 110], [3 x i16] [i16 0, i16 0, i16 111], [3 x i16] [i16 0, i16 0, i16 112], [3 x i16] [i16 0, i16 0, i16 113], [3 x i16] [i16 0, i16 0, i16 114], [3 x i16] [i16 0, i16 0, i16 115], [3 x i16] [i16 0, i16 0, i16 116], [3 x i16] [i16 0, i16 0, i16 117], [3 x i16] [i16 0, i16 0, i16 118], [3 x i16] [i16 0, i16 0, i16 119], [3 x i16] [i16 0, i16 0, i16 120], [3 x i16] [i16 0, i16 0, i16 121], [3 x i16] [i16 0, i16 0, i16 122], [3 x i16] [i16 0, i16 0, i16 123], [3 x i16] [i16 0, i16 0, i16 124], [3 x i16] [i16 0, i16 0, i16 125], [3 x i16] [i16 0, i16 0, i16 126], [3 x i16] [i16 0, i16 0, i16 127], [3 x i16] [i16 0, i16 0, i16 128], [3 x i16] [i16 0, i16 0, i16 129], [3 x i16] [i16 0, i16 0, i16 130], [3 x i16] [i16 0, i16 0, i16 131], [3 x i16] [i16 0, i16 0, i16 132], [3 x i16] [i16 0, i16 0, i16 133], [3 x i16] [i16 0, i16 0, i16 134], [3 x i16] [i16 0, i16 0, i16 135], [3 x i16] [i16 0, i16 0, i16 136], [3 x i16] [i16 0, i16 0, i16 137], [3 x i16] [i16 0, i16 0, i16 138], [3 x i16] [i16 0, i16 0, i16 139], [3 x i16] [i16 0, i16 0, i16 140], [3 x i16] [i16 0, i16 0, i16 141], [3 x i16] [i16 0, i16 0, i16 142], [3 x i16] [i16 0, i16 0, i16 143], [3 x i16] [i16 0, i16 0, i16 144], [3 x i16] [i16 0, i16 0, i16 145], [3 x i16] [i16 0, i16 0, i16 146], [3 x i16] [i16 0, i16 0, i16 147], [3 x i16] [i16 0, i16 0, i16 148], [3 x i16] [i16 0, i16 0, i16 149], [3 x i16] [i16 0, i16 0, i16 150], [3 x i16] [i16 0, i16 0, i16 151], [3 x i16] [i16 0, i16 0, i16 152], [3 x i16] [i16 0, i16 0, i16 153], [3 x i16] [i16 0, i16 0, i16 154], [3 x i16] [i16 0, i16 0, i16 155], [3 x i16] [i16 0, i16 0, i16 156], [3 x i16] [i16 0, i16 0, i16 157], [3 x i16] [i16 0, i16 0, i16 158], [3 x i16] [i16 0, i16 0, i16 159], [3 x i16] [i16 0, i16 0, i16 160], [3 x i16] [i16 0, i16 0, i16 161], [3 x i16] [i16 0, i16 0, i16 162], [3 x i16] [i16 0, i16 0, i16 163], [3 x i16] [i16 0, i16 0, i16 164], [3 x i16] [i16 0, i16 0, i16 165], [3 x i16] [i16 0, i16 0, i16 166], [3 x i16] [i16 0, i16 0, i16 167], [3 x i16] [i16 0, i16 0, i16 168], [3 x i16] [i16 0, i16 0, i16 169], [3 x i16] [i16 0, i16 0, i16 170], [3 x i16] [i16 0, i16 0, i16 171], [3 x i16] [i16 0, i16 0, i16 172], [3 x i16] [i16 0, i16 0, i16 173], [3 x i16] [i16 0, i16 0, i16 174], [3 x i16] [i16 0, i16 0, i16 175], [3 x i16] [i16 0, i16 0, i16 176], [3 x i16] [i16 0, i16 0, i16 177], [3 x i16] [i16 0, i16 0, i16 178], [3 x i16] [i16 0, i16 0, i16 179], [3 x i16] [i16 0, i16 0, i16 180], [3 x i16] [i16 0, i16 0, i16 181], [3 x i16] [i16 0, i16 0, i16 182], [3 x i16] [i16 0, i16 0, i16 183], [3 x i16] [i16 0, i16 0, i16 184], [3 x i16] [i16 0, i16 0, i16 185], [3 x i16] [i16 0, i16 0, i16 186], [3 x i16] [i16 0, i16 0, i16 187], [3 x i16] [i16 0, i16 0, i16 188], [3 x i16] [i16 0, i16 0, i16 189], [3 x i16] [i16 0, i16 0, i16 190], [3 x i16] [i16 0, i16 0, i16 191], [3 x i16] [i16 0, i16 0, i16 192], [3 x i16] [i16 0, i16 0, i16 193], [3 x i16] [i16 0, i16 0, i16 194], [3 x i16] [i16 0, i16 0, i16 195], [3 x i16] [i16 0, i16 0, i16 196], [3 x i16] [i16 0, i16 0, i16 197], [3 x i16] [i16 0, i16 0, i16 198], [3 x i16] [i16 0, i16 0, i16 199], [3 x i16] [i16 0, i16 0, i16 200], [3 x i16] [i16 0, i16 0, i16 201], [3 x i16] [i16 0, i16 0, i16 202], [3 x i16] [i16 0, i16 0, i16 203], [3 x i16] [i16 0, i16 0, i16 204], [3 x i16] [i16 1, i16 244, i16 0], [3 x i16] [i16 1, i16 56, i16 1], [3 x i16] [i16 1, i16 64, i16 2], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 1, i16 64, i16 4], [3 x i16] [i16 1, i16 64, i16 5], [3 x i16] [i16 1, i16 64, i16 6], [3 x i16] [i16 1, i16 103, i16 7], [3 x i16] [i16 1, i16 49, i16 8], [3 x i16] [i16 1, i16 0, i16 9], [3 x i16] [i16 1, i16 0, i16 10], [3 x i16] [i16 1, i16 0, i16 11], [3 x i16] [i16 1, i16 20, i16 12], [3 x i16] [i16 1, i16 0, i16 13], [3 x i16] [i16 1, i16 0, i16 14], [3 x i16] [i16 1, i16 0, i16 15], [3 x i16] [i16 1, i16 30, i16 16], [3 x i16] [i16 1, i16 0, i16 17], [3 x i16] [i16 1, i16 0, i16 18], [3 x i16] [i16 1, i16 0, i16 19], [3 x i16] [i16 1, i16 0, i16 20], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 0, i16 31], [3 x i16] [i16 1, i16 0, i16 32], [3 x i16] [i16 1, i16 255, i16 62], [3 x i16] [i16 1, i16 2, i16 63], [3 x i16] [i16 1, i16 0, i16 64], [3 x i16] [i16 1, i16 0, i16 65], [3 x i16] [i16 1, i16 0, i16 66], [3 x i16] [i16 1, i16 0, i16 67], [3 x i16] [i16 1, i16 0, i16 68], [3 x i16] [i16 1, i16 0, i16 69], [3 x i16] [i16 1, i16 0, i16 70], [3 x i16] [i16 1, i16 0, i16 71], [3 x i16] [i16 1, i16 0, i16 72], [3 x i16] [i16 1, i16 0, i16 73], [3 x i16] [i16 1, i16 0, i16 74], [3 x i16] [i16 1, i16 0, i16 75], [3 x i16] [i16 1, i16 0, i16 76], [3 x i16] [i16 1, i16 0, i16 77], [3 x i16] [i16 1, i16 0, i16 78], [3 x i16] [i16 1, i16 0, i16 79], [3 x i16] [i16 1, i16 0, i16 80], [3 x i16] [i16 1, i16 0, i16 81], [3 x i16] [i16 1, i16 0, i16 82], [3 x i16] [i16 1, i16 0, i16 83], [3 x i16] [i16 1, i16 0, i16 84], [3 x i16] [i16 1, i16 0, i16 85], [3 x i16] [i16 1, i16 0, i16 86], [3 x i16] [i16 1, i16 0, i16 87], [3 x i16] [i16 1, i16 0, i16 88], [3 x i16] [i16 1, i16 0, i16 89], [3 x i16] [i16 1, i16 0, i16 90], [3 x i16] [i16 2, i16 3, i16 0], [3 x i16] [i16 2, i16 0, i16 1], [3 x i16] [i16 2, i16 0, i16 5], [3 x i16] [i16 2, i16 0, i16 6], [3 x i16] [i16 2, i16 0, i16 7], [3 x i16] [i16 2, i16 0, i16 16], [3 x i16] [i16 2, i16 0, i16 17], [3 x i16] zeroinitializer], [398 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Initializing SPCA501 finished\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/spca501.c\00", [62 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@write_vector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 1773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: Reg write failed for 0x%02x,0x%02x,0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_vector\00", [19 x i8] zeroinitializer }, align 32
@write_vector._entry_ptr = internal global ptr @write_vector._entry, section ".printk_index", align 4
@reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 1757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: reg write: 0x%02x 0x%02x 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_write\00", [22 x i8] zeroinitializer }, align 32
@reg_write._entry_ptr = internal global ptr @reg_write._entry, section ".printk_index", align 4
@reg_write._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 1759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_spca501: reg write: error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@reg_write._entry_ptr.11 = internal global ptr @reg_write._entry.9, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spca501:1972:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 1985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_spca501: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@spca501_3com_open_data = internal constant { [43 x [3 x i16]], [94 x i8] } { [43 x [3 x i16]] [[3 x i16] [i16 2, i16 80, i16 0], [3 x i16] [i16 2, i16 67, i16 0], [3 x i16] [i16 2, i16 2, i16 5], [3 x i16] [i16 2, i16 3, i16 5], [3 x i16] [i16 1, i16 32, i16 1], [3 x i16] [i16 1, i16 32, i16 2], [3 x i16] [i16 1, i16 110, i16 7], [3 x i16] [i16 1, i16 144, i16 21], [3 x i16] [i16 1, i16 255, i16 22], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 0, i16 252, i16 0], [3 x i16] [i16 0, i16 0, i16 1], [3 x i16] [i16 0, i16 228, i16 4], [3 x i16] [i16 0, i16 8, i16 5], [3 x i16] [i16 0, i16 3, i16 6], [3 x i16] [i16 0, i16 1, i16 7], [3 x i16] [i16 0, i16 57, i16 8], [3 x i16] [i16 0, i16 136, i16 10], [3 x i16] [i16 0, i16 3, i16 15], [3 x i16] [i16 0, i16 128, i16 12], [3 x i16] [i16 0, i16 0, i16 13], [3 x i16] [i16 0, i16 128, i16 12], [3 x i16] [i16 0, i16 4, i16 13], [3 x i16] [i16 0, i16 0, i16 12], [3 x i16] [i16 0, i16 0, i16 13], [3 x i16] [i16 0, i16 64, i16 12], [3 x i16] [i16 0, i16 23, i16 13], [3 x i16] [i16 0, i16 192, i16 12], [3 x i16] [i16 0, i16 0, i16 13], [3 x i16] [i16 0, i16 128, i16 12], [3 x i16] [i16 0, i16 6, i16 13], [3 x i16] [i16 0, i16 128, i16 12], [3 x i16] [i16 0, i16 4, i16 13], [3 x i16] [i16 0, i16 2, i16 3], [3 x i16] [i16 0, i16 1, i16 16], [3 x i16] [i16 2, i16 104, i16 1], [3 x i16] [i16 2, i16 0, i16 5], [3 x i16] [i16 2, i16 67, i16 0], [3 x i16] [i16 2, i16 67, i16 0], [3 x i16] [i16 2, i16 2, i16 5], [3 x i16] [i16 2, i16 3, i16 5], [3 x i16] [i16 2, i16 106, i16 1], [3 x i16] zeroinitializer], [94 x i8] zeroinitializer }, align 32
@spca501c_arowana_open_data = internal constant { [18 x [3 x i16]], [52 x i8] } { [18 x [3 x i16]] [[3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 1, i16 6, i16 17], [3 x i16] [i16 1, i16 255, i16 18], [3 x i16] [i16 1, i16 20, i16 19], [3 x i16] [i16 1, i16 0, i16 20], [3 x i16] [i16 1, i16 66, i16 81], [3 x i16] [i16 1, i16 64, i16 82], [3 x i16] [i16 1, i16 81, i16 83], [3 x i16] [i16 1, i16 64, i16 84], [3 x i16] [i16 1, i16 0, i16 85], [3 x i16] [i16 0, i16 37, i16 0], [3 x i16] [i16 0, i16 38, i16 0], [3 x i16] [i16 0, i16 1, i16 0], [3 x i16] [i16 0, i16 39, i16 0], [3 x i16] [i16 0, i16 138, i16 0], [3 x i16] zeroinitializer], [52 x i8] zeroinitializer }, align 32
@spca501c_mysterious_init_data = internal constant { [141 x [3 x i16]], [210 x i8] } { [141 x [3 x i16]] [[3 x i16] [i16 0, i16 0, i16 1], [3 x i16] [i16 0, i16 0, i16 2], [3 x i16] [i16 0, i16 6, i16 3], [3 x i16] [i16 0, i16 0, i16 4], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 0, i16 0, i16 6], [3 x i16] [i16 0, i16 64, i16 7], [3 x i16] [i16 0, i16 192, i16 8], [3 x i16] [i16 0, i16 74, i16 9], [3 x i16] [i16 0, i16 0, i16 10], [3 x i16] [i16 0, i16 0, i16 11], [3 x i16] [i16 0, i16 1, i16 12], [3 x i16] [i16 0, i16 1, i16 13], [3 x i16] [i16 0, i16 0, i16 14], [3 x i16] [i16 0, i16 2, i16 15], [3 x i16] [i16 0, i16 1, i16 16], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 1, i16 18], [3 x i16] [i16 0, i16 2, i16 32], [3 x i16] [i16 0, i16 128, i16 33], [3 x i16] [i16 0, i16 1, i16 34], [3 x i16] [i16 0, i16 224, i16 35], [3 x i16] [i16 0, i16 0, i16 36], [3 x i16] [i16 0, i16 211, i16 37], [3 x i16] [i16 0, i16 0, i16 38], [3 x i16] [i16 0, i16 13, i16 39], [3 x i16] [i16 0, i16 0, i16 70], [3 x i16] [i16 0, i16 0, i16 71], [3 x i16] [i16 0, i16 0, i16 72], [3 x i16] [i16 0, i16 0, i16 73], [3 x i16] [i16 0, i16 8, i16 74], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 1, i16 40, i16 1], [3 x i16] [i16 1, i16 0, i16 2], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 1, i16 64, i16 4], [3 x i16] [i16 1, i16 102, i16 7], [3 x i16] [i16 1, i16 15, i16 8], [3 x i16] [i16 1, i16 45, i16 9], [3 x i16] [i16 1, i16 5, i16 10], [3 x i16] [i16 1, i16 35, i16 11], [3 x i16] [i16 1, i16 224, i16 12], [3 x i16] [i16 1, i16 253, i16 13], [3 x i16] [i16 1, i16 244, i16 14], [3 x i16] [i16 1, i16 228, i16 15], [3 x i16] [i16 1, i16 40, i16 16], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 0, i16 31], [3 x i16] [i16 1, i16 0, i16 32], [3 x i16] [i16 1, i16 255, i16 62], [3 x i16] [i16 1, i16 2, i16 63], [3 x i16] [i16 1, i16 0, i16 64], [3 x i16] [i16 1, i16 53, i16 65], [3 x i16] [i16 1, i16 83, i16 66], [3 x i16] [i16 1, i16 105, i16 67], [3 x i16] [i16 1, i16 124, i16 68], [3 x i16] [i16 1, i16 140, i16 69], [3 x i16] [i16 1, i16 154, i16 70], [3 x i16] [i16 1, i16 168, i16 71], [3 x i16] [i16 1, i16 180, i16 72], [3 x i16] [i16 1, i16 191, i16 73], [3 x i16] [i16 1, i16 202, i16 74], [3 x i16] [i16 1, i16 212, i16 75], [3 x i16] [i16 1, i16 221, i16 76], [3 x i16] [i16 1, i16 231, i16 77], [3 x i16] [i16 1, i16 239, i16 78], [3 x i16] [i16 1, i16 248, i16 79], [3 x i16] [i16 1, i16 255, i16 80], [3 x i16] [i16 1, i16 3, i16 86], [3 x i16] [i16 1, i16 96, i16 87], [3 x i16] [i16 1, i16 64, i16 88], [3 x i16] [i16 1, i16 17, i16 89], [3 x i16] [i16 1, i16 1, i16 90], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] [i16 2, i16 21, i16 6], [3 x i16] [i16 2, i16 8202, i16 7], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 2, i16 -16384, i16 1], [3 x i16] [i16 2, i16 15, i16 5], [3 x i16] [i16 2, i16 -24504, i16 0], [3 x i16] [i16 5, i16 34, i16 4], [3 x i16] [i16 5, i16 37, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 1, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 5, i16 33, i16 1], [3 x i16] [i16 5, i16 210, i16 0], [3 x i16] [i16 5, i16 32, i16 1], [3 x i16] [i16 5, i16 0, i16 0], [3 x i16] [i16 0, i16 144, i16 5], [3 x i16] [i16 1, i16 166, i16 0], [3 x i16] [i16 2, i16 0, i16 5], [3 x i16] [i16 5, i16 38, i16 1], [3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 5, i16 39, i16 1], [3 x i16] [i16 5, i16 78, i16 0], [3 x i16] [i16 1, i16 3, i16 63], [3 x i16] [i16 1, i16 1, i16 86], [3 x i16] [i16 1, i16 15, i16 8], [3 x i16] [i16 1, i16 45, i16 9], [3 x i16] [i16 1, i16 5, i16 10], [3 x i16] [i16 1, i16 35, i16 11], [3 x i16] [i16 1, i16 -32, i16 12], [3 x i16] [i16 1, i16 -3, i16 13], [3 x i16] [i16 1, i16 -12, i16 14], [3 x i16] [i16 1, i16 -28, i16 15], [3 x i16] [i16 1, i16 40, i16 16], [3 x i16] [i16 1, i16 168, i16 1], [3 x i16] [i16 1, i16 102, i16 7], [3 x i16] [i16 1, i16 50, i16 23], [3 x i16] [i16 1, i16 35, i16 24], [3 x i16] [i16 1, i16 206, i16 25], [3 x i16] [i16 1, i16 35, i16 26], [3 x i16] [i16 1, i16 50, i16 27], [3 x i16] [i16 1, i16 141, i16 28], [3 x i16] [i16 1, i16 206, i16 29], [3 x i16] [i16 1, i16 141, i16 30], [3 x i16] [i16 1, i16 200, i16 21], [3 x i16] [i16 1, i16 50, i16 22], [3 x i16] [i16 1, i16 22, i16 17], [3 x i16] [i16 1, i16 22, i16 18], [3 x i16] [i16 1, i16 22, i16 19], [3 x i16] [i16 1, i16 10, i16 3], [3 x i16] [i16 2, i16 -16382, i16 1], [3 x i16] [i16 2, i16 7, i16 5], [3 x i16] zeroinitializer], [210 x i8] zeroinitializer }, align 32
@spca501_open_data = internal constant { [40 x [3 x i16]], [48 x i8] } { [40 x [3 x i16]] [[3 x i16] [i16 2, i16 80, i16 0], [3 x i16] [i16 2, i16 64, i16 0], [3 x i16] [i16 2, i16 2, i16 5], [3 x i16] [i16 2, i16 3, i16 5], [3 x i16] [i16 1, i16 56, i16 1], [3 x i16] [i16 1, i16 5, i16 2], [3 x i16] [i16 1, i16 192, i16 3], [3 x i16] [i16 1, i16 103, i16 7], [3 x i16] [i16 1, i16 99, i16 63], [3 x i16] [i16 1, i16 3, i16 86], [3 x i16] [i16 1, i16 255, i16 21], [3 x i16] [i16 1, i16 1, i16 22], [3 x i16] [i16 1, i16 42, i16 8], [3 x i16] [i16 1, i16 248, i16 9], [3 x i16] [i16 1, i16 248, i16 10], [3 x i16] [i16 1, i16 248, i16 11], [3 x i16] [i16 1, i16 20, i16 12], [3 x i16] [i16 1, i16 248, i16 13], [3 x i16] [i16 1, i16 248, i16 14], [3 x i16] [i16 1, i16 248, i16 15], [3 x i16] [i16 1, i16 32, i16 16], [3 x i16] [i16 1, i16 0, i16 17], [3 x i16] [i16 1, i16 0, i16 18], [3 x i16] [i16 1, i16 0, i16 19], [3 x i16] [i16 1, i16 0, i16 20], [3 x i16] [i16 0, i16 252, i16 0], [3 x i16] [i16 0, i16 1, i16 1], [3 x i16] [i16 0, i16 228, i16 4], [3 x i16] [i16 0, i16 8, i16 5], [3 x i16] [i16 0, i16 3, i16 6], [3 x i16] [i16 0, i16 1, i16 7], [3 x i16] [i16 0, i16 57, i16 8], [3 x i16] [i16 0, i16 136, i16 10], [3 x i16] [i16 0, i16 3, i16 15], [3 x i16] [i16 0, i16 0, i16 17], [3 x i16] [i16 0, i16 1, i16 12], [3 x i16] [i16 0, i16 224, i16 13], [3 x i16] [i16 2, i16 8266, i16 7], [3 x i16] [i16 2, i16 148, i16 6], [3 x i16] zeroinitializer], [48 x i8] zeroinitializer }, align 32
@switch.table.sd_start = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @spca501c_arowana_open_data, ptr @spca501_open_data, ptr @spca501_open_data, ptr @spca501c_mysterious_init_data, ptr @spca501c_arowana_open_data, ptr @spca501_3com_open_data], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963790, i64 9963791]
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 2024, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 2036, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 2025, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 2004, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1992, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 38, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"spca501c_arowana_init_data\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 610, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"spca501c_mysterious_open_data\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1544, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"spca501_init_data\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 206, i32 20 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1845, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1772, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1756, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1759, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1972, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1963, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1985, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"spca501_3com_open_data\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 493, i32 20 }
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"spca501c_arowana_open_data\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 588, i32 20 }
@___asan_gen_.105 = private unnamed_addr constant [30 x i8] c"spca501c_mysterious_init_data\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1595, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"spca501_open_data\00", align 1
@___asan_gen_.109 = private constant [37 x i8] c"../drivers/media/usb/gspca/spca501.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 100, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"switch.table.sd_start\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_spca501__307_2036_sd_driver_init6, ptr @reg_write._entry, ptr @reg_write._entry.9, ptr @reg_write._entry_ptr, ptr @reg_write._entry_ptr.11, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @write_vector._entry, ptr @write_vector._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @spca501c_arowana_init_data, ptr @spca501c_mysterious_open_data, ptr @spca501_init_data, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @sd_init_controls._key, ptr @.str.12, ptr @sd_ctrl_ops, ptr @.str.13, ptr @.str.14, ptr @spca501_3com_open_data, ptr @spca501c_arowana_open_data, ptr @spca501c_mysterious_init_data, ptr @spca501_open_data, ptr @switch.table.sd_start], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca501c_arowana_init_data to i32), i32 5568, i32 6944, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca501c_mysterious_open_data to i32), i32 258, i32 352, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca501_init_data to i32), i32 1650, i32 2048, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca501_3com_open_data to i32), i32 258, i32 352, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca501c_arowana_open_data to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca501c_mysterious_init_data to i32), i32 846, i32 1056, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca501_open_data to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_start to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2616, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %nmodes, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %3 to i8
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %4 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %subtype, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subtype, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 0, label %entry.sw.bb_crit_edge
    i8 4, label %entry.sw.bb_crit_edge21
    i8 3, label %sw.bb1
  ]

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  %call = tail call fastcc i32 @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @spca501c_arowana_init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.do.body_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @spca501c_mysterious_open_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %sw.bb1.do.body_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.do.body_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.default:                                       ; preds = %entry
  %call6 = tail call fastcc i32 @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @spca501_init_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %sw.default.do.body_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.default.do.body_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %sw.default.do.body_crit_edge, %sw.bb1.do.body_crit_edge, %sw.bb.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -22, %sw.default.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 5, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.12) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 0) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 64725, i64 noundef 1, i64 noundef 64725) #5
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 20) #5
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 0) #5
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 0) #5
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %2 = icmp ult i8 %1, 6
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = sext i8 %1 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.sd_start, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %spca501_open_data.sink = phi ptr [ %switch.load, %switch.lookup ], [ @spca501_open_data, %entry.sw.epilog_crit_edge ]
  %call5 = tail call fastcc i32 @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull %spca501_open_data.sink)
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %5 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %7 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %curr_mode, align 1
  %conv6 = zext i8 %8 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %6, i32 %conv6, i32 7
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priv, align 4
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 148, i16 noundef zeroext 6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp.i = icmp sgt i32 %15, 6
  br i1 %cmp.i, label %do.end.i, label %sw.epilog.do.end10.i_crit_edge

sw.epilog.do.end10.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 2, i32 noundef 6, i32 noundef 148) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %sw.epilog.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11.i = icmp slt i32 %call2.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end10.i.reg_write.exit_crit_edge

do.end10.i.reg_write.exit_crit_edge:              ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit

do.end16.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %do.end16.i, %do.end10.i.reg_write.exit_crit_edge
  %16 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %10, label %sw.default12 [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb10
  ]

sw.bb8:                                           ; preds = %reg_write.exit
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i28 = shl i32 %20, 8
  %or.i29 = or i32 %shl.i.i28, -2147483648
  %call2.i30 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i29, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 74, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp.i31 = icmp sgt i32 %21, 6
  br i1 %cmp.i31, label %do.end.i34, label %sw.bb8.do.end10.i36_crit_edge

sw.bb8.do.end10.i36_crit_edge:                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i36

do.end.i34:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %name.i32 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i32, i32 noundef 2, i32 noundef 7, i32 noundef 74) #8
  br label %do.end10.i36

do.end10.i36:                                     ; preds = %do.end.i34, %sw.bb8.do.end10.i36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i30)
  %cmp11.i35 = icmp slt i32 %call2.i30, 0
  br i1 %cmp11.i35, label %do.end10.i36.sw.epilog14.sink.split_crit_edge, label %do.end10.i36.sw.epilog14_crit_edge

do.end10.i36.sw.epilog14_crit_edge:               ; preds = %do.end10.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14

do.end10.i36.sw.epilog14.sink.split_crit_edge:    ; preds = %do.end10.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14.sink.split

sw.bb10:                                          ; preds = %reg_write.exit
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i41 = shl i32 %25, 8
  %or.i42 = or i32 %shl.i.i41, -2147483648
  %call2.i43 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i42, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 4170, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp.i44 = icmp sgt i32 %26, 6
  br i1 %cmp.i44, label %do.end.i47, label %sw.bb10.do.end10.i49_crit_edge

sw.bb10.do.end10.i49_crit_edge:                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i49

do.end.i47:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %name.i45 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i45, i32 noundef 2, i32 noundef 7, i32 noundef 4170) #8
  br label %do.end10.i49

do.end10.i49:                                     ; preds = %do.end.i47, %sw.bb10.do.end10.i49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i43)
  %cmp11.i48 = icmp slt i32 %call2.i43, 0
  br i1 %cmp11.i48, label %do.end10.i49.sw.epilog14.sink.split_crit_edge, label %do.end10.i49.sw.epilog14_crit_edge

do.end10.i49.sw.epilog14_crit_edge:               ; preds = %do.end10.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14

do.end10.i49.sw.epilog14.sink.split_crit_edge:    ; preds = %do.end10.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14.sink.split

sw.default12:                                     ; preds = %reg_write.exit
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i54 = shl i32 %30, 8
  %or.i55 = or i32 %shl.i.i54, -2147483648
  %call2.i56 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i55, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 8266, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp.i57 = icmp sgt i32 %31, 6
  br i1 %cmp.i57, label %do.end.i60, label %sw.default12.do.end10.i62_crit_edge

sw.default12.do.end10.i62_crit_edge:              ; preds = %sw.default12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i62

do.end.i60:                                       ; preds = %sw.default12
  call void @__sanitizer_cov_trace_pc() #7
  %name.i58 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i58, i32 noundef 2, i32 noundef 7, i32 noundef 8266) #8
  br label %do.end10.i62

do.end10.i62:                                     ; preds = %do.end.i60, %sw.default12.do.end10.i62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i56)
  %cmp11.i61 = icmp slt i32 %call2.i56, 0
  br i1 %cmp11.i61, label %do.end10.i62.sw.epilog14.sink.split_crit_edge, label %do.end10.i62.sw.epilog14_crit_edge

do.end10.i62.sw.epilog14_crit_edge:               ; preds = %do.end10.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14

do.end10.i62.sw.epilog14.sink.split_crit_edge:    ; preds = %do.end10.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14.sink.split

sw.epilog14.sink.split:                           ; preds = %do.end10.i62.sw.epilog14.sink.split_crit_edge, %do.end10.i49.sw.epilog14.sink.split_crit_edge, %do.end10.i36.sw.epilog14.sink.split_crit_edge
  %call2.i56.sink = phi i32 [ %call2.i30, %do.end10.i36.sw.epilog14.sink.split_crit_edge ], [ %call2.i43, %do.end10.i49.sw.epilog14.sink.split_crit_edge ], [ %call2.i56, %do.end10.i62.sw.epilog14.sink.split_crit_edge ]
  %call18.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i56.sink) #8
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.epilog14.sink.split, %do.end10.i62.sw.epilog14_crit_edge, %do.end10.i49.sw.epilog14_crit_edge, %do.end10.i36.sw.epilog14_crit_edge
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i67 = shl i32 %35, 8
  %or.i68 = or i32 %shl.i.i67, -2147483648
  %call2.i69 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i68, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp.i70 = icmp sgt i32 %36, 6
  br i1 %cmp.i70, label %do.end.i73, label %sw.epilog14.do.end10.i75_crit_edge

sw.epilog14.do.end10.i75_crit_edge:               ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i75

do.end.i73:                                       ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #7
  %name.i71 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i71, i32 noundef 2, i32 noundef 1, i32 noundef 2) #8
  br label %do.end10.i75

do.end10.i75:                                     ; preds = %do.end.i73, %sw.epilog14.do.end10.i75_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i69)
  %cmp11.i74 = icmp slt i32 %call2.i69, 0
  br i1 %cmp11.i74, label %do.end16.i77, label %do.end10.i75.reg_write.exit78_crit_edge

do.end10.i75.reg_write.exit78_crit_edge:          ; preds = %do.end10.i75
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit78

do.end16.i77:                                     ; preds = %do.end10.i75
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i69) #8
  br label %reg_write.exit78

reg_write.exit78:                                 ; preds = %do.end16.i77, %do.end10.i75.reg_write.exit78_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %1, label %entry.return.sink.split_crit_edge [
    i8 0, label %sw.bb
    i8 -1, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb, %entry.return.sink.split_crit_edge
  %.sink12 = phi i32 [ 8, %sw.bb ], [ 1, %entry.return.sink.split_crit_edge ]
  %.sink11 = phi i32 [ -8, %sw.bb ], [ -1, %entry.return.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %sw.bb ], [ 2, %entry.return.sink.split_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %data, i32 %.sink12
  %dec = add i32 %.sink11, %len
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %.sink, ptr noundef %incdec.ptr, i32 noundef %dec) #5
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end10.i_crit_edge

entry.do.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %entry.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11.i = icmp slt i32 %call2.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end10.i.reg_write.exit_crit_edge

do.end10.i.reg_write.exit_crit_edge:              ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit

do.end16.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %do.end16.i, %do.end10.i.reg_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 29
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.i = icmp sgt i32 %6, 6
  br i1 %cmp.i, label %do.end.i, label %if.end.do.end10.i_crit_edge

if.end.do.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 2, i32 noundef 5, i32 noundef 0) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %if.end.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11.i = icmp slt i32 %call2.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end10.i.return_crit_edge

do.end10.i.return_crit_edge:                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end16.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %return

return:                                           ; preds = %do.end16.i, %do.end10.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_vector(ptr noundef %gspca_dev, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.cond

while.cond:                                       ; preds = %do.end10.i.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.end10.i.while.cond_crit_edge ]
  %arrayidx = getelementptr [3 x i16], ptr %data, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.lhs.false:                                    ; preds = %while.cond
  %arrayidx4 = getelementptr [3 x i16], ptr %data, i32 %i.0, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp6.not = icmp eq i16 %3, 0
  br i1 %cmp6.not, label %lor.rhs, label %lor.lhs.false.while.body_crit_edge

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx9 = getelementptr [3 x i16], ptr %data, i32 %i.0, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp11.not = icmp eq i16 %5, 0
  br i1 %cmp11.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge, %while.cond.while.body_crit_edge
  %arrayidx16 = getelementptr [3 x i16], ptr %data, i32 %i.0, i32 2
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx16, align 2
  %arrayidx18 = getelementptr [3 x i16], ptr %data, i32 %i.0, i32 1
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx18, align 2
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = trunc i16 %1 to i8
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext %conv.i, i8 noundef zeroext 64, i16 noundef zeroext %9, i16 noundef zeroext %7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp.i = icmp sgt i32 %14, 6
  br i1 %cmp.i, label %do.end.i, label %while.body.do.end10.i_crit_edge

while.body.do.end10.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i = zext i16 %1 to i32
  %conv6.i = zext i16 %7 to i32
  %conv7.i = zext i16 %9 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %while.body.do.end10.i_crit_edge
  %cmp11.i = icmp slt i32 %call2.i, 0
  %inc = add i32 %i.0, 1
  br i1 %cmp11.i, label %do.end, label %do.end10.i.while.cond_crit_edge

do.end10.i.while.cond_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.end:                                           ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %conv23 = zext i16 %16 to i32
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx18, align 2
  %conv26 = zext i16 %18 to i32
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx16, align 2
  %conv29 = zext i16 %20 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef %conv23, i32 noundef %conv26, i32 noundef %conv29) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ 0, %lor.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb3
    i32 9963791, label %sw.bb5
    i32 9963790, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv.i = trunc i32 %9 to i16
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp.i.i = icmp sgt i32 %14, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.do.end10.i.i_crit_edge

sw.bb.do.end10.i.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i = and i32 %9, 65535
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i.i, i32 noundef 1, i32 noundef 18, i32 noundef %conv7.i.i) #8
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %do.end.i.i, %sw.bb.do.end10.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp11.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp11.i.i, label %do.end10.i.i.sw.epilog.sink.split_crit_edge, label %do.end10.i.i.sw.epilog_crit_edge

do.end10.i.i.sw.epilog_crit_edge:                 ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i.sw.epilog.sink.split_crit_edge:      ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val2, align 4
  %17 = trunc i32 %16 to i16
  %18 = lshr i16 %17, 8
  %dev1.i.i23 = getelementptr i8, ptr %1, i32 -100
  %19 = ptrtoint ptr %dev1.i.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i.i23, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i.i24 = shl i32 %22, 8
  %or.i.i25 = or i32 %shl.i.i.i24, -2147483648
  %call2.i.i26 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i.i25, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %18, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp.i.i27 = icmp sgt i32 %23, 6
  br i1 %cmp.i.i27, label %do.end.i.i31, label %sw.bb1.do.end10.i.i33_crit_edge

sw.bb1.do.end10.i.i33_crit_edge:                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i33

do.end.i.i31:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i28 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i29 = zext i16 %18 to i32
  %call8.i.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i.i28, i32 noundef 0, i32 noundef 0, i32 noundef %conv7.i.i29) #8
  br label %do.end10.i.i33

do.end10.i.i33:                                   ; preds = %do.end.i.i31, %sw.bb1.do.end10.i.i33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i26)
  %cmp11.i.i32 = icmp slt i32 %call2.i.i26, 0
  br i1 %cmp11.i.i32, label %do.end16.i.i35, label %do.end10.i.i33.reg_write.exit.i_crit_edge

do.end10.i.i33.reg_write.exit.i_crit_edge:        ; preds = %do.end10.i.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit.i

do.end16.i.i35:                                   ; preds = %do.end10.i.i33
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i26) #8
  br label %reg_write.exit.i

reg_write.exit.i:                                 ; preds = %do.end16.i.i35, %do.end10.i.i33.reg_write.exit.i_crit_edge
  %conv2.i = and i16 %17, 255
  %24 = ptrtoint ptr %dev1.i.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i.i23, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i7.i = shl i32 %27, 8
  %or.i8.i = or i32 %shl.i.i7.i, -2147483648
  %call2.i9.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i8.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv2.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp.i10.i = icmp sgt i32 %28, 6
  br i1 %cmp.i10.i, label %do.end.i14.i, label %reg_write.exit.i.do.end10.i16.i_crit_edge

reg_write.exit.i.do.end10.i16.i_crit_edge:        ; preds = %reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i16.i

do.end.i14.i:                                     ; preds = %reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i11.i = getelementptr i8, ptr %1, i32 -168
  %conv7.i12.i = zext i16 %conv2.i to i32
  %call8.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i11.i, i32 noundef 0, i32 noundef 1, i32 noundef %conv7.i12.i) #8
  br label %do.end10.i16.i

do.end10.i16.i:                                   ; preds = %do.end.i14.i, %reg_write.exit.i.do.end10.i16.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i9.i)
  %cmp11.i15.i = icmp slt i32 %call2.i9.i, 0
  br i1 %cmp11.i15.i, label %do.end10.i16.i.sw.epilog.sink.split_crit_edge, label %do.end10.i16.i.sw.epilog_crit_edge

do.end10.i16.i.sw.epilog_crit_edge:               ; preds = %do.end10.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i16.i.sw.epilog.sink.split_crit_edge:    ; preds = %do.end10.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val4, align 4
  %conv.i36 = trunc i32 %30 to i16
  %dev1.i.i37 = getelementptr i8, ptr %1, i32 -100
  %31 = ptrtoint ptr %dev1.i.i37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i.i37, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i.i38 = shl i32 %34, 8
  %or.i.i39 = or i32 %shl.i.i.i38, -2147483648
  %call2.i.i40 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i.i39, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i36, i16 noundef zeroext 12, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %35 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp.i.i41 = icmp sgt i32 %35, 6
  br i1 %cmp.i.i41, label %do.end.i.i45, label %sw.bb3.do.end10.i.i47_crit_edge

sw.bb3.do.end10.i.i47_crit_edge:                  ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i47

do.end.i.i45:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i42 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i43 = and i32 %30, 65535
  %call8.i.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i.i42, i32 noundef 1, i32 noundef 12, i32 noundef %conv7.i.i43) #8
  br label %do.end10.i.i47

do.end10.i.i47:                                   ; preds = %do.end.i.i45, %sw.bb3.do.end10.i.i47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i40)
  %cmp11.i.i46 = icmp slt i32 %call2.i.i40, 0
  br i1 %cmp11.i.i46, label %do.end10.i.i47.sw.epilog.sink.split_crit_edge, label %do.end10.i.i47.sw.epilog_crit_edge

do.end10.i.i47.sw.epilog_crit_edge:               ; preds = %do.end10.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i47.sw.epilog.sink.split_crit_edge:    ; preds = %do.end10.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val6, align 4
  %conv.i51 = trunc i32 %37 to i16
  %dev1.i.i52 = getelementptr i8, ptr %1, i32 -100
  %38 = ptrtoint ptr %dev1.i.i52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1.i.i52, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i.i53 = shl i32 %41, 8
  %or.i.i54 = or i32 %shl.i.i.i53, -2147483648
  %call2.i.i55 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i.i54, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i51, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %42 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp.i.i56 = icmp sgt i32 %42, 6
  br i1 %cmp.i.i56, label %do.end.i.i60, label %sw.bb5.do.end10.i.i62_crit_edge

sw.bb5.do.end10.i.i62_crit_edge:                  ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i62

do.end.i.i60:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i57 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i58 = and i32 %37, 65535
  %call8.i.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i.i57, i32 noundef 1, i32 noundef 17, i32 noundef %conv7.i.i58) #8
  br label %do.end10.i.i62

do.end10.i.i62:                                   ; preds = %do.end.i.i60, %sw.bb5.do.end10.i.i62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i55)
  %cmp11.i.i61 = icmp slt i32 %call2.i.i55, 0
  br i1 %cmp11.i.i61, label %do.end10.i.i62.sw.epilog.sink.split_crit_edge, label %do.end10.i.i62.sw.epilog_crit_edge

do.end10.i.i62.sw.epilog_crit_edge:               ; preds = %do.end10.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i62.sw.epilog.sink.split_crit_edge:    ; preds = %do.end10.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %43 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val8, align 4
  %conv.i66 = trunc i32 %44 to i16
  %dev1.i.i67 = getelementptr i8, ptr %1, i32 -100
  %45 = ptrtoint ptr %dev1.i.i67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1.i.i67, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i.i.i68 = shl i32 %48, 8
  %or.i.i69 = or i32 %shl.i.i.i68, -2147483648
  %call2.i.i70 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or.i.i69, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i66, i16 noundef zeroext 19, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %49)
  %cmp.i.i71 = icmp sgt i32 %49, 6
  br i1 %cmp.i.i71, label %do.end.i.i75, label %sw.bb7.do.end10.i.i77_crit_edge

sw.bb7.do.end10.i.i77_crit_edge:                  ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i77

do.end.i.i75:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i72 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i73 = and i32 %44, 65535
  %call8.i.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i.i72, i32 noundef 1, i32 noundef 19, i32 noundef %conv7.i.i73) #8
  br label %do.end10.i.i77

do.end10.i.i77:                                   ; preds = %do.end.i.i75, %sw.bb7.do.end10.i.i77_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i70)
  %cmp11.i.i76 = icmp slt i32 %call2.i.i70, 0
  br i1 %cmp11.i.i76, label %do.end10.i.i77.sw.epilog.sink.split_crit_edge, label %do.end10.i.i77.sw.epilog_crit_edge

do.end10.i.i77.sw.epilog_crit_edge:               ; preds = %do.end10.i.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i77.sw.epilog.sink.split_crit_edge:    ; preds = %do.end10.i.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end10.i.i77.sw.epilog.sink.split_crit_edge, %do.end10.i.i62.sw.epilog.sink.split_crit_edge, %do.end10.i.i47.sw.epilog.sink.split_crit_edge, %do.end10.i16.i.sw.epilog.sink.split_crit_edge, %do.end10.i.i.sw.epilog.sink.split_crit_edge
  %call2.i.i70.sink = phi i32 [ %call2.i.i, %do.end10.i.i.sw.epilog.sink.split_crit_edge ], [ %call2.i9.i, %do.end10.i16.i.sw.epilog.sink.split_crit_edge ], [ %call2.i.i40, %do.end10.i.i47.sw.epilog.sink.split_crit_edge ], [ %call2.i.i55, %do.end10.i.i62.sw.epilog.sink.split_crit_edge ], [ %call2.i.i70, %do.end10.i.i77.sw.epilog.sink.split_crit_edge ]
  %call18.i.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i70.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end10.i.i77.sw.epilog_crit_edge, %do.end10.i.i62.sw.epilog_crit_edge, %do.end10.i.i47.sw.epilog_crit_edge, %do.end10.i16.i.sw.epilog_crit_edge, %do.end10.i.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %50 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %51, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/spca501.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/spca501.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/spca501.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_spca501__307_2036_sd_driver_init6, !8, !"__initcall__kmod_gspca_spca501__307_2036_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/spca501.c", i32 2036, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/spca501.c", i32 2025, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/spca501.c", i32 2024, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1992, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/spca501.c", i32 38, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1845, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1772, i32 4}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @write_vector._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @write_vector._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1756, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @reg_write._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @reg_write._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1759, i32 3}
!37 = !{ptr @reg_write._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @reg_write._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @spca501c_arowana_init_data, !40, !"spca501c_arowana_init_data", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/spca501.c", i32 610, i32 20}
!41 = !{ptr @spca501c_mysterious_open_data, !42, !"spca501c_mysterious_open_data", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1544, i32 20}
!43 = !{ptr @spca501_init_data, !44, !"spca501_init_data", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/spca501.c", i32 206, i32 20}
!45 = !{ptr @sd_init_controls._key, !46, !"_key", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1972, i32 2}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1985, i32 3}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sd_init_controls._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @sd_init_controls._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @sd_ctrl_ops, !54, !"sd_ctrl_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1963, i32 35}
!55 = !{ptr @spca501_3com_open_data, !56, !"spca501_3com_open_data", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/spca501.c", i32 493, i32 20}
!57 = !{ptr @spca501c_arowana_open_data, !58, !"spca501c_arowana_open_data", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/spca501.c", i32 588, i32 20}
!59 = !{ptr @spca501c_mysterious_init_data, !60, !"spca501c_mysterious_init_data", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/spca501.c", i32 1595, i32 20}
!61 = !{ptr @spca501_open_data, !62, !"spca501_open_data", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/spca501.c", i32 100, i32 20}
!63 = !{ptr @device_table, !64, !"device_table", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/spca501.c", i32 2004, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
