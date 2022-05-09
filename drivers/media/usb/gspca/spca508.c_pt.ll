; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/spca508.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/spca508.c"
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
%struct.sd = type { %struct.gspca_dev, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [67 x i8] c"gspca_spca508.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_spca508.description=GSPCA/SPCA508 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_spca508.file=drivers/media/usb/gspca/gspca_spca508\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_spca508.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_spca508__307_1526_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_spca508\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spca508\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 304, i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1054, i16 16408, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1843, i16 272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 2809, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2809, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 -32634, i16 272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sd_config.init_data_tb = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @spca508_vista_init_data, ptr @spca508_sightcam_init_data, ptr @spca508_sightcam2_init_data, ptr @spca508cs110_init_data, ptr @spca508cs110_init_data, ptr @spca508_init_data], [40 x i8] zeroinitializer }, align 32
@spca508_vista_init_data = internal constant { [151 x [2 x i16]], [132 x i8] } { [151 x [2 x i16]] [[2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 0, i16 -30965], [2 x i16] [i16 32, i16 -32494], [2 x i16] [i16 3, i16 -32495], [2 x i16] [i16 0, i16 -32496], [2 x i16] [i16 0, i16 -32492], [2 x i16] [i16 0, i16 -32492], [2 x i16] [i16 3, i16 -32495], [2 x i16] [i16 0, i16 -32495], [2 x i16] [i16 144, i16 -32496], [2 x i16] [i16 32, i16 -32494], [2 x i16] [i16 0, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 3, i16 -32492], [2 x i16] [i16 15, i16 -31742], [2 x i16] [i16 0, i16 -31741], [2 x i16] [i16 186, i16 -30716], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 32, i16 -30719], [2 x i16] [i16 68, i16 -30715], [2 x i16] [i16 4, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 9, i16 -30719], [2 x i16] [i16 66, i16 -30715], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 60, i16 -30719], [2 x i16] [i16 1, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 1, i16 -30719], [2 x i16] [i16 10, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 2, i16 -30719], [2 x i16] [i16 0, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 3, i16 -30719], [2 x i16] [i16 39, i16 -30715], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 4, i16 -30719], [2 x i16] [i16 101, i16 -30715], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 5, i16 -30719], [2 x i16] [i16 3, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 28, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 7, i16 -30719], [2 x i16] [i16 42, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 14, i16 -30719], [2 x i16] [i16 0, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 40, i16 -30719], [2 x i16] [i16 46, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 57, i16 -30719], [2 x i16] [i16 19, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 59, i16 -30719], [2 x i16] [i16 12, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 53, i16 -30719], [2 x i16] [i16 40, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 9, i16 -30719], [2 x i16] [i16 66, i16 -30715], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 80, i16 -30973], [2 x i16] [i16 2, i16 -30972], [2 x i16] [i16 1, i16 -30964], [2 x i16] [i16 154, i16 -31232], [2 x i16] [i16 1, i16 -31226], [2 x i16] [i16 35, i16 -31231], [2 x i16] [i16 16, i16 -31230], [2 x i16] [i16 10, i16 -31229], [2 x i16] [i16 154, i16 -31232], [2 x i16] [i16 1, i16 -31141], [2 x i16] [i16 3, i16 -31140], [2 x i16] [i16 88, i16 -31139], [2 x i16] [i16 72, i16 -31138], [2 x i16] [i16 0, i16 -31137], [2 x i16] [i16 6, i16 -31136], [2 x i16] [i16 19, i16 -31224], [2 x i16] [i16 40, i16 -31223], [2 x i16] [i16 5, i16 -31222], [2 x i16] [i16 37, i16 -31221], [2 x i16] [i16 225, i16 -31220], [2 x i16] [i16 250, i16 -31219], [2 x i16] [i16 244, i16 -31218], [2 x i16] [i16 232, i16 -31217], [2 x i16] [i16 37, i16 -31216], [2 x i16] [i16 252, i16 -31215], [2 x i16] [i16 1, i16 -31214], [2 x i16] [i16 254, i16 -31213], [2 x i16] [i16 0, i16 -31212], [2 x i16] [i16 100, i16 -31151], [2 x i16] [i16 64, i16 -31150], [2 x i16] [i16 102, i16 -31149], [2 x i16] [i16 64, i16 -31148], [2 x i16] [i16 1, i16 -31169], [2 x i16] [i16 161, i16 -31146], [2 x i16] [i16 24, i16 -31145], [2 x i16] [i16 32, i16 -31144], [2 x i16] [i16 10, i16 -31143], [2 x i16] [i16 5, i16 -31142], [2 x i16] [i16 100, i16 -31225], [2 x i16] [i16 22, i16 -31136], [2 x i16] [i16 0, i16 -31056], [2 x i16] [i16 220, i16 -31055], [2 x i16] [i16 0, i16 -31054], [2 x i16] [i16 9, i16 -31053], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 1, i16 -31056], [2 x i16] [i16 245, i16 -31055], [2 x i16] [i16 0, i16 -31054], [2 x i16] [i16 198, i16 -31053], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 2, i16 -31056], [2 x i16] [i16 28, i16 -31055], [2 x i16] [i16 1, i16 -31054], [2 x i16] [i16 215, i16 -31053], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 3, i16 -31056], [2 x i16] [i16 28, i16 -31055], [2 x i16] [i16 1, i16 -31054], [2 x i16] [i16 216, i16 -31053], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 4, i16 -31056], [2 x i16] [i16 29, i16 -31055], [2 x i16] [i16 1, i16 -31054], [2 x i16] [i16 216, i16 -31053], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 30, i16 -31136], [2 x i16] zeroinitializer], [132 x i8] zeroinitializer }, align 32
@spca508_sightcam_init_data = internal constant { [55 x [2 x i16]], [36 x i8] } { [55 x [2 x i16]] [[2 x i16] [i16 15, i16 -31742], [2 x i16] [i16 144, i16 -32496], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 3, i16 -32492], [2 x i16] [i16 128, i16 -30716], [2 x i16] [i16 1, i16 -30719], [2 x i16] [i16 4, i16 -30720], [2 x i16] [i16 3, i16 -30719], [2 x i16] [i16 224, i16 -30720], [2 x i16] [i16 4, i16 -30719], [2 x i16] [i16 180, i16 -30720], [2 x i16] [i16 5, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 224, i16 -30720], [2 x i16] [i16 7, i16 -30719], [2 x i16] [i16 12, i16 -30720], [2 x i16] [i16 20, i16 -30719], [2 x i16] [i16 8, i16 -30720], [2 x i16] [i16 21, i16 -30719], [2 x i16] [i16 103, i16 -30720], [2 x i16] [i16 22, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 23, i16 -30719], [2 x i16] [i16 32, i16 -30720], [2 x i16] [i16 24, i16 -30719], [2 x i16] [i16 68, i16 -30720], [2 x i16] [i16 30, i16 -30719], [2 x i16] [i16 234, i16 -30720], [2 x i16] [i16 31, i16 -30719], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 3, i16 -30719], [2 x i16] [i16 224, i16 -30720], [2 x i16] [i16 6, i16 -30972], [2 x i16] [i16 1, i16 -30964], [2 x i16] [i16 22, i16 -31232], [2 x i16] [i16 2, i16 -31226], [2 x i16] [i16 100, i16 -31225], [2 x i16] [i16 58, i16 -31231], [2 x i16] [i16 0, i16 -31230], [2 x i16] [i16 22, i16 -31232], [2 x i16] [i16 24, i16 -31209], [2 x i16] [i16 8, i16 -31208], [2 x i16] [i16 161, i16 -31146], [2 x i16] [i16 7, i16 -31141], [2 x i16] [i16 1, i16 -31140], [2 x i16] [i16 88, i16 -31139], [2 x i16] [i16 72, i16 -31138], [2 x i16] [i16 73, i16 -31151], [2 x i16] [i16 64, i16 -31150], [2 x i16] [i16 76, i16 -31149], [2 x i16] [i16 64, i16 -31148], [2 x i16] zeroinitializer], [36 x i8] zeroinitializer }, align 32
@spca508_sightcam2_init_data = internal constant { [320 x [2 x i16]], [320 x i8] } { [320 x [2 x i16]] [[2 x i16] [i16 32, i16 -32494], [2 x i16] [i16 15, i16 -31742], [2 x i16] [i16 0, i16 -31741], [2 x i16] [i16 8, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 9, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 10, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 11, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 12, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 13, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 14, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 7, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 15, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 24, i16 -31136], [2 x i16] [i16 16, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 17, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 0, i16 -31056], [2 x i16] [i16 52, i16 -31055], [2 x i16] [i16 0, i16 -31054], [2 x i16] [i16 73, i16 -31053], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 18, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 19, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 1, i16 -31056], [2 x i16] [i16 170, i16 -31055], [2 x i16] [i16 0, i16 -31054], [2 x i16] [i16 228, i16 -31053], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 0, i16 -31052], [2 x i16] [i16 24, i16 -31136], [2 x i16] [i16 144, i16 -32496], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 3, i16 -32492], [2 x i16] [i16 128, i16 -30716], [2 x i16] [i16 3, i16 -30719], [2 x i16] [i16 18, i16 -30720], [2 x i16] [i16 4, i16 -30719], [2 x i16] [i16 5, i16 -30720], [2 x i16] [i16 5, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 7, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 8, i16 -30719], [2 x i16] [i16 5, i16 -30720], [2 x i16] [i16 10, i16 -30976], [2 x i16] [i16 14, i16 -30719], [2 x i16] [i16 4, i16 -30720], [2 x i16] [i16 5, i16 -30719], [2 x i16] [i16 71, i16 -30720], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 7, i16 -30719], [2 x i16] [i16 192, i16 -30720], [2 x i16] [i16 8, i16 -30719], [2 x i16] [i16 3, i16 -30720], [2 x i16] [i16 19, i16 -30719], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 9, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 10, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 11, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 12, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 14, i16 -30719], [2 x i16] [i16 4, i16 -30720], [2 x i16] [i16 15, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30719], [2 x i16] [i16 6, i16 -30720], [2 x i16] [i16 17, i16 -30719], [2 x i16] [i16 6, i16 -30720], [2 x i16] [i16 18, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 19, i16 -30719], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 10, i16 -30976], [2 x i16] [i16 0, i16 -30974], [2 x i16] [i16 0, i16 -30973], [2 x i16] [i16 194, i16 -30972], [2 x i16] [i16 1, i16 -30964], [2 x i16] [i16 68, i16 -31232], [2 x i16] [i16 2, i16 -31226], [2 x i16] [i16 100, i16 -31225], [2 x i16] [i16 58, i16 -31231], [2 x i16] [i16 8, i16 -31230], [2 x i16] [i16 68, i16 -31232], [2 x i16] [i16 24, i16 -31209], [2 x i16] [i16 8, i16 -31208], [2 x i16] [i16 161, i16 -31146], [2 x i16] [i16 4, i16 -31141], [2 x i16] [i16 2, i16 -31140], [2 x i16] [i16 88, i16 -31139], [2 x i16] [i16 72, i16 -31138], [2 x i16] [i16 18, i16 -31224], [2 x i16] [i16 44, i16 -31223], [2 x i16] [i16 2, i16 -31222], [2 x i16] [i16 44, i16 -31221], [2 x i16] [i16 219, i16 -31220], [2 x i16] [i16 249, i16 -31219], [2 x i16] [i16 241, i16 -31218], [2 x i16] [i16 227, i16 -31217], [2 x i16] [i16 44, i16 -31216], [2 x i16] [i16 108, i16 -31151], [2 x i16] [i16 65, i16 -31150], [2 x i16] [i16 89, i16 -31149], [2 x i16] [i16 64, i16 -31148], [2 x i16] [i16 250, i16 -31215], [2 x i16] [i16 255, i16 -31214], [2 x i16] [i16 248, i16 -31213], [2 x i16] [i16 0, i16 -31212], [2 x i16] [i16 1, i16 -31169], [2 x i16] [i16 0, i16 -31168], [2 x i16] [i16 38, i16 -31167], [2 x i16] [i16 69, i16 -31166], [2 x i16] [i16 96, i16 -31165], [2 x i16] [i16 117, i16 -31164], [2 x i16] [i16 136, i16 -31163], [2 x i16] [i16 155, i16 -31162], [2 x i16] [i16 176, i16 -31161], [2 x i16] [i16 197, i16 -31160], [2 x i16] [i16 210, i16 -31159], [2 x i16] [i16 220, i16 -31158], [2 x i16] [i16 229, i16 -31157], [2 x i16] [i16 235, i16 -31156], [2 x i16] [i16 240, i16 -31155], [2 x i16] [i16 246, i16 -31154], [2 x i16] [i16 250, i16 -31153], [2 x i16] [i16 255, i16 -31152], [2 x i16] [i16 96, i16 -31145], [2 x i16] [i16 16, i16 -31144], [2 x i16] [i16 24, i16 -31143], [2 x i16] [i16 5, i16 -31142], [2 x i16] [i16 24, i16 -31136], [2 x i16] [i16 3, i16 -31479], [2 x i16] [i16 17, i16 -31478], [2 x i16] [i16 50, i16 -31477], [2 x i16] [i16 16, i16 -31476], [2 x i16] [i16 33, i16 -31475], [2 x i16] [i16 1, i16 -31488], [2 x i16] [i16 0, i16 -31480], [2 x i16] [i16 18, i16 -31224], [2 x i16] [i16 44, i16 -31223], [2 x i16] [i16 2, i16 -31222], [2 x i16] [i16 57, i16 -31221], [2 x i16] [i16 208, i16 -31220], [2 x i16] [i16 247, i16 -31219], [2 x i16] [i16 237, i16 -31218], [2 x i16] [i16 219, i16 -31217], [2 x i16] [i16 57, i16 -31216], [2 x i16] [i16 18, i16 -31145], [2 x i16] [i16 12, i16 -31207], [2 x i16] [i16 4, i16 -31206], [2 x i16] [i16 161, i16 -31146], [2 x i16] [i16 200, i16 -31211], [2 x i16] [i16 50, i16 -31210], [2 x i16] [i16 48, i16 -32494], [2 x i16] [i16 32, i16 -32494], [2 x i16] [i16 32, i16 -32494], [2 x i16] [i16 15, i16 -31742], [2 x i16] [i16 0, i16 -31741], [2 x i16] [i16 144, i16 -32496], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 3, i16 -32492], [2 x i16] [i16 128, i16 -30716], [2 x i16] [i16 3, i16 -30719], [2 x i16] [i16 18, i16 -30720], [2 x i16] [i16 4, i16 -30719], [2 x i16] [i16 5, i16 -30720], [2 x i16] [i16 5, i16 -30719], [2 x i16] [i16 71, i16 -30720], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 7, i16 -30719], [2 x i16] [i16 192, i16 -30720], [2 x i16] [i16 8, i16 -30719], [2 x i16] [i16 3, i16 -30720], [2 x i16] [i16 10, i16 -30976], [2 x i16] [i16 14, i16 -30719], [2 x i16] [i16 4, i16 -30720], [2 x i16] [i16 5, i16 -30719], [2 x i16] [i16 71, i16 -30720], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 7, i16 -30719], [2 x i16] [i16 192, i16 -30720], [2 x i16] [i16 8, i16 -30719], [2 x i16] [i16 3, i16 -30720], [2 x i16] [i16 19, i16 -30719], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 9, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 10, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 11, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 12, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 14, i16 -30719], [2 x i16] [i16 4, i16 -30720], [2 x i16] [i16 15, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30719], [2 x i16] [i16 6, i16 -30720], [2 x i16] [i16 17, i16 -30719], [2 x i16] [i16 6, i16 -30720], [2 x i16] [i16 18, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 19, i16 -30719], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 10, i16 -30976], [2 x i16] [i16 0, i16 -30974], [2 x i16] [i16 0, i16 -30973], [2 x i16] [i16 194, i16 -30972], [2 x i16] [i16 1, i16 -30964], [2 x i16] [i16 68, i16 -31232], [2 x i16] [i16 2, i16 -31226], [2 x i16] [i16 100, i16 -31225], [2 x i16] [i16 58, i16 -31231], [2 x i16] [i16 8, i16 -31230], [2 x i16] [i16 68, i16 -31232], [2 x i16] [i16 24, i16 -31209], [2 x i16] [i16 8, i16 -31208], [2 x i16] [i16 161, i16 -31146], [2 x i16] [i16 4, i16 -31141], [2 x i16] [i16 2, i16 -31140], [2 x i16] [i16 88, i16 -31139], [2 x i16] [i16 72, i16 -31138], [2 x i16] [i16 18, i16 -31224], [2 x i16] [i16 44, i16 -31223], [2 x i16] [i16 2, i16 -31222], [2 x i16] [i16 44, i16 -31221], [2 x i16] [i16 219, i16 -31220], [2 x i16] [i16 249, i16 -31219], [2 x i16] [i16 241, i16 -31218], [2 x i16] [i16 227, i16 -31217], [2 x i16] [i16 44, i16 -31216], [2 x i16] [i16 108, i16 -31151], [2 x i16] [i16 65, i16 -31150], [2 x i16] [i16 89, i16 -31149], [2 x i16] [i16 64, i16 -31148], [2 x i16] [i16 250, i16 -31215], [2 x i16] [i16 255, i16 -31214], [2 x i16] [i16 248, i16 -31213], [2 x i16] [i16 0, i16 -31212], [2 x i16] [i16 1, i16 -31169], [2 x i16] [i16 0, i16 -31168], [2 x i16] [i16 38, i16 -31167], [2 x i16] [i16 69, i16 -31166], [2 x i16] [i16 96, i16 -31165], [2 x i16] [i16 117, i16 -31164], [2 x i16] [i16 136, i16 -31163], [2 x i16] [i16 155, i16 -31162], [2 x i16] [i16 176, i16 -31161], [2 x i16] [i16 197, i16 -31160], [2 x i16] [i16 210, i16 -31159], [2 x i16] [i16 220, i16 -31158], [2 x i16] [i16 229, i16 -31157], [2 x i16] [i16 235, i16 -31156], [2 x i16] [i16 240, i16 -31155], [2 x i16] [i16 246, i16 -31154], [2 x i16] [i16 250, i16 -31153], [2 x i16] [i16 255, i16 -31152], [2 x i16] [i16 96, i16 -31145], [2 x i16] [i16 16, i16 -31144], [2 x i16] [i16 24, i16 -31143], [2 x i16] [i16 5, i16 -31142], [2 x i16] [i16 24, i16 -31136], [2 x i16] [i16 3, i16 -31479], [2 x i16] [i16 17, i16 -31478], [2 x i16] [i16 50, i16 -31477], [2 x i16] [i16 16, i16 -31476], [2 x i16] [i16 33, i16 -31475], [2 x i16] [i16 1, i16 -31488], [2 x i16] [i16 0, i16 -31480], [2 x i16] [i16 18, i16 -31224], [2 x i16] [i16 44, i16 -31223], [2 x i16] [i16 2, i16 -31222], [2 x i16] [i16 57, i16 -31221], [2 x i16] [i16 208, i16 -31220], [2 x i16] [i16 247, i16 -31219], [2 x i16] [i16 237, i16 -31218], [2 x i16] [i16 219, i16 -31217], [2 x i16] [i16 57, i16 -31216], [2 x i16] [i16 18, i16 -31145], [2 x i16] [i16 100, i16 -31207], [2 x i16] zeroinitializer], [320 x i8] zeroinitializer }, align 32
@spca508cs110_init_data = internal constant { [59 x [2 x i16]], [52 x i8] } { [59 x [2 x i16]] [[2 x i16] [i16 0, i16 -30965], [2 x i16] [i16 3, i16 -32495], [2 x i16] [i16 0, i16 -32495], [2 x i16] [i16 144, i16 -32496], [2 x i16] [i16 32, i16 -32494], [2 x i16] [i16 0, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 3, i16 -32492], [2 x i16] [i16 15, i16 -31742], [2 x i16] [i16 0, i16 -31741], [2 x i16] [i16 186, i16 -30716], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 1, i16 -30719], [2 x i16] [i16 10, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 2, i16 -30719], [2 x i16] [i16 0, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 3, i16 -30719], [2 x i16] [i16 39, i16 -30715], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 4, i16 -30719], [2 x i16] [i16 101, i16 -30715], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 5, i16 -30719], [2 x i16] [i16 3, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 28, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 7, i16 -30719], [2 x i16] [i16 42, i16 -30715], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 16, i16 -30718], [2 x i16] [i16 2, i16 -30972], [2 x i16] [i16 1, i16 -31226], [2 x i16] [i16 154, i16 -31232], [2 x i16] [i16 1, i16 -31141], [2 x i16] [i16 3, i16 -31140], [2 x i16] [i16 88, i16 -31139], [2 x i16] [i16 6, i16 -31136], [2 x i16] [i16 10, i16 -31230], [2 x i16] [i16 0, i16 -31229], [2 x i16] [i16 64, i16 -31151], [2 x i16] [i16 48, i16 -31150], [2 x i16] [i16 53, i16 -31149], [2 x i16] [i16 53, i16 -31148], [2 x i16] [i16 65, i16 -31169], [2 x i16] [i16 0, i16 -31147], [2 x i16] zeroinitializer], [52 x i8] zeroinitializer }, align 32
@spca508_init_data = internal constant { [223 x [2 x i16]], [196 x i8] } { [223 x [2 x i16]] [[2 x i16] [i16 0, i16 -30965], [2 x i16] [i16 32, i16 -32494], [2 x i16] [i16 3, i16 -32495], [2 x i16] [i16 0, i16 -32496], [2 x i16] [i16 0, i16 -32492], [2 x i16] [i16 8, i16 -32496], [2 x i16] [i16 2, i16 -32490], [2 x i16] [i16 3, i16 -32495], [2 x i16] [i16 0, i16 -32495], [2 x i16] [i16 152, i16 -32496], [2 x i16] [i16 13, i16 -32492], [2 x i16] [i16 2, i16 -32490], [2 x i16] [i16 32, i16 -32494], [2 x i16] [i16 15, i16 -31742], [2 x i16] [i16 0, i16 -31741], [2 x i16] [i16 192, i16 -30716], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 18, i16 -30719], [2 x i16] [i16 128, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 18, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 17, i16 -30719], [2 x i16] [i16 64, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 19, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 20, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 21, i16 -30719], [2 x i16] [i16 1, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 22, i16 -30719], [2 x i16] [i16 3, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 23, i16 -30719], [2 x i16] [i16 54, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 24, i16 -30719], [2 x i16] [i16 236, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 26, i16 -30719], [2 x i16] [i16 148, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 27, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 39, i16 -30719], [2 x i16] [i16 162, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 40, i16 -30719], [2 x i16] [i16 64, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 42, i16 -30719], [2 x i16] [i16 132, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 43, i16 -30719], [2 x i16] [i16 168, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 44, i16 -30719], [2 x i16] [i16 254, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 45, i16 -30719], [2 x i16] [i16 3, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 56, i16 -30719], [2 x i16] [i16 131, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 51, i16 -30719], [2 x i16] [i16 129, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 52, i16 -30719], [2 x i16] [i16 74, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 57, i16 -30719], [2 x i16] [i16 0, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 16, i16 -30719], [2 x i16] [i16 168, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 88, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 0, i16 -30719], [2 x i16] [i16 4, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 64, i16 -30719], [2 x i16] [i16 128, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 65, i16 -30719], [2 x i16] [i16 12, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 66, i16 -30719], [2 x i16] [i16 12, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 67, i16 -30719], [2 x i16] [i16 40, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 68, i16 -30719], [2 x i16] [i16 128, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 69, i16 -30719], [2 x i16] [i16 32, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 70, i16 -30719], [2 x i16] [i16 32, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 71, i16 -30719], [2 x i16] [i16 128, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 72, i16 -30719], [2 x i16] [i16 76, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 73, i16 -30719], [2 x i16] [i16 132, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 74, i16 -30719], [2 x i16] [i16 132, i16 -30720], [2 x i16] [i16 8, i16 -30718], [2 x i16] [i16 75, i16 -30719], [2 x i16] [i16 132, i16 -30720], [2 x i16] [i16 18, i16 -30976], [2 x i16] [i16 0, i16 -30975], [2 x i16] [i16 0, i16 -30975], [2 x i16] [i16 1, i16 -30964], [2 x i16] [i16 128, i16 -31232], [2 x i16] [i16 1, i16 -31226], [2 x i16] [i16 100, i16 -31225], [2 x i16] [i16 42, i16 -31231], [2 x i16] [i16 0, i16 -31230], [2 x i16] [i16 128, i16 -31232], [2 x i16] [i16 10, i16 -31229], [2 x i16] [i16 223, i16 -31141], [2 x i16] [i16 18, i16 -31140], [2 x i16] [i16 88, i16 -31139], [2 x i16] [i16 72, i16 -31138], [2 x i16] [i16 21, i16 -31224], [2 x i16] [i16 48, i16 -31223], [2 x i16] [i16 251, i16 -31222], [2 x i16] [i16 62, i16 -31221], [2 x i16] [i16 206, i16 -31220], [2 x i16] [i16 244, i16 -31219], [2 x i16] [i16 235, i16 -31218], [2 x i16] [i16 220, i16 -31217], [2 x i16] [i16 57, i16 -31216], [2 x i16] [i16 1, i16 -31215], [2 x i16] [i16 0, i16 -31214], [2 x i16] [i16 1, i16 -31213], [2 x i16] [i16 0, i16 -31212], [2 x i16] [i16 91, i16 -31151], [2 x i16] [i16 64, i16 -31150], [2 x i16] [i16 96, i16 -31149], [2 x i16] [i16 64, i16 -31148], [2 x i16] [i16 0, i16 -31147], [2 x i16] [i16 1, i16 -31169], [2 x i16] [i16 161, i16 -31146], [2 x i16] [i16 24, i16 -31145], [2 x i16] [i16 32, i16 -31144], [2 x i16] [i16 10, i16 -31143], [2 x i16] [i16 5, i16 -31142], [2 x i16] [i16 48, i16 -32494], [2 x i16] [i16 -22264, i16 -30718], [2 x i16] [i16 52, i16 -30719], [2 x i16] [i16 202, i16 -30720], [2 x i16] [i16 7944, i16 -30718], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 128, i16 -30720], [2 x i16] [i16 -20472, i16 -30718], [2 x i16] [i16 6, i16 -30719], [2 x i16] [i16 125, i16 -30720], [2 x i16] [i16 21, i16 -31224], [2 x i16] [i16 48, i16 -31223], [2 x i16] [i16 -5, i16 -31222], [2 x i16] [i16 62, i16 -31221], [2 x i16] [i16 -50, i16 -31220], [2 x i16] [i16 -12, i16 -31219], [2 x i16] [i16 -21, i16 -31218], [2 x i16] [i16 -36, i16 -31217], [2 x i16] [i16 57, i16 -31216], [2 x i16] [i16 24, i16 -31145], [2 x i16] [i16 0, i16 -31480], [2 x i16] [i16 50, i16 -31477], [2 x i16] [i16 3, i16 -31479], [2 x i16] [i16 17, i16 -31478], [2 x i16] [i16 33, i16 -31475], [2 x i16] [i16 16, i16 -31476], [2 x i16] [i16 3, i16 -31488], [2 x i16] [i16 1, i16 -31487], [2 x i16] [i16 97, i16 -31146], [2 x i16] [i16 24, i16 -31209], [2 x i16] [i16 8, i16 -31208], [2 x i16] [i16 97, i16 -31146], [2 x i16] [i16 88, i16 -31207], [2 x i16] [i16 8, i16 -31206], [2 x i16] [i16 255, i16 -31211], [2 x i16] [i16 0, i16 -31210], [2 x i16] [i16 18, i16 -30976], [2 x i16] [i16 18, i16 -30976], [2 x i16] [i16 40, i16 -30718], [2 x i16] [i16 7976, i16 -30718], [2 x i16] [i16 16, i16 -30719], [2 x i16] [i16 62, i16 -30720], [2 x i16] [i16 40, i16 -30718], [2 x i16] [i16 7976, i16 -30718], [2 x i16] [i16 0, i16 -30719], [2 x i16] [i16 31, i16 -30720], [2 x i16] [i16 1, i16 -31230], [2 x i16] [i16 35, i16 -30976], [2 x i16] [i16 15, i16 -31230], [2 x i16] [i16 40, i16 -30718], [2 x i16] [i16 7976, i16 -30718], [2 x i16] [i16 16, i16 -30719], [2 x i16] [i16 123, i16 -30720], [2 x i16] [i16 47, i16 -31151], [2 x i16] [i16 128, i16 -31149], [2 x i16] [i16 0, i16 -31147], [2 x i16] [i16 48, i16 -32494], [2 x i16] [i16 32, i16 -32494], [2 x i16] zeroinitializer], [196 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Webcam Vendor ID: 0x%02x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/spca508.c\00", [62 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Webcam Product ID: 0x%02x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@sd_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Window 1 average luminance: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.10 = internal global ptr @sd_config._entry.8, section ".printk_index", align 4
@sif_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 942683475, i32 1, i32 160, i32 28800, i32 8, i32 3, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 942683475, i32 1, i32 176, i32 38016, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 942683475, i32 1, i32 320, i32 115200, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 942683475, i32 1, i32 352, i32 152064, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: reg read i:%04x --> %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_read\00", [23 x i8] zeroinitializer }, align 32
@reg_read._entry_ptr = internal global ptr @reg_read._entry, section ".printk_index", align 4
@reg_read._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gspca_spca508: reg_read err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@reg_read._entry_ptr.15 = internal global ptr @reg_read._entry.13, section ".printk_index", align 4
@reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: reg write i:0x%04x = 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_write\00", [22 x i8] zeroinitializer }, align 32
@reg_write._entry_ptr = internal global ptr @reg_write._entry, section ".printk_index", align 4
@reg_write._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_spca508: reg write: error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@reg_write._entry_ptr.20 = internal global ptr @reg_write._entry.18, section ".printk_index", align 4
@ssi_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: ssi_w busy %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ssi_w\00", [26 x i8] zeroinitializer }, align 32
@ssi_w._entry_ptr = internal global ptr @ssi_w._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spca508:1472:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_spca508: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1514, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1526, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1515, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1495, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1484, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"init_data_tb\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1344, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"spca508_vista_init_data\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 987, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"spca508_sightcam_init_data\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 557, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"spca508_sightcam2_init_data\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 640, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"spca508cs110_init_data\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 473, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"spca508_init_data\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 61, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1360, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1365, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1369, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"sif_mode\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 31, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1263, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1266, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1241, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1244, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1303, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1472, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1463, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [37 x i8] c"../drivers/media/usb/gspca/spca508.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1477, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_spca508__307_1526_sd_driver_init6, ptr @reg_read._entry, ptr @reg_read._entry.13, ptr @reg_read._entry_ptr, ptr @reg_read._entry_ptr.15, ptr @reg_write._entry, ptr @reg_write._entry.18, ptr @reg_write._entry_ptr, ptr @reg_write._entry_ptr.20, ptr @sd_config._entry, ptr @sd_config._entry.5, ptr @sd_config._entry.8, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.10, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @ssi_w._entry, ptr @ssi_w._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @sd_config.init_data_tb, ptr @spca508_vista_init_data, ptr @spca508_sightcam_init_data, ptr @spca508_sightcam2_init_data, ptr @spca508cs110_init_data, ptr @spca508_init_data, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @sif_mode, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @sd_init_controls._key, ptr @.str.23, ptr @sd_ctrl_ops, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.init_data_tb to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca508_vista_init_data to i32), i32 604, i32 736, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca508_sightcam_init_data to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca508_sightcam2_init_data to i32), i32 1280, i32 1600, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca508cs110_init_data to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca508_init_data to i32), i32 892, i32 1088, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_read._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32508, ptr noundef %5, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp.i = icmp sgt i32 %6, 5
  br i1 %cmp.i, label %do.end.i, label %entry.do.end9.i_crit_edge

