; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/sunplus.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/sunplus.c"
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
%struct.cmd = type { i8, i16, i16 }
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
%struct.sd = type { %struct.gspca_dev, i8, i8, i8, [589 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [67 x i8] c"gspca_sunplus.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_sunplus.description=GSPCA/SPCA5xx USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_sunplus.file=drivers/media/usb/gspca/gspca_sunplus\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_sunplus.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_sunplus__307_1073_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_sunplus\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sunplus\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [61 x %struct.usb_device_id], [360 x i8] } { [61 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1054, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 1054, i16 16402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 1054, i16 16403, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 1112, i16 28678, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1121, i16 2081, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1133, i16 2309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 771 }, %struct.usb_device_id { i16 3, i16 1133, i16 2400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 514 }, %struct.usb_device_id { i16 3, i16 1137, i16 802, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1189, i16 12291, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1189, i16 12296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1189, i16 12298, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1265, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1276, i16 20492, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1276, i16 20554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1276, i16 20555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1276, i16 21296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1276, i16 21344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1276, i16 -1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1323, i16 5383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 772 }, %struct.usb_device_id { i16 3, i16 1323, i16 5395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 772 }, %struct.usb_device_id { i16 3, i16 1323, i16 6147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 773 }, %struct.usb_device_id { i16 3, i16 1350, i16 12629, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1350, i16 12689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1350, i16 12915, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15855, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15824, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15822, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15072, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15056, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15040, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1375, i16 -14800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1375, i16 -14768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1498, i16 4120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1750, i16 49, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1750, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 1843, i16 4881, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1843, i16 4884, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1843, i16 8721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1843, i16 8737, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 1843, i16 12897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 1843, i16 12929, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2250, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 2250, i16 262, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 2250, i16 8200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 2250, i16 8208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 2250, i16 8214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 2250, i16 8216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 2250, i16 8224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 2250, i16 8226, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 2250, i16 8228, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2250, i16 8232, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 768 }, %struct.usb_device_id { i16 3, i16 2250, i16 8256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2250, i16 8258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2250, i16 8272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 2250, i16 8288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id { i16 3, i16 3428, i16 771, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1024 }, %struct.usb_device_id zeroinitializer], [360 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@custom_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 464, i32 480, i32 1195724874, i32 1, i32 464, i32 84110, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@vga_mode2 = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 1195724874, i32 1, i32 176, i32 10094, i32 7, i32 4, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 3, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1195724874, i32 1, i32 352, i32 38606, i32 7, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: reg_r: buffer overflow\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/sunplus.c\00", [62 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: reg_r: zero-length read\0A\00", [33 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.7 = internal global ptr @reg_r._entry.5, section ".printk_index", align 4
@reg_r._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gspca_sunplus: reg_r err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.10 = internal global ptr @reg_r._entry.8, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Opening SPCA504 (PC-CAM 600)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@spca504A_clicksmart420_open_data = internal constant { [6 x %struct.cmd], [60 x i8] } { [6 x %struct.cmd] [%struct.cmd { i8 0, i16 1, i16 9473 }, %struct.cmd { i8 32, i16 1282, i16 0 }, %struct.cmd { i8 6, i16 0, i16 0 }, %struct.cmd { i8 0, i16 4, i16 10368 }, %struct.cmd { i8 0, i16 1, i16 10369 }, %struct.cmd { i8 -96, i16 0, i16 1283 }], [60 x i8] zeroinitializer }, align 32
@qtable_creative_pccam = internal constant { [2 x [64 x i8]], [32 x i8] } { [2 x [64 x i8]] [[64 x i8] c"\05\03\03\05\07\0C\0F\12\04\04\04\06\08\11\12\11\04\04\05\07\0C\11\15\11\04\05\07\09\0F\1A\18\13\05\07\0B\11\14!\1F\17\07\0B\11\13\18\1F\22\1C\0F\13\17\1A\1F$$\1E\16\1C\1D\1D\22\1E\1F\1E", [64 x i8] c"\05\05\07\0E\1E\1E\1E\1E\05\06\08\14\1E\1E\1E\1E\07\08\11\1E\1E\1E\1E\1E\0E\14\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E"], [32 x i8] zeroinitializer }, align 32
@sd_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Opening SPCA504\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.15 = internal global ptr @sd_init._entry.13, section ".printk_index", align 4
@qtable_spca504_default = internal constant { [2 x [64 x i8]], [32 x i8] } { [2 x [64 x i8]] [[64 x i8] c"\05\03\03\05\07\0C\0F\12\04\04\04\06\08\11\12\11\04\04\05\07\0C\11\15\11\04\05\07\09\0F\1A\18\13\05\07\0B\11\14!\1F\17\07\0B\11\13\18\1F\22\1C\0F\13\17\1A\1F$$\1E\16\1C\1D\1D\1D\1E\1F\1E", [64 x i8] c"\05\05\07\0E\1E\1E\1E\1E\05\06\08\14\1E\1E\1E\1E\07\08\11\1E\1E\1E\1E\1E\0E\14\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E"], [32 x i8] zeroinitializer }, align 32
@reg_w_riv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013gspca_sunplus: reg_w_riv err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_w_riv\00", [22 x i8] zeroinitializer }, align 32
@reg_w_riv._entry_ptr = internal global ptr @reg_w_riv._entry, section ".printk_index", align 4
@reg_w_riv._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: reg_w_riv: 0x%02x,0x%04x:0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@reg_w_riv._entry_ptr.20 = internal global ptr @reg_w_riv._entry.18, section ".printk_index", align 4
@spca50x_GetFirmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: FirmWare: %d %d %d %d %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spca50x_GetFirmware\00", [44 x i8] zeroinitializer }, align 32
@spca50x_GetFirmware._entry_ptr = internal global ptr @spca50x_GetFirmware._entry, section ".printk_index", align 4
@reg_w_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013gspca_sunplus: reg_w_1 err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reg_w_1\00", [24 x i8] zeroinitializer }, align 32
@reg_w_1._entry_ptr = internal global ptr @reg_w_1._entry, section ".printk_index", align 4
@spca504_read_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: Read info: %d %d %d %d %d %d. Should be 1,0,2,2,0,0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spca504_read_info\00", [46 x i8] zeroinitializer }, align 32
@spca504_read_info._entry_ptr = internal global ptr @spca504_read_info._entry, section ".printk_index", align 4
@spca504A_acknowledged_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Status 0x%02x Need 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spca504A_acknowledged_command\00", [34 x i8] zeroinitializer }, align 32
@spca504A_acknowledged_command._entry_ptr = internal global ptr @spca504A_acknowledged_command._entry, section ".printk_index", align 4
@spca504A_acknowledged_command._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: status 0x%04x after wait %d\0A\00", [61 x i8] zeroinitializer }, align 32
@spca504A_acknowledged_command._entry_ptr.31 = internal global ptr @spca504A_acknowledged_command._entry.29, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sunplus:956:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_sunplus: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@spca504A_clicksmart420_init_data = internal constant { [21 x %struct.cmd], [34 x i8] } { [21 x %struct.cmd] [%struct.cmd { i8 0, i16 0, i16 8192 }, %struct.cmd { i8 0, i16 19, i16 8961 }, %struct.cmd { i8 0, i16 3, i16 8192 }, %struct.cmd { i8 0, i16 1, i16 8620 }, %struct.cmd { i8 0, i16 1, i16 8614 }, %struct.cmd { i8 0, i16 0, i16 8615 }, %struct.cmd { i8 0, i16 32, i16 8616 }, %struct.cmd { i8 0, i16 1, i16 8620 }, %struct.cmd { i8 0, i16 0, i16 8621 }, %struct.cmd { i8 0, i16 26, i16 8622 }, %struct.cmd { i8 0, i16 2, i16 8611 }, %struct.cmd { i8 48, i16 4, i16 10 }, %struct.cmd { i8 -80, i16 1, i16 0 }, %struct.cmd { i8 -95, i16 128, i16 1 }, %struct.cmd { i8 48, i16 73, i16 0 }, %struct.cmd { i8 48, i16 96, i16 5 }, %struct.cmd { i8 12, i16 4, i16 0 }, %struct.cmd zeroinitializer, %struct.cmd { i8 0, i16 0, i16 8192 }, %struct.cmd { i8 0, i16 19, i16 8961 }, %struct.cmd { i8 0, i16 3, i16 8192 }], [34 x i8] zeroinitializer }, align 32
@spca504_pccam600_init_data = internal constant { [22 x %struct.cmd], [60 x i8] } { [22 x %struct.cmd] [%struct.cmd { i8 0, i16 0, i16 8192 }, %struct.cmd { i8 0, i16 19, i16 8961 }, %struct.cmd { i8 0, i16 3, i16 8192 }, %struct.cmd { i8 0, i16 1, i16 8620 }, %struct.cmd { i8 0, i16 1, i16 8614 }, %struct.cmd { i8 0, i16 0, i16 8615 }, %struct.cmd { i8 0, i16 32, i16 8616 }, %struct.cmd { i8 0, i16 1, i16 8620 }, %struct.cmd { i8 0, i16 0, i16 8621 }, %struct.cmd { i8 0, i16 26, i16 8622 }, %struct.cmd { i8 0, i16 2, i16 8611 }, %struct.cmd { i8 48, i16 340, i16 8 }, %struct.cmd { i8 48, i16 4, i16 6 }, %struct.cmd { i8 48, i16 600, i16 9 }, %struct.cmd { i8 48, i16 4, i16 0 }, %struct.cmd { i8 48, i16 147, i16 4 }, %struct.cmd { i8 48, i16 102, i16 5 }, %struct.cmd { i8 0, i16 0, i16 8192 }, %struct.cmd { i8 0, i16 19, i16 8961 }, %struct.cmd { i8 0, i16 3, i16 8192 }, %struct.cmd { i8 0, i16 19, i16 8961 }, %struct.cmd { i8 0, i16 3, i16 8192 }], [60 x i8] zeroinitializer }, align 32
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@spca504_acknowledged_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: before wait 0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"spca504_acknowledged_command\00", [35 x i8] zeroinitializer }, align 32
@spca504_acknowledged_command._entry_ptr = internal global ptr @spca504_acknowledged_command._entry, section ".printk_index", align 4
@spca504_acknowledged_command._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: after wait 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@spca504_acknowledged_command._entry_ptr.39 = internal global ptr @spca504_acknowledged_command._entry.37, section ".printk_index", align 4
@sd_pkt_scan.ffd9 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\D9", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963794]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1061, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1073, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1062, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 988, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 974, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 44, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"custom_mode\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 57, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"vga_mode2\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 70, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 242, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 246, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 260, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 656, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [33 x i8] c"spca504A_clicksmart420_open_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 176, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"qtable_creative_pccam\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 186, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 671, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"qtable_spca504_default\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 211, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 310, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 314, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 440, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 290, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 368, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 384, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 396, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 956, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 947, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 967, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [33 x i8] c"spca504A_clicksmart420_init_data\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 149, i32 25 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"spca504_pccam600_init_data\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 112, i32 25 }
@___asan_gen_.203 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 19, i32 17 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 346, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 352, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [5 x i8] c"ffd9\00", align 1
@___asan_gen_.222 = private constant [37 x i8] c"../drivers/media/usb/gspca/sunplus.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 831, i32 12 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_sunplus__307_1073_sd_driver_init6, ptr @reg_r._entry, ptr @reg_r._entry.5, ptr @reg_r._entry.8, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.10, ptr @reg_r._entry_ptr.7, ptr @reg_w_1._entry, ptr @reg_w_1._entry_ptr, ptr @reg_w_riv._entry, ptr @reg_w_riv._entry.18, ptr @reg_w_riv._entry_ptr, ptr @reg_w_riv._entry_ptr.20, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.13, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.15, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @spca504A_acknowledged_command._entry, ptr @spca504A_acknowledged_command._entry.29, ptr @spca504A_acknowledged_command._entry_ptr, ptr @spca504A_acknowledged_command._entry_ptr.31, ptr @spca504_acknowledged_command._entry, ptr @spca504_acknowledged_command._entry.37, ptr @spca504_acknowledged_command._entry_ptr, ptr @spca504_acknowledged_command._entry_ptr.39, ptr @spca504_read_info._entry, ptr @spca504_read_info._entry_ptr, ptr @spca50x_GetFirmware._entry, ptr @spca50x_GetFirmware._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @custom_mode, ptr @vga_mode2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @spca504A_clicksmart420_open_data, ptr @qtable_creative_pccam, ptr @.str.14, ptr @qtable_spca504_default, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @sd_init_controls._key, ptr @.str.32, ptr @sd_ctrl_ops, ptr @.str.33, ptr @.str.34, ptr @spca504A_clicksmart420_init_data, ptr @spca504_pccam600_init_data, ptr @jpeg_head, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @sd_pkt_scan.ffd9], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @custom_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode2 to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca504A_clicksmart420_open_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtable_creative_pccam to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtable_spca504_default to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_riv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_riv._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca50x_GetFirmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca504_read_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca504A_acknowledged_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca504A_acknowledged_command._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca504A_clicksmart420_init_data to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca504_pccam600_init_data to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca504_acknowledged_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca504_acknowledged_command._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan.ffd9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3200, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %shr = lshr i32 %1, 8
  %conv = trunc i32 %shr to i8
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %bridge, align 1
  %3 = load i32, ptr %driver_info, align 4
  %conv3 = trunc i32 %3 to i8
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %subtype, align 2
  %conv5 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv5)
  %cmp = icmp eq i32 %conv5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %5 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp15.i = icmp slt i32 %6, 0
  br i1 %cmp15.i, label %if.then.reg_r.exit_crit_edge, label %if.end18.i

if.then.reg_r.exit_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end18.i:                                       ; preds = %if.then
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or21.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or21.i, i8 noundef zeroext 32, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %12, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end18.i.reg_r.exit_crit_edge

if.end18.i.reg_r.exit_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i) #8
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call22.i, ptr %usb_err.i, align 8
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end28.i, %if.end18.i.reg_r.exit_crit_edge, %if.then.reg_r.exit_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %17 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %reg_r.exit.cleanup_crit_edge [
    i8 1, label %reg_r.exit.if.end_crit_edge
    i8 2, label %if.end.thread
  ]

reg_r.exit.if.end_crit_edge:                      ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.thread:                                    ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bridge, align 1
  %23 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %subtype, align 2
  br label %sw.default12

if.end:                                           ; preds = %reg_r.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr = load i8, ptr %bridge, align 1
  %25 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %.pr, label %if.end.sw.default12_crit_edge [
    i8 3, label %sw.bb13
    i8 2, label %sw.bb23
  ]

if.end.sw.default12_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default12

sw.default12:                                     ; preds = %if.end.sw.default12_crit_edge, %if.end.thread
  %26 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %nmodes, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %28 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @custom_mode, ptr %cam1, align 4
  %29 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %30)
  %cmp17 = icmp eq i8 %30, 5
  %nmodes20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %nmodes20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %nmodes20, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %nmodes20 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %nmodes20, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @vga_mode2, ptr %cam1, align 4
  %nmodes25 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %nmodes25 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %nmodes25, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb23, %if.else, %if.then19, %sw.default12, %reg_r.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %reg_r.exit.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.else ], [ 0, %sw.bb23 ], [ 0, %sw.default12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %1, label %do.body13 [
    i8 1, label %sw.bb
    i8 3, label %entry.sw.bb1_crit_edge
    i8 4, label %sw.bb2
    i8 2, label %do.body
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %sw.bb.sw.bb1_crit_edge, label %if.end.i

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

if.end.i:                                         ; preds = %sw.bb
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i) #8
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %sw.bb1

do.body8.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp9.i = icmp sgt i32 %10, 6
  br i1 %cmp9.i, label %do.end13.i, label %do.body8.i.reg_w_riv.exit_crit_edge

do.body8.i.reg_w_riv.exit_crit_edge:              ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 29, i32 noundef 0, i32 noundef 0) #8
  br label %reg_w_riv.exit

reg_w_riv.exit:                                   ; preds = %do.end13.i, %do.body8.i.reg_w_riv.exit_crit_edge
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i72 = icmp slt i32 %.pr, 0
  br i1 %cmp.i72, label %reg_w_riv.exit.sw.bb1_crit_edge, label %if.end.i78

reg_w_riv.exit.sw.bb1_crit_edge:                  ; preds = %reg_w_riv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

if.end.i78:                                       ; preds = %reg_w_riv.exit
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i74 = shl i32 %15, 8
  %or.i75 = or i32 %shl.i.i74, -2147483648
  %call2.i76 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i75, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 8966, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i76)
  %cmp3.i77 = icmp slt i32 %call2.i76, 0
  br i1 %cmp3.i77, label %do.end.i80, label %do.body8.i82

do.end.i80:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i76) #8
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call2.i76, ptr %usb_err.i, align 8
  br label %sw.bb1

do.body8.i82:                                     ; preds = %if.end.i78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %17 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp9.i81 = icmp sgt i32 %17, 6
  br i1 %cmp9.i81, label %do.end13.i85, label %do.body8.i82.reg_w_riv.exit86_crit_edge

do.body8.i82.reg_w_riv.exit86_crit_edge:          ; preds = %do.body8.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit86

do.end13.i85:                                     ; preds = %do.body8.i82
  call void @__sanitizer_cov_trace_pc() #7
  %name.i83 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i83, i32 noundef 0, i32 noundef 8966, i32 noundef 1) #8
  br label %reg_w_riv.exit86

reg_w_riv.exit86:                                 ; preds = %do.end13.i85, %do.body8.i82.reg_w_riv.exit86_crit_edge
  %18 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr357.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr357.pr)
  %cmp.i88 = icmp slt i32 %.pr357.pr, 0
  br i1 %cmp.i88, label %reg_w_riv.exit86.sw.bb1_crit_edge, label %if.end.i94

reg_w_riv.exit86.sw.bb1_crit_edge:                ; preds = %reg_w_riv.exit86
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

if.end.i94:                                       ; preds = %reg_w_riv.exit86
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i90 = shl i32 %22, 8
  %or.i91 = or i32 %shl.i.i90, -2147483648
  %call2.i92 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i91, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3332, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i92)
  %cmp3.i93 = icmp slt i32 %call2.i92, 0
  br i1 %cmp3.i93, label %do.end.i96, label %do.body8.i98

do.end.i96:                                       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i92) #8
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2.i92, ptr %usb_err.i, align 8
  br label %sw.bb1

do.body8.i98:                                     ; preds = %if.end.i94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp9.i97 = icmp sgt i32 %24, 6
  br i1 %cmp9.i97, label %do.end13.i101, label %do.body8.i98.reg_w_riv.exit102_crit_edge

do.body8.i98.reg_w_riv.exit102_crit_edge:         ; preds = %do.body8.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit102

do.end13.i101:                                    ; preds = %do.body8.i98
  call void @__sanitizer_cov_trace_pc() #7
  %name.i99 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i99, i32 noundef 0, i32 noundef 3332, i32 noundef 0) #8
  br label %reg_w_riv.exit102

reg_w_riv.exit102:                                ; preds = %do.end13.i101, %do.body8.i98.reg_w_riv.exit102_crit_edge
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr359.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr359.pr)
  %cmp.i104 = icmp slt i32 %.pr359.pr, 0
  br i1 %cmp.i104, label %reg_w_riv.exit102.sw.bb1_crit_edge, label %if.end.i110

reg_w_riv.exit102.sw.bb1_crit_edge:               ; preds = %reg_w_riv.exit102
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

if.end.i110:                                      ; preds = %reg_w_riv.exit102
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i106 = shl i32 %29, 8
  %or.i107 = or i32 %shl.i.i106, -2147483648
  %call2.i108 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i107, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8192, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i108)
  %cmp3.i109 = icmp slt i32 %call2.i108, 0
  br i1 %cmp3.i109, label %do.end.i112, label %do.body8.i114

do.end.i112:                                      ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i108) #8
  %30 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call2.i108, ptr %usb_err.i, align 8
  br label %sw.bb1

do.body8.i114:                                    ; preds = %if.end.i110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp9.i113 = icmp sgt i32 %31, 6
  br i1 %cmp9.i113, label %do.end13.i117, label %do.body8.i114.reg_w_riv.exit118_crit_edge

do.body8.i114.reg_w_riv.exit118_crit_edge:        ; preds = %do.body8.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit118

do.end13.i117:                                    ; preds = %do.body8.i114
  call void @__sanitizer_cov_trace_pc() #7
  %name.i115 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i115, i32 noundef 0, i32 noundef 8192, i32 noundef 0) #8
  br label %reg_w_riv.exit118

reg_w_riv.exit118:                                ; preds = %do.end13.i117, %do.body8.i114.reg_w_riv.exit118_crit_edge
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr361.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr361.pr.pr)
  %cmp.i120 = icmp slt i32 %.pr361.pr.pr, 0
  br i1 %cmp.i120, label %reg_w_riv.exit118.sw.bb1_crit_edge, label %if.end.i126

reg_w_riv.exit118.sw.bb1_crit_edge:               ; preds = %reg_w_riv.exit118
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

if.end.i126:                                      ; preds = %reg_w_riv.exit118
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i122 = shl i32 %36, 8
  %or.i123 = or i32 %shl.i.i122, -2147483648
  %call2.i124 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i123, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 19, i16 noundef zeroext 8961, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i124)
  %cmp3.i125 = icmp slt i32 %call2.i124, 0
  br i1 %cmp3.i125, label %do.end.i128, label %do.body8.i130

do.end.i128:                                      ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i124) #8
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call2.i124, ptr %usb_err.i, align 8
  br label %sw.bb1

do.body8.i130:                                    ; preds = %if.end.i126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp9.i129 = icmp sgt i32 %38, 6
  br i1 %cmp9.i129, label %do.end13.i133, label %do.body8.i130.reg_w_riv.exit134_crit_edge

do.body8.i130.reg_w_riv.exit134_crit_edge:        ; preds = %do.body8.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit134

do.end13.i133:                                    ; preds = %do.body8.i130
  call void @__sanitizer_cov_trace_pc() #7
  %name.i131 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i131, i32 noundef 0, i32 noundef 8961, i32 noundef 19) #8
  br label %reg_w_riv.exit134

reg_w_riv.exit134:                                ; preds = %do.end13.i133, %do.body8.i130.reg_w_riv.exit134_crit_edge
  %39 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr363.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr363.pr.pr)
  %cmp.i136 = icmp slt i32 %.pr363.pr.pr, 0
  br i1 %cmp.i136, label %reg_w_riv.exit134.sw.bb1_crit_edge, label %if.end.i142

reg_w_riv.exit134.sw.bb1_crit_edge:               ; preds = %reg_w_riv.exit134
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

if.end.i142:                                      ; preds = %reg_w_riv.exit134
  %40 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i138 = shl i32 %43, 8
  %or.i139 = or i32 %shl.i.i138, -2147483648
  %call2.i140 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or.i139, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8966, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i140)
  %cmp3.i141 = icmp slt i32 %call2.i140, 0
  br i1 %cmp3.i141, label %do.end.i144, label %do.body8.i146

do.end.i144:                                      ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i140) #8
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call2.i140, ptr %usb_err.i, align 8
  br label %sw.bb1

do.body8.i146:                                    ; preds = %if.end.i142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %45 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %45)
  %cmp9.i145 = icmp sgt i32 %45, 6
  br i1 %cmp9.i145, label %do.end13.i149, label %do.body8.i146.sw.bb1_crit_edge

do.body8.i146.sw.bb1_crit_edge:                   ; preds = %do.body8.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

do.end13.i149:                                    ; preds = %do.body8.i146
  call void @__sanitizer_cov_trace_pc() #7
  %name.i147 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i147, i32 noundef 0, i32 noundef 8966, i32 noundef 0) #8
  br label %sw.bb1

