; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/dtcs033.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/dtcs033.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dtcs033_usb_requests = type { i8, i8, i16, i16, i16 }
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
%struct.sd = type { %struct.gspca_dev, %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [64 x i8] c"gspca_dtcs033.author=Robert Butora <robert.butora.fi@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [70 x i8] c"gspca_dtcs033.description=Scopium DTCS033 astro-cam USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_dtcs033.file=drivers/media/usb/gspca/gspca_dtcs033\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_dtcs033.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_dtcs033__307_279_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_dtcs033\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dtcs033\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1351, i16 29443, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @dtcs033_init_controls, ptr null, ptr @dtcs033_start, ptr @dtcs033_pkt_scan, ptr null, ptr null, ptr @dtcs033_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@dtcs033_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1497715271, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1111967570, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@dtcs033_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dtcs033:222:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@dtcs033_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Could not initialize controls: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dtcs033_init_controls\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/dtcs033.c\00", [62 x i8] zeroinitializer }, align 32
@dtcs033_init_controls._entry_ptr = internal global ptr @dtcs033_init_controls._entry, section ".printk_index", align 4
@dtcs033_setexposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: usb error in setexposure(gain) sequence\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dtcs033_setexposure\00", [44 x i8] zeroinitializer }, align 32
@dtcs033_setexposure._entry_ptr = internal global ptr @dtcs033_setexposure._entry, section ".printk_index", align 4
@dtcs033_setexposure._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: usb error in setexposure(time) sequence\0A\00", [49 x i8] zeroinitializer }, align 32
@dtcs033_setexposure._entry_ptr.10 = internal global ptr @dtcs033_setexposure._entry.8, section ".printk_index", align 4
@reg_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013gspca_dtcs033: usb_control_msg error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_rw\00", [25 x i8] zeroinitializer }, align 32
@reg_rw._entry_ptr = internal global ptr @reg_rw._entry, section ".printk_index", align 4
@dtcs033_start_reqs = internal constant { [120 x %struct.dtcs033_usb_requests], [224 x i8] } { [120 x %struct.dtcs033_usb_requests] [%struct.dtcs033_usb_requests { i8 64, i8 1, i16 1, i16 15, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 1, i16 0, i16 15, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 1, i16 1, i16 15, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 32512, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 4097, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 4, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 32513, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 12512, i16 9, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1280, i16 300, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 896, i16 512, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 860, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1472, i16 1080, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1088, i16 1280, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 1640, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 1792, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 2048, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 2304, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 2560, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 2816, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 12512, i16 24585, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1280, i16 24876, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 8336, i16 25204, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1472, i16 25400, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 25600, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1472, i16 25912, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 26112, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1664, i16 26436, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 26624, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 26880, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 27136, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 27392, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 27648, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 27904, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 28160, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -32628, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 16, i16 -32511, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 12512, i16 -32256, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 2064, i16 -31956, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1664, i16 -31701, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -31488, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -31232, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 640, i16 -30955, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -30708, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 16, i16 -30463, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 12512, i16 -30208, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 2064, i16 -29908, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1664, i16 -29653, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -29440, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -29184, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 640, i16 -28907, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 16, i16 -12224, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -12032, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 176, i16 -11766, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -11520, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 12514, i16 -11251, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1, i16 -10816, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 160, i16 -10742, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 -10496, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 32512, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 5377, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1, i16 511, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 512, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 772, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 4353, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 4609, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 4864, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 5120, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 5633, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 6144, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 6400, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 6656, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 8192, i16 6912, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 7168, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 8448, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 192, i16 8846, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 12289, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 16, i16 12545, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 8, i16 13057, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 13312, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 18, i16 13641, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 13856, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1, i16 14080, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 16384, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 -1, i16 16895, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 -1, i16 17151, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 20495, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 8818, i16 20744, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 8818, i16 21000, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 -1, i16 21503, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 -1, i16 21759, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 24576, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 24834, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 16, i16 25108, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 3200, i16 25344, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 25601, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1664, i16 25937, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 -1, i16 26367, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 26370, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 16, i16 26624, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 26880, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 27136, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 27392, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 27648, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 27905, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 28160, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 28416, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 28672, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 1, i16 28952, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 8193, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 4353, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 4865, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 4864, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 5377, i16 0 }, %struct.dtcs033_usb_requests { i8 -64, i8 17, i16 0, i16 9408, i16 3 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 12288, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 13856, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 5377, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 16, i16 25344, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 2, i16 496, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 1, i16 3, i16 15, i16 0 }], [224 x i8] zeroinitializer }, align 32
@reg_reqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: usb error request no: %d / %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_reqs\00", [23 x i8] zeroinitializer }, align 32
@reg_reqs._entry_ptr = internal global ptr @reg_reqs._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@reg_reqs._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: USB IN (%d) returned[%d] %3ph %s\00", [57 x i8] zeroinitializer }, align 32
@reg_reqs._entry_ptr.17 = internal global ptr @reg_reqs._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"...\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dtcs033_stop_reqs = internal constant { [3 x %struct.dtcs033_usb_requests], [40 x i8] } { [3 x %struct.dtcs033_usb_requests] [%struct.dtcs033_usb_requests { i8 64, i8 1, i16 1, i16 15, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 1, i16 0, i16 15, i16 0 }, %struct.dtcs033_usb_requests { i8 64, i8 24, i16 0, i16 3, i16 0 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963793, i64 9963795]
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 268, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 279, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 269, i32 16 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 253, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 241, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"dtcs033_mode\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 85, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 222, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 212, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 231, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 168, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 173, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 44, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"dtcs033_start_reqs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 289, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 65, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 69, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"dtcs033_stop_reqs\00", align 1
@___asan_gen_.108 = private constant [37 x i8] c"../drivers/media/usb/gspca/dtcs033.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 413, i32 42 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_dtcs033__307_279_sd_driver_init6, ptr @dtcs033_init_controls._entry, ptr @dtcs033_init_controls._entry_ptr, ptr @dtcs033_setexposure._entry, ptr @dtcs033_setexposure._entry.8, ptr @dtcs033_setexposure._entry_ptr, ptr @dtcs033_setexposure._entry_ptr.10, ptr @reg_reqs._entry, ptr @reg_reqs._entry.15, ptr @reg_reqs._entry_ptr, ptr @reg_reqs._entry_ptr.17, ptr @reg_rw._entry, ptr @reg_rw._entry_ptr, ptr @sd_driver_exit, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @dtcs033_mode, ptr @dtcs033_init_controls._key, ptr @.str.2, ptr @sd_ctrl_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @dtcs033_start_reqs, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @dtcs033_stop_reqs], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcs033_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcs033_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcs033_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcs033_setexposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcs033_setexposure._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcs033_start_reqs to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_reqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_reqs._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcs033_stop_reqs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2616, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dtcs033_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %nmodes, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %bulk, align 1
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bulk_nurbs, align 2
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 327680, ptr %bulk_size, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtcs033_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 2, ptr noundef nonnull @dtcs033_init_controls._key, ptr noundef nonnull @.str.2) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 150, i64 noundef 1, i64 noundef 75) #6
  %1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %1, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 14, i64 noundef 33, i64 noundef 1, i64 noundef 24) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %5) #9
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtcs033_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @reg_reqs(ptr noundef %gspca_dev, ptr noundef nonnull @dtcs033_start_reqs, i32 noundef 120)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dtcs033_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %len)
  %cmp.not = icmp eq i32 %len, 327680
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %0 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %last_packet_type, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %data, i32 10240
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr, i32 noundef 307200) #6
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dtcs033_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @reg_reqs(ptr noundef %gspca_dev, ptr noundef nonnull @dtcs033_stop_reqs, i32 noundef 3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

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
  %4 = load i8, ptr %streaming, align 2, !range !70
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963793, label %sw.bb
    i32 9963795, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %gain = getelementptr i8, ptr %1, i32 1028
  %8 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gain, align 4
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = getelementptr i8, ptr %1, i32 1024
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb
  %ctrl.sink = phi ptr [ %ctrl, %sw.bb2 ], [ %9, %sw.bb ]
  %.pn = phi ptr [ %12, %sw.bb2 ], [ %ctrl, %sw.bb ]
  %.sink.in = getelementptr inbounds %struct.v4l2_ctrl, ptr %.pn, i32 0, i32 22
  %13 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink = load i32, ptr %.sink.in, align 4
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl.sink, i32 0, i32 22
  %14 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val4, align 4
  tail call fastcc void @dtcs033_setexposure(ptr noundef %add.ptr, i32 noundef %.sink, i32 noundef %15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %16 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dtcs033_setexposure(ptr noundef %gspca_dev, i32 noundef %expo, i32 noundef %gain) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv9 = and i32 %expo, 65535
  %sub11 = sub nsw i32 151, %conv9
  %mul12 = mul nsw i32 %sub11, 524
  %div13 = sdiv i32 %mul12, 150
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %conv1 = and i32 %gain, 65535
  %2 = mul nuw nsw i32 %conv1, 544
  %mul = add nsw i32 %2, -7616
  %div = sdiv i32 %mul, 19
  %3 = trunc i32 %div to i16
  %4 = add i16 %3, 224
  %5 = lshr i16 %4, 8
  %6 = and i16 %4, 255
  %conv4 = or i16 %6, 256
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or1.i, i8 noundef zeroext 24, i8 noundef zeroext 64, i16 noundef zeroext %5, i16 noundef zeroext %conv4, ptr noundef %12, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.reg_rw.exit_crit_edge

if.end.i.reg_rw.exit_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_rw.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i, ptr %usb_err.i, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call2.i) #9
  br label %reg_rw.exit

reg_rw.exit:                                      ; preds = %if.then4.i, %if.end.i.reg_rw.exit_crit_edge
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp slt i32 %.pr, 0
  br i1 %cmp, label %reg_rw.exit.if.end_crit_edge, label %reg_rw.exit.if.end.i45_crit_edge

reg_rw.exit.if.end.i45_crit_edge:                 ; preds = %reg_rw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i45

reg_rw.exit.if.end_crit_edge:                     ; preds = %reg_rw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %reg_rw.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name) #9
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr50 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr50)
  %cmp.i38 = icmp slt i32 %.pr50, 0
  br i1 %cmp.i38, label %if.end.do.end24_crit_edge, label %if.end.if.end.i45_crit_edge