entry.do.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv6.i = zext i8 %10 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef 33028, i32 noundef %conv6.i) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %entry.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp10.i = icmp slt i32 %call3.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %if.end18.i

do.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call3.i) #8
  br label %reg_read.exit

if.end18.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv21.i = zext i8 %14 to i32
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.end18.i, %do.end15.i
  %retval.0.i = phi i32 [ %call3.i, %do.end15.i ], [ %conv21.i, %if.end18.i ]
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i56 = shl i32 %18, 8
  %or2.i57 = or i32 %shl.i.i56, -2147483520
  %19 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i, align 4
  %call3.i59 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or2.i57, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32507, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp.i60 = icmp sgt i32 %21, 5
  br i1 %cmp.i60, label %do.end.i64, label %reg_read.exit.do.end9.i66_crit_edge

reg_read.exit.do.end9.i66_crit_edge:              ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i66

do.end.i64:                                       ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i61 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv6.i62 = zext i8 %25 to i32
  %call7.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i61, i32 noundef 33029, i32 noundef %conv6.i62) #8
  br label %do.end9.i66

do.end9.i66:                                      ; preds = %do.end.i64, %reg_read.exit.do.end9.i66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i59)
  %cmp10.i65 = icmp slt i32 %call3.i59, 0
  br i1 %cmp10.i65, label %do.end15.i68, label %if.end18.i70