sw.bb1:                                           ; preds = %do.end13.i149, %do.body8.i146.sw.bb1_crit_edge, %do.end.i144, %reg_w_riv.exit134.sw.bb1_crit_edge, %do.end.i128, %reg_w_riv.exit118.sw.bb1_crit_edge, %do.end.i112, %reg_w_riv.exit102.sw.bb1_crit_edge, %do.end.i96, %reg_w_riv.exit86.sw.bb1_crit_edge, %do.end.i80, %reg_w_riv.exit.sw.bb1_crit_edge, %do.end.i, %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i151.while.body.i_crit_edge, %sw.bb1
  %dec4.i = phi i32 [ 9, %sw.bb1 ], [ %dec.i, %if.end.i151.while.body.i_crit_edge ]
  %46 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp15.i.i = icmp slt i32 %47, 0
  br i1 %cmp15.i.i, label %while.body.i.reg_r.exit.i_crit_edge, label %if.end18.i.i

while.body.i.reg_r.exit.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

if.end18.i.i:                                     ; preds = %while.body.i
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i.i = shl i32 %51, 8
  %or21.i.i = or i32 %shl.i.i.i, -2147483520
  %52 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i.i, align 4
  %call22.i.i = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or21.i.i, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %53, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %do.end28.i.i, label %if.end18.i.i.reg_r.exit.i_crit_edge

if.end18.i.i.reg_r.exit.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end28.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i) #8
  %54 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call22.i.i, ptr %usb_err.i.i, align 8
  %55 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb_buf.i.i, align 4
  %57 = call ptr @memset(ptr %56, i32 0, i32 64)
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end28.i.i, %if.end18.i.i.reg_r.exit.i_crit_edge, %while.body.i.reg_r.exit.i_crit_edge
  %58 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp1.i = icmp eq i8 %62, 0
  br i1 %cmp1.i, label %reg_r.exit.i.spca504B_PollingDataReady.exit_crit_edge, label %if.end.i151

reg_r.exit.i.spca504B_PollingDataReady.exit_crit_edge: ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504B_PollingDataReady.exit

if.end.i151:                                      ; preds = %reg_r.exit.i
  tail call void @msleep(i32 noundef 10) #5
  %dec.i = add nsw i32 %dec4.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i151.spca504B_PollingDataReady.exit_crit_edge, label %if.end.i151.while.body.i_crit_edge

if.end.i151.while.body.i_crit_edge:               ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i151.spca504B_PollingDataReady.exit_crit_edge: ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504B_PollingDataReady.exit

spca504B_PollingDataReady.exit:                   ; preds = %if.end.i151.spca504B_PollingDataReady.exit_crit_edge, %reg_r.exit.i.spca504B_PollingDataReady.exit_crit_edge
  tail call fastcc void @spca50x_GetFirmware(ptr noundef %gspca_dev)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call fastcc void @spca50x_GetFirmware(ptr noundef %gspca_dev)
  %usb_err.i152 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %63 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usb_err.i152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp15.i = icmp slt i32 %64, 0
  br i1 %cmp15.i, label %sw.bb2.reg_r.exit173_crit_edge, label %if.end18.i

sw.bb2.reg_r.exit173_crit_edge:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit173

if.end18.i:                                       ; preds = %sw.bb2
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i153 = shl i32 %68, 8
  %or21.i = or i32 %shl.i.i153, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %69 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_buf.i, align 4
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or21.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 20482, ptr noundef %70, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end18.i.reg_r.exit_crit_edge

if.end18.i.reg_r.exit_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i) #8
  %71 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call22.i, ptr %usb_err.i152, align 8
  %72 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %usb_buf.i, align 4
  %74 = call ptr @memset(ptr %73, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end28.i, %if.end18.i.reg_r.exit_crit_edge
  %75 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr365 = load i32, ptr %usb_err.i152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr365)
  %cmp.i155 = icmp slt i32 %.pr365, 0
  br i1 %cmp.i155, label %reg_r.exit.reg_r.exit173_crit_edge, label %if.end.i160

reg_r.exit.reg_r.exit173_crit_edge:               ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit173

if.end.i160:                                      ; preds = %reg_r.exit
  %76 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %77, align 1
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %shl.i.i158 = shl i32 %82, 8
  %or.i159 = or i32 %shl.i.i158, -2147483648
  %83 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %80, i32 noundef %or.i159, i8 noundef zeroext 36, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %83, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i161, label %reg_w_1.exit

do.end.i161:                                      ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call3.i) #8
  %84 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call3.i, ptr %usb_err.i152, align 8
  br label %reg_r.exit173

reg_w_1.exit:                                     ; preds = %if.end.i160
  %85 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr367 = load i32, ptr %usb_err.i152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr367)
  %cmp15.i163 = icmp slt i32 %.pr367, 0
  br i1 %cmp15.i163, label %reg_w_1.exit.reg_r.exit173_crit_edge, label %if.end18.i170

reg_w_1.exit.reg_r.exit173_crit_edge:             ; preds = %reg_w_1.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit173

if.end18.i170:                                    ; preds = %reg_w_1.exit
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 8
  %shl.i.i165 = shl i32 %89, 8
  %or21.i166 = or i32 %shl.i.i165, -2147483520
  %90 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %usb_buf.i, align 4
  %call22.i168 = tail call i32 @usb_control_msg(ptr noundef %87, i32 noundef %or21.i166, i8 noundef zeroext 36, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %91, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i168)
  %cmp23.i169 = icmp slt i32 %call22.i168, 0
  br i1 %cmp23.i169, label %do.end28.i172, label %if.end18.i170.reg_r.exit173_crit_edge

if.end18.i170.reg_r.exit173_crit_edge:            ; preds = %if.end18.i170
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit173

do.end28.i172:                                    ; preds = %if.end18.i170
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i168) #8
  %92 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call22.i168, ptr %usb_err.i152, align 8
  %93 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %usb_buf.i, align 4
  %95 = call ptr @memset(ptr %94, i32 0, i32 64)
  br label %reg_r.exit173

reg_r.exit173:                                    ; preds = %do.end28.i172, %if.end18.i170.reg_r.exit173_crit_edge, %reg_w_1.exit.reg_r.exit173_crit_edge, %do.end.i161, %reg_r.exit.reg_r.exit173_crit_edge, %sw.bb2.reg_r.exit173_crit_edge
  %dev.i.i175 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i176 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i179

while.body.i179:                                  ; preds = %if.end.i191.while.body.i179_crit_edge, %reg_r.exit173
  %dec4.i177 = phi i32 [ 9, %reg_r.exit173 ], [ %dec.i189, %if.end.i191.while.body.i179_crit_edge ]
  %96 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %usb_err.i152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp15.i.i178 = icmp slt i32 %97, 0
  br i1 %cmp15.i.i178, label %while.body.i179.reg_r.exit.i188_crit_edge, label %if.end18.i.i184

while.body.i179.reg_r.exit.i188_crit_edge:        ; preds = %while.body.i179
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i188

if.end18.i.i184:                                  ; preds = %while.body.i179
  %98 = ptrtoint ptr %dev.i.i175 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i.i175, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %shl.i.i.i180 = shl i32 %101, 8
  %or21.i.i181 = or i32 %shl.i.i.i180, -2147483520
  %102 = ptrtoint ptr %usb_buf.i.i176 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %usb_buf.i.i176, align 4
  %call22.i.i182 = tail call i32 @usb_control_msg(ptr noundef %99, i32 noundef %or21.i.i181, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %103, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i182)
  %cmp23.i.i183 = icmp slt i32 %call22.i.i182, 0
  br i1 %cmp23.i.i183, label %do.end28.i.i186, label %if.end18.i.i184.reg_r.exit.i188_crit_edge

if.end18.i.i184.reg_r.exit.i188_crit_edge:        ; preds = %if.end18.i.i184
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i188

do.end28.i.i186:                                  ; preds = %if.end18.i.i184
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i182) #8
  %104 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call22.i.i182, ptr %usb_err.i152, align 8
  %105 = ptrtoint ptr %usb_buf.i.i176 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %usb_buf.i.i176, align 4
  %107 = call ptr @memset(ptr %106, i32 0, i32 64)
  br label %reg_r.exit.i188

reg_r.exit.i188:                                  ; preds = %do.end28.i.i186, %if.end18.i.i184.reg_r.exit.i188_crit_edge, %while.body.i179.reg_r.exit.i188_crit_edge
  %108 = ptrtoint ptr %usb_buf.i.i176 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %usb_buf.i.i176, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 1
  %112 = and i8 %111, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp1.i187 = icmp eq i8 %112, 0
  br i1 %cmp1.i187, label %reg_r.exit.i188.spca504B_PollingDataReady.exit192_crit_edge, label %if.end.i191

reg_r.exit.i188.spca504B_PollingDataReady.exit192_crit_edge: ; preds = %reg_r.exit.i188
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504B_PollingDataReady.exit192

if.end.i191:                                      ; preds = %reg_r.exit.i188
  tail call void @msleep(i32 noundef 10) #5
  %dec.i189 = add nsw i32 %dec4.i177, -1
  %cmp.not.i190 = icmp eq i32 %dec.i189, 0
  br i1 %cmp.not.i190, label %if.end.i191.spca504B_PollingDataReady.exit192_crit_edge, label %if.end.i191.while.body.i179_crit_edge

if.end.i191.while.body.i179_crit_edge:            ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i179

if.end.i191.spca504B_PollingDataReady.exit192_crit_edge: ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504B_PollingDataReady.exit192

spca504B_PollingDataReady.exit192:                ; preds = %if.end.i191.spca504B_PollingDataReady.exit192_crit_edge, %reg_r.exit.i188.spca504B_PollingDataReady.exit192_crit_edge
  %113 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %usb_err.i152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i194 = icmp slt i32 %114, 0
  br i1 %cmp.i194, label %spca504B_PollingDataReady.exit192.reg_w_riv.exit208_crit_edge, label %if.end.i200

spca504B_PollingDataReady.exit192.reg_w_riv.exit208_crit_edge: ; preds = %spca504B_PollingDataReady.exit192
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit208

if.end.i200:                                      ; preds = %spca504B_PollingDataReady.exit192
  %115 = ptrtoint ptr %dev.i.i175 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i.i175, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  %shl.i.i196 = shl i32 %118, 8
  %or.i197 = or i32 %shl.i.i196, -2147483648
  %call2.i198 = tail call i32 @usb_control_msg(ptr noundef %116, i32 noundef %or.i197, i8 noundef zeroext 52, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i198)
  %cmp3.i199 = icmp slt i32 %call2.i198, 0
  br i1 %cmp3.i199, label %do.end.i202, label %do.body8.i204

do.end.i202:                                      ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i198) #8
  %119 = ptrtoint ptr %usb_err.i152 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call2.i198, ptr %usb_err.i152, align 8
  br label %reg_w_riv.exit208

do.body8.i204:                                    ; preds = %if.end.i200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %120 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %120)
  %cmp9.i203 = icmp sgt i32 %120, 6
  br i1 %cmp9.i203, label %do.end13.i207, label %do.body8.i204.reg_w_riv.exit208_crit_edge

do.body8.i204.reg_w_riv.exit208_crit_edge:        ; preds = %do.body8.i204
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit208

do.end13.i207:                                    ; preds = %do.body8.i204
  call void @__sanitizer_cov_trace_pc() #7
  %name.i205 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i205, i32 noundef 52, i32 noundef 0, i32 noundef 0) #8
  br label %reg_w_riv.exit208

reg_w_riv.exit208:                                ; preds = %do.end13.i207, %do.body8.i204.reg_w_riv.exit208_crit_edge, %do.end.i202, %spca504B_PollingDataReady.exit192.reg_w_riv.exit208_crit_edge
  tail call fastcc void @spca504B_WaitCmdStatus(ptr noundef %gspca_dev)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %121 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp = icmp sgt i32 %121, 2
  br i1 %cmp, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %usb_err.i209 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %122 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %usb_err.i209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.i210 = icmp slt i32 %123, 0
  br i1 %cmp.i210, label %do.end7.reg_w_riv.exit240_crit_edge, label %if.end.i216

do.end7.reg_w_riv.exit240_crit_edge:              ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit240

if.end.i216:                                      ; preds = %do.end7
  %dev1.i211 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %124 = ptrtoint ptr %dev1.i211 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev1.i211, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 8
  %shl.i.i212 = shl i32 %127, 8
  %or.i213 = or i32 %shl.i.i212, -2147483648
  %call2.i214 = tail call i32 @usb_control_msg(ptr noundef %125, i32 noundef %or.i213, i8 noundef zeroext -32, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i214)
  %cmp3.i215 = icmp slt i32 %call2.i214, 0
  br i1 %cmp3.i215, label %do.end.i218, label %do.body8.i220

do.end.i218:                                      ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i214) #8
  %128 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call2.i214, ptr %usb_err.i209, align 8
  br label %reg_w_riv.exit240

do.body8.i220:                                    ; preds = %if.end.i216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %129 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %129)
  %cmp9.i219 = icmp sgt i32 %129, 6
  br i1 %cmp9.i219, label %do.end13.i223, label %do.body8.i220.reg_w_riv.exit224_crit_edge

do.body8.i220.reg_w_riv.exit224_crit_edge:        ; preds = %do.body8.i220
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit224

do.end13.i223:                                    ; preds = %do.body8.i220
  call void @__sanitizer_cov_trace_pc() #7
  %name.i221 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i221, i32 noundef 224, i32 noundef 0, i32 noundef 0) #8
  br label %reg_w_riv.exit224

reg_w_riv.exit224:                                ; preds = %do.end13.i223, %do.body8.i220.reg_w_riv.exit224_crit_edge
  %130 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr369 = load i32, ptr %usb_err.i209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr369)
  %cmp.i226 = icmp slt i32 %.pr369, 0
  br i1 %cmp.i226, label %reg_w_riv.exit224.reg_w_riv.exit240_crit_edge, label %if.end.i232

reg_w_riv.exit224.reg_w_riv.exit240_crit_edge:    ; preds = %reg_w_riv.exit224
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit240

if.end.i232:                                      ; preds = %reg_w_riv.exit224
  %131 = ptrtoint ptr %dev1.i211 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev1.i211, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 8
  %shl.i.i228 = shl i32 %134, 8
  %or.i229 = or i32 %shl.i.i228, -2147483648
  %call2.i230 = tail call i32 @usb_control_msg(ptr noundef %132, i32 noundef %or.i229, i8 noundef zeroext -32, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i230)
  %cmp3.i231 = icmp slt i32 %call2.i230, 0
  br i1 %cmp3.i231, label %do.end.i234, label %do.body8.i236

do.end.i234:                                      ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i230) #8
  %135 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call2.i230, ptr %usb_err.i209, align 8
  br label %reg_w_riv.exit240

do.body8.i236:                                    ; preds = %if.end.i232
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %136 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %136)
  %cmp9.i235 = icmp sgt i32 %136, 6
  br i1 %cmp9.i235, label %do.end13.i239, label %do.body8.i236.reg_w_riv.exit240_crit_edge

do.body8.i236.reg_w_riv.exit240_crit_edge:        ; preds = %do.body8.i236
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit240

do.end13.i239:                                    ; preds = %do.body8.i236
  call void @__sanitizer_cov_trace_pc() #7
  %name.i237 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i237, i32 noundef 224, i32 noundef 0, i32 noundef 1) #8
  br label %reg_w_riv.exit240

reg_w_riv.exit240:                                ; preds = %do.end13.i239, %do.body8.i236.reg_w_riv.exit240_crit_edge, %do.end.i234, %reg_w_riv.exit224.reg_w_riv.exit240_crit_edge, %do.end.i218, %do.end7.reg_w_riv.exit240_crit_edge
  %dev.i.i242 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i243 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i246

while.body.i246:                                  ; preds = %if.end.i258.while.body.i246_crit_edge, %reg_w_riv.exit240
  %dec4.i244 = phi i32 [ 255, %reg_w_riv.exit240 ], [ %dec.i256, %if.end.i258.while.body.i246_crit_edge ]
  %137 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %usb_err.i209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp15.i.i245 = icmp slt i32 %138, 0
  br i1 %cmp15.i.i245, label %while.body.i246.reg_r.exit.i255_crit_edge, label %if.end18.i.i251

while.body.i246.reg_r.exit.i255_crit_edge:        ; preds = %while.body.i246
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i255

if.end18.i.i251:                                  ; preds = %while.body.i246
  %139 = ptrtoint ptr %dev.i.i242 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i242, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %shl.i.i.i247 = shl i32 %142, 8
  %or21.i.i248 = or i32 %shl.i.i.i247, -2147483520
  %143 = ptrtoint ptr %usb_buf.i.i243 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %usb_buf.i.i243, align 4
  %call22.i.i249 = tail call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or21.i.i248, i8 noundef zeroext 6, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %144, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i249)
  %cmp23.i.i250 = icmp slt i32 %call22.i.i249, 0
  br i1 %cmp23.i.i250, label %do.end28.i.i253, label %if.end18.i.i251.reg_r.exit.i255_crit_edge

if.end18.i.i251.reg_r.exit.i255_crit_edge:        ; preds = %if.end18.i.i251
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i255

do.end28.i.i253:                                  ; preds = %if.end18.i.i251
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i249) #8
  %145 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %call22.i.i249, ptr %usb_err.i209, align 8
  %146 = ptrtoint ptr %usb_buf.i.i243 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %usb_buf.i.i243, align 4
  %148 = call ptr @memset(ptr %147, i32 0, i32 64)
  br label %reg_r.exit.i255

reg_r.exit.i255:                                  ; preds = %do.end28.i.i253, %if.end18.i.i251.reg_r.exit.i255_crit_edge, %while.body.i246.reg_r.exit.i255_crit_edge
  %149 = ptrtoint ptr %usb_buf.i.i243 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %usb_buf.i.i243, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cmp1.i254 = icmp eq i8 %152, 0
  br i1 %cmp1.i254, label %reg_r.exit.i255.spca504_wait_status.exit_crit_edge, label %if.end.i258

reg_r.exit.i255.spca504_wait_status.exit_crit_edge: ; preds = %reg_r.exit.i255
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504_wait_status.exit

if.end.i258:                                      ; preds = %reg_r.exit.i255
  tail call void @msleep(i32 noundef 10) #5
  %dec.i256 = add nsw i32 %dec4.i244, -1
  %cmp.not.i257 = icmp eq i32 %dec.i256, 0
  br i1 %cmp.not.i257, label %if.end.i258.spca504_wait_status.exit_crit_edge, label %if.end.i258.while.body.i246_crit_edge

if.end.i258.while.body.i246_crit_edge:            ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i246

if.end.i258.spca504_wait_status.exit_crit_edge:   ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504_wait_status.exit

spca504_wait_status.exit:                         ; preds = %if.end.i258.spca504_wait_status.exit_crit_edge, %reg_r.exit.i255.spca504_wait_status.exit_crit_edge
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %153 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %154)
  %cmp9 = icmp eq i8 %154, 2
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br i1 %cmp9, label %spca504_wait_status.exit.while.body.i260_crit_edge, label %if.else

spca504_wait_status.exit.while.body.i260_crit_edge: ; preds = %spca504_wait_status.exit
  br label %while.body.i260

while.body.i260:                                  ; preds = %reg_w_riv.exit.i.while.body.i260_crit_edge, %spca504_wait_status.exit.while.body.i260_crit_edge
  %dec7.i = phi i32 [ %dec.i262, %reg_w_riv.exit.i.while.body.i260_crit_edge ], [ 5, %spca504_wait_status.exit.while.body.i260_crit_edge ]
  %data.addr.06.i = phi ptr [ %incdec.ptr.i, %reg_w_riv.exit.i.while.body.i260_crit_edge ], [ @spca504A_clicksmart420_open_data, %spca504_wait_status.exit.while.body.i260_crit_edge ]
  %155 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %data.addr.06.i, align 2
  %idx.i = getelementptr inbounds %struct.cmd, ptr %data.addr.06.i, i32 0, i32 2
  %157 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %idx.i, align 2
  %val.i = getelementptr inbounds %struct.cmd, ptr %data.addr.06.i, i32 0, i32 1
  %159 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %val.i, align 2
  %161 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %usb_err.i209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp.i.i = icmp slt i32 %162, 0
  br i1 %cmp.i.i, label %while.body.i260.reg_w_riv.exit.i_crit_edge, label %if.end.i.i

while.body.i260.reg_w_riv.exit.i_crit_edge:       ; preds = %while.body.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i

if.end.i.i:                                       ; preds = %while.body.i260
  %163 = ptrtoint ptr %dev.i.i242 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i.i242, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  %shl.i.i.i261 = shl i32 %166, 8
  %or.i.i = or i32 %shl.i.i.i261, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %164, i32 noundef %or.i.i, i8 noundef zeroext %156, i8 noundef zeroext 64, i16 noundef zeroext %160, i16 noundef zeroext %158, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %do.body8.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i) #8
  %167 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %call2.i.i, ptr %usb_err.i209, align 8
  br label %reg_w_riv.exit.i

do.body8.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %168 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %168)
  %cmp9.i.i = icmp sgt i32 %168, 6
  br i1 %cmp9.i.i, label %do.end13.i.i, label %do.body8.i.i.reg_w_riv.exit.i_crit_edge

do.body8.i.i.reg_w_riv.exit.i_crit_edge:          ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i

do.end13.i.i:                                     ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %156 to i32
  %conv15.i.i = zext i16 %158 to i32
  %conv16.i.i = zext i16 %160 to i32
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef %conv.i.i, i32 noundef %conv15.i.i, i32 noundef %conv16.i.i) #8
  br label %reg_w_riv.exit.i

reg_w_riv.exit.i:                                 ; preds = %do.end13.i.i, %do.body8.i.i.reg_w_riv.exit.i_crit_edge, %do.end.i.i, %while.body.i260.reg_w_riv.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.cmd, ptr %data.addr.06.i, i32 1
  %dec.i262 = add nsw i32 %dec7.i, -1
  %cmp.i263 = icmp sgt i32 %dec7.i, 0
  br i1 %cmp.i263, label %reg_w_riv.exit.i.while.body.i260_crit_edge, label %reg_w_riv.exit.i.if.end12_crit_edge

reg_w_riv.exit.i.if.end12_crit_edge:              ; preds = %reg_w_riv.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

reg_w_riv.exit.i.while.body.i260_crit_edge:       ; preds = %reg_w_riv.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i260

if.else:                                          ; preds = %spca504_wait_status.exit
  %169 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %usb_err.i209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp.i.i271 = icmp slt i32 %170, 0
  br i1 %cmp.i.i271, label %if.else.if.end12_crit_edge, label %if.end.i.i277

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.i.i277:                                    ; preds = %if.else
  %171 = ptrtoint ptr %dev.i.i242 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i.i242, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 8
  %shl.i.i.i273 = shl i32 %174, 8
  %or.i.i274 = or i32 %shl.i.i.i273, -2147483648
  %call2.i.i275 = tail call i32 @usb_control_msg(ptr noundef %172, i32 noundef %or.i.i274, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 9473, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i275)
  %cmp3.i.i276 = icmp slt i32 %call2.i.i275, 0
  br i1 %cmp3.i.i276, label %do.end.i.i279, label %do.body8.i.i281

do.end.i.i279:                                    ; preds = %if.end.i.i277
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i275) #8
  %175 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %call2.i.i275, ptr %usb_err.i209, align 8
  br label %if.end12

do.body8.i.i281:                                  ; preds = %if.end.i.i277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %176 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %176)
  %cmp9.i.i280 = icmp sgt i32 %176, 6
  br i1 %cmp9.i.i280, label %do.end13.i.i286, label %do.body8.i.i281.reg_w_riv.exit.i290_crit_edge

do.body8.i.i281.reg_w_riv.exit.i290_crit_edge:    ; preds = %do.body8.i.i281
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i290