if.end.if.end.i45_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i45

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.end.i45:                                       ; preds = %if.end.if.end.i45_crit_edge, %reg_rw.exit.if.end.i45_crit_edge
  %conv1754.in = trunc i32 %div13 to i16
  %conv1754 = shl i16 %conv1754.in, 4
  %dev.i39 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i39, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i40 = shl i32 %19, 8
  %or1.i41 = or i32 %shl.i.i40, -2147483520
  %usb_buf.i42 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %20 = ptrtoint ptr %usb_buf.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i42, align 4
  %call2.i43 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or1.i41, i8 noundef zeroext 24, i8 noundef zeroext 64, i16 noundef zeroext %conv1754, i16 noundef zeroext 25344, ptr noundef %21, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i43)
  %cmp3.i44 = icmp slt i32 %call2.i43, 0
  br i1 %cmp3.i44, label %if.then4.i47, label %if.end.i45.reg_rw.exit48_crit_edge

if.end.i45.reg_rw.exit48_crit_edge:               ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_rw.exit48

if.then4.i47:                                     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call2.i43, ptr %usb_err.i, align 8
  %call6.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call2.i43) #9
  br label %reg_rw.exit48

reg_rw.exit48:                                    ; preds = %if.then4.i47, %if.end.i45.reg_rw.exit48_crit_edge
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr55 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr55)
  %cmp19 = icmp slt i32 %.pr55, 0
  br i1 %cmp19, label %reg_rw.exit48.do.end24_crit_edge, label %reg_rw.exit48.if.end30_crit_edge