do.end15.i68:                                     ; preds = %do.end9.i66
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call3.i59) #8
  br label %reg_read.exit72

if.end18.i70:                                     ; preds = %do.end9.i66
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv21.i69 = zext i8 %29 to i32
  br label %reg_read.exit72

reg_read.exit72:                                  ; preds = %if.end18.i70, %do.end15.i68
  %retval.0.i71 = phi i32 [ %call3.i59, %do.end15.i68 ], [ %conv21.i69, %if.end18.i70 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %30 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp sgt i32 %30, 0
  br i1 %cmp, label %do.end, label %reg_read.exit72.do.end5_crit_edge

reg_read.exit72.do.end5_crit_edge:                ; preds = %reg_read.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %reg_read.exit72
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %retval.0.i71, i32 noundef %retval.0.i) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %reg_read.exit72.do.end5_crit_edge
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i74 = shl i32 %34, 8
  %or2.i75 = or i32 %shl.i.i74, -2147483520
  %35 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_buf.i, align 4
  %call3.i77 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or2.i75, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32506, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp.i78 = icmp sgt i32 %37, 5
  br i1 %cmp.i78, label %do.end.i82, label %do.end5.do.end9.i84_crit_edge

do.end5.do.end9.i84_crit_edge:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i84

do.end.i82:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %name.i79 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv6.i80 = zext i8 %41 to i32
  %call7.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i79, i32 noundef 33030, i32 noundef %conv6.i80) #8
  br label %do.end9.i84