do.end13.i.i286:                                  ; preds = %do.body8.i.i281
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef 0, i32 noundef 9473, i32 noundef 1) #8
  br label %reg_w_riv.exit.i290

reg_w_riv.exit.i290:                              ; preds = %do.end13.i.i286, %do.body8.i.i281.reg_w_riv.exit.i290_crit_edge
  %177 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_load4_noabort(i32 %177)
  %.pr407 = load i32, ptr %usb_err.i209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr407)
  %cmp.i.i271.1 = icmp slt i32 %.pr407, 0
  br i1 %cmp.i.i271.1, label %reg_w_riv.exit.i290.if.end12_crit_edge, label %if.end.i.i277.1

reg_w_riv.exit.i290.if.end12_crit_edge:           ; preds = %reg_w_riv.exit.i290
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.i.i277.1:                                  ; preds = %reg_w_riv.exit.i290
  %178 = ptrtoint ptr %dev.i.i242 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev.i.i242, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 8
  %shl.i.i.i273.1 = shl i32 %181, 8
  %or.i.i274.1 = or i32 %shl.i.i.i273.1, -2147483648
  %call2.i.i275.1 = tail call i32 @usb_control_msg(ptr noundef %179, i32 noundef %or.i.i274.1, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 1280, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i275.1)
  %cmp3.i.i276.1 = icmp slt i32 %call2.i.i275.1, 0
  br i1 %cmp3.i.i276.1, label %do.end.i.i279.1, label %do.body8.i.i281.1

do.body8.i.i281.1:                                ; preds = %if.end.i.i277.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %182 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %182)
  %cmp9.i.i280.1 = icmp sgt i32 %182, 6
  br i1 %cmp9.i.i280.1, label %do.end13.i.i286.1, label %do.body8.i.i281.1.reg_w_riv.exit.i290.1_crit_edge

do.body8.i.i281.1.reg_w_riv.exit.i290.1_crit_edge: ; preds = %do.body8.i.i281.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i290.1

do.end13.i.i286.1:                                ; preds = %do.body8.i.i281.1
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i285.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef 32, i32 noundef 1, i32 noundef 1280) #8
  br label %reg_w_riv.exit.i290.1

do.end.i.i279.1:                                  ; preds = %if.end.i.i277.1
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i278.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i275.1) #8
  %183 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %call2.i.i275.1, ptr %usb_err.i209, align 8
  br label %if.end12

reg_w_riv.exit.i290.1:                            ; preds = %do.end13.i.i286.1, %do.body8.i.i281.1.reg_w_riv.exit.i290.1_crit_edge
  %184 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_load4_noabort(i32 %184)
  %.pr409.pr = load i32, ptr %usb_err.i209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr409.pr)
  %cmp.i.i271.2 = icmp slt i32 %.pr409.pr, 0
  br i1 %cmp.i.i271.2, label %reg_w_riv.exit.i290.1.if.end12_crit_edge, label %if.end.i.i277.2

reg_w_riv.exit.i290.1.if.end12_crit_edge:         ; preds = %reg_w_riv.exit.i290.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.i.i277.2:                                  ; preds = %reg_w_riv.exit.i290.1
  %185 = ptrtoint ptr %dev.i.i242 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i.i242, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 8
  %shl.i.i.i273.2 = shl i32 %188, 8
  %or.i.i274.2 = or i32 %shl.i.i.i273.2, -2147483648
  %call2.i.i275.2 = tail call i32 @usb_control_msg(ptr noundef %186, i32 noundef %or.i.i274.2, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 10368, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i275.2)
  %cmp3.i.i276.2 = icmp slt i32 %call2.i.i275.2, 0
  br i1 %cmp3.i.i276.2, label %do.end.i.i279.2, label %do.body8.i.i281.2

do.body8.i.i281.2:                                ; preds = %if.end.i.i277.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %189 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %189)
  %cmp9.i.i280.2 = icmp sgt i32 %189, 6
  br i1 %cmp9.i.i280.2, label %do.end13.i.i286.2, label %do.body8.i.i281.2.reg_w_riv.exit.i290.2_crit_edge

do.body8.i.i281.2.reg_w_riv.exit.i290.2_crit_edge: ; preds = %do.body8.i.i281.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i290.2

do.end13.i.i286.2:                                ; preds = %do.body8.i.i281.2
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i285.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef 0, i32 noundef 10368, i32 noundef 3) #8
  br label %reg_w_riv.exit.i290.2

do.end.i.i279.2:                                  ; preds = %if.end.i.i277.2
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i278.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i275.2) #8
  %190 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %call2.i.i275.2, ptr %usb_err.i209, align 8
  br label %if.end12

reg_w_riv.exit.i290.2:                            ; preds = %do.end13.i.i286.2, %do.body8.i.i281.2.reg_w_riv.exit.i290.2_crit_edge
  %191 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pr411.pr = load i32, ptr %usb_err.i209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr411.pr)
  %cmp.i.i271.3 = icmp slt i32 %.pr411.pr, 0
  br i1 %cmp.i.i271.3, label %reg_w_riv.exit.i290.2.if.end12_crit_edge, label %if.end.i.i277.3

reg_w_riv.exit.i290.2.if.end12_crit_edge:         ; preds = %reg_w_riv.exit.i290.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.i.i277.3:                                  ; preds = %reg_w_riv.exit.i290.2
  %192 = ptrtoint ptr %dev.i.i242 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev.i.i242, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 8
  %shl.i.i.i273.3 = shl i32 %195, 8
  %or.i.i274.3 = or i32 %shl.i.i.i273.3, -2147483648
  %call2.i.i275.3 = tail call i32 @usb_control_msg(ptr noundef %193, i32 noundef %or.i.i274.3, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 10369, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i275.3)
  %cmp3.i.i276.3 = icmp slt i32 %call2.i.i275.3, 0
  br i1 %cmp3.i.i276.3, label %do.end.i.i279.3, label %do.body8.i.i281.3

do.body8.i.i281.3:                                ; preds = %if.end.i.i277.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %196 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %196)
  %cmp9.i.i280.3 = icmp sgt i32 %196, 6
  br i1 %cmp9.i.i280.3, label %do.end13.i.i286.3, label %do.body8.i.i281.3.if.end12_crit_edge

do.body8.i.i281.3.if.end12_crit_edge:             ; preds = %do.body8.i.i281.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end13.i.i286.3:                                ; preds = %do.body8.i.i281.3
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i285.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef 0, i32 noundef 10369, i32 noundef 1) #8
  br label %if.end12

do.end.i.i279.3:                                  ; preds = %if.end.i.i277.3
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i278.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i275.3) #8
  %197 = ptrtoint ptr %usb_err.i209 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call2.i.i275.3, ptr %usb_err.i209, align 8
  br label %if.end12

if.end12:                                         ; preds = %do.end.i.i279.3, %do.end13.i.i286.3, %do.body8.i.i281.3.if.end12_crit_edge, %reg_w_riv.exit.i290.2.if.end12_crit_edge, %do.end.i.i279.2, %reg_w_riv.exit.i290.1.if.end12_crit_edge, %do.end.i.i279.1, %reg_w_riv.exit.i290.if.end12_crit_edge, %do.end.i.i279, %if.else.if.end12_crit_edge, %reg_w_riv.exit.i.if.end12_crit_edge
  tail call fastcc void @setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_creative_pccam)
  br label %sw.epilog

do.body13:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %198 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %198)
  %cmp14 = icmp sgt i32 %198, 2
  br i1 %cmp14, label %do.end19, label %do.body13.do.end27_crit_edge

do.body13.do.end27_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %name22 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name22) #8
  br label %do.end27

do.end27:                                         ; preds = %do.end19, %do.body13.do.end27_crit_edge
  %subtype28 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %199 = ptrtoint ptr %subtype28 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %subtype28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %200)
  %cmp30 = icmp eq i8 %200, 1
  br i1 %cmp30, label %if.then32, label %do.end27.if.end33_crit_edge

do.end27.if.end33_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then32:                                        ; preds = %do.end27
  tail call fastcc void @spca504_read_info(ptr noundef %gspca_dev)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 8, i16 noundef zeroext 3, i8 noundef zeroext -98, i8 noundef zeroext 1)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 8, i16 noundef zeroext 3, i8 noundef zeroext -98, i8 noundef zeroext 0)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext 1)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 8, i16 noundef zeroext 6, i16 noundef zeroext 0, i8 noundef zeroext -122, i8 noundef zeroext 1)
  %usb_err.i292 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %201 = ptrtoint ptr %usb_err.i292 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %usb_err.i292, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp.i293 = icmp slt i32 %202, 0
  br i1 %cmp.i293, label %if.then32.reg_w_riv.exit323_crit_edge, label %if.end.i299

if.then32.reg_w_riv.exit323_crit_edge:            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit323

if.end.i299:                                      ; preds = %if.then32
  %dev1.i294 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %203 = ptrtoint ptr %dev1.i294 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev1.i294, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %204, align 8
  %shl.i.i295 = shl i32 %206, 8
  %or.i296 = or i32 %shl.i.i295, -2147483648
  %call2.i297 = tail call i32 @usb_control_msg(ptr noundef %204, i32 noundef %or.i296, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 9996, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i297)
  %cmp3.i298 = icmp slt i32 %call2.i297, 0
  br i1 %cmp3.i298, label %do.end.i301, label %do.body8.i303

do.end.i301:                                      ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i297) #8
  %207 = ptrtoint ptr %usb_err.i292 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %call2.i297, ptr %usb_err.i292, align 8
  br label %reg_w_riv.exit323

do.body8.i303:                                    ; preds = %if.end.i299
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %208 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %208)
  %cmp9.i302 = icmp sgt i32 %208, 6
  br i1 %cmp9.i302, label %do.end13.i306, label %do.body8.i303.reg_w_riv.exit307_crit_edge

do.body8.i303.reg_w_riv.exit307_crit_edge:        ; preds = %do.body8.i303
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit307

do.end13.i306:                                    ; preds = %do.body8.i303
  call void @__sanitizer_cov_trace_pc() #7
  %name.i304 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i304, i32 noundef 0, i32 noundef 9996, i32 noundef 5) #8
  br label %reg_w_riv.exit307

reg_w_riv.exit307:                                ; preds = %do.end13.i306, %do.body8.i303.reg_w_riv.exit307_crit_edge
  %209 = ptrtoint ptr %usb_err.i292 to i32
  call void @__asan_load4_noabort(i32 %209)
  %.pr371 = load i32, ptr %usb_err.i292, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr371)
  %cmp.i309 = icmp slt i32 %.pr371, 0
  br i1 %cmp.i309, label %reg_w_riv.exit307.reg_w_riv.exit323_crit_edge, label %if.end.i315

reg_w_riv.exit307.reg_w_riv.exit323_crit_edge:    ; preds = %reg_w_riv.exit307
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit323

if.end.i315:                                      ; preds = %reg_w_riv.exit307
  %210 = ptrtoint ptr %dev1.i294 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev1.i294, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %211, align 8
  %shl.i.i311 = shl i32 %213, 8
  %or.i312 = or i32 %shl.i.i311, -2147483648
  %call2.i313 = tail call i32 @usb_control_msg(ptr noundef %211, i32 noundef %or.i312, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 8976, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i313)
  %cmp3.i314 = icmp slt i32 %call2.i313, 0
  br i1 %cmp3.i314, label %do.end.i317, label %do.body8.i319

do.end.i317:                                      ; preds = %if.end.i315
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i313) #8
  %214 = ptrtoint ptr %usb_err.i292 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %call2.i313, ptr %usb_err.i292, align 8
  br label %reg_w_riv.exit323

do.body8.i319:                                    ; preds = %if.end.i315
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %215 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %215)
  %cmp9.i318 = icmp sgt i32 %215, 6
  br i1 %cmp9.i318, label %do.end13.i322, label %do.body8.i319.reg_w_riv.exit323_crit_edge

do.body8.i319.reg_w_riv.exit323_crit_edge:        ; preds = %do.body8.i319
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit323

do.end13.i322:                                    ; preds = %do.body8.i319
  call void @__sanitizer_cov_trace_pc() #7
  %name.i320 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i321 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i320, i32 noundef 0, i32 noundef 8976, i32 noundef 5) #8
  br label %reg_w_riv.exit323

reg_w_riv.exit323:                                ; preds = %do.end13.i322, %do.body8.i319.reg_w_riv.exit323_crit_edge, %do.end.i317, %reg_w_riv.exit307.reg_w_riv.exit323_crit_edge, %do.end.i301, %if.then32.reg_w_riv.exit323_crit_edge
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 15, i16 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 0)
  br label %if.end33

if.end33:                                         ; preds = %reg_w_riv.exit323, %do.end27.if.end33_crit_edge
  %usb_err.i324 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %216 = ptrtoint ptr %usb_err.i324 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %usb_err.i324, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp.i325 = icmp slt i32 %217, 0
  br i1 %cmp.i325, label %if.end33.reg_w_riv.exit355_crit_edge, label %if.end.i331

if.end33.reg_w_riv.exit355_crit_edge:             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit355

if.end.i331:                                      ; preds = %if.end33
  %dev1.i326 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %218 = ptrtoint ptr %dev1.i326 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev1.i326, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 8
  %shl.i.i327 = shl i32 %221, 8
  %or.i328 = or i32 %shl.i.i327, -2147483648
  %call2.i329 = tail call i32 @usb_control_msg(ptr noundef %219, i32 noundef %or.i328, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8192, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i329)
  %cmp3.i330 = icmp slt i32 %call2.i329, 0
  br i1 %cmp3.i330, label %do.end.i333, label %do.body8.i335

do.end.i333:                                      ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i329) #8
  %222 = ptrtoint ptr %usb_err.i324 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %call2.i329, ptr %usb_err.i324, align 8
  br label %reg_w_riv.exit355

do.body8.i335:                                    ; preds = %if.end.i331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %223 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %223)
  %cmp9.i334 = icmp sgt i32 %223, 6
  br i1 %cmp9.i334, label %do.end13.i338, label %do.body8.i335.reg_w_riv.exit339_crit_edge

do.body8.i335.reg_w_riv.exit339_crit_edge:        ; preds = %do.body8.i335
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit339

do.end13.i338:                                    ; preds = %do.body8.i335
  call void @__sanitizer_cov_trace_pc() #7
  %name.i336 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i337 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i336, i32 noundef 0, i32 noundef 8192, i32 noundef 0) #8
  br label %reg_w_riv.exit339

reg_w_riv.exit339:                                ; preds = %do.end13.i338, %do.body8.i335.reg_w_riv.exit339_crit_edge
  %224 = ptrtoint ptr %usb_err.i324 to i32
  call void @__asan_load4_noabort(i32 %224)
  %.pr373 = load i32, ptr %usb_err.i324, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr373)
  %cmp.i341 = icmp slt i32 %.pr373, 0
  br i1 %cmp.i341, label %reg_w_riv.exit339.reg_w_riv.exit355_crit_edge, label %if.end.i347

reg_w_riv.exit339.reg_w_riv.exit355_crit_edge:    ; preds = %reg_w_riv.exit339
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit355

if.end.i347:                                      ; preds = %reg_w_riv.exit339
  %225 = ptrtoint ptr %dev1.i326 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev1.i326, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %226, align 8
  %shl.i.i343 = shl i32 %228, 8
  %or.i344 = or i32 %shl.i.i343, -2147483648
  %call2.i345 = tail call i32 @usb_control_msg(ptr noundef %226, i32 noundef %or.i344, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 10371, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i345)
  %cmp3.i346 = icmp slt i32 %call2.i345, 0
  br i1 %cmp3.i346, label %do.end.i349, label %do.body8.i351

do.end.i349:                                      ; preds = %if.end.i347
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i348 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i345) #8
  %229 = ptrtoint ptr %usb_err.i324 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %call2.i345, ptr %usb_err.i324, align 8
  br label %reg_w_riv.exit355

do.body8.i351:                                    ; preds = %if.end.i347
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %230 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %230)
  %cmp9.i350 = icmp sgt i32 %230, 6
  br i1 %cmp9.i350, label %do.end13.i354, label %do.body8.i351.reg_w_riv.exit355_crit_edge

do.body8.i351.reg_w_riv.exit355_crit_edge:        ; preds = %do.body8.i351
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit355

do.end13.i354:                                    ; preds = %do.body8.i351
  call void @__sanitizer_cov_trace_pc() #7
  %name.i352 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i352, i32 noundef 0, i32 noundef 10371, i32 noundef 1) #8
  br label %reg_w_riv.exit355

reg_w_riv.exit355:                                ; preds = %do.end13.i354, %do.body8.i351.reg_w_riv.exit355_crit_edge, %do.end.i349, %reg_w_riv.exit339.reg_w_riv.exit355_crit_edge, %do.end.i333, %if.end33.reg_w_riv.exit355_crit_edge
  tail call fastcc void @setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_spca504_default)
  br label %sw.epilog

sw.epilog:                                        ; preds = %reg_w_riv.exit355, %if.end12, %reg_w_riv.exit208, %spca504B_PollingDataReady.exit
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %231 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %usb_err, align 8
  ret i32 %232
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.32) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 32) #5
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 26) #5
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #5
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #8
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
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height, align 4
  %2 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixfmt, align 8
  %4 = call ptr @memcpy(ptr %jpeg_hdr, ptr @jpeg_head, i32 589)
  %5 = lshr i32 %1, 8
  %conv.i = trunc i32 %5 to i8
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 561
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %1 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 562
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %8 = lshr i32 %3, 8
  %conv4.i = trunc i32 %8 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 563
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %3 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 564
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 567
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %arrayidx9.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.01.i, 7
  %arrayidx.i67 = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %12 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i67, align 1
  %conv.i68 = zext i8 %13 to i16
  %mul6.i = mul nuw nsw i16 %conv.i68, 30
  %add7.i = add nuw nsw i16 %mul6.i, 50
  %div8.i = udiv i16 %add7.i, 100
  %conv9.i = trunc i16 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.01.i, 72
  %arrayidx13.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %16 to i16
  %mul15.i = mul nuw nsw i16 %conv14.i, 30
  %add16.i = add nuw nsw i16 %mul15.i, 50
  %div17.i = udiv i16 %add16.i, 100
  %conv18.i = trunc i16 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %18 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp = icmp eq i8 %19, 1
  br i1 %cmp, label %if.then, label %jpeg_set_qual.exit.if.end_crit_edge

jpeg_set_qual.exit.if.end_crit_edge:              ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %jpeg_set_qual.exit
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %20 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp slt i32 %21, 0
  br i1 %cmp.i.i, label %if.then.reg_r.exit.i_crit_edge, label %if.end.i.i

if.then.reg_r.exit.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

if.end.i.i:                                       ; preds = %if.then
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %22 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %23, align 1
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i.i = shl i32 %28, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %29 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i.i, i8 noundef zeroext 38, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %29, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %reg_w_1.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call3.i.i) #8
  %30 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %reg_r.exit.i

reg_w_1.exit.i:                                   ; preds = %if.end.i.i
  %31 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr.i = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp15.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp15.i.i, label %reg_w_1.exit.i.reg_r.exit.i_crit_edge, label %if.end18.i.i

reg_w_1.exit.i.reg_r.exit.i_crit_edge:            ; preds = %reg_w_1.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

if.end18.i.i:                                     ; preds = %reg_w_1.exit.i
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i5.i = shl i32 %35, 8
  %or21.i.i = or i32 %shl.i.i5.i, -2147483520
  %36 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i.i, align 4
  %call22.i.i = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or21.i.i, i8 noundef zeroext 38, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %37, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %do.end28.i.i, label %if.end18.i.i.reg_r.exit.i_crit_edge

if.end18.i.i.reg_r.exit.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end28.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i) #8
  %38 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call22.i.i, ptr %usb_err.i.i, align 8
  %39 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_buf.i.i, align 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 64)
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end28.i.i, %if.end18.i.i.reg_r.exit.i_crit_edge, %reg_w_1.exit.i.reg_r.exit.i_crit_edge, %do.end.i.i, %if.then.reg_r.exit.i_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i7.i.while.body.i.i_crit_edge, %reg_r.exit.i
  %dec4.i.i = phi i32 [ 9, %reg_r.exit.i ], [ %dec.i.i, %if.end.i7.i.while.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp15.i.i.i = icmp slt i32 %43, 0
  br i1 %cmp15.i.i.i, label %while.body.i.i.reg_r.exit.i.i_crit_edge, label %if.end18.i.i.i

while.body.i.i.reg_r.exit.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i.i

if.end18.i.i.i:                                   ; preds = %while.body.i.i
  %44 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i.i.i = shl i32 %47, 8
  %or21.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %48 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_buf.i.i.i, align 4
  %call22.i.i.i = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or21.i.i.i, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %49, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %cmp23.i.i.i = icmp slt i32 %call22.i.i.i, 0
  br i1 %cmp23.i.i.i, label %do.end28.i.i.i, label %if.end18.i.i.i.reg_r.exit.i.i_crit_edge

if.end18.i.i.i.reg_r.exit.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i.i

do.end28.i.i.i:                                   ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i.i) #8
  %50 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call22.i.i.i, ptr %usb_err.i.i, align 8
  %51 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb_buf.i.i.i, align 4
  %53 = call ptr @memset(ptr %52, i32 0, i32 64)
  br label %reg_r.exit.i.i

reg_r.exit.i.i:                                   ; preds = %do.end28.i.i.i, %if.end18.i.i.i.reg_r.exit.i.i_crit_edge, %while.body.i.i.reg_r.exit.i.i_crit_edge
  %54 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_buf.i.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp1.i.i = icmp eq i8 %58, 0
  br i1 %cmp1.i.i, label %reg_r.exit.i.i.if.end_crit_edge, label %if.end.i7.i

reg_r.exit.i.i.if.end_crit_edge:                  ; preds = %reg_r.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i7.i:                                      ; preds = %reg_r.exit.i.i
  tail call void @msleep(i32 noundef 10) #5
  %dec.i.i = add nsw i32 %dec4.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i7.i.if.end_crit_edge, label %if.end.i7.i.while.body.i.i_crit_edge

if.end.i7.i.while.body.i.i_crit_edge:             ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.end.i7.i.if.end_crit_edge:                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.end.i7.i.if.end_crit_edge, %reg_r.exit.i.i.if.end_crit_edge, %jpeg_set_qual.exit.if.end_crit_edge
  tail call fastcc void @spca504B_SetSizeType(ptr noundef %gspca_dev)
  %59 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bridge, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %60, label %sw.default [
    i8 0, label %sw.bb9
    i8 2, label %sw.bb16
  ]

sw.default:                                       ; preds = %if.end
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %62 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %subtype, align 2
  %.off = add i8 %63, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %64 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i = icmp slt i32 %65, 0
  br i1 %switch, label %sw.bb, label %sw.default8

sw.bb:                                            ; preds = %sw.default
  br i1 %cmp.i, label %sw.bb.reg_w_riv.exit_crit_edge, label %if.end.i

sw.bb.reg_w_riv.exit_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

if.end.i:                                         ; preds = %sw.bb
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %66 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i = shl i32 %69, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i, i8 noundef zeroext -16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i) #8
  %70 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit

do.body8.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %71 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %71)
  %cmp9.i = icmp sgt i32 %71, 6
  br i1 %cmp9.i, label %do.end13.i, label %do.body8.i.reg_w_riv.exit_crit_edge

do.body8.i.reg_w_riv.exit_crit_edge:              ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 240, i32 noundef 0, i32 noundef 0) #8
  br label %reg_w_riv.exit