reg_rw.exit48.if.end30_crit_edge:                 ; preds = %reg_rw.exit48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

reg_rw.exit48.do.end24_crit_edge:                 ; preds = %reg_rw.exit48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end24:                                         ; preds = %reg_rw.exit48.do.end24_crit_edge, %if.end.do.end24_crit_edge
  %name27 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name27) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %reg_rw.exit48.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reg_reqs(ptr noundef %gspca_dev, ptr nocapture noundef readonly %preqs, i32 noundef %n_reqs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_reqs)
  %cmp47 = icmp sgt i32 %n_reqs, 0
  br i1 %cmp47, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end27.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.048 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end27.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp sgt i32 %1, -1
  br i1 %cmp1, label %if.end.i, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.i:                                         ; preds = %land.rhs
  %arrayidx = getelementptr %struct.dtcs033_usb_requests, ptr %preqs, i32 %i.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %bRequest = getelementptr %struct.dtcs033_usb_requests, ptr %preqs, i32 %i.048, i32 1
  %4 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bRequest, align 1
  %wValue = getelementptr %struct.dtcs033_usb_requests, ptr %preqs, i32 %i.048, i32 2
  %6 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wValue, align 2
  %wIndex = getelementptr %struct.dtcs033_usb_requests, ptr %preqs, i32 %i.048, i32 3
  %8 = ptrtoint ptr %wIndex to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wIndex, align 2
  %wLength = getelementptr %struct.dtcs033_usb_requests, ptr %preqs, i32 %i.048, i32 4
  %10 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wLength, align 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %15, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or1.i, i8 noundef zeroext %5, i8 noundef zeroext %3, i16 noundef zeroext %7, i16 noundef zeroext %9, ptr noundef %17, i16 noundef zeroext %11, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.reg_rw.exit_crit_edge