do.end9.i84:                                      ; preds = %do.end.i82, %do.end5.do.end9.i84_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i77)
  %cmp10.i83 = icmp slt i32 %call3.i77, 0
  br i1 %cmp10.i83, label %do.end15.i86, label %if.end18.i88

do.end15.i86:                                     ; preds = %do.end9.i84
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call3.i77) #8
  br label %reg_read.exit90

if.end18.i88:                                     ; preds = %do.end9.i84
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_buf.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv21.i87 = zext i8 %45 to i32
  br label %reg_read.exit90

reg_read.exit90:                                  ; preds = %if.end18.i88, %do.end15.i86
  %retval.0.i89 = phi i32 [ %call3.i77, %do.end15.i86 ], [ %conv21.i87, %if.end18.i88 ]
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i92 = shl i32 %49, 8
  %or2.i93 = or i32 %shl.i.i92, -2147483520
  %50 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i, align 4
  %call3.i95 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or2.i93, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32505, ptr noundef %51, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %52 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %52)
  %cmp.i96 = icmp sgt i32 %52, 5
  br i1 %cmp.i96, label %do.end.i100, label %reg_read.exit90.do.end9.i102_crit_edge

reg_read.exit90.do.end9.i102_crit_edge:           ; preds = %reg_read.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i102