reg_w_riv.exit:                                   ; preds = %do.end13.i, %do.body8.i.reg_w_riv.exit_crit_edge, %do.end.i, %sw.bb.reg_w_riv.exit_crit_edge
  tail call fastcc void @spca504B_WaitCmdStatus(ptr noundef %gspca_dev)
  %72 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i70 = icmp slt i32 %73, 0
  br i1 %cmp.i70, label %reg_w_riv.exit.reg_w_riv.exit84_crit_edge, label %if.end.i76

reg_w_riv.exit.reg_w_riv.exit84_crit_edge:        ; preds = %reg_w_riv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit84

if.end.i76:                                       ; preds = %reg_w_riv.exit
  %dev1.i71 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %74 = ptrtoint ptr %dev1.i71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1.i71, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %shl.i.i72 = shl i32 %77, 8
  %or.i73 = or i32 %shl.i.i72, -2147483648
  %call2.i74 = tail call i32 @usb_control_msg(ptr noundef %75, i32 noundef %or.i73, i8 noundef zeroext -16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i74)
  %cmp3.i75 = icmp slt i32 %call2.i74, 0
  br i1 %cmp3.i75, label %do.end.i78, label %do.body8.i80

do.end.i78:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i74) #8
  %78 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call2.i74, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit84

do.body8.i80:                                     ; preds = %if.end.i76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %79 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %79)
  %cmp9.i79 = icmp sgt i32 %79, 6
  br i1 %cmp9.i79, label %do.end13.i83, label %do.body8.i80.reg_w_riv.exit84_crit_edge

do.body8.i80.reg_w_riv.exit84_crit_edge:          ; preds = %do.body8.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit84

do.end13.i83:                                     ; preds = %do.body8.i80
  call void @__sanitizer_cov_trace_pc() #7
  %name.i81 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i81, i32 noundef 240, i32 noundef 4, i32 noundef 0) #8
  br label %reg_w_riv.exit84

reg_w_riv.exit84:                                 ; preds = %do.end13.i83, %do.body8.i80.reg_w_riv.exit84_crit_edge, %do.end.i78, %reg_w_riv.exit.reg_w_riv.exit84_crit_edge
  tail call fastcc void @spca504B_WaitCmdStatus(ptr noundef %gspca_dev)
  br label %sw.epilog27

sw.default8:                                      ; preds = %sw.default
  br i1 %cmp.i, label %sw.default8.reg_w_riv.exit100_crit_edge, label %if.end.i92

sw.default8.reg_w_riv.exit100_crit_edge:          ; preds = %sw.default8
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit100

if.end.i92:                                       ; preds = %sw.default8
  %dev1.i87 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %80 = ptrtoint ptr %dev1.i87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev1.i87, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i.i88 = shl i32 %83, 8
  %or.i89 = or i32 %shl.i.i88, -2147483648
  %call2.i90 = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or.i89, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i90)
  %cmp3.i91 = icmp slt i32 %call2.i90, 0
  br i1 %cmp3.i91, label %do.end.i94, label %do.body8.i96

do.end.i94:                                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i90) #8
  %84 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call2.i90, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit100

do.body8.i96:                                     ; preds = %if.end.i92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %85 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %85)
  %cmp9.i95 = icmp sgt i32 %85, 6
  br i1 %cmp9.i95, label %do.end13.i99, label %do.body8.i96.reg_w_riv.exit100_crit_edge

do.body8.i96.reg_w_riv.exit100_crit_edge:         ; preds = %do.body8.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit100

do.end13.i99:                                     ; preds = %do.body8.i96
  call void @__sanitizer_cov_trace_pc() #7
  %name.i97 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i97, i32 noundef 49, i32 noundef 4, i32 noundef 0) #8
  br label %reg_w_riv.exit100

reg_w_riv.exit100:                                ; preds = %do.end13.i99, %do.body8.i96.reg_w_riv.exit100_crit_edge, %do.end.i94, %sw.default8.reg_w_riv.exit100_crit_edge
  tail call fastcc void @spca504B_WaitCmdStatus(ptr noundef %gspca_dev)
  %dev.i.i102 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i103 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i113.while.body.i_crit_edge, %reg_w_riv.exit100
  %dec4.i = phi i32 [ 9, %reg_w_riv.exit100 ], [ %dec.i, %if.end.i113.while.body.i_crit_edge ]
  %86 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp15.i.i104 = icmp slt i32 %87, 0
  br i1 %cmp15.i.i104, label %while.body.i.reg_r.exit.i112_crit_edge, label %if.end18.i.i109

while.body.i.reg_r.exit.i112_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i112

if.end18.i.i109:                                  ; preds = %while.body.i
  %88 = ptrtoint ptr %dev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i102, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  %shl.i.i.i105 = shl i32 %91, 8
  %or21.i.i106 = or i32 %shl.i.i.i105, -2147483520
  %92 = ptrtoint ptr %usb_buf.i.i103 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %usb_buf.i.i103, align 4
  %call22.i.i107 = tail call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or21.i.i106, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %93, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i107)
  %cmp23.i.i108 = icmp slt i32 %call22.i.i107, 0
  br i1 %cmp23.i.i108, label %do.end28.i.i111, label %if.end18.i.i109.reg_r.exit.i112_crit_edge

if.end18.i.i109.reg_r.exit.i112_crit_edge:        ; preds = %if.end18.i.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i112

do.end28.i.i111:                                  ; preds = %if.end18.i.i109
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i107) #8
  %94 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call22.i.i107, ptr %usb_err.i, align 8
  %95 = ptrtoint ptr %usb_buf.i.i103 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usb_buf.i.i103, align 4
  %97 = call ptr @memset(ptr %96, i32 0, i32 64)
  br label %reg_r.exit.i112

reg_r.exit.i112:                                  ; preds = %do.end28.i.i111, %if.end18.i.i109.reg_r.exit.i112_crit_edge, %while.body.i.reg_r.exit.i112_crit_edge
  %98 = ptrtoint ptr %usb_buf.i.i103 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usb_buf.i.i103, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %102 = and i8 %101, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp1.i = icmp eq i8 %102, 0
  br i1 %cmp1.i, label %reg_r.exit.i112.sw.epilog27_crit_edge, label %if.end.i113

reg_r.exit.i112.sw.epilog27_crit_edge:            ; preds = %reg_r.exit.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog27

if.end.i113:                                      ; preds = %reg_r.exit.i112
  tail call void @msleep(i32 noundef 10) #5
  %dec.i = add nsw i32 %dec4.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i113.sw.epilog27_crit_edge, label %if.end.i113.while.body.i_crit_edge

if.end.i113.while.body.i_crit_edge:               ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i113.sw.epilog27_crit_edge:                ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog27

sw.bb9:                                           ; preds = %if.end
  %subtype10 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %103 = ptrtoint ptr %subtype10 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %subtype10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %cmp12 = icmp eq i8 %104, 1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca504_read_info(ptr noundef %gspca_dev)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 8, i16 noundef zeroext 3, i8 noundef zeroext -98, i8 noundef zeroext 1)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 8, i16 noundef zeroext 3, i8 noundef zeroext -98, i8 noundef zeroext 0)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext 1)
  br label %if.end15

if.else:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca504_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 8, i16 noundef zeroext 3)
  tail call fastcc void @spca504_read_info(ptr noundef %gspca_dev)
  tail call fastcc void @spca504_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 8, i16 noundef zeroext 3)
  tail call fastcc void @spca504_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 0, i16 noundef zeroext 0)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  tail call fastcc void @spca504B_SetSizeType(ptr noundef %gspca_dev)
  %usb_err.i114 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %105 = ptrtoint ptr %usb_err.i114 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %usb_err.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i115 = icmp slt i32 %106, 0
  br i1 %cmp.i115, label %if.end15.sw.epilog27_crit_edge, label %if.end.i121

if.end15.sw.epilog27_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog27

if.end.i121:                                      ; preds = %if.end15
  %dev1.i116 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %107 = ptrtoint ptr %dev1.i116 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev1.i116, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 8
  %shl.i.i117 = shl i32 %110, 8
  %or.i118 = or i32 %shl.i.i117, -2147483648
  %call2.i119 = tail call i32 @usb_control_msg(ptr noundef %108, i32 noundef %or.i118, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 9996, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i119)
  %cmp3.i120 = icmp slt i32 %call2.i119, 0
  br i1 %cmp3.i120, label %do.end.i123, label %do.body8.i125

do.end.i123:                                      ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i119) #8
  %111 = ptrtoint ptr %usb_err.i114 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call2.i119, ptr %usb_err.i114, align 8
  br label %sw.epilog27

do.body8.i125:                                    ; preds = %if.end.i121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %112 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %112)
  %cmp9.i124 = icmp sgt i32 %112, 6
  br i1 %cmp9.i124, label %do.end13.i128, label %do.body8.i125.reg_w_riv.exit129_crit_edge

do.body8.i125.reg_w_riv.exit129_crit_edge:        ; preds = %do.body8.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit129

do.end13.i128:                                    ; preds = %do.body8.i125
  call void @__sanitizer_cov_trace_pc() #7
  %name.i126 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i126, i32 noundef 0, i32 noundef 9996, i32 noundef 5) #8
  br label %reg_w_riv.exit129

reg_w_riv.exit129:                                ; preds = %do.end13.i128, %do.body8.i125.reg_w_riv.exit129_crit_edge
  %113 = ptrtoint ptr %usb_err.i114 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr = load i32, ptr %usb_err.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i131 = icmp slt i32 %.pr, 0
  br i1 %cmp.i131, label %reg_w_riv.exit129.sw.epilog27_crit_edge, label %if.end.i137

reg_w_riv.exit129.sw.epilog27_crit_edge:          ; preds = %reg_w_riv.exit129
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog27

if.end.i137:                                      ; preds = %reg_w_riv.exit129
  %114 = ptrtoint ptr %dev1.i116 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev1.i116, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 8
  %shl.i.i133 = shl i32 %117, 8
  %or.i134 = or i32 %shl.i.i133, -2147483648
  %call2.i135 = tail call i32 @usb_control_msg(ptr noundef %115, i32 noundef %or.i134, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 8976, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i135)
  %cmp3.i136 = icmp slt i32 %call2.i135, 0
  br i1 %cmp3.i136, label %do.end.i139, label %do.body8.i141

do.end.i139:                                      ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i135) #8
  %118 = ptrtoint ptr %usb_err.i114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call2.i135, ptr %usb_err.i114, align 8
  br label %sw.epilog27

do.body8.i141:                                    ; preds = %if.end.i137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %119 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %119)
  %cmp9.i140 = icmp sgt i32 %119, 6
  br i1 %cmp9.i140, label %do.end13.i144, label %do.body8.i141.sw.epilog27_crit_edge

do.body8.i141.sw.epilog27_crit_edge:              ; preds = %do.body8.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog27

do.end13.i144:                                    ; preds = %do.body8.i141
  call void @__sanitizer_cov_trace_pc() #7
  %name.i142 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i142, i32 noundef 0, i32 noundef 8976, i32 noundef 5) #8
  br label %sw.epilog27

sw.bb16:                                          ; preds = %if.end
  %subtype17 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %120 = ptrtoint ptr %subtype17 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %subtype17, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %121)
  %cmp19 = icmp eq i8 %121, 2
  %usb_err.i.i146 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br i1 %cmp19, label %sw.bb16.while.body.i148_crit_edge, label %sw.bb16.while.body.i163_crit_edge

sw.bb16.while.body.i163_crit_edge:                ; preds = %sw.bb16
  br label %while.body.i163

sw.bb16.while.body.i148_crit_edge:                ; preds = %sw.bb16
  br label %while.body.i148

while.body.i148:                                  ; preds = %reg_w_riv.exit.i.while.body.i148_crit_edge, %sw.bb16.while.body.i148_crit_edge
  %dec7.i = phi i32 [ %dec.i153, %reg_w_riv.exit.i.while.body.i148_crit_edge ], [ 20, %sw.bb16.while.body.i148_crit_edge ]
  %data.addr.06.i = phi ptr [ %incdec.ptr.i, %reg_w_riv.exit.i.while.body.i148_crit_edge ], [ @spca504A_clicksmart420_init_data, %sw.bb16.while.body.i148_crit_edge ]
  %122 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %data.addr.06.i, align 2
  %idx.i = getelementptr inbounds %struct.cmd, ptr %data.addr.06.i, i32 0, i32 2
  %124 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %idx.i, align 2
  %val.i = getelementptr inbounds %struct.cmd, ptr %data.addr.06.i, i32 0, i32 1
  %126 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %val.i, align 2
  %128 = ptrtoint ptr %usb_err.i.i146 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %usb_err.i.i146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i.i147 = icmp slt i32 %129, 0
  br i1 %cmp.i.i147, label %while.body.i148.reg_w_riv.exit.i_crit_edge, label %if.end.i.i151

while.body.i148.reg_w_riv.exit.i_crit_edge:       ; preds = %while.body.i148
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i

if.end.i.i151:                                    ; preds = %while.body.i148
  %130 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev1.i.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 8
  %shl.i.i.i149 = shl i32 %133, 8
  %or.i.i150 = or i32 %shl.i.i.i149, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %131, i32 noundef %or.i.i150, i8 noundef zeroext %123, i8 noundef zeroext 64, i16 noundef zeroext %127, i16 noundef zeroext %125, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i152, label %do.body8.i.i

do.end.i.i152:                                    ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i) #8
  %134 = ptrtoint ptr %usb_err.i.i146 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call2.i.i, ptr %usb_err.i.i146, align 8
  br label %reg_w_riv.exit.i

do.body8.i.i:                                     ; preds = %if.end.i.i151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %135 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %135)
  %cmp9.i.i = icmp sgt i32 %135, 6
  br i1 %cmp9.i.i, label %do.end13.i.i, label %do.body8.i.i.reg_w_riv.exit.i_crit_edge

do.body8.i.i.reg_w_riv.exit.i_crit_edge:          ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i

do.end13.i.i:                                     ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %123 to i32
  %conv15.i.i = zext i16 %125 to i32
  %conv16.i.i = zext i16 %127 to i32
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef %conv.i.i, i32 noundef %conv15.i.i, i32 noundef %conv16.i.i) #8
  br label %reg_w_riv.exit.i

reg_w_riv.exit.i:                                 ; preds = %do.end13.i.i, %do.body8.i.i.reg_w_riv.exit.i_crit_edge, %do.end.i.i152, %while.body.i148.reg_w_riv.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.cmd, ptr %data.addr.06.i, i32 1
  %dec.i153 = add nsw i32 %dec7.i, -1
  %cmp.i154 = icmp sgt i32 %dec7.i, 0
  br i1 %cmp.i154, label %reg_w_riv.exit.i.while.body.i148_crit_edge, label %reg_w_riv.exit.i.if.end23_crit_edge

reg_w_riv.exit.i.if.end23_crit_edge:              ; preds = %reg_w_riv.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

reg_w_riv.exit.i.while.body.i148_crit_edge:       ; preds = %reg_w_riv.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i148

while.body.i163:                                  ; preds = %reg_w_riv.exit.i181.while.body.i163_crit_edge, %sw.bb16.while.body.i163_crit_edge
  %dec7.i158 = phi i32 [ %dec.i179, %reg_w_riv.exit.i181.while.body.i163_crit_edge ], [ 21, %sw.bb16.while.body.i163_crit_edge ]
  %data.addr.06.i159 = phi ptr [ %incdec.ptr.i178, %reg_w_riv.exit.i181.while.body.i163_crit_edge ], [ @spca504_pccam600_init_data, %sw.bb16.while.body.i163_crit_edge ]
  %136 = ptrtoint ptr %data.addr.06.i159 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %data.addr.06.i159, align 2
  %idx.i160 = getelementptr inbounds %struct.cmd, ptr %data.addr.06.i159, i32 0, i32 2
  %138 = ptrtoint ptr %idx.i160 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %idx.i160, align 2
  %val.i161 = getelementptr inbounds %struct.cmd, ptr %data.addr.06.i159, i32 0, i32 1
  %140 = ptrtoint ptr %val.i161 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %val.i161, align 2
  %142 = ptrtoint ptr %usb_err.i.i146 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %usb_err.i.i146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i.i162 = icmp slt i32 %143, 0
  br i1 %cmp.i.i162, label %while.body.i163.reg_w_riv.exit.i181_crit_edge, label %if.end.i.i168

while.body.i163.reg_w_riv.exit.i181_crit_edge:    ; preds = %while.body.i163
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i181

if.end.i.i168:                                    ; preds = %while.body.i163
  %144 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev1.i.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 8
  %shl.i.i.i164 = shl i32 %147, 8
  %or.i.i165 = or i32 %shl.i.i.i164, -2147483648
  %call2.i.i166 = tail call i32 @usb_control_msg(ptr noundef %145, i32 noundef %or.i.i165, i8 noundef zeroext %137, i8 noundef zeroext 64, i16 noundef zeroext %141, i16 noundef zeroext %139, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i166)
  %cmp3.i.i167 = icmp slt i32 %call2.i.i166, 0
  br i1 %cmp3.i.i167, label %do.end.i.i170, label %do.body8.i.i172

do.end.i.i170:                                    ; preds = %if.end.i.i168
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i166) #8
  %148 = ptrtoint ptr %usb_err.i.i146 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %call2.i.i166, ptr %usb_err.i.i146, align 8
  br label %reg_w_riv.exit.i181

do.body8.i.i172:                                  ; preds = %if.end.i.i168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %149 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %149)
  %cmp9.i.i171 = icmp sgt i32 %149, 6
  br i1 %cmp9.i.i171, label %do.end13.i.i177, label %do.body8.i.i172.reg_w_riv.exit.i181_crit_edge

do.body8.i.i172.reg_w_riv.exit.i181_crit_edge:    ; preds = %do.body8.i.i172
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i181

do.end13.i.i177:                                  ; preds = %do.body8.i.i172
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i173 = zext i8 %137 to i32
  %conv15.i.i174 = zext i16 %139 to i32
  %conv16.i.i175 = zext i16 %141 to i32
  %call17.i.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef %conv.i.i173, i32 noundef %conv15.i.i174, i32 noundef %conv16.i.i175) #8
  br label %reg_w_riv.exit.i181

reg_w_riv.exit.i181:                              ; preds = %do.end13.i.i177, %do.body8.i.i172.reg_w_riv.exit.i181_crit_edge, %do.end.i.i170, %while.body.i163.reg_w_riv.exit.i181_crit_edge
  %incdec.ptr.i178 = getelementptr %struct.cmd, ptr %data.addr.06.i159, i32 1
  %dec.i179 = add nsw i32 %dec7.i158, -1
  %cmp.i180 = icmp sgt i32 %dec7.i158, 0
  br i1 %cmp.i180, label %reg_w_riv.exit.i181.while.body.i163_crit_edge, label %reg_w_riv.exit.i181.if.end23_crit_edge

reg_w_riv.exit.i181.if.end23_crit_edge:           ; preds = %reg_w_riv.exit.i181
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

reg_w_riv.exit.i181.while.body.i163_crit_edge:    ; preds = %reg_w_riv.exit.i181
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i163

if.end23:                                         ; preds = %reg_w_riv.exit.i181.if.end23_crit_edge, %reg_w_riv.exit.i.if.end23_crit_edge
  %autogain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %150 = ptrtoint ptr %autogain to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %autogain, align 8, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not = icmp eq i8 %151, 0
  %conv25 = select i1 %tobool.not, i16 1, i16 4
  %usb_err.i183 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %152 = ptrtoint ptr %usb_err.i183 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %usb_err.i183, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp.i184 = icmp slt i32 %153, 0
  br i1 %cmp.i184, label %if.end23.reg_w_riv.exit247_crit_edge, label %if.end.i190

if.end23.reg_w_riv.exit247_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit247

if.end.i190:                                      ; preds = %if.end23
  %dev1.i185 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %154 = ptrtoint ptr %dev1.i185 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev1.i185, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 8
  %shl.i.i186 = shl i32 %157, 8
  %or.i187 = or i32 %shl.i.i186, -2147483648
  %call2.i188 = tail call i32 @usb_control_msg(ptr noundef %155, i32 noundef %or.i187, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext %conv25, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i188)
  %cmp3.i189 = icmp slt i32 %call2.i188, 0
  br i1 %cmp3.i189, label %do.end.i192, label %do.body8.i194

do.end.i192:                                      ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i188) #8
  %158 = ptrtoint ptr %usb_err.i183 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %call2.i188, ptr %usb_err.i183, align 8
  br label %reg_w_riv.exit247

do.body8.i194:                                    ; preds = %if.end.i190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %159 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %159)
  %cmp9.i193 = icmp sgt i32 %159, 6
  br i1 %cmp9.i193, label %do.end13.i197, label %do.body8.i194.reg_w_riv.exit198_crit_edge

do.body8.i194.reg_w_riv.exit198_crit_edge:        ; preds = %do.body8.i194
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit198

do.end13.i197:                                    ; preds = %do.body8.i194
  call void @__sanitizer_cov_trace_pc() #7
  %name.i195 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv16.i = zext i16 %conv25 to i32
  %call17.i196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i195, i32 noundef 12, i32 noundef 0, i32 noundef %conv16.i) #8
  br label %reg_w_riv.exit198

reg_w_riv.exit198:                                ; preds = %do.end13.i197, %do.body8.i194.reg_w_riv.exit198_crit_edge
  %160 = ptrtoint ptr %usb_err.i183 to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pr283 = load i32, ptr %usb_err.i183, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr283)
  %cmp.i200 = icmp slt i32 %.pr283, 0
  br i1 %cmp.i200, label %reg_w_riv.exit198.reg_w_riv.exit247_crit_edge, label %if.end.i206

reg_w_riv.exit198.reg_w_riv.exit247_crit_edge:    ; preds = %reg_w_riv.exit198
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit247

if.end.i206:                                      ; preds = %reg_w_riv.exit198
  %161 = ptrtoint ptr %dev1.i185 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev1.i185, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 8
  %shl.i.i202 = shl i32 %164, 8
  %or.i203 = or i32 %shl.i.i202, -2147483648
  %call2.i204 = tail call i32 @usb_control_msg(ptr noundef %162, i32 noundef %or.i203, i8 noundef zeroext -80, i8 noundef zeroext 64, i16 noundef zeroext %conv25, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i204)
  %cmp3.i205 = icmp slt i32 %call2.i204, 0
  br i1 %cmp3.i205, label %do.end.i208, label %do.body8.i210

do.end.i208:                                      ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i204) #8
  %165 = ptrtoint ptr %usb_err.i183 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %call2.i204, ptr %usb_err.i183, align 8
  br label %reg_w_riv.exit247

do.body8.i210:                                    ; preds = %if.end.i206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %166 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %166)
  %cmp9.i209 = icmp sgt i32 %166, 6
  br i1 %cmp9.i209, label %do.end13.i214, label %do.body8.i210.reg_w_riv.exit215_crit_edge

do.body8.i210.reg_w_riv.exit215_crit_edge:        ; preds = %do.body8.i210
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit215

do.end13.i214:                                    ; preds = %do.body8.i210
  call void @__sanitizer_cov_trace_pc() #7
  %name.i211 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv16.i212 = zext i16 %conv25 to i32
  %call17.i213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i211, i32 noundef 176, i32 noundef 0, i32 noundef %conv16.i212) #8
  br label %reg_w_riv.exit215

reg_w_riv.exit215:                                ; preds = %do.end13.i214, %do.body8.i210.reg_w_riv.exit215_crit_edge
  %167 = ptrtoint ptr %usb_err.i183 to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pr285.pr = load i32, ptr %usb_err.i183, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr285.pr)
  %cmp.i217 = icmp slt i32 %.pr285.pr, 0
  br i1 %cmp.i217, label %reg_w_riv.exit215.reg_w_riv.exit247_crit_edge, label %if.end.i223

reg_w_riv.exit215.reg_w_riv.exit247_crit_edge:    ; preds = %reg_w_riv.exit215
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit247