if.end.i.reg_rw.exit_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_rw.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call2.i, ptr %usb_err, align 8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call2.i) #9
  br label %reg_rw.exit

reg_rw.exit:                                      ; preds = %if.then4.i, %if.end.i.reg_rw.exit_crit_edge
  %19 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3 = icmp slt i32 %20, 0
  br i1 %cmp3, label %do.end, label %if.else

do.end:                                           ; preds = %reg_rw.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name15, i32 noundef %i.048, i32 noundef %n_reqs) #9
  br label %if.end27

if.else:                                          ; preds = %reg_rw.exit
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool.not = icmp sgt i8 %22, -1
  br i1 %tobool.not, label %if.else.if.end27_crit_edge, label %do.body6

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body6:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp7 = icmp sgt i32 %23, 2
  br i1 %cmp7, label %do.end12, label %do.body6.if.end27_crit_edge

do.body6.if.end27_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wLength, align 2
  %conv18 = zext i16 %25 to i32
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %25)
  %cmp21 = icmp ugt i16 %25, 3
  %cond = select i1 %cmp21, ptr @.str.18, ptr @.str.19
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name15, i32 noundef %i.048, i32 noundef %conv18, ptr noundef %27, ptr noundef nonnull %cond) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end12, %do.body6.if.end27_crit_edge, %if.else.if.end27_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %n_reqs
  br i1 %exitcond.not, label %if.end27.while.end_crit_edge, label %if.end27.land.rhs_crit_edge

if.end27.land.rhs_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %28 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usb_err, align 8
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 13, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 14, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_dtcs033__307_279_sd_driver_init6, !8, !"__initcall__kmod_gspca_dtcs033__307_279_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 279, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 269, i32 16}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 268, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 241, i32 29}
!17 = !{ptr @dtcs033_mode, !18, !"dtcs033_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 85, i32 37}
!19 = !{ptr @dtcs033_init_controls._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 222, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 231, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dtcs033_init_controls._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @dtcs033_init_controls._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @sd_ctrl_ops, !29, !"sd_ctrl_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 212, i32 35}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 168, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dtcs033_setexposure._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @dtcs033_setexposure._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 173, i32 3}
!37 = !{ptr @dtcs033_setexposure._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dtcs033_setexposure._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 44, i32 3}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @reg_rw._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @reg_rw._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 65, i32 4}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @reg_reqs._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @reg_reqs._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 69, i32 4}
!51 = !{ptr @reg_reqs._entry.15, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @reg_reqs._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dtcs033_start_reqs, !56, !"dtcs033_start_reqs", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 289, i32 42}
!57 = !{ptr @dtcs033_stop_reqs, !58, !"dtcs033_stop_reqs", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 413, i32 42}
!59 = !{ptr @device_table, !60, !"device_table", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/dtcs033.c", i32 253, i32 35}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i8 0, i8 2}