do.end.i100:                                      ; preds = %reg_read.exit90
  call void @__sanitizer_cov_trace_pc() #7
  %name.i97 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv6.i98 = zext i8 %56 to i32
  %call7.i99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i97, i32 noundef 33031, i32 noundef %conv6.i98) #8
  br label %do.end9.i102

do.end9.i102:                                     ; preds = %do.end.i100, %reg_read.exit90.do.end9.i102_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i95)
  %cmp10.i101 = icmp slt i32 %call3.i95, 0
  br i1 %cmp10.i101, label %do.end15.i104, label %if.end18.i106

do.end15.i104:                                    ; preds = %do.end9.i102
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call3.i95) #8
  br label %reg_read.exit108

if.end18.i106:                                    ; preds = %do.end9.i102
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %usb_buf.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv21.i105 = zext i8 %60 to i32
  br label %reg_read.exit108

reg_read.exit108:                                 ; preds = %if.end18.i106, %do.end15.i104
  %retval.0.i107 = phi i32 [ %call3.i95, %do.end15.i104 ], [ %conv21.i105, %if.end18.i106 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %61 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp9 = icmp sgt i32 %61, 0
  br i1 %cmp9, label %do.end13, label %reg_read.exit108.do.end21_crit_edge

reg_read.exit108.do.end21_crit_edge:              ; preds = %reg_read.exit108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21

do.end13:                                         ; preds = %reg_read.exit108
  call void @__sanitizer_cov_trace_pc() #7
  %name16 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name16, i32 noundef %retval.0.i107, i32 noundef %retval.0.i89) #8
  br label %do.end21

do.end21:                                         ; preds = %do.end13, %reg_read.exit108.do.end21_crit_edge
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i110 = shl i32 %65, 8
  %or2.i111 = or i32 %shl.i.i110, -2147483520
  %66 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb_buf.i, align 4
  %call3.i113 = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or2.i111, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -31199, ptr noundef %67, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %68 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %68)
  %cmp.i114 = icmp sgt i32 %68, 5
  br i1 %cmp.i114, label %do.end.i118, label %do.end21.do.end9.i120_crit_edge

do.end21.do.end9.i120_crit_edge:                  ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i120

do.end.i118:                                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  %name.i115 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_buf.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv6.i116 = zext i8 %72 to i32
  %call7.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i115, i32 noundef 34337, i32 noundef %conv6.i116) #8
  br label %do.end9.i120

do.end9.i120:                                     ; preds = %do.end.i118, %do.end21.do.end9.i120_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i113)
  %cmp10.i119 = icmp slt i32 %call3.i113, 0
  br i1 %cmp10.i119, label %do.end15.i122, label %if.end18.i124

do.end15.i122:                                    ; preds = %do.end9.i120
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call3.i113) #8
  br label %reg_read.exit126

if.end18.i124:                                    ; preds = %do.end9.i120
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %usb_buf.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 1
  %conv21.i123 = zext i8 %76 to i32
  br label %reg_read.exit126

reg_read.exit126:                                 ; preds = %if.end18.i124, %do.end15.i122
  %retval.0.i125 = phi i32 [ %call3.i113, %do.end15.i122 ], [ %conv21.i123, %if.end18.i124 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %77 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp24 = icmp sgt i32 %77, 0
  br i1 %cmp24, label %do.end28, label %reg_read.exit126.do.end36_crit_edge

reg_read.exit126.do.end36_crit_edge:              ; preds = %reg_read.exit126
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end28:                                         ; preds = %reg_read.exit126
  call void @__sanitizer_cov_trace_pc() #7
  %name31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name31, i32 noundef %retval.0.i125) #8
  br label %do.end36

do.end36:                                         ; preds = %do.end28, %reg_read.exit126.do.end36_crit_edge
  %cam37 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %78 = ptrtoint ptr %cam37 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @sif_mode, ptr %cam37, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %79 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 4, ptr %nmodes, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %80 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %81 to i8
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %82 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv, ptr %subtype, align 8
  %idxprom = and i32 %81, 255
  %arrayidx = getelementptr [6 x ptr], ptr @sd_config.init_data_tb, i32 0, i32 %idxprom
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx, align 4
  %arrayidx57.i = getelementptr [2 x i16], ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx57.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.not58.i = icmp eq i16 %86, 0
  br i1 %cmp.not58.i, label %do.end36.write_vector.exit_crit_edge, label %while.body.lr.ph.i