if.end.i223:                                      ; preds = %reg_w_riv.exit215
  %168 = ptrtoint ptr %dev1.i185 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev1.i185, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 8
  %shl.i.i219 = shl i32 %171, 8
  %or.i220 = or i32 %shl.i.i219, -2147483648
  %call2.i221 = tail call i32 @usb_control_msg(ptr noundef %169, i32 noundef %or.i220, i8 noundef zeroext 48, i8 noundef zeroext 64, i16 noundef zeroext 800, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i221)
  %cmp3.i222 = icmp slt i32 %call2.i221, 0
  br i1 %cmp3.i222, label %do.end.i225, label %do.body8.i227

do.end.i225:                                      ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i221) #8
  %172 = ptrtoint ptr %usb_err.i183 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %call2.i221, ptr %usb_err.i183, align 8
  br label %reg_w_riv.exit247

do.body8.i227:                                    ; preds = %if.end.i223
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %173 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %173)
  %cmp9.i226 = icmp sgt i32 %173, 6
  br i1 %cmp9.i226, label %do.end13.i230, label %do.body8.i227.reg_w_riv.exit231_crit_edge

do.body8.i227.reg_w_riv.exit231_crit_edge:        ; preds = %do.body8.i227
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit231

do.end13.i230:                                    ; preds = %do.body8.i227
  call void @__sanitizer_cov_trace_pc() #7
  %name.i228 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i228, i32 noundef 48, i32 noundef 1, i32 noundef 800) #8
  br label %reg_w_riv.exit231

reg_w_riv.exit231:                                ; preds = %do.end13.i230, %do.body8.i227.reg_w_riv.exit231_crit_edge
  %174 = ptrtoint ptr %usb_err.i183 to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pr287.pr = load i32, ptr %usb_err.i183, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr287.pr)
  %cmp.i233 = icmp slt i32 %.pr287.pr, 0
  br i1 %cmp.i233, label %reg_w_riv.exit231.reg_w_riv.exit247_crit_edge, label %if.end.i239

reg_w_riv.exit231.reg_w_riv.exit247_crit_edge:    ; preds = %reg_w_riv.exit231
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit247

if.end.i239:                                      ; preds = %reg_w_riv.exit231
  %175 = ptrtoint ptr %dev1.i185 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev1.i185, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %176, align 8
  %shl.i.i235 = shl i32 %178, 8
  %or.i236 = or i32 %shl.i.i235, -2147483648
  %call2.i237 = tail call i32 @usb_control_msg(ptr noundef %176, i32 noundef %or.i236, i8 noundef zeroext 48, i8 noundef zeroext 64, i16 noundef zeroext 1600, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i237)
  %cmp3.i238 = icmp slt i32 %call2.i237, 0
  br i1 %cmp3.i238, label %do.end.i241, label %do.body8.i243

do.end.i241:                                      ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i237) #8
  %179 = ptrtoint ptr %usb_err.i183 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call2.i237, ptr %usb_err.i183, align 8
  br label %reg_w_riv.exit247

do.body8.i243:                                    ; preds = %if.end.i239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %180 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %180)
  %cmp9.i242 = icmp sgt i32 %180, 6
  br i1 %cmp9.i242, label %do.end13.i246, label %do.body8.i243.reg_w_riv.exit247_crit_edge

do.body8.i243.reg_w_riv.exit247_crit_edge:        ; preds = %do.body8.i243
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit247

do.end13.i246:                                    ; preds = %do.body8.i243
  call void @__sanitizer_cov_trace_pc() #7
  %name.i244 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i244, i32 noundef 48, i32 noundef 2, i32 noundef 1600) #8
  br label %reg_w_riv.exit247

reg_w_riv.exit247:                                ; preds = %do.end13.i246, %do.body8.i243.reg_w_riv.exit247_crit_edge, %do.end.i241, %reg_w_riv.exit231.reg_w_riv.exit247_crit_edge, %do.end.i225, %reg_w_riv.exit215.reg_w_riv.exit247_crit_edge, %do.end.i208, %reg_w_riv.exit198.reg_w_riv.exit247_crit_edge, %do.end.i192, %if.end23.reg_w_riv.exit247_crit_edge
  tail call fastcc void @spca504B_SetSizeType(ptr noundef %gspca_dev)
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %reg_w_riv.exit247, %do.end13.i144, %do.body8.i141.sw.epilog27_crit_edge, %do.end.i139, %reg_w_riv.exit129.sw.epilog27_crit_edge, %do.end.i123, %if.end15.sw.epilog27_crit_edge, %if.end.i113.sw.epilog27_crit_edge, %reg_r.exit.i112.sw.epilog27_crit_edge, %reg_w_riv.exit84
  %181 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %bridge, align 1
  %183 = zext i8 %182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %182, label %sw.epilog27.sw.default.i_crit_edge [
    i8 0, label %sw.epilog27.sw.bb.i_crit_edge
    i8 2, label %sw.epilog27.sw.bb.i_crit_edge304
    i8 4, label %sw.bb1.i
  ]

sw.epilog27.sw.bb.i_crit_edge304:                 ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.epilog27.sw.bb.i_crit_edge:                    ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.epilog27.sw.default.i_crit_edge:               ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

sw.bb.i:                                          ; preds = %sw.epilog27.sw.bb.i_crit_edge, %sw.epilog27.sw.bb.i_crit_edge304
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i, %sw.epilog27.sw.default.i_crit_edge
  %tobool.not.i = phi i1 [ false, %sw.epilog27.sw.default.i_crit_edge ], [ true, %sw.bb.i ]
  %usb_err.i.i248 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %184 = ptrtoint ptr %usb_err.i.i248 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %usb_err.i.i248, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp.i.i249 = icmp slt i32 %185, 0
  br i1 %cmp.i.i249, label %sw.default.i.sw.epilog.i_crit_edge, label %if.end.i.i255

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.i255:                                    ; preds = %sw.default.i
  %dev1.i.i250 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %186 = ptrtoint ptr %dev1.i.i250 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev1.i.i250, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 8
  %shl.i.i.i251 = shl i32 %189, 8
  %or.i.i252 = or i32 %shl.i.i.i251, -2147483648
  %call2.i.i253 = tail call i32 @usb_control_msg(ptr noundef %187, i32 noundef %or.i.i252, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8621, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i253)
  %cmp3.i.i254 = icmp slt i32 %call2.i.i253, 0
  br i1 %cmp3.i.i254, label %do.end.i.i257, label %do.body8.i.i259

do.end.i.i257:                                    ; preds = %if.end.i.i255
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i253) #8
  %190 = ptrtoint ptr %usb_err.i.i248 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %call2.i.i253, ptr %usb_err.i.i248, align 8
  br label %sw.epilog.i

do.body8.i.i259:                                  ; preds = %if.end.i.i255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %191 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %191)
  %cmp9.i.i258 = icmp sgt i32 %191, 6
  br i1 %cmp9.i.i258, label %do.end13.i.i262, label %do.body8.i.i259.reg_w_riv.exit.i264_crit_edge

do.body8.i.i259.reg_w_riv.exit.i264_crit_edge:    ; preds = %do.body8.i.i259
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit.i264

do.end13.i.i262:                                  ; preds = %do.body8.i.i259
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i260 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i.i261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i260, i32 noundef 0, i32 noundef 8621, i32 noundef 0) #8
  br label %reg_w_riv.exit.i264

reg_w_riv.exit.i264:                              ; preds = %do.end13.i.i262, %do.body8.i.i259.reg_w_riv.exit.i264_crit_edge
  %192 = ptrtoint ptr %usb_err.i.i248 to i32
  call void @__asan_load4_noabort(i32 %192)
  %.pr.i263 = load i32, ptr %usb_err.i.i248, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i263)
  %cmp.i10.i = icmp slt i32 %.pr.i263, 0
  br i1 %cmp.i10.i, label %reg_w_riv.exit.i264.sw.epilog.i_crit_edge, label %if.end.i16.i

reg_w_riv.exit.i264.sw.epilog.i_crit_edge:        ; preds = %reg_w_riv.exit.i264
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i16.i:                                     ; preds = %reg_w_riv.exit.i264
  %193 = ptrtoint ptr %dev1.i.i250 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev1.i.i250, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 8
  %shl.i.i12.i = shl i32 %196, 8
  %or.i13.i = or i32 %shl.i.i12.i, -2147483648
  %call2.i14.i = tail call i32 @usb_control_msg(ptr noundef %194, i32 noundef %or.i13.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 8620, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i14.i)
  %cmp3.i15.i = icmp slt i32 %call2.i14.i, 0
  br i1 %cmp3.i15.i, label %do.end.i18.i, label %do.body8.i20.i

do.end.i18.i:                                     ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i14.i) #8
  %197 = ptrtoint ptr %usb_err.i.i248 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call2.i14.i, ptr %usb_err.i.i248, align 8
  br label %sw.epilog.i

do.body8.i20.i:                                   ; preds = %if.end.i16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %198 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %198)
  %cmp9.i19.i = icmp sgt i32 %198, 6
  br i1 %cmp9.i19.i, label %do.end13.i23.i, label %do.body8.i20.i.reg_w_riv.exit24.i_crit_edge

do.body8.i20.i.reg_w_riv.exit24.i_crit_edge:      ; preds = %do.body8.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit24.i

do.end13.i23.i:                                   ; preds = %do.body8.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i21.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i21.i, i32 noundef 0, i32 noundef 8620, i32 noundef 1) #8
  br label %reg_w_riv.exit24.i

reg_w_riv.exit24.i:                               ; preds = %do.end13.i23.i, %do.body8.i20.i.reg_w_riv.exit24.i_crit_edge
  %199 = ptrtoint ptr %usb_err.i.i248 to i32
  call void @__asan_load4_noabort(i32 %199)
  %.pr91.pr.i = load i32, ptr %usb_err.i.i248, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr91.pr.i)
  %cmp.i26.i = icmp slt i32 %.pr91.pr.i, 0
  br i1 %cmp.i26.i, label %reg_w_riv.exit24.i.sw.epilog.i_crit_edge, label %if.end.i32.i

reg_w_riv.exit24.i.sw.epilog.i_crit_edge:         ; preds = %reg_w_riv.exit24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i32.i:                                     ; preds = %reg_w_riv.exit24.i
  %200 = ptrtoint ptr %dev1.i.i250 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev1.i.i250, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 8
  %shl.i.i28.i = shl i32 %203, 8
  %or.i29.i = or i32 %shl.i.i28.i, -2147483648
  %call2.i30.i = tail call i32 @usb_control_msg(ptr noundef %201, i32 noundef %or.i29.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8611, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i30.i)
  %cmp3.i31.i = icmp slt i32 %call2.i30.i, 0
  br i1 %cmp3.i31.i, label %do.end.i34.i, label %do.body8.i36.i

do.end.i34.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i30.i) #8
  %204 = ptrtoint ptr %usb_err.i.i248 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %call2.i30.i, ptr %usb_err.i.i248, align 8
  br label %sw.epilog.i

do.body8.i36.i:                                   ; preds = %if.end.i32.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %205 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %205)
  %cmp9.i35.i = icmp sgt i32 %205, 6
  br i1 %cmp9.i35.i, label %do.end13.i39.i, label %do.body8.i36.i.sw.epilog.i_crit_edge

do.body8.i36.i.sw.epilog.i_crit_edge:             ; preds = %do.body8.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end13.i39.i:                                   ; preds = %do.body8.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i37.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i37.i, i32 noundef 0, i32 noundef 8611, i32 noundef 0) #8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.epilog27
  %usb_err.i41.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %206 = ptrtoint ptr %usb_err.i41.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %usb_err.i41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp.i42.i = icmp slt i32 %207, 0
  br i1 %cmp.i42.i, label %sw.bb1.i.if.then.i_crit_edge, label %if.end.i48.i

sw.bb1.i.if.then.i_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.i48.i:                                     ; preds = %sw.bb1.i
  %dev1.i43.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %208 = ptrtoint ptr %dev1.i43.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev1.i43.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 8
  %shl.i.i44.i = shl i32 %211, 8
  %or.i45.i = or i32 %shl.i.i44.i, -2147483648
  %call2.i46.i = tail call i32 @usb_control_msg(ptr noundef %209, i32 noundef %or.i45.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 8437, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i46.i)
  %cmp3.i47.i = icmp slt i32 %call2.i46.i, 0
  br i1 %cmp3.i47.i, label %do.end.i50.i, label %do.body8.i52.i

do.end.i50.i:                                     ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i46.i) #8
  %212 = ptrtoint ptr %usb_err.i41.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %call2.i46.i, ptr %usb_err.i41.i, align 8
  br label %if.then.i

do.body8.i52.i:                                   ; preds = %if.end.i48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %213 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %213)
  %cmp9.i51.i = icmp sgt i32 %213, 6
  br i1 %cmp9.i51.i, label %do.end13.i55.i, label %do.body8.i52.i.reg_w_riv.exit56.i_crit_edge

do.body8.i52.i.reg_w_riv.exit56.i_crit_edge:      ; preds = %do.body8.i52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit56.i

do.end13.i55.i:                                   ; preds = %do.body8.i52.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i53.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i53.i, i32 noundef 0, i32 noundef 8437, i32 noundef 64) #8
  br label %reg_w_riv.exit56.i

reg_w_riv.exit56.i:                               ; preds = %do.end13.i55.i, %do.body8.i52.i.reg_w_riv.exit56.i_crit_edge
  %214 = ptrtoint ptr %usb_err.i41.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %.pr93.i = load i32, ptr %usb_err.i41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr93.i)
  %cmp.i58.i = icmp slt i32 %.pr93.i, 0
  br i1 %cmp.i58.i, label %reg_w_riv.exit56.i.if.then.i_crit_edge, label %if.end.i64.i

reg_w_riv.exit56.i.if.then.i_crit_edge:           ; preds = %reg_w_riv.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.i64.i:                                     ; preds = %reg_w_riv.exit56.i
  %215 = ptrtoint ptr %dev1.i43.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev1.i43.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 8
  %shl.i.i60.i = shl i32 %218, 8
  %or.i61.i = or i32 %shl.i.i60.i, -2147483648
  %call2.i62.i = tail call i32 @usb_control_msg(ptr noundef %216, i32 noundef %or.i61.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 8436, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i62.i)
  %cmp3.i63.i = icmp slt i32 %call2.i62.i, 0
  br i1 %cmp3.i63.i, label %do.end.i66.i, label %do.body8.i68.i

do.end.i66.i:                                     ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i62.i) #8
  %219 = ptrtoint ptr %usb_err.i41.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %call2.i62.i, ptr %usb_err.i41.i, align 8
  br label %if.then.i

do.body8.i68.i:                                   ; preds = %if.end.i64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %220 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %220)
  %cmp9.i67.i = icmp sgt i32 %220, 6
  br i1 %cmp9.i67.i, label %do.end13.i71.i, label %do.body8.i68.i.reg_w_riv.exit72.i_crit_edge

do.body8.i68.i.reg_w_riv.exit72.i_crit_edge:      ; preds = %do.body8.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit72.i

do.end13.i71.i:                                   ; preds = %do.body8.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i69.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i69.i, i32 noundef 0, i32 noundef 8436, i32 noundef 1) #8
  br label %reg_w_riv.exit72.i

reg_w_riv.exit72.i:                               ; preds = %do.end13.i71.i, %do.body8.i68.i.reg_w_riv.exit72.i_crit_edge
  %221 = ptrtoint ptr %usb_err.i41.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %.pr95.pr.i = load i32, ptr %usb_err.i41.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr95.pr.i)
  %cmp.i74.i = icmp slt i32 %.pr95.pr.i, 0
  br i1 %cmp.i74.i, label %reg_w_riv.exit72.i.if.then.i_crit_edge, label %if.end.i80.i

reg_w_riv.exit72.i.if.then.i_crit_edge:           ; preds = %reg_w_riv.exit72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.i80.i:                                     ; preds = %reg_w_riv.exit72.i
  %222 = ptrtoint ptr %dev1.i43.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev1.i43.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 8
  %shl.i.i76.i = shl i32 %225, 8
  %or.i77.i = or i32 %shl.i.i76.i, -2147483648
  %call2.i78.i = tail call i32 @usb_control_msg(ptr noundef %223, i32 noundef %or.i77.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8329, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i78.i)
  %cmp3.i79.i = icmp slt i32 %call2.i78.i, 0
  br i1 %cmp3.i79.i, label %do.end.i82.i, label %do.body8.i84.i

do.end.i82.i:                                     ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i78.i) #8
  %226 = ptrtoint ptr %usb_err.i41.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %call2.i78.i, ptr %usb_err.i41.i, align 8
  br label %if.then.i

do.body8.i84.i:                                   ; preds = %if.end.i80.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %227 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %227)
  %cmp9.i83.i = icmp sgt i32 %227, 6
  br i1 %cmp9.i83.i, label %do.end13.i87.i, label %do.body8.i84.i.if.then.i_crit_edge

do.body8.i84.i.if.then.i_crit_edge:               ; preds = %do.body8.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

do.end13.i87.i:                                   ; preds = %do.body8.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i85.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i85.i, i32 noundef 0, i32 noundef 8329, i32 noundef 0) #8
  br label %if.then.i

sw.epilog.i:                                      ; preds = %do.end13.i39.i, %do.body8.i36.i.sw.epilog.i_crit_edge, %do.end.i34.i, %reg_w_riv.exit24.i.sw.epilog.i_crit_edge, %do.end.i18.i, %reg_w_riv.exit.i264.sw.epilog.i_crit_edge, %do.end.i.i257, %sw.default.i.sw.epilog.i_crit_edge
  br i1 %tobool.not.i, label %sw.epilog.i.init_ctl_reg.exit_crit_edge, label %sw.epilog.i.if.then.i_crit_edge

sw.epilog.i.if.then.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

sw.epilog.i.init_ctl_reg.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_ctl_reg.exit

if.then.i:                                        ; preds = %sw.epilog.i.if.then.i_crit_edge, %do.end13.i87.i, %do.body8.i84.i.if.then.i_crit_edge, %do.end.i82.i, %reg_w_riv.exit72.i.if.then.i_crit_edge, %do.end.i66.i, %reg_w_riv.exit56.i.if.then.i_crit_edge, %do.end.i50.i, %sw.bb1.i.if.then.i_crit_edge
  %usb_err.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i.i.i265 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i.i266 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i.i269

while.body.i.i269:                                ; preds = %if.end.i89.i.while.body.i.i269_crit_edge, %if.then.i
  %dec4.i.i267 = phi i32 [ 9, %if.then.i ], [ %dec.i.i279, %if.end.i89.i.while.body.i.i269_crit_edge ]
  %228 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %usb_err.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp15.i.i.i268 = icmp slt i32 %229, 0
  br i1 %cmp15.i.i.i268, label %while.body.i.i269.reg_r.exit.i.i278_crit_edge, label %if.end18.i.i.i274

while.body.i.i269.reg_r.exit.i.i278_crit_edge:    ; preds = %while.body.i.i269
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i.i278

if.end18.i.i.i274:                                ; preds = %while.body.i.i269
  %230 = ptrtoint ptr %dev.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev.i.i.i265, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 8
  %shl.i.i.i.i270 = shl i32 %233, 8
  %or21.i.i.i271 = or i32 %shl.i.i.i.i270, -2147483520
  %234 = ptrtoint ptr %usb_buf.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %usb_buf.i.i.i266, align 4
  %call22.i.i.i272 = tail call i32 @usb_control_msg(ptr noundef %231, i32 noundef %or21.i.i.i271, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %235, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i272)
  %cmp23.i.i.i273 = icmp slt i32 %call22.i.i.i272, 0
  br i1 %cmp23.i.i.i273, label %do.end28.i.i.i276, label %if.end18.i.i.i274.reg_r.exit.i.i278_crit_edge

if.end18.i.i.i274.reg_r.exit.i.i278_crit_edge:    ; preds = %if.end18.i.i.i274
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i.i278

do.end28.i.i.i276:                                ; preds = %if.end18.i.i.i274
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i.i275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i.i272) #8
  %236 = ptrtoint ptr %usb_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %call22.i.i.i272, ptr %usb_err.i.i.i, align 8
  %237 = ptrtoint ptr %usb_buf.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %usb_buf.i.i.i266, align 4
  %239 = call ptr @memset(ptr %238, i32 0, i32 64)
  br label %reg_r.exit.i.i278

reg_r.exit.i.i278:                                ; preds = %do.end28.i.i.i276, %if.end18.i.i.i274.reg_r.exit.i.i278_crit_edge, %while.body.i.i269.reg_r.exit.i.i278_crit_edge
  %240 = ptrtoint ptr %usb_buf.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %usb_buf.i.i.i266, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %241, align 1
  %244 = and i8 %243, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %cmp1.i.i277 = icmp eq i8 %244, 0
  br i1 %cmp1.i.i277, label %reg_r.exit.i.i278.init_ctl_reg.exit_crit_edge, label %if.end.i89.i

reg_r.exit.i.i278.init_ctl_reg.exit_crit_edge:    ; preds = %reg_r.exit.i.i278
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_ctl_reg.exit

if.end.i89.i:                                     ; preds = %reg_r.exit.i.i278
  tail call void @msleep(i32 noundef 10) #5
  %dec.i.i279 = add nsw i32 %dec4.i.i267, -1
  %cmp.not.i.i280 = icmp eq i32 %dec.i.i279, 0
  br i1 %cmp.not.i.i280, label %if.end.i89.i.init_ctl_reg.exit_crit_edge, label %if.end.i89.i.while.body.i.i269_crit_edge

if.end.i89.i.while.body.i.i269_crit_edge:         ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i269

if.end.i89.i.init_ctl_reg.exit_crit_edge:         ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_ctl_reg.exit

init_ctl_reg.exit:                                ; preds = %if.end.i89.i.init_ctl_reg.exit_crit_edge, %reg_r.exit.i.i278.init_ctl_reg.exit_crit_edge, %sw.epilog.i.init_ctl_reg.exit_crit_edge
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %245 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %usb_err, align 8
  ret i32 %246
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %1, label %sw.default [
    i8 3, label %sw.bb
    i8 4, label %sw.bb11
    i8 2, label %sw.bb32
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp = icmp eq i8 %4, -1
  %arrayidx3 = getelementptr i8, ptr %data, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp5.not = icmp eq i8 %6, 1
  br i1 %cmp5.not, label %if.then.if.then44_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.then44_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %sub9 = add i32 %len, -1
  br label %do.body.preheader

sw.bb11:                                          ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp14 = icmp eq i8 %8, -1
  br i1 %cmp14, label %sw.bb11.if.then44_crit_edge, label %if.else19

sw.bb11.if.then44_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.else19:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr20 = getelementptr i8, ptr %data, i32 2
  %sub21 = add i32 %len, -2
  br label %do.body.preheader

sw.default:                                       ; preds = %entry
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %10, label %sw.default29 [
    i8 -2, label %sw.default.if.then44_crit_edge
    i8 -1, label %sw.default.cleanup_crit_edge
  ]

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.default.if.then44_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

sw.default29:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr30 = getelementptr i8, ptr %data, i32 1
  %sub31 = add i32 %len, -1
  br label %do.body.preheader

sw.bb32:                                          ; preds = %entry
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %13, label %sw.default39 [
    i8 -2, label %sw.bb32.if.then44_crit_edge
    i8 -1, label %sw.bb32.cleanup_crit_edge
  ]

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb32.if.then44_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

sw.default39:                                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr40 = getelementptr i8, ptr %data, i32 1
  %sub41 = add i32 %len, -1
  br label %do.body.preheader

if.then44:                                        ; preds = %sw.bb32.if.then44_crit_edge, %sw.default.if.then44_crit_edge, %sw.bb11.if.then44_crit_edge, %if.then.if.then44_crit_edge
  %.sink100 = phi i32 [ 16, %if.then.if.then44_crit_edge ], [ 4, %sw.bb11.if.then44_crit_edge ], [ 10, %sw.default.if.then44_crit_edge ], [ 14, %sw.bb32.if.then44_crit_edge ]
  %.sink = phi i32 [ -16, %if.then.if.then44_crit_edge ], [ -4, %sw.bb11.if.then44_crit_edge ], [ -10, %sw.default.if.then44_crit_edge ], [ -14, %sw.bb32.if.then44_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data, i32 %.sink100
  %sub = add i32 %.sink, %len
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef nonnull @sd_pkt_scan.ffd9, i32 noundef 2) #5
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #5
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then44, %sw.default39, %sw.default29, %if.else19, %if.else
  %data.addr.1.ph = phi ptr [ %add.ptr30, %sw.default29 ], [ %add.ptr40, %sw.default39 ], [ %add.ptr20, %if.else19 ], [ %arrayidx3, %if.else ], [ %add.ptr, %if.then44 ]
  %len.addr.1.ph = phi i32 [ %sub31, %sw.default29 ], [ %sub41, %sw.default39 ], [ %sub21, %if.else19 ], [ %sub9, %if.else ], [ %sub, %if.then44 ]
  br label %do.body

do.body:                                          ; preds = %if.end53.do.body_crit_edge, %do.body.preheader
  %data.addr.1 = phi ptr [ %data.addr.2, %if.end53.do.body_crit_edge ], [ %data.addr.1.ph, %do.body.preheader ]
  %len.addr.1 = phi i32 [ %len.addr.2, %if.end53.do.body_crit_edge ], [ %len.addr.1.ph, %do.body.preheader ]
  %i.0 = phi i32 [ %inc, %if.end53.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %arrayidx46 = getelementptr i8, ptr %data.addr.1, i32 %i.0
  %15 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp48 = icmp eq i8 %16, -1
  br i1 %cmp48, label %if.then50, label %do.body.if.end53_crit_edge

do.body.if.end53_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nsw i32 %i.0, 1
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.1, i32 noundef %add) #5
  %sub51 = sub i32 %len.addr.1, %i.0
  %17 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx46, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %do.body.if.end53_crit_edge
  %data.addr.2 = phi ptr [ %arrayidx46, %if.then50 ], [ %data.addr.1, %do.body.if.end53_crit_edge ]
  %len.addr.2 = phi i32 [ %sub51, %if.then50 ], [ %len.addr.1, %do.body.if.end53_crit_edge ]
  %i.1 = phi i32 [ 0, %if.then50 ], [ %i.0, %do.body.if.end53_crit_edge ]
  %inc = add i32 %i.1, 1
  %cmp54 = icmp slt i32 %inc, %len.addr.2
  br i1 %cmp54, label %if.end53.do.body_crit_edge, label %do.end

if.end53.do.body_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.2, i32 noundef %len.addr.2) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb32.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %1, label %sw.default [
    i8 0, label %entry.sw.bb_crit_edge
    i8 2, label %entry.sw.bb_crit_edge45
  ]

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.default:                                       ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %sw.default.reg_w_riv.exit_crit_edge, label %if.end.i

sw.default.reg_w_riv.exit_crit_edge:              ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

if.end.i:                                         ; preds = %sw.default
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i) #8
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit

do.body8.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp9.i = icmp sgt i32 %10, 6
  br i1 %cmp9.i, label %do.end13.i, label %do.body8.i.reg_w_riv.exit_crit_edge

do.body8.i.reg_w_riv.exit_crit_edge:              ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 49, i32 noundef 0, i32 noundef 0) #8
  br label %reg_w_riv.exit

reg_w_riv.exit:                                   ; preds = %do.end13.i, %do.body8.i.reg_w_riv.exit_crit_edge, %do.end.i, %sw.default.reg_w_riv.exit_crit_edge
  tail call fastcc void @spca504B_WaitCmdStatus(ptr noundef %gspca_dev)
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i12.while.body.i_crit_edge, %reg_w_riv.exit
  %dec4.i = phi i32 [ 9, %reg_w_riv.exit ], [ %dec.i, %if.end.i12.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15.i.i = icmp slt i32 %12, 0
  br i1 %cmp15.i.i, label %while.body.i.reg_r.exit.i_crit_edge, label %if.end18.i.i

while.body.i.reg_r.exit.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

if.end18.i.i:                                     ; preds = %while.body.i
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i.i = shl i32 %16, 8
  %or21.i.i = or i32 %shl.i.i.i, -2147483520
  %17 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i.i, align 4
  %call22.i.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or21.i.i, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %do.end28.i.i, label %if.end18.i.i.reg_r.exit.i_crit_edge

if.end18.i.i.reg_r.exit.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end28.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i) #8
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call22.i.i, ptr %usb_err.i, align 8
  %20 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 64)
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end28.i.i, %if.end18.i.i.reg_r.exit.i_crit_edge, %while.body.i.reg_r.exit.i_crit_edge
  %23 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp1.i = icmp eq i8 %27, 0
  br i1 %cmp1.i, label %reg_r.exit.i.sw.epilog_crit_edge, label %if.end.i12

reg_r.exit.i.sw.epilog_crit_edge:                 ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i12:                                       ; preds = %reg_r.exit.i
  tail call void @msleep(i32 noundef 10) #5
  %dec.i = add nsw i32 %dec4.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i12.sw.epilog_crit_edge, label %if.end.i12.while.body.i_crit_edge

if.end.i12.while.body.i_crit_edge:                ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i12.sw.epilog_crit_edge:                   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge45
  %usb_err.i13 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %28 = ptrtoint ptr %usb_err.i13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usb_err.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i14 = icmp slt i32 %29, 0
  br i1 %cmp.i14, label %sw.bb.reg_w_riv.exit28_crit_edge, label %if.end.i20

sw.bb.reg_w_riv.exit28_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit28

if.end.i20:                                       ; preds = %sw.bb
  %dev1.i15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %30 = ptrtoint ptr %dev1.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i15, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i16 = shl i32 %33, 8
  %or.i17 = or i32 %shl.i.i16, -2147483648
  %call2.i18 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i17, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8192, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18)
  %cmp3.i19 = icmp slt i32 %call2.i18, 0
  br i1 %cmp3.i19, label %do.end.i22, label %do.body8.i24

do.end.i22:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i18) #8
  %34 = ptrtoint ptr %usb_err.i13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call2.i18, ptr %usb_err.i13, align 8
  br label %reg_w_riv.exit28

do.body8.i24:                                     ; preds = %if.end.i20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %35 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp9.i23 = icmp sgt i32 %35, 6
  br i1 %cmp9.i23, label %do.end13.i27, label %do.body8.i24.reg_w_riv.exit28_crit_edge

do.body8.i24.reg_w_riv.exit28_crit_edge:          ; preds = %do.body8.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit28

do.end13.i27:                                     ; preds = %do.body8.i24
  call void @__sanitizer_cov_trace_pc() #7
  %name.i25 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i25, i32 noundef 0, i32 noundef 8192, i32 noundef 0) #8
  br label %reg_w_riv.exit28

reg_w_riv.exit28:                                 ; preds = %do.end13.i27, %do.body8.i24.reg_w_riv.exit28_crit_edge, %do.end.i22, %sw.bb.reg_w_riv.exit28_crit_edge
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %36 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp = icmp eq i8 %37, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %reg_w_riv.exit28
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext 1)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 15, i16 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 1)
  br label %sw.epilog

if.else:                                          ; preds = %reg_w_riv.exit28
  tail call fastcc void @spca504_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 36, i16 noundef zeroext 0, i16 noundef zeroext 0)
  %38 = ptrtoint ptr %usb_err.i13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usb_err.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i30 = icmp slt i32 %39, 0
  br i1 %cmp.i30, label %if.else.sw.epilog_crit_edge, label %if.end.i36

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i36:                                       ; preds = %if.else
  %dev1.i31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %40 = ptrtoint ptr %dev1.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i31, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i32 = shl i32 %43, 8
  %or.i33 = or i32 %shl.i.i32, -2147483648
  %call2.i34 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or.i33, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i34)
  %cmp3.i35 = icmp slt i32 %call2.i34, 0
  br i1 %cmp3.i35, label %do.end.i38, label %do.body8.i40

do.end.i38:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i34) #8
  %44 = ptrtoint ptr %usb_err.i13 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call2.i34, ptr %usb_err.i13, align 8
  br label %sw.epilog

do.body8.i40:                                     ; preds = %if.end.i36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %45 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %45)
  %cmp9.i39 = icmp sgt i32 %45, 6
  br i1 %cmp9.i39, label %do.end13.i43, label %do.body8.i40.sw.epilog_crit_edge

do.body8.i40.sw.epilog_crit_edge:                 ; preds = %do.body8.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end13.i43:                                     ; preds = %do.body8.i40
  call void @__sanitizer_cov_trace_pc() #7
  %name.i41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i41, i32 noundef 1, i32 noundef 15, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13.i43, %do.body8.i40.sw.epilog_crit_edge, %do.end.i38, %if.else.sw.epilog_crit_edge, %if.then, %if.end.i12.sw.epilog_crit_edge, %reg_r.exit.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca50x_GetFirmware(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %1 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_buf, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp15.i = icmp slt i32 %4, 0
  br i1 %cmp15.i, label %if.end.reg_r.exit_crit_edge, label %if.end18.i

if.end.reg_r.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end18.i:                                       ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or21.i = or i32 %shl.i.i, -2147483520
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or21.i, i8 noundef zeroext 32, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %2, i16 noundef zeroext 5, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end18.i.reg_r.exit_crit_edge

if.end18.i.reg_r.exit_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i) #8
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call22.i, ptr %usb_err.i, align 8
  %10 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end28.i, %if.end18.i.reg_r.exit_crit_edge, %if.end.reg_r.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp1 = icmp sgt i32 %13, 2
  br i1 %cmp1, label %do.end, label %reg_r.exit.do.end14_crit_edge

reg_r.exit.do.end14_crit_edge:                    ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 1
  %conv = zext i8 %15 to i32
  %arrayidx4 = getelementptr i8, ptr %2, i32 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %17 to i32
  %arrayidx6 = getelementptr i8, ptr %2, i32 2
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %19 to i32
  %arrayidx8 = getelementptr i8, ptr %2, i32 3
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %21 to i32
  %arrayidx10 = getelementptr i8, ptr %2, i32 4
  %22 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %23 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11) #8
  br label %do.end14

do.end14:                                         ; preds = %do.end, %reg_r.exit.do.end14_crit_edge
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp15.i24 = icmp slt i32 %25, 0
  br i1 %cmp15.i24, label %do.end14.cleanup_crit_edge, label %if.end18.i31

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i31:                                     ; preds = %do.end14
  %dev.i25 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i25, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i26 = shl i32 %29, 8
  %or21.i27 = or i32 %shl.i.i26, -2147483520
  %30 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf, align 4
  %call22.i29 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or21.i27, i8 noundef zeroext 35, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %31, i16 noundef zeroext 64, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i29)
  %cmp23.i30 = icmp slt i32 %call22.i29, 0
  br i1 %cmp23.i30, label %do.end28.i33, label %if.end18.i31.reg_r.exit34_crit_edge

if.end18.i31.reg_r.exit34_crit_edge:              ; preds = %if.end18.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit34

do.end28.i33:                                     ; preds = %if.end18.i31
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i29) #8
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call22.i29, ptr %usb_err.i, align 8
  %33 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf, align 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 64)
  br label %reg_r.exit34

reg_r.exit34:                                     ; preds = %do.end28.i33, %if.end18.i31.reg_r.exit34_crit_edge
  %36 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp15.i36 = icmp slt i32 %.pr, 0
  br i1 %cmp15.i36, label %reg_r.exit34.cleanup_crit_edge, label %if.end18.i43

reg_r.exit34.cleanup_crit_edge:                   ; preds = %reg_r.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i43:                                     ; preds = %reg_r.exit34
  %37 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i25, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i38 = shl i32 %40, 8
  %or21.i39 = or i32 %shl.i.i38, -2147483520
  %41 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf, align 4
  %call22.i41 = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or21.i39, i8 noundef zeroext 35, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %42, i16 noundef zeroext 64, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i41)
  %cmp23.i42 = icmp slt i32 %call22.i41, 0
  br i1 %cmp23.i42, label %do.end28.i45, label %if.end18.i43.cleanup_crit_edge

if.end18.i43.cleanup_crit_edge:                   ; preds = %if.end18.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end28.i45:                                     ; preds = %if.end18.i43
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i41) #8
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call22.i41, ptr %usb_err.i, align 8
  %44 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf, align 4
  %46 = call ptr @memset(ptr %45, i32 0, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %do.end28.i45, %if.end18.i43.cleanup_crit_edge, %reg_r.exit34.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca504B_WaitCmdStatus(ptr nocapture noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec26 = phi i32 [ 49, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15.i = icmp slt i32 %1, 0
  br i1 %cmp15.i, label %while.body.reg_r.exit_crit_edge, label %if.end18.i

while.body.reg_r.exit_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end18.i:                                       ; preds = %while.body
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or21.i = or i32 %shl.i.i, -2147483520
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or21.i, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end18.i.reg_r.exit_crit_edge

if.end18.i.reg_r.exit_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i) #8
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call22.i, ptr %usb_err.i, align 8
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end28.i, %if.end18.i.reg_r.exit_crit_edge, %while.body.reg_r.exit_crit_edge
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1.not = icmp eq i8 %15, 0
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %reg_r.exit
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp slt i32 %17, 0
  br i1 %cmp.i, label %if.then.while.body.i.preheader_crit_edge, label %if.end.i

if.then.while.body.i.preheader_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.preheader

if.end.i:                                         ; preds = %if.then
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %13, align 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i10 = shl i32 %22, 8
  %or.i = or i32 %shl.i.i10, -2147483648
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i, i8 noundef zeroext 33, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %24, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w_1.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call3.i) #8
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %while.body.i.preheader

reg_w_1.exit:                                     ; preds = %if.end.i
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp15.i12 = icmp slt i32 %.pr, 0
  br i1 %cmp15.i12, label %reg_w_1.exit.while.body.i.preheader_crit_edge, label %if.end18.i19

reg_w_1.exit.while.body.i.preheader_crit_edge:    ; preds = %reg_w_1.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.preheader

if.end18.i19:                                     ; preds = %reg_w_1.exit
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i14 = shl i32 %30, 8
  %or21.i15 = or i32 %shl.i.i14, -2147483520
  %31 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i, align 4
  %call22.i17 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or21.i15, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %32, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i17)
  %cmp23.i18 = icmp slt i32 %call22.i17, 0
  br i1 %cmp23.i18, label %do.end28.i21, label %if.end18.i19.while.body.i.preheader_crit_edge

if.end18.i19.while.body.i.preheader_crit_edge:    ; preds = %if.end18.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.preheader

do.end28.i21:                                     ; preds = %if.end18.i19
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i17) #8
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call22.i17, ptr %usb_err.i, align 8
  %34 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf.i, align 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 64)
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end28.i21, %if.end18.i19.while.body.i.preheader_crit_edge, %reg_w_1.exit.while.body.i.preheader_crit_edge, %do.end.i, %if.then.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i23.while.body.i_crit_edge, %while.body.i.preheader
  %dec4.i = phi i32 [ %dec.i, %if.end.i23.while.body.i_crit_edge ], [ 9, %while.body.i.preheader ]
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp15.i.i = icmp slt i32 %38, 0
  br i1 %cmp15.i.i, label %while.body.i.reg_r.exit.i_crit_edge, label %if.end18.i.i

while.body.i.reg_r.exit.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

if.end18.i.i:                                     ; preds = %while.body.i
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i.i = shl i32 %42, 8
  %or21.i.i = or i32 %shl.i.i.i, -2147483520
  %43 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i, align 4
  %call22.i.i = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or21.i.i, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %44, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %do.end28.i.i, label %if.end18.i.i.reg_r.exit.i_crit_edge

if.end18.i.i.reg_r.exit.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end28.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i) #8
  %45 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call22.i.i, ptr %usb_err.i, align 8
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 64)
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end28.i.i, %if.end18.i.i.reg_r.exit.i_crit_edge, %while.body.i.reg_r.exit.i_crit_edge
  %49 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb_buf.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp1.i = icmp eq i8 %53, 0
  br i1 %cmp1.i, label %reg_r.exit.i.while.end_crit_edge, label %if.end.i23

reg_r.exit.i.while.end_crit_edge:                 ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i23:                                       ; preds = %reg_r.exit.i
  tail call void @msleep(i32 noundef 10) #5
  %dec.i = add nsw i32 %dec4.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i23.while.end_crit_edge, label %if.end.i23.while.body.i_crit_edge

if.end.i23.while.body.i_crit_edge:                ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i23.while.end_crit_edge:                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %reg_r.exit
  tail call void @msleep(i32 noundef 10) #5
  %dec = add nsw i32 %dec26, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.end.i23.while.end_crit_edge, %reg_r.exit.i.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_qtable(ptr noundef %gspca_dev, ptr nocapture noundef readonly %qtable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %reg_w_riv.exit.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %reg_w_riv.exit.for.body_crit_edge ]
  %0 = trunc i32 %i.042 to i16
  %conv = add i16 %0, 10240
  %arrayidx1 = getelementptr [64 x i8], ptr %qtable, i32 0, i32 %i.042
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx1, align 1
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %for.body.reg_w_riv.exit_crit_edge, label %if.end.i

for.body.reg_w_riv.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

if.end.i:                                         ; preds = %for.body
  %conv2 = zext i8 %2 to i16
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv2, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i) #8
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit

do.body8.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp9.i = icmp sgt i32 %10, 6
  br i1 %cmp9.i, label %do.end13.i, label %do.body8.i.reg_w_riv.exit_crit_edge

do.body8.i.reg_w_riv.exit_crit_edge:              ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv15.i = zext i16 %conv to i32
  %conv16.i = zext i8 %2 to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 0, i32 noundef %conv15.i, i32 noundef %conv16.i) #8
  br label %reg_w_riv.exit

reg_w_riv.exit:                                   ; preds = %do.end13.i, %do.body8.i.reg_w_riv.exit_crit_edge, %do.end.i, %for.body.reg_w_riv.exit_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %reg_w_riv.exit.for.body6_crit_edge, label %reg_w_riv.exit.for.body_crit_edge

reg_w_riv.exit.for.body_crit_edge:                ; preds = %reg_w_riv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

reg_w_riv.exit.for.body6_crit_edge:               ; preds = %reg_w_riv.exit
  br label %for.body6

for.body6:                                        ; preds = %reg_w_riv.exit41.for.body6_crit_edge, %reg_w_riv.exit.for.body6_crit_edge
  %i.143 = phi i32 [ %inc13, %reg_w_riv.exit41.for.body6_crit_edge ], [ 0, %reg_w_riv.exit.for.body6_crit_edge ]
  %11 = trunc i32 %i.143 to i16
  %conv8 = add i16 %11, 10304
  %arrayidx10 = getelementptr [64 x i8], ptr %qtable, i32 1, i32 %i.143
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 1
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i25 = icmp slt i32 %15, 0
  br i1 %cmp.i25, label %for.body6.reg_w_riv.exit41_crit_edge, label %if.end.i31

for.body6.reg_w_riv.exit41_crit_edge:             ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit41

if.end.i31:                                       ; preds = %for.body6
  %conv11 = zext i8 %13 to i16
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i27 = shl i32 %19, 8
  %or.i28 = or i32 %shl.i.i27, -2147483648
  %call2.i29 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i28, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv11, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29)
  %cmp3.i30 = icmp slt i32 %call2.i29, 0
  br i1 %cmp3.i30, label %do.end.i33, label %do.body8.i35

do.end.i33:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i29) #8
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i29, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit41

do.body8.i35:                                     ; preds = %if.end.i31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp9.i34 = icmp sgt i32 %21, 6
  br i1 %cmp9.i34, label %do.end13.i40, label %do.body8.i35.reg_w_riv.exit41_crit_edge

do.body8.i35.reg_w_riv.exit41_crit_edge:          ; preds = %do.body8.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit41

do.end13.i40:                                     ; preds = %do.body8.i35
  call void @__sanitizer_cov_trace_pc() #7
  %conv15.i37 = zext i16 %conv8 to i32
  %conv16.i38 = zext i8 %13 to i32
  %call17.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 0, i32 noundef %conv15.i37, i32 noundef %conv16.i38) #8
  br label %reg_w_riv.exit41

reg_w_riv.exit41:                                 ; preds = %do.end13.i40, %do.body8.i35.reg_w_riv.exit41_crit_edge, %do.end.i33, %for.body6.reg_w_riv.exit41_crit_edge
  %inc13 = add nuw nsw i32 %i.143, 1
  %exitcond44.not = icmp eq i32 %inc13, 64
  br i1 %exitcond44.not, label %for.end14, label %reg_w_riv.exit41.for.body6_crit_edge

reg_w_riv.exit41.for.body6_crit_edge:             ; preds = %reg_w_riv.exit41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.end14:                                        ; preds = %reg_w_riv.exit41
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca504_read_info(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %info = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %info) #5
  %0 = getelementptr inbounds [6 x i8], ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %info, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %info, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %info, i32 0, i32 5
  %5 = call ptr @memset(ptr %info, i32 255, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp slt i32 %6, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %reg_r.exit.for.body_crit_edge, %for.cond.preheader
  %i.028 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %reg_r.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp15.i = icmp slt i32 %8, 0
  br i1 %cmp15.i, label %for.body.reg_r.exit_crit_edge, label %if.end18.i

for.body.reg_r.exit_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end18.i:                                       ; preds = %for.body
  %conv = trunc i32 %i.028 to i16
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or21.i = or i32 %shl.i.i, -2147483520
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or21.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end18.i.reg_r.exit_crit_edge

if.end18.i.reg_r.exit_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i) #8
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call22.i, ptr %usb_err.i, align 8
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end28.i, %if.end18.i.reg_r.exit_crit_edge, %for.body.reg_r.exit_crit_edge
  %19 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %arrayidx2 = getelementptr [6 x i8], ptr %info, i32 0, i32 %i.028
  %23 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx2, align 1
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %do.body, label %reg_r.exit.for.body_crit_edge

reg_r.exit.for.body_crit_edge:                    ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body:                                          ; preds = %reg_r.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp3 = icmp sgt i32 %24, 2
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %info, align 1
  %conv8 = zext i8 %26 to i32
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  %conv10 = zext i8 %28 to i32
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv12 = zext i8 %30 to i32
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %conv14 = zext i8 %32 to i32
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %3, align 1
  %conv16 = zext i8 %34 to i32
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %4, align 1
  %conv18 = zext i8 %36 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %info) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext %req, i16 noundef zeroext %idx, i16 noundef zeroext %val, i8 noundef zeroext %endcode, i8 noundef zeroext %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

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
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext %req, i8 noundef zeroext 64, i16 noundef zeroext %val, i16 noundef zeroext %idx, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i) #8
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %cleanup

do.body8.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp9.i = icmp sgt i32 %7, 6
  br i1 %cmp9.i, label %do.end13.i, label %do.body8.i.reg_w_riv.exit_crit_edge

do.body8.i.reg_w_riv.exit_crit_edge:              ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv.i = zext i8 %req to i32
  %conv15.i = zext i16 %idx to i32
  %conv16.i = zext i16 %val to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv15.i, i32 noundef %conv16.i) #8
  br label %reg_w_riv.exit

reg_w_riv.exit:                                   ; preds = %do.end13.i, %do.body8.i.reg_w_riv.exit_crit_edge
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp15.i = icmp slt i32 %.pr, 0
  br i1 %cmp15.i, label %reg_w_riv.exit.cleanup_crit_edge, label %if.end18.i