do.end36.write_vector.exit_crit_edge:             ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_vector.exit

while.body.lr.ph.i:                               ; preds = %do.end36
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %87 = phi i16 [ %86, %while.body.lr.ph.i ], [ %136, %if.end21.i.while.body.i_crit_edge ]
  %ret.061.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %ret.1.i, %if.end21.i.while.body.i_crit_edge ]
  %data.addr.059.i = phi ptr [ %84, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end21.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %87)
  %tobool.not.i = icmp sgt i16 %87, -1
  br i1 %tobool.not.i, label %if.else13.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8960, i16 %87)
  %cmp6.i = icmp eq i16 %87, -8960
  %88 = ptrtoint ptr %data.addr.059.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %data.addr.059.i, align 2
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv10.i = zext i16 %89 to i32
  tail call void @msleep(i32 noundef %conv10.i) #5
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then.i
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 8
  %shl.i.i.i = shl i32 %93, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %91, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %89, i16 noundef zeroext %87, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %94 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %94)
  %cmp.i.i = icmp sgt i32 %94, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else.i.do.end7.i.i_crit_edge

if.else.i.do.end7.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i16 %87 to i32
  %conv4.i.i = zext i16 %89 to i32
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef %conv.i.i, i32 noundef %conv4.i.i) #8
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %if.else.i.do.end7.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp8.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp8.i.i, label %do.end13.i.i, label %do.end7.i.i.if.end21.i_crit_edge

do.end7.i.i.if.end21.i_crit_edge:                 ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

do.end13.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i.i) #8
  br label %write_vector.exit

if.else13.i:                                      ; preds = %while.body.i
  %95 = ptrtoint ptr %data.addr.059.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %data.addr.059.i, align 2
  %97 = lshr i16 %87, 8
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %shl.i.i.i.i = shl i32 %101, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %call2.i.i.i = tail call i32 @usb_control_msg(ptr noundef %99, i32 noundef %or.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %97, i16 noundef zeroext -30718, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %102 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %102)
  %cmp.i.i.i = icmp sgt i32 %102, 6
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.else13.i.do.end7.i.i.i_crit_edge

if.else13.i.do.end7.i.i.i_crit_edge:              ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i.i.i

do.end.i.i.i:                                     ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i.i.i = zext i16 %97 to i32
  %call5.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef 34818, i32 noundef %conv4.i.i.i) #8
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %do.end.i.i.i, %if.else13.i.do.end7.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp8.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp8.i.i.i, label %reg_write.exit.thread.i.i, label %if.end.i.i

reg_write.exit.thread.i.i:                        ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i.i.i) #8
  br label %write_vector.exit

if.end.i.i:                                       ; preds = %do.end7.i.i.i
  %and.i.i = and i16 %87, 255
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %shl.i.i67.i.i = shl i32 %106, 8
  %or.i68.i.i = or i32 %shl.i.i67.i.i, -2147483648
  %call2.i69.i.i = tail call i32 @usb_control_msg(ptr noundef %104, i32 noundef %or.i68.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %and.i.i, i16 noundef zeroext -30719, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %107 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %107)
  %cmp.i70.i.i = icmp sgt i32 %107, 6
  br i1 %cmp.i70.i.i, label %do.end.i74.i.i, label %if.end.i.i.do.end7.i76.i.i_crit_edge

if.end.i.i.do.end7.i76.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i76.i.i

do.end.i74.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i72.i.i = zext i16 %and.i.i to i32
  %call5.i73.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef 34817, i32 noundef %conv4.i72.i.i) #8
  br label %do.end7.i76.i.i

do.end7.i76.i.i:                                  ; preds = %do.end.i74.i.i, %if.end.i.i.do.end7.i76.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i69.i.i)
  %cmp8.i75.i.i = icmp slt i32 %call2.i69.i.i, 0
  br i1 %cmp8.i75.i.i, label %reg_write.exit79.thread.i.i, label %if.end9.i.i

reg_write.exit79.thread.i.i:                      ; preds = %do.end7.i76.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i77.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i69.i.i) #8
  br label %write_vector.exit

if.end9.i.i:                                      ; preds = %do.end7.i76.i.i
  %108 = and i16 %87, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %108)
  %cmp12.i.i = icmp eq i16 %108, 4096
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.end9.i.i.if.end26.i.i_crit_edge

if.end9.i.i.if.end26.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  %and16.i.i = and i16 %96, 255
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 8
  %shl.i.i81.i.i = shl i32 %112, 8
  %or.i82.i.i = or i32 %shl.i.i81.i.i, -2147483648
  %call2.i83.i.i = tail call i32 @usb_control_msg(ptr noundef %110, i32 noundef %or.i82.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %and16.i.i, i16 noundef zeroext -30715, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %113 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %113)
  %cmp.i84.i.i = icmp sgt i32 %113, 6
  br i1 %cmp.i84.i.i, label %do.end.i88.i.i, label %if.then14.i.i.do.end7.i90.i.i_crit_edge

if.then14.i.i.do.end7.i90.i.i_crit_edge:          ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i90.i.i

do.end.i88.i.i:                                   ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i86.i.i = zext i16 %and16.i.i to i32
  %call5.i87.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef 34821, i32 noundef %conv4.i86.i.i) #8
  br label %do.end7.i90.i.i

do.end7.i90.i.i:                                  ; preds = %do.end.i88.i.i, %if.then14.i.i.do.end7.i90.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i83.i.i)
  %cmp8.i89.i.i = icmp slt i32 %call2.i83.i.i, 0
  br i1 %cmp8.i89.i.i, label %reg_write.exit93.thread.i.i, label %if.end22.i.i

reg_write.exit93.thread.i.i:                      ; preds = %do.end7.i90.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i91.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i83.i.i) #8
  br label %write_vector.exit

if.end22.i.i:                                     ; preds = %do.end7.i90.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = lshr i16 %96, 8
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end22.i.i, %if.end9.i.i.if.end26.i.i_crit_edge
  %val.addr.0.i.i = phi i16 [ %114, %if.end22.i.i ], [ %96, %if.end9.i.i.if.end26.i.i_crit_edge ]
  %115 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  %shl.i.i95.i.i = shl i32 %118, 8
  %or.i96.i.i = or i32 %shl.i.i95.i.i, -2147483648
  %call2.i97.i.i = tail call i32 @usb_control_msg(ptr noundef %116, i32 noundef %or.i96.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %val.addr.0.i.i, i16 noundef zeroext -30720, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %119 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %119)
  %cmp.i98.i.i = icmp sgt i32 %119, 6
  br i1 %cmp.i98.i.i, label %do.end.i102.i.i, label %if.end26.i.i.do.end7.i104.i.i_crit_edge

if.end26.i.i.do.end7.i104.i.i_crit_edge:          ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i104.i.i

do.end.i102.i.i:                                  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i100.i.i = zext i16 %val.addr.0.i.i to i32
  %call5.i101.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef 34816, i32 noundef %conv4.i100.i.i) #8
  br label %do.end7.i104.i.i

do.end7.i104.i.i:                                 ; preds = %do.end.i102.i.i, %if.end26.i.i.do.end7.i104.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i97.i.i)
  %cmp8.i103.i.i = icmp slt i32 %call2.i97.i.i, 0
  br i1 %cmp8.i103.i.i, label %reg_write.exit107.thread.i.i, label %do.end7.i104.i.i.for.cond.i.i_crit_edge

do.end7.i104.i.i.for.cond.i.i_crit_edge:          ; preds = %do.end7.i104.i.i
  br label %for.cond.i.i

reg_write.exit107.thread.i.i:                     ; preds = %do.end7.i104.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i105.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i97.i.i) #8
  br label %write_vector.exit