reg_w_riv.exit.cleanup_crit_edge:                 ; preds = %reg_w_riv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i:                                       ; preds = %reg_w_riv.exit
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i51 = shl i32 %12, 8
  %or21.i = or i32 %shl.i.i51, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or21.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end18.i.reg_r.exit_crit_edge

if.end18.i.reg_r.exit_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i) #8
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call22.i, ptr %usb_err.i, align 8
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end28.i, %if.end18.i.reg_r.exit_crit_edge
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr65.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr65.pr)
  %cmp = icmp slt i32 %.pr65.pr, 0
  br i1 %cmp, label %reg_r.exit.cleanup_crit_edge, label %do.body

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %reg_r.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp1 = icmp sgt i32 %20, 3
  br i1 %cmp1, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv = zext i8 %24 to i32
  %conv4 = zext i8 %endcode to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %conv, i32 noundef %conv4) #8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count)
  %tobool.not = icmp eq i8 %count, 0
  br i1 %tobool.not, label %do.end7.cleanup_crit_edge, label %do.end7.while.cond_crit_edge

do.end7.while.cond_crit_edge:                     ; preds = %do.end7
  br label %while.cond

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond:                                       ; preds = %reg_r.exit63.while.cond_crit_edge, %do.end7.while.cond_crit_edge
  %count.addr.0 = phi i8 [ %dec, %reg_r.exit63.while.cond_crit_edge ], [ -56, %do.end7.while.cond_crit_edge ]
  %dec = add i8 %count.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp11.not = icmp eq i8 %dec, 0
  br i1 %cmp11.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.cond
  tail call void @msleep(i32 noundef 10) #5
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp15.i53 = icmp slt i32 %26, 0
  br i1 %cmp15.i53, label %while.body.reg_r.exit63_crit_edge, label %if.end18.i60

while.body.reg_r.exit63_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit63

if.end18.i60:                                     ; preds = %while.body
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i55 = shl i32 %30, 8
  %or21.i56 = or i32 %shl.i.i55, -2147483520
  %31 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i, align 4
  %call22.i58 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or21.i56, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %32, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i58)
  %cmp23.i59 = icmp slt i32 %call22.i58, 0
  br i1 %cmp23.i59, label %do.end28.i62, label %if.end18.i60.reg_r.exit63_crit_edge

if.end18.i60.reg_r.exit63_crit_edge:              ; preds = %if.end18.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit63

do.end28.i62:                                     ; preds = %if.end18.i60
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i58) #8
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call22.i58, ptr %usb_err.i, align 8
  %34 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf.i, align 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 64)
  br label %reg_r.exit63

reg_r.exit63:                                     ; preds = %do.end28.i62, %if.end18.i60.reg_r.exit63_crit_edge, %while.body.reg_r.exit63_crit_edge
  %37 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_buf.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %cmp18 = icmp eq i8 %40, %endcode
  br i1 %cmp18, label %do.body21, label %reg_r.exit63.while.cond_crit_edge

reg_r.exit63.while.cond_crit_edge:                ; preds = %reg_r.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.body21:                                        ; preds = %reg_r.exit63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp22 = icmp sgt i32 %41, 3
  br i1 %cmp22, label %do.end27, label %do.body21.cleanup_crit_edge

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.le = zext i8 %endcode to i32
  %conv10.le = zext i8 %dec to i32
  %name30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %sub = sub nsw i32 200, %conv10.le
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name30, i32 noundef %conv16.le, i32 noundef %sub) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.body21.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %do.end7.cleanup_crit_edge, %reg_r.exit.cleanup_crit_edge, %reg_w_riv.exit.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
  %4 = load i8, ptr %streaming, align 2, !range !125
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb3
    i32 9963794, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %bridge.i = getelementptr i8, ptr %1, i32 1025
  %10 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bridge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp.i = icmp eq i8 %11, 4
  %conv2.i = select i1 %cmp.i, i16 8432, i16 8615
  %12 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp slt i32 %13, 0
  br i1 %cmp.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %conv3.i = trunc i32 %9 to i16
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %14 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i.i = shl i32 %17, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv3.i, i16 noundef zeroext %conv2.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %do.body8.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i) #8
  %18 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call2.i.i, ptr %usb_err, align 8
  br label %sw.epilog

do.body8.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp9.i.i = icmp sgt i32 %19, 6
  br i1 %cmp9.i.i, label %do.end13.i.i, label %do.body8.i.i.sw.epilog_crit_edge

do.body8.i.i.sw.epilog_crit_edge:                 ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end13.i.i:                                     ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv15.i.i = zext i16 %conv2.i to i32
  %conv16.i.i = and i32 %9, 65535
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef 0, i32 noundef %conv15.i.i, i32 noundef %conv16.i.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val2, align 4
  %bridge.i21 = getelementptr i8, ptr %1, i32 1025
  %22 = ptrtoint ptr %bridge.i21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bridge.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.i22 = icmp eq i8 %23, 4
  %conv2.i23 = select i1 %cmp.i22, i16 8433, i16 8616
  %24 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i25 = icmp slt i32 %25, 0
  br i1 %cmp.i.i25, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i.i32

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i.i32:                                     ; preds = %sw.bb1
  %conv3.i26 = trunc i32 %21 to i16
  %dev1.i.i27 = getelementptr i8, ptr %1, i32 -100
  %26 = ptrtoint ptr %dev1.i.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i.i27, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i.i28 = shl i32 %29, 8
  %or.i.i29 = or i32 %shl.i.i.i28, -2147483648
  %call2.i.i30 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i.i29, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv3.i26, i16 noundef zeroext %conv2.i23, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i30)
  %cmp3.i.i31 = icmp slt i32 %call2.i.i30, 0
  br i1 %cmp3.i.i31, label %do.end.i.i34, label %do.body8.i.i36

do.end.i.i34:                                     ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i30) #8
  %30 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call2.i.i30, ptr %usb_err, align 8
  br label %sw.epilog

do.body8.i.i36:                                   ; preds = %if.end.i.i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp9.i.i35 = icmp sgt i32 %31, 6
  br i1 %cmp9.i.i35, label %do.end13.i.i41, label %do.body8.i.i36.sw.epilog_crit_edge

do.body8.i.i36.sw.epilog_crit_edge:               ; preds = %do.body8.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end13.i.i41:                                   ; preds = %do.body8.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i37 = getelementptr i8, ptr %1, i32 -168
  %conv15.i.i38 = zext i16 %conv2.i23 to i32
  %conv16.i.i39 = and i32 %21, 65535
  %call17.i.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i37, i32 noundef 0, i32 noundef %conv15.i.i38, i32 noundef %conv16.i.i39) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val4, align 4
  %bridge.i42 = getelementptr i8, ptr %1, i32 1025
  %34 = ptrtoint ptr %bridge.i42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bridge.i42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %35)
  %cmp.i43 = icmp eq i8 %35, 4
  %conv2.i44 = select i1 %cmp.i43, i16 8438, i16 8622
  %36 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i46 = icmp slt i32 %37, 0
  br i1 %cmp.i.i46, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i.i53

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i.i53:                                     ; preds = %sw.bb3
  %conv3.i47 = trunc i32 %33 to i16
  %dev1.i.i48 = getelementptr i8, ptr %1, i32 -100
  %38 = ptrtoint ptr %dev1.i.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1.i.i48, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i.i49 = shl i32 %41, 8
  %or.i.i50 = or i32 %shl.i.i.i49, -2147483648
  %call2.i.i51 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i.i50, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv3.i47, i16 noundef zeroext %conv2.i44, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i51)
  %cmp3.i.i52 = icmp slt i32 %call2.i.i51, 0
  br i1 %cmp3.i.i52, label %do.end.i.i55, label %do.body8.i.i57

do.end.i.i55:                                     ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i.i51) #8
  %42 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call2.i.i51, ptr %usb_err, align 8
  br label %sw.epilog

do.body8.i.i57:                                   ; preds = %if.end.i.i53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %43 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %43)
  %cmp9.i.i56 = icmp sgt i32 %43, 6
  br i1 %cmp9.i.i56, label %do.end13.i.i62, label %do.body8.i.i57.sw.epilog_crit_edge

do.body8.i.i57.sw.epilog_crit_edge:               ; preds = %do.body8.i.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end13.i.i62:                                   ; preds = %do.body8.i.i57
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i58 = getelementptr i8, ptr %1, i32 -168
  %conv15.i.i59 = zext i16 %conv2.i44 to i32
  %conv16.i.i60 = and i32 %33, 65535
  %call17.i.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i58, i32 noundef 0, i32 noundef %conv15.i.i59, i32 noundef %conv16.i.i60) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool7 = icmp ne i32 %45, 0
  %autogain = getelementptr i8, ptr %1, i32 1024
  %frombool = zext i1 %tobool7 to i8
  %46 = ptrtoint ptr %autogain to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool, ptr %autogain, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %do.end13.i.i62, %do.body8.i.i57.sw.epilog_crit_edge, %do.end.i.i55, %sw.bb3.sw.epilog_crit_edge, %do.end13.i.i41, %do.body8.i.i36.sw.epilog_crit_edge, %do.end.i.i34, %sw.bb1.sw.epilog_crit_edge, %do.end13.i.i, %do.body8.i.i.sw.epilog_crit_edge, %do.end.i.i, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %47 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca504B_SetSizeType(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bridge, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %7, label %sw.default [
    i8 3, label %sw.bb
    i8 0, label %sw.bb4
    i8 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp slt i32 %10, 0
  br i1 %cmp.i, label %sw.bb.reg_w_riv.exit_crit_edge, label %if.end.i

sw.bb.reg_w_riv.exit_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

if.end.i:                                         ; preds = %sw.bb
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i) #8
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit

do.body8.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp9.i = icmp sgt i32 %16, 6
  br i1 %cmp9.i, label %do.end13.i, label %do.body8.i.reg_w_riv.exit_crit_edge

do.body8.i.reg_w_riv.exit_crit_edge:              ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef 49, i32 noundef 0, i32 noundef 0) #8
  br label %reg_w_riv.exit

reg_w_riv.exit:                                   ; preds = %do.end13.i, %do.body8.i.reg_w_riv.exit_crit_edge, %do.end.i, %sw.bb.reg_w_riv.exit_crit_edge
  tail call fastcc void @spca504B_WaitCmdStatus(ptr noundef %gspca_dev)
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i54.while.body.i_crit_edge, %reg_w_riv.exit
  %dec4.i = phi i32 [ 9, %reg_w_riv.exit ], [ %dec.i, %if.end.i54.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp15.i.i = icmp slt i32 %18, 0
  br i1 %cmp15.i.i, label %while.body.i.reg_r.exit.i_crit_edge, label %if.end18.i.i

while.body.i.reg_r.exit.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

if.end18.i.i:                                     ; preds = %while.body.i
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i.i = shl i32 %22, 8
  %or21.i.i = or i32 %shl.i.i.i, -2147483520
  %23 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i.i, align 4
  %call22.i.i = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or21.i.i, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %24, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %do.end28.i.i, label %if.end18.i.i.reg_r.exit.i_crit_edge

if.end18.i.i.reg_r.exit.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end28.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i) #8
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call22.i.i, ptr %usb_err.i, align 8
  %26 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i.i, align 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 64)
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end28.i.i, %if.end18.i.i.reg_r.exit.i_crit_edge, %while.body.i.reg_r.exit.i_crit_edge
  %29 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp1.i = icmp eq i8 %33, 0
  br i1 %cmp1.i, label %reg_r.exit.i.spca504B_PollingDataReady.exit_crit_edge, label %if.end.i54

reg_r.exit.i.spca504B_PollingDataReady.exit_crit_edge: ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504B_PollingDataReady.exit

if.end.i54:                                       ; preds = %reg_r.exit.i
  tail call void @msleep(i32 noundef 10) #5
  %dec.i = add nsw i32 %dec4.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i54.spca504B_PollingDataReady.exit_crit_edge, label %if.end.i54.while.body.i_crit_edge

if.end.i54.while.body.i_crit_edge:                ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i54.spca504B_PollingDataReady.exit_crit_edge: ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504B_PollingDataReady.exit

spca504B_PollingDataReady.exit:                   ; preds = %if.end.i54.spca504B_PollingDataReady.exit_crit_edge, %reg_r.exit.i.spca504B_PollingDataReady.exit_crit_edge
  tail call fastcc void @spca50x_GetFirmware(ptr noundef %gspca_dev)
  %34 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i56 = icmp slt i32 %35, 0
  br i1 %cmp.i56, label %spca504B_PollingDataReady.exit.while.body.i94.preheader_crit_edge, label %if.end.i59

spca504B_PollingDataReady.exit.while.body.i94.preheader_crit_edge: ; preds = %spca504B_PollingDataReady.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i94.preheader

if.end.i59:                                       ; preds = %spca504B_PollingDataReady.exit
  %36 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %37, align 1
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i57 = shl i32 %42, 8
  %or.i58 = or i32 %shl.i.i57, -2147483648
  %43 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i58, i8 noundef zeroext 36, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %43, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i60, label %reg_w_1.exit

do.end.i60:                                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call3.i) #8
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %while.body.i94.preheader

reg_w_1.exit:                                     ; preds = %if.end.i59
  %45 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp15.i = icmp slt i32 %.pr, 0
  br i1 %cmp15.i, label %reg_w_1.exit.while.body.i94.preheader_crit_edge, label %if.end18.i

reg_w_1.exit.while.body.i94.preheader_crit_edge:  ; preds = %reg_w_1.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i94.preheader

if.end18.i:                                       ; preds = %reg_w_1.exit
  %46 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i63 = shl i32 %49, 8
  %or21.i = or i32 %shl.i.i63, -2147483520
  %50 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i.i, align 4
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or21.i, i8 noundef zeroext 36, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %51, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end18.i.reg_r.exit_crit_edge

if.end18.i.reg_r.exit_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i) #8
  %52 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call22.i, ptr %usb_err.i, align 8
  %53 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i.i, align 4
  %55 = call ptr @memset(ptr %54, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end28.i, %if.end18.i.reg_r.exit_crit_edge
  %56 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr244.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr244.pr)
  %cmp.i66 = icmp slt i32 %.pr244.pr, 0
  br i1 %cmp.i66, label %reg_r.exit.while.body.i94.preheader_crit_edge, label %if.end.i73

reg_r.exit.while.body.i94.preheader_crit_edge:    ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i94.preheader

if.end.i73:                                       ; preds = %reg_r.exit
  %57 = trunc i32 %5 to i8
  %58 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %57, ptr %59, align 1
  %61 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i.i69 = shl i32 %64, 8
  %or.i70 = or i32 %shl.i.i69, -2147483648
  %65 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i71 = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or.i70, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %65, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i71)
  %cmp4.i72 = icmp slt i32 %call3.i71, 0
  br i1 %cmp4.i72, label %do.end.i75, label %reg_w_1.exit76

do.end.i75:                                       ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call3.i71) #8
  %66 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call3.i71, ptr %usb_err.i, align 8
  br label %while.body.i94.preheader

reg_w_1.exit76:                                   ; preds = %if.end.i73
  %67 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr247 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr247)
  %cmp15.i78 = icmp slt i32 %.pr247, 0
  br i1 %cmp15.i78, label %reg_w_1.exit76.while.body.i94.preheader_crit_edge, label %if.end18.i85

reg_w_1.exit76.while.body.i94.preheader_crit_edge: ; preds = %reg_w_1.exit76
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i94.preheader

if.end18.i85:                                     ; preds = %reg_w_1.exit76
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i.i80 = shl i32 %71, 8
  %or21.i81 = or i32 %shl.i.i80, -2147483520
  %72 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %usb_buf.i.i, align 4
  %call22.i83 = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or21.i81, i8 noundef zeroext 37, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %73, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i83)
  %cmp23.i84 = icmp slt i32 %call22.i83, 0
  br i1 %cmp23.i84, label %do.end28.i87, label %if.end18.i85.while.body.i94.preheader_crit_edge

if.end18.i85.while.body.i94.preheader_crit_edge:  ; preds = %if.end18.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i94.preheader

do.end28.i87:                                     ; preds = %if.end18.i85
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i83) #8
  %74 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call22.i83, ptr %usb_err.i, align 8
  %75 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb_buf.i.i, align 4
  %77 = call ptr @memset(ptr %76, i32 0, i32 64)
  br label %while.body.i94.preheader

while.body.i94.preheader:                         ; preds = %do.end28.i87, %if.end18.i85.while.body.i94.preheader_crit_edge, %reg_w_1.exit76.while.body.i94.preheader_crit_edge, %do.end.i75, %reg_r.exit.while.body.i94.preheader_crit_edge, %reg_w_1.exit.while.body.i94.preheader_crit_edge, %do.end.i60, %spca504B_PollingDataReady.exit.while.body.i94.preheader_crit_edge
  br label %while.body.i94

while.body.i94:                                   ; preds = %if.end.i106.while.body.i94_crit_edge, %while.body.i94.preheader
  %dec4.i92 = phi i32 [ %dec.i104, %if.end.i106.while.body.i94_crit_edge ], [ 9, %while.body.i94.preheader ]
  %78 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp15.i.i93 = icmp slt i32 %79, 0
  br i1 %cmp15.i.i93, label %while.body.i94.reg_r.exit.i103_crit_edge, label %if.end18.i.i99

while.body.i94.reg_r.exit.i103_crit_edge:         ; preds = %while.body.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i103

if.end18.i.i99:                                   ; preds = %while.body.i94
  %80 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %shl.i.i.i95 = shl i32 %83, 8
  %or21.i.i96 = or i32 %shl.i.i.i95, -2147483520
  %84 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf.i.i, align 4
  %call22.i.i97 = tail call i32 @usb_control_msg(ptr noundef %81, i32 noundef %or21.i.i96, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %85, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i97)
  %cmp23.i.i98 = icmp slt i32 %call22.i.i97, 0
  br i1 %cmp23.i.i98, label %do.end28.i.i101, label %if.end18.i.i99.reg_r.exit.i103_crit_edge

if.end18.i.i99.reg_r.exit.i103_crit_edge:         ; preds = %if.end18.i.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i103

do.end28.i.i101:                                  ; preds = %if.end18.i.i99
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i97) #8
  %86 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call22.i.i97, ptr %usb_err.i, align 8
  %87 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %usb_buf.i.i, align 4
  %89 = call ptr @memset(ptr %88, i32 0, i32 64)
  br label %reg_r.exit.i103

reg_r.exit.i103:                                  ; preds = %do.end28.i.i101, %if.end18.i.i99.reg_r.exit.i103_crit_edge, %while.body.i94.reg_r.exit.i103_crit_edge
  %90 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %usb_buf.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 1
  %94 = and i8 %93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp1.i102 = icmp eq i8 %94, 0
  br i1 %cmp1.i102, label %reg_r.exit.i103.spca504B_PollingDataReady.exit107_crit_edge, label %if.end.i106

reg_r.exit.i103.spca504B_PollingDataReady.exit107_crit_edge: ; preds = %reg_r.exit.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504B_PollingDataReady.exit107

if.end.i106:                                      ; preds = %reg_r.exit.i103
  tail call void @msleep(i32 noundef 10) #5
  %dec.i104 = add nsw i32 %dec4.i92, -1
  %cmp.not.i105 = icmp eq i32 %dec.i104, 0
  br i1 %cmp.not.i105, label %if.end.i106.spca504B_PollingDataReady.exit107_crit_edge, label %if.end.i106.while.body.i94_crit_edge

if.end.i106.while.body.i94_crit_edge:             ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i94

if.end.i106.spca504B_PollingDataReady.exit107_crit_edge: ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca504B_PollingDataReady.exit107

spca504B_PollingDataReady.exit107:                ; preds = %if.end.i106.spca504B_PollingDataReady.exit107_crit_edge, %reg_r.exit.i103.spca504B_PollingDataReady.exit107_crit_edge
  %95 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i109 = icmp slt i32 %96, 0
  br i1 %cmp.i109, label %spca504B_PollingDataReady.exit107.reg_w_riv.exit123_crit_edge, label %if.end.i115

spca504B_PollingDataReady.exit107.reg_w_riv.exit123_crit_edge: ; preds = %spca504B_PollingDataReady.exit107
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit123

if.end.i115:                                      ; preds = %spca504B_PollingDataReady.exit107
  %97 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %shl.i.i111 = shl i32 %100, 8
  %or.i112 = or i32 %shl.i.i111, -2147483648
  %call2.i113 = tail call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or.i112, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i113)
  %cmp3.i114 = icmp slt i32 %call2.i113, 0
  br i1 %cmp3.i114, label %do.end.i117, label %do.body8.i119

do.end.i117:                                      ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i113) #8
  %101 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call2.i113, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit123

do.body8.i119:                                    ; preds = %if.end.i115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %102 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %102)
  %cmp9.i118 = icmp sgt i32 %102, 6
  br i1 %cmp9.i118, label %do.end13.i122, label %do.body8.i119.reg_w_riv.exit123_crit_edge

do.body8.i119.reg_w_riv.exit123_crit_edge:        ; preds = %do.body8.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit123

do.end13.i122:                                    ; preds = %do.body8.i119
  call void @__sanitizer_cov_trace_pc() #7
  %name.i120 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i120, i32 noundef 49, i32 noundef 4, i32 noundef 0) #8
  br label %reg_w_riv.exit123

reg_w_riv.exit123:                                ; preds = %do.end13.i122, %do.body8.i119.reg_w_riv.exit123_crit_edge, %do.end.i117, %spca504B_PollingDataReady.exit107.reg_w_riv.exit123_crit_edge
  tail call fastcc void @spca504B_WaitCmdStatus(ptr noundef %gspca_dev)
  br label %while.body.i129

while.body.i129:                                  ; preds = %if.end.i141.while.body.i129_crit_edge, %reg_w_riv.exit123
  %dec4.i127 = phi i32 [ 9, %reg_w_riv.exit123 ], [ %dec.i139, %if.end.i141.while.body.i129_crit_edge ]
  %103 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp15.i.i128 = icmp slt i32 %104, 0
  br i1 %cmp15.i.i128, label %while.body.i129.reg_r.exit.i138_crit_edge, label %if.end18.i.i134

while.body.i129.reg_r.exit.i138_crit_edge:        ; preds = %while.body.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i138

if.end18.i.i134:                                  ; preds = %while.body.i129
  %105 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 8
  %shl.i.i.i130 = shl i32 %108, 8
  %or21.i.i131 = or i32 %shl.i.i.i130, -2147483520
  %109 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %usb_buf.i.i, align 4
  %call22.i.i132 = tail call i32 @usb_control_msg(ptr noundef %106, i32 noundef %or21.i.i131, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %110, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i132)
  %cmp23.i.i133 = icmp slt i32 %call22.i.i132, 0
  br i1 %cmp23.i.i133, label %do.end28.i.i136, label %if.end18.i.i134.reg_r.exit.i138_crit_edge

if.end18.i.i134.reg_r.exit.i138_crit_edge:        ; preds = %if.end18.i.i134
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i138

do.end28.i.i136:                                  ; preds = %if.end18.i.i134
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i132) #8
  %111 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call22.i.i132, ptr %usb_err.i, align 8
  %112 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %usb_buf.i.i, align 4
  %114 = call ptr @memset(ptr %113, i32 0, i32 64)
  br label %reg_r.exit.i138

reg_r.exit.i138:                                  ; preds = %do.end28.i.i136, %if.end18.i.i134.reg_r.exit.i138_crit_edge, %while.body.i129.reg_r.exit.i138_crit_edge
  %115 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %usb_buf.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 1
  %119 = and i8 %118, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp1.i137 = icmp eq i8 %119, 0
  br i1 %cmp1.i137, label %reg_r.exit.i138.sw.epilog_crit_edge, label %if.end.i141

reg_r.exit.i138.sw.epilog_crit_edge:              ; preds = %reg_r.exit.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i141:                                      ; preds = %reg_r.exit.i138
  tail call void @msleep(i32 noundef 10) #5
  %dec.i139 = add nsw i32 %dec4.i127, -1
  %cmp.not.i140 = icmp eq i32 %dec.i139, 0
  br i1 %cmp.not.i140, label %if.end.i141.sw.epilog_crit_edge, label %if.end.i141.while.body.i129_crit_edge

if.end.i141.while.body.i129_crit_edge:            ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i129

if.end.i141.sw.epilog_crit_edge:                  ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %usb_err.i143 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %120 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %usb_err.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i144 = icmp slt i32 %121, 0
  br i1 %cmp.i144, label %sw.default.reg_r.exit191_crit_edge, label %if.end.i152

sw.default.reg_r.exit191_crit_edge:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit191

if.end.i152:                                      ; preds = %sw.default
  %122 = trunc i32 %5 to i8
  %usb_buf.i146 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %123 = ptrtoint ptr %usb_buf.i146 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %usb_buf.i146, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %122, ptr %124, align 1
  %dev.i147 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %126 = ptrtoint ptr %dev.i147 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i147, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 8
  %shl.i.i148 = shl i32 %129, 8
  %or.i149 = or i32 %shl.i.i148, -2147483648
  %130 = load ptr, ptr %usb_buf.i146, align 4
  %call3.i150 = tail call i32 @usb_control_msg(ptr noundef %127, i32 noundef %or.i149, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %130, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i150)
  %cmp4.i151 = icmp slt i32 %call3.i150, 0
  br i1 %cmp4.i151, label %do.end.i154, label %reg_w_1.exit155

do.end.i154:                                      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call3.i150) #8
  %131 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call3.i150, ptr %usb_err.i143, align 8
  br label %reg_r.exit191

reg_w_1.exit155:                                  ; preds = %if.end.i152
  %132 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pr249 = load i32, ptr %usb_err.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr249)
  %cmp15.i157 = icmp slt i32 %.pr249, 0
  br i1 %cmp15.i157, label %reg_w_1.exit155.reg_r.exit191_crit_edge, label %if.end18.i164

reg_w_1.exit155.reg_r.exit191_crit_edge:          ; preds = %reg_w_1.exit155
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit191

if.end18.i164:                                    ; preds = %reg_w_1.exit155
  %133 = ptrtoint ptr %dev.i147 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i147, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 8
  %shl.i.i159 = shl i32 %136, 8
  %or21.i160 = or i32 %shl.i.i159, -2147483520
  %137 = ptrtoint ptr %usb_buf.i146 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %usb_buf.i146, align 4
  %call22.i162 = tail call i32 @usb_control_msg(ptr noundef %134, i32 noundef %or21.i160, i8 noundef zeroext 37, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %138, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i162)
  %cmp23.i163 = icmp slt i32 %call22.i162, 0
  br i1 %cmp23.i163, label %do.end28.i166, label %if.end18.i164.reg_r.exit167_crit_edge

if.end18.i164.reg_r.exit167_crit_edge:            ; preds = %if.end18.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit167

do.end28.i166:                                    ; preds = %if.end18.i164
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i162) #8
  %139 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call22.i162, ptr %usb_err.i143, align 8
  %140 = ptrtoint ptr %usb_buf.i146 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %usb_buf.i146, align 4
  %142 = call ptr @memset(ptr %141, i32 0, i32 64)
  br label %reg_r.exit167

reg_r.exit167:                                    ; preds = %do.end28.i166, %if.end18.i164.reg_r.exit167_crit_edge
  %143 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr251.pr = load i32, ptr %usb_err.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr251.pr)
  %cmp.i169 = icmp slt i32 %.pr251.pr, 0
  br i1 %cmp.i169, label %reg_r.exit167.reg_r.exit191_crit_edge, label %if.end.i176

reg_r.exit167.reg_r.exit191_crit_edge:            ; preds = %reg_r.exit167
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit191

if.end.i176:                                      ; preds = %reg_r.exit167
  %144 = ptrtoint ptr %usb_buf.i146 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %usb_buf.i146, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 6, ptr %145, align 1
  %147 = ptrtoint ptr %dev.i147 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.i147, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 8
  %shl.i.i172 = shl i32 %150, 8
  %or.i173 = or i32 %shl.i.i172, -2147483648
  %151 = load ptr, ptr %usb_buf.i146, align 4
  %call3.i174 = tail call i32 @usb_control_msg(ptr noundef %148, i32 noundef %or.i173, i8 noundef zeroext 39, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %151, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i174)
  %cmp4.i175 = icmp slt i32 %call3.i174, 0
  br i1 %cmp4.i175, label %do.end.i178, label %reg_w_1.exit179

do.end.i178:                                      ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call3.i174) #8
  %152 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call3.i174, ptr %usb_err.i143, align 8
  br label %reg_r.exit191

reg_w_1.exit179:                                  ; preds = %if.end.i176
  %153 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pr253 = load i32, ptr %usb_err.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr253)
  %cmp15.i181 = icmp slt i32 %.pr253, 0
  br i1 %cmp15.i181, label %reg_w_1.exit179.reg_r.exit191_crit_edge, label %if.end18.i188

reg_w_1.exit179.reg_r.exit191_crit_edge:          ; preds = %reg_w_1.exit179
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit191

if.end18.i188:                                    ; preds = %reg_w_1.exit179
  %154 = ptrtoint ptr %dev.i147 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev.i147, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 8
  %shl.i.i183 = shl i32 %157, 8
  %or21.i184 = or i32 %shl.i.i183, -2147483520
  %158 = ptrtoint ptr %usb_buf.i146 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %usb_buf.i146, align 4
  %call22.i186 = tail call i32 @usb_control_msg(ptr noundef %155, i32 noundef %or21.i184, i8 noundef zeroext 39, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %159, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i186)
  %cmp23.i187 = icmp slt i32 %call22.i186, 0
  br i1 %cmp23.i187, label %do.end28.i190, label %if.end18.i188.reg_r.exit191_crit_edge

if.end18.i188.reg_r.exit191_crit_edge:            ; preds = %if.end18.i188
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit191

do.end28.i190:                                    ; preds = %if.end18.i188
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i186) #8
  %160 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %call22.i186, ptr %usb_err.i143, align 8
  %161 = ptrtoint ptr %usb_buf.i146 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %usb_buf.i146, align 4
  %163 = call ptr @memset(ptr %162, i32 0, i32 64)
  br label %reg_r.exit191

reg_r.exit191:                                    ; preds = %do.end28.i190, %if.end18.i188.reg_r.exit191_crit_edge, %reg_w_1.exit179.reg_r.exit191_crit_edge, %do.end.i178, %reg_r.exit167.reg_r.exit191_crit_edge, %reg_w_1.exit155.reg_r.exit191_crit_edge, %do.end.i154, %sw.default.reg_r.exit191_crit_edge
  %dev.i.i193 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i194 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i197

while.body.i197:                                  ; preds = %if.end.i209.while.body.i197_crit_edge, %reg_r.exit191
  %dec4.i195 = phi i32 [ 9, %reg_r.exit191 ], [ %dec.i207, %if.end.i209.while.body.i197_crit_edge ]
  %164 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %usb_err.i143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp15.i.i196 = icmp slt i32 %165, 0
  br i1 %cmp15.i.i196, label %while.body.i197.reg_r.exit.i206_crit_edge, label %if.end18.i.i202

while.body.i197.reg_r.exit.i206_crit_edge:        ; preds = %while.body.i197
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i206

if.end18.i.i202:                                  ; preds = %while.body.i197
  %166 = ptrtoint ptr %dev.i.i193 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev.i.i193, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 8
  %shl.i.i.i198 = shl i32 %169, 8
  %or21.i.i199 = or i32 %shl.i.i.i198, -2147483520
  %170 = ptrtoint ptr %usb_buf.i.i194 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %usb_buf.i.i194, align 4
  %call22.i.i200 = tail call i32 @usb_control_msg(ptr noundef %167, i32 noundef %or21.i.i199, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %171, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i200)
  %cmp23.i.i201 = icmp slt i32 %call22.i.i200, 0
  br i1 %cmp23.i.i201, label %do.end28.i.i204, label %if.end18.i.i202.reg_r.exit.i206_crit_edge

if.end18.i.i202.reg_r.exit.i206_crit_edge:        ; preds = %if.end18.i.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i206

do.end28.i.i204:                                  ; preds = %if.end18.i.i202
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i.i203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i.i200) #8
  %172 = ptrtoint ptr %usb_err.i143 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %call22.i.i200, ptr %usb_err.i143, align 8
  %173 = ptrtoint ptr %usb_buf.i.i194 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %usb_buf.i.i194, align 4
  %175 = call ptr @memset(ptr %174, i32 0, i32 64)
  br label %reg_r.exit.i206

reg_r.exit.i206:                                  ; preds = %do.end28.i.i204, %if.end18.i.i202.reg_r.exit.i206_crit_edge, %while.body.i197.reg_r.exit.i206_crit_edge
  %176 = ptrtoint ptr %usb_buf.i.i194 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %usb_buf.i.i194, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 1
  %180 = and i8 %179, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %cmp1.i205 = icmp eq i8 %180, 0
  br i1 %cmp1.i205, label %reg_r.exit.i206.sw.epilog_crit_edge, label %if.end.i209

reg_r.exit.i206.sw.epilog_crit_edge:              ; preds = %reg_r.exit.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i209:                                      ; preds = %reg_r.exit.i206
  tail call void @msleep(i32 noundef 10) #5
  %dec.i207 = add nsw i32 %dec4.i195, -1
  %cmp.not.i208 = icmp eq i32 %dec.i207, 0
  br i1 %cmp.not.i208, label %if.end.i209.sw.epilog_crit_edge, label %if.end.i209.while.body.i197_crit_edge

if.end.i209.while.body.i197_crit_edge:            ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i197

if.end.i209.sw.epilog_crit_edge:                  ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %181 = trunc i32 %5 to i8
  %conv6 = add i8 %181, 3
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %182 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %183)
  %cmp = icmp eq i8 %183, 1
  %conv9 = zext i8 %conv6 to i16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %184 = and i8 %conv6, 15
  %185 = or i8 %184, -128
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 8, i16 noundef zeroext %conv9, i16 noundef zeroext 0, i8 noundef zeroext %185, i8 noundef zeroext 1)
  tail call fastcc void @spca504A_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 1, i16 noundef zeroext 3, i16 noundef zeroext 0, i8 noundef zeroext -97, i8 noundef zeroext 0)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca504_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext 8, i16 noundef zeroext %conv9, i16 noundef zeroext 0)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %186 = trunc i32 %5 to i16
  %187 = and i16 %186, 15
  %conv17 = or i16 %187, 1280
  %usb_err.i211 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %188 = ptrtoint ptr %usb_err.i211 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %usb_err.i211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp.i212 = icmp slt i32 %189, 0
  br i1 %cmp.i212, label %sw.bb13.sw.epilog_crit_edge, label %if.end.i218

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i218:                                      ; preds = %sw.bb13
  %dev1.i213 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %190 = ptrtoint ptr %dev1.i213 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev1.i213, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 8
  %shl.i.i214 = shl i32 %193, 8
  %or.i215 = or i32 %shl.i.i214, -2147483648
  %call2.i216 = tail call i32 @usb_control_msg(ptr noundef %191, i32 noundef %or.i215, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i216)
  %cmp3.i217 = icmp slt i32 %call2.i216, 0
  br i1 %cmp3.i217, label %do.end.i220, label %do.body8.i222

do.end.i220:                                      ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i216) #8
  %194 = ptrtoint ptr %usb_err.i211 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %call2.i216, ptr %usb_err.i211, align 8
  br label %sw.epilog

do.body8.i222:                                    ; preds = %if.end.i218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %195 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %195)
  %cmp9.i221 = icmp sgt i32 %195, 6
  br i1 %cmp9.i221, label %do.end13.i225, label %do.body8.i222.reg_w_riv.exit226_crit_edge

do.body8.i222.reg_w_riv.exit226_crit_edge:        ; preds = %do.body8.i222
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit226

do.end13.i225:                                    ; preds = %do.body8.i222
  call void @__sanitizer_cov_trace_pc() #7
  %name.i223 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv15.i = zext i16 %conv17 to i32
  %call17.i224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i223, i32 noundef 160, i32 noundef %conv15.i, i32 noundef 0) #8
  br label %reg_w_riv.exit226

reg_w_riv.exit226:                                ; preds = %do.end13.i225, %do.body8.i222.reg_w_riv.exit226_crit_edge
  %196 = ptrtoint ptr %usb_err.i211 to i32
  call void @__asan_load4_noabort(i32 %196)
  %.pr255 = load i32, ptr %usb_err.i211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr255)
  %cmp.i228 = icmp slt i32 %.pr255, 0
  br i1 %cmp.i228, label %reg_w_riv.exit226.sw.epilog_crit_edge, label %if.end.i234

reg_w_riv.exit226.sw.epilog_crit_edge:            ; preds = %reg_w_riv.exit226
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i234:                                      ; preds = %reg_w_riv.exit226
  %197 = ptrtoint ptr %dev1.i213 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev1.i213, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %198, align 8
  %shl.i.i230 = shl i32 %200, 8
  %or.i231 = or i32 %shl.i.i230, -2147483648
  %call2.i232 = tail call i32 @usb_control_msg(ptr noundef %198, i32 noundef %or.i231, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext %conv17, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i232)
  %cmp3.i233 = icmp slt i32 %call2.i232, 0
  br i1 %cmp3.i233, label %do.end.i236, label %do.body8.i238

do.end.i236:                                      ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i232) #8
  %201 = ptrtoint ptr %usb_err.i211 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %call2.i232, ptr %usb_err.i211, align 8
  br label %sw.epilog

do.body8.i238:                                    ; preds = %if.end.i234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %202 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %202)
  %cmp9.i237 = icmp sgt i32 %202, 6
  br i1 %cmp9.i237, label %do.end13.i241, label %do.body8.i238.sw.epilog_crit_edge

do.body8.i238.sw.epilog_crit_edge:                ; preds = %do.body8.i238
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end13.i241:                                    ; preds = %do.body8.i238
  call void @__sanitizer_cov_trace_pc() #7
  %name.i239 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv16.i = zext i16 %conv17 to i32
  %call17.i240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i239, i32 noundef 32, i32 noundef 1, i32 noundef %conv16.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13.i241, %do.body8.i238.sw.epilog_crit_edge, %do.end.i236, %reg_w_riv.exit226.sw.epilog_crit_edge, %do.end.i220, %sw.bb13.sw.epilog_crit_edge, %if.else, %if.then, %if.end.i209.sw.epilog_crit_edge, %reg_r.exit.i206.sw.epilog_crit_edge, %if.end.i141.sw.epilog_crit_edge, %reg_r.exit.i138.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca504_acknowledged_command(ptr noundef %gspca_dev, i8 noundef zeroext %req, i16 noundef zeroext %idx, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_r.exit_crit_edge, label %if.end.i

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

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
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext %req, i8 noundef zeroext 64, i16 noundef zeroext %val, i16 noundef zeroext %idx, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %do.body8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i) #8
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_r.exit

do.body8.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp9.i = icmp sgt i32 %7, 6
  br i1 %cmp9.i, label %do.end13.i, label %do.body8.i.reg_w_riv.exit_crit_edge

do.body8.i.reg_w_riv.exit_crit_edge:              ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv.i = zext i8 %req to i32
  %conv15.i = zext i16 %idx to i32
  %conv16.i = zext i16 %val to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv15.i, i32 noundef %conv16.i) #8
  br label %reg_w_riv.exit

reg_w_riv.exit:                                   ; preds = %do.end13.i, %do.body8.i.reg_w_riv.exit_crit_edge
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp15.i = icmp slt i32 %.pr, 0
  br i1 %cmp15.i, label %reg_w_riv.exit.reg_r.exit_crit_edge, label %if.end18.i

reg_w_riv.exit.reg_r.exit_crit_edge:              ; preds = %reg_w_riv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end18.i:                                       ; preds = %reg_w_riv.exit
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i30 = shl i32 %12, 8
  %or21.i = or i32 %shl.i.i30, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %call22.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or21.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end18.i.reg_r.exit_crit_edge

if.end18.i.reg_r.exit_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i) #8
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call22.i, ptr %usb_err.i, align 8
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end28.i, %if.end18.i.reg_r.exit_crit_edge, %reg_w_riv.exit.reg_r.exit_crit_edge, %do.end.i, %entry.reg_r.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp = icmp sgt i32 %19, 3
  br i1 %cmp, label %do.end, label %reg_r.exit.do.end2_crit_edge

reg_r.exit.do.end2_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %20 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv = zext i8 %23 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %conv) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %reg_r.exit.do.end2_crit_edge
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i32 = icmp slt i32 %25, 0
  br i1 %cmp.i32, label %do.end2.reg_w_riv.exit49_crit_edge, label %if.end.i38

do.end2.reg_w_riv.exit49_crit_edge:               ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit49

if.end.i38:                                       ; preds = %do.end2
  %dev1.i33 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev1.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i33, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i34 = shl i32 %29, 8
  %or.i35 = or i32 %shl.i.i34, -2147483648
  %call2.i36 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i35, i8 noundef zeroext %req, i8 noundef zeroext 64, i16 noundef zeroext %val, i16 noundef zeroext %idx, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36)
  %cmp3.i37 = icmp slt i32 %call2.i36, 0
  br i1 %cmp3.i37, label %do.end.i40, label %do.body8.i42

do.end.i40:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i36) #8
  %30 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call2.i36, ptr %usb_err.i, align 8
  br label %reg_w_riv.exit49

do.body8.i42:                                     ; preds = %if.end.i38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp9.i41 = icmp sgt i32 %31, 6
  br i1 %cmp9.i41, label %do.end13.i48, label %do.body8.i42.reg_w_riv.exit49_crit_edge

do.body8.i42.reg_w_riv.exit49_crit_edge:          ; preds = %do.body8.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_riv.exit49

do.end13.i48:                                     ; preds = %do.body8.i42
  call void @__sanitizer_cov_trace_pc() #7
  %name.i43 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv.i44 = zext i8 %req to i32
  %conv15.i45 = zext i16 %idx to i32
  %conv16.i46 = zext i16 %val to i32
  %call17.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i43, i32 noundef %conv.i44, i32 noundef %conv15.i45, i32 noundef %conv16.i46) #8
  br label %reg_w_riv.exit49

reg_w_riv.exit49:                                 ; preds = %do.end13.i48, %do.body8.i42.reg_w_riv.exit49_crit_edge, %do.end.i40, %do.end2.reg_w_riv.exit49_crit_edge
  tail call void @msleep(i32 noundef 200) #5
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp15.i51 = icmp slt i32 %33, 0
  br i1 %cmp15.i51, label %reg_w_riv.exit49.reg_r.exit61_crit_edge, label %if.end18.i58

reg_w_riv.exit49.reg_r.exit61_crit_edge:          ; preds = %reg_w_riv.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit61

if.end18.i58:                                     ; preds = %reg_w_riv.exit49
  %dev.i52 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %34 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i52, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i53 = shl i32 %37, 8
  %or21.i54 = or i32 %shl.i.i53, -2147483520
  %usb_buf.i55 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %38 = ptrtoint ptr %usb_buf.i55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i55, align 4
  %call22.i56 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or21.i54, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %39, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i56)
  %cmp23.i57 = icmp slt i32 %call22.i56, 0
  br i1 %cmp23.i57, label %do.end28.i60, label %if.end18.i58.reg_r.exit61_crit_edge

if.end18.i58.reg_r.exit61_crit_edge:              ; preds = %if.end18.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit61

do.end28.i60:                                     ; preds = %if.end18.i58
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call22.i56) #8
  %40 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call22.i56, ptr %usb_err.i, align 8
  %41 = ptrtoint ptr %usb_buf.i55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf.i55, align 4
  %43 = call ptr @memset(ptr %42, i32 0, i32 64)
  br label %reg_r.exit61

reg_r.exit61:                                     ; preds = %do.end28.i60, %if.end18.i58.reg_r.exit61_crit_edge, %reg_w_riv.exit49.reg_r.exit61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %44 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp4 = icmp sgt i32 %44, 3
  br i1 %cmp4, label %do.end8, label %reg_r.exit61.do.end18_crit_edge

reg_r.exit61.do.end18_crit_edge:                  ; preds = %reg_r.exit61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

do.end8:                                          ; preds = %reg_r.exit61
  call void @__sanitizer_cov_trace_pc() #7
  %name11 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf13 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %45 = ptrtoint ptr %usb_buf13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb_buf13, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv15 = zext i8 %48 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name11, i32 noundef %conv15) #8
  br label %do.end18

do.end18:                                         ; preds = %do.end8, %reg_r.exit61.do.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !90, !92, !93, !94, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_sunplus__307_1073_sd_driver_init6, !8, !"__initcall__kmod_gspca_sunplus__307_1073_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 1073, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 1062, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 1061, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 974, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 242, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @reg_r._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @reg_r._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 246, i32 3}
!25 = !{ptr @reg_r._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @reg_r._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 260, i32 3}
!29 = !{ptr @reg_r._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @reg_r._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @vga_mode, !32, !"vga_mode", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 44, i32 37}
!33 = !{ptr @custom_mode, !34, !"custom_mode", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 57, i32 37}
!35 = !{ptr @vga_mode2, !36, !"vga_mode2", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 70, i32 37}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 656, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sd_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sd_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 671, i32 3}
!44 = !{ptr @sd_init._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sd_init._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 310, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @reg_w_riv._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @reg_w_riv._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 314, i32 2}
!53 = !{ptr @reg_w_riv._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @reg_w_riv._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 440, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @spca50x_GetFirmware._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @spca50x_GetFirmware._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 290, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @reg_w_1._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @reg_w_1._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @spca504A_clicksmart420_open_data, !66, !"spca504A_clicksmart420_open_data", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 176, i32 25}
!67 = distinct !{null, !68, !"spca504_pccam600_open_data", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 141, i32 25}
!69 = !{ptr @qtable_creative_pccam, !70, !"qtable_creative_pccam", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 186, i32 17}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 368, i32 2}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @spca504_read_info._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @spca504_read_info._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 384, i32 2}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @spca504A_acknowledged_command._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @spca504A_acknowledged_command._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 396, i32 4}
!83 = !{ptr @spca504A_acknowledged_command._entry.29, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @spca504A_acknowledged_command._entry_ptr.31, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @qtable_spca504_default, !86, !"qtable_spca504_default", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 211, i32 17}
!87 = !{ptr @sd_init_controls._key, !88, !"_key", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 956, i32 2}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 967, i32 3}
!92 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sd_init_controls._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @sd_init_controls._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @sd_ctrl_ops, !96, !"sd_ctrl_ops", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 947, i32 35}
!97 = !{ptr @jpeg_head, !98, !"jpeg_head", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 346, i32 2}
!101 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @spca504_acknowledged_command._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @spca504_acknowledged_command._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 352, i32 2}
!106 = !{ptr @spca504_acknowledged_command._entry.37, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @spca504_acknowledged_command._entry_ptr.39, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @spca504A_clicksmart420_init_data, !109, !"spca504A_clicksmart420_init_data", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 149, i32 25}
!110 = !{ptr @spca504_pccam600_init_data, !111, !"spca504_pccam600_init_data", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 112, i32 25}
!112 = !{ptr @sd_pkt_scan.ffd9, !113, !"ffd9", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 831, i32 12}
!114 = !{ptr @device_table, !115, !"device_table", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/sunplus.c", i32 988, i32 35}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i8 0, i8 2}