for.cond.i.i:                                     ; preds = %if.end49.i.i, %do.end7.i104.i.i.for.cond.i.i_crit_edge
  %retry.0.i.i = phi i32 [ %dec.i.i, %if.end49.i.i ], [ 10, %do.end7.i104.i.i.for.cond.i.i_crit_edge ]
  %120 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 8
  %shl.i.i108.i.i = shl i32 %123, 8
  %or2.i.i.i = or i32 %shl.i.i108.i.i, -2147483520
  %124 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.i.i = tail call i32 @usb_control_msg(ptr noundef %121, i32 noundef %or2.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -30717, ptr noundef %125, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %126 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %126)
  %cmp.i109.i.i = icmp sgt i32 %126, 5
  br i1 %cmp.i109.i.i, label %do.end.i111.i.i, label %for.cond.i.i.do.end9.i.i.i_crit_edge

for.cond.i.i.do.end9.i.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i.i.i

do.end.i111.i.i:                                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %127 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %usb_buf.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %128, align 1
  %conv6.i.i.i = zext i8 %130 to i32
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i.i, i32 noundef 34819, i32 noundef %conv6.i.i.i) #8
  br label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %do.end.i111.i.i, %for.cond.i.i.do.end9.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp10.i.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp10.i.i.i, label %reg_read.exit.thread.i.i, label %reg_read.exit.i.i

reg_read.exit.thread.i.i:                         ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call3.i.i.i) #8
  br label %write_vector.exit

reg_read.exit.i.i:                                ; preds = %do.end9.i.i.i
  %131 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %usb_buf.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp38.i.i = icmp eq i8 %134, 0
  br i1 %cmp38.i.i, label %reg_read.exit.i.i.if.end21.i_crit_edge, label %if.end41.i.i

reg_read.exit.i.i.if.end21.i_crit_edge:           ; preds = %reg_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.end41.i.i:                                     ; preds = %reg_read.exit.i.i
  %dec.i.i = add nsw i32 %retry.0.i.i, -1
  %cmp42.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp42.i.i, label %do.end.i32.i, label %if.end49.i.i

do.end.i32.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv37.le.i.i = zext i8 %134 to i32
  %call48.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name.i.i, i32 noundef %conv37.le.i.i) #8
  br label %write_vector.exit

if.end49.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 8) #5
  br label %for.cond.i.i

if.end21.i:                                       ; preds = %reg_read.exit.i.i.if.end21.i_crit_edge, %do.end7.i.i.if.end21.i_crit_edge, %if.then8.i
  %ret.1.i = phi i32 [ %ret.061.i, %if.then8.i ], [ %call2.i.i, %do.end7.i.i.if.end21.i_crit_edge ], [ 0, %reg_read.exit.i.i.if.end21.i_crit_edge ]
  %incdec.ptr.i = getelementptr [2 x i16], ptr %data.addr.059.i, i32 1
  %arrayidx.i = getelementptr [2 x i16], ptr %data.addr.059.i, i32 1, i32 1
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx.i, align 2
  %cmp.not.i = icmp eq i16 %136, 0
  br i1 %cmp.not.i, label %if.end21.i.write_vector.exit_crit_edge, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end21.i.write_vector.exit_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %write_vector.exit

write_vector.exit:                                ; preds = %if.end21.i.write_vector.exit_crit_edge, %do.end.i32.i, %reg_read.exit.thread.i.i, %reg_write.exit107.thread.i.i, %reg_write.exit93.thread.i.i, %reg_write.exit79.thread.i.i, %reg_write.exit.thread.i.i, %do.end13.i.i, %do.end36.write_vector.exit_crit_edge
  %ret.2.i = phi i32 [ %call3.i.i.i, %reg_read.exit.thread.i.i ], [ %call2.i97.i.i, %reg_write.exit107.thread.i.i ], [ %call2.i83.i.i, %reg_write.exit93.thread.i.i ], [ %call2.i69.i.i, %reg_write.exit79.thread.i.i ], [ %call2.i.i.i, %reg_write.exit.thread.i.i ], [ -1, %do.end.i32.i ], [ %call2.i.i, %do.end13.i.i ], [ 0, %do.end36.write_vector.exit_crit_edge ], [ %ret.1.i, %if.end21.i.write_vector.exit_crit_edge ]
  ret i32 %ret.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 5, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.23) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
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
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
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
  %conv = trunc i32 %5 to i16
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext -31488, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp.i = icmp sgt i32 %10, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end7.i_crit_edge

entry.do.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = and i32 %5, 65535
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef 34048, i32 noundef %conv4.i) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %entry.do.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp8.i = icmp slt i32 %call2.i, 0
  br i1 %cmp8.i, label %do.end13.i, label %do.end7.i.reg_write.exit_crit_edge

do.end7.i.reg_write.exit_crit_edge:               ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit

do.end13.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i) #8
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %do.end13.i, %do.end7.i.reg_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i11 = shl i32 %14, 8
  %or.i12 = or i32 %shl.i.i11, -2147483648
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %reg_write.exit
  %call2.i13 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i12, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 40, i16 noundef zeroext -30976, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp.i14 = icmp sgt i32 %15, 6
  br i1 %cmp.i14, label %do.end.i17, label %sw.bb.do.end7.i19_crit_edge

sw.bb.do.end7.i19_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i19

do.end.i17:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call5.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i15, i32 noundef 34560, i32 noundef 40) #8
  br label %do.end7.i19

do.end7.i19:                                      ; preds = %do.end.i17, %sw.bb.do.end7.i19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i13)
  %cmp8.i18 = icmp slt i32 %call2.i13, 0
  br i1 %cmp8.i18, label %do.end7.i19.sw.epilog.sink.split_crit_edge, label %do.end7.i19.sw.epilog_crit_edge

do.end7.i19.sw.epilog_crit_edge:                  ; preds = %do.end7.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end7.i19.sw.epilog.sink.split_crit_edge:       ; preds = %do.end7.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %reg_write.exit
  %call2.i26 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i12, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 35, i16 noundef zeroext -30976, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp.i27 = icmp sgt i32 %16, 6
  br i1 %cmp.i27, label %do.end.i30, label %sw.default.do.end7.i32_crit_edge

sw.default.do.end7.i32_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i32

do.end.i30:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %name.i28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call5.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i28, i32 noundef 34560, i32 noundef 35) #8
  br label %do.end7.i32

do.end7.i32:                                      ; preds = %do.end.i30, %sw.default.do.end7.i32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i26)
  %cmp8.i31 = icmp slt i32 %call2.i26, 0
  br i1 %cmp8.i31, label %do.end7.i32.sw.epilog.sink.split_crit_edge, label %do.end7.i32.sw.epilog_crit_edge

do.end7.i32.sw.epilog_crit_edge:                  ; preds = %do.end7.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end7.i32.sw.epilog.sink.split_crit_edge:       ; preds = %do.end7.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end7.i32.sw.epilog.sink.split_crit_edge, %do.end7.i19.sw.epilog.sink.split_crit_edge
  %call2.i26.sink = phi i32 [ %call2.i13, %do.end7.i19.sw.epilog.sink.split_crit_edge ], [ %call2.i26, %do.end7.i32.sw.epilog.sink.split_crit_edge ]
  %call15.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i26.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end7.i32.sw.epilog_crit_edge, %do.end7.i19.sw.epilog_crit_edge
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i37 = shl i32 %20, 8
  %or.i38 = or i32 %shl.i.i37, -2147483648
  %call2.i39 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i38, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 48, i16 noundef zeroext -32494, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp.i40 = icmp sgt i32 %21, 6
  br i1 %cmp.i40, label %do.end.i43, label %sw.epilog.do.end7.i45_crit_edge

sw.epilog.do.end7.i45_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i45

do.end.i43:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %name.i41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call5.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i41, i32 noundef 33042, i32 noundef 48) #8
  br label %do.end7.i45

do.end7.i45:                                      ; preds = %do.end.i43, %sw.epilog.do.end7.i45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i39)
  %cmp8.i44 = icmp slt i32 %call2.i39, 0
  br i1 %cmp8.i44, label %do.end13.i47, label %do.end7.i45.reg_write.exit48_crit_edge

do.end7.i45.reg_write.exit48_crit_edge:           ; preds = %do.end7.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit48

do.end13.i47:                                     ; preds = %do.end7.i45
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i39) #8
  br label %reg_write.exit48

reg_write.exit48:                                 ; preds = %do.end13.i47, %do.end7.i45.reg_write.exit48_crit_edge
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
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog.sink.split_crit_edge [
    i8 0, label %sw.bb
    i8 -1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %.sink13 = phi i32 [ 37, %sw.bb ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink12 = phi i32 [ -37, %sw.bb ], [ -1, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %sw.bb ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %data, i32 %.sink13
  %sub2 = add i32 %.sink12, %len
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %.sink, ptr noundef %add.ptr1, i32 noundef %sub2) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
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
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext -32494, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end7.i_crit_edge

entry.do.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef 33042, i32 noundef 32) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %entry.do.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp8.i = icmp slt i32 %call2.i, 0
  br i1 %cmp8.i, label %do.end13.i, label %do.end7.i.reg_write.exit_crit_edge

do.end7.i.reg_write.exit_crit_edge:               ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit

do.end13.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i) #8
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %do.end13.i, %do.end7.i.reg_write.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

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
  %4 = load i8, ptr %streaming, align 2, !range !89
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %6)
  %cond = icmp eq i32 %6, 9963776
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv.i = trunc i32 %8 to i16
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %9 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -31151, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.i.i = icmp sgt i32 %13, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.do.end7.i.i_crit_edge

sw.bb.do.end7.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv4.i.i = and i32 %8, 65535
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef 34385, i32 noundef %conv4.i.i) #8
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %sw.bb.do.end7.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp8.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp8.i.i, label %do.end13.i.i, label %do.end7.i.i.reg_write.exit.i_crit_edge

do.end7.i.i.reg_write.exit.i_crit_edge:           ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit.i

do.end13.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i.i) #8
  br label %reg_write.exit.i

reg_write.exit.i:                                 ; preds = %do.end13.i.i, %do.end7.i.i.reg_write.exit.i_crit_edge
  %14 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i14.i = shl i32 %17, 8
  %or.i15.i = or i32 %shl.i.i14.i, -2147483648
  %call2.i16.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i15.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -31150, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp.i17.i = icmp sgt i32 %18, 6
  br i1 %cmp.i17.i, label %do.end.i21.i, label %reg_write.exit.i.do.end7.i23.i_crit_edge

reg_write.exit.i.do.end7.i23.i_crit_edge:         ; preds = %reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i23.i

do.end.i21.i:                                     ; preds = %reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i18.i = getelementptr i8, ptr %1, i32 -168
  %conv4.i19.i = and i32 %8, 65535
  %call5.i20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i18.i, i32 noundef 34386, i32 noundef %conv4.i19.i) #8
  br label %do.end7.i23.i

do.end7.i23.i:                                    ; preds = %do.end.i21.i, %reg_write.exit.i.do.end7.i23.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i16.i)
  %cmp8.i22.i = icmp slt i32 %call2.i16.i, 0
  br i1 %cmp8.i22.i, label %do.end13.i25.i, label %do.end7.i23.i.reg_write.exit26.i_crit_edge

do.end7.i23.i.reg_write.exit26.i_crit_edge:       ; preds = %do.end7.i23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit26.i

do.end13.i25.i:                                   ; preds = %do.end7.i23.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i16.i) #8
  br label %reg_write.exit26.i

reg_write.exit26.i:                               ; preds = %do.end13.i25.i, %do.end7.i23.i.reg_write.exit26.i_crit_edge
  %19 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i28.i = shl i32 %22, 8
  %or.i29.i = or i32 %shl.i.i28.i, -2147483648
  %call2.i30.i = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i29.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -31149, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp.i31.i = icmp sgt i32 %23, 6
  br i1 %cmp.i31.i, label %do.end.i35.i, label %reg_write.exit26.i.do.end7.i37.i_crit_edge

reg_write.exit26.i.do.end7.i37.i_crit_edge:       ; preds = %reg_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i37.i

do.end.i35.i:                                     ; preds = %reg_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i32.i = getelementptr i8, ptr %1, i32 -168
  %conv4.i33.i = and i32 %8, 65535
  %call5.i34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i32.i, i32 noundef 34387, i32 noundef %conv4.i33.i) #8
  br label %do.end7.i37.i

do.end7.i37.i:                                    ; preds = %do.end.i35.i, %reg_write.exit26.i.do.end7.i37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i30.i)
  %cmp8.i36.i = icmp slt i32 %call2.i30.i, 0
  br i1 %cmp8.i36.i, label %do.end13.i39.i, label %do.end7.i37.i.reg_write.exit40.i_crit_edge

do.end7.i37.i.reg_write.exit40.i_crit_edge:       ; preds = %do.end7.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit40.i

do.end13.i39.i:                                   ; preds = %do.end7.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i30.i) #8
  br label %reg_write.exit40.i

reg_write.exit40.i:                               ; preds = %do.end13.i39.i, %do.end7.i37.i.reg_write.exit40.i_crit_edge
  %24 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i42.i = shl i32 %27, 8
  %or.i43.i = or i32 %shl.i.i42.i, -2147483648
  %call2.i44.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i43.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -31148, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp.i45.i = icmp sgt i32 %28, 6
  br i1 %cmp.i45.i, label %do.end.i49.i, label %reg_write.exit40.i.do.end7.i51.i_crit_edge

reg_write.exit40.i.do.end7.i51.i_crit_edge:       ; preds = %reg_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i51.i

do.end.i49.i:                                     ; preds = %reg_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i46.i = getelementptr i8, ptr %1, i32 -168
  %conv4.i47.i = and i32 %8, 65535
  %call5.i48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i46.i, i32 noundef 34388, i32 noundef %conv4.i47.i) #8
  br label %do.end7.i51.i

do.end7.i51.i:                                    ; preds = %do.end.i49.i, %reg_write.exit40.i.do.end7.i51.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i44.i)
  %cmp8.i50.i = icmp slt i32 %call2.i44.i, 0
  br i1 %cmp8.i50.i, label %do.end13.i53.i, label %do.end7.i51.i.sw.epilog_crit_edge

do.end7.i51.i.sw.epilog_crit_edge:                ; preds = %do.end7.i51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end13.i53.i:                                   ; preds = %do.end7.i51.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call2.i44.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13.i53.i, %do.end7.i51.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %29 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/spca508.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/spca508.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/spca508.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_spca508__307_1526_sd_driver_init6, !8, !"__initcall__kmod_gspca_spca508__307_1526_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1526, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1515, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1514, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1484, i32 29}
!17 = !{ptr @sd_config.init_data_tb, !18, !"init_data_tb", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1344, i32 22}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1360, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_config._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_config._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1365, i32 2}
!27 = !{ptr @sd_config._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sd_config._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1369, i32 2}
!31 = !{ptr @sd_config._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sd_config._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @spca508_vista_init_data, !34, !"spca508_vista_init_data", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/spca508.c", i32 987, i32 18}
!35 = !{ptr @spca508_sightcam_init_data, !36, !"spca508_sightcam_init_data", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/spca508.c", i32 557, i32 18}
!37 = !{ptr @spca508_sightcam2_init_data, !38, !"spca508_sightcam2_init_data", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/spca508.c", i32 640, i32 18}
!39 = !{ptr @spca508cs110_init_data, !40, !"spca508cs110_init_data", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/spca508.c", i32 473, i32 18}
!41 = !{ptr @spca508_init_data, !42, !"spca508_init_data", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/spca508.c", i32 61, i32 18}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1263, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @reg_read._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @reg_read._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1266, i32 3}
!50 = !{ptr @reg_read._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @reg_read._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sif_mode, !53, !"sif_mode", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/spca508.c", i32 31, i32 37}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1241, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @reg_write._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @reg_write._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1244, i32 3}
!61 = !{ptr @reg_write._entry.18, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @reg_write._entry_ptr.20, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1303, i32 4}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ssi_w._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ssi_w._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @sd_init_controls._key, !69, !"_key", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1472, i32 2}
!70 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1477, i32 3}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sd_init_controls._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sd_init_controls._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @sd_ctrl_ops, !77, !"sd_ctrl_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1463, i32 35}
!78 = !{ptr @device_table, !79, !"device_table", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/spca508.c", i32 1495, i32 35}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
